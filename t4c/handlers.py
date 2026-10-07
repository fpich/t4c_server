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

from .characters import Character
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
        self.register(PacketID.CREATE_PLAYER, handle_create_player)
        self.register(PacketID.TOGGLE_PAGE, handle_toggle_page)
        self.register(PacketID.PUT_PLAYER_IN_GAME, handle_put_player_in_game)
        self.register(
            PacketID.FROM_PREINGAME_TO_INGAME,
            handle_from_preingame_to_ingame,
        )
        self.register(
            PacketID.MAX_CHARACTERS_PER_ACCOUNT_INFO,
            handle_max_characters_per_account_info,
        )

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
    """Requête 26 : liste des personnages du compte.

    Le serveur original envoie d'abord le paquet 103 (nombre maximal de
    personnages par compte) pour piloter l'option « Nouveau personnage »,
    puis sérialise la liste ainsi :
      u8 count
      répété count fois : u8 name_len, name, i16 race, i16 level
    """
    session.character_list_requests += 1
    if packet.body:
        log.debug(
            "requête 26 de %s avec %d octet(s) inattendu(s) : %s",
            session.address,
            len(packet.body),
            packet.body.hex(" "),
        )
    max_writer = PacketWriter(PacketID.MAX_CHARACTERS_PER_ACCOUNT_INFO)
    max_writer.write_u8(server.characters.max_per_account)
    server.send_packet(session.address, max_writer)
    characters = (
        server.characters.characters(session.account) if session.account else []
    )
    response = PacketWriter(PacketID.GET_PERSONAL_PC_LIST)
    response.write_u8(len(characters))
    for character in characters:
        encoded = character.name.encode("cp1252")
        response.write_u8(len(encoded)).write_bytes(encoded)
        response.write_i16(character.race)
        response.write_i16(character.level)
    server.send_packet(session.address, response)
    log.info(
        "PERSONNAGES client=%s compte=%r nombre=%d max=%d requêtes=%d",
        session.address,
        session.account,
        len(characters),
        server.characters.max_per_account,
        session.character_list_requests,
    )


