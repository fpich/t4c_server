from __future__ import annotations

import asyncio
import unittest

from t4c.codec import DecodedPacket
from t4c.config import ServerConfig
from t4c.handlers import handle_exit_game
from t4c.protocol import PacketID, packet_name
from t4c.session import ClientSession, SessionState


class DummyServer:
    def __init__(self):
        self.config = ServerConfig()
        self.sent = []

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer, kwargs))


class Step6ExitGameTests(unittest.TestCase):
    def test_packet_20_is_exit_game(self):
        self.assertEqual(int(PacketID.EXIT_GAME), 20)
        self.assertEqual(packet_name(20), "EXIT_GAME")

    def test_exit_game_keeps_account_but_clears_character(self):
        server = DummyServer()
        session = ClientSession(("127.0.0.1", 12345))
        session.state = SessionState.IN_WORLD
        session.account = "test"
        session.active_character = "Fabien"
        packet = DecodedPacket(seed=1, checksum=20, packet_id=20, payload=b"\x00\x14", body=b"")

        asyncio.run(handle_exit_game(server, session, packet))

        self.assertEqual(session.account, "test")
        self.assertIsNone(session.active_character)
        self.assertEqual(session.state, SessionState.CHARACTER_MENU)
        self.assertEqual(session.exit_game_requests, 1)
        self.assertEqual(server.sent, [])


if __name__ == "__main__":
    unittest.main()
