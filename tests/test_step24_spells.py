"""Étape 24 (PLAN 3.3) : sorts réels — catalogue WDA, lancement C2S 32, mana, 64/67/55."""

import unittest
from unittest import mock

from t4c.characters import Character, CharacterStore
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.maps import WorldMap
from t4c.protocol import PacketID
from t4c.session import ClientSession, SessionState
from t4c.config import ServerConfig
from t4c import world
from t4c import spells as spells_mod


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


def make_session(server, name="Alice", unit_id=1, x=100, y=100):
    session = ClientSession(("127.0.0.1", 9000 + unit_id), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    character = Character(name=name, spells=(414,))  # Fire dart appris
    server.characters.create("acc", character)
    server.sessions[session.address] = session
    return session


class SpellTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server)
        self.monster = world.register_npc(
            "Rat", appearance=300, x=102, y=100,
            hostile=True, hp=100, damage=3, dodge=0, xp_reward=15, gold_reward=5,
        )

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_cast_known_spell_costs_mana_and_broadcasts_64(self):
        character = self.server.characters.characters("acc")[0]
        mana_before = character.mana
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(32, lambda w: (w.write_u16(414), w.write_u16(102), w.write_u16(100), w.write_u32(self.monster.unit_id))),
        )
        self.assertEqual(character.mana, mana_before - spells_mod.SPELL_MANA_COST)
        # 67 MANA_UPDATE reçu
        mana_updates = self.packets_to(self.alice.address, 67)
        self.assertTrue(mana_updates)
        self.assertEqual(PacketReader(mana_updates[-1].body).read_u16(), character.mana)
        # 64 SPELL_CASTING diffusé
        casts = self.packets_to(self.alice.address, 64)
        self.assertTrue(casts)
        r = PacketReader(casts[0].body)
        self.assertEqual(r.read_u16(), 414)
        self.assertEqual(r.read_u32(), self.alice.unit_id)
        self.assertEqual(r.read_u32(), self.monster.unit_id)
        # Le sort a infligé des dégâts au monstre.
        self.assertLess(self.monster.hp, 100)

    async def test_cast_unknown_spell_ignored(self):
        character = self.server.characters.characters("acc")[0]
        mana_before = character.mana
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(32, lambda w: (w.write_u16(9999), w.write_u16(0), w.write_u16(0), w.write_u32(self.monster.unit_id))),
        )
        self.assertEqual(character.mana, mana_before)
        self.assertFalse(self.packets_to(self.alice.address, 64))

    async def test_cast_without_mana_fails(self):
        character = self.server.characters.characters("acc")[0]
        character.mana = 2  # coût = 10
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(32, lambda w: (w.write_u16(414), w.write_u16(0), w.write_u16(0), w.write_u32(self.monster.unit_id))),
        )
        self.assertEqual(character.mana, 2)
        self.assertFalse(self.packets_to(self.alice.address, 64))
        self.assertTrue(self.packets_to(self.alice.address, 70))  # action failure

    async def test_teach_list_55_on_teacher_npc(self):
        teacher = world.register_npc(
            "Prêtresse Solène", appearance=10012, x=101, y=100, teach=(414, 415),
        )
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(11, lambda w: (w.write_u16(100), w.write_u16(100), w.write_u32(teacher.unit_id))),
        )
        lists = self.packets_to(self.alice.address, 55)
        self.assertEqual(len(lists), 1)
        r = PacketReader(lists[0].body)
        r.read_u16()  # context
        count = r.read_u16()
        self.assertEqual(count, 2)
        ids = []
        for _ in range(count):
            r.read_u8()             # flags
            ids.append(r.read_u16())
            r.read_u32()            # valueA
            r.read_text()           # name
            r.read_text()           # requirements
            r.read_u32()            # valueB
        self.assertEqual(ids, [414, 415])

    async def test_spell_catalog_loaded_from_wda(self):
        # Le catalogue WDA est chargé : 414 = Fire dart.
        self.assertIn(414, spells_mod.SPELLS)
        self.assertEqual(spells_mod.spell_name(414).lower().startswith("fire dart"), True)


if __name__ == "__main__":
    unittest.main()
