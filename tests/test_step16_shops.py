"""Étape 16 (PLAN 3.1) : marchands — ouverture shop, achat (41), vente (56)."""

import unittest

from t4c.characters import Character, CharacterStore
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
        self.reserved_names = set()
        self.sent = []

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer))


def fake_packet(packet_id, body_writer=None):
    writer = PacketWriter(packet_id)
    if body_writer:
        body_writer(writer)
    return decode_datagram(writer.to_datagram())


def make_session(server, name="Alice", unit_id=1, x=100, y=100):
    session = ClientSession(("127.0.0.1", 3000 + unit_id), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    character = Character(name=name)
    character.gold = 100
    server.characters.create("acc", character)
    session.inventory = starting_inventory()
    server.sessions[session.address] = session
    return session


def parse_buy_list(body):
    r = PacketReader(body)
    shop_id = r.read_u32()
    count = r.read_u16()
    entries = []
    for _ in range(count):
        tid = r.read_u16()
        appearance = r.read_u16()
        price = r.read_u32()
        can_equip = r.read_u8()
        name = r.read_text()
        equip_msg = r.read_text()
        entries.append((tid, appearance, price, can_equip, name, equip_msg))
    return shop_id, entries


def parse_sell_list(body):
    r = PacketReader(body)
    shop_id = r.read_u32()
    count = r.read_u16()
    entries = []
    for _ in range(count):
        unit = r.read_u32()
        appearance = r.read_u16()
        price = r.read_u32()
        qty = r.read_u32()
        name = r.read_text()
        entries.append((unit, appearance, price, qty, name))
    return shop_id, entries


class ShopTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server)
        # Marchand à 2 tuiles d'Alice, avec du stock.
        self.shop_npc = world.register_npc(
            "Marchand Ambroise", appearance=10011, x=102, y=100,
            shop={1: 5, 2: 10, 3: 3, 4: 3},
        )

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_get_unit_on_shop_npc_opens_buy_and_sell_lists(self):
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(11, lambda w: (w.write_u16(100), w.write_u16(100), w.write_u32(self.shop_npc.unit_id))),
        )
        buy_lists = self.packets_to(self.alice.address, 41)
        sell_lists = self.packets_to(self.alice.address, 56)
        self.assertEqual(len(buy_lists), 1)
        self.assertEqual(len(sell_lists), 1)
        shop_id, entries = parse_buy_list(buy_lists[0].body)
        self.assertEqual(shop_id, self.shop_npc.unit_id)
        self.assertEqual(len(entries), 4)
        # épée (template 1) : prix 50, équipable
        sword = next(e for e in entries if e[0] == 1)
        self.assertEqual(sword[2], 50)
        self.assertEqual(sword[3], 1)
        self.assertEqual(sword[4], "Épée courte")
        # la liste de vente contient les objets du sac d'Alice (épée + 3 potions = 2 entrées)
        shop_id56, sell_entries = parse_sell_list(sell_lists[0].body)
        self.assertEqual(shop_id56, self.shop_npc.unit_id)
        self.assertEqual(len(sell_entries), 2)
        # prix de rachat = moitié (potion 10 -> 5)
        potion = next(e for e in sell_entries if e[4] == "Potion de soin")
        self.assertEqual(potion[2], 5)
        self.assertEqual(potion[3], 3)

    async def test_buy_debits_gold_adds_to_bag_and_refreshes(self):
        character = self.server.characters.characters("acc")[0]
        potion_unit = next(i for i in self.alice.inventory.backpack if i.template_id == 2)
        potions_before = potion_unit.quantity
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(
                41,
                lambda w: (
                    w.write_u16(100), w.write_u16(100), w.write_u32(self.shop_npc.unit_id),
                    w.write_u16(1),          # count
                    w.write_u16(2), w.write_u16(2),  # itemId=2 (potion), qty=2
                ),
            ),
        )
        # or débité : 100 - (10 * 2) = 80
        self.assertEqual(character.gold, 80)
        # 2 potions ajoutées (empilées)
        self.assertEqual(potion_unit.quantity, potions_before + 2)
        # stock du marchand décrémenté : 10 -> 8
        self.assertEqual(self.shop_npc.shop[2], 8)
        # réponses : sac (18), or (53), stock rafraîchi (41)
        self.assertTrue(self.packets_to(self.alice.address, 18))
        gold_updates = self.packets_to(self.alice.address, 53)
        self.assertEqual(len(gold_updates), 1)
        self.assertEqual(PacketReader(gold_updates[0].body).read_u32(), 80)
        buy_lists = self.packets_to(self.alice.address, 41)
        self.assertEqual(len(buy_lists), 1)
        _, entries = parse_buy_list(buy_lists[0].body)
        potion_entry = next(e for e in entries if e[0] == 2)
        # le stock affiché ne contient pas la quantité, mais l'article est toujours vendu
        self.assertIn(2, [e[0] for e in entries])

    async def test_buy_without_enough_gold_fails_with_action_failure(self):
        character = self.server.characters.characters("acc")[0]
        character.gold = 5  # épée = 50
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(
                41,
                lambda w: (
                    w.write_u16(100), w.write_u16(100), w.write_u32(self.shop_npc.unit_id),
                    w.write_u16(1),
                    w.write_u16(1), w.write_u16(1),  # épée x1
                ),
            ),
        )
        self.assertEqual(character.gold, 5)  # inchangé
        failures = self.packets_to(self.alice.address, 70)
        self.assertEqual(len(failures), 1)
        r = PacketReader(failures[0].body)
        self.assertEqual(r.read_u32(), self.shop_npc.unit_id)
        self.assertEqual(r.read_i16(), 41)
        self.assertEqual(self.shop_npc.shop[1], 5)  # stock inchangé

    async def test_sell_credits_gold_removes_from_bag(self):
        character = self.server.characters.characters("acc")[0]
        sword = next(i for i in self.alice.inventory.backpack if i.template_id == 1)
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(
                56,
                lambda w: (
                    w.write_u16(100), w.write_u16(100), w.write_u32(self.shop_npc.unit_id),
                    w.write_u32(sword.unit_id), w.write_u32(1),  # paire jusqu'à EOF
                ),
            ),
        )
        # épée retirée du sac
        self.assertFalse(any(i.unit_id == sword.unit_id for i in self.alice.inventory.backpack))
        # or crédité : 100 + max(1, 50//2)=25 -> 125
        self.assertEqual(character.gold, 125)
        # l'épée rejoint le stock du marchand : 5 -> 6
        self.assertEqual(self.shop_npc.shop[1], 6)
        # réponses : 18, 53, 56 rafraîchi
        self.assertTrue(self.packets_to(self.alice.address, 18))
        gold_updates = self.packets_to(self.alice.address, 53)
        self.assertEqual(PacketReader(gold_updates[0].body).read_u32(), 125)
        sell_lists = self.packets_to(self.alice.address, 56)
        self.assertEqual(len(sell_lists), 1)
        _, sell_entries = parse_sell_list(sell_lists[0].body)
        self.assertFalse(any(e[0] == sword.unit_id for e in sell_entries))

    async def test_sell_unknown_npc_sends_action_failure_56(self):
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(
                56,
                lambda w: (
                    w.write_u16(100), w.write_u16(100), w.write_u32(999999),
                    w.write_u32(1), w.write_u32(1),
                ),
            ),
        )
        failures = self.packets_to(self.alice.address, 70)
        self.assertEqual(len(failures), 1)
        r = PacketReader(failures[0].body)
        self.assertEqual(r.read_u32(), 999999)
        self.assertEqual(r.read_i16(), 56)

    async def test_shop_too_far_away_is_refused(self):
        self.shop_npc.x = 200  # hors du rayon de 20 tuiles
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            fake_packet(11, lambda w: (w.write_u16(100), w.write_u16(100), w.write_u32(self.shop_npc.unit_id))),
        )
        self.assertFalse(self.packets_to(self.alice.address, 41))
        self.assertFalse(self.packets_to(self.alice.address, 56))


if __name__ == "__main__":
    unittest.main()
