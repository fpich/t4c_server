# Passe 30 — progression vérifiée

| Indicateur | Passe 29 | Passe 30 | Variation |
|---|---:|---:|---:|
| Octets `.text` uniques présents dans les preuves vérifiées | 37,767 | 41,424 | +3,657 |
| Couverture de la section `.text` | 4.173 % | 4.577 % | +0.404 point |
| Fonctions exportées dont l'entrée est prouvée | 104 | 107 | +3 |
| Total exports | 1125 | 1125 | — |

Le nouveau fichier d'assembleur contient **1193 instructions vérifiées**, et **0 instruction rejetée**. La base de mesure reste **905,117 octets** de `.text`, SHA-256 du binaire `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.

**Ce n'est pas un taux de compréhension des fonctions.** La différence correspond aux nouveaux octets non déjà couverts par les preuves des passes précédentes. Les taux de couverture des entrées exportées ne sont pas des taux de fonctions totalement comprises.
