"""Étape 23 (PLAN 4.2) : groupes — C2S 78/79/80/81/88, S2C 76/78/80/82/87/88."""

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


def make_session(server, name, unit_id, port, x=100, y=100):
    session = ClientSession(("127.0.0.1", port), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    server.characters.create("acc", Character(name=name))
    server.sessions[session.address] = session
    return session


def parse_group_members(body):
    r = PacketReader(body)
    auto_split = r.read_u8()
    count = r.read_u16()
    members = []
    for _ in range(count):
        unit = r.read_u32()
        level = r.read_u16()
        hp = r.read_u16()
        leader = r.read_u8()
        name = r.read_text()
        members.append((unit, level, hp, leader, name))
    return auto_split, members


class GroupTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        world._groups.clear()
        world._pending_invites.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 8001)
        self.bob = make_session(self.server, "Bob", 2, 8002)

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_invite_78_sends_invite_to_target(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(78, lambda w: (w.write_u32(self.bob.unit_id), w.write_u32(0))),
        )
        invites = self.packets_to(self.bob.address, 78)
        self.assertEqual(len(invites), 1)
        r = PacketReader(invites[0].body)
        self.assertEqual(r.read_u32(), self.alice.unit_id)
        self.assertEqual(r.read_text(), "Alice")

    async def test_join_79_sends_members_76_to_both(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(78, lambda w: (w.write_u32(self.bob.unit_id), w.write_u32(0))),
        )
        await self.dispatcher.dispatch(self.server, self.bob, fake_packet(79))
        for s in (self.alice, self.bob):
            lists = self.packets_to(s.address, 76)
            self.assertTrue(lists)
            auto_split, members = parse_group_members(lists[-1].body)
            self.assertEqual(len(members), 2)
            leaders = [m for m in members if m[3] == 1]
            self.assertEqual(len(leaders), 1)
            self.assertEqual(leaders[0][0], self.alice.unit_id)
            names = sorted(m[4] for m in members)
            self.assertEqual(names, ["Alice", "Bob"])

    async def test_leave_80_sends_80_to_leaver_and_refreshes_others(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(78, lambda w: (w.write_u32(self.bob.unit_id), w.write_u32(0))),
        )
        await self.dispatcher.dispatch(self.server, self.bob, fake_packet(79))
        self.server.sent.clear()
        await self.dispatcher.dispatch(self.server, self.bob, fake_packet(80))
        # Bob a reçu 80 (dismissed).
        self.assertTrue(self.packets_to(self.bob.address, 80))
        # Groupe réduit à 1 membre -> dissous : Alice reçoit 82.
        self.assertTrue(self.packets_to(self.alice.address, 82))
        self.assertIsNone(world.group_of(self.alice))

    async def test_disband_81_by_leader_sends_82_to_all(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(78, lambda w: (w.write_u32(self.bob.unit_id), w.write_u32(0))),
        )
        await self.dispatcher.dispatch(self.server, self.bob, fake_packet(79))
        self.server.sent.clear()
        await self.dispatcher.dispatch(self.server, self.alice, fake_packet(81))
        self.assertTrue(self.packets_to(self.alice.address, 82))
        self.assertTrue(self.packets_to(self.bob.address, 82))
        self.assertEqual(world._groups, {})

    async def test_autosplit_88_broadcasts_state(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(78, lambda w: (w.write_u32(self.bob.unit_id), w.write_u32(0))),
        )
        await self.dispatcher.dispatch(self.server, self.bob, fake_packet(79))
        self.server.sent.clear()
        await self.dispatcher.dispatch(
            self.server, self.alice, fake_packet(88, lambda w: w.write_u8(0))
        )
        for s in (self.alice, self.bob):
            states = self.packets_to(s.address, 88)
            self.assertTrue(states)
            self.assertEqual(PacketReader(states[-1].body).read_u8(), 0)
        # Le 76 rafraîchi porte autoSplit=0.
        auto_split, _ = parse_group_members(self.packets_to(self.alice.address, 76)[-1].body)
        self.assertEqual(auto_split, 0)

    async def test_invite_out_of_range_refused(self):
        self.bob.pos_x = 500
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(78, lambda w: (w.write_u32(self.bob.unit_id), w.write_u32(0))),
        )
        self.assertFalse(self.packets_to(self.bob.address, 78))
        self.assertTrue(self.packets_to(self.alice.address, 63))  # message système


if __name__ == "__main__":
    unittest.main()
