"""Étape 7.1 : paquet 89 (RQ_TogglePage)."""
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


class Step7TogglePageTests(unittest.IsolatedAsyncioTestCase):
    async def test_packet_89_consumes_state_without_reply(self):
        server = CaptureServer(ServerConfig())
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.AUTHENTICATED)
        request = PacketWriter(PacketID.TOGGLE_PAGE).write_u8(1)
        decoded = decode_datagram(request.to_datagram(seed=9))
        handled = await server.dispatcher.dispatch(server, session, decoded)
        self.assertTrue(handled)
        self.assertEqual(session.toggle_page_requests, 1)
        self.assertTrue(session.page_toggled)
        self.assertEqual(server.sent, [])

    async def test_packet_89_zero_state(self):
        server = CaptureServer(ServerConfig())
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.AUTHENTICATED)
        request = PacketWriter(PacketID.TOGGLE_PAGE).write_u8(0)
        decoded = decode_datagram(request.to_datagram(seed=10))
        handled = await server.dispatcher.dispatch(server, session, decoded)
        self.assertTrue(handled)
        self.assertFalse(session.page_toggled)
        self.assertEqual(server.sent, [])


if __name__ == "__main__":
    unittest.main()
