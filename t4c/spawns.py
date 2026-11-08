"""Spawns réels depuis spawns.json (extrait WDA).

Format spawns.json :
[
  {
    "spawner": "Nom du spawner",
    "coords": [
      [world, x, y],  // chaque coordonnée = un point de spawn
      ...
    ]
  }
]

Chaque spawner peut avoir plusieurs points de spawn (zone rectangulaire ou
points multiples). Le serveur choisit aléatoirement un point parmi les coords.
"""

from __future__ import annotations

import json
import logging
from pathlib import Path
from typing import NamedTuple

log = logging.getLogger("t4c.spawns")


class SpawnPoint(NamedTuple):
    """Point de spawn dans le monde."""
    world: int
    x: int
    y: int


class Spawner(NamedTuple):
    """Spawner avec ses points de spawn."""
    name: str
    coords: list[SpawnPoint]


def load_spawns(spawns_path: Path) -> list[Spawner]:
    """Charge les spawners depuis un fichier JSON.

    Args:
        spawns_path: chemin vers spawns.json

    Returns:
        Liste de Spawner avec leurs points de spawn
    """
    if not spawns_path.is_file():
        log.warning("spawns.json non trouvé : %s", spawns_path)
        return []

    with spawns_path.open(encoding="utf-8") as f:
        data = json.load(f)

    spawners = []
    for entry in data:
        name = entry.get("spawner", "Unknown")
        coords = entry.get("coords", [])

        spawn_points = []
        for coord in coords:
            if len(coord) >= 3:
                world, x, y = int(coord[0]), int(coord[1]), int(coord[2])
                spawn_points.append(SpawnPoint(world=world, x=x, y=y))

        if spawn_points:
            spawners.append(Spawner(name=name, coords=spawn_points))
            log.info("spawner '%s' : %d points de spawn", name, len(spawn_points))

    log.info("%d spawners chargés depuis %s", len(spawners), spawns_path)
    return spawners


def get_random_spawn(spawners: list[Spawner], world: int | None = None) -> SpawnPoint | None:
    """Retourne un point de spawn aléatoire.

    Args:
        spawners: liste des spawners chargés
        world: si fourni, filtre par monde

    Returns:
        Point de spawn aléatoire, ou None si pas de spawner disponible
    """
    import random

    # Filtrer par monde si demandé
    available = [s for s in spawners if world is None or any(c.world == world for c in s.coords)]
    if not available:
        return None

    # Choisir un spawner aléatoire, puis un point aléatoire
    spawner = random.choice(available)
    point = random.choice(spawner.coords)
    log.debug("spawn aléatoire : %s (%d,%d) monde %d", spawner.name, point.x, point.y, point.world)
    return point


def register_spawns_as_npcs(
    spawners: list[Spawner],
    register_func,
    appearance_map: dict[str, int] | None = None,
) -> int:
    """Enregistre les spawners comme PNJ dans le monde.

    Args:
        spawners: liste des spawners chargés
        register_func: fonction register_npc du module world
        appearance_map: mapping nom_spawner -> appearance_id (optionnel)

    Returns:
        Nombre de PNJ enregistrés
    """
    count = 0
    for spawner in spawners:
        # Utiliser le premier point de spawn
        if not spawner.coords:
            continue

        point = spawner.coords[0]
        appearance = appearance_map.get(spawner.name, 1) if appearance_map else 1

        try:
            npc = register_func(
                name=spawner.name,
                appearance=appearance,
                x=point.x,
                y=point.y,
                world=point.world,
                hostile=True,
                hp=50,
                damage=10,
                xp_reward=10,
                gold_reward=5,
            )
            count += 1
            log.info("PNJ spawné : %s en (%d,%d) monde %d", spawner.name, point.x, point.y, point.world)
        except Exception as e:
            log.error("Erreur spawn %s : %s", spawner.name, e)

    return count


# Chargement automatique au démarrage (si fichier présent)
def auto_load_spawns(server_root: Path | None = None) -> list[Spawner]:
    """Charge automatiquement les spawners depuis le répertoire de ressources."""
    if server_root is None:
        server_root = Path(__file__).parent.parent

    spawns_path = server_root / "ressources" / "wda_extract" / "spawns.json"
    return load_spawns(spawns_path)


if __name__ == "__main__":
    # Test autonome
    import sys
    sys.path.insert(0, str(Path(__file__).parent.parent))

    spawns = auto_load_spawns()
    print(f"{len(spawns)} spawners chargés")
    for s in spawns:
        print(f"  {s.name}: {len(s.coords)} points")
        for c in s.coords[:3]:
            print(f"    monde {c.world}, ({c.x}, {c.y})")
