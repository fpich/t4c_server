"""T4C 1.25 packet codec reconstructed from TFCPacket.

Wire format (server/client datagram):

    +0  u16 LE  PRNG seed
    +2  u16 LE  checksum of the *plaintext* payload
    +4  bytes   XOR-encrypted payload

The plaintext payload starts with a u16 BE packet id. Integer fields written by
TFCPacket are big-endian. Strings are prefixed with a u16 BE byte length.

The XOR byte stream is generated from a 32-bit LCG:

    state = state * 0x736A91 + 1   (mod 2**32)
    key   = state mod 256

This matches the original server's TFCPacket::EncryptPacket / DecryptPacket.
"""

from __future__ import annotations

from dataclasses import dataclass
import secrets
import struct
from typing import Final

HEADER_SIZE: Final = 4
PACKET_ID_SIZE: Final = 2
MIN_DATAGRAM_SIZE: Final = HEADER_SIZE + PACKET_ID_SIZE
LCG_MULTIPLIER: Final = 0x00736A91
LCG_INCREMENT: Final = 1
UINT32_MASK: Final = 0xFFFFFFFF


class T4CProtocolError(ValueError):
    """Raised when a T4C datagram or packet body is malformed."""


@dataclass(frozen=True, slots=True)
class DecodedPacket:
    seed: int
    checksum: int
    packet_id: int
    payload: bytes  # plaintext, including packet id
    body: bytes     # plaintext, excluding packet id


def _xor_crypt(data: bytes | bytearray | memoryview, seed: int) -> bytes:
    """Encrypt/decrypt payload bytes using the T4C XOR stream."""
    state = seed & UINT32_MASK
    out = bytearray(data)

    for i in range(len(out)):
        state = (state * LCG_MULTIPLIER + LCG_INCREMENT) & UINT32_MASK
        out[i] ^= state & 0xFF

    return bytes(out)


def payload_checksum(payload: bytes | bytearray | memoryview) -> int:
    """Original TFCPacket checksum: sum of plaintext bytes modulo 65536."""
    return sum(payload) & 0xFFFF


def decode_datagram(datagram: bytes | bytearray | memoryview) -> DecodedPacket:
    """Decrypt and validate one UDP datagram."""
    raw = bytes(datagram)
    if len(raw) < MIN_DATAGRAM_SIZE:
        raise T4CProtocolError(
            f"datagram too short: {len(raw)} bytes, expected at least {MIN_DATAGRAM_SIZE}"
        )

    seed, expected_checksum = struct.unpack_from("<HH", raw, 0)
    payload = _xor_crypt(raw[HEADER_SIZE:], seed)
    actual_checksum = payload_checksum(payload)

    if actual_checksum != expected_checksum:
        raise T4CProtocolError(
            f"checksum mismatch: expected 0x{expected_checksum:04X}, "
            f"got 0x{actual_checksum:04X}"
        )

    packet_id = struct.unpack_from(">H", payload, 0)[0]
    return DecodedPacket(
        seed=seed,
        checksum=expected_checksum,
        packet_id=packet_id,
        payload=payload,
        body=payload[PACKET_ID_SIZE:],
    )


def encode_payload(payload: bytes, *, seed: int | None = None) -> bytes:
    """Build a complete encrypted datagram from a plaintext T4C payload.

    The original server chooses a seed in the 0..512 range. We do the same for
    wire similarity, although decryption only depends on the 16-bit seed value.
    """
    if len(payload) < PACKET_ID_SIZE:
        raise T4CProtocolError("payload must contain at least the 2-byte packet id")

    if seed is None:
        seed = secrets.randbelow(513)
    if not 0 <= seed <= 0xFFFF:
        raise ValueError("seed must fit in u16")

    checksum = payload_checksum(payload)
    encrypted = _xor_crypt(payload, seed)
    return struct.pack("<HH", seed, checksum) + encrypted


def encode_packet(packet_id: int, body: bytes = b"", *, seed: int | None = None) -> bytes:
    """Build a complete datagram from a packet id and plaintext body."""
    if not 0 <= packet_id <= 0xFFFF:
        raise ValueError("packet_id must fit in u16")
    payload = struct.pack(">H", packet_id) + bytes(body)
    return encode_payload(payload, seed=seed)


