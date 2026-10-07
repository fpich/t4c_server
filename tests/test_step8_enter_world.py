"""Étape 8 : entrée en monde — paquets 13 (PUT_PLAYER_IN_GAME) et 46."""
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


def menu_session():
    session = ClientSession(("127.0.0.1", 12345), state=SessionState.CHARACTER_MENU)
    session.account = "test"
    return session


def put_in_game_request(name="Fabien", seed=11):
    writer = PacketWriter(PacketID.PUT_PLAYER_IN_GAME)
    writer.write_pascal_u8_text(name)
    return decode_datagram(writer.to_datagram(seed=seed))


class Step8PutPlayerInGameTests(unittest.IsolatedAsyncioTestCase):
    async def test_packet_13_loads_character_and_replies_full_stats(self):
        server = CaptureServer(ServerConfig())
        session = menu_session()
        server.characters.create("test", Character(name="Fabien"))
        handled = await server.dispatcher.dispatch(server, session, put_in_game_request())
        self.assertTrue(handled)
        self.assertEqual(session.put_in_game_requests, 1)
        self.assertEqual(session.active_character, "Fabien")
        self.assertEqual(session.unit_id, 1)
        self.assertIs(session.state, SessionState.PRE_INGAME)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(reply.packet_id, PacketID.PUT_PLAYER_IN_GAME)
        reader = PacketReader(reply.body)
        self.assertEqual(reader.read_u8(), 0)  # chargé
        unit_id = reader.read_i32()
        self.assertGreater(unit_id, 0)
        # Position de départ officielle (Character.cpp:117) : LightHaven.
        self.assertEqual(reader.read_i16(), 2944)  # X
        self.assertEqual(reader.read_i16(), 1059)  # Y
        self.assertEqual(reader.read_i16(), 0)     # monde
        self.assertEqual(reader.read_i32(), 50)  # HP
        self.assertEqual(reader.read_i32(), 50)  # HP max
        self.assertEqual(reader.read_i16(), 30)  # mana
        self.assertEqual(reader.read_i16(), 30)  # mana max
        for _ in range(4):  # XP actuelle + prochain niveau (hi/lo)
            self.assertEqual(reader.read_i32(), 0)
        self.assertEqual(reader.read_i16(), 10)  # STR
        self.assertEqual(reader.read_i16(), 10)  # END
        self.assertEqual(reader.read_i16(), 10)  # AGI
        self.assertEqual(reader.read_i16(), 0)  # wil
        self.assertEqual(reader.read_i16(), 10)  # WIS
        self.assertEqual(reader.read_i16(), 10)  # INT
        self.assertEqual(reader.read_i16(), 0)  # luck
        # heure : 6 champs + année
        reader.read_i8(); reader.read_i8(); reader.read_i8()
        reader.read_i8(); reader.read_i8(); reader.read_i8()
        self.assertGreater(reader.read_i16(), 2000)  # année
        self.assertEqual(reader.read_i32(), 0)  # or
        self.assertEqual(reader.read_i16(), 1)  # niveau
        reader.read_i32(); reader.read_i32()  # XP niveau précédent
        self.assertEqual(reader.remaining, 0)

    async def test_packet_13_rejects_unknown_character(self):
        server = CaptureServer(ServerConfig())
        session = menu_session()
        handled = await server.dispatcher.dispatch(server, session, put_in_game_request())
        self.assertTrue(handled)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u8(), 1)
        self.assertIsNone(session.active_character)
        self.assertIs(session.state, SessionState.CHARACTER_MENU)

    async def test_packet_46_confirms_entry_and_sets_in_world(self):
        server = CaptureServer(ServerConfig())
        session = menu_session()
        server.characters.create("test", Character(name="Fabien"))
        await server.dispatcher.dispatch(server, session, put_in_game_request())
        request = PacketWriter(PacketID.FROM_PREINGAME_TO_INGAME)
        decoded = decode_datagram(request.to_datagram(seed=12))
        handled = await server.dispatcher.dispatch(server, session, decoded)
        self.assertTrue(handled)
        self.assertIs(session.state, SessionState.IN_WORLD)
        self.assertEqual(session.enter_world_requests, 1)
        # L'original envoie PacketStatus (43) avant la confirmation 46.
        status = decode_reply(server.sent[1][1])
        self.assertEqual(status.packet_id, PacketID.GET_STATUS)
        reply = decode_reply(server.sent[2][1])
        self.assertEqual(reply.packet_id, PacketID.FROM_PREINGAME_TO_INGAME)
        self.assertEqual(PacketReader(reply.body).read_u8(), 0)

    async def test_packet_46_when_already_in_world(self):
        server = CaptureServer(ServerConfig())
        session = ClientSession(("127.0.0.1", 12345), state=SessionState.IN_WORLD)
        request = PacketWriter(PacketID.FROM_PREINGAME_TO_INGAME)
        decoded = decode_datagram(request.to_datagram(seed=13))
        handled = await server.dispatcher.dispatch(server, session, decoded)
        self.assertTrue(handled)
        reply = decode_reply(server.sent[0][1])
        self.assertEqual(PacketReader(reply.body).read_u8(), 1)


if __name__ == "__main__":
    unittest.main()
