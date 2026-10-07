"""Étape 7 : création de personnage (25) et liste réelle (26)."""
import unittest

from t4c.characters import Character
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.config import ServerConfig
from t4c.protocol import PacketID
from t4c.server import T4CServerProtocol
from t4c.session import ClientSession, SessionState
from t4c.transport import decode_transport


class CaptureServer(T4CServerProtocol):
    def __init__(self, config=None):
        super().__init__(config=config)
        self.sent = []

    def send_datagram(self, address, datagram, **kwargs):
        self.sent.append((address, datagram))


def decode_reply(datagram):
    return decode_datagram(decode_transport(datagram).payload)


def new_server():
    return CaptureServer(ServerConfig(max_characters_per_account=3))


def menu_session():
    session = ClientSession(("127.0.0.1", 12345), state=SessionState.CHARACTER_MENU)
    session.account = "test"
    return session


def create_request(answers=(1, 2, 3, 4, 5, 6), name="Fabien", seed=7):
    writer = PacketWriter(PacketID.CREATE_PLAYER)
    for answer in answers:
        writer.write_u8(answer)
    writer.write_pascal_u8_text(name)
    return decode_datagram(writer.to_datagram(seed=seed))


class Step7CreatePlayerTests(unittest.IsolatedAsyncioTestCase):
    async def test_create_player_success_returns_stats(self):
        server = new_server()
        session = menu_session()
        handled = await server.dispatcher.dispatch(server, session, create_request())
        self.assertTrue(handled)
        self.assertEqual(session.create_player_requests, 1)
        self.assertEqual(server.characters.name_exists("Fabien"), True)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(reply.packet_id, PacketID.CREATE_PLAYER)
        reader = PacketReader(reply.body)
        self.assertEqual(reader.read_u8(), 0)
        self.assertEqual(reader.read_i8(), 10)  # AGI
        self.assertEqual(reader.read_i8(), 10)  # END
        self.assertEqual(reader.read_i8(), 10)  # INT
        self.assertEqual(reader.read_i8(), 0)  # luck
        self.assertEqual(reader.read_i8(), 10)  # STR
        self.assertEqual(reader.read_i8(), 0)  # wil
        self.assertEqual(reader.read_i8(), 10)  # WIS
        self.assertEqual(reader.read_i32(), 50)  # max HP
        self.assertEqual(reader.read_i32(), 50)  # HP
        self.assertEqual(reader.read_i16(), 30)  # max mana
        self.assertEqual(reader.read_i16(), 30)  # mana
        self.assertEqual(reader.remaining, 0)

    async def test_create_player_rejects_invalid_name(self):
        server = new_server()
        session = menu_session()
        handled = await server.dispatcher.dispatch(
            server, session, create_request(name="123bad")
        )
        self.assertTrue(handled)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u8(), 2)

    async def test_create_player_rejects_duplicate(self):
        server = new_server()
        session = menu_session()
        server.characters.create("test", Character(name="Fabien"))
        handled = await server.dispatcher.dispatch(
            server, session, create_request(name="fabien")
        )
        self.assertTrue(handled)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u8(), 3)

    async def test_create_player_accepts_when_authenticated(self):
        # Trace réelle : le client envoie le 25 en état AUTHENTICATED
        # (le paquet 20 est automatique et silencieux côté client).
        server = new_server()
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.AUTHENTICATED)
        session.account = "test"
        handled = await server.dispatcher.dispatch(server, session, create_request())
        self.assertTrue(handled)
        self.assertEqual(session.create_player_requests, 1)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u8(), 0)

    async def test_create_player_rejects_without_account(self):
        server = new_server()
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.AUTHENTICATED)
        handled = await server.dispatcher.dispatch(server, session, create_request())
        self.assertTrue(handled)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u8(), 1)

    async def test_create_player_enforces_per_account_quota(self):
        server = new_server()
        session = menu_session()
        for i in range(3):
            server.characters.create("test", Character(name=f"Hero{i}"))
        handled = await server.dispatcher.dispatch(
            server, session, create_request(name="Fabien")
        )
        self.assertTrue(handled)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u8(), 4)

    async def test_character_list_returns_created_characters(self):
        server = new_server()
        session = menu_session()
        handled = await server.dispatcher.dispatch(server, session, create_request())
        self.assertTrue(handled)
        request = PacketWriter(PacketID.GET_PERSONAL_PC_LIST)
        decoded = decode_datagram(request.to_datagram(seed=8))
        await server.dispatcher.dispatch(server, session, decoded)
        self.assertEqual(len(server.sent), 3)
        reply = decode_reply(server.sent[2][1])
        self.assertEqual(reply.packet_id, PacketID.GET_PERSONAL_PC_LIST)
        reader = PacketReader(reply.body)
        self.assertEqual(reader.read_u8(), 1)
        name_len = reader.read_u8()
        self.assertEqual(reader.read_bytes(name_len), b"Fabien")
        self.assertEqual(reader.read_i16(), 10011)  # apparence __PLAYER_PUPPET
        self.assertEqual(reader.read_i16(), 1)  # level
        self.assertEqual(reader.remaining, 0)


if __name__ == "__main__":
    unittest.main()
