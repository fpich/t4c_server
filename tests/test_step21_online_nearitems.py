"""Étape 21 : liste en ligne réelle (62), paquet 60 + vue 16, cadence mouvement (5.3)."""

import time
import unittest

from t4c.characters import Character, CharacterStore
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.maps import WorldMap
from t4c.protocol import PacketID
from t4c.session import ClientSession, SessionState
from t4c.config import ServerConfig
from t4c import world


class FakeServer:
    def __init__(self):
        self.config = ServerConfig()
        self.characters = CharacterStore()
        self.sessions = {}
        self.persistence = None
        self.next_unit_id = 1
        self.reserved_names = set()
        self.world_map = WorldMap()
        self.sent = []

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer))


def fake_packet(packet_id, body_writer=None):
    writer = PacketWriter(packet_id)
    if body_writer:
        body_writer(writer)
    return decode_datagram(writer.to_datagram())


def make_session(server, name, unit_id, port, account="acc", x=100, y=100):
    session = ClientSession(("127.0.0.1", port), state=SessionState.IN_WORLD)
    session.account = account
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    server.characters.create(account, Character(name=name))
    server.sessions[session.address] = session
    return session


class OnlineListTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 6001)
        self.bob = make_session(self.server, "Bob", 2, 6002, account="acc2")

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_62_lists_online_players(self):
        # Un troisième joueur non connecté (pas IN_WORLD) ne doit pas apparaître.
        lobby = ClientSession(("127.0.0.1", 6003), state=SessionState.AUTHENTICATED)
        lobby.account = "acc3"
        self.server.sessions[lobby.address] = lobby
        await self.dispatcher.dispatch(self.server, self.alice, fake_packet(62))
        lists = self.packets_to(self.alice.address, 62)
        self.assertEqual(len(lists), 1)
        r = PacketReader(lists[0].body)
        count = r.read_u16()
        self.assertEqual(count, 2)
        rows = [(r.read_text(), r.read_text()) for _ in range(count)]
        names = sorted(row[0] for row in rows)
        self.assertEqual(names, ["Alice", "Bob"])
        accounts = sorted(row[1] for row in rows)
        self.assertEqual(accounts, ["acc", "acc2"])


class NearItemsTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 6101)
        self.bob = make_session(self.server, "Bob", 2, 6102, account="acc2")

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_60_sends_16_first_when_units_in_view(self):
        self.server.sent.clear()
        await self.dispatcher.dispatch(self.server, self.alice, fake_packet(60))
        # Bob est en vue : le 16 est envoyé avant le 60.
        ids = [w.packet_id for a, w in self.server.sent if a == self.alice.address]
        self.assertIn(16, ids)
        self.assertIn(60, ids)
        self.assertLess(ids.index(16), ids.index(60))
        # Le 16 contient Bob.
        inview = self.packets_to(self.alice.address, 16)[0]
        r = PacketReader(inview.body)
        count = r.read_i16()
        self.assertGreaterEqual(count, 1)
        units = []
        for _ in range(count):
            r.read_i16(); r.read_i16(); r.read_i16()
            units.append(r.read_i32())
            r.read_i8(); r.read_u8(); r.read_u8()
        self.assertIn(2, units)  # Bob

    async def test_60_without_units_sends_only_empty_60(self):
        # Bob s'éloigne hors vue.
        self.bob.pos_x = 500
        self.server.sent.clear()
        await self.dispatcher.dispatch(self.server, self.alice, fake_packet(60))
        ids = [w.packet_id for a, w in self.server.sent if a == self.alice.address]
        self.assertEqual(ids, [60])  # pas de 16 vide (comportement original)


class MoveRateLimitTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 6201)

    async def test_more_than_10_moves_per_second_ignored(self):
        for _ in range(10):
            await self.dispatcher.dispatch(
                self.server, self.alice, fake_packet(int(PacketID.MOVE_EAST))
            )
        self.assertEqual(self.alice.pos_x, 110)  # les 10 premiers passent
        # Le 11e dans la même seconde est ignoré.
        await self.dispatcher.dispatch(
            self.server, self.alice, fake_packet(int(PacketID.MOVE_EAST))
        )
        self.assertEqual(self.alice.pos_x, 110)

    async def test_normal_pace_not_limited(self):
        # On simule un rythme normal : on rembobine les horodatages.
        for i in range(5):
            await self.dispatcher.dispatch(
                self.server, self.alice, fake_packet(int(PacketID.MOVE_EAST))
            )
            self.alice.move_timestamps = [t - 2.0 for t in self.alice.move_timestamps]
        self.assertEqual(self.alice.pos_x, 105)


if __name__ == "__main__":
    unittest.main()
