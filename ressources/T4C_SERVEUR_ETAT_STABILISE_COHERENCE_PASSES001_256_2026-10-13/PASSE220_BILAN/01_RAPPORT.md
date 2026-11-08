# Passe 220 — Bilan réaudité

| Catégorie | Octets | % de `.text` |
|---|---:|---:|
| Instructions (masque réaudité, provisoire) | 828 849 | 91.573686 % |
| Tables de pointeurs corroborées | 3 052 | 0.337194 % |
| Remplissage fortement présumé | 17 946 | 1.982727 % |
| **Total classifié** | **849 847** | **93.893607 %** |
| Indéterminé | 55 270 | 6.106393 % |

**Correction :** retrait de 862 octets précédemment comptés comme instructions ; ajout de 1 686 octets de remplissage depuis les régions indéterminées (1 644 nouveaux intervalles et 42 octets dans quatre intervalles mixtes). Aucune hausse de la couverture d'instructions.

**Attention :** la classification du remplissage n'est pas une preuve d'inaccessibilité via tous les appels indirects. Les masques historiques restent présents dans l'archive pour traçabilité.
