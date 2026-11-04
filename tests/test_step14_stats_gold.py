"""Étape 14 (PLAN 1.2) : or/XP/HP persistants, 13/43 réels, potion de soin."""

import unittest

from t4c.characters import Character, CharacterStore
from t4c.codec import PacketReader, PacketWriter, decode_datagram
from t4c.handlers import PacketDispatcher
from t4c.persistence import Persistence
from t4c.protocol import PacketID
from t4c.session import ClientSession, SessionState
from t4c.config import ServerConfig


class FakeServer:
    def __init__(self, persistence=None):
        self.config = ServerConfig()
        self.characters = CharacterStore()
        self.sessions = {}
        self.persistence = persistence
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


def auth_and_create(server, dispatcher, session, account="acc", name="Alice"):
    async def run():
        await dispatcher.dispatch(
            server,
            session,
            fake_packet(
                PacketID.REGISTER_ACCOUNT,
                lambda w: (
                    w.write_pascal_u8_text(account),
                    w.write_pascal_u8_text("pw"),
                    w.write_i16(0),
                    w.write_i16(0),
                ),
            ),
        )
        await dispatcher.dispatch(
            server,
            session,
            fake_packet(
                PacketID.CREATE_PLAYER,
                lambda w: (
                    [w.write_u8(a) for a in (1, 2, 0, 0, 1, 0)],
                    w.write_pascal_u8_text(name),
                ),
            ),
        )
    return run


def parse_ingame_stats(body):
    """Parse la réponse 13 et renvoie un dict des champs clés."""
    r = PacketReader(body)
    out = {}
    out["result"] = r.read_u8()
    out["unit_id"] = r.read_i32()
    out["x"], out["y"], out["world"] = r.read_i16(), r.read_i16(), r.read_i16()
    out["hp"], out["max_hp"] = r.read_i32(), r.read_i32()
    out["mana"], out["max_mana"] = r.read_i16(), r.read_i16()
    out["xp_hi"], out["xp_lo"] = r.read_i32(), r.read_i32()
    r.read_i32(); r.read_i32()  # XP prochain niveau hi/lo
    stats = [r.read_i16() for _ in range(7)]
    out["stats"] = stats
    r.read_i8(); r.read_i8(); r.read_i8(); r.read_i8(); r.read_i8(); r.read_i8()
    r.read_i16()  # année
    out["gold"] = r.read_i32()
    out["level"] = r.read_i16()
    out["xp_prev_hi"], out["xp_prev_lo"] = r.read_i32(), r.read_i32()
    return out


class StatsPersistenceTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.persistence = Persistence(":memory:")
        self.server = FakeServer(persistence=self.persistence)
        self.dispatcher = PacketDispatcher()
        self.session = ClientSession(("127.0.0.1", 5000))
        self.server.sessions[self.session.address] = self.session

    def tearDown(self):
        self.persistence.close()

    async def _auth_create_ingame(self, name="Alice"):
        await auth_and_create(self.server, self.dispatcher, self.session, name=name)()
        await self.dispatcher.dispatch(
            self.server,
            self.session,
            fake_packet(PacketID.PUT_PLAYER_IN_GAME, lambda w: w.write_pascal_u8_text(name)),
        )
        return self.session

    async def test_create_persists_gold_and_xp(self):
        await auth_and_create(self.server, self.dispatcher, self.session)()
        row = self.persistence._db.execute(
            "SELECT Gold, XP, CurrentLevel FROM PlayingCharacters WHERE PlayerName = 'Alice'"
        ).fetchone()
        self.assertIsNotNone(row)
        self.assertEqual(row["Gold"], 50)
        self.assertEqual(row["XP"], 0)

    async def test_packet13_reflects_gold_and_xp(self):
        await self._auth_create_ingame()
        character = self.server.characters.characters("acc")[0]
        character.gold = 1234
        character.xp = 0x1_0000_0005  # teste le split hi/lo 64 bits
        self.server.sent.clear()
        # Recharge le personnage (exit 20 puis 13) pour relire les stats.
        await self.dispatcher.dispatch(self.server, self.session, fake_packet(PacketID.EXIT_GAME))
        await self.dispatcher.dispatch(
            self.server,
            self.session,
            fake_packet(PacketID.PUT_PLAYER_IN_GAME, lambda w: w.write_pascal_u8_text("Alice")),
        )
        resp13 = [w for a, w in self.server.sent if w.packet_id == 13]
        self.assertEqual(len(resp13), 1)
        parsed = parse_ingame_stats(resp13[0].body)
        self.assertEqual(parsed["result"], 0)
        self.assertEqual(parsed["gold"], 1234)
        self.assertEqual((parsed["xp_hi"], parsed["xp_lo"]), (1, 5))

    async def test_status43_reflects_gold_xp_wil_luck(self):
        await self._auth_create_ingame()
        character = self.server.characters.characters("acc")[0]
        character.gold = 77
        character.xp = 42
        character.willpower = 13
        character.luck = 9
        self.server.sent.clear()
        await self.dispatcher.dispatch(self.server, self.session, fake_packet(PacketID.GET_STATUS))
        resp43 = [w for a, w in self.server.sent if w.packet_id == 43]
        self.assertEqual(len(resp43), 1)
        r = PacketReader(resp43[0].body)
        r.read_i32(); r.read_i32()      # HP, maxHP
        r.read_i16(); r.read_i16()      # mana, maxMana
        xp_hi, xp_lo = r.read_i32(), r.read_i32()
        self.assertEqual((xp_hi, xp_lo), (0, 42))
        r.read_i16(); r.read_i16()      # AC, trueAC
        stats = [r.read_i16() for _ in range(7)]
        self.assertEqual(stats[3], 13)  # wil
        self.assertEqual(stats[6], 9)   # luck

    async def test_potion_heals_and_persists_and_sends_status(self):
        await self._auth_create_ingame()
        character = self.server.characters.characters("acc")[0]
        character.hp = 10
        self.server.sent.clear()
        potion = next(i for i in self.session.inventory.backpack if i.template_id == 2)
        await self.dispatcher.dispatch(
            self.server,
            self.session,
            fake_packet(
                PacketID.USE_ITEM,
                lambda w: (w.write_u16(0), w.write_u16(0), w.write_u32(potion.unit_id)),
            ),
        )
        # HP soigné (+25, clamp max 50) : 10 -> 35
        self.assertEqual(character.hp, 35)
        # Statut 43 renvoyé au joueur avec le nouveau HP.
        resp43 = [w for a, w in self.server.sent if w.packet_id == 43]
        self.assertEqual(len(resp43), 1)
        r = PacketReader(resp43[0].body)
        self.assertEqual(r.read_i32(), 35)
        # Persisté en base.
        row = self.persistence._db.execute(
            "SELECT CurrentHP FROM PlayingCharacters WHERE PlayerName = 'Alice'"
        ).fetchone()
        self.assertEqual(row["CurrentHP"], 35)
        # Potion consommée : la pile passe de 3 à 2.
        remaining = next(
            (i for i in self.session.inventory.backpack if i.unit_id == potion.unit_id),
            None,
        )
        if remaining is None:
            self.assertEqual(potion.quantity, 0)
        else:
            self.assertEqual(remaining.quantity, 2)

    async def test_potion_clamps_to_max_hp(self):
        await self._auth_create_ingame()
        character = self.server.characters.characters("acc")[0]
        character.hp = 45  # max 50 -> +5 seulement
        potion = next(i for i in self.session.inventory.backpack if i.template_id == 2)
        await self.dispatcher.dispatch(
            self.server,
            self.session,
            fake_packet(
                PacketID.USE_ITEM,
                lambda w: (w.write_u16(0), w.write_u16(0), w.write_u32(potion.unit_id)),
            ),
        )
        self.assertEqual(character.hp, 50)

    async def test_exit_game_persists_stats(self):
        await self._auth_create_ingame()
        character = self.server.characters.characters("acc")[0]
        character.gold = 999
        character.xp = 123456
        character.hp = 20
        await self.dispatcher.dispatch(self.server, self.session, fake_packet(PacketID.EXIT_GAME))
        row = self.persistence._db.execute(
            "SELECT Gold, XP, CurrentHP FROM PlayingCharacters WHERE PlayerName = 'Alice'"
        ).fetchone()
        self.assertEqual(row["Gold"], 999)
        self.assertEqual(row["XP"], 123456)
        self.assertEqual(row["CurrentHP"], 20)


if __name__ == "__main__":
    unittest.main()
