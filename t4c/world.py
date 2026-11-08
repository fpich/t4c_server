"""Monde multi-joueurs : unités en vue et diffusion des événements.

Reconstruit depuis le binaire T4C Server 1.25 :
  - WorldMap::packet_inview_units @0x4B0C40 : paquet 16 (INVIEW_UNITS),
    u16 count puis par unité u16 x, u16 y + bloc PacketUnitInformation
    (u16 apparence, u32 ID, i8 radiance, u8 statut, u8 %HP).
  - Broadcast::BCPopup @0x40FAF0 : paquet 0x2714 (UNIT_POPUP),
    u16 x, u16 y + bloc PacketUnitInformation.
  - __EVENT_OBJECT_MOVED (paquet 1) : u16 x, u16 y + bloc UnitInformation.
  - Broadcast::BCObjectRemoved @0x40FC00 : paquet 11,
    u8 0, u32 unitId.

Portée de vision originale (TFCMessagesHandler RQ_GetNearItems) : range=0x14
(20 tuiles). Le popup d'apparition (0x2714) est envoyé aux joueurs qui voient
l'unité apparaître ; le retrait (11) à ceux qui la voyaient.
"""

from __future__ import annotations

from dataclasses import dataclass, field

import logging
from typing import TYPE_CHECKING

from .characters import Character
from .codec import PacketWriter
from .session import ClientSession, SessionState

if TYPE_CHECKING:
    from .server import T4CServerProtocol

log = logging.getLogger("t4c.world")

# Range de vision original (RQ_GetNearItems : packet_inview_units(range=0x14)).
VIEW_RANGE = 0x14  # 20 tuiles

# IDs de diffusion : événements monde confirmés par le désassemblage client.
EVENT_OBJECT_MOVED = 1
EVENT_OBJECT_REMOVED = 11
EVENT_UNIT_POPUP = 0x2714  # 10004
EVENT_UNIT_TALK = 27


def _write_unit_info_raw(w, appearance: int, unit_id: int, hp_percent: int = 100) -> None:
    """Bloc PacketUnitInformation brut (Unit::PacketUnitInformation @0x48F560)."""
    w.write_i16(appearance)         # apparence
    w.write_i32(unit_id)            # ID d'unité
    w.write_i8(0)                   # radiance
    w.write_u8(0)                   # statut
    w.write_u8(hp_percent)          # %HP


def _write_unit_information(w, character: Character, unit_id: int) -> None:
    """Bloc PacketUnitInformation pour un personnage."""
    _write_unit_info_raw(w, character.race, unit_id)


def _in_view(sx: int, sy: int, ox: int, oy: int, *, rng: int = VIEW_RANGE) -> bool:
    return abs(sx - ox) <= rng and abs(sy - oy) <= rng


def _other_in_world_sessions(
    server: "T4CServerProtocol", exclude: ClientSession
) -> list[ClientSession]:
    return [
        other
        for other in server.sessions.values()
        if other is not exclude
        and other.state is SessionState.IN_WORLD
        and other.unit_id is not None
    ]


def _find_character(
    server: "T4CServerProtocol", session: ClientSession
) -> Character | None:
    if not session.account:
        return None
    for candidate in server.characters.characters(session.account):
        if candidate.name == session.active_character:
            return candidate
    return None


def broadcast_unit_popup(
    server: "T4CServerProtocol", session: ClientSession
) -> None:
    """Annonce l'apparition d'un joueur aux sessions en vue.

    Deux paquets sont envoyés, comme le flux original :
      - 0x2714 UNIT_POPUP (position + UnitInformation) crée l'unité visuelle,
      - 68 PUPPET_INFORMATION (u32 unitId + 8 u16) fournit l'apparence puppet.
    Sans le 68, le client demande en boucle l'apparence et n'affiche rien.
    """
    character = _find_character(server, session)
    if character is None or session.unit_id is None:
        return
    for other in _other_in_world_sessions(server, session):
        if not _in_view(other.pos_x, other.pos_y, session.pos_x, session.pos_y):
            continue
        popup = PacketWriter(EVENT_UNIT_POPUP)
        popup.write_i16(session.pos_x)
        popup.write_i16(session.pos_y)
        _write_unit_information(popup, character, session.unit_id)
        server.send_packet(other.address, popup)
        puppet = PacketWriter(68)
        puppet.write_i32(session.unit_id)
        # Apparences réelles des items équipés (RE PacketPuppetInfo).
        for appearance in puppet_appearances(server, session):
            puppet.write_i16(appearance)
        server.send_packet(other.address, puppet)
        log.debug(
            "POPUP unité=%d vers %s (%d,%d)",
            session.unit_id,
            other.address,
            session.pos_x,
            session.pos_y,
        )


def send_inview_units(
    server: "T4CServerProtocol", session: ClientSession, *, only_if_nonempty: bool = False
) -> None:
    """Paquet 16 : liste des unités en vue d'une session qui entre en jeu.

    `only_if_nonempty` : ne rien envoyer si aucune unité n'est en vue
    (comportement de RQFUNC_GetNearItems original, qui détruit le paquet 16
    quand packet_inview_units ne lit rien).
    """
    if session.unit_id is None:
        return
    visible: list[tuple[ClientSession, Character]] = []
    for other in _other_in_world_sessions(server, session):
        if not _in_view(session.pos_x, session.pos_y, other.pos_x, other.pos_y):
            continue
        character = _find_character(server, other)
        if character is not None:
            visible.append((other, character))
    # PNJ statiques en vue (même format d'entrée que les joueurs).
    npcs = npcs_in_view(session.pos_x, session.pos_y, session.pos_world)
    # Objets au sol en vue.
    grounds = ground_items_in_view(session.pos_x, session.pos_y, session.pos_world)
    total = len(visible) + len(npcs) + len(grounds)
    if only_if_nonempty and total == 0:
        return
    response = PacketWriter(16)
    response.write_i16(total)
    for other, character in visible:
        response.write_i16(other.pos_x)
        response.write_i16(other.pos_y)
        _write_unit_information(response, character, other.unit_id or 0)
    for npc in npcs:
        response.write_i16(npc.x)
        response.write_i16(npc.y)
        _write_npc_information(response, npc)
    for ground in grounds:
        response.write_i16(ground.x)
        response.write_i16(ground.y)
        _write_item_information(response, ground)
    server.send_packet(session.address, response)
    if total:
        log.info(
            "VUE unités en vue=%d (joueurs=%d pnj=%d objets=%d) pour %s",
            total, len(visible), len(npcs), len(grounds), session.address,
        )


