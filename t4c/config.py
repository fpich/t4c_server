"""Runtime configuration for the compatibility prototype."""

from __future__ import annotations

from dataclasses import dataclass, field


@dataclass(slots=True)
class ServerEndpoint:
    host: str
    port: int = 11679


@dataclass(slots=True)
class ServerConfig:
    # Authentication is intentionally local/in-memory at this stage.  The old
    # RADIUS/ODBC backend is not required to reconstruct the wire protocol.
    accept_any_login: bool = True
    account: str = "test"
    password: str = "test"

    # Packet 65/91 metadata version. This is distinct from the game protocol
    # version authenticated by packet 99.
    server_version: int = 0

    # Packet 99. The captured 1.25 client sends 125 (0x0000007D). The original
    # server replies with u32 1 on exact match and u32 0 otherwise.
    protocol_version: int = 125
    server_endpoints: list[ServerEndpoint] = field(default_factory=list)

    # Packet 66.
    motd: str = "Bienvenue sur le serveur T4C Python 1.25 FR"

    # Packet 91. These fields are present in the original response; empty values
    # are valid for a development server with no external patch infrastructure.
    patch_info_1: str = ""
    patch_info_2: str = ""
    patch_info_3: str = ""
    patch_info_4: str = ""
    # Langue annoncée dans le paquet 91. On garde 0 par défaut tant que le
    # comportement exact du client FR/GOA n'est pas complètement neutralisé.
    # Le serveur et ses textes visibles restent néanmoins en français.
    default_language: int = 0
    # Paquet 103 : nombre maximal de personnages par compte. Le serveur
    # original l'envoie juste avant la liste (26) pour piloter l'affichage
    # de l'option "Nouveau personnage" du client.
    max_characters_per_account: int = 3
    # Étape 9 : persistance SQLite (schéma T4C.mdb porté). Chaîne vide = mémoire.
    # Un chemin (ex. "t4c.sqlite3") active la sauvegarde des comptes/personnages.
    database_path: str = ""
    # Robustesse transport (PLAN 5.1/5.2) : retransmission des paquets SAFE
    # non acquittés, et expiration des sessions sans trafic.
    safe_retransmit_interval: float = 0.125  # secondes entre deux renvois
    safe_max_retries: int = 5                 # renvois max avant abandon (PacketLost)
    session_timeout: float = 60.0             # secondes sans RX -> session morte
    # Carte/collisions (PLAN 2.1) : dossier des grilles `world<id>.csv`.
    # None = aucune carte définie, tout est franchissable dans les bornes.
    maps_dir: str | None = None
    # PLAN 5.3 : mouvements max par seconde (fenêtre glissante) avant d'ignorer.
    max_moves_per_second: int = 10