async def handle_max_characters_per_account_info(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 103 : nombre maximal de personnages par compte (u8)."""
    response = PacketWriter(PacketID.MAX_CHARACTERS_PER_ACCOUNT_INFO)
    response.write_u8(server.characters.max_per_account)
    server.send_packet(session.address, response)


async def handle_create_player(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 25 : création d'un personnage.

    Format confirmé depuis le gestionnaire RQ_CreatePlayer original :
      requête  = 6 × u8 réponses du questionnaire, u8 name_len, name
      réponse  = u8 résultat, puis Character::packet_stats :
                 i8 AGI, i8 END, i8 INT, i8 luck, i8 STR, i8 wil, i8 WIS,
                 i32 max HP, i32 HP, i16 max mana, i16 mana
    Le résultat 0 est la branche succès du serveur original ; les autres
    valeurs signalent les échecs de création (état, nom, quota).
    """
    session.create_player_requests += 1
    reader = PacketReader(packet.body)
    try:
        answers = tuple(reader.read_u8() for _ in range(6))
        name = reader.read_pascal_u8_text()
    except T4CProtocolError as exc:
        log.warning("requête 25 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    result = 0
    if session.state is not SessionState.CHARACTER_MENU or not session.account:
        result = 1
    elif not _name_is_syntactically_valid(name):
        result = 2
    elif (
        server.characters.name_exists(name)
        or name.casefold() in server.reserved_names
    ):
        result = 3
    elif (
        len(server.characters.characters(session.account))
        >= server.characters.max_per_account
    ):
        result = 4
    character = None
    if result == 0:
        character = Character(name=name, answers=answers)
        if not server.characters.create(session.account, character):
            result = 3
            character = None
    response = PacketWriter(PacketID.CREATE_PLAYER)
    response.write_u8(result)
    if character is not None:
        session.active_character = character.name
        response.write_i8(character.agi)
        response.write_i8(character.end)
        response.write_i8(character.intelligence)
        response.write_i8(0)
        response.write_i8(character.strength)
        response.write_i8(0)
        response.write_i8(character.wisdom)
        response.write_i32(character.max_hp)
        response.write_i32(character.hp)
        response.write_i16(character.max_mana)
        response.write_i16(character.mana)
    server.send_packet(session.address, response)
    log.info(
        "CRÉATION nom=%r compte=%r résultat=%d client=%s",
        name,
        session.account,
        result,
        session.address,
    )


async def handle_toggle_page(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 89 (RQ_TogglePage) : bascule d'affichage d'une page.

    Confirmé depuis le gestionnaire original : un seul u8 d'état, le serveur
    n'envoie aucune réponse applicative (l'ACK transport suffit).
    """
    session.toggle_page_requests += 1
    reader = PacketReader(packet.body)
    try:
        new_state = reader.read_u8()
    except T4CProtocolError as exc:
        log.warning("requête 89 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    session.page_toggled = bool(new_state)
    log.info(
        "PAGE bascule client=%s état=%s requêtes=%d (aucune réponse applicative)",
        session.address,
        session.page_toggled,
        session.toggle_page_requests,
    )


def _write_ingame_stats(
    writer: "PacketWriter", character: "Character", unit_id: int
) -> None:
    """Sérialise la charge utile de RQ_PutPlayerInGame (format original).

    u8 résultat, i32 ID unité, i16 X, i16 Y, i16 monde,
    i32 HP, i32 HP max, i16 mana, i16 mana max,
    i32 XP hi, i32 XP lo, i32 XP prochain niveau hi/lo,
    i16 STR, i16 END, i16 AGI, i16 wil, i16 WIS, i16 INT, i16 luck,
    heure (6 champs comme GET_TIME), i32 or, i16 niveau,
    i32 XP niveau précédent hi/lo.
    """
    from datetime import datetime

    now = datetime.now()
    writer.write_u8(0)  # résultat : 0 = chargé
    writer.write_i32(unit_id)
    writer.write_i16(0)  # X
    writer.write_i16(0)  # Y
    writer.write_i16(0)  # monde
    writer.write_i32(character.hp)
    writer.write_i32(character.max_hp)
    writer.write_i16(character.mana)
    writer.write_i16(character.max_mana)
    writer.write_i32(0)  # XP hi
    writer.write_i32(0)  # XP lo
    writer.write_i32(0)  # XP prochain niveau hi
    writer.write_i32(0)  # XP prochain niveau lo
    writer.write_i16(character.strength)
    writer.write_i16(character.end)
    writer.write_i16(character.agi)
    writer.write_i16(0)  # wil
    writer.write_i16(character.wisdom)
    writer.write_i16(character.intelligence)
    writer.write_i16(0)  # luck
    writer.write_i8(now.second)
    writer.write_i8(now.minute)
    writer.write_i8(now.hour)
    writer.write_i8(now.weekday())
    writer.write_i8(now.day)
    writer.write_i8(now.month)
    writer.write_i16(now.year)
    writer.write_i32(0)  # or
    writer.write_i16(character.level)
    writer.write_i32(0)  # XP niveau précédent hi
    writer.write_i32(0)  # XP niveau précédent lo


async def handle_put_player_in_game(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 13 : charger un personnage et entrer en pré-jeu.

    Confirmé depuis AsyncRQFUNC_PutPlayerInGame original :
      requête  = u8 name_len, name
      réponse  = u8 résultat (0 = chargé), puis _write_ingame_stats
    En cas d'échec le serveur original n'envoie que l'u8 résultat non nul.
    """
    session.put_in_game_requests += 1
    reader = PacketReader(packet.body)
    try:
        name = reader.read_pascal_u8_text()
    except T4CProtocolError as exc:
        log.warning("requête 13 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    character = None
    if session.account:
        for candidate in server.characters.characters(session.account):
            if candidate.name.casefold() == name.casefold():
                character = candidate
                break
    if character is None:
        response = PacketWriter(PacketID.PUT_PLAYER_IN_GAME)
        response.write_u8(1)  # échec de chargement
        server.send_packet(session.address, response)
        log.info(
            "MONDE chargement refusé nom=%r compte=%r client=%s",
            name,
            session.account,
            session.address,
        )
        return
    session.active_character = character.name
    session.unit_id = (session.unit_id or 0) + 1
    session.state = SessionState.PRE_INGAME
    response = PacketWriter(PacketID.PUT_PLAYER_IN_GAME)
    _write_ingame_stats(response, character, session.unit_id)
    server.send_packet(session.address, response)
    log.info(
        "MONDE personnage chargé nom=%r compte=%r ID=%d client=%s -> %s",
        character.name,
        session.account,
        session.unit_id,
        session.address,
        session.state.name,
    )


async def handle_from_preingame_to_ingame(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 46 : confirmation d'entrée en jeu.

    Confirmé depuis RQFUNC_FromPreInGameToInGame original : la réponse est
    u8 résultat (0 = OK, 1 = déjà en jeu). La liste des unités en vue
    (packet_inview_units) est vide dans notre monde de développement,
    le serveur original n'envoie alors que l'u8 résultat.
    """
    session.enter_world_requests += 1
    if session.state is SessionState.PRE_INGAME:
        result = 0
        session.state = SessionState.IN_WORLD
    elif session.state is SessionState.IN_WORLD:
        result = 1
    else:
        result = 1
    response = PacketWriter(PacketID.FROM_PREINGAME_TO_INGAME)
    response.write_u8(result)
    server.send_packet(session.address, response)
    log.info(
        "MONDE entrée en jeu client=%s perso=%r résultat=%d -> %s",
        session.address,
        session.active_character,
        result,
        session.state.name,
    )
