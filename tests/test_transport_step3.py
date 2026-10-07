import unittest

from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.transport import (
    FLAG_ACK,
    FLAG_SAFE,
    HEADER_SIZE,
    T4CTransportError,
    decode_transport,
    encode_ack,
    encode_transport,
)


class TransportStep3Tests(unittest.TestCase):
    # Exact datagram captured from Client T4C 1.25 Fr.exe under Wine.
    CLIENT_MOTD_QUERY = bytes.fromhex(
        "00 02 12 00 00 00 00 00 00 00 00 00 96 00 42 00 f7 aa"
    )
    # Exact ACK captured from Client T4C 1.25 after receiving our MOTD reply.
    CLIENT_ACK = bytes.fromhex(
        "00 01 00 00 00 00 00 00 f8 70 ac 01"
    )

    def test_real_client_motd_transport_header(self):
        frame = decode_transport(self.CLIENT_MOTD_QUERY)
        self.assertEqual(frame.flags, FLAG_SAFE)
        self.assertTrue(frame.is_safe)
        self.assertFalse(frame.is_ack)
        self.assertFalse(frame.is_fragmented)
        self.assertEqual(frame.declared_length, 18)
        self.assertEqual(frame.sequence, 0)
        self.assertEqual(frame.fragment_group, 0)
        self.assertEqual(frame.payload, bytes.fromhex("96 00 42 00 f7 aa"))

    def test_real_client_motd_decodes_to_packet_66(self):
        frame = decode_transport(self.CLIENT_MOTD_QUERY)
        packet = decode_datagram(frame.payload)
        self.assertEqual(packet.packet_id, 66)
        self.assertEqual(packet.checksum, 0x0042)
        self.assertEqual(packet.payload, b"\x00\x42")
        self.assertEqual(packet.body, b"")

    def test_ack_for_real_client_packet(self):
        frame = decode_transport(self.CLIENT_MOTD_QUERY)
        ack = encode_ack(frame.sequence)
        self.assertEqual(len(ack), HEADER_SIZE)
        self.assertEqual(ack[2:4], b"\x00\x00")
        parsed = decode_transport(ack)
        self.assertEqual(parsed.flags, FLAG_ACK)
        self.assertTrue(parsed.is_ack)
        self.assertEqual(parsed.sequence, 0)
        self.assertEqual(parsed.payload, b"")

    def test_exact_real_client_ack_with_zero_length_field(self):
        ack = decode_transport(self.CLIENT_ACK)
        self.assertTrue(ack.is_ack)
        self.assertEqual(ack.flags, FLAG_ACK)
        self.assertEqual(ack.declared_length, 0)
        self.assertEqual(ack.sequence, 0)
        self.assertEqual(ack.fragment_group, 0x01AC70F8)
        self.assertEqual(ack.payload, b"")

    def test_transport_round_trip(self):
        app = PacketWriter(66).write_text("Bonjour").to_datagram(seed=5)
        wire = encode_transport(app, sequence=123, safe=True)
        frame = decode_transport(wire)
        self.assertEqual(frame.sequence, 123)
        self.assertTrue(frame.is_safe)
        packet = decode_datagram(frame.payload)
        self.assertEqual(packet.packet_id, 66)
        self.assertEqual(PacketReader(packet.body).read_text(), "Bonjour")

    def test_transport_length_validation(self):
        wire = bytearray(encode_transport(b"abcdef", sequence=1))
        wire[2:4] = (999).to_bytes(2, "little")
        with self.assertRaises(T4CTransportError):
            decode_transport(wire)


if __name__ == "__main__":
    unittest.main()


class _FakeAsyncioTransport:
    def __init__(self):
        self.sent = []

    def sendto(self, data, address):
        self.sent.append((bytes(data), address))

    def get_extra_info(self, name):
        if name == "sockname":
            return ("127.0.0.1", 11677)
        return None


class ServerTransportIntegrationTests(unittest.IsolatedAsyncioTestCase):
    async def test_real_motd_query_produces_ack_and_motd_reply(self):
        import asyncio
        from t4c.config import ServerConfig
        from t4c.server import T4CServerProtocol

        raw = TransportStep3Tests.CLIENT_MOTD_QUERY
        server = T4CServerProtocol(config=ServerConfig(motd="Serveur Python T4C"))
        transport = _FakeAsyncioTransport()
        server.connection_made(transport)

        server.datagram_received(raw, ("127.0.0.1", 35941))
        await asyncio.sleep(0)
        await asyncio.sleep(0)

        self.assertEqual(len(transport.sent), 2)

        ack = decode_transport(transport.sent[0][0])
        self.assertTrue(ack.is_ack)
        self.assertEqual(ack.sequence, 0)

        reply_frame = decode_transport(transport.sent[1][0])
        self.assertTrue(reply_frame.is_safe)
        reply = decode_datagram(reply_frame.payload)
        self.assertEqual(reply.packet_id, 66)
        self.assertEqual(PacketReader(reply.body).read_text(), "Serveur Python T4C")
