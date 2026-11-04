from __future__ import annotations

import argparse
import asyncio
import logging

from t4c.config import ServerConfig
from t4c.server import T4CServerProtocol


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Serveur autoritaire expérimental T4C 1.25 FR")
    parser.add_argument("--host", default="0.0.0.0", help="bind address (default: 0.0.0.0)")
    parser.add_argument("--port", type=int, default=11677, help="UDP port (default: 11677)")
    parser.add_argument("--server-version", type=int, default=0, help="packet 65/91 metadata version value")
    parser.add_argument("--protocol-version", type=int, default=125, help="packet 99 expected client protocol version (default: 125)")
    parser.add_argument("--motd", default="Bienvenue sur le serveur T4C Python 1.25 FR")
    parser.add_argument("--default-language", type=int, default=0, help="identifiant de langue envoyé dans le paquet 91 (0 par défaut; français historique souvent ID 2)")
    parser.add_argument("--account", default="test", help="account for --strict-auth")
    parser.add_argument("--password", default="test", help="password for --strict-auth")
    parser.add_argument(
        "--strict-auth",
        action="store_true",
        help="only accept --account/--password instead of any non-empty login",
    )
    parser.add_argument(
        "--database",
        default="t4c.sqlite3",
        help="chemin SQLite de persistance (schéma T4C.mdb porté) ; vide = mémoire uniquement",
    )
    parser.add_argument(
        "--maps-dir",
        default="maps",
        help="dossier des grilles de collision world<id>.csv (vide/absent = tout franchissable)",
    )
    parser.add_argument("--debug", action="store_true", help="enable debug logging")
    return parser.parse_args()


async def main() -> None:
    args = parse_args()
    logging.basicConfig(
        level=logging.DEBUG if args.debug else logging.INFO,
        format="%(asctime)s %(levelname)-7s %(name)s | %(message)s",
    )

    config = ServerConfig(
        accept_any_login=not args.strict_auth,
        account=args.account,
        password=args.password,
        server_version=args.server_version,
        protocol_version=args.protocol_version,
        motd=args.motd,
        default_language=args.default_language,
        database_path=args.database,
        maps_dir=args.maps_dir or None,
    )

    # PNJ de développement près de la position de départ (LightHaven).
    # Apparences créatures : zone d'init client 0x501F00+ (cf. docs RE).
    from t4c import world
    from t4c.characters import START_POS

    sx, sy, _w = START_POS
    # Apparences humanoïdes valides côté client (puppets) en attendant
    # l'extraction des apparences de créatures.
    # Canal de chat public par défaut (PLAN 4.1).
    world.create_channel("General")
    world.register_npc("Garde de LightHaven", appearance=10011, x=sx - 2, y=sy)
    # Marchand avec un stock réel (template_id -> quantité) : achat C2S 41 /
    # vente C2S 56, listes S2C 41/56 (PLAN 3.1).
    world.register_npc(
        "Marchand Ambroise",
        appearance=10011,
        x=sx + 2,
        y=sy,
        # épées/potions de dev + vrais objets du WDA (10007 Minor healing, 10004 Greater Healing Potion)
        shop={1: 5, 2: 10, 3: 3, 4: 3, 10007: 10, 10004: 5},
    )
    # PNJ enseignant : C2S 11 dessus -> S2C 55 (sorts du WDA : 414 Fire dart...).
    world.register_npc(
        "Prêtresse Solène", appearance=10012, x=sx, y=sy - 2,
        teach=(414, 415, 416, 421, 422),  # Fire dart, Flaming arrow, Fire bolt, Poison...
    )
    # Créatures hostiles de test autour de LightHaven (PLAN 3.2, étape 22).
    # Apparences : petites valeurs sûres en i16 (l'UI client mappe ensuite le
    # sprite ; à affiner quand la table d'apparences créatures sera extraite).
    # Butin en vrais objets du WDA (ids extraits de T4C Worlds.WDA) :
    # 10007 = "Minor healing" (potion), 10004 = "Greater Healing Potion 2".
    world.register_npc(
        "Rat des égouts", appearance=300, x=sx - 5, y=sy + 3,
        hostile=True, hp=20, damage=3, dodge=5, xp_reward=15, gold_reward=5,
        loot=(10007,),
    )
    world.register_npc(
        "Loup sauvage", appearance=301, x=sx + 6, y=sy + 4,
        hostile=True, hp=40, damage=6, dodge=10, xp_reward=30, gold_reward=12,
        loot=(10004,),
    )
    world.register_npc(
        "Squelette", appearance=302, x=sx - 7, y=sy - 5,
        hostile=True, hp=60, damage=9, dodge=8, xp_reward=50, gold_reward=25,
        loot=(3, 10007),
    )

    loop = asyncio.get_running_loop()
    transport, _protocol = await loop.create_datagram_endpoint(
        lambda: T4CServerProtocol(config=config),
        local_addr=(args.host, args.port),
    )

    try:
        await asyncio.Future()
    finally:
        transport.close()


if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        pass
