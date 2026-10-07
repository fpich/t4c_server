import unittest

from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.config import ServerConfig
from t4c.protocol import PacketID, packet_name
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


class Step4BootstrapTests(unittest.IsolatedAsyncioTestCase):
    def test_menu_packet_names_are_known(self):
        expected = {
            13: "PUT_PLAYER_IN_GAME",
            25: "CREATE_PLAYER",
            26: "GET_PERSONAL_PC_LIST",
            38: "RETURN_TO_MENU",
            46: "FROM_PREINGAME_TO_INGAME",
            99: "AUTHENTICATE_SERVER_VERSION",
            103: "MAX_CHARACTERS_PER_ACCOUNT_INFO",
        }
        self.assertEqual({k: packet_name(k) for k in expected}, expected)

    async def test_motd_moves_session_to_frontend(self):
        server = CaptureServer(ServerConfig(motd="Test"))
        session = ClientSession(("127.0.0.1", 12345))
        request = decode_datagram(PacketWriter(PacketID.MESSAGE_OF_THE_DAY).to_datagram(seed=1))
        await server.dispatcher.dispatch(server, session, request)

        self.assertEqual(session.state, SessionState.FRONTEND)
        self.assertEqual(session.motd_requests, 1)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(reply.packet_id, PacketID.MESSAGE_OF_THE_DAY)
        self.assertEqual(PacketReader(reply.body).read_text(), "Test")

    async def test_patch_info_is_counted_and_marks_frontend(self):
        server = CaptureServer(ServerConfig())
        session = ClientSession(("127.0.0.1", 12345))
        request = decode_datagram(PacketWriter(PacketID.QUERY_PATCH_SERVER_INFO).to_datagram(seed=2))
        await server.dispatcher.dispatch(server, session, request)

        self.assertEqual(session.state, SessionState.FRONTEND)
        self.assertEqual(session.patch_info_requests, 1)

    async def test_auth_request_counter(self):
        server = CaptureServer(ServerConfig(accept_any_login=True))
        session = ClientSession(("127.0.0.1", 12345))
        request = PacketWriter(PacketID.REGISTER_ACCOUNT)
        request.write_pascal_u8_text("test")
        request.write_pascal_u8_text("test")
        request.write_i16(0).write_i16(0)
        decoded = decode_datagram(request.to_datagram(seed=3))

        await server.dispatcher.dispatch(server, session, decoded)
        self.assertEqual(session.auth_requests, 1)
        self.assertEqual(session.state, SessionState.AUTHENTICATED)


if __name__ == "__main__":
    unittest.main()
