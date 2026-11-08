# Passe 226 — Bilan cumulatif

| Catégorie | Octets | % de `.text` |
|---|---:|---:|
| Instructions masquées (inchangées) | 828,849 | 91.574 % |
| Données de dispatch (anciennes + nouvelles) | 3,943 | 0.436 % |
| Remplissage probable (inchangé) | 17,946 | 1.983 % |
| **Total classifié** | **850,738** | **93.992 %** |
| **Indéterminé** | **54,379** | **6.008 %** |

**Gain : +891 octets de données classifiées, +0 octet de code.** Aucun gain d'assembleur revendiqué. La validation des 18 tables comprend un garde borné, un indexage octet, un saut indexé, et des cibles déjà présentes dans le masque de code.

L'estimation du remplissage et le masque d'instructions historique restent provisoires. Atteindre 100 % du classement requiert davantage de preuves, en particulier pour les grandes fonctions isolées.
