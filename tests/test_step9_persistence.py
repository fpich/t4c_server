"""Étape 9 : persistance SQLite (schéma T4C.mdb porté)."""
import tempfile
import unittest
from pathlib import Path

from t4c.characters import Character, START_POS
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.config import ServerConfig
from t4c.persistence import Persistence
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


def create_request(name="Fabien"):
    writer = PacketWriter(PacketID.CREATE_PLAYER)
    for b in (1, 2, 3, 4, 5, 6):
        writer.write_u8(b)
    writer.write_pascal_u8_text(name)
    return decode_datagram(writer.to_datagram(seed=21))


class Step9PersistenceTests(unittest.IsolatedAsyncioTestCase):
    def test_schema_and_crud(self):
        with tempfile.TemporaryDirectory() as tmp:
            db = Persistence(Path(tmp) / "t4c.sqlite3")
            uid = db.create_user("Test", "secret")
            self.assertIsNotNone(uid)
            self.assertEqual(db.user_id("test"), uid)  # insensible à la casse
            self.assertTrue(
                db.save_character("Test", Character(name="Fabien", level=3))
            )
            self.assertFalse(db.character_name_exists("other"))
            self.assertTrue(db.character_name_exists("fabien"))
            chars = db.characters("TEST")
            self.assertEqual(len(chars), 1)
            self.assertEqual(chars[0].name, "Fabien")
            self.assertEqual(chars[0].level, 3)
            db.save_position("Fabien", 12, -7, 2)
            self.assertEqual(db.position("fabien"), (12, -7, 2))
            db.close()

    async def test_character_creation_is_persisted(self):
        with tempfile.TemporaryDirectory() as tmp:
            cfg = ServerConfig(database_path=str(Path(tmp) / "t4c.sqlite3"))
            server = CaptureServer(cfg)
            session = menu_session()
            handled = await server.dispatcher.dispatch(server, session, create_request())
            self.assertTrue(handled)
            # un nouveau serveur sur la même base retrouve le personnage
            server2 = CaptureServer(
                ServerConfig(database_path=str(Path(tmp) / "t4c.sqlite3"))
            )
            characters = server2.characters.characters("test")
            self.assertEqual(len(characters), 1)
            self.assertEqual(characters[0].name, "Fabien")

    async def test_position_restored_on_load(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = str(Path(tmp) / "t4c.sqlite3")
            cfg = ServerConfig(database_path=path)
            server = CaptureServer(cfg)
            session = menu_session()
            await server.dispatcher.dispatch(server, session, create_request())
            # Position proche de LightHaven : les positions trop éloignées
            # sont recalées sur START_POS par le serveur (hors carte client).
            sx, sy, _ = START_POS
            server.persistence.save_position("Fabien", sx + 5, sy + 9, 1)
            # rechargement du personnage via paquet 13
            load = PacketWriter(PacketID.PUT_PLAYER_IN_GAME)
            load.write_pascal_u8_text("Fabien")
            session2 = menu_session()
            await server.dispatcher.dispatch(
                server, session2, decode_datagram(load.to_datagram(seed=22))
            )
            self.assertEqual(
                (session2.pos_x, session2.pos_y, session2.pos_world),
                (sx + 5, sy + 9, 1),
            )
            # sent[0] = réponse 25 (création), sent[1] = réponse 13,
            # sent[2] = puppet 68
            reply = decode_reply(server.sent[1][1])
            reader = PacketReader(reply.body)
            reader.read_u8()
            reader.read_i32()
            self.assertEqual(reader.read_i16(), 5)
            self.assertEqual(reader.read_i16(), 9)
            self.assertEqual(reader.read_i16(), 1)


if __name__ == "__main__":
    unittest.main()
