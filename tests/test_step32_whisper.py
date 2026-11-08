"""Test du chuchotement (paquet 29 C2S).

Le chuchotement permet d'envoyer un message privé à un joueur spécifique.
Format confirmé par RE client @0x498E73, serveur @0x47F910 :
  CString targetName, CString text.
Réponse : S2C 27 (Unit::Talk) au destinataire et à l'émetteur.
"""

import asyncio
import unittest
from io import BytesIO

from t4c.codec import PacketReader, PacketWriter
from t4c.protocol import PacketID
from t4c.characters import Character, CharacterStore
from t4c.session import ClientSession, SessionState
from t4c.server import T4CServerProtocol
from t4c.handlers import PacketDispatcher


class FakeServer(T4CServerProtocol):
    """Serveur factice pour les tests de chuchotement."""

    def __init__(self):
        super().__init__()
        self.sent = []
        self.dispatcher = PacketDispatcher()

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, bytes(writer._body)))


class TestWhisper(unittest.IsolatedAsyncioTestCase):
    """Tests du chuchotement (paquet 29)."""

    async def asyncSetUp(self):
        self.server = FakeServer()
        self.server.characters = CharacterStore()

        # Créer deux joueurs en monde
        char1 = Character(name="Alice", level=5)
        char2 = Character(name="Bob", level=3)
        self.server.characters.create("alice", char1)
        self.server.characters.create("bob", char2)

        self.session_alice = ClientSession(address=("127.0.0.1", 11677))
        self.session_alice.state = SessionState.IN_WORLD
        self.session_alice.unit_id = 1
        self.session_alice.active_character = "Alice"
        self.server.sessions["alice"] = self.session_alice

        self.session_bob = ClientSession(address=("127.0.0.1", 11678))
        self.session_bob.state = SessionState.IN_WORLD
        self.session_bob.unit_id = 2
        self.session_bob.active_character = "Bob"
        self.server.sessions["bob"] = self.session_bob

    async def test_whisper_to_player(self):
        """Test : Alice chuchote à Bob."""
        # Construire le paquet 29
        writer = PacketWriter(PacketID.WHISPER)
        writer.write_text("Bob")
        writer.write_text("Salut Bob!")
        packet_body = bytes(writer._body)

        packet = type('Packet', (), {'body': packet_body, 'packet_id': PacketID.WHISPER})()

        # Envoyer le chuchotement via le dispatcher du serveur
        await self.server.dispatcher.dispatch(self.server, self.session_alice, packet)

        # Vérifier que des paquets ont été envoyés
        self.assertGreater(len(self.server.sent), 0)

        # Vérifier que le destinataire (Bob) a reçu le message
        bob_sent = [s for addr, s in self.server.sent if addr == ("127.0.0.1", 11678)]
        self.assertGreater(len(bob_sent), 0)

    async def test_whisper_to_unknown_player(self):
        """Test : Alice chuchote à un joueur inexistant."""
        # Construire le paquet 29
        writer = PacketWriter(PacketID.WHISPER)
        writer.write_text("Inconnu")
        writer.write_text("Salut!")
        packet_body = bytes(writer._body)

        packet = type('Packet', (), {'body': packet_body, 'packet_id': PacketID.WHISPER})()

        # Envoyer le chuchotement via le dispatcher du serveur
        await self.server.dispatcher.dispatch(self.server, self.session_alice, packet)

        # Vérifier que l'émetteur a reçu un message d'erreur
        alice_sent = [s for addr, s in self.server.sent if addr == ("127.0.0.1", 11677)]
        self.assertGreater(len(alice_sent), 0)

    async def test_whisper_case_insensitive(self):
        """Test : le nom du destinataire est insensible à la casse."""
        # Bob est enregistré avec "Bob", on cherche "BOB"
        writer = PacketWriter(PacketID.WHISPER)
        writer.write_text("BOB")
        writer.write_text("Message test")
        packet_body = bytes(writer._body)

        packet = type('Packet', (), {'body': packet_body, 'packet_id': PacketID.WHISPER})()

        await self.server.dispatcher.dispatch(self.server, self.session_alice, packet)

        # Bob doit avoir reçu le message
        bob_sent = [s for addr, s in self.server.sent if addr == ("127.0.0.1", 11678)]
        self.assertGreater(len(bob_sent), 0)


if __name__ == "__main__":
    unittest.main()
