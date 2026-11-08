"""Tests des handlers C2S manquants (étape 36).

Couvre :
- C2S 24 (ATTACK_RANGE) : attaque à distance
- C2S 38 (RETURN_TO_MENU) : retour au menu
- Handlers stub pour les opcodes non décodés (10, 16, 17, 28, 31, 33, 34, 36,
  54, 58, 71, 72, 74, 77, 85, 86, 93)
"""

import unittest

from t4c.codec import PacketWriter
from t4c.protocol import PacketID
from t4c.characters import Character, CharacterStore
from t4c.session import ClientSession, SessionState
from t4c.server import T4CServerProtocol
from t4c.handlers import PacketDispatcher, UNKNOWN_C2S_OPCODES


class FakeServer(T4CServerProtocol):
    """Serveur factice pour les tests."""

    def __init__(self):
        super().__init__()
        self.sent = []
        self.dispatcher = PacketDispatcher()

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, bytes(writer._body)))


def make_packet(opcode: int, body: bytes = b"") -> object:
    """Crée un faux paquet décodé pour les tests."""
    return type("Packet", (), {"body": body, "packet_id": opcode})()


class TestReturnToMenu(unittest.IsolatedAsyncioTestCase):
    """Tests du paquet 38 (RETURN_TO_MENU)."""

    async def asyncSetUp(self):
        self.server = FakeServer()
        self.server.characters = CharacterStore()
        char = Character(name="Alice", level=5)
        self.server.characters.create("alice", char)

        self.session = ClientSession(address=("127.0.0.1", 11677))
        self.session.state = SessionState.IN_WORLD
        self.session.unit_id = 1
        self.session.active_character = "Alice"
        self.server.sessions["alice"] = self.session

    async def test_return_to_menu_changes_state(self):
        """Le paquet 38 passe la session de IN_WORLD à CHARACTER_MENU."""
        packet = make_packet(int(PacketID.RETURN_TO_MENU))
        await self.server.dispatcher.dispatch(self.server, self.session, packet)
        self.assertEqual(self.session.state, SessionState.CHARACTER_MENU)

    async def test_return_to_menu_not_in_world(self):
        """Le paquet 38 est ignoré si la session n'est pas IN_WORLD."""
        self.session.state = SessionState.AUTHENTICATED
        packet = make_packet(int(PacketID.RETURN_TO_MENU))
        await self.server.dispatcher.dispatch(self.server, self.session, packet)
        self.assertEqual(self.session.state, SessionState.AUTHENTICATED)


class TestAttackRange(unittest.IsolatedAsyncioTestCase):
    """Tests du paquet 24 (ATTACK_RANGE)."""

    async def asyncSetUp(self):
        self.server = FakeServer()
        self.server.characters = CharacterStore()
        char = Character(name="Alice", level=5)
        self.server.characters.create("alice", char)

        self.session = ClientSession(address=("127.0.0.1", 11677))
        self.session.state = SessionState.IN_WORLD
        self.session.unit_id = 1
        self.session.active_character = "Alice"
        self.server.sessions["alice"] = self.session

    async def test_attack_range_malformed(self):
        """Paquet 24 malformé : aucun crash, aucun envoi."""
        packet = make_packet(int(PacketID.ATTACK_RANGE), b"\x00\x01")
        await self.server.dispatcher.dispatch(self.server, self.session, packet)
        # Pas de paquet envoyé pour un paquet malformé
        self.assertEqual(len(self.server.sent), 0)

    async def test_attack_range_not_in_world(self):
        """Le paquet 24 est ignoré si la session n'est pas IN_WORLD."""
        self.session.state = SessionState.AUTHENTICATED
        writer = PacketWriter(int(PacketID.ATTACK_RANGE))
        writer.write_u16(0).write_u16(0).write_u32(999)
        packet = make_packet(int(PacketID.ATTACK_RANGE), bytes(writer._body))
        await self.server.dispatcher.dispatch(self.server, self.session, packet)
        self.assertEqual(len(self.server.sent), 0)


class TestUnknownPacketStubs(unittest.IsolatedAsyncioTestCase):
    """Tests des handlers stub pour paquets non décodés."""

    async def asyncSetUp(self):
        self.server = FakeServer()
        self.session = ClientSession(address=("127.0.0.1", 11677))
        self.session.state = SessionState.IN_WORLD

    async def test_all_unknown_opcodes_registered(self):
        """Tous les opcodes inconnus doivent avoir un handler enregistré."""
        for op in UNKNOWN_C2S_OPCODES:
            self.assertIn(op, self.server.dispatcher._handlers,
                         f"opcode {op} non enregistré")

    async def test_unknown_packet_no_crash(self):
        """Un paquet inconnu ne doit pas crasher le dispatcher."""
        for op in UNKNOWN_C2S_OPCODES:
            packet = make_packet(op, b"\x00\x01\x02\x03")
            result = await self.server.dispatcher.dispatch(
                self.server, self.session, packet
            )
            self.assertTrue(result, f"opcode {op} non géré")

    async def test_unknown_opcodes_count(self):
        """Vérifie le nombre d'opcodes stub enregistrés."""
        self.assertEqual(len(UNKNOWN_C2S_OPCODES), 17)


class TestDispatcherCoverage(unittest.IsolatedAsyncioTestCase):
    """Vérifie la couverture globale du dispatcher."""

    def test_implemented_count(self):
        """Au moins 77 handlers doivent être enregistrés (60 réels + 17 stubs)."""
        dispatcher = PacketDispatcher()
        self.assertGreaterEqual(len(dispatcher._handlers), 77)


if __name__ == "__main__":
    unittest.main()
