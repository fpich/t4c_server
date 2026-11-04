#!/usr/bin/env python3
"""Parse `Game Files/maps.dat` du client T4C et produit un JSON des maps.

Format des lignes : `S|x0,y0,w,h,world,pcx,` (S=surface, L=donjon, l=sous-sol).
La carte globale fait 3072x3072 (0x0C00). Chaque PCX (640x480) est un morceau
de la carte globale ; la passabilité se lit dans la palette/couleur des pixels
(chantier séparé : parser PCX + table de couleurs walkable).

Usage : python3 tools/maps_dat.py [maps.dat] [sortie.json]
"""

import json
import sys
from pathlib import Path

DEFAULT = (
    Path(__file__).resolve().parent.parent
    / "ressources" / "t4c_client_fr" / "Game Files" / "maps.dat"
)


def parse_maps_dat(path=DEFAULT):
    maps = []
    for line in Path(path).read_text(encoding="latin1").splitlines():
        line = line.strip().replace("\r", "")
        if not line:
            continue
        parts = [p.strip() for p in line.split(",")]
        if len(parts) < 7 or parts[0] not in ("S", "L", "l"):
            continue
        kind = {"S": "surface", "L": "donjon", "l": "sous-sol"}[parts[0]]
        x, y, w, h, world = (int(p) for p in parts[1:6])
        maps.append(
            {
                "kind": kind,
                "x": x,
                "y": y,
                "w": w,
                "h": h,
                "world": world,
                "pcx": parts[6],
            }
        )
    return maps


if __name__ == "__main__":
    src = sys.argv[1] if len(sys.argv) > 1 else DEFAULT
    dst = sys.argv[2] if len(sys.argv) > 2 else "ressources/wda_extract/maps.json"
    maps = parse_maps_dat(src)
    Path(dst).write_text(json.dumps(maps, indent=1, ensure_ascii=False))
    print(f"{len(maps)} maps -> {dst}")
