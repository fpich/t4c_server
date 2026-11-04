"""Étape 19 (PLAN 5.4) : test d'intégration bout-en-bout.

Deux clients UDP réels contre le vrai T4CServerProtocol : bootstrap complet
(66/91/99/14/26/25/13/46), entrée en monde multi-joueurs (popup 0x2714),
mouvement (paquet 1), chat local (27), canaux (48/49), marchand (11/41/56),
sortie de jeu (20 -> 11 diffusé). Toute la pile transport (ACK/SAFE) est
sollicitée.
"""

import asyncio
import unittest

from t4c.characters import START_POS
from t4c.codec import PacketWriter, decode_datagram, encode_packet
from t4c.config import ServerConfig
from t4c.server import T4CServerProtocol
from t4c.transport import decode_transport, encode_transport
from t4c import world


class TestClient(asyncio.DatagramProtocol):
    """Client T4C minimal : envoie des requêtes SAFE, collecte les réponses."""

    def __init__(self):
        self.transport = None
        self.seq = 0
        self.received: list = []
        self.waiters: list = []

    def connection_made(self, transport):
        self.transport = transport

    def datagram_received(self, data, addr):
        tp = decode_transport(data)
        if tp.is_ack:
            return
        packet = decode_datagram(tp.payload)
        self.received.append(packet)
        for pred, fut in list(self.waiters):
            if not fut.done() and pred(packet):
                fut.set_result(packet)
                self.waiters.remove((pred, fut))

    def request(self, packet_id, body_writer=None):
        writer = PacketWriter(packet_id)
        if body_writer:
            body_writer(writer)
        app = encode_packet(packet_id, writer.body, seed=7)
        self.seq += 1
        self.transport.sendto(encode_transport(app, sequence=self.seq, safe=True))

    async def wait_for(self, packet_id, timeout=3.0):
        ids = (packet_id,) if isinstance(packet_id, int) else tuple(packet_id)
        for p in self.received:
            if p.packet_id in ids:
                return p
        loop = asyncio.get_running_loop()
        fut = loop.create_future()
        self.waiters.append((lambda p, ids=ids: p.packet_id in ids, fut))
        return await asyncio.wait_for(fut, timeout)


def login_flow(client, name):
    client.request(66)                                   # MOTD
    client.request(91)                                   # patch info
    client.request(99, lambda w: w.write_u32(125))       # version
    client.request(
        14,
        lambda w: (
            w.write_pascal_u8_text("acc"),
            w.write_pascal_u8_text("pw"),
            w.write_i16(0),
            w.write_i16(0),
        ),
    )
    client.request(26)                                   # liste personnages
    client.request(
        25,
        lambda w: (
            [w.write_u8(a) for a in (1, 2, 0, 0, 1, 0)],
            w.write_pascal_u8_text(name),
        ),
    )
    client.request(13, lambda w: w.write_pascal_u8_text(name))  # entrer en pré-jeu
    client.request(46)                                   # entrer en monde


