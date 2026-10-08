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

from .characters import PLAYER_FEMALE_PUPPET, PLAYER_PUPPET, START_POS, Character
from .items import EQUIPMENT_SLOT_ORDER, Inventory, Item, starting_inventory
from .codec import DecodedPacket, PacketReader, PacketWriter, T4CProtocolError
from .protocol import PacketID
from .session import SessionState
from . import world

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
        for move_id in MOVE_OFFSETS:
            self.register(move_id, handle_player_move)
        self.register(PacketID.GET_PLAYER_POS, handle_player_move)
        self.register(PacketID.DELETE_PLAYER, handle_delete_player)
        self.register(PacketID.GET_SKILL_LIST, handle_get_skill_list)
        self.register(
            PacketID.SEND_TRAIN_SKILL_LIST, handle_send_train_skill_list
        )
        self.register(PacketID.GET_NEAR_ITEMS, handle_get_near_items)
        self.register(
            PacketID.GET_ONLINE_PLAYER_LIST, handle_get_online_player_list
        )
        self.register(
            PacketID.MAX_CHARACTERS_PER_ACCOUNT_INFO,
            handle_max_characters_per_account_info,
        )
        self.register(PacketID.VIEW_BACKPACK, handle_view_backpack)
        self.register(PacketID.VIEW_EQUIPED, handle_view_equiped)
        self.register(PacketID.EQUIP_ITEM, handle_equip_item)
        self.register(PacketID.UNEQUIP_SLOT, handle_unequip_slot)
        self.register(PacketID.USE_ITEM, handle_use_item)
        self.register(PacketID.USE_SPELL_UNIT, handle_use_spell_unit)
        self.register(PacketID.USE_SKILL_UNIT, handle_use_skill_unit)
        self.register(PacketID.ITEM_NAME_REQUEST, handle_item_name_request)
        self.register(PacketID.LOCAL_TALK_REQUEST, handle_local_talk)
        self.register(
            PacketID.PUPPET_INFORMATION, handle_puppet_information_request
        )
        self.register(PacketID.GET_STATUS, handle_get_status)

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
    # Diffusion multi-joueurs : les autres sessions voient le joueur disparaître
    # (paquet 11) avant la remise à zéro de la session.
    if session.state is SessionState.IN_WORLD:
        world.broadcast_object_removed(server, session)
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
    # Trace réelle (VM, étape 7 révisée) : le client envoie le 25 alors que la
    # session est AUTHENTICATED — le passage en CHARACTER_MENU (paquet 20)
    # est automatique et silencieux côté client. On accepte la création dès
    # que le compte est authentifié ; refus seulement sans compte.
    if not session.account:
        result = 1
    elif session.state not in (SessionState.AUTHENTICATED, SessionState.CHARACTER_MENU):
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
        # Apparence : confirmée dans Character::CreateCharacter original.
        # Les réponses 0-4 (guerrier/mage/voleur/prêtre/normal) pondèrent
        # l'apparence ; la réponse 5 est le genre (GENDER_MALE=0? -> selon
        # la trace, réponse 5 = 1 dans les deux runs). Le client 1.25 FR
        # envoie : 01 02 00 00 01 00 (run 22:01) — réponse[5]=0 => homme.
        gender = answers[5] if len(answers) > 5 else 0
        appearance = (
            PLAYER_FEMALE_PUPPET if gender == 1 else PLAYER_PUPPET
        )
        character = Character(name=name, race=appearance, answers=answers)
        if not server.characters.create(session.account, character):
            result = 3
            character = None
        elif server.persistence is not None:
            server.persistence.save_character(session.account, character)
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
    writer: "PacketWriter",
    character: "Character",
    unit_id: int,
    x: int = START_POS[0],
    y: int = START_POS[1],
    world: int = START_POS[2],
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
    writer.write_i16(x)
    writer.write_i16(y)
    writer.write_i16(world)
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
    session.unit_id = server.next_unit_id
    server.next_unit_id += 1
    session.state = SessionState.PRE_INGAME
    # Inventaire : chargé depuis la persistance, sinon inventaire de création.
    session.inventory = None
    _session_inventory(server, session)
    # Position de départ officielle (Character.cpp:117) ; remplacée par la
    # position persistée si elle existe. (0,0,0) est hors carte -> crash
    # du client à l'affichage du monde.
    session.pos_x, session.pos_y, session.pos_world = START_POS
    if server.persistence is not None:
        pos = server.persistence.position(character.name)
        if pos is not None:
            session.pos_x, session.pos_y, session.pos_world = pos
    # Une position persistée hors bornes (ex. y négatif d'une session
    # précédente) est invalide pour le client : x/y sont lus en u16 et
    # bornés à 0x0C00. On recale sur la position de départ officielle.
    if not (0 <= session.pos_x <= 0x0C00 and 0 <= session.pos_y <= 0x0C00):
        log.warning(
            "position persistée hors bornes (%d,%d) -> retour à START_POS",
            session.pos_x,
            session.pos_y,
        )
        session.pos_x, session.pos_y, session.pos_world = START_POS
    response = PacketWriter(PacketID.PUT_PLAYER_IN_GAME)
    _write_ingame_stats(
        response,
        character,
        session.unit_id,
        session.pos_x,
        session.pos_y,
        session.pos_world,
    )
    server.send_packet(session.address, response)
    # Désassemblage 1.25 : AsyncRQFUNC_PutPlayerInGame (@ 0x47b48d) envoie
    # UNIQUEMENT la réponse 13 — pas de puppet. Le puppet (68) n'est envoyé
    # que par packet_inview_units quand des unités sont en vue.
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
    result = 0
    if session.state is SessionState.PRE_INGAME:
        session.state = SessionState.IN_WORLD
        # Flux authentique du binaire 1.25 (RQFUNC_FromPreInGameToInGame
        # @ 0x47b750) : après PutPlayerInGame réussi ->
        #   1. PacketStatus envoyé           [0x41f5a0 puis SendPlayerMessage]
        #   2. si apparence == 10011/10012 (puppet) : PacketPuppetInfo envoyé
        #      puis BroadcastPopup          [0x40faf0]
        #   3. réponse 46 (u8 résultat)
        character = None
        if session.account:
            for candidate in server.characters.characters(session.account):
                if candidate.name == session.active_character:
                    character = candidate
                    break
        if character is not None:
            status_writer = _write_status(character)
            server.send_packet(session.address, status_writer)
            if character.race in (10011, 10012):
                # Client (binaire @0x49E0AF) : u32 ID puis EXACTEMENT 8×u16
                # (8 lectures @0x49E0C9..0x49E11C). 9 champs désalignaient
                # le parseur (2 octets de trop).
                puppet = PacketWriter(PacketID.PUPPET_INFORMATION)
                puppet.write_i32(session.unit_id or 0)
                for _ in range(8):
                    puppet.write_i16(0)
                server.send_packet(session.address, puppet)
                log.info(
                    "PUPPET envoyé au 46 (apparence=%d) client=%s",
                    character.race,
                    session.address,
                )
        # Monde multi-joueurs : le nouveau joueur reçoit les unités déjà en
        # jeu (paquet 16), et les joueurs en vue le voient apparaître
        # (paquet 0x2714).
        world.send_inview_units(server, session)
        world.broadcast_unit_popup(server, session)
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


