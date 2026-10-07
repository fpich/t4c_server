"""Confirmed pre-session T4C 1.25 request handlers.

The legacy dispatcher accepts requests 14, 45, 65, 66, 90 and 91 before a
Players instance exists. Their roles and basic serialization were recovered
statically from the original T4C Server.exe.
"""

from __future__ import annotations

from collections.abc import Awaitable, Callable
from datetime import datetime
import logging
import re
from typing import TYPE_CHECKING

from .codec import DecodedPacket, PacketReader, PacketWriter, T4CProtocolError
from .protocol import PacketID
from .session import SessionState

if TYPE_CHECKING:
    from .server import T4CServerProtocol
    from .session import ClientSession

log = logging.getLogger("t4c.handlers")
PacketHandler = Callable[["T4CServerProtocol", "ClientSession", DecodedPacket], Awaitable[None]]


class PacketDispatcher:
    def __init__(self) -> None:
        self._handlers: dict[int, PacketHandler] = {}
        self.register(PacketID.REGISTER_ACCOUNT, handle_register_account)
        self.register(PacketID.GET_TIME, handle_get_time)
        self.register(PacketID.QUERY_SERVER_VERSION, handle_query_server_version)
        self.register(PacketID.MESSAGE_OF_THE_DAY, handle_motd)
        self.register(PacketID.QUERY_NAME_EXISTENCE, handle_query_name_existence)
        self.register(PacketID.QUERY_PATCH_SERVER_INFO, handle_query_patch_server_info)
        self.register(PacketID.AUTHENTICATE_SERVER_VERSION, handle_authenticate_server_version)
        self.register(PacketID.EXIT_GAME, handle_exit_game)
        self.register(PacketID.GET_PERSONAL_PC_LIST, handle_get_personal_pc_list)

    def register(self, packet_id: int, handler: PacketHandler) -> None:
        packet_id = int(packet_id)
        if not 0 <= packet_id <= 0xFFFF:
            raise ValueError("packet id must fit in u16")
        if packet_id in self._handlers:
            raise ValueError(f"handler already registered for 0x{packet_id:04X}")
        self._handlers[packet_id] = handler

    async def dispatch(
        self,
        server: "T4CServerProtocol",
        session: "ClientSession",
        packet: DecodedPacket,
    ) -> bool:
        handler = self._handlers.get(packet.packet_id)
        if handler is None:
            return False
        await handler(server, session, packet)
        return True


def _ensure_consumed(reader: PacketReader, packet_id: int) -> None:
    if reader.remaining:
        log.debug(
            "packet %d has %d trailing byte(s) after known fields",
            packet_id,
            reader.remaining,
        )


