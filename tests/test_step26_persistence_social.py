"""Étapes 26+29 : persistance étendue (guildes, messages offline, présence) + comptes réels."""

import unittest

from t4c.characters import Character, CharacterStore
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.maps import WorldMap
from t4c.persistence import Persistence
from t4c.protocol import PacketID
from t4c.session import ClientSession, SessionState
from t4c.config import ServerConfig
from t4c import world


class FakeServer:
    def __init__(self, persistence=None):
        self.config = ServerConfig()
        self.characters = CharacterStore()
        self.sessions = {}
        self.persistence = persistence
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


def make_session(server, name="Alice", unit_id=1, port=9500):
    session = ClientSession(("127.0.0.1", port), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = 100
    session.pos_y = 100
    session.pos_world = 0
    server.characters.create("acc", Character(name=name))
    server.sessions[session.address] = session
    return session


def auth_packet(account, password):
    return fake_packet(
        14,
        lambda w: (
            w.write_pascal_u8_text(account),
            w.write_pascal_u8_text(password),
            w.write_i16(0),
            w.write_i16(0),
        ),
    )


class AuthTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.persistence = Persistence(":memory:")
        self.server = FakeServer(persistence=self.persistence)
        self.dispatcher = PacketDispatcher()
        self.session = ClientSession(("127.0.0.1", 9601))
        self.server.sessions[self.session.address] = self.session

    def tearDown(self):
        self.persistence.close()

    async def test_new_account_is_registered_with_hashed_password(self):
        await self.dispatcher.dispatch(self.server, self.session, auth_packet("nouveau", "secret"))
        reply = [w for a, w in self.server.sent if w.packet_id == 14][0]
        self.assertEqual(reply.body[0], 0)  # accepté
        self.assertTrue(self.persistence.account_exists("nouveau"))
        # Le mot de passe n'est pas stocké en clair.
        row = self.persistence._db.execute(
            "SELECT Password FROM T4Cusers WHERE Account='nouveau'"
        ).fetchone()
        self.assertNotEqual(row["Password"], "secret")
        self.assertTrue(self.persistence.check_password("nouveau", "secret"))
        self.assertFalse(self.persistence.check_password("nouveau", "faux"))

    async def test_existing_account_requires_correct_password(self):
        self.persistence.register_account("vieux", "pw123")
        # Bon mot de passe -> accepté
        await self.dispatcher.dispatch(self.server, self.session, auth_packet("vieux", "pw123"))
        reply = [w for a, w in self.server.sent if w.packet_id == 14][-1]
        self.assertEqual(reply.body[0], 0)
        # Mauvais -> refusé
        await self.dispatcher.dispatch(self.server, self.session, auth_packet("vieux", "non"))
        reply = [w for a, w in self.server.sent if w.packet_id == 14][-1]
        self.assertEqual(reply.body[0], 1)


class OfflineMessageTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.persistence = Persistence(":memory:")
        self.server = FakeServer(persistence=self.persistence)
        self.dispatcher = PacketDispatcher()
        world._ground_items.clear()
        world._npcs.clear()
        self.alice = make_session(self.server, "Alice", 1, 9701)
        # Bob existe sur un autre compte mais est hors ligne.
        self.server.characters.create("acc2", Character(name="Bob"))

    def tearDown(self):
        self.persistence.close()

    async def test_whisper_to_offline_player_is_stored(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(29, lambda w: (w.write_text("Bob"), w.write_text("salut plus tard"))),
        )
        msgs = self.persistence.pending_offline_messages("acc2")
        self.assertEqual(len(msgs), 1)
        self.assertEqual(msgs[0], ("Alice", "salut plus tard"))
        # Un message système confirme le dépôt.
        sys_msgs = [w for a, w in self.server.sent if a == self.alice.address and w.packet_id == 63]
        self.assertTrue(sys_msgs)
        self.assertIn(b"hors ligne", sys_msgs[-1].body)

    async def test_offline_messages_delivered_on_enter_world(self):
        self.persistence.save_offline_message("acc", "Bob", "coucou")
        self.persistence.save_offline_message("acc", "Eve", "re")
        # Alice entre en monde via 46.
        self.alice.state = SessionState.PRE_INGAME
        self.server.sent.clear()
        await self.dispatcher.dispatch(self.server, self.alice, fake_packet(46))
        sys_msgs = [w for a, w in self.server.sent if a == self.alice.address and w.packet_id == 63]
        bodies = b" ".join(w.body for w in sys_msgs)
        self.assertIn(b"coucou", bodies)
        self.assertIn(b"re", bodies)
        # Plus de messages en attente.
        self.assertEqual(self.persistence.pending_offline_messages("acc"), [])
        # Présence enregistrée.
        self.assertIn(("acc", "Alice"), self.persistence.online_accounts())


class GuildTests(unittest.TestCase):
    def setUp(self):
        self.persistence = Persistence(":memory:")

    def tearDown(self):
        self.persistence.close()

    def test_guild_crud(self):
        gid = self.persistence.create_guild("Les Ombres", "Alice")
        self.assertIsNotNone(gid)
        self.assertEqual(self.persistence.guild_of("Alice"), "Les Ombres")
        self.assertTrue(self.persistence.join_guild("Les Ombres", "Bob"))
        self.assertEqual(self.persistence.guild_of("Bob"), "Les Ombres")
        members = self.persistence.guild_members("Les Ombres")
        self.assertEqual(sorted(members), ["Alice", "Bob"])
        self.persistence.leave_guild("Bob")
        self.assertIsNone(self.persistence.guild_of("Bob"))


if __name__ == "__main__":
    unittest.main()
