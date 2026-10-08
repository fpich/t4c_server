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
    )

    # PNJ de développement près de la position de départ (LightHaven).
    # Apparences créatures : zone d'init client 0x501F00+ (cf. docs RE).
    from t4c import world
    from t4c.characters import START_POS

    sx, sy, _w = START_POS
    world.register_npc("Garde de LightHaven", appearance=203, x=sx - 2, y=sy)
    world.register_npc("Marchand Ambroise", appearance=187, x=sx + 2, y=sy)
    world.register_npc("Prêtresse Solène", appearance=161, x=sx, y=sy - 2)

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
