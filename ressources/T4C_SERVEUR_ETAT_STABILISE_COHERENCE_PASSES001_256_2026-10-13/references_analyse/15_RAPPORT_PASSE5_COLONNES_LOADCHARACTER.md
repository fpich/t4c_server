# T4C Serveur — Passe 5 : colonnes du chargement de personnage

Binaire : `T4C Server(1).exe` ; SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Désassemblage statique uniquement, sans serveur exécuté ni schéma ODBC validé.

## Résultat principal

La fonction `Character::LoadCharacter` (entrée `0x414B70`) réalise une séquence de lectures du curseur global `0x511678` bien plus étendue que les colonnes 1–5 repérées en passe 4. Dans la fenêtre `0x414CD0–0x415009`, on observe les indices **7 à 31**, ainsi qu’une lecture supplémentaire de l’indice **6** placée après celle de 24. La présence d’indices ne prouve pas à elle seule le nom des champs SQL.

| Colonne | Routine de lecture | Destination ou utilisation visible |
|---:|---|---|
| 7 | `0x44EF10` | appel virtuel +0xDC |
| 8 | `0x44EF10` | appel virtuel +0xD4 |
| 9 | `0x44EFF0` | appel virtuel +0xF0 |
| 10 | `0x44EFF0` | appel virtuel +0xE8 |
| 11 | `0x44EFF0` | 0x48E2C0 |
| 12 | `0x44EFF0` | 0x48E2B0 |
| 13 | `0x44EFF0` | 0x48E2D0 |
| 14 | `0x44EFF0` | 0x48E2A0 |
| 15 | `0x44EFF0` | 0x48E2E0 |
| 16 | `0x44EFF0` | appel virtuel +0x140 |
| 17 | `0x44EFF0` | 0x48E2F0 |
| 18 | `0x44EFF0` | 0x48E300 |
| 19 | `0x44EF10` | zone locale +0x28 (valeur intermédiaire) |
| 20 | `0x44EFF0` | WORD this+0x7C |
| 21 | `0x44EFF0` | WORD this+0x84 |
| 22 | `0x44F160` | QWORD local, x87, conversion puis appel virtuel +0x50 |
| 23 | `0x44EFF0` | WORD this+0x1E2 |
| 24 | `0x44EFF0` | WORD this+0x1E0 |
| 6 | `0x44EFF0` | BYTE this+0x58 (lecture dans un ordre non croissant) |
| 25 | `0x44EF80` | DWORD this+0x80 |
| 26 | `0x44EFF0` | BYTE this+0x7E |
| 27 | `0x44F120` | buffer taille 0x400 puis this+0x164 |
| 28 | `0x44F120` | buffer taille 0x400 puis this+0x168 |
| 29 | `0x44EF10` | DWORD this+0x8C |
| 30 | `0x44EF10` | DWORD this+0x88 |
| 31 | `0x44EF10` | DWORD this+0x90 |

## Points précis confirmés

- `0x414EA4–0x414EC5` : lecture de la colonne 22 par `0x44F160` vers une zone locale de 8 octets, chargement x87 `fld qword`, conversion et appel virtuel à `vtable+0x50`. La signification métier est inconnue.
- `0x414F4C–0x414FA0` : colonnes 27 et 28 lues via `0x44F120` avec une limite passée de `0x400`, puis copiées dans deux champs de type chaîne à `this+0x164` et `this+0x168`. Cette limite concerne le tampon d’appel observé, pas nécessairement une taille de champ SQL garantie.
- `0x414FC2–0x415003` : colonnes 29, 30 et 31 copiées respectivement dans `this+0x8C`, `this+0x88` et `this+0x90` (DWORD).
- `0x415009` : appel `0x44ED70` sur le curseur global ; après celui-ci, `0x412420` et `0x48F370` sont appelées. L’identité précise de ces fonctions est à déterminer.
- Plusieurs colonnes numériques transitent par des méthodes virtuelles ou sous-routines à `0x48E2xx`. Les appeler « statistiques », « caractéristiques » ou « compétences » exigerait un recoupement supplémentaire.

## Limites et prochaines étapes

Ce relevé constitue une **cartographie de lectures et destinations**, pas une preuve du schéma SQL complet ou du sens de chaque valeur. La fonction dépasse largement `0x415060` et contient des chemins de gestion d’erreur et d’autres chargements à explorer. Priorités : identifier les noms réels des colonnes, suivre `0x48E2A0–0x48E300`, corréler `LoadCharacter` et `SaveCharacter`, puis reconstruire la transition vers `PutPlayerInGame`.

La reconstruction globale du serveur reste estimée à **2–5 %**, sans hausse artificielle liée à ce progrès local.
