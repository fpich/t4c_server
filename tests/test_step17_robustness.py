"""Étape 17 (PLAN 5.1/5.2) : retransmission SAFE + nettoyage des sessions mortes."""

import asyncio
import unittest

from t4c.codec import PacketWriter
from t4c.config import ServerConfig
from t4c.server import T4CServerProtocol
from t4c.session import ClientSession, SessionState
from t4c.transport import decode_transport, encode_ack
from t4c.characters import Character
from t4c import world


class FakeTransport:
    def __init__(self):
        self.sent = []

    def get_extra_info(self, name):
        return ("0.0.0.0", 11677) if name == "sockname" else None

    def sendto(self, data, addr=None):
        self.sent.append((data, addr))

    def close(self):
        pass


def make_protocol():
    config = ServerConfig()
    config.session_timeout = 60.0
    proto = T4CServerProtocol(config=config)
    transport = FakeTransport()
    proto.connection_made(transport)
    return proto, transport


class RetransmitTests(unittest.IsolatedAsyncioTestCase):
    async def asyncSetUp(self):
        self.proto, self.transport = make_protocol()
        self.addr = ("10.0.0.1", 4444)
        self.session = ClientSession(self.addr)
        self.proto.sessions[self.addr] = self.session

    async def asyncTearDown(self):
        self.proto._maintenance_task.cancel()
        try:
            await self.proto._maintenance_task
        except asyncio.CancelledError:
            pass

    async def test_safe_packet_is_tracked_until_ack(self):
        writer = PacketWriter(66)
        writer.write_text("hello")
        self.proto.send_packet(self.addr, writer, reliable=True)
        self.assertEqual(len(self.session.pending_safe), 1)
        seq = next(iter(self.session.pending_safe))
        self.assertEqual(len(self.transport.sent), 1)
        # L'ACK du client acquitte le paquet : plus de retransmission.
        self.proto.datagram_received(encode_ack(seq), self.addr)
        self.assertEqual(self.session.pending_safe, {})

    async def test_unacked_safe_packet_is_retransmitted_then_dropped(self):
        writer = PacketWriter(66)
        writer.write_text("hello")
        self.proto.send_packet(self.addr, writer, reliable=True)
        seq = next(iter(self.session.pending_safe))
        # Vieillissement artificiel : on recule last_sent.
        self.session.pending_safe[seq][1] -= 10.0
        self.proto._retransmit_pending(self.session, now=__import__("time").monotonic())
        # 1 retransmit envoyée (le datagram original + 1 renvoi)
        self.assertEqual(len(self.transport.sent), 2)
        self.assertEqual(self.session.pending_safe[seq][2], 1)
        # Après max retries, le paquet est abandonné (PacketLost).
        self.session.pending_safe[seq][2] = self.proto.config.safe_max_retries
        self.session.pending_safe[seq][1] -= 10.0
        now = __import__("time").monotonic()
        self.proto._retransmit_pending(self.session, now)
        self.assertEqual(self.session.pending_safe, {})
        self.assertEqual(len(self.transport.sent), 2)  # plus de renvoi

    async def test_non_safe_packet_is_not_tracked(self):
        writer = PacketWriter(9)
        writer.write_i16(1).write_i16(2).write_i16(0)
        self.proto.send_packet(self.addr, writer, reliable=False)
        self.assertEqual(self.session.pending_safe, {})


class SessionCleanupTests(unittest.IsolatedAsyncioTestCase):
    async def test_dead_session_is_removed_and_broadcast(self):
        proto, transport = make_protocol()
        self.addCleanup(lambda: proto._maintenance_task.cancel())
        addr = ("10.0.0.2", 5555)
        session = ClientSession(addr, state=SessionState.IN_WORLD)
        session.account = "acc"
        session.active_character = "Alice"
        session.unit_id = 42
        proto.characters.create("acc", Character(name="Alice"))
        proto.sessions[addr] = session
        # Un autre joueur en monde qui verra la disparition.
        other_addr = ("10.0.0.3", 6666)
        other = ClientSession(other_addr, state=SessionState.IN_WORLD)
        other.account = "acc2"
        other.active_character = "Bob"
        other.unit_id = 43
        other.pos_x = session.pos_x
        other.pos_y = session.pos_y
        proto.characters.create("acc2", Character(name="Bob"))
        proto.sessions[other_addr] = other
        # Session morte : last_seen il y a 120s.
        import time
        session.last_seen_at = time.monotonic() - 120.0
        other.last_seen_at = time.monotonic()
        transport.sent.clear()
        proto._cleanup_sessions(now=time.monotonic())
        self.assertNotIn(addr, proto.sessions)
        self.assertIn(other_addr, proto.sessions)
        # Bob a reçu le paquet 11 (retrait d'Alice, unit_id=42).
        from t4c.codec import decode_datagram, PacketReader
        removed = []
        for d, a in transport.sent:
            if a != other_addr:
                continue
            packet = decode_datagram(decode_transport(d).payload)
            if packet.packet_id == 11:
                r = PacketReader(packet.body)
                r.read_u8()
                removed.append(r.read_i32())
        self.assertIn(42, removed)

    async def test_recent_session_is_kept(self):
        proto, transport = make_protocol()
        self.addCleanup(lambda: proto._maintenance_task.cancel())
        import time
        addr = ("10.0.0.4", 7777)
        session = ClientSession(addr)
        proto.sessions[addr] = session
        proto._cleanup_sessions(now=time.monotonic())
        self.assertIn(addr, proto.sessions)


if __name__ == "__main__":
    unittest.main()
