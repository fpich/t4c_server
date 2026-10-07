import struct
import unittest

from t4c.codec import (
    LCG_MULTIPLIER,
    PacketReader,
    PacketWriter,
    T4CProtocolError,
    decode_datagram,
    encode_packet,
)


class CodecTests(unittest.TestCase):
    def test_known_keystream_prefix(self) -> None:
        # Independent vector from the reconstructed 32-bit LCG.
        state = 0x0123
        got = []
        for _ in range(8):
            state = (state * LCG_MULTIPLIER + 1) & 0xFFFFFFFF
            got.append(state & 0xFF)
        self.assertEqual(got, [0xD4, 0x15, 0xE6, 0x47, 0x38, 0xB9, 0xCA, 0x6B])

    def test_packet_round_trip(self) -> None:
        writer = PacketWriter(0x1234)
        writer.write_u8(0xAB)
        writer.write_u16(0xCDEF)
        writer.write_u32(0x01234567)
        writer.write_text("été")

        datagram = writer.to_datagram(seed=0x0123)
        packet = decode_datagram(datagram)

        self.assertEqual(packet.seed, 0x0123)
        self.assertEqual(packet.packet_id, 0x1234)

        reader = PacketReader(packet.body)
        self.assertEqual(reader.read_u8(), 0xAB)
        self.assertEqual(reader.read_u16(), 0xCDEF)
        self.assertEqual(reader.read_u32(), 0x01234567)
        self.assertEqual(reader.read_text(), "été")
        self.assertEqual(reader.remaining, 0)

    def test_header_is_little_endian(self) -> None:
        datagram = encode_packet(0x1234, b"\xAA", seed=0x01F2)
        seed, checksum = struct.unpack_from("<HH", datagram, 0)
        self.assertEqual(seed, 0x01F2)
        self.assertEqual(checksum, (0x12 + 0x34 + 0xAA) & 0xFFFF)

    def test_packet_id_is_big_endian(self) -> None:
        datagram = encode_packet(0xCAFE, b"", seed=1)
        packet = decode_datagram(datagram)
        self.assertEqual(packet.payload[:2], b"\xCA\xFE")

    def test_checksum_rejects_corruption(self) -> None:
        datagram = bytearray(encode_packet(0x0001, b"abc", seed=7))
        datagram[-1] ^= 0x01
        with self.assertRaises(T4CProtocolError):
            decode_datagram(datagram)

    def test_reader_underflow(self) -> None:
        reader = PacketReader(b"\x01")
        with self.assertRaises(T4CProtocolError):
            reader.read_u16()


if __name__ == "__main__":
    unittest.main()
