"""Parser de cartes PCX + maps.dat pour grille de collision réelle.

Le serveur original utilise WorldMap::IsBlocking (@0x4AF250) qui lit un
tableau d'octets où chaque octet contient 2 tuiles (nibble haut/bas).
Les valeurs 0-9 sont walkable, >=10 sont blocking.

maps.dat (CSV) donne les rectangles monde de chaque PCX :
  Type,X,Y,W,H,World,PCX_Name

On mappe les pixels du PCX (640x480) sur le rectangle monde pour en extraire
une grille de collision par échantillonnage des couleurs.
"""

from __future__ import annotations

import csv
import logging
import struct
from dataclasses import dataclass
from pathlib import Path
from typing import Optional

log = logging.getLogger("t4c.map_parser")

# Valeurs walkable selon IsBlocking (table jump @0x4AF334)
WALKABLE_MAX = 9


@dataclass
class MapRegion:
    """Région carte extraite de maps.dat."""
    type: str  # 'S' = Surface, 'L' = Landscape
    x: int
    y: int
    w: int
    h: int
    world: int
    pcx: str


class MapParser:
    """Parseur de cartes PCX + maps.dat."""

    def __init__(self, maps_dat_path: Optional[Path] = None,
                 pcx_dir: Optional[Path] = None):
        self.maps_dat_path = maps_dat_path
        self.pcx_dir = pcx_dir
        self.regions: list[MapRegion] = []
        self._load_maps_dat()

    def _load_maps_dat(self) -> None:
        """Charge maps.dat (CSV ASCII)."""
        if self.maps_dat_path is None or not self.maps_dat_path.is_file():
            log.warning("maps.dat non trouvé : %s", self.maps_dat_path)
            return

        with self.maps_dat_path.open(newline="", encoding="utf-8") as f:
            reader = csv.reader(f)
            for row in reader:
                if not row or len(row) < 7:
                    continue
                try:
                    region = MapRegion(
                        type=row[0].strip().upper(),
                        x=int(row[1]),
                        y=int(row[2]),
                        w=int(row[3]),
                        h=int(row[4]),
                        world=int(row[5]),
                        pcx=row[6].strip().rstrip(",").lower(),
                    )
                    self.regions.append(region)
                except (ValueError, IndexError):
                    log.warning("Ligne maps.dat ignorée : %s", row)

        log.info("maps.dat chargé : %d régions", len(self.regions))

    def get_regions_for_world(self, world: int) -> list[MapRegion]:
        """Régions d'un monde donné."""
        return [r for r in self.regions if r.world == world]

    def find_region_at(self, world: int, x: int, y: int) -> Optional[MapRegion]:
        """Trouve la région qui contient (x,y) dans le monde donné."""
        for r in self.regions:
            if r.world != world:
                continue
            # Gestion des dimensions négatives (Landscape)
            rx = r.x if r.w >= 0 else r.x + r.w
            ry = r.y if r.h >= 0 else r.y + r.h
            rw = abs(r.w)
            rh = abs(r.h)
            if rx <= x < rx + rw and ry <= y < ry + rh:
                return r
        return None

    def parse_pcx_collision(self, pcx_path: Path,
                            world_x: int, world_y: int,
                            world_w: int, world_h: int,
                            target_resolution: tuple[int, int] = (128, 96)) -> dict[tuple[int, int], bool]:
        """Extrait la grille de collision d'un PCX.

        Args:
            pcx_path: chemin vers le fichier PCX
            world_x, world_y: coin haut-gauche dans le monde
            world_w, world_h: dimensions dans le monde (peuvent être négatives)
            target_resolution: résolution cible en tuiles (width, height)

        Returns:
            dict[(world_x, world_y)] -> bool walkable
        """
        if not pcx_path.is_file():
            log.warning("PCX non trouvé : %s", pcx_path)
            return {}

        # Lire le PCX
        with pcx_path.open("rb") as f:
            data = f.read()

        # Parser le header PCX
        if len(data) < 164:
            log.error("PCX trop petit : %s", pcx_path)
            return {}

        # Trouver la palette : marker 0x0C standard PCX, les 768 derniers
        # octets du fichier sont la palette RGB (précédée de 0x0C).
        # On cherche le 0x0C à len(data)-769 (position standard), sinon on
        # scanne les 1024 derniers octets.
        palette_marker = -1
        if len(data) >= 769 and data[len(data) - 769] == 0x0C:
            palette_marker = len(data) - 769
        else:
            # Scan de secours : dernier 0x0C dans les 1024 derniers octets
            search_start = max(0, len(data) - 1024)
            for i in range(len(data) - 1, search_start, -1):
                if data[i] == 0x0C and i + 769 <= len(data):
                    palette_marker = i
                    break

        if palette_marker == -1:
            log.error("Palette non trouvée dans : %s", pcx_path)
            return {}

        palette = data[palette_marker + 1:palette_marker + 1 + 768]

        # Extraire les pixels (après header 164 bytes, avant palette)
        pixel_data = data[164:palette_marker]

        # Dimensions PCX
        pcx_w = 640
        pcx_h = 480
        target_w, target_h = target_resolution

        grid: dict[tuple[int, int], bool] = {}

        # Calculer le pas en coordonnées monde par tuile
        step_x = world_w / target_w if target_w > 0 else world_w
        step_y = world_h / target_h if target_h > 0 else world_h

        # Pour chaque tuile cible, échantillonner plusieurs pixels PCX
        for ty in range(target_h):
            for tx in range(target_w):
                # Mapper la tuile vers les pixels PCX
                px = int(tx * pcx_w / target_w)
                py = int(ty * pcx_h / target_h)

                # Échantillonner un petit bloc autour du pixel
                colors = []
                for dy in range(min(4, pcx_h - py)):
                    for dx in range(min(4, pcx_w - px)):
                        idx = (py + dy) * pcx_w + (px + dx)
                        if 0 <= idx < len(pixel_data):
                            colors.append(pixel_data[idx])

                if not colors:
                    continue

                # Déterminer si la tuile est walkable
                walkable = self._is_tile_walkable(colors, palette)

                # Coordonnées monde (coin haut-gauche de la tuile)
                wx = world_x + int(tx * step_x)
                wy = world_y + int(ty * step_y)
                grid[(wx, wy)] = walkable

        log.info("PCX %s : %d tuiles extraites (%d walkable)",
                 pcx_path.name, len(grid), sum(1 for v in grid.values() if v))
        return grid

    def _is_tile_walkable(self, colors: list[int],
                          palette: bytes) -> bool:
        """Détermine si une tuile est walkable basée sur les couleurs.

        Heuristique :
        - Couleurs sombres (R,G,B < 50) = obstacles (murs, eau profonde)
        - Couleurs vertes/brunes = terrain walkable
        - Couleurs claires (>150) = sable/sol clair walkable
        """
        if not colors:
            return False

        walk_count = 0
        palette_len = len(palette)
        for c in colors:
            # Vérifier que l'index est valide (palette peut être tronquée)
            if c < 0 or c * 3 + 2 >= palette_len:
                continue
            r = palette[c * 3]
            g = palette[c * 3 + 1]
            b = palette[c * 3 + 2]

            # Couleur très sombre = bloquant
            if r < 50 and g < 50 and b < 50:
                continue

            # Vert/nature = walkable
            if g > r and g > b and g > 60:
                walk_count += 1
                continue

            # Brun/terre = walkable
            if r > 80 and g > 40 and b < 60:
                walk_count += 1
                continue

            # Clair = walkable (sable, pierre claire)
            if r > 150 and g > 150 and b > 150:
                walk_count += 1
                continue

            # Rouge/or = souvent walkable (sol chaud)
            if r > 100 and g < 80 and b < 60:
                walk_count += 1
                continue

        return walk_count > len(colors) // 2


