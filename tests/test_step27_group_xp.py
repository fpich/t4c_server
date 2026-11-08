"""Étape 27 : distribution XP de groupe selon Group::DistributeKillXP (PASSE21).

Formule confirmée par le désassemblage du serveur original :
  - coefficient de groupe = min(1 + 0.5 * (n - 1), 3.0)
  - part de base = int(xp * coefficient) // n
  - Lmax = niveau max ; pour chaque membre de niveau L :
      pas = 4 * (1 + floor(L / 25))
      k   = floor((Lmax - L) / pas)
      k == 0 -> part = part de base
      k >= 1 -> part = int(part de base * 0.5 * (0.2 ** (k - 1)))
"""

import unittest

from t4c.characters import Character, CharacterStore
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


def make_session(server, name, unit_id, port, x=100, y=100, level=1):
    session = ClientSession(("127.0.0.1", port), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    server.characters.create("acc", Character(name=name, level=level))
    server.sessions[session.address] = session
    return session


class GroupXpFormulaTests(unittest.TestCase):
    """Tests de la fonction pure _group_xp_shares."""

    def test_single_member_gets_full_base(self):
        # n=1 -> coefficient = 1.0, base = xp
        class M:
            unit_id = 7
        shares = world._group_xp_shares(100, [M()], {7: 1})
        self.assertEqual(shares, {7: 100})

    def test_two_equal_levels_split_evenly(self):
        class M:
            def __init__(self, uid):
                self.unit_id = uid
        a, b = M(1), M(2)
        # n=2 -> coefficient = 1.5 ; base = int(100*1.5)//2 = 75
        shares = world._group_xp_shares(100, [a, b], {1: 5, 2: 5})
        self.assertEqual(shares, {1: 75, 2: 75})

    def test_coefficient_capped_at_3(self):
        class M:
            def __init__(self, uid):
                self.unit_id = uid
        members = [M(i) for i in range(1, 7)]  # n=6 -> 1+0.5*5=3.5 -> cap 3.0
        levels = {m.unit_id: 10 for m in members}
        shares = world._group_xp_shares(100, members, levels)
        # base = int(100*3.0)//6 = 50 ; tous même niveau -> part = 50
        self.assertEqual(set(shares.values()), {50})

    def test_lower_level_gets_penalty(self):
        class M:
            def __init__(self, uid):
                self.unit_id = uid
        high, low = M(1), M(2)
        # n=2 -> coefficient 1.5 ; base = int(100*1.5)//2 = 75
        # Lmax=50, L=1 -> pas = 4*(1+0)=4 ; k = (50-1)//4 = 12
        # part_low = int(75 * 0.5 * 0.2**11) = 0
        shares = world._group_xp_shares(100, [high, low], {1: 50, 2: 1})
        self.assertEqual(shares[1], 75)
        self.assertEqual(shares[2], 0)

    def test_small_level_gap_no_penalty(self):
        class M:
            def __init__(self, uid):
                self.unit_id = uid
        a, b = M(1), M(2)
        # Lmax=10, L=9 -> pas=4 ; k=(10-9)//4=0 -> pas de pénalité
        shares = world._group_xp_shares(100, [a, b], {1: 10, 2: 9})
        self.assertEqual(shares, {1: 75, 2: 75})


class GroupXpIntegrationTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        world._groups.clear()
        world._pending_invites.clear()
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 1, 8001, level=10)
        self.bob = make_session(self.server, "Bob", 2, 8002, level=10)

    def packets_to(self, address, packet_id):
        return [w for a, w in self.server.sent if a == address and w.packet_id == packet_id]

    def _make_group(self):
        group = world.Group(leader_unit_id=self.alice.unit_id)
        group.members = [self.alice, self.bob]
        world._groups[self.alice.unit_id] = group
        return group

    async def test_distribute_credits_both_members(self):
        self._make_group()
        # kill_npc crédite d'abord le tueur du total, puis appelle distribute.
        alice_char = self.server.characters.characters("acc")[0]
        alice_char.xp = 100
        alice_char.gold = 50
        self.server.sent.clear()
        world.distribute_kill_rewards(self.server, self.alice, xp=100, gold=50)
        bob_char = self.server.characters.characters("acc")[1]
        # n=2 -> coefficient 1.5 ; base = int(100*1.5)//2 = 75 ; gold = 50//2 = 25
        self.assertEqual(alice_char.xp, 75)
        self.assertEqual(bob_char.xp, 75)
        self.assertEqual(alice_char.gold, 25)   # 50 - 25 (part excédentaire retirée)
        self.assertEqual(bob_char.gold, 75)     # 50 (défaut) + 25

    async def test_no_split_when_autosplit_off(self):
        group = self._make_group()
        group.auto_split = False
        self.server.sent.clear()
        world.distribute_kill_rewards(self.server, self.alice, xp=100, gold=50)
        alice_char = self.server.characters.characters("acc")[0]
        bob_char = self.server.characters.characters("acc")[1]
        # Pas de répartition : le tueur garde tout (kill_npc crédite déjà).
        self.assertEqual(alice_char.xp, 0)
        self.assertEqual(bob_char.xp, 0)

    async def test_out_of_range_member_excluded(self):
        self._make_group()
        self.bob.pos_x = 500  # hors du rayon de 20 tuiles
        self.server.sent.clear()
        world.distribute_kill_rewards(self.server, self.alice, xp=100, gold=50)
        alice_char = self.server.characters.characters("acc")[0]
        bob_char = self.server.characters.characters("acc")[1]
        # Seul le tueur est à portée -> pas de partage.
        self.assertEqual(alice_char.xp, 0)
        self.assertEqual(bob_char.xp, 0)


if __name__ == "__main__":
    unittest.main()