def broadcast_object_moved(
    server: "T4CServerProtocol", session: ClientSession
) -> None:
    """Paquet 1 (OBJECT_MOVED) : diffuse le déplacement d'un joueur aux autres."""
    character = _find_character(server, session)
    if character is None or session.unit_id is None:
        return
    for other in _other_in_world_sessions(server, session):
        if not _in_view(other.pos_x, other.pos_y, session.pos_x, session.pos_y):
            continue
        moved = PacketWriter(EVENT_OBJECT_MOVED)
        moved.write_i16(session.pos_x)
        moved.write_i16(session.pos_y)
        _write_unit_information(moved, character, session.unit_id)
        server.send_packet(other.address, moved)


def _send_unit_popup_to(
    server: "T4CServerProtocol",
    target: ClientSession,
    x: int,
    y: int,
    appearance: int,
    unit_id: int,
) -> None:
    """Paquet 0x2714 (UNIT_POPUP) vers une session précise."""
    popup = PacketWriter(EVENT_UNIT_POPUP)
    popup.write_i16(x)
    popup.write_i16(y)
    _write_unit_info_raw(popup, appearance, unit_id)
    server.send_packet(target.address, popup)


def _send_unit_removed_to(
    server: "T4CServerProtocol", target: ClientSession, unit_id: int
) -> None:
    """Paquet 11 (OBJECT_REMOVED) vers une session précise."""
    removed = PacketWriter(EVENT_OBJECT_REMOVED)
    removed.write_u8(0)
    removed.write_i32(unit_id)
    server.send_packet(target.address, removed)


def _visible_units_at(
    server: "T4CServerProtocol", x: int, y: int, world_id: int, exclude: ClientSession
) -> dict[int, tuple[int, int, int, object]]:
    """Snapshot des unités (joueurs, PNJ, objets au sol) visibles en (x, y).

    Retourne unit_id -> (x, y, apparence, objet source).
    """
    result: dict[int, tuple[int, int, int, object]] = {}
    for other in _other_in_world_sessions(server, exclude):
        if other.pos_world != world_id:
            continue
        if _in_view(x, y, other.pos_x, other.pos_y):
            character = _find_character(server, other)
            if character is not None and other.unit_id is not None:
                result[other.unit_id] = (other.pos_x, other.pos_y, character.race, other)
    for npc in npcs_in_view(x, y, world_id):
        result[npc.unit_id] = (npc.x, npc.y, npc.appearance, npc)
    for ground in ground_items_in_view(x, y, world_id):
        result[ground.unit_id] = (ground.x, ground.y, _item_appearance(ground), ground)
    return result


def sync_view_on_move(
    server: "T4CServerProtocol", session: ClientSession, old_x: int, old_y: int
) -> None:
    """PLAN 2.4 : synchronise le rayon de vue après un déplacement.

    - Unités qui entrent dans la vue du joueur qui bouge -> popup 0x2714
      (+ paquet 68 puppet pour un autre joueur).
    - Unités qui sortent de sa vue -> paquet 11.
    - Pour chaque autre joueur du monde : le personnage qui bouge entre dans
      sa vue -> popup 0x2714 ; il en sort -> paquet 11.
    """
    if session.unit_id is None or session.state is not SessionState.IN_WORLD:
        return
    world_id = session.pos_world
    new_x, new_y = session.pos_x, session.pos_y

    before = _visible_units_at(server, old_x, old_y, world_id, session)
    after = _visible_units_at(server, new_x, new_y, world_id, session)

    character = _find_character(server, session)

    # 1) Vue du joueur qui bouge.
    for unit_id, (x, y, appearance, source) in after.items():
        if unit_id in before:
            continue
        _send_unit_popup_to(server, session, x, y, appearance, unit_id)
        if isinstance(source, ClientSession):
            puppet = PacketWriter(68)
            puppet.write_i32(unit_id)
            for value in puppet_appearances(server, source):
                puppet.write_i16(value)
            server.send_packet(session.address, puppet)
    for unit_id in before:
        if unit_id not in after:
            _send_unit_removed_to(server, session, unit_id)

    # 2) Vue des autres joueurs sur le personnage qui bouge.
    if character is None:
        return
    for other in _other_in_world_sessions(server, session):
        if other.pos_world != world_id:
            continue
        saw_before = _in_view(other.pos_x, other.pos_y, old_x, old_y)
        sees_now = _in_view(other.pos_x, other.pos_y, new_x, new_y)
        if sees_now and not saw_before:
            _send_unit_popup_to(
                server, other, new_x, new_y, character.race, session.unit_id
            )
            puppet = PacketWriter(68)
            puppet.write_i32(session.unit_id)
            for value in puppet_appearances(server, session):
                puppet.write_i16(value)
            server.send_packet(other.address, puppet)
        elif saw_before and not sees_now:
            _send_unit_removed_to(server, other, session.unit_id)


def broadcast_object_removed(
    server: "T4CServerProtocol", session: ClientSession
) -> None:
    """Paquet 11 (OBJECT_REMOVED) : retire un joueur des mondes des autres."""
    if session.unit_id is None:
        return
    for other in _other_in_world_sessions(server, session):
        removed = PacketWriter(EVENT_OBJECT_REMOVED)
        removed.write_u8(0)
        removed.write_i32(session.unit_id)
        server.send_packet(other.address, removed)


def broadcast_unit_talk(
    server: "T4CServerProtocol",
    session: "ClientSession",
    text: str,
    *,
    direction: int = 0,
    style: int = 0,
) -> None:
    """S2C 27 (Unit::Talk @0x48C3E0) : diffuse la parole d'un joueur en vue.

    Format confirmé : u32 speakerUnitId, u8 direction, u32 colorOrStyle,
    u8 speakerFlag, CString text, CString speakerName.
    """
    if session.unit_id is None:
        return
    speaker_name = session.active_character or ""
    targets = [session] + [
        other
        for other in _other_in_world_sessions(server, session)
        if _in_view(other.pos_x, other.pos_y, session.pos_x, session.pos_y)
    ]
    for target in targets:
        talk = PacketWriter(EVENT_UNIT_TALK)
        talk.write_i32(session.unit_id)
        talk.write_u8(direction)
        talk.write_u32(style)
        talk.write_u8(1)  # speakerFlag : (field_73 != 1) ? 1 : 0 côté original
        talk.write_text(text)
        talk.write_text(speaker_name)
        server.send_packet(target.address, talk)
    log.info(
        "PAROLE %r de %s (%d cible(s))",
        text[:60],
        speaker_name,
        len(targets),
    )


