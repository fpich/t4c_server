"""Étape 15 (PLAN 2.4) : synchronisation dynamique du rayon de vue au mouvement."""

import unittest

from t4c.characters import Character, CharacterStore
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.protocol import PacketID
from t4c.session import ClientSession, SessionState
from t4c.config import ServerConfig
from t4c import world


class FakeServer:
    def __init__(self):
        self.config = ServerConfig()
        self.config.max_moves_per_second = 1000  # les tests font des bursts
        self.characters = CharacterStore()
        self.sessions = {}
        self.persistence = None
        self.next_unit_id = 1
        self.reserved_names = set()
        from t4c.maps import WorldMap
        self.world_map = WorldMap()
        self.sent = []

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer))


def fake_packet(packet_id, body_writer=None):
    writer = PacketWriter(packet_id)
    if body_writer:
        body_writer(writer)
    return decode_datagram(writer.to_datagram())


def make_session(server, name, unit_id, x, y):
    session = ClientSession(("127.0.0.1", 2000 + unit_id), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    server.characters.create("acc", Character(name=name))
    server.sessions[session.address] = session
    return session


def move(server, dispatcher, session, direction_id, times=1):
    async def run():
        for _ in range(times):
            await dispatcher.dispatch(
                server, session, fake_packet(direction_id)
            )
    return run


class ViewSyncTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        # Alice en (100,100), Bob en (110,100) : dans le rayon de 20 tuiles.
        self.alice = make_session(self.server, "Alice", 1, 100, 100)
        self.bob = make_session(self.server, "Bob", 2, 110, 100)

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_leaving_view_range_sends_removed_to_other(self):
        # Alice s'éloigne de 21 tuiles vers l'ouest : Bob ne la voit plus.
        await move(self.server, self.dispatcher, self.alice, int(PacketID.MOVE_WEST), 21)()
        self.assertEqual(self.alice.pos_x, 79)
        removed_bob = self.packets_to(self.bob.address, 11)
        self.assertTrue(removed_bob)
        reader = PacketReader(removed_bob[-1].body)
        reader.read_u8()
        self.assertEqual(reader.read_i32(), self.alice.unit_id)

    async def test_entering_view_range_sends_popup_to_other(self):
        # Alice part à 30 tuiles (hors vue), puis revient : Bob doit recevoir 0x2714.
        await move(self.server, self.dispatcher, self.alice, int(PacketID.MOVE_WEST), 30)()
        self.server.sent.clear()
        await move(self.server, self.dispatcher, self.alice, int(PacketID.MOVE_EAST), 30)()
        popups_bob = self.packets_to(self.bob.address, 0x2714)
        self.assertTrue(popups_bob)
        reader = PacketReader(popups_bob[-1].body)
        # Le popup est émis dès l'entrée dans le rayon (x=90 depuis Bob à 110).
        self.assertEqual(reader.read_i16(), 90)   # x d'Alice à l'entrée en vue
        self.assertEqual(reader.read_i16(), 100)  # y
        reader.read_i16()                          # apparence
        self.assertEqual(reader.read_i32(), self.alice.unit_id)
        # Le puppet 68 accompagne le popup pour un joueur.
        self.assertTrue(self.packets_to(self.bob.address, 68))

    async def test_staying_in_view_sends_moved_not_popup(self):
        self.server.sent.clear()
        await move(self.server, self.dispatcher, self.alice, int(PacketID.MOVE_EAST), 1)()
        # Bob voit Alice avant et après : paquet 1 (moved), pas de nouveau popup.
        self.assertTrue(self.packets_to(self.bob.address, 1))
        self.assertFalse(self.packets_to(self.bob.address, 0x2714))
        self.assertFalse(self.packets_to(self.bob.address, 11))

    async def test_mover_receives_popup_and_removed_for_npcs(self):
        # Un PNJ à 30 tuiles à l'ouest d'Alice : hors vue au départ.
        npc = world.register_npc("Garde lointain", appearance=203, x=70, y=100)
        self.server.sent.clear()
        # Alice va à l'ouest : le PNJ entre dans sa vue -> popup 0x2714 reçu par Alice.
        await move(self.server, self.dispatcher, self.alice, int(PacketID.MOVE_WEST), 15)()
        popups_alice = self.packets_to(self.alice.address, 0x2714)
        self.assertTrue(popups_alice)
        reader = PacketReader(popups_alice[-1].body)
        self.assertEqual(reader.read_i16(), 70)   # x du PNJ
        self.assertEqual(reader.read_i16(), 100)  # y du PNJ
        reader.read_i16()                          # apparence
        self.assertEqual(reader.read_i32(), npc.unit_id)
        # Alice repart à l'est : le PNJ sort de sa vue -> paquet 11 reçu par Alice.
        self.server.sent.clear()
        await move(self.server, self.dispatcher, self.alice, int(PacketID.MOVE_EAST), 15)()
        removed_alice = self.packets_to(self.alice.address, 11)
        self.assertTrue(removed_alice)
        reader = PacketReader(removed_alice[-1].body)
        reader.read_u8()
        self.assertEqual(reader.read_i32(), npc.unit_id)

    async def test_other_world_players_unaffected(self):
        # Bob dans un autre monde : aucun paquet pour lui quand Alice bouge.
        self.bob.pos_world = 1
        self.server.sent.clear()
        await move(self.server, self.dispatcher, self.alice, int(PacketID.MOVE_WEST), 25)()
        self.assertFalse(self.packets_to(self.bob.address, 11))
        self.assertFalse(self.packets_to(self.bob.address, 0x2714))


if __name__ == "__main__":
    unittest.main()
