"""Catalogue des sorts — extrait du WDA original (ressources/wda_extract/spells.csv).

Le WDA `T4C Worlds.WDA` déchiffré (tools/wda_decrypt.py) contient les définitions
de sorts au format `[id]Nom`. On charge ici le catalogue id -> nom.

Sort de départ (développement) : 414 "Fire dart" (dégâts feu, formule WDA :
`-((1d17+6+self.int/23)*self.fire/target.r_fire)`).
"""

from __future__ import annotations

import csv
from pathlib import Path

DEFAULT_SPELLS_CSV = Path(__file__).resolve().parent.parent / "ressources" / "wda_extract" / "spells.csv"

# Sorts connus d'un nouveau personnage (développement).
STARTER_SPELLS: tuple[int, ...] = (414,)  # Fire dart

# Coût en mana par sort (développement ; le WDA a les vraies formules).
SPELL_MANA_COST = 10

SPELLS: dict[int, str] = {}


def load_spells(csv_path: str | Path = DEFAULT_SPELLS_CSV) -> dict[int, str]:
    """Charge le catalogue id -> nom depuis le CSV extrait du WDA."""
    global SPELLS
    SPELLS = {}
    path = Path(csv_path)
    if path.is_file():
        with path.open(newline="", encoding="utf-8") as f:
            for row in csv.reader(f):
                if not row or row[0] == "id":
                    continue
                try:
                    SPELLS[int(row[0])] = row[1]
                except (ValueError, IndexError):
                    continue
    return SPELLS


def spell_name(spell_id: int) -> str:
    return SPELLS.get(spell_id, f"Sort {spell_id}")


# Charge le catalogue au import si disponible.
load_spells()