def send_server_message(
    server: "T4CServerProtocol", session: "ClientSession", text: str
) -> None:
    """S2C 63 (SERVER_MESSAGE) : message système à un joueur.

    Valeurs standards du serveur original : catégorie=30, style=3.
    """
    message = PacketWriter(EVENT_SERVER_MESSAGE)
    message.write_i16(30)  # catégorie
    message.write_i16(3)   # style
    message.write_text(text)
    server.send_packet(session.address, message)


EVENT_SERVER_MESSAGE = 63
EVENT_GOLD_UPDATE = 53        # S2C 53 GOLD_UPDATE : u32 gold
EVENT_XP_UPDATE = 44          # S2C 44 PROGRESSION64_XP_UPDATE : u32 hi, u32 lo
EVENT_MANA_UPDATE = 67        # S2C 67 MANA_UPDATE : u16 mana
EVENT_SPELL_CASTING = 64      # S2C 64 : u16 spellId, u32 caster, u32 target, u16 xB,yB,xA,yA, u32 effectId


def send_mana_update(server: "T4CServerProtocol", session: ClientSession, mana: int) -> None:
    """S2C 67 (MANA_UPDATE) : nouveau mana du personnage."""
    packet = PacketWriter(EVENT_MANA_UPDATE)
    packet.write_u16(mana & 0xFFFF)
    server.send_packet(session.address, packet)


def broadcast_spell_casting(
    server: "T4CServerProtocol",
    spell_id: int,
    caster_unit_id: int,
    caster_x: int,
    caster_y: int,
    target_unit_id: int,
    target_x: int,
    target_y: int,
    world_id: int = 0,
    caster: ClientSession | None = None,
) -> None:
    """S2C 64 (SPELL_CASTING) : diffuse le lancement d'un sort aux joueurs en
    vue de la cible, plus au lanceur lui-même."""
    viewers = _sessions_in_view_of(server, target_x, target_y, world_id)
    if caster is not None and caster.state is SessionState.IN_WORLD and caster not in viewers:
        viewers.append(caster)
    for viewer in viewers:
        packet = PacketWriter(EVENT_SPELL_CASTING)
        packet.write_u16(spell_id)
        packet.write_u32(caster_unit_id)
        packet.write_u32(target_unit_id)
        packet.write_u16(target_x)   # posB (cible)
        packet.write_u16(target_y)
        packet.write_u16(caster_x)   # posA (lanceur)
        packet.write_u16(caster_y)
        packet.write_u32(spell_id)   # effectId
        server.send_packet(viewer.address, packet)


def send_gold_update(server: "T4CServerProtocol", session: ClientSession, gold: int) -> None:
    """S2C 53 (GOLD_UPDATE) : nouveau solde d'or du personnage."""
    packet = PacketWriter(EVENT_GOLD_UPDATE)
    packet.write_u32(gold & 0xFFFFFFFF)
    server.send_packet(session.address, packet)


def send_xp_update(server: "T4CServerProtocol", session: ClientSession, xp: int) -> None:
    """S2C 44 (PROGRESSION64_XP_UPDATE) : XP 64 bits, hi puis lo (big-endian)."""
    xp &= 0xFFFFFFFFFFFFFFFF
    packet = PacketWriter(EVENT_XP_UPDATE)
    packet.write_u32((xp >> 32) & 0xFFFFFFFF)
    packet.write_u32(xp & 0xFFFFFFFF)
    server.send_packet(session.address, packet)


# -----------------------------------------------------------------------------
# Canaux de chat (chatter) — PLAN 4.1. Formats confirmés passe V7.
# -----------------------------------------------------------------------------
# C2S 48 : CString channel, CString keyOrPassword   -> S2C 48 (corps vide ou CString erreur)
# C2S 49 : CString channel, CString message         -> S2C 49 : CString channel, CString speaker, CString message
# C2S 50 : CString channel                           -> S2C 50 : CString channel, u16 count, {CString user, CString aux, u8 listen}*
# C2S 51 : CString channel                           (quitte le canal)
# C2S 52 : (rien)                                    -> S2C 75 : u16 count, {u16 nameLen, bytes, u8 listen}*
# C2S 53 : CString channel, u8 listening             (bascule d'écoute)


@dataclass
class ChatterChannel:
    name: str
    password: str = ""                      # vide = canal public
    members: dict = field(default_factory=dict)   # address -> ClientSession
    listening: set = field(default_factory=set)   # addresses qui écoutent


_channels: dict[str, ChatterChannel] = {}


def create_channel(name: str, password: str = "") -> ChatterChannel:
    """Crée un canal (idempotent)."""
    channel = _channels.get(name.casefold())
    if channel is None:
        channel = ChatterChannel(name, password)
        _channels[name.casefold()] = channel
    return channel


def find_channel(name: str) -> ChatterChannel | None:
    return _channels.get(name.casefold())


def all_channels() -> list[ChatterChannel]:
    return list(_channels.values())


def join_channel(server: "T4CServerProtocol", session: ClientSession, name: str, key: str = "") -> ChatterChannel | None:
    """Rejoint un canal (créé à la volée en dev si inconnu). Retourne None si mot de passe faux."""
    channel = find_channel(name)
    if channel is None:
        channel = create_channel(name)
    elif channel.password and channel.password != key:
        return None
    channel.members[session.address] = session
    channel.listening.add(session.address)
    return channel


def leave_channel(server: "T4CServerProtocol", session: ClientSession, name: str) -> None:
    channel = find_channel(name)
    if channel is None:
        return
    channel.members.pop(session.address, None)
    channel.listening.discard(session.address)


def toggle_listening(session: ClientSession, name: str, listening: bool) -> None:
    channel = find_channel(name)
    if channel is None or session.address not in channel.members:
        return
    if listening:
        channel.listening.add(session.address)
    else:
        channel.listening.discard(session.address)


def send_chatter_message(
    server: "T4CServerProtocol", session: ClientSession, channel_name: str, message: str
) -> None:
    """S2C 49 : message d'un canal diffusé à ses membres qui écoutent."""
    channel = find_channel(channel_name)
    if channel is None:
        return
    speaker = session.active_character or ""
    for addr in list(channel.listening):
        member = channel.members.get(addr)
        if member is None:
            continue
        reply = PacketWriter(49)
        reply.write_text(channel.name)
        reply.write_text(speaker)
        reply.write_text(message)
        server.send_packet(addr, reply)
    log.info(
        "CHAT canal=%r %s : %r (%d membre(s) à l'écoute)",
        channel.name, speaker, message[:60], len(channel.listening),
    )


