"""Carte et collisions (PLAN 2.1).

Le serveur original valide chaque déplacement via WorldMap::IsBlocking
(@0x4AF250) sur la grille du monde chargé depuis `T4C Worlds.WDA`. Le format
WDA reste non décodé (cf. ressources/.../PASSE41 — « INCONNU : collisions
réellement présentes dans T4C Worlds.WDA »), donc on définit ici un format
minimal propre, chargeable depuis un CSV, en attendant l'extraction réelle.

À partir de l'étape 33, on peut charger automatiquement les grilles de
collision réelles depuis les PCX clients + maps.dat (voir t4c.map_parser).
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

    def __init__(self, maps_dir: str | Path | None = None,
                 use_real_collision: bool = False):
        self.maps_dir = Path(maps_dir) if maps_dir else None
        # world -> dict[(x, y)] -> bool walkable
        self._grids: dict[int, dict[tuple[int, int], bool]] = {}
        self._loaded: set[int] = set()
        self._use_real_collision = use_real_collision
        self._real_loaded: set[int] = set()

        if use_real_collision:
            self._load_real_collision()

    def _load_real_collision(self) -> None:
        """Charge les grilles réelles depuis PCX + maps.dat (étape 33)."""
        try:
            from t4c.map_parser import load_real_collision
            real_grids = load_real_collision()
            for world, grid in real_grids.items():
                self._grids[world] = grid
                self._loaded.add(world)
                self._real_loaded.add(world)
            log.info("collision réelle chargée : %d mondes", len(real_grids))
        except ImportError:
            log.warning("t4c.map_parser non disponible, fallback CSV")

    def _load(self, world: int) -> None:
        if world in self._loaded:
            return
        # Essayer d'abord la collision réelle
        if self._use_real_collision and world not in self._real_loaded:
            self._load_real_collision()
            if world in self._grids:
                self._loaded.add(world)
                return
        # Fallback CSV
        if self.maps_dir is None:
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
