"""Étape 10 : boucle de jeu minimale — mouvements 1-8 et position 9."""
import unittest

from t4c.characters import Character
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


def in_world_session(x=0, y=0):
    session = ClientSession(("127.0.0.1", 12345), state=SessionState.IN_WORLD)
    session.account = "test"
    session.active_character = "Fabien"
    session.pos_x = x
    session.pos_y = y
    return session


def move_packet(move_id, seed=31):
    return decode_datagram(
        PacketWriter(move_id).to_datagram(seed=seed)
    )


class Step10PlayerMoveTests(unittest.IsolatedAsyncioTestCase):
    async def test_move_east_updates_position_and_sends_event(self):
        server = CaptureServer(ServerConfig())
        session = in_world_session(10, 20)
        handled = await server.dispatcher.dispatch(
            server, session, move_packet(PacketID.MOVE_EAST)
        )
        self.assertTrue(handled)
        self.assertEqual(session.pos_x, 11)
        self.assertEqual(session.pos_y, 20)
        self.assertEqual(session.move_requests, 1)
        event = decode_reply(server.sent[0][1])
        self.assertEqual(event.packet_id, 1)  # __EVENT_OBJECT_MOVED
        reader = PacketReader(event.body)
        self.assertEqual(reader.read_i16(), 11)
        self.assertEqual(reader.read_i16(), 20)

    async def test_all_eight_directions(self):
        offsets = {
            PacketID.MOVE_NORTH: (0, -1),
            PacketID.MOVE_NORTH_EAST: (1, -1),
            PacketID.MOVE_EAST: (1, 0),
            PacketID.MOVE_SOUTH_EAST: (1, 1),
            PacketID.MOVE_SOUTH: (0, 1),
            PacketID.MOVE_SOUTH_WEST: (-1, 1),
            PacketID.MOVE_WEST: (-1, 0),
            PacketID.MOVE_NORTH_WEST: (-1, -1),
        }
        for move_id, (dx, dy) in offsets.items():
            server = CaptureServer(ServerConfig())
            session = in_world_session(0, 0)
            handled = await server.dispatcher.dispatch(
                server, session, move_packet(move_id)
            )
            self.assertTrue(handled, move_id)
            self.assertEqual((session.pos_x, session.pos_y), (dx, dy), move_id)

    async def test_move_ignored_when_not_in_world(self):
        server = CaptureServer(ServerConfig())
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.CHARACTER_MENU)
        handled = await server.dispatcher.dispatch(
            server, session, move_packet(PacketID.MOVE_NORTH)
        )
        self.assertTrue(handled)
        self.assertEqual(server.sent, [])
        self.assertEqual((session.pos_x, session.pos_y), (0, 0))

    async def test_get_player_pos_returns_coordinates(self):
        server = CaptureServer(ServerConfig())
        session = in_world_session(33, 44)
        session.pos_world = 2
        handled = await server.dispatcher.dispatch(
            server, session, move_packet(PacketID.GET_PLAYER_POS)
        )
        self.assertTrue(handled)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(reply.packet_id, PacketID.GET_PLAYER_POS)
        reader = PacketReader(reply.body)
        self.assertEqual(reader.read_i16(), 33)
        self.assertEqual(reader.read_i16(), 44)
        self.assertEqual(reader.read_i16(), 2)
        self.assertEqual(reader.remaining, 0)

    async def test_moves_persist_position(self):
        import tempfile
        from pathlib import Path

        with tempfile.TemporaryDirectory() as tmp:
            cfg = ServerConfig(database_path=str(Path(tmp) / "t4c.sqlite3"))
            server = CaptureServer(cfg)
            server.persistence.create_user("test")
            server.persistence.save_character("test", Character(name="Fabien"))
            session = in_world_session(0, 0)
            await server.dispatcher.dispatch(
                server, session, move_packet(PacketID.MOVE_SOUTH)
            )
            self.assertEqual(
                server.persistence.position("Fabien"), (0, 1, 0)
            )


if __name__ == "__main__":
    unittest.main()
