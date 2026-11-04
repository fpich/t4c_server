"""Carte et collisions (PLAN 2.1).

Le serveur original valide chaque déplacement via WorldMap::GetCollisionPos
(@0x4B2700) sur la grille du monde chargé depuis `T4C Worlds.WDA`. Le format
WDA reste non décodé (cf. ressources/.../PASSE41 — « INCONNU : collisions
réellement présentes dans T4C Worlds.WDA »), donc on définit ici un format
minimal propre, chargeable depuis un CSV, en attendant l'extraction réelle.

Convention : par défaut (pas de fichier), toute case dans les bornes
0..0x0C00 du monde est franchissable — comportement actuel du serveur de
développement. Un fichier `maps/world<id>.csv` (s'il existe) restreint la
grille : chaque ligne `x,y,0|1` (1 = franchissable, 0 = bloqué) ; les cases
absentes du fichier sont bloquées si au moins une ligne existe pour ce
monde, franchissables sinon.
"""

from __future__ import annotations

import csv
import logging
from pathlib import Path

log = logging.getLogger("t4c.maps")

# Bornes de la carte acceptées par le client (handler paquet 9 @0x49AB44).
MAP_MAX = 0x0C00


class WorldMap:
    """Grille de passabilité par monde."""

    def __init__(self, maps_dir: str | Path | None = None):
        self.maps_dir = Path(maps_dir) if maps_dir else None
        # world -> dict[(x, y)] -> bool walkable
        self._grids: dict[int, dict[tuple[int, int], bool]] = {}
        self._loaded: set[int] = set()

    def _load(self, world: int) -> None:
        if world in self._loaded or self.maps_dir is None:
            self._loaded.add(world)
            return
        path = self.maps_dir / f"world{world}.csv"
        if path.is_file():
            grid: dict[tuple[int, int], bool] = {}
            with path.open(newline="", encoding="utf-8") as f:
                for row in csv.reader(f):
                    if not row or row[0].startswith("#"):
                        continue
                    x, y, walk = int(row[0]), int(row[1]), int(row[2])
                    grid[(x, y)] = bool(walk)
            self._grids[world] = grid
            log.info("carte monde %d chargée : %s (%d cases définies)", world, path, len(grid))
        self._loaded.add(world)

    def set_walkable(self, world: int, x: int, y: int, walkable: bool) -> None:
        """Définit une case (API de test / édition en ligne)."""
        self._grids.setdefault(world, {})[(x, y)] = walkable
        self._loaded.add(world)

    def is_walkable(self, x: int, y: int, world: int = 0) -> bool:
        """Une case est franchissable si dans les bornes et non bloquée."""
        if not (0 <= x <= MAP_MAX and 0 <= y <= MAP_MAX):
            return False
        self._load(world)
        grid = self._grids.get(world)
        if not grid:
            return True  # pas de carte définie : tout est franchissable
        return grid.get((x, y), False)
