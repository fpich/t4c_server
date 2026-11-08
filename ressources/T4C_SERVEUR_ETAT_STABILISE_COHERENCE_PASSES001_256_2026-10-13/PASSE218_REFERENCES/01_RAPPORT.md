# Passe 218 — Références contrôlées

- 901 fichiers de preuves `.asm`/`.tsv`/`.txt` balayés.
- 53,989 mentions textuelles d'appels/sauts directs, 19,726 destinations distinctes ; aucune vers les 579 séquences reclassées.
- 23,191 relocations `HIGHLOW` du PE analysées ; aucune valeur pointeur dans ces séquences.

**Limites :** un balayage des textes n'est pas un graphe de contrôle exhaustif. Les appels virtuels, pointeurs construits à l'exécution et chemins indirects demeurent des réserves.