class IntegrationTests(unittest.IsolatedAsyncioTestCase):
    async def asyncSetUp(self):
        world._ground_items.clear()
        world._npcs.clear()
        world._channels.clear()
        self.config = ServerConfig(database_path="")
        loop = asyncio.get_running_loop()
        self.server_transport, self.proto = await loop.create_datagram_endpoint(
            lambda: T4CServerProtocol(config=self.config),
            local_addr=("127.0.0.1", 0),
        )
        self.port = self.server_transport.get_extra_info("sockname")[1]
        # PNJ marchand à côté de la position de départ.
        sx, sy, _w = START_POS
        self.shop_npc = world.register_npc(
            "Marchand Test", appearance=10011, x=sx + 2, y=sy,
            shop={2: 5},
        )
        # Monstre hostile pour le combat (étape 22).
        self.rat = world.register_npc(
            "Rat test", appearance=300, x=sx + 3, y=sy,
            hostile=True, hp=50, damage=2, dodge=0, xp_reward=10, gold_reward=3,
            loot=(10007,),
        )
        world.create_channel("General")
        self.clients = []
        for _ in range(2):
            transport, client = await loop.create_datagram_endpoint(
                TestClient, remote_addr=("127.0.0.1", self.port)
            )
            client.transport = transport
            self.clients.append(client)

    async def asyncTearDown(self):
        for c in self.clients:
            c.transport.close()
        self.server_transport.close()
        self.proto._maintenance_task.cancel()
        try:
            await self.proto._maintenance_task
        except asyncio.CancelledError:
            pass

    async def test_full_two_client_session(self):
        alice, bob = self.clients

        # --- Bootstrap complet des deux clients ---
        login_flow(alice, "Alice")
        motd = await alice.wait_for(66)
        self.assertIn(b"Bienvenue", motd.body)
        ver = await alice.wait_for(99)
        self.assertEqual(ver.body, (1).to_bytes(4, "big"))
        auth = await alice.wait_for(14)
        self.assertEqual(auth.body[0], 0)  # succès
        pc_list = await alice.wait_for(26)
        self.assertEqual(pc_list.body[0], 0)  # liste vide avant création... attendue après 25
        created = await alice.wait_for(25)
        self.assertEqual(created.body[0], 0)  # perso créé
        ingame = await alice.wait_for(13)
        self.assertEqual(ingame.body[0], 0)   # chargé
        entered = await alice.wait_for(46)
        self.assertEqual(entered.body[0], 0)   # en monde

        login_flow(bob, "Bob")
        await bob.wait_for(46)

        # --- Multi-joueurs : Alice voit arriver Bob (popup 0x2714) ---
        from t4c.codec import PacketReader
        popup = await alice.wait_for(0x2714)
        r = PacketReader(popup.body)
        r.read_i16(); r.read_i16()          # x, y
        r.read_i16()                        # apparence
        popup_unit = r.read_i32()
        self.assertGreater(popup_unit, 0)   # unité de Bob annoncée
        # La vue initiale de Bob (paquet 16) contient Alice (unit_id = 1).
        inview = await bob.wait_for(16)
        r = PacketReader(inview.body)
        count = r.read_i16()
        self.assertGreaterEqual(count, 1)
        found_alice = False
        for _ in range(count):
            r.read_i16(); r.read_i16()      # x, y
            r.read_i16()                    # apparence
            if r.read_i32() == 1:
                found_alice = True
            r.read_i8(); r.read_u8(); r.read_u8()
        self.assertTrue(found_alice)

        # --- Mouvement : Alice va à l'est, les deux reçoivent le paquet 1 ---
        alice.received.clear()
        bob.received.clear()
        alice.request(3)  # MOVE_EAST
        moved_alice = await alice.wait_for(1)
        self.assertEqual(moved_alice.body[0:2], (START_POS[0] + 1).to_bytes(2, "big"))
        moved_bob = await bob.wait_for(1)  # Bob voit le mouvement d'Alice
        self.assertEqual(moved_bob.body[0:2], (START_POS[0] + 1).to_bytes(2, "big"))

        # --- Chat local : Alice parle, Bob reçoit le S2C 27 ---
        alice.received.clear()
        bob.received.clear()
        alice.request(
            30,
            lambda w: (
                w.write_u16(0), w.write_u16(0), w.write_u32(0), w.write_u8(0),
                w.write_u32(0), w.write_text("bonjour"),
            ),
        )
        talk_bob = await bob.wait_for(27)
        self.assertIn(b"bonjour", talk_bob.body)
        talk_alice = await alice.wait_for(27)  # l'émetteur se reçoit aussi
        self.assertIn(b"bonjour", talk_alice.body)

        # --- Canaux : les deux rejoignent General, Alice poste ---
        alice.received.clear()
        bob.received.clear()
        for c in (alice, bob):
            c.request(48, lambda w: (w.write_text("General"), w.write_text("")))
        await alice.wait_for(75)
        await bob.wait_for(75)
        alice.received.clear()
        bob.received.clear()
        alice.request(49, lambda w: (w.write_text("General"), w.write_text("salut canal")))
        chan_bob = await bob.wait_for(49)
        self.assertIn(b"salut canal", chan_bob.body)

        # --- Marchand : Alice ouvre le shop puis achète une potion ---
        alice.received.clear()
        alice.request(11, lambda w: (w.write_u16(0), w.write_u16(0), w.write_u32(self.shop_npc.unit_id)))
        buy_list = await alice.wait_for(41)
        self.assertIn(self.shop_npc.unit_id.to_bytes(4, "big"), buy_list.body)
        await alice.wait_for(56)  # liste de vente
        alice.received.clear()
        alice.request(
            41,
            lambda w: (
                w.write_u16(0), w.write_u16(0), w.write_u32(self.shop_npc.unit_id),
                w.write_u16(1), w.write_u16(2), w.write_u16(1),  # 1 potion (id 2)
            ),
        )
        gold = await alice.wait_for(53)
        # potion = 10 po, solde initial 50 -> 40
        self.assertEqual(int.from_bytes(gold.body, "big"), 40)
        await alice.wait_for(18)  # sac rafraîchi
        await alice.wait_for(41)  # stock rafraîchi
        self.assertEqual(self.shop_npc.shop[2], 4)

        # --- Groupe : Alice invite Bob (78), Bob rejoint (79) -> 76 aux deux ---
        alice.received.clear()
        bob.received.clear()
        alice.request(78, lambda w: (w.write_u32(2), w.write_u32(0)))  # unit_id Bob = 2
        invite = await bob.wait_for(78)
        from t4c.codec import PacketReader
        r = PacketReader(invite.body)
        self.assertEqual(r.read_u32(), 1)  # leader = Alice (unit_id 1)
        self.assertEqual(r.read_text(), "Alice")
        bob.request(79)
        members = await alice.wait_for(76)
        r = PacketReader(members.body)
        r.read_u8()
        self.assertEqual(r.read_u16(), 2)  # 2 membres

        # --- Combat : Alice attaque le rat (C2S 32, spellId=0) ---
        alice.received.clear()
        alice.request(32, lambda w: (w.write_u16(0), w.write_u16(0), w.write_u16(0), w.write_u32(self.rat.unit_id)))
        # Accepte 0x2711 (touché) ou 0x2712 (raté) : un round a eu lieu.
        ev = await alice.wait_for((0x2711, 0x2712))
        self.assertIn(ev.packet_id, (0x2711, 0x2712))

        # --- Sort : Alice lance Fire dart (C2S 32, spellId=414) ---
        alice.received.clear()
        alice.request(32, lambda w: (w.write_u16(414), w.write_u16(0), w.write_u16(0), w.write_u32(self.rat.unit_id)))
        cast = await alice.wait_for(64)
        r = PacketReader(cast.body)
        self.assertEqual(r.read_u16(), 414)
        mana = await alice.wait_for(67)
        self.assertGreaterEqual(PacketReader(mana.body).read_u16(), 0)

        # --- Sortie de jeu : Bob voit disparaître Alice (paquet 11, unit_id=1) ---
        bob.received.clear()
        alice.request(20)
        removed = await bob.wait_for(11)
        r = PacketReader(removed.body)
        r.read_u8()
        self.assertEqual(r.read_i32(), 1)  # unit_id d'Alice


if __name__ == "__main__":
    unittest.main()
