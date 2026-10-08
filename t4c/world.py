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

from dataclasses import dataclass

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


def _write_unit_information(w, character: Character, unit_id: int) -> None:
    """Bloc PacketUnitInformation (Unit::PacketUnitInformation @0x48F560)."""
    w.write_i16(character.race)     # apparence
    w.write_i32(unit_id)            # ID d'unité
    w.write_i8(0)                   # radiance
    w.write_u8(0)                   # statut
    w.write_u8(100)                  # %HP


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


def send_inview_units(server: "T4CServerProtocol", session: ClientSession) -> None:
    """Paquet 16 : liste des unités en vue d'une session qui entre en jeu."""
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


def _write_item_information(w, item: GroundItem) -> None:
    """Bloc UnitInformation pour un objet au sol (apparence = sprite)."""
    from .items import TEMPLATES

    template = TEMPLATES.get(item.template_id)
    appearance = template.appearance if template else 0
    w.write_i16(appearance)
    w.write_i32(item.unit_id)
    w.write_i8(0)     # radiance
    w.write_u8(0)     # statut
    w.write_u8(100)   # %HP (inutilisé pour un objet)


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


# Table de spawn des PNJ de développement. À terme : extraite des WDA/maps
# du serveur original. Les apparences doivent exister côté client
# (cf. docs/reverse-engineering/ — la zone d'init 0x501F00 couvre aussi des
# apparences de créatures, ex. squelettes/orcs des sprites d'objets).
_npcs: dict[int, Npc] = {}
_next_npc_id = 100000  # espace d'IDs distinct des joueurs et objets


def register_npc(
    name: str, appearance: int, x: int, y: int, world: int = 0
) -> Npc:
    """Enregistre un PNJ statique (spawn au démarrage du serveur)."""
    global _next_npc_id
    npc = Npc(_next_npc_id, name, appearance, x, y, world)
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
    w.write_i16(npc.appearance)
    w.write_i32(npc.unit_id)
    w.write_i8(0)     # radiance
    w.write_u8(0)     # statut
    w.write_u8(100)   # %HP


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
