"""Étape 20 (PLAN 2.1) : carte/collisions — WorldMap et refus de déplacement."""

import tempfile
import unittest
from pathlib import Path

from t4c.characters import Character, CharacterStore
from t4c.codec import PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.maps import WorldMap, MAP_MAX
from t4c.protocol import PacketID
from t4c.session import ClientSession, SessionState
from t4c.config import ServerConfig


class FakeServer:
    def __init__(self, world_map=None):
        self.config = ServerConfig()
        self.characters = CharacterStore()
        self.sessions = {}
        self.persistence = None
        self.next_unit_id = 1
        self.reserved_names = set()
        self.sent = []
        self.world_map = world_map or WorldMap()

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer))


def fake_packet(packet_id, body_writer=None):
    writer = PacketWriter(packet_id)
    if body_writer:
        body_writer(writer)
    return decode_datagram(writer.to_datagram())


def make_session(server, name="Alice", unit_id=1, x=100, y=100):
    session = ClientSession(("127.0.0.1", 5000 + unit_id), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    server.characters.create("acc", Character(name=name))
    server.sessions[session.address] = session
    return session


class WorldMapTests(unittest.TestCase):
    def test_default_everything_walkable_in_bounds(self):
        m = WorldMap()
        self.assertTrue(m.is_walkable(0, 0, 0))
        self.assertTrue(m.is_walkable(MAP_MAX, MAP_MAX, 0))
        self.assertFalse(m.is_walkable(-1, 0, 0))
        self.assertFalse(m.is_walkable(0, MAP_MAX + 1, 0))

    def test_csv_grid_blocks_unlisted_cells(self):
        with tempfile.TemporaryDirectory() as d:
            Path(d, "world0.csv").write_text(
                "# x,y,walkable\n100,100,1\n101,100,1\n", encoding="utf-8"
            )
            m = WorldMap(d)
            self.assertTrue(m.is_walkable(100, 100, 0))
            self.assertTrue(m.is_walkable(101, 100, 0))
            self.assertFalse(m.is_walkable(102, 100, 0))  # non listée = bloquée
            # monde sans fichier : tout franchissable
            self.assertTrue(m.is_walkable(500, 500, 1))


class CollisionMoveTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.map = WorldMap()
        self.server = FakeServer(world_map=self.map)
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server)

    async def test_blocked_cell_refuses_move(self):
        # Mur à l'est d'Alice (101,100).
        self.map.set_walkable(0, 101, 100, False)
        self.server.sent.clear()
        await self.dispatcher.dispatch(
            self.server, self.alice, fake_packet(int(PacketID.MOVE_EAST))
        )
        self.assertEqual((self.alice.pos_x, self.alice.pos_y), (100, 100))  # inchangé
        # Aucun paquet 1 émis (le client reste sur sa prédiction locale).
        self.assertFalse([w for a, w in self.server.sent if w.packet_id == 1])

    async def test_free_cell_accepts_move(self):
        self.map.set_walkable(0, 101, 100, True)
        await self.dispatcher.dispatch(
            self.server, self.alice, fake_packet(int(PacketID.MOVE_EAST))
        )
        self.assertEqual(self.alice.pos_x, 101)
        self.assertTrue([w for a, w in self.server.sent if a == self.alice.address and w.packet_id == 1])

    async def test_out_of_bounds_clamped_and_refused_beyond_map(self):
        # Alice au bord : x = MAP_MAX, aller à l'est -> clamp à MAP_MAX, walkable.
        self.alice.pos_x = MAP_MAX
        await self.dispatcher.dispatch(
            self.server, self.alice, fake_packet(int(PacketID.MOVE_EAST))
        )
        self.assertEqual(self.alice.pos_x, MAP_MAX)  # clampé, case valide


if __name__ == "__main__":
    unittest.main()
