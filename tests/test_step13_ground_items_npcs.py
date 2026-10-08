"""Étape 29 (PLAN 2.2 + 2.3) : objets au sol et PNJ statiques."""

import unittest

from t4c.characters import Character, CharacterStore, START_POS
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.items import starting_inventory
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
        self.sent = []

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer))


def make_session(server, name, unit_id, x, y):
    session = ClientSession(("127.0.0.1", 1000 + unit_id), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    server.characters.create("acc", Character(name=name))
    server.sessions[session.address] = session
    return session


def fake_packet(packet_id, body_writer=None):
    writer = PacketWriter(packet_id)
    if body_writer:
        body_writer(writer)
    return decode_datagram(writer.to_datagram())


class GroundItemTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        # reset the module-level ground registry between tests
        world._ground_items.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 100, 100)
        self.alice.inventory = starting_inventory()
        self.bob = make_session(self.server, "Bob", 2, 105, 100)

    async def test_drop_removes_from_bag_and_spawns_visible(self):
        sword = self.alice.inventory.backpack[0]
        sword_unit = sword.unit_id
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(
                PacketID.DROP_ITEM,
                lambda w: (w.write_u16(101), w.write_u16(100), w.write_u32(sword_unit), w.write_u32(1)),
            ),
        )
        # L'épée n'est plus dans le sac d'Alice.
        self.assertEqual(len(self.alice.inventory.backpack), 1)  # il reste la potion
        # L'objet au sol est visible : popup 0x2714 envoyé aux deux joueurs en vue.
        popups_alice = [w for a, w in self.server.sent if a == self.alice.address and w.packet_id == 0x2714]
        popups_bob = [w for a, w in self.server.sent if a == self.bob.address and w.packet_id == 0x2714]
        self.assertEqual(len(popups_alice), 1)
        self.assertEqual(len(popups_bob), 1)
        # Le popup de Bob porte l'apparence de l'épée (1) et la position du drop.
        reader = PacketReader(popups_bob[0].body)
        self.assertEqual(reader.read_i16(), 101)
        self.assertEqual(reader.read_i16(), 100)
        self.assertEqual(reader.read_i16(), 1)  # apparence épée courte
        ground_unit = reader.read_i32()
        self.assertGreater(ground_unit, 0)
        # Un sac mis à jour a été renvoyé (18).
        backpacks = [w for a, w in self.server.sent if a == self.alice.address and w.packet_id == 18]
        self.assertTrue(backpacks)

    async def test_pickup_adds_to_bag_and_broadcasts_removal(self):
        # Alice drop, puis Bob ramasse.
        sword = self.alice.inventory.backpack[0]
        sword_unit = sword.unit_id
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(
                PacketID.DROP_ITEM,
                lambda w: (w.write_u16(101), w.write_u16(100), w.write_u32(sword_unit), w.write_u32(1)),
            ),
        )
        ground_unit = next(iter(world._ground_items))
        self.bob.inventory = starting_inventory()
        before = len(self.bob.inventory.backpack)
        await self.dispatcher.dispatch(
            self.server,
            self.bob,
            fake_packet(
                PacketID.PICKUP_UNIT,
                lambda w: (w.write_u16(101), w.write_u16(100), w.write_u32(ground_unit)),
            ),
        )
        # L'épée est dans le sac de Bob (empilée ou nouvelle entrée).
        self.assertTrue(
            any(i.template_id == 1 for i in self.bob.inventory.backpack)
        )
        # L'objet n'est plus au sol.
        self.assertEqual(world._ground_items, {})
        # La disparition (11) a été diffusée aux joueurs en vue.
        removed = [w for a, w in self.server.sent if w.packet_id == 11]
        self.assertEqual(len(removed), 2)  # Alice et Bob

    async def test_pickup_unknown_sends_action_failure(self):
        await self.dispatcher.dispatch(
            self.server,
            self.bob,
            fake_packet(
                PacketID.PICKUP_UNIT,
                lambda w: (w.write_u16(100), w.write_u16(100), w.write_u32(9999)),
            ),
        )
        failures = [w for a, w in self.server.sent if a == self.bob.address and w.packet_id == 70]
        self.assertEqual(len(failures), 1)
        reader = PacketReader(failures[0].body)
        self.assertEqual(reader.read_u32(), 9999)
        self.assertEqual(reader.read_i16(), 11)  # opcode pickup corrélé


class NpcTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 100, 100)

    async def test_npc_included_in_inview_units(self):
        npc = world.register_npc("Garde", appearance=203, x=101, y=100)
        # Alice entre en jeu : la vue (16) doit contenir le PNJ.
        self.alice.state = SessionState.PRE_INGAME
        self.server.sent.clear()
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(PacketID.FROM_PREINGAME_TO_INGAME),
        )
        inview = [w for a, w in self.server.sent if a == self.alice.address and w.packet_id == 16]
        self.assertEqual(len(inview), 1)
        reader = PacketReader(inview[0].body)
        count = reader.read_i16()
        self.assertEqual(count, 1)
        self.assertEqual(reader.read_i16(), 101)      # x du PNJ
        self.assertEqual(reader.read_i16(), 100)      # y
        self.assertEqual(reader.read_i16(), 203)      # apparence
        self.assertEqual(reader.read_i32(), npc.unit_id)

    async def test_npc_name_sent_on_request(self):
        npc = world.register_npc("Marchand Ambroise", appearance=187, x=102, y=100)
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(35, lambda w: w.write_u32(npc.unit_id)),
        )
        names = [w for a, w in self.server.sent if a == self.alice.address and w.packet_id == 35]
        self.assertEqual(len(names), 1)
        reader = PacketReader(names[0].body)
        self.assertEqual(reader.read_u32(), npc.unit_id)
        self.assertEqual(reader.read_text(), "Marchand Ambroise")


if __name__ == "__main__":
    unittest.main()
