import asyncio
import unittest

from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.config import ServerConfig
from t4c.handlers import PacketDispatcher
from t4c.protocol import PacketID, PRE_SESSION_PACKET_IDS
from t4c.server import T4CServerProtocol
from t4c.transport import decode_transport
from t4c.session import ClientSession, SessionState


class CaptureServer(T4CServerProtocol):
    def __init__(self, config=None):
        super().__init__(config=config)
        self.sent = []

    def send_datagram(self, address, datagram, **kwargs):
        self.sent.append((address, datagram))


def decode_server_reply(datagram):
    return decode_datagram(decode_transport(datagram).payload)


class Step2Tests(unittest.IsolatedAsyncioTestCase):
    def test_pre_session_id_set(self):
        self.assertEqual(
            {int(x) for x in PRE_SESSION_PACKET_IDS},
            {14, 45, 65, 66, 90, 91},
        )

    def test_u8_pascal_string_codec(self):
        w = PacketWriter(14).write_pascal_u8_text("compte")
        packet = decode_datagram(w.to_datagram(seed=1))
        r = PacketReader(packet.body)
        self.assertEqual(r.read_pascal_u8_text(), "compte")
        self.assertEqual(r.remaining, 0)

    async def test_login_request_is_accepted_in_dev_mode(self):
        server = CaptureServer(ServerConfig(accept_any_login=True))
        session = ClientSession(("127.0.0.1", 12345))
        request = PacketWriter(PacketID.REGISTER_ACCOUNT)
        request.write_pascal_u8_text("alice")
        request.write_pascal_u8_text("secret")
        request.write_i16(125)
        request.write_i16(0)
        decoded = decode_datagram(request.to_datagram(seed=7))

        handled = await server.dispatcher.dispatch(server, session, decoded)
        self.assertTrue(handled)
        self.assertEqual(session.state, SessionState.AUTHENTICATED)
        self.assertEqual(session.account, "alice")
        self.assertEqual(len(server.sent), 1)

        reply = decode_server_reply(server.sent[0][1])
        self.assertEqual(reply.packet_id, 14)
        reader = PacketReader(reply.body)
        self.assertEqual(reader.read_u8(), 0)
        self.assertIn("accept", reader.read_text().lower())

    async def test_login_rejects_wrong_credentials_in_strict_mode(self):
        server = CaptureServer(
            ServerConfig(
                accept_any_login=False,
                account="demo",
                password="pass",
            )
        )
        session = ClientSession(("127.0.0.1", 12345))
        request = PacketWriter(14)
        request.write_pascal_u8_text("demo")
        request.write_pascal_u8_text("wrong")
        request.write_i16(0).write_i16(0)
        decoded = decode_datagram(request.to_datagram(seed=8))

        await server.dispatcher.dispatch(server, session, decoded)
        self.assertEqual(session.state, SessionState.NEW)
        reply = decode_server_reply(server.sent[0][1])
        reader = PacketReader(reply.body)
        self.assertEqual(reader.read_u8(), 1)

    async def test_motd_response(self):
        server = CaptureServer(ServerConfig(motd="Bonjour T4C"))
        session = ClientSession(("127.0.0.1", 1))
        request = decode_datagram(PacketWriter(66).to_datagram(seed=2))
        await server.dispatcher.dispatch(server, session, request)
        reply = decode_server_reply(server.sent[0][1])
        self.assertEqual(reply.packet_id, 66)
        self.assertEqual(PacketReader(reply.body).read_text(), "Bonjour T4C")

    async def test_name_existence_response(self):
        server = CaptureServer()
        session = ClientSession(("127.0.0.1", 1))
        request = PacketWriter(90).write_text("Alice")
        decoded = decode_datagram(request.to_datagram(seed=3))
        await server.dispatcher.dispatch(server, session, decoded)
        reply = decode_server_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u8(), 0)


if __name__ == "__main__":
    unittest.main()