async def handle_register_account(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Request 14: account authentication/registration handshake.

    Confirmed request body:
        u8 account_len, account bytes,
        u8 password_len, password bytes,
        i16 field_1, i16 field_2

    Confirmed response body:
        u8 result, CString message

    The original account backend can be ODBC/RADIUS.  For protocol bring-up we
    deliberately replace it with a local development authenticator.
    """
    session.auth_requests += 1
    reader = PacketReader(packet.body)
    try:
        account = reader.read_pascal_u8_text()
        password = reader.read_pascal_u8_text()
        field_1 = reader.read_i16()
        field_2 = reader.read_i16()
    except T4CProtocolError as exc:
        log.warning("malformed request 14 from %s: %s", session.address, exc)
        return

    _ensure_consumed(reader, packet.packet_id)
    cfg = server.config
    accepted = bool(account) and (
        cfg.accept_any_login or (account == cfg.account and password == cfg.password)
    )

    response = PacketWriter(PacketID.REGISTER_ACCOUNT)
    if accepted:
        # In the original auth path, result 0 is the agreement/success branch.
        response.write_u8(0).write_text("Authentification acceptée.")
        session.state = SessionState.AUTHENTICATED
        session.account = account
        session.client_field_1 = field_1
        session.client_field_2 = field_2
        log.info(
            "AUTH compte accepté=%r client=%s champs=(%d,%d)",
            account,
            session.address,
            field_1,
            field_2,
        )
    else:
        # The original code uses result 1 for an account/load failure path.
        response.write_u8(1).write_text("Compte ou mot de passe invalide.")
        log.info("AUTH compte refusé=%r client=%s", account, session.address)

    server.send_packet(session.address, response)


async def handle_get_time(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Request 45: server/game time query.

    The original reply writes six byte-sized fields followed by a short year:
    second, minute, hour, week/day marker, day, month, year.
    """
    now = datetime.now()
    response = PacketWriter(PacketID.GET_TIME)
    response.write_u8(now.second)
    response.write_u8(now.minute)
    response.write_u8(now.hour)
    response.write_u8(now.weekday())
    response.write_u8(now.day)
    response.write_u8(now.month)
    response.write_i16(now.year)
    server.send_packet(session.address, response)


async def handle_query_server_version(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Request 65: server version plus configured endpoint list."""
    cfg = server.config
    response = PacketWriter(PacketID.QUERY_SERVER_VERSION)
    response.write_u32(cfg.server_version & 0xFFFFFFFF)
    response.write_u16(len(cfg.server_endpoints))
    for endpoint in cfg.server_endpoints:
        response.write_u16(endpoint.port or 11679)
        response.write_text(endpoint.host)
    server.send_packet(session.address, response)


async def handle_motd(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Request 66: Message Of The Day, returned as one CString."""
    session.motd_requests += 1
    response = PacketWriter(PacketID.MESSAGE_OF_THE_DAY)
    response.write_text(server.config.motd)
    server.send_packet(session.address, response)
    if session.state is SessionState.NEW:
        session.state = SessionState.FRONTEND
    log.info(
        "AMORÇAGE MOTD envoyé client=%s requêtes=%d -> état=%s; "
        "attente de l’action du client (généralement 91/14)",
        session.address,
        session.motd_requests,
        session.state.name,
    )


def _name_is_syntactically_valid(name: str) -> bool:
    # This is intentionally conservative and replaceable. The packet semantics
    # (2 invalid / 1 exists / 0 available) are confirmed; the complete original
    # Character::IsNameValid policy will be recovered separately.
    return bool(re.fullmatch(r"[A-Za-zÀ-ÿ][A-Za-zÀ-ÿ '\-]{1,23}", name))


async def handle_query_name_existence(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Request 90: query whether a character name is usable.

    Confirmed response codes from the original callback:
      0 = syntactically valid and not found
      1 = name already exists
      2 = invalid name / invalid request
    """
    reader = PacketReader(packet.body)
    try:
        name = reader.read_text()
    except T4CProtocolError:
        result = 2
    else:
        _ensure_consumed(reader, packet.packet_id)
        if not _name_is_syntactically_valid(name):
            result = 2
        elif name.casefold() in server.reserved_names:
            result = 1
        else:
            result = 0

    response = PacketWriter(PacketID.QUERY_NAME_EXISTENCE)
    response.write_u8(result)
    server.send_packet(session.address, response)


async def handle_query_patch_server_info(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Request 91: patch/update server metadata.

    The original reply is: u32 version, four CStrings, u16 default language.
    """
    session.patch_info_requests += 1
    cfg = server.config
    response = PacketWriter(PacketID.QUERY_PATCH_SERVER_INFO)
    response.write_u32(cfg.server_version & 0xFFFFFFFF)
    response.write_text(cfg.patch_info_1)
    response.write_text(cfg.patch_info_2)
    response.write_text(cfg.patch_info_3)
    response.write_text(cfg.patch_info_4)
    response.write_u16(cfg.default_language & 0xFFFF)
    server.send_packet(session.address, response)
    if session.state is SessionState.NEW:
        session.state = SessionState.FRONTEND
    log.info(
        "AMORÇAGE infos patch envoyées client=%s requêtes=%d état=%s",
        session.address,
        session.patch_info_requests,
        session.state.name,
    )


async def handle_authenticate_server_version(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Request 99: authenticate the game protocol/client version.

    Recovered from the original 1.25-era T4C Server.exe:
      request body  = u32 client version
      response body = u32 1 when it exactly matches the configured version,
                      u32 0 otherwise

    The real 1.25 French client captured during bring-up sends 125 (0x7D).
    """
    session.version_auth_requests += 1
    reader = PacketReader(packet.body)
    try:
        client_version = reader.read_u32()
    except T4CProtocolError as exc:
        log.warning("malformed request 99 from %s: %s", session.address, exc)
        return

    _ensure_consumed(reader, packet.packet_id)
    accepted = client_version == (server.config.protocol_version & 0xFFFFFFFF)
    session.client_protocol_version = client_version
    session.protocol_version_accepted = accepted

    response = PacketWriter(PacketID.AUTHENTICATE_SERVER_VERSION)
    response.write_u32(1 if accepted else 0)
    server.send_packet(session.address, response)

    log.info(
        "VERSION client=%u attendue=%u acceptée=%s pair=%s",
        client_version,
        server.config.protocol_version,
        accepted,
        session.address,
    )


async def handle_exit_game(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 20 : quitter le personnage / revenir à un état sans personnage actif.

    Le handler du serveur 1.25 original ne renvoie pas de paquet applicatif au
    demandeur. Il marque la sortie et, si un personnage était réellement dans
    le monde, diffuse sa disparition aux autres joueurs. Le transport SAFE a
    déjà été acquitté par la couche UDP avant d'arriver ici.

    Dans notre phase menu juste après le paquet 99, cette requête sert donc de
    remise à zéro propre : le compte reste authentifié, mais aucun personnage
    n'est considéré actif.
    """
    session.exit_game_requests += 1
    if packet.body:
        log.debug(
            "requête 20 avec %d octet(s) inattendu(s) client=%s corps=%s",
            len(packet.body),
            session.address,
            packet.body.hex(" "),
        )

    session.active_character = None
    session.state = SessionState.CHARACTER_MENU
    log.info(
        "MENU sortie personnage client=%s requêtes=%d -> état=%s; "
        "aucune réponse applicative (comportement 1.25 original)",
        session.address,
        session.exit_game_requests,
        session.state.name,
    )


async def handle_get_personal_pc_list(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Request 26: return the account's character list.

    The original server serializes the response as:
      u8 count
      repeated count times:
        u8 name_len, name bytes, u16 field_a, u16 field_b

    Persistence/character creation is the next milestone.  For now an
    authenticated development account owns zero characters, which is a valid
    response and lets the stock client advance to its character-creation UI.
    """
    session.character_list_requests += 1
    if packet.body:
        log.debug(
            "request 26 from %s unexpectedly carries %d body byte(s): %s",
            session.address,
            len(packet.body),
            packet.body.hex(" "),
        )

    response = PacketWriter(PacketID.GET_PERSONAL_PC_LIST)
    response.write_u8(0)
    server.send_packet(session.address, response)

    log.info(
        "PERSONNAGES client=%s nombre=0 requêtes=%d version_ok=%s",
        session.address,
        session.character_list_requests,
        session.protocol_version_accepted,
    )
