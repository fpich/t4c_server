"""T4C 1.25 UDP transport framing.

The original 1.25 client places a 12-byte communication header in front of
TFCPacket data.  This layer is distinct from the four-byte TFCPacket
(seed/checksum) header.

Observed wire layout (little-endian):

    +0  u16  flags / fragment index
    +2  u16  total UDP datagram length (including this 12-byte header)
    +4  u32  packet sequence id
    +8  u32  fragment group id (0 for ordinary, unfragmented packets)
   +12  bytes application payload (normally one encrypted TFCPacket)

High-byte flag bits recovered from the T4C 1.25 client:
    0x0100  ACK packet (header only)
    0x0200  SAFE/reliable packet; receiver must ACK
    0x0400  fragmented packet

The low byte is used as a fragment index when fragmentation is enabled.
"""

from __future__ import annotations

from dataclasses import dataclass
import struct
from typing import Final

HEADER_SIZE: Final = 12
FLAG_ACK: Final = 0x0100
FLAG_SAFE: Final = 0x0200
FLAG_FRAGMENTED: Final = 0x0400
FLAG_RESERVED_MASK: Final = 0xF800
FRAGMENT_INDEX_MASK: Final = 0x00FF
MAX_DATAGRAM_SIZE: Final = 1024


class T4CTransportError(ValueError):
    """Raised when the UDP transport envelope is malformed."""


@dataclass(frozen=True, slots=True)
class TransportPacket:
    flags: int
    declared_length: int
    sequence: int
    fragment_group: int
    payload: bytes

    @property
    def is_ack(self) -> bool:
        return bool(self.flags & FLAG_ACK)

    @property
    def is_safe(self) -> bool:
        return bool(self.flags & FLAG_SAFE)

    @property
    def is_fragmented(self) -> bool:
        return bool(self.flags & FLAG_FRAGMENTED)

    @property
    def fragment_index(self) -> int:
        return self.flags & FRAGMENT_INDEX_MASK


def decode_transport(datagram: bytes | bytearray | memoryview) -> TransportPacket:
    raw = bytes(datagram)
    if len(raw) < HEADER_SIZE:
        raise T4CTransportError(
            f"transport datagram too short: {len(raw)} bytes, expected at least {HEADER_SIZE}"
        )
    if len(raw) > MAX_DATAGRAM_SIZE:
        raise T4CTransportError(
            f"transport datagram too large: {len(raw)} bytes, max {MAX_DATAGRAM_SIZE}"
        )

    flags, declared_length, sequence, fragment_group = struct.unpack_from(
        "<HHII", raw, 0
    )

    if flags & FLAG_RESERVED_MASK:
        raise T4CTransportError(f"reserved transport flags set: 0x{flags:04X}")

    payload = raw[HEADER_SIZE:]

    if flags & FLAG_ACK:
        # Real T4C 1.25 client ACKs are special header-only datagrams.
        # Unlike ordinary frames, their length field is observed as zero:
        #   00 01 00 00 <sequence:u32> <ack-stamp:u32>
        # Our first prototype emitted 12 here and the client accepted it, so
        # decode both forms while encoding the observed/original zero form.
        if len(raw) != HEADER_SIZE:
            raise T4CTransportError("ACK packet must contain only the 12-byte header")
        if flags != FLAG_ACK:
            raise T4CTransportError(f"invalid ACK flags: 0x{flags:04X}")
        if declared_length not in (0, HEADER_SIZE):
            raise T4CTransportError(
                f"invalid ACK length field: {declared_length} (expected 0 or {HEADER_SIZE})"
            )
    elif declared_length != len(raw):
        raise T4CTransportError(
            f"transport length mismatch: header={declared_length}, actual={len(raw)}"
        )

    return TransportPacket(
        flags=flags,
        declared_length=declared_length,
        sequence=sequence,
        fragment_group=fragment_group,
        payload=payload,
    )


def encode_transport(
    payload: bytes | bytearray | memoryview,
    *,
    sequence: int,
    safe: bool = False,
    fragmented: bool = False,
    fragment_index: int = 0,
    fragment_group: int = 0,
) -> bytes:
    data = bytes(payload)
    if not 0 <= sequence <= 0xFFFFFFFF:
        raise ValueError("sequence must fit in u32")
    if not 0 <= fragment_group <= 0xFFFFFFFF:
        raise ValueError("fragment_group must fit in u32")
    if not 0 <= fragment_index <= 0xFF:
        raise ValueError("fragment_index must fit in u8")

    flags = fragment_index
    if safe:
        flags |= FLAG_SAFE
    if fragmented:
        flags |= FLAG_FRAGMENTED
    elif fragment_index:
        raise ValueError("fragment_index is only valid for fragmented packets")

    total_length = HEADER_SIZE + len(data)
    if total_length > MAX_DATAGRAM_SIZE:
        raise T4CTransportError(
            f"transport datagram too large: {total_length} bytes, max {MAX_DATAGRAM_SIZE}"
        )

    return struct.pack(
        "<HHII", flags, total_length, sequence, fragment_group
    ) + data


def encode_ack(sequence: int, *, stamp: int = 0) -> bytes:
    if not 0 <= sequence <= 0xFFFFFFFF:
        raise ValueError("sequence must fit in u32")
    if not 0 <= stamp <= 0xFFFFFFFF:
        raise ValueError("stamp must fit in u32")
    # The 1.25 client emits ACKs with a zero length field, despite the UDP
    # datagram itself being the fixed 12-byte transport header.
    return struct.pack("<HHII", FLAG_ACK, 0, sequence, stamp)