def load_real_collision(maps_dir: Optional[Path] = None,
                        pcx_dir: Optional[Path] = None,
                        maps_dat_file: Optional[Path] = None) -> dict[int, dict[tuple[int, int], bool]]:
    """Charge les grilles de collision réelles depuis PCX + maps.dat.

    Args:
        maps_dir: dossier pour sauvegarder les grilles CSV (optionnel)
        pcx_dir: dossier contenant les PCX clients
        maps_dat_file: chemin vers maps.dat

    Returns:
        dict[world_id] -> dict[(x,y)] -> bool walkable
    """
    if pcx_dir is None:
        pcx_dir = Path(__file__).parent.parent / "ressources" / "t4c_client_fr" / "Maps"
    if maps_dat_file is None:
        maps_dat_file = Path(__file__).parent.parent / "ressources" / "t4c_client_fr" / "Game Files" / "maps.dat"

    parser = MapParser(maps_dat_path=maps_dat_file, pcx_dir=pcx_dir)

    result: dict[int, dict[tuple[int, int], bool]] = {}

    for region in parser.regions:
        # Ne charger que les régions avec dimensions positives (Surface)
        if region.w <= 0 or region.h <= 0:
            continue

        pcx_path = pcx_dir / region.pcx
        grid = parser.parse_pcx_collision(
            pcx_path,
            region.x, region.y,
            region.w, region.h,
            target_resolution=(64, 48),  # 1 tuile tous les ~8 pixels
        )

        if grid:
            result.setdefault(region.world, {}).update(grid)

    log.info("Collision chargée : %d mondes, %d tuiles walkable",
             len(result), sum(len(g) for g in result.values()))
    return result


if __name__ == "__main__":
    # Test rapide
    import sys
    logging.basicConfig(level=logging.INFO)

    pcx_dir = Path("/home/fabien/t4c_server/ressources/t4c_client_fr/Maps")
    maps_dat = Path("/home/fabien/t4c_server/ressources/t4c_client_fr/Game Files/maps.dat")

    parser = MapParser(maps_dat_path=maps_dat, pcx_dir=pcx_dir)
    print(f"Régions chargées : {len(parser.regions)}")

    # Tester avec lighthaven (monde 0) - une map de taille raisonnable
    lighthaven = next((r for r in parser.regions if "lighthaven.pcx" in r.pcx.lower() and r.w > 0 and r.h > 0), None)
    if lighthaven:
        print(f"Lighthaven: world={lighthaven.world}, ({lighthaven.x},{lighthaven.y}) {lighthaven.w}x{lighthaven.h}")

        grid = parser.parse_pcx_collision(
            pcx_dir / lighthaven.pcx,
            lighthaven.x, lighthaven.y, lighthaven.w, lighthaven.h,
            target_resolution=(128, 96)
        )
        walkable = sum(1 for v in grid.values() if v)
        print(f"Tuiles walkable : {walkable}/{len(grid)}")

    # Tester avec stoneheim (plus petite map)
    stoneheim = next((r for r in parser.regions if "stoneheim" in r.pcx.lower()), None)
    if stoneheim:
        print(f"\nStoneheim: world={stoneheim.world}, ({stoneheim.x},{stoneheim.y}) {stoneheim.w}x{stoneheim.h}")

        grid = parser.parse_pcx_collision(
            pcx_dir / stoneheim.pcx,
            stoneheim.x, stoneheim.y, stoneheim.w, stoneheim.h,
            target_resolution=(64, 64)
        )
        walkable = sum(1 for v in grid.values() if v)
        print(f"Tuiles walkable : {walkable}/{len(grid)}")