def send_channel_list(server: "T4CServerProtocol", session: ClientSession) -> None:
    """S2C 75 : liste des canaux connus de la session avec flag d'écoute."""
    listing = PacketWriter(75)
    channels = all_channels()
    listing.write_u16(len(channels))
    for channel in channels:
        encoded = channel.name.encode("cp1252")
        listing.write_u16(len(encoded))
        listing.write_bytes(encoded)
        listening = 1 if session.address in channel.listening else 0
        listing.write_u8(listening)
    server.send_packet(session.address, listing)


def send_chatter_user_list(
    server: "T4CServerProtocol", session: ClientSession, channel_name: str
) -> None:
    """S2C 50 : utilisateurs d'un canal (nom, label auxiliaire, écoute)."""
    channel = find_channel(channel_name)
    listing = PacketWriter(50)
    listing.write_text(channel.name if channel else channel_name)
    members = list(channel.members.values()) if channel else []
    listing.write_u16(len(members))
    for member in members:
        listing.write_text(member.active_character or "")
        listing.write_text("")
        listing.write_u8(1 if channel and member.address in channel.listening else 0)
    server.send_packet(session.address, listing)


# -----------------------------------------------------------------------------
# Objets au sol (PLAN 2.3)
# -----------------------------------------------------------------------------
# C2S 12 DROP_ITEM : u16 x, u16 y, u32 itemUnitId, u32 quantity.
# C2S 11 PICKUP_UNIT : u16 x, u16 y, u32 unitId.
# S2C 70 ACTION_FAILURE : u32 objectOrUnitId, u16 relatedRequestOpcode.
#
# Un objet au sol est une unité visible comme un joueur : même bloc
# UnitInformation (apparence = sprite de l'objet), diffusée par popup 0x2714
# et retirée par le paquet 11. Le serveur original range les objets au sol
# dans les mêmes WorldMap hives que les unités.


@dataclass
class GroundItem:
    unit_id: int
    template_id: int
    quantity: int
    x: int
    y: int
    world: int = 0


# Registre global des objets au sol (unit ids partagés avec les joueurs :
# même espace d'adressage que server.next_unit_id).
_ground_items: dict[int, GroundItem] = {}


def _item_appearance(item: GroundItem) -> int:
    from .items import TEMPLATES

    template = TEMPLATES.get(item.template_id)
    return template.appearance if template else 0


def _write_item_information(w, item: GroundItem) -> None:
    """Bloc UnitInformation pour un objet au sol (apparence = sprite)."""
    _write_unit_info_raw(w, _item_appearance(item), item.unit_id)


def spawn_ground_item(
    server: "T4CServerProtocol",
    unit_id: int,
    template_id: int,
    quantity: int,
    x: int,
    y: int,
    world: int = 0,
) -> None:
    """Crée un objet au sol et le diffuse aux joueurs en vue (popup 0x2714)."""
    item = GroundItem(unit_id, template_id, quantity, x, y, world)
    _ground_items[unit_id] = item
    _broadcast_item_popup(server, item)


def _broadcast_item_popup(
    server: "T4CServerProtocol", item: GroundItem
) -> None:
    for session in server.sessions.values():
        if (
            session.state is SessionState.IN_WORLD
            and session.pos_world == item.world
            and _in_view(session.pos_x, session.pos_y, item.x, item.y)
        ):
            popup = PacketWriter(EVENT_UNIT_POPUP)
            popup.write_i16(item.x)
            popup.write_i16(item.y)
            _write_item_information(popup, item)
            server.send_packet(session.address, popup)


def find_ground_item(unit_id: int) -> GroundItem | None:
    return _ground_items.get(unit_id)


def remove_ground_item(
    server: "T4CServerProtocol", unit_id: int
) -> GroundItem | None:
    """Retire un objet au sol et diffuse sa disparition (paquet 11)."""
    item = _ground_items.pop(unit_id, None)
    if item is None:
        return None
    removed = PacketWriter(EVENT_OBJECT_REMOVED)
    removed.write_u8(0)
    removed.write_i32(unit_id)
    for session in server.sessions.values():
        if (
            session.state is SessionState.IN_WORLD
            and session.pos_world == item.world
            and _in_view(session.pos_x, session.pos_y, item.x, item.y)
        ):
            server.send_packet(session.address, removed)
    return item


def ground_items_in_view(
    x: int, y: int, world: int = 0
) -> list[GroundItem]:
    return [
        item
        for item in _ground_items.values()
        if item.world == world and _in_view(x, y, item.x, item.y)
    ]


def send_action_failure(
    server: "T4CServerProtocol",
    session: "ClientSession",
    object_or_unit_id: int,
    related_opcode: int,
) -> None:
    """S2C 70 : échec d'action corrélé (ex. pickup introuvable -> opcode 11)."""
    failure = PacketWriter(70)
    failure.write_u32(object_or_unit_id)
    failure.write_i16(related_opcode)
    server.send_packet(session.address, failure)


# -----------------------------------------------------------------------------
# NPCs statiques (PLAN 2.2)
# -----------------------------------------------------------------------------
# S2C 35 NPC_NAME : u32 npcUnitId, CString name.
# Les PNJ sont des unités persistantes : visibles par le popup 0x2714 et
# inclus dans le paquet 16 (vue) des joueurs qui entrent en jeu.


@dataclass
class Npc:
    unit_id: int
    name: str
    appearance: int
    x: int
    y: int
    world: int = 0
    # Shop du PNJ marchand : template_id -> quantité en stock (vide = pas marchand).
    shop: dict[int, int] = field(default_factory=dict)
    # PNJ enseignant (PLAN 3.3) : C2S 11 dessus -> S2C 55 TEACH_SKILL_LIST.
    teach: tuple[int, ...] = ()
    # Créature hostile (PLAN 3.2) : combat via C2S 32 sur cette unité.
    hostile: bool = False
    hp: int = 0
    max_hp: int = 0
    damage: int = 5          # dégâts d'une attaque de la créature
    dodge: int = 5           # esquive de la créature
    xp_reward: int = 0       # XP donnée au tueur
    gold_reward: int = 0     # or donné au tueur
    loot: tuple[int, ...] = ()  # template_ids droppés au sol à la mort


# Table de spawn des PNJ de développement. À terme : extraite des WDA/maps
# du serveur original. Les apparences doivent exister côté client
# (cf. docs/reverse-engineering/ — la zone d'init 0x501F00 couvre aussi des
# apparences de créatures, ex. squelettes/orcs des sprites d'objets).
_npcs: dict[int, Npc] = {}
_next_npc_id = 100000  # espace d'IDs distinct des joueurs et objets


