"""Async UDP server shell for the reconstructed T4C 1.25 protocol."""

from __future__ import annotations

import asyncio
import logging
import time

from .codec import DecodedPacket, PacketWriter, T4CProtocolError, decode_datagram
from .characters import CharacterStore
from .persistence import Persistence
from .config import ServerConfig
from .handlers import PacketDispatcher
from .maps import WorldMap
from .protocol import packet_name
from .session import Address, ClientSession
from .transport import (
    FLAG_FRAGMENTED,
    T4CTransportError,
    decode_transport,
    encode_ack,
    encode_transport,
)

log = logging.getLogger("t4c.server")


class T4CServerProtocol(asyncio.DatagramProtocol):
    def __init__(
        self,
        dispatcher: PacketDispatcher | None = None,
        config: ServerConfig | None = None,
    ) -> None:
        self.transport: asyncio.DatagramTransport | None = None
        self.config = config or ServerConfig()
        self.dispatcher = dispatcher or PacketDispatcher()
        self.sessions: dict[Address, ClientSession] = {}
        # Compteur global d'unit IDs : DOIT être unique par personnage en monde.
        # Un compteur par session donnait le même ID (1) à tous les joueurs —
        # le client destinataire d'un OBJECT_MOVED le reconnaissait comme
        # lui-même et déplaçait son propre personnage (effet miroir).
        self.next_unit_id = 1
        self.reserved_names: set[str] = set()
        self.characters = CharacterStore(max_per_account=config.max_characters_per_account if config else 3)
        # Étape 9 : couche de persistance optionnelle (SQLite, schéma T4C.mdb).
        self.persistence: Persistence | None = None
        if config and config.database_path:
            self.persistence = Persistence(config.database_path)
            for account, characters in self.persistence_accounts().items():
                for character in characters:
                    self.characters._by_account.setdefault(account.casefold(), []).append(character)
        # Carte/collisions (PLAN 2.1) : grille de passabilité par monde.
        self.world_map = WorldMap(getattr(config, "maps_dir", None) if config else None)

    def persistence_accounts(self) -> dict[str, list]:
        if self.persistence is None:
            return {}
        accounts: dict[str, list] = {}
        for row in self.persistence._db.execute("SELECT Account FROM T4Cusers"):
            acct = row["Account"]
            accounts[acct] = self.persistence.characters(acct)
        return accounts

    def connection_made(self, transport: asyncio.BaseTransport) -> None:
        self.transport = transport  # type: ignore[assignment]
        sockname = transport.get_extra_info("sockname")
        log.info("Serveur UDP T4C à l’écoute sur %s:%s", *sockname[:2])
        # Boucle de maintenance : retransmission SAFE (PLAN 5.1) + sessions
        # mortes (PLAN 5.2).
        self._maintenance_task = asyncio.create_task(self._maintenance_loop())

    async def _maintenance_loop(self) -> None:
        """Tâche périodique : retransmet les SAFE non acquittés, purge les sessions mortes."""
        while True:
            await asyncio.sleep(0.125)
            now = time.monotonic()
            for session in list(self.sessions.values()):
                self._retransmit_pending(session, now)
            self._cleanup_sessions(now)

    def _retransmit_pending(self, session: ClientSession, now: float) -> None:
        """PLAN 5.1 : renvoie les paquets SAFE sans ACK (intervalle configuré,
        max `safe_max_retries` essais puis abandon façon PacketLost)."""
        cfg = self.config
        for seq, entry in list(session.pending_safe.items()):
            datagram, last_sent, retries = entry
            if now - last_sent < cfg.safe_retransmit_interval:
                continue
            if retries >= cfg.safe_max_retries:
                del session.pending_safe[seq]
                log.warning(
                    "PacketLost seq=%u peer=%s:%d après %d essais",
                    seq, session.address[0], session.address[1], retries,
                )
                continue
            entry[1] = now
            entry[2] = retries + 1
            self.send_datagram(
                session.address, datagram, count_application_packet=False
            )
            log.info(
                "TX-RETX %s:%d seq=%u essai=%d",
                session.address[0], session.address[1], seq, retries + 1,
            )

    def _cleanup_sessions(self, now: float) -> None:
        """PLAN 5.2 : session sans trafic depuis `session_timeout` secondes ->
        retrait du monde (paquet 11 diffusé) puis suppression."""
        from .session import SessionState
        from . import world as _world

        for addr, session in list(self.sessions.items()):
            if now - session.last_seen_at <= self.config.session_timeout:
                continue
            if session.state is SessionState.IN_WORLD and session.unit_id is not None:
                _world.broadcast_object_removed(self, session)
            log.info(
                "session expirée %s:%d (inactif depuis %.0fs, état=%s)",
                addr[0], addr[1], now - session.last_seen_at, session.state.name,
            )
            del self.sessions[addr]

    def datagram_received(self, data: bytes, addr: Address) -> None:
        session = self.sessions.get(addr)
        if session is None:
            session = ClientSession(address=addr)
            self.sessions[addr] = session
            log.info("nouveau client UDP %s:%d", *addr)

        session.last_seen_at = time.monotonic()
        session.received_packets += 1

        # Layer 1: the 12-byte T4C communication/UDP envelope.
        try:
            transport_packet = decode_transport(data)
        except T4CTransportError as exc:
            log.warning(
                "invalid transport datagram from %s:%d len=%d error=%s raw=%s",
                addr[0],
                addr[1],
                len(data),
                exc,
                data.hex(" "),
            )
            return

        log.debug(
            "RX-TRANSPORT %s:%d flags=0x%04X seq=%u group=%u len=%d payload=%dB",
            addr[0],
            addr[1],
            transport_packet.flags,
            transport_packet.sequence,
            transport_packet.fragment_group,
            transport_packet.declared_length,
            len(transport_packet.payload),
        )

        # ACKs are consumed by the transport layer and never reach TFCPacket.
        if transport_packet.is_ack:
            session.received_acks += 1
            # L'ACK acquitte un paquet SAFE en attente de retransmission.
            acked = session.pending_safe.pop(transport_packet.sequence, None)
            log.info(
                "RX-ACK %s:%d seq=%u stamp=0x%08X pending_restant=%d",
                addr[0],
                addr[1],
                transport_packet.sequence,
                transport_packet.fragment_group,
                len(session.pending_safe),
            )
            return

        # SAFE packets must be acknowledged even if the application payload is
        # malformed. This is what stops the client retransmitting the same query.
        if transport_packet.is_safe:
            ack = encode_ack(transport_packet.sequence)
            self.send_datagram(addr, ack, count_application_packet=False)
            log.info(
                "TX-ACK %s:%d seq=%u",
                addr[0],
                addr[1],
                transport_packet.sequence,
            )

        # Fragment reassembly is a later milestone. The first real client packet
        # (MOTD) is ordinary/unfragmented.
        if transport_packet.flags & FLAG_FRAGMENTED:
            log.warning(
                "fragmented transport packet not implemented yet: peer=%s:%d "
                "seq=%u fragment=%u group=%u",
                addr[0],
                addr[1],
                transport_packet.sequence,
                transport_packet.fragment_index,
                transport_packet.fragment_group,
            )
            return

        if not transport_packet.payload:
            log.warning(
                "non-ACK transport packet without application payload from %s:%d",
                addr[0],
                addr[1],
            )
            return

        # Layer 2: encrypted TFCPacket.
        try:
            packet = decode_datagram(transport_packet.payload)
        except T4CProtocolError as exc:
            log.warning(
                "invalid TFCPacket from %s:%d seq=%u len=%d error=%s app_raw=%s",
                addr[0],
                addr[1],
                transport_packet.sequence,
                len(transport_packet.payload),
                exc,
                transport_packet.payload.hex(" "),
            )
            return

        log.info(
            "RX %s:%d seq=%u id=%d/0x%04X %-24s state=%s seed=0x%04X body=%dB "
            "checksum=0x%04X body_hex=%s",
            addr[0],
            addr[1],
            transport_packet.sequence,
            packet.packet_id,
            packet.packet_id,
            packet_name(packet.packet_id),
            session.state.name,
            packet.seed,
            len(packet.body),
            packet.checksum,
            packet.body.hex(" "),
        )

        task = asyncio.create_task(self._dispatch(session, packet))
        task.add_done_callback(self._task_done)

    async def _dispatch(self, session: ClientSession, packet: DecodedPacket) -> None:
        handled = await self.dispatcher.dispatch(self, session, packet)
        if not handled:
            log.info(
                "paquet non géré id=%d/0x%04X (%s), corps=%s",
                packet.packet_id,
                packet.packet_id,
                packet_name(packet.packet_id),
                packet.body.hex(" "),
            )

    @staticmethod
    def _task_done(task: asyncio.Task[None]) -> None:
        try:
            task.result()
        except Exception:
            log.exception("échec du handler de paquet")

    def send_datagram(
        self,
        address: Address,
        datagram: bytes,
        *,
        count_application_packet: bool = True,
    ) -> None:
        if self.transport is None:
            raise RuntimeError("server transport is not ready")
        self.transport.sendto(datagram, address)
        session = self.sessions.get(address)
        if session is not None and count_application_packet:
            session.sent_packets += 1
        log.debug(
            "TX-UDP %s:%d len=%d raw=%s",
            address[0],
            address[1],
            len(datagram),
            datagram.hex(" "),
        )

    def send_packet(
        self,
        address: Address,
        writer: PacketWriter,
        *,
        seed: int | None = None,
        reliable: bool = True,
    ) -> None:
        session = self.sessions.get(address)
        if session is None:
            # Handler unit tests can call send_packet with a standalone session.
            # A sequence of zero is valid; real network peers always have a session.
            sequence = 0
        else:
            sequence = session.next_send_sequence
            session.next_send_sequence = (sequence + 1) & 0xFFFFFFFF

        app_datagram = writer.to_datagram(seed=seed)
        wire_datagram = encode_transport(
            app_datagram,
            sequence=sequence,
            safe=reliable,
        )
        # Les paquets SAFE sont suivis pour retransmission jusqu'à l'ACK (PLAN 5.1).
        if reliable and session is not None:
            session.pending_safe[sequence] = [wire_datagram, time.monotonic(), 0]

        log.info(
            "TX %s:%d seq=%u id=%d/0x%04X %-24s body=%dB reliable=%s",
            address[0],
            address[1],
            sequence,
            writer.packet_id,
            writer.packet_id,
            packet_name(writer.packet_id),
            len(writer.body),
            reliable,
        )
        self.send_datagram(address, wire_datagram)

    def error_received(self, exc: Exception) -> None:
        log.warning("erreur transport UDP : %s", exc)
