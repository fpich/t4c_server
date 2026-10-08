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
        for _ in range(8):
            puppet.write_i16(0)
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
    response = PacketWriter(16)
    response.write_i16(len(visible))
    for other, character in visible:
        response.write_i16(other.pos_x)
        response.write_i16(other.pos_y)
        _write_unit_information(response, character, other.unit_id or 0)
    server.send_packet(session.address, response)
    if visible:
        log.info(
            "VUE unités en vue=%d pour %s",
            len(visible),
            session.address,
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