def register_npc(
    name: str,
    appearance: int,
    x: int,
    y: int,
    world: int = 0,
    *,
    shop: dict[int, int] | None = None,
    teach: tuple[int, ...] = (),
    hostile: bool = False,
    hp: int = 0,
    damage: int = 5,
    dodge: int = 5,
    xp_reward: int = 0,
    gold_reward: int = 0,
    loot: tuple[int, ...] = (),
) -> Npc:
    """Enregistre un PNJ statique (spawn au démarrage du serveur).

    `shop` : si fourni, le PNJ est un marchand (template_id -> quantité).
    `hostile` : créature attaquable (C2S 32 sur son unit_id démarre le combat).
    """
    global _next_npc_id
    max_hp = hp if hp > 0 else (30 if hostile else 0)
    npc = Npc(
        _next_npc_id, name, appearance, x, y, world, dict(shop or {}),
        teach=tuple(teach), hostile=hostile, hp=max_hp, max_hp=max_hp,
        damage=damage, dodge=dodge,
        xp_reward=xp_reward, gold_reward=gold_reward, loot=tuple(loot),
    )
    _next_npc_id += 1
    _npcs[npc.unit_id] = npc
    return npc


def find_npc(unit_id: int) -> Npc | None:
    return _npcs.get(unit_id)


def npcs_in_view(x: int, y: int, world: int = 0) -> list[Npc]:
    return [
        npc
        for npc in _npcs.values()
        if npc.world == world and _in_view(x, y, npc.x, npc.y)
    ]


def _write_npc_information(w, npc: Npc) -> None:
    _write_unit_info_raw(w, npc.appearance, npc.unit_id)


def broadcast_npc_popup(
    server: "T4CServerProtocol", npc: Npc, *, exclude: "ClientSession | None" = None
) -> None:
    """Fait apparaître un PNJ auprès des joueurs en vue."""
    for session in server.sessions.values():
        if (
            session is not exclude
            and session.state is SessionState.IN_WORLD
            and session.pos_world == npc.world
            and _in_view(session.pos_x, session.pos_y, npc.x, npc.y)
        ):
            popup = PacketWriter(EVENT_UNIT_POPUP)
            popup.write_i16(npc.x)
            popup.write_i16(npc.y)
            _write_npc_information(popup, npc)
            server.send_packet(session.address, popup)


def send_npc_name(
    server: "T4CServerProtocol", session: "ClientSession", npc: Npc
) -> None:
    """S2C 35 : nom d'un PNJ (au clic / à l'approche)."""
    name_packet = PacketWriter(35)
    name_packet.write_u32(npc.unit_id)
    name_packet.write_text(npc.name)
    server.send_packet(session.address, name_packet)


# -----------------------------------------------------------------------------
# Marchands (PLAN 3.1) — formats confirmés passe V5 (02_T4C_PROTOCOLE_CONSOLIDE.tsv)
# -----------------------------------------------------------------------------
# S2C 41 BUY_LIST  : u32 shopUnitId, u16 count, puis par article :
#   u16 templateIdLike, u16 appearance, u32 price, u8 canEquip, CString name, CString equipMessage
# S2C 56 SELL_LIST : u32 shopUnitId, u16 count, puis par objet du joueur :
#   u32 itemUnitId, u16 appearance, u32 price, u32 quantity, CString name


def npc_in_reach(session: ClientSession, npc: Npc) -> bool:
    """Le PNJ est dans le même monde et dans le rayon de vue du joueur."""
    return (
        session.state is SessionState.IN_WORLD
        and session.pos_world == npc.world
        and _in_view(session.pos_x, session.pos_y, npc.x, npc.y)
    )


def send_buy_list(
    server: "T4CServerProtocol", session: ClientSession, npc: Npc
) -> None:
    """S2C 41 : liste des articles vendus par le marchand (son stock)."""
    from .items import TEMPLATES

    listing = PacketWriter(41)
    listing.write_u32(npc.unit_id)
    entries = [(tid, qty) for tid, qty in npc.shop.items() if qty > 0]
    listing.write_u16(len(entries))
    for template_id, _qty in entries:
        template = TEMPLATES.get(template_id)
        if template is None:
            continue
        listing.write_u16(template_id)          # templateIdLike
        listing.write_u16(template.appearance)  # appearance
        listing.write_u32(template.price)       # prix à l'achat
        listing.write_u8(1 if template.equip_slot is not None else 0)  # canEquip
        listing.write_text(template.name)
        listing.write_text("")                  # equipMessage (exigence)
    server.send_packet(session.address, listing)
    log.info(
        "SHOP liste achat envoyée à %s (marchand=%s, %d article(s))",
        session.address, npc.name, len(entries),
    )


