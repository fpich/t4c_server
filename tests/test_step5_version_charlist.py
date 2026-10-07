import unittest

from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.config import ServerConfig
from t4c.protocol import PacketID
from t4c.server import T4CServerProtocol
from t4c.session import ClientSession, SessionState
from t4c.transport import decode_transport


class CaptureServer(T4CServerProtocol):
    def __init__(self, config=None):
        super().__init__(config=config)
        self.sent = []

    def send_datagram(self, address, datagram, **kwargs):
        self.sent.append((address, datagram))


def decode_reply(datagram):
    return decode_datagram(decode_transport(datagram).payload)


class Step5VersionAndCharacterListTests(unittest.IsolatedAsyncioTestCase):
    async def test_packet_99_accepts_real_125_vector(self):
        server = CaptureServer(ServerConfig(protocol_version=125))
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.AUTHENTICATED)
        request = PacketWriter(PacketID.AUTHENTICATE_SERVER_VERSION).write_u32(125)
        decoded = decode_datagram(request.to_datagram(seed=0x11E))

        handled = await server.dispatcher.dispatch(server, session, decoded)
        self.assertTrue(handled)
        self.assertEqual(session.client_protocol_version, 125)
        self.assertTrue(session.protocol_version_accepted)
        self.assertEqual(session.version_auth_requests, 1)

        reply = decode_reply(server.sent[0][1])
        self.assertEqual(reply.packet_id, PacketID.AUTHENTICATE_SERVER_VERSION)
        reader = PacketReader(reply.body)
        self.assertEqual(reader.read_u32(), 1)
        self.assertEqual(reader.remaining, 0)

    async def test_packet_99_rejects_wrong_version(self):
        server = CaptureServer(ServerConfig(protocol_version=125))
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.AUTHENTICATED)
        request = PacketWriter(PacketID.AUTHENTICATE_SERVER_VERSION).write_u32(126)
        decoded = decode_datagram(request.to_datagram(seed=4))

        await server.dispatcher.dispatch(server, session, decoded)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u32(), 0)
        self.assertFalse(session.protocol_version_accepted)

    async def test_packet_26_returns_valid_empty_character_list(self):
        server = CaptureServer(ServerConfig(protocol_version=125))
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.AUTHENTICATED)
        session.protocol_version_accepted = True
        request = PacketWriter(PacketID.GET_PERSONAL_PC_LIST)
        decoded = decode_datagram(request.to_datagram(seed=5))

        handled = await server.dispatcher.dispatch(server, session, decoded)
        self.assertTrue(handled)
        self.assertEqual(session.character_list_requests, 1)
        first = decode_reply(server.sent[0][1])
        self.assertEqual(first.packet_id, PacketID.MAX_CHARACTERS_PER_ACCOUNT_INFO)
        self.assertEqual(PacketReader(first.body).read_u8(), 3)
        reply = decode_reply(server.sent[1][1])
        self.assertEqual(reply.packet_id, PacketID.GET_PERSONAL_PC_LIST)
        self.assertEqual(reply.body, b"\x00")


if __name__ == "__main__":
    unittest.main()