class PacketReader:
    """Bounds-checked reader for the plaintext body of a T4C packet."""

    __slots__ = ("_data", "_offset")

    def __init__(self, data: bytes | bytearray | memoryview):
        self._data = memoryview(bytes(data))
        self._offset = 0

    @property
    def offset(self) -> int:
        return self._offset

    @property
    def remaining(self) -> int:
        return len(self._data) - self._offset

    def _take(self, size: int) -> memoryview:
        if size < 0:
            raise ValueError("size cannot be negative")
        end = self._offset + size
        if end > len(self._data):
            raise T4CProtocolError(
                f"packet underflow at offset {self._offset}: "
                f"need {size} bytes, only {self.remaining} remain"
            )
        chunk = self._data[self._offset:end]
        self._offset = end
        return chunk

    def read_u8(self) -> int:
        return self._take(1)[0]

    def read_i8(self) -> int:
        return struct.unpack(">b", self._take(1))[0]

    def read_u16(self) -> int:
        return struct.unpack(">H", self._take(2))[0]

    def read_i16(self) -> int:
        return struct.unpack(">h", self._take(2))[0]

    def read_u32(self) -> int:
        return struct.unpack(">I", self._take(4))[0]

    def read_i32(self) -> int:
        return struct.unpack(">i", self._take(4))[0]

    def read_bytes(self, size: int) -> bytes:
        return bytes(self._take(size))

    def read_bytestring(self) -> bytes:
        """Read a normal TFCPacket string (u16 BE length + bytes)."""
        size = self.read_u16()
        return self.read_bytes(size)

    def read_pascal_u8_bytes(self) -> bytes:
        """Read the special one-byte-length string used by request 14."""
        size = self.read_u8()
        return self.read_bytes(size)

    def read_text(self, encoding: str = "cp1252", errors: str = "replace") -> str:
        return self.read_bytestring().decode(encoding, errors=errors)

    def read_pascal_u8_text(
        self, encoding: str = "cp1252", errors: str = "replace"
    ) -> str:
        return self.read_pascal_u8_bytes().decode(encoding, errors=errors)


class PacketWriter:
    """Writer for a plaintext T4C packet body."""

    __slots__ = ("packet_id", "_body")

    def __init__(self, packet_id: int):
        if not 0 <= packet_id <= 0xFFFF:
            raise ValueError("packet_id must fit in u16")
        self.packet_id = packet_id
        self._body = bytearray()

    def write_u8(self, value: int) -> "PacketWriter":
        self._body += struct.pack(">B", value)
        return self

    def write_i8(self, value: int) -> "PacketWriter":
        self._body += struct.pack(">b", value)
        return self

    def write_u16(self, value: int) -> "PacketWriter":
        self._body += struct.pack(">H", value)
        return self

    def write_i16(self, value: int) -> "PacketWriter":
        self._body += struct.pack(">h", value)
        return self

    def write_u32(self, value: int) -> "PacketWriter":
        self._body += struct.pack(">I", value)
        return self

    def write_i32(self, value: int) -> "PacketWriter":
        self._body += struct.pack(">i", value)
        return self

    def write_bytes(self, value: bytes | bytearray | memoryview) -> "PacketWriter":
        self._body += bytes(value)
        return self

    def write_bytestring(self, value: bytes | bytearray | memoryview) -> "PacketWriter":
        """Write the normal TFCPacket string form (u16 BE length + bytes)."""
        raw = bytes(value)
        if len(raw) > 0xFFFF:
            raise ValueError("T4C length-prefixed string cannot exceed 65535 bytes")
        self.write_u16(len(raw))
        self.write_bytes(raw)
        return self

    def write_pascal_u8_bytes(
        self, value: bytes | bytearray | memoryview
    ) -> "PacketWriter":
        raw = bytes(value)
        if len(raw) > 0xFF:
            raise ValueError("u8-length string cannot exceed 255 bytes")
        self.write_u8(len(raw))
        self.write_bytes(raw)
        return self

    def write_text(
        self,
        value: str,
        encoding: str = "cp1252",
        errors: str = "strict",
    ) -> "PacketWriter":
        return self.write_bytestring(value.encode(encoding, errors=errors))

    def write_pascal_u8_text(
        self,
        value: str,
        encoding: str = "cp1252",
        errors: str = "strict",
    ) -> "PacketWriter":
        return self.write_pascal_u8_bytes(value.encode(encoding, errors=errors))

    @property
    def body(self) -> bytes:
        return bytes(self._body)

    @property
    def payload(self) -> bytes:
        return struct.pack(">H", self.packet_id) + self.body

    def to_datagram(self, *, seed: int | None = None) -> bytes:
        return encode_payload(self.payload, seed=seed)
