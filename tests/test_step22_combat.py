"""Étape 22 (PLAN 3.2) : combat de base — C2S 32 sur PNJ hostile."""

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
    session = ClientSession(("127.0.0.1", 7000 + unit_id), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    character = Character(name=name)
    server.characters.create("acc", character)
    server.sessions[session.address] = session
    return session


def attack_packet(target_unit_id, spell_id=0):
    return fake_packet(
        32,
        lambda w: (w.write_u16(spell_id), w.write_u16(0), w.write_u16(0), w.write_u32(target_unit_id)),
    )


class CombatTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server)
        self.monster = world.register_npc(
            "Rat", appearance=300, x=102, y=100,
            hostile=True, hp=20, damage=3, dodge=0, xp_reward=15, gold_reward=5,
            loot=(2,),
        )

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_attack_sends_2711_or_2712_to_viewers(self):
        await self.dispatcher.dispatch(self.server, self.alice, attack_packet(self.monster.unit_id))
        # Le round du joueur (attaquant = Alice) : 0x2711 ou 0x2712.
        events = [
            w for w in self.packets_to(self.alice.address, 0x2711)
            + self.packets_to(self.alice.address, 0x2712)
        ]
        player_rounds = []
        for ev in events:
            r = PacketReader(ev.body)
            attacker = r.read_u32()
            target = r.read_u32()
            if attacker == self.alice.unit_id:
                player_rounds.append((ev.packet_id, target))
        self.assertEqual(len(player_rounds), 1)  # un round = un événement
        self.assertEqual(player_rounds[0][1], self.monster.unit_id)
        self.assertIn(player_rounds[0][0], (0x2711, 0x2712))

    async def test_killing_npc_gives_loot_xp_gold_and_removes_it(self):
        character = self.server.characters.characters("acc")[0]
        character.agi = 200  # 100% touché
        self.monster.hp = 1
        xp_before, gold_before = character.xp, character.gold
        # Jet déterministe : toujours touché, dégâts = FOR/2 + 1 = 6.
        with mock.patch("random.randint", return_value=1):
            for _ in range(10):
                if self.monster.unit_id not in world._npcs:
                    break
                await self.dispatcher.dispatch(self.server, self.alice, attack_packet(self.monster.unit_id))
        self.assertNotIn(self.monster.unit_id, world._npcs)  # PNJ mort
        # Retrait diffusé (11), loot au sol, XP (44) et or (53) reçus.
        self.assertTrue(self.packets_to(self.alice.address, 11))
        self.assertTrue(world._ground_items)  # potion droppée
        self.assertTrue(self.packets_to(self.alice.address, 44))
        gold_updates = self.packets_to(self.alice.address, 53)
        self.assertTrue(gold_updates)
        self.assertEqual(
            PacketReader(gold_updates[-1].body).read_u32(), gold_before + 5
        )
        self.assertGreaterEqual(character.xp, xp_before + 15)

    async def test_counterattack_damages_player_and_sends_status(self):
        character = self.server.characters.characters("acc")[0]
        character.agi = 200   # le joueur touche toujours
        self.monster.dodge = 200  # le monstre touche aussi (hit_chance clamp 95)
        hp_before = character.hp
        with mock.patch("random.randint", return_value=1):  # tous les jets touchent
            await self.dispatcher.dispatch(self.server, self.alice, attack_packet(self.monster.unit_id))
        # Riposte : le joueur a perdu des HP et reçu un statut 43.
        self.assertLess(character.hp, hp_before)
        self.assertTrue(self.packets_to(self.alice.address, 43))
        # Le monstre a aussi perdu des HP (touché) -> mise à jour 69 envoyée.
        self.assertTrue(self.packets_to(self.alice.address, 69))

    async def test_attack_non_hostile_npc_does_nothing(self):
        merchant = world.register_npc("Marchand", appearance=10011, x=101, y=100, shop={1: 1})
        self.server.sent.clear()
        await self.dispatcher.dispatch(self.server, self.alice, attack_packet(merchant.unit_id))
        self.assertFalse(self.packets_to(self.alice.address, 0x2711))
        self.assertFalse(self.packets_to(self.alice.address, 0x2712))

    async def test_attack_far_away_npc_refused(self):
        self.monster.x = 500  # hors de vue
        self.server.sent.clear()
        await self.dispatcher.dispatch(self.server, self.alice, attack_packet(self.monster.unit_id))
        self.assertFalse(self.packets_to(self.alice.address, 0x2711))
        self.assertFalse(self.packets_to(self.alice.address, 0x2712))

    async def test_skill_12_is_melee_attack(self):
        character = self.server.characters.characters("acc")[0]
        character.agi = 200
        self.monster.hp = 100
        hp_before = self.monster.hp
        with mock.patch("random.randint", return_value=1):
            await self.dispatcher.dispatch(
                self.server,
                self.alice,
                fake_packet(42, lambda w: (w.write_u16(12), w.write_u16(0), w.write_u16(0), w.write_u32(self.monster.unit_id))),
            )
        self.assertLess(self.monster.hp, hp_before)  # skill 12 = attaque
        self.assertTrue(
            self.packets_to(self.alice.address, 0x2711)
            or self.packets_to(self.alice.address, 0x2712)
        )


if __name__ == "__main__":
    unittest.main()