# Directions de RQ_PlayerMove (tfc_main.h / DIR::MOVE originaux).
# Le monde 2D de T4C : X croît vers l'est, Y croît vers le sud.
MOVE_OFFSETS: dict[int, tuple[int, int]] = {
    int(PacketID.MOVE_NORTH): (0, -1),
    int(PacketID.MOVE_NORTH_EAST): (1, -1),
    int(PacketID.MOVE_EAST): (1, 0),
    int(PacketID.MOVE_SOUTH_EAST): (1, 1),
    int(PacketID.MOVE_SOUTH): (0, 1),
    int(PacketID.MOVE_SOUTH_WEST): (-1, 1),
    int(PacketID.MOVE_WEST): (-1, 0),
    int(PacketID.MOVE_NORTH_WEST): (-1, -1),
}


async def handle_player_move(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requêtes 1-9 (RQ_PlayerMove / RQ_GetPlayerPos).

    Confirmé depuis RQFUNC_PlayerMove original :
      - 9 (position) : réponse i16 X, i16 Y, i16 monde, sans condition d'état.
      - 1-8 (mouvements) : uniquement si le joueur est en jeu ; le serveur
        original envoie les objets périphériques (rien dans notre monde vide)
        puis l'événement __EVENT_OBJECT_MOVED (id 1) : i16 X, i16 Y puis les
        informations de l'unité. Notre monde de développement n'ayant ni carte
        ni collisions, tout déplacement est accepté.
    """
    if packet.packet_id == int(PacketID.GET_PLAYER_POS):
        response = PacketWriter(PacketID.GET_PLAYER_POS)
        response.write_i16(session.pos_x)
        response.write_i16(session.pos_y)
        response.write_i16(session.pos_world)
        server.send_packet(session.address, response)
        log.debug(
            "POSITION client=%s (%d,%d,%d)",
            session.address,
            session.pos_x,
            session.pos_y,
            session.pos_world,
        )
        return
    if session.state is not SessionState.IN_WORLD:
        return
    dx, dy = MOVE_OFFSETS[packet.packet_id]
    session.pos_x += dx
    session.pos_y += dy
    # Bornes acceptées par le client : x/y en u16 et comparés à 0x0C00
    # (handler paquet 9 @0x49AB44 ; paquet 13 lit x/y en u16). Une position
    # négative sérialisée en u16 (ex. -3 -> 0xFFFD) fait crasher le client
    # au chargement du monde.
    session.pos_x = max(0, min(session.pos_x, 0x0C00))
    session.pos_y = max(0, min(session.pos_y, 0x0C00))
    if server.persistence is not None and session.active_character:
        server.persistence.save_position(
            session.active_character, session.pos_x, session.pos_y, session.pos_world
        )
    # Flux original du mouvement (RQFUNC_PlayerMove) :
    #   1. packet_peripheral_units(nouvelle pos) si unités -> envoi (monde vide : non)
    #   2. << __EVENT_OBJECT_MOVED(1), << X, << Y,
    #      PUIS PacketUnitInformation(self) — SANS lui le client crashe
    #      en parsant la suite du paquet !
    event = PacketWriter(1)
    event.write_i16(session.pos_x)
    event.write_i16(session.pos_y)
    # PacketUnitInformation (binaire 0x48f560) :
    #   i16 apparence, i32 ID, i8 radiance, i8 statut, i8 %HP
    event.write_i16(10011)            # apparence __PLAYER_PUPPET
    event.write_i32(session.unit_id or 0)
    event.write_i8(0)                 # radiance
    event.write_i8(0)                 # statut
    event.write_i8(100)               # %HP
    server.send_packet(session.address, event)
    # Diffusion multi-joueurs : les autres sessions en vue voient le mouvement.
    world.broadcast_object_moved(server, session)
    session.move_requests += 1
    log.info(
        "MOUVEMENT client=%s perso=%r -> (%d,%d,%d) requêtes=%d",
        session.address,
        session.active_character,
        session.pos_x,
        session.pos_y,
        session.pos_world,
        session.move_requests,
    )


async def handle_get_skill_list(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 39 : liste des compétences du personnage.

    Format confirmé depuis Character::PacketSkills original :
      i16 nombre (compétences spéciales + attaque + esquive),
      puis par entrée : i16 skillID, i8 type, i16 valeur, i16 valeur vraie,
      CString nom, CString description.
    Le monde de développement n'a pas de compétences apprises : on envoie
    les deux entrées de base (attaque et esquive) que l'original ajoute
    toujours, avec les valeurs du personnage.
    """
    session.skill_list_requests += 1
    # Désassemblage binaire 1.25 (Character::PacketSkills @ 0x41eeb3) :
    #   << 39, << (count+2), puis par entrée : << skillID, << char 0,
    #   << valeur, << valeur vraie, << CString nom, << CString desc.
    # SkillListing.h : __SKILL_DODGE = 11, __SKILL_ATTACK = 12
    # (les deux entrées de base ALWAYS envoyées par l'original).
    response = PacketWriter(PacketID.GET_SKILL_LIST)
    response.write_i16(2)  # attaque + esquive, aucune compétence apprise
    # attaque (__SKILL_ATTACK = 12)
    response.write_i16(12)
    response.write_i8(0)
    response.write_i16(10)
    response.write_i16(10)
    response.write_text("Attaque")
    response.write_text("Capacite d'attaque au corps a corps.")
    # esquive (__SKILL_DODGE = 11)
    response.write_i16(11)
    response.write_i8(0)
    response.write_i16(10)
    response.write_i16(10)
    response.write_text("Esquive")
    response.write_text("Capacite a esquiver les coups.")
    server.send_packet(session.address, response)
    log.info("COMPÉTENCES client=%s nombre=2", session.address)


async def handle_send_train_skill_list(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 40 : compétences entraînables.

    Format confirmé par le handler client @0x4994E0 :
      u16 context (points de compétence), u16 count,
      puis par entrée : u8 flags, u16 skillId, u16 valueA, u16 valueB,
      u32 costOrValue, CString name.
    Aucun PNJ entraîneur dans le monde : count = 0.
    """
    session.train_skill_requests += 1
    response = PacketWriter(PacketID.SEND_TRAIN_SKILL_LIST)
    response.write_i16(15)   # points de compétence (défaut création original)
    response.write_i16(0)    # aucune compétence entraînable
    server.send_packet(session.address, response)
    log.info("ENTRAINEMENT liste vide client=%s", session.address)


async def handle_get_near_items(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 60 : objets au sol à proximité. Monde vide : rien.

    L'original appelle packet_inview_units puis envoie RQ_GetNearItems
    sans corps supplémentaire quand il n'y a rien ; notre monde de
    développement ne contient aucun objet.
    """
    session.near_items_requests += 1
    # Flux exact de l'original (RQFUNC_GetNearItems, TFCMessagesHandler) :
    # 1) packet_inview_units -> événement __EVENT_OBJECT_APPEARED_LIST (16) :
    #    i16 nombre d'unités, puis par unité i16 X, i16 Y + informations.
    #    Monde vide : nombre = 0 — mais l'événement DOIT partir,
    #    sinon le client reste sur écran noir au chargement (commentaire
    #    original : 'Sends this to ensure player wont get stuck in a
    #    black screen when loading').
    # 2) puis le corps du 60 lui-même.
    # Désassemblage du binaire 1.25 (RQFUNC_GetNearItems @ 0x483530) :
    #   read = packet_inview_units(WL, packet, range=0x14, self)
    #   si read <= 0 : packet.Destroy(); packet << 60 (corps vide)
    #   SendPlayerMessage(packet)
    # L'événement 16 n'est envoyé QUE si des unités existent autour ;
    # notre monde de développement n'en contient aucune -> 60 corps vide,
    # exactement comme l'original.
    response = PacketWriter(PacketID.GET_NEAR_ITEMS)
    server.send_packet(session.address, response)
    log.info("VUE monde vide : 60 corps vide (comportement 1.25) client=%s", session.address)


async def handle_get_online_player_list(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 62 : RQ_SendSpellList (liste des sorts).

    tfc_main.h : #define RQ_SendSpellList 62 (et GetSkillStatPoints = 52 !).
    Format (source Character::packet_spells + binaire 0x481fb0) :
      char bUpdate (1 = mise à jour sans réaffichage),
      short mana, short maxMana,
      short nombre de sorts, puis par sort : id, points, CString nom, CString desc.
    Un nouveau personnage ne connaît aucun sort : liste vide.
    """
    session.online_list_requests += 1
    character = None
    if session.account:
        for candidate in server.characters.characters(session.account):
            if candidate.name == session.active_character:
                character = candidate
                break
    mana = character.mana if character else 30
    max_mana = character.max_mana if character else 30
    response = PacketWriter(PacketID.GET_ONLINE_PLAYER_LIST)
    response.write_u8(1)          # bUpdate : ne pas réafficher la fenêtre
    response.write_i16(mana)
    response.write_i16(max_mana)
    response.write_i16(0)         # aucun sort connu
    server.send_packet(session.address, response)
    log.info(
        "SORTS bUpdate=1 mana=%d maxMana=%d nombre=0 client=%s",
        mana,
        max_mana,
        session.address,
    )


async def handle_delete_player(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 15 : suppression d'un personnage.

    Confirmé depuis RQFUNC_DeletePlayer / AsyncRQFUNC_DeletePlayer :
      requête  = u8 name_len, name
      réponse  = u8 résultat de DeleteCharacter (0 = supprimé)

    Trace réelle : le client envoie le 15 après un clic sur le personnage
    (probablement le bouton Supprimer de l'écran de sélection). La
    suppression est implémentée : le personnage est retiré du compte,
    effacé de la persistance, et la liste renvoyée ensuite n'en contient
    plus.
    """
    session.delete_player_requests += 1
    reader = PacketReader(packet.body)
    try:
        name = reader.read_pascal_u8_text()
    except T4CProtocolError as exc:
        log.warning("requête 15 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    deleted = False
    if session.account:
        characters = server.characters.characters(session.account)
        for candidate in characters:
            if candidate.name.casefold() == name.casefold():
                characters.remove(candidate)
                deleted = True
                break
        if deleted and server.persistence is not None:
            server.persistence.delete_character(name)
    response = PacketWriter(PacketID.DELETE_PLAYER)
    response.write_u8(0 if deleted else 1)
    server.send_packet(session.address, response)
    log.info(
        "SUPPRESSION nom=%r compte=%r résultat=%s client=%s",
        name,
        session.account,
        "supprimé" if deleted else "introuvable",
        session.address,
    )


def _write_status(character: "Character") -> "PacketWriter":
    """Sérialise PacketStatus (paquet 43) — format Character::PacketStatus original.

    Ordre confirmé : i32 HP, i32 maxHP, i16 mana, i16 maxMana,
    i32 XP hi/lo, i16 AC + trueAC, i16 STR/END/AGI/wil/WIS/INT/LCK,
    i16 points de stats, i16 true STR/END/AGI/wil/WIS/INT/LCK,
    i16 niveau, i16 points de compét., i16 poids, i16 max poids, i16 karma,
    i16 trueMaxHP, i16 pouvoirs eau/terre/air/feu,
    i16 résistances eau/terre/air/feu,
    i16 true pouvoirs eau/terre/air/feu + light/dark,
    i16 true résistances eau/terre/air/feu + light/dark,
    i16 résistances light/dark.
    """
    w = PacketWriter(PacketID.GET_STATUS)
    w.write_i32(character.hp)
    w.write_i32(character.max_hp)
    w.write_i16(character.mana)
    w.write_i16(character.max_mana)
    w.write_i32(0)  # XP hi
    w.write_i32(0)  # XP lo
    for _ in range(2):  # AC + trueAC
        w.write_i16(0)
    w.write_i16(character.strength)
    w.write_i16(character.end)
    w.write_i16(character.agi)
    w.write_i16(0)  # wil
    w.write_i16(character.wisdom)
    w.write_i16(character.intelligence)
    w.write_i16(0)  # luck
    w.write_i16(0)  # points de stats
    for v in (character.strength, character.end, character.agi,
              0, character.wisdom, character.intelligence, 0):
        w.write_i16(v)  # vraies stats
    w.write_i16(character.level)
    w.write_i16(15)   # points de compétences (défaut création original)
    w.write_i16(0)    # poids
    w.write_i16(100)  # max poids
    w.write_i16(0)    # karma
    w.write_i16(character.max_hp)  # trueMaxHP
    for _ in range(4):  # pouvoirs eau/terre/air/feu
        w.write_i16(0)
    for _ in range(4):  # résistances eau/terre/air/feu
        w.write_i16(0)
    for _ in range(6):  # true pouvoirs (4 éléments + light/dark)
        w.write_i16(0)
    for _ in range(6):  # true résistances
        w.write_i16(0)
    for _ in range(2):  # résistances light/dark
        w.write_i16(0)
    return w


async def handle_get_status(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 43 (en jeu) : statut complet du personnage (PacketStatus)."""
    character = None
    if session.account:
        for candidate in server.characters.characters(session.account):
            if candidate.name == session.active_character:
                character = candidate
                break
    if character is not None:
        server.send_packet(session.address, _write_status(character))
    log.info("STATUT renvoyé (demande en jeu) client=%s", session.address)


def _session_inventory(
    server: "T4CServerProtocol", session: "ClientSession"
) -> Inventory | None:
    """Inventaire du personnage actif (memoïsé dans la session).

    Persistance d'abord ; si le personnage n'a AUCUN item en base (première
    connexion), on lui sème l'inventaire de création et on le persiste.
    """
    if session.inventory is None and session.active_character:
        if server.persistence is not None:
            stored = server.persistence.inventory(session.active_character)
            if stored is not None and (stored.backpack or stored.equipment):
                session.inventory = stored
            else:
                session.inventory = starting_inventory()
                server.persistence.save_inventory(
                    session.active_character, session.inventory
                )
        else:
            session.inventory = starting_inventory()
    return session.inventory


def _persist_inventory(
    server: "T4CServerProtocol", session: "ClientSession"
) -> None:
    if (
        server.persistence is not None
        and session.active_character
        and session.inventory is not None
    ):
        server.persistence.save_inventory(session.active_character, session.inventory)


async def handle_view_backpack(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 18 : sac à dos.

    Format confirmé par le handler client @0x49A0B6 :
      u8 headerFlag, u32 headerValue, u16 count,
      puis par objet : u16 templateField, u32 unitId,
      u16 baseField, u32 quantity, u32 uniqueData.
    """
    inventory = _session_inventory(server, session)
    response = PacketWriter(PacketID.VIEW_BACKPACK)
    response.write_u8(0)     # headerFlag
    response.write_u32(0)    # headerValue
    items = list(inventory.backpack) if inventory else []
    response.write_i16(len(items))
    for item in items:
        template = item.template
        response.write_i16(template.appearance)  # templateField
        response.write_i32(item.unit_id)
        response.write_i16(template.base_field)
        response.write_i32(item.quantity)
        response.write_u32(0)   # uniqueData (non unique)
    server.send_packet(session.address, response)
    log.info(
        "SAC À DOS %d objet(s) client=%s", len(items), session.address
    )


# Ordre fixe des slots consommés par le handler client du paquet 19
# (@0x49942B) — doit être respecté à l'identique côté serveur.
EQUIPMENT_SLOT_ORDER = (0, 2, 3, 4, 6, 7, 8, 9, 11, 12, 14, 15, 1)


def _write_empty_equipment_slot(w: PacketWriter) -> None:
    """Une entrée d'équipement vide : tous champs à zéro + CString vide.
    Format PacketSingleEquip confirmé : u32 unitId, u16 templateField,
    u16 baseField, u16 quantity, u32 uniqueData, CString displayName.
    """
    w.write_u32(0)          # unitId = 0 => slot vide
    w.write_i16(0)          # templateField
    w.write_i16(0)          # baseField
    w.write_i16(0)          # quantity
    w.write_u32(0)          # uniqueData
    w.write_text("")        # displayName


def _write_equipment_slot(w: PacketWriter, item: Item | None) -> None:
    """Une entrée d'équipement (PacketSingleEquip confirmé) :
    u32 unitId, u16 templateField, u16 baseField, u16 quantity,
    u32 uniqueData, CString displayName. item=None => entrée vide.
    """
    if item is None:
        w.write_u32(0)
        w.write_i16(0)
        w.write_i16(0)
        w.write_i16(0)
        w.write_u32(0)
        w.write_text("")
        return
    template = item.template
    w.write_u32(item.unit_id)
    w.write_i16(template.appearance)
    w.write_i16(template.base_field)
    w.write_i16(item.quantity)
    w.write_u32(0)   # uniqueData (non unique)
    w.write_text(template.name)


async def handle_view_equiped(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 19 : équipement.

    Format confirmé par le handler client @0x49942B :
      u8 rangedAttack, puis 13 entrées dans l'ordre de slots fixe
      0,2,3,4,6,7,8,9,11,12,14,15,1.
    """
    inventory = _session_inventory(server, session)
    response = PacketWriter(PacketID.VIEW_EQUIPED)
    response.write_u8(0)    # rangedAttack
    equipped = inventory.equipment if inventory else {}
    for slot in EQUIPMENT_SLOT_ORDER:
        _write_equipment_slot(response, equipped.get(slot))
    server.send_packet(session.address, response)
    log.info(
        "ÉQUIPÉ %d slot(s) occupé(s) client=%s", len(equipped), session.address
    )


async def handle_get_chatter_user_list(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 50 : utilisateurs du canal de chat courant (vide)."""
    response = PacketWriter(PacketID.GET_CHATTER_USER_LIST)
    response.write_i16(0)  # personne
    server.send_packet(session.address, response)
    log.info("CHAT utilisateurs : aucun client=%s", session.address)


async def handle_get_chatter_channel_list(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 75 : liste des canaux de chat (vide)."""
    response = PacketWriter(PacketID.GET_CHATTER_CHANNEL_LIST)
    response.write_i16(0)  # aucun canal
    server.send_packet(session.address, response)
    log.info("CHAT canaux : aucun client=%s", session.address)


# -----------------------------------------------------------------------------
# Inventaire / équipement / sorts / skills — formats confirmés par RE client
# (docs/reverse-engineering/T4CClient-pseudo-code.c, sections 15-17).
# -----------------------------------------------------------------------------


async def handle_equip_item(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 21 (client @0x434C5A) : équiper un objet du sac.

    Corps confirmé : u32 itemUnitId.
    Aucun inventaire serveur pour l'instant : la demande est acceptée
    puis ignorée (le client rafraîchira via 18/19).
    """
    reader = PacketReader(packet.body)
    try:
        item_unit_id = reader.read_u32()
    except T4CProtocolError as exc:
        log.warning("requête 21 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    inventory = _session_inventory(server, session)
    if inventory is None:
        return
    if not inventory.equip(item_unit_id):
        log.info(
            "ÉQUIPER refusé item=%d (introuvable/non équipable) client=%s",
            item_unit_id,
            session.address,
        )
        return
    _persist_inventory(server, session)
    # Le client rafraîchit son équipement depuis un 19 complet.
    await handle_view_equiped(server, session, packet)
    log.info("ÉQUIPER item=%d client=%s", item_unit_id, session.address)


async def handle_unequip_slot(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 22 (client @0x434924) : déséquiper un slot.

    Corps confirmé : u8 equipSlot (valeurs vues : 0,1,2,3,4,6,7,8,9,11,12,14,15).
    """
    reader = PacketReader(packet.body)
    try:
        slot = reader.read_u8()
    except T4CProtocolError as exc:
        log.warning("requête 22 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    inventory = _session_inventory(server, session)
    if inventory is None:
        return
    if not inventory.unequip(slot):
        log.info("DÉSÉQUIPER refusé slot=%d (vide) client=%s", slot, session.address)
        return
    _persist_inventory(server, session)
    await handle_view_equiped(server, session, packet)
    log.info("DÉSÉQUIPER slot=%d client=%s", slot, session.address)


async def handle_use_item(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 23 (client @0x434536) : utiliser un objet.

    Corps confirmé : u16 x, u16 y, u32 itemUnitId (x=y=0 pour un
    double-clic dans le sac).
    """
    reader = PacketReader(packet.body)
    try:
        x = reader.read_u16()
        y = reader.read_u16()
        item_unit_id = reader.read_u32()
    except T4CProtocolError as exc:
        log.warning("requête 23 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    inventory = _session_inventory(server, session)
    if inventory is None:
        return
    item = inventory.find(item_unit_id)
    if item is None:
        log.info("UTILISER OBJET introuvable item=%d client=%s", item_unit_id, session.address)
        return
    # Effet minimal de développement : potion de soin (template 2)
    if item.template_id == 2:
        consumed = inventory.consume(item_unit_id, 1)
        if consumed:
            _persist_inventory(server, session)
            log.info(
                "POTION utilisée item=%d (reste=%d) client=%s",
                item_unit_id,
                item.quantity,
                session.address,
            )
            return
    log.info(
        "UTILISER OBJET sans effet item=%d (%d,%d) client=%s",
        item_unit_id,
        x,
        y,
        session.address,
    )


async def handle_use_spell_unit(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 32 (client @0x455BF0) : lancer un sort sur une unité/position.

    Corps confirmé : u16 spellId, u16 targetX, u16 targetY, u32 targetUnitId.
    targetUnitId != 0 => sort ciblé sur une unité, sinon sur le sol.
    Le personnage ne connaît aucun sort : demande ignorée.
    """
    reader = PacketReader(packet.body)
    try:
        spell_id = reader.read_u16()
        x = reader.read_u16()
        y = reader.read_u16()
        target_unit_id = reader.read_u32()
    except T4CProtocolError as exc:
        log.warning("requête 32 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    log.info(
        "SORT ignoré (aucun sort connu) spell=%d cible=%d (%d,%d) client=%s",
        spell_id,
        target_unit_id,
        x,
        y,
        session.address,
    )


async def handle_use_skill_unit(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 42 (client @0x415C00) : utiliser une compétence sur une unité/position.

    Corps confirmé : u16 skillId, u16 targetX, u16 targetY, u32 targetUnitId.
    Aucune compétence utilisable en dehors d'un contexte PNJ : ignorée.
    """
    reader = PacketReader(packet.body)
    try:
        skill_id = reader.read_u16()
        x = reader.read_u16()
        y = reader.read_u16()
        target_unit_id = reader.read_u32()
    except T4CProtocolError as exc:
        log.warning("requête 42 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    log.info(
        "COMPÉTENCE ignorée skill=%d cible=%d (%d,%d) client=%s",
        skill_id,
        target_unit_id,
        x,
        y,
        session.address,
    )


async def handle_item_name_request(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 59 (client @0x433C7B) : résolution du nom d'un objet.

    Corps confirmé : u32 itemId.
    Réponse (handler client @0x49E420) : u32 itemId, u16 nameLen, bytes.
    Aucun objet dans le monde : nom vide pour ne pas bloquer le client.
    """
    reader = PacketReader(packet.body)
    try:
        item_id = reader.read_u32()
    except T4CProtocolError as exc:
        log.warning("requête 59 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    # Le client demande le nom d'un template connu : on répond avec le nom
    # du catalogue (le tooltip de l'objet l'affiche dans le sac).
    from .items import TEMPLATES

    template = TEMPLATES.get(item_id)
    name = template.name if template else ""
    response = PacketWriter(PacketID.ITEM_NAME_REQUEST)
    response.write_u32(item_id)
    response.write_text(name)
    server.send_packet(session.address, response)
    log.info(
        "NOM OBJET item=%d nom=%r client=%s", item_id, name, session.address
    )


async def handle_local_talk(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 30 (client -> serveur @0x47FC90) : parole locale.

    Corps confirmé (passe V5) : u16 x, u16 y, u32 fieldA, u8 direction,
    u32 colorOrStyle, CString text. Diffusée en S2C 27 aux joueurs en vue
    (et à l'émetteur, comme Unit::Talk côté original).
    """
    if session.state is not SessionState.IN_WORLD:
        return
    reader = PacketReader(packet.body)
    try:
        x = reader.read_u16()
        y = reader.read_u16()
        field_a = reader.read_u32()
        direction = reader.read_u8()
        style = reader.read_u32()
        text = reader.read_text()
    except T4CProtocolError as exc:
        log.warning("requête 30 malformée de %s : %s", session.address, exc)
        return
    _ensure_consumed(reader, packet.packet_id)
    if not text:
        return
    world.broadcast_unit_talk(
        server, session, text, direction=direction, style=style & 0xFF
    )


async def handle_puppet_information_request(
    server: "T4CServerProtocol", session: "ClientSession", packet: DecodedPacket
) -> None:
    """Requête 68 C2S : le client demande l'apparence puppet d'une unité.

    Observé en trace réelle : corps u32 unitId (+ 2 u16 de contexte).
    Le client boucle sur cette requête tant qu'il n'a pas l'apparence d'une
    unité visible. Réponse : le 68 S2C standard (u32 unitId + 8 u16).
    """
    reader = PacketReader(packet.body)
    try:
        unit_id = reader.read_u32()
    except T4CProtocolError as exc:
        log.warning("requête 68 malformée de %s : %s", session.address, exc)
        return
    if unit_id == 0 or unit_id == (session.unit_id or 0):
        # Le client demande son propre puppet : déjà envoyé au 46.
        return
    # Cherche la session correspondante en monde.
    for other in server.sessions.values():
        if (
            other is not session
            and other.unit_id == unit_id
            and other.state is SessionState.IN_WORLD
        ):
            puppet = PacketWriter(PacketID.PUPPET_INFORMATION)
            puppet.write_i32(unit_id)
            for _ in range(8):
                puppet.write_i16(0)
            server.send_packet(session.address, puppet)
            log.debug(
                "PUPPET demandé unité=%d -> envoyé à %s", unit_id, session.address
            )
            return
    log.debug("PUPPET demandé unité=%d introuvable client=%s", unit_id, session.address)