def sell_price(template) -> int:
    """Prix de rachat par le marchand (moitié du prix d'achat, min 1)."""
    return max(1, template.price // 2)


def send_teach_list(
    server: "T4CServerProtocol", session: ClientSession, npc: Npc
) -> None:
    """S2C 55 (TEACH_SKILL_LIST) : sorts enseignables par le PNJ.

    Format (TSV consolidé) : u16 context, u16 count, puis par entrée :
    u8 flags, u16 skillId, u32 valueA, CString name, CString requirements, u32 valueB.
    """
    from .spells import spell_name

    listing = PacketWriter(55)
    listing.write_u16(0)  # context
    listing.write_u16(len(npc.teach))
    for spell_id in npc.teach:
        listing.write_u8(0)          # flags
        listing.write_u16(spell_id)  # skillId (id du sort WDA)
        listing.write_u32(10)        # valueA (coût mana)
        listing.write_text(spell_name(spell_id))
        listing.write_text("")       # requirements
        listing.write_u32(0)         # valueB
    server.send_packet(session.address, listing)
    log.info(
        "ENSEIGNEMENT liste envoyée à %s (PNJ=%s, %d sort(s))",
        session.address, npc.name, len(npc.teach),
    )


def send_sell_list(
    server: "T4CServerProtocol", session: ClientSession, npc: Npc
) -> None:
    """S2C 56 : liste des objets du sac du joueur que le marchand rachète."""
    inventory = session.inventory
    items = list(inventory.backpack) if inventory is not None else []
    listing = PacketWriter(56)
    listing.write_u32(npc.unit_id)
    listing.write_u16(len(items))
    for item in items:
        template = item.template
        listing.write_u32(item.unit_id)
        listing.write_u16(template.appearance)
        listing.write_u32(sell_price(template))
        listing.write_u32(item.quantity)
        listing.write_text(template.name)
    server.send_packet(session.address, listing)
    log.info(
        "SHOP liste vente envoyée à %s (marchand=%s, %d objet(s) du sac)",
        session.address, npc.name, len(items),
    )


# -----------------------------------------------------------------------------
# Combat (PLAN 3.2) — C2S 32 sur unité hostile = StartAutoCombat (RE 2026-10-13,
# handler 0x480240 -> Character::StartAutoCombat 0x41FDD0). Résolution d'un
# round façon TFCMAIN::Attack (0x4722A0) : jet AGI vs esquive -> BCAttack
# (0x2711) ou BCMiss (0x2712).
# -----------------------------------------------------------------------------
EVENT_ATTACK = 0x2711        # S2C ATTACK : u32 attacker, u32 target, u8 0, u8 0, i8 type, u16 x1,y1,x2,y2
EVENT_MISS = 0x2712          # S2C MISS   : u32 attacker, u32 target, u16 x1,y1,x2,y2
EVENT_UNIT_INFO_UPDATE = 69  # S2C : u16 appearance, u32 unitId, i8 radiance, u8 status, u8 hp%
EVENT_TELEPORT = 57          # S2C : u16 x, u16 y, u16 world


def _sessions_in_view_of(
    server: "T4CServerProtocol", x: int, y: int, world_id: int
) -> list[ClientSession]:
    return [
        s
        for s in server.sessions.values()
        if s.state is SessionState.IN_WORLD
        and s.pos_world == world_id
        and _in_view(s.pos_x, s.pos_y, x, y)
    ]


def broadcast_attack(
    server: "T4CServerProtocol",
    attacker_unit_id: int,
    attacker_x: int,
    attacker_y: int,
    target_unit_id: int,
    target_x: int,
    target_y: int,
    *,
    hit: bool,
    attack_type: int = 0,
    world_id: int = 0,
) -> None:
    """Diffuse un round de combat (0x2711 touché / 0x2712 raté) aux joueurs en vue."""
    targets = _sessions_in_view_of(server, target_x, target_y, world_id)
    for target in targets:
        packet = PacketWriter(EVENT_ATTACK if hit else EVENT_MISS)
        packet.write_u32(attacker_unit_id)
        packet.write_u32(target_unit_id)
        if hit:
            packet.write_u8(0)
            packet.write_u8(0)
            packet.write_i8(attack_type)
        packet.write_u16(attacker_x)
        packet.write_u16(attacker_y)
        packet.write_u16(target_x)
        packet.write_u16(target_y)
        server.send_packet(target.address, packet)


def send_unit_info_update(
    server: "T4CServerProtocol",
    session: ClientSession,
    appearance: int,
    unit_id: int,
    hp_percent: int,
) -> None:
    """S2C 69 : met à jour l'unité affichée (barre de HP)."""
    packet = PacketWriter(EVENT_UNIT_INFO_UPDATE)
    packet.write_i16(appearance)
    packet.write_u32(unit_id)
    packet.write_i8(0)               # radiance
    packet.write_u8(0)               # statut
    packet.write_u8(max(0, min(100, hp_percent)))
    server.send_packet(session.address, packet)


def resolve_player_attack_on_npc(
    server: "T4CServerProtocol",
    session: ClientSession,
    npc: Npc,
    character,
) -> bool:
    """Un round d'attaque du joueur sur un PNJ hostile. Retourne True si touché."""
    import random

    # Jet de touche façon GetBlowPrecision : base 50% + (AGI attaquant - esquive cible) * 2.
    hit_chance = 50 + (character.agi - npc.dodge) * 2
    hit_chance = max(5, min(95, hit_chance))
    hit = random.randint(1, 100) <= hit_chance
    broadcast_attack(
        server,
        session.unit_id or 0,
        session.pos_x,
        session.pos_y,
        npc.unit_id,
        npc.x,
        npc.y,
        hit=hit,
        world_id=npc.world,
    )
    if not hit:
        log.info(
            "COMBAT %s rate %s (unit=%d)", character.name, npc.name, npc.unit_id
        )
        return False
    # Dégâts : FOR/2 + arme simplifiée (rand 1..6).
    damage = max(1, character.strength // 2 + random.randint(1, 6))
    npc.hp = max(0, npc.hp - damage)
    hp_percent = (npc.hp * 100) // npc.max_hp if npc.max_hp else 0
    for viewer in _sessions_in_view_of(server, npc.x, npc.y, npc.world):
        send_unit_info_update(server, viewer, npc.appearance, npc.unit_id, hp_percent)
    log.info(
        "COMBAT %s touche %s pour %d dégâts (HP %d/%d)",
        character.name, npc.name, damage, npc.hp, npc.max_hp,
    )
    if npc.hp <= 0:
        kill_npc(server, npc, session, character)
    return True


def kill_npc(
    server: "T4CServerProtocol",
    npc: Npc,
    killer: ClientSession,
    character,
) -> None:
    """Mort d'un PNJ : retrait du monde (11), loot au sol, XP/or au tueur."""
    del _npcs[npc.unit_id]
    # Retrait diffusé aux joueurs en vue.
    removed = PacketWriter(EVENT_OBJECT_REMOVED)
    removed.write_u8(0)
    removed.write_i32(npc.unit_id)
    for viewer in _sessions_in_view_of(server, npc.x, npc.y, npc.world):
        server.send_packet(viewer.address, removed)
    # Loot au sol.
    for template_id in npc.loot:
        unit_id = server.next_unit_id
        server.next_unit_id += 1
        spawn_ground_item(server, unit_id, template_id, 1, npc.x, npc.y, npc.world)
    # Récompenses au tueur (puis répartition si groupe avec auto-split).
    if npc.xp_reward:
        character.xp += npc.xp_reward
        send_xp_update(server, killer, character.xp)
    if npc.gold_reward:
        character.gold += npc.gold_reward
        send_gold_update(server, killer, character.gold)
    distribute_kill_rewards(server, killer, npc.xp_reward, npc.gold_reward)
    # HP du tueur aux autres membres du groupe (S2C 87).
    killer_group = group_of(killer)
    if killer_group is not None:
        send_group_hp_update(
            server, killer_group, killer.unit_id or 0,
            (character.hp * 100) // character.max_hp if character.max_hp else 100,
        )
    send_server_message(
        server,
        killer,
        f"Vous avez tué {npc.name} (+{npc.xp_reward} XP, +{npc.gold_reward} or).",
    )
    log.info(
        "MORT PNJ %s (unit=%d) tué par %s : loot=%s xp=%d or=%d",
        npc.name, npc.unit_id, character.name, npc.loot, npc.xp_reward, npc.gold_reward,
    )


def npc_counterattack(
    server: "T4CServerProtocol",
    npc_source: Npc,
    target: ClientSession,
    character,
) -> None:
    """Contre-attaque d'une créature après un round (dégâts sur le joueur)."""
    import random

    hit_chance = max(5, min(95, 50 + (npc_source.dodge - character.agi) * 2))
    hit = random.randint(1, 100) <= hit_chance
    # On ressuscite le PNJ dans un snapshot local pour la contre-attaque :
    # on garde ses stats même s'il vient de mourir (sinon pas de riposte).
    broadcast_attack(
        server,
        npc_source.unit_id,
        npc_source.x,
        npc_source.y,
        target.unit_id or 0,
        target.pos_x,
        target.pos_y,
        hit=hit,
        world_id=target.pos_world,
    )
    if not hit:
        return
    damage = max(1, npc_source.damage + random.randint(0, 3))
    character.hp = max(0, character.hp - damage)
    log.info(
        "COMBAT riposte %s -> %s : %d dégâts (HP %d/%d)",
        npc_source.name, character.name, damage, character.hp, character.max_hp,
    )
    from .handlers import _write_status, _persist_character_stats

    server.send_packet(target.address, _write_status(character))
    _persist_character_stats(server, target)
    if character.hp <= 0:
        respawn_player(server, target, character)


def respawn_player(
    server: "T4CServerProtocol", session: ClientSession, character
) -> None:
    """Mort du joueur : respawn à la position de départ avec HP/2 (S2C 57 + 43)."""
    from .characters import START_POS

    session.pos_x, session.pos_y, session.pos_world = START_POS
    character.hp = max(1, character.max_hp // 2)
    if server.persistence is not None:
        server.persistence.save_position(character.name, *START_POS)
    teleport = PacketWriter(EVENT_TELEPORT)
    teleport.write_u16(session.pos_x)
    teleport.write_u16(session.pos_y)
    teleport.write_u16(session.pos_world)
    server.send_packet(session.address, teleport)
    from .handlers import _write_status

    server.send_packet(session.address, _write_status(character))
    send_server_message(server, session, "Vous êtes mort. Retour à LightHaven.")
    log.info("MORT joueur %s -> respawn (%d,%d)", character.name, *START_POS[:2])


# -----------------------------------------------------------------------------
# Groupes (PLAN 4.2) — RE 2026-10-13 : C2S 78 invite, 79 join, 80 leave,
# 81 disband, 88 autosplit. S2C : 76 membres, 78 invitation, 80/82 fin,
# 87 HP membre, 88 autosplit.
# -----------------------------------------------------------------------------


@dataclass
class Group:
    leader_unit_id: int
    members: list = field(default_factory=list)  # ClientSession
    auto_split: bool = True


_groups: dict[int, Group] = {}          # leader unit_id -> Group
_pending_invites: dict = {}             # invité address -> (leader address, Group)


def group_of(session: ClientSession) -> Group | None:
    for group in _groups.values():
        if session in group.members:
            return group
    return None


def _session_by_unit_id(server, unit_id: int) -> ClientSession | None:
    for s in server.sessions.values():
        if s.unit_id == unit_id and s.state is SessionState.IN_WORLD:
            return s
    return None


def send_group_invite(
    server: "T4CServerProtocol", inviter: ClientSession, target: ClientSession
) -> Group:
    """C2S 78 : invite `target` dans le groupe de `inviter` (créé si besoin)."""
    group = group_of(inviter)
    if group is None:
        group = Group(leader_unit_id=inviter.unit_id or 0, members=[inviter])
        _groups[group.leader_unit_id] = group
    invite = PacketWriter(78)
    invite.write_u32(inviter.unit_id or 0)
    invite.write_text(inviter.active_character or "")
    server.send_packet(target.address, invite)
    _pending_invites[target.address] = (inviter.address, group)
    log.info(
        "GROUPE invitation %s -> %s (leader unit=%d)",
        inviter.active_character, target.active_character, inviter.unit_id or 0,
    )
    return group


def join_group(server: "T4CServerProtocol", session: ClientSession) -> bool:
    """C2S 79 : accepte l'invitation en attente et rejoint le groupe."""
    pending = _pending_invites.pop(session.address, None)
    if pending is None:
        return False
    _leader_addr, group = pending
    if session not in group.members:
        group.members.append(session)
    send_group_members(server, group)
    log.info(
        "GROUPE %s rejoint le groupe de unit=%d (%d membres)",
        session.active_character, group.leader_unit_id, len(group.members),
    )
    return True


def leave_group(server: "T4CServerProtocol", session: ClientSession) -> None:
    """C2S 80 : quitte le groupe (S2C 80 à soi, 76 rafraîchi aux autres)."""
    group = group_of(session)
    if group is None:
        return
    group.members.remove(session)
    dismissed = PacketWriter(80)
    server.send_packet(session.address, dismissed)
    if len(group.members) < 2:
        # Groupe réduit à 1 membre : on le dissout proprement.
        disband_group(server, group)
        return
    send_group_members(server, group)
    log.info("GROUPE %s quitte (%d membres restants)", session.active_character, len(group.members))


def disband_group(server: "T4CServerProtocol", group: Group) -> None:
    """C2S 81 (leader) : dissout le groupe -> S2C 82 à tous les membres."""
    for member in list(group.members):
        packet = PacketWriter(82)
        server.send_packet(member.address, packet)
    _groups.pop(group.leader_unit_id, None)
    log.info("GROUPE dissous (leader unit=%d)", group.leader_unit_id)


def handle_disband_request(server: "T4CServerProtocol", session: ClientSession) -> None:
    group = group_of(session)
    if group is not None and group.leader_unit_id == session.unit_id:
        disband_group(server, group)


def toggle_group_autosplit(
    server: "T4CServerProtocol", session: ClientSession, enabled: bool
) -> None:
    """C2S 88 (u8) : bascule l'auto-split -> S2C 88 à tous + 76 rafraîchi."""
    group = group_of(session)
    if group is None:
        return
    group.auto_split = enabled
    for member in group.members:
        packet = PacketWriter(88)
        packet.write_u8(1 if enabled else 0)
        server.send_packet(member.address, packet)
    send_group_members(server, group)
    log.info("GROUPE auto-split=%s (leader unit=%d)", enabled, group.leader_unit_id)


def send_group_members(server: "T4CServerProtocol", group: Group) -> None:
    """S2C 76 : u8 autoSplit, u16 count, par membre u32 unitId, u16 level,
    u16 hpPercent, u8 isLeader, CString name — à tous les membres."""
    for member in group.members:
        packet = PacketWriter(76)
        packet.write_u8(1 if group.auto_split else 0)
        packet.write_u16(len(group.members))
        for m in group.members:
            character = _find_character(server, m)
            packet.write_u32(m.unit_id or 0)
            packet.write_u16(character.level if character else 1)
            packet.write_u16(
                (character.hp * 100) // character.max_hp if character and character.max_hp else 100
            )
            packet.write_u8(1 if m.unit_id == group.leader_unit_id else 0)
            packet.write_text(m.active_character or "")
        server.send_packet(member.address, packet)


def send_group_hp_update(
    server: "T4CServerProtocol", group: Group, unit_id: int, hp_percent: int
) -> None:
    """S2C 87 : u32 unitId, u16 hpPercent — HP d'un membre du groupe."""
    for member in group.members:
        if member.unit_id == unit_id:
            continue
        packet = PacketWriter(87)
        packet.write_u32(unit_id)
        packet.write_u16(max(0, min(100, hp_percent)))
        server.send_packet(member.address, packet)


def _group_xp_shares(
    xp: int, members: list, levels: dict[int, int]
) -> dict[int, int]:
    """Calcule la part d'XP de chaque membre selon Group::DistributeKillXP
    (PASSE21, confirmé) :

      1. coefficient de groupe = min(1 + 0.5 * (n - 1), 3.0)
      2. part de base = int(xp * coefficient) // n   (conversion 64 bits)
      3. Lmax = niveau max parmi les membres retenus
      4. pour chaque membre de niveau L :
           pas = 4 * (1 + floor(L / 25))
           k   = floor((Lmax - L) / pas)
           si k == 0 : part = part de base
           si k >= 1 : part = int(part de base * 0.5 * (0.2 ** (k - 1)))

    Retourne {unit_id: part_xp}. Les membres hors vue sont exclus du partage
    (GetRangeGroupMembers ne retient que les membres à portée).
    """
    n = len(members)
    if n <= 0:
        return {}
    coefficient = min(1.0 + 0.5 * (n - 1), 3.0)
    base_share = int(xp * coefficient) // n
    if base_share <= 0:
        return {}
    lmax = max((levels.get(m.unit_id, 1) for m in members), default=1)
    shares: dict[int, int] = {}
    for member in members:
        level = levels.get(member.unit_id, 1)
        pas = 4 * (1 + level // 25)
        k = (lmax - level) // pas
        if k <= 0:
            share = base_share
        else:
            share = int(base_share * 0.5 * (0.2 ** (k - 1)))
        shares[member.unit_id] = share
    return shares


def distribute_kill_rewards(
    server: "T4CServerProtocol", killer: ClientSession, xp: int, gold: int
) -> None:
    """Répartit XP/or d'un kill entre les membres du groupe du tueur en vue
    (Group::DistributeKillXP/DistributeKillGold), sinon tout au tueur."""
    group = group_of(killer)
    if group is None or not group.auto_split or len(group.members) < 2:
        return  # le tueur garde tout (kill_npc crédite déjà)
    # Membres à portée (GetRangeGroupMembers) : le tueur + les autres en vue.
    in_range = [
        m for m in group.members
        if m is killer or _in_view(killer.pos_x, killer.pos_y, m.pos_x, m.pos_y)
    ]
    if len(in_range) < 2:
        return
    levels = {}
    for member in in_range:
        character = _find_character(server, member)
        levels[member.unit_id] = character.level if character else 1
    shares = _group_xp_shares(xp, in_range, levels)
    share_gold = gold // len(in_range)
    if not shares and share_gold <= 0:
        return
    # Le tueur a déjà reçu le total (kill_npc) : on lui retire sa part excédentaire.
    killer_char = _find_character(server, killer)
    killer_share = shares.get(killer.unit_id, 0)
    if killer_char is not None and killer_share > 0:
        killer_char.xp -= xp - killer_share
        send_xp_update(server, killer, killer_char.xp)
    if killer_char is not None and share_gold > 0:
        killer_char.gold -= gold - share_gold
        send_gold_update(server, killer, killer_char.gold)
    for member in in_range:
        if member is killer:
            continue
        character = _find_character(server, member)
        if character is None:
            continue
        share = shares.get(member.unit_id, 0)
        if share > 0:
            character.xp += share
            send_xp_update(server, member, character.xp)
        if share_gold > 0:
            character.gold += share_gold
            send_gold_update(server, member, character.gold)


# Correspondance champ puppet -> slot d'équipement, DÉCODÉE du serveur
# original : unequip_object @0x41951a lit le slot i à Character+0x1a0+i*4,
# et PacketPuppetInfo @0x41FB70 sérialise les offsets +0x1a0, +0x1a4,
# +0x1a8, +0x1ac, +0x1b0, +0x1c0, +0x1c4, +0x1dc => slots 0, 1, 2, 3, 4,
# 8, 9, 15. Le slot 15 porte le genre (472=homme / 473=femme d'après le
# client @0x511F10) : le champ 8 n'est PAS un item mais le modèle de base.
PUPPET_EQUIP_SLOTS = (0, 1, 2, 3, 4, 8, 9, 15)


def puppet_appearances(
    server: "T4CServerProtocol", session: "ClientSession"
) -> list[int]:
    """Apparences des items équipés pour le puppet 68 (8 champs u16).

    Chaque champ est l'apparence d'un item équipé (0 si le slot est vide).
    Les items du sac ne comptent pas : SEUL l'équipement habille le modèle.
    """
    character = _find_character(server, session)
    # ATTENTION : les champs du puppet 68 ne sont PAS des IDs d'icônes
    # d'inventaire mais des codes de pièces 3D portées (RE client @0x511F10) :
    #   champ 6 : plages valides 86-202 / 271-498 (codes "worn"),
    #   champ 8 : codes race {287, 472, 473, 184, 185} (472=homme, 473=femme),
    #   champ 1 : codes d'arme classifiants {3, 8, 177, 180, 206, 269, ...}.
    # Les IDs d'icônes (épée=1, pantalon=262, veste=263) y sont hors plages
    # et produisent des artefacts (ailes, gants). En attendant l'extraction
    # complète des codes portés, on n'envoie que la race (rendu propre).
    from .characters import PLAYER_FEMALE_PUPPET

    female = character is not None and character.race == PLAYER_FEMALE_PUPPET
    return [0, 0, 0, 0, 0, 0, 0, 473 if female else 472]
