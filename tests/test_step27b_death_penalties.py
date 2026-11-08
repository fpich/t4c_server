"""Étape 27b : pénalités de mort (perte XP, or, objets) - PASSE49.

Formules confirmées par le désassemblage du serveur original :
  - Perte XP : pourcentage basé sur le niveau (tableau 0x511B10)
  - Perte or : GetGold * pourcentage // 100
  - Perte objets : RRandom(0,100) < BACKPACK_LOSS (20%)
  - HP remis à GetHP >> 1 (pas max_hp / 2)
"""

import unittest
from unittest import mock

from t4c.characters import Character, CharacterStore
from t4c.items import Item
from t4c.codec import PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.maps import WorldMap
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
        self.world_map = WorldMap()
        self.sent = []

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer))


def make_session(server, name="Alice", unit_id=1, port=7001, level=10):
    session = ClientSession(("127.0.0.1", port), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = 100
    session.pos_y = 100
    session.pos_world = 0
    character = Character(name=name, level=level)
    server.characters.create("acc", character)
    server.sessions[session.address] = session
    return session


class DeathPenaltiesTests(unittest.TestCase):
    """Tests de la fonction pure apply_death_penalties."""

    def setUp(self):
        self.server = FakeServer()
        self.alice = make_session(self.server, "Alice", 1, 7001, level=10)

    def test_xp_loss_scales_with_level(self):
        """La perte XP augmente avec le niveau (base 10%, +1% par niv > 10)."""
        # Niveau 10 -> 10% de perte
        char = self.server.characters.characters("acc")[0]
        char.xp = 1000
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(penalties["xp_lost"], 100)  # 10%
        self.assertEqual(char.xp, 900)

        # Niveau 20 -> 20% de perte
        char.level = 20
        char.xp = 1000
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(penalties["xp_lost"], 200)  # 20%
        self.assertEqual(char.xp, 800)

        # Niveau 50 -> cap à 50%
        char.level = 50
        char.xp = 1000
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(penalties["xp_lost"], 500)  # 50% (cap)
        self.assertEqual(char.xp, 500)

    def test_gold_loss_fixed_percentage(self):
        """La perte or est fixe à 5%."""
        char = self.server.characters.characters("acc")[0]
        char.gold = 1000
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(penalties["gold_lost"], 50)  # 5%
        self.assertEqual(char.gold, 950)

    def test_hp_halved_not_max(self):
        """Le HP est remis à HP//2 (pas max_hp//2)."""
        char = self.server.characters.characters("acc")[0]
        char.hp = 80  # sur 100 max
        char.max_hp = 100
        world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(char.hp, 40)  # 80 // 2

    def test_hp_halved_from_current_not_max(self):
        """Si HP est déjà bas, on divise par 2 (pas de restauration)."""
        char = self.server.characters.characters("acc")[0]
        char.hp = 10  # déjà faible
        char.max_hp = 100
        world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(char.hp, 5)  # 10 // 2

    def test_items_loss_random_chance(self):
        """Perte d'objet avec chance de 20%."""
        from t4c.items import Inventory
        char = self.server.characters.characters("acc")[0]
        # Ajouter un inventaire avec des objets
        inv = Inventory()
        inv.add(1)  # Épée
        inv.add(2, quantity=3)  # 3 potions
        self.alice.inventory = inv

        # Simuler 100 morts avec chance d'objet perdu
        losses = []
        for _ in range(100):
            # Réinitialiser l'inventaire
            inv = Inventory()
            inv.add(1)
            inv.add(2, quantity=3)
            self.alice.inventory = inv
            with mock.patch("random.randint", return_value=15):  # < 20 -> perte
                penalties = world.apply_death_penalties(self.server, self.alice, char)
                losses.append(len(penalties["items_lost"]))
        # Tous devraient perdre un objet (randint=15 < 20)
        self.assertEqual(sum(losses), 100)

    def test_no_items_loss_if_chance_miss(self):
        """Pas de perte d'objet si RRandom >= 20."""
        from t4c.items import Inventory
        char = self.server.characters.characters("acc")[0]
        inv = Inventory()
        inv.add(1)  # Épée
        self.alice.inventory = inv
        with mock.patch("random.randint", return_value=25):  # >= 20 -> pas de perte
            penalties = world.apply_death_penalties(self.server, self.alice, char)
            self.assertEqual(penalties["items_lost"], [])
            self.assertEqual(len(inv.backpack), 1)

    def test_no_penalty_on_equipment_slots(self):
        """Les objets équipés ne sont pas perdus (seul le sac est concerné)."""
        from t4c.items import Inventory
        char = self.server.characters.characters("acc")[0]
        inv = Inventory()
        sword = inv.add(1)  # Épée
        inv.equip(sword.unit_id)  # Équiper -> retire du sac
        self.alice.inventory = inv
        with mock.patch("random.randint", return_value=15):
            penalties = world.apply_death_penalties(self.server, self.alice, char)
            # Pas d'objet dans le sac -> pas de perte
            self.assertEqual(penalties["items_lost"], [])
            self.assertEqual(len(inv.backpack), 0)

    def test_xp_cannot_go_negative(self):
        """L'XP ne peut pas descendre en dessous de 0."""
        char = self.server.characters.characters("acc")[0]
        char.xp = 50
        char.level = 50  # 50% de perte -> 25
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(char.xp, 25)

        char.xp = 10
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(char.xp, 5)

    def test_gold_cannot_go_negative(self):
        """L'or ne peut pas descendre en dessous de 0."""
        char = self.server.characters.characters("acc")[0]

        # Petit montant -> pas de perte (3 * 5 // 100 = 0)
        char.gold = 3
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(char.gold, 3)
        self.assertEqual(penalties["gold_lost"], 0)

        # Montant suffisant -> perte de 5%
        char.gold = 100
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(char.gold, 95)  # 100 * 5 // 100 = 5
        self.assertEqual(penalties["gold_lost"], 5)

        # Montant juste en dessous du seuil -> pas de perte
        char.gold = 19
        penalties = world.apply_death_penalties(self.server, self.alice, char)
        self.assertEqual(char.gold, 19)  # 19 * 5 // 100 = 0
        self.assertEqual(penalties["gold_lost"], 0)


class RespawnWithPenaltiesTests(unittest.IsolatedAsyncioTestCase):
    """Tests d'intégration : respawn après mort avec pénalités."""

    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 7001, level=10)

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    async def test_respawn_applies_penalties(self):
        """Le respawn applique les pénalités avant de téléporter."""
        char = self.server.characters.characters("acc")[0]
        char.xp = 1000
        char.gold = 500
        char.hp = 80
        char.max_hp = 100

        # Simuler la mort
        world.respawn_player(self.server, self.alice, char)

        # Vérifier les pénalités
        self.assertEqual(char.xp, 900)  # -10%
        self.assertEqual(char.gold, 475)  # -5%
        self.assertEqual(char.hp, 40)  # HP // 2

        # Vérifier les paquets envoyés
        teleports = self.packets_to(self.alice.address, 57)  # EVENT_TELEPORT
        self.assertTrue(teleports)
        status = self.packets_to(self.alice.address, 43)  # STATUS_UPDATE
        self.assertTrue(status)

    async def test_respawn_position_reset(self):
        """Le joueur respawn à la position de départ."""
        self.alice.pos_x = 500
        self.alice.pos_y = 500
        char = self.server.characters.characters("acc")[0]

        world.respawn_player(self.server, self.alice, char)

        from t4c.characters import START_POS
        self.assertEqual(self.alice.pos_x, START_POS[0])
        self.assertEqual(self.alice.pos_y, START_POS[1])


if __name__ == "__main__":
    unittest.main()
