"""Connection/session state for the experimental authoritative server."""

from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum, auto
import time
from typing import TypeAlias

Address: TypeAlias = tuple[str, int]


class SessionState(Enum):
    NEW = auto()
    # MOTD/bootstrap was successfully served.  The 1.25 client should now be in
    # its front-end flow (patch/registration/login/menu), not yet authenticated.
    FRONTEND = auto()
    AUTHENTICATED = auto()
    # Compte authentifié, aucun personnage actif.
    CHARACTER_MENU = auto()
    # Personnage chargé (réponse 13 envoyée), attente du paquet 46.
    PRE_INGAME = auto()
    IN_WORLD = auto()


@dataclass(slots=True)
class ClientSession:
    address: Address
    created_at: float = field(default_factory=time.monotonic)
    last_seen_at: float = field(default_factory=time.monotonic)
    received_packets: int = 0
    sent_packets: int = 0
    next_send_sequence: int = 0
    received_acks: int = 0
    state: SessionState = SessionState.NEW
    account: str | None = None
    client_field_1: int | None = None
    client_field_2: int | None = None
    motd_requests: int = 0
    patch_info_requests: int = 0
    auth_requests: int = 0
    version_auth_requests: int = 0
    client_protocol_version: int | None = None
    protocol_version_accepted: bool = False
    character_list_requests: int = 0
    exit_game_requests: int = 0
    create_player_requests: int = 0
    toggle_page_requests: int = 0
    put_in_game_requests: int = 0
    enter_world_requests: int = 0
    unit_id: int | None = None
    page_toggled: bool = False
    active_character: str | None = None
