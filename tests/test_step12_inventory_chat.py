"""Étape 28 (PLAN.md 1.1 + 1.3) : inventaire réel et chat local."""

import tempfile
import unittest

from t4c.characters import Character, CharacterStore
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.items import starting_inventory
from t4c.persistence import Persistence
from t4c.protocol import PacketID
from t4c.session import ClientSession, SessionState
from t4c.config import ServerConfig


class FakeServer:
    def __init__(self, persistence=None):
        self.config = ServerConfig()
        self.characters = CharacterStore()
        self.sessions = {}
        self.persistence = persistence
        self.sent = []

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer))


def make_session(server, name, unit_id, x=100, y=100):
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


class InventoryTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.db = tempfile.mktemp(suffix=".sqlite3")
        self.server = FakeServer(Persistence(self.db))
        self.dispatcher = PacketDispatcher()
        self.session = make_session(self.server, "Fabien", 1)

    async def test_backpack_shows_starting_inventory(self):
        self.session.inventory = starting_inventory()
        await self.dispatcher.dispatch(
            self.server, self.session, fake_packet(PacketID.VIEW_BACKPACK)
        )
        writer = [w for _, w in self.server.sent if w.packet_id == 18][-1]
        reader = PacketReader(writer.body)
        self.assertEqual(reader.read_u8(), 0)      # headerFlag
        self.assertEqual(reader.read_u32(), 0)     # headerValue
        count = reader.read_i16()
        self.assertEqual(count, 2)                  # épée + potions
        first_template = reader.read_i16()
        first_unit = reader.read_i32()
        self.assertEqual(first_template, 22)        # apparence épée
        self.assertEqual(reader.read_i16(), 0)     # baseField
        self.assertEqual(reader.read_i32(), 1)     # quantity
        self.assertEqual(reader.read_u32(), 0)     # uniqueData

    async def test_equip_moves_item_and_returns_equipment(self):
        self.session.inventory = starting_inventory()
        sword_unit = self.session.inventory.backpack[0].unit_id
        await self.dispatcher.dispatch(
            self.server,
            self.session,
            fake_packet(PacketID.EQUIP_ITEM, lambda w: w.write_u32(sword_unit)),
        )
        # L'épée est passée du sac au slot 0.
        self.assertIn(0, self.session.inventory.equipment)
        self.assertEqual(self.session.inventory.equipment[0].template_id, 1)
        # Une réponse 19 a été renvoyée avec le slot 0 occupé.
        writer = [w for _, w in self.server.sent if w.packet_id == 19][-1]
        reader = PacketReader(writer.body)
        self.assertEqual(reader.read_u8(), 0)  # rangedAttack
        # Slots dans l'ordre 0,2,3,4,6,7,8,9,11,12,14,15,1 : le premier est le 0.
        unit_id = reader.read_u32()
        self.assertEqual(unit_id, sword_unit)
        # Persistance : rechargement depuis la base.
        reloaded = self.server.persistence.inventory("Fabien")
        self.assertIn(0, reloaded.equipment)

    async def test_unequip_returns_item_to_backpack(self):
        self.session.inventory = starting_inventory()
        inv = self.session.inventory
        inv.equip(inv.backpack[0].unit_id)
        await self.dispatcher.dispatch(
            self.server,
            self.session,
            fake_packet(PacketID.UNEQUIP_SLOT, lambda w: w.write_u8(0)),
        )
        self.assertNotIn(0, self.session.inventory.equipment)
        self.assertEqual(len(self.session.inventory.backpack), 2)
        reloaded = self.server.persistence.inventory("Fabien")
        self.assertEqual(len(reloaded.backpack), 2)
        self.assertEqual(reloaded.equipment, {})

    async def test_potion_use_consumes_quantity(self):
        self.session.inventory = starting_inventory()
        potions = next(
            i for i in self.session.inventory.backpack if i.template_id == 2
        )
        await self.dispatcher.dispatch(
            self.server,
            self.session,
            fake_packet(
                PacketID.USE_ITEM,
                lambda w: (w.write_u16(0), w.write_u16(0), w.write_u32(potions.unit_id)),
            ),
        )
        self.assertEqual(potions.quantity, 2)
        reloaded = self.server.persistence.inventory("Fabien")
        potion_rows = [i for i in reloaded.backpack if i.template_id == 2]
        self.assertEqual(potion_rows[0].quantity, 2)


class ChatTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1)
        self.bob = make_session(self.server, "Bob", 2, x=105)

    async def test_local_talk_broadcasts_unit_talk_to_in_view(self):
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(
                PacketID.LOCAL_TALK_REQUEST,
                lambda w: (
                    w.write_u16(100),
                    w.write_u16(100),
                    w.write_u32(0),
                    w.write_u8(0),
                    w.write_u32(0),
                    w.write_text("Bonjour !"),
                ),
            ),
        )
        for session, expected in ((self.alice, True), (self.bob, True)):
            talks = [
                w for addr, w in self.server.sent
                if addr == session.address and w.packet_id == 27
            ]
            self.assertEqual(len(talks), 1, session.active_character)
            reader = PacketReader(talks[0].body)
            self.assertEqual(reader.read_i32(), 1)   # speakerUnitId Alice
            self.assertEqual(reader.read_u8(), 0)    # direction
            self.assertEqual(reader.read_u32(), 0)    # style
            self.assertEqual(reader.read_u8(), 1)     # speakerFlag
            self.assertEqual(reader.read_text(), "Bonjour !")
            self.assertEqual(reader.read_text(), "Alice")

    async def test_talk_not_sent_to_far_player(self):
        self.bob.pos_x = 200  # hors vue
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(
                PacketID.LOCAL_TALK_REQUEST,
                lambda w: (
                    w.write_u16(100), w.write_u16(100), w.write_u32(0),
                    w.write_u8(0), w.write_u32(0), w.write_text("salut"),
                ),
            ),
        )
        bob_talks = [
            w for addr, w in self.server.sent
            if addr == self.bob.address and w.packet_id == 27
        ]
        self.assertEqual(bob_talks, [])
        alice_talks = [
            w for addr, w in self.server.sent
            if addr == self.alice.address and w.packet_id == 27
        ]
        self.assertEqual(len(alice_talks), 1)


if __name__ == "__main__":
    unittest.main()
