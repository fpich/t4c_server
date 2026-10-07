"""Étape 27 : monde multi-joueurs — paquets 16 (vue), 0x2714 (popup), 1 (mouvement), 11 (retrait)."""

import asyncio
import unittest

from t4c.characters import Character, CharacterStore
from t4c.codec import PacketReader, PacketWriter, encode_packet
from t4c.handlers import PacketDispatcher
from t4c.protocol import PacketID
from t4c.session import ClientSession, SessionState
from t4c.config import ServerConfig


class FakeServer:
    def __init__(self):
        self.config = ServerConfig()
        self.characters = CharacterStore()
        self.sessions = {}
        self.persistence = None
        self.sent: list[tuple[object, PacketWriter]] = []

    def send_packet(self, address, writer, **kwargs):
        self.sent.append((address, writer))


def make_session(server: FakeServer, name: str, x: int, y: int, unit_id: int):
    session = ClientSession(("127.0.0.1", 1000 + unit_id), state=SessionState.IN_WORLD)
    session.account = "acc"
    session.active_character = name
    session.unit_id = unit_id
    session.pos_x = x
    session.pos_y = y
    session.pos_world = 0
    server.characters.create("acc", Character(name=name))
    server.sessions[session.address] = session
    return session


class WorldBroadcastTests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.server = FakeServer()
        self.dispatcher = PacketDispatcher()
        self.alice = make_session(self.server, "Alice", 100, 100, 1)
        self.bob = make_session(self.server, "Bob", 105, 100, 2)

    def _packet(self, packet_id):
        return PacketReader(encode_packet(packet_id).payload if hasattr(encode_packet(packet_id), "payload") else b"")

    async def _move(self, session, direction):
        writer = PacketWriter(direction)
        from t4c.codec import DecodedPacket
        from t4c.codec import decode_datagram

        datagram = writer.to_datagram()
        packet = decode_datagram(datagram)
        await self.dispatcher.dispatch(self.server, session, packet)

    async def test_move_broadcasts_to_in_view_player(self):
        await self._move(self.alice, PacketID.MOVE_EAST)
        moved_packets = [w for addr, w in self.server.sent if addr == self.bob.address and w.packet_id == 1]
        self.assertEqual(len(moved_packets), 1)
        body = moved_packets[0].body
        reader = PacketReader(body)
        self.assertEqual(reader.read_i16(), 101)  # x
        self.assertEqual(reader.read_i16(), 100)  # y
        self.assertEqual(reader.read_i16(), 10011)  # apparence puppet
        self.assertEqual(reader.read_i32(), 1)  # unitId Alice
        self.assertEqual(reader.read_i8(), 0)  # radiance
        self.assertEqual(reader.read_u8(), 0)  # statut
        self.assertEqual(reader.read_u8(), 100)  # %HP

    async def test_move_not_broadcast_to_far_player(self):
        self.bob.pos_x = 100 + 25  # hors portée de vue (20)
        await self._move(self.alice, PacketID.MOVE_EAST)
        moved = [w for addr, w in self.server.sent if addr == self.bob.address and w.packet_id == 1]
        self.assertEqual(moved, [])

    async def test_exit_broadcasts_removal(self):
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            type("P", (), {"packet_id": int(PacketID.EXIT_GAME), "body": b""})(),
        )
        removed = [w for addr, w in self.server.sent if addr == self.bob.address and w.packet_id == 11]
        self.assertEqual(len(removed), 1)
        reader = PacketReader(removed[0].body)
        self.assertEqual(reader.read_u8(), 0)
        self.assertEqual(reader.read_i32(), 1)

    async def test_enter_world_sends_inview_and_popup(self):
        self.alice.state = SessionState.PRE_INGAME
        self.server.sent.clear()
        await self.dispatcher.dispatch(
            self.server,
            self.alice,
            type("P", (), {"packet_id": int(PacketID.FROM_PREINGAME_TO_INGAME), "body": b""})(),
        )
        inview = [w for addr, w in self.server.sent if addr == self.alice.address and w.packet_id == 16]
        self.assertEqual(len(inview), 1)
        reader = PacketReader(inview[0].body)
        self.assertEqual(reader.read_i16(), 1)  # 1 unité visible : Bob
        self.assertEqual(reader.read_i16(), 105)
        self.assertEqual(reader.read_i16(), 100)
        self.assertEqual(reader.read_i16(), 10011)  # apparence Bob
        self.assertEqual(reader.read_i32(), 2)  # unitId Bob
        popups = [w for addr, w in self.server.sent if addr == self.bob.address and w.packet_id == 0x2714]
        self.assertEqual(len(popups), 1)


if __name__ == "__main__":
    unittest.main()
