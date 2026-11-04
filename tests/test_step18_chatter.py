"""Étape 18 (PLAN 4.1) : canaux de chat — 48/49/50/51/52/53/75."""

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


def make_session(server, name, unit_id, port):
    session = ClientSession(("127.0.0.1", port), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    server.characters.create("acc", Character(name=name))
    server.sessions[session.address] = session
    return session


def parse_channel_list(body):
    r = PacketReader(body)
    count = r.read_u16()
    channels = []
    for _ in range(count):
        length = r.read_u16()
        name = r.read_bytes(length).decode("cp1252")
        listen = r.read_u8()
        channels.append((name, listen))
    return channels


def parse_user_list(body):
    r = PacketReader(body)
    channel = r.read_text()
    count = r.read_u16()
    users = []
    for _ in range(count):
        name = r.read_text()
        aux = r.read_text()
        listen = r.read_u8()
        users.append((name, aux, listen))
    return channel, users


class ChatterTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._channels.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 4001)
        self.bob = make_session(self.server, "Bob", 2, 4002)
        world.create_channel("General")

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_enter_channel_48_joins_and_lists_channels(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(48, lambda w: (w.write_text("General"), w.write_text(""))),
        )
        # S2C 48 (corps vide = succès) + S2C 75 (liste des canaux)
        enter_replies = self.packets_to(self.alice.address, 48)
        self.assertEqual(len(enter_replies), 1)
        self.assertEqual(enter_replies[0].body, b"")
        lists = self.packets_to(self.alice.address, 75)
        self.assertEqual(len(lists), 1)
        channels = parse_channel_list(lists[0].body)
        self.assertIn(("General", 1), channels)

    async def test_enter_wrong_password_refused(self):
        world.create_channel("Prive", password="secret")
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(48, lambda w: (w.write_text("Prive"), w.write_text("faux"))),
        )
        reply = self.packets_to(self.alice.address, 48)[0]
        self.assertNotEqual(reply.body, b"")  # CString d'erreur
        channel = world.find_channel("Prive")
        self.assertNotIn(self.alice.address, channel.members)

    async def test_message_49_reaches_channel_members_only(self):
        # Alice et Bob rejoignent General ; Carol reste dehors.
        carol = make_session(self.server, "Carol", 3, 4003)
        for s in (self.alice, self.bob):
            await self.dispatcher.dispatch(
                self.server, s,
                fake_packet(48, lambda w: (w.write_text("General"), w.write_text(""))),
            )
        self.server.sent.clear()
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(49, lambda w: (w.write_text("General"), w.write_text("salut le canal"))),
        )
        for s in (self.alice, self.bob):
            msgs = self.packets_to(s.address, 49)
            self.assertEqual(len(msgs), 1)
            r = PacketReader(msgs[0].body)
            self.assertEqual(r.read_text(), "General")
            self.assertEqual(r.read_text(), "Alice")
            self.assertEqual(r.read_text(), "salut le canal")
        # Carol (hors canal) n'a rien reçu.
        self.assertFalse(self.packets_to(carol.address, 49))

    async def test_user_list_50(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(48, lambda w: (w.write_text("General"), w.write_text(""))),
        )
        await self.dispatcher.dispatch(
            self.server, self.bob,
            fake_packet(48, lambda w: (w.write_text("General"), w.write_text(""))),
        )
        self.server.sent.clear()
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(50, lambda w: w.write_text("General")),
        )
        users = self.packets_to(self.alice.address, 50)
        self.assertEqual(len(users), 1)
        channel, members = parse_user_list(users[0].body)
        self.assertEqual(channel, "General")
        names = sorted(u[0] for u in members)
        self.assertEqual(names, ["Alice", "Bob"])
        self.assertTrue(all(u[2] == 1 for u in members))

    async def test_toggle_listening_53_stops_delivery(self):
        for s in (self.alice, self.bob):
            await self.dispatcher.dispatch(
                self.server, s,
                fake_packet(48, lambda w: (w.write_text("General"), w.write_text(""))),
            )
        # Bob cesse d'écouter.
        await self.dispatcher.dispatch(
            self.server, self.bob,
            fake_packet(53, lambda w: (w.write_text("General"), w.write_u8(0))),
        )
        self.server.sent.clear()
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(49, lambda w: (w.write_text("General"), w.write_text("ping"))),
        )
        self.assertEqual(len(self.packets_to(self.alice.address, 49)), 1)
        self.assertFalse(self.packets_to(self.bob.address, 49))

    async def test_leave_channel_51(self):
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(48, lambda w: (w.write_text("General"), w.write_text(""))),
        )
        await self.dispatcher.dispatch(
            self.server, self.alice,
            fake_packet(51, lambda w: w.write_text("General")),
        )
        channel = world.find_channel("General")
        self.assertNotIn(self.alice.address, channel.members)

    async def test_public_channel_list_52(self):
        world.create_channel("Trade")
        await self.dispatcher.dispatch(
            self.server, self.alice, fake_packet(52)
        )
        lists = self.packets_to(self.alice.address, 75)
        self.assertEqual(len(lists), 1)
        names = sorted(name for name, _ in parse_channel_list(lists[0].body))
        self.assertEqual(names, ["General", "Trade"])


if __name__ == "__main__":
    unittest.main()
