# Passe 07 — bloc fixe de S2C 13 (`PUT_PLAYER_IN_GAME`)

Date : 2026-10-08. Désassemblage **statique** de `t4c(2).exe` (SHA-256 `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`). Outil : GNU objdump, code x86, VA du PE original. Pas d’exécution réseau.

## Résultat principal

Le chemin analysé commence à `0x49A612`. Entre les appels de lecture `0x49A634` et `0x49A886`, on relève **31 lectures directes TFCPacket, soit 75 octets de données après l’opcode applicatif**. Il n’y a pas de saut conditionnel ou inconditionnel apparent dans cette séquence d’appels : sa structure de lecture est fixe sur le chemin étudié. La séquence commence par un `u8` lu dans une variable locale ; la destination ne permet pas de lui attribuer définitivement le nom `result`.

Les fonctions de lecture utilisées sont `0x4B5AD0` (`u8`), `0x4B5A40` (`u16` big-endian) et `0x4B5980` (`u32` big-endian), conformément aux précédentes analyses.

| Offset relatif après opcode | Taille | Appel VA | Type |
|---:|---:|---|---|
| 0 | 1 | `0x49A634` | `u8` |
| 1 | 4 | `0x49A640` | `u32` |
| 5 | 2 | `0x49A64C` | `u16` |
| 7 | 2 | `0x49A658` | `u16` |
| 9 | 2 | `0x49A664` | `u16` |
| 11 | 4 | `0x49A6D6` | `u32` |
| 15 | 4 | `0x49A6E2` | `u32` |
| 19 | 2 | `0x49A6EE` | `u16` |
| 21 | 2 | `0x49A6FA` | `u16` |
| 23 | 4 | `0x49A705` | `u32` |
| 27 | 4 | `0x49A735` | `u32` |
| 31 | 4 | `0x49A761` | `u32` |
| 35 | 4 | `0x49A76C` | `u32` |
| 39 | 2 | `0x49A797` | `u16` |
| 41 | 2 | `0x49A7A3` | `u16` |
| 43 | 2 | `0x49A7AF` | `u16` |
| 45 | 2 | `0x49A7BB` | `u16` |
| 47 | 2 | `0x49A7C7` | `u16` |
| 49 | 2 | `0x49A7D3` | `u16` |
| 51 | 2 | `0x49A7DF` | `u16` |
| 53 | 1 | `0x49A810` | `u8` |
| 54 | 1 | `0x49A81C` | `u8` |
| 55 | 1 | `0x49A828` | `u8` |
| 56 | 1 | `0x49A834` | `u8` |
| 57 | 1 | `0x49A840` | `u8` |
| 58 | 1 | `0x49A84C` | `u8` |
| 59 | 2 | `0x49A858` | `u16` |
| 61 | 4 | `0x49A864` | `u32` |
| 65 | 2 | `0x49A870` | `u16` |
| 67 | 4 | `0x49A87B` | `u32` |
| 71 | 4 | `0x49A886` | `u32` |


### Découpage lisible (offsets relatifs)

- `0` : `u8` (octet de statut/commande, **sémantique incertaine**).
- `1–10` : `u32` + trois `u16` (identifiant et coordonnées, noms proposés dans le pseudocode historique).
- `11–22` : deux `u32` + deux `u16`.
- `23–38` : quatre `u32` représentant deux paires de valeurs 64 bits reconstruites côté client.
- `39–52` : sept `u16`.
- `53–60` : six `u8` + un `u16` : bloc horaire commun également rencontré dans S2C 45.
- `61–74` : `u32` + `u16` + deux `u32`.

**Taille** : 75 octets de champs applicatifs *hors l’opcode* de 2 octets. Cette taille borne la série de lectures directes observée ; elle ne suffit pas à garantir toutes les variantes du protocole, ni le comportement d’éventuels appels indirects.

## Contrôle du flux après lecture

- Dernière primitive de lecture directe : `0x49A886`.
- Le bloc qui suit effectue des initialisations et envoie des requêtes (dont `0x27` puis `0x3C`).
- La valeur du premier `u8` est utilisée dans une **table de saut** à `0x49AA1A`, après test de plage à `0x49AA15..0x49AA18` (`ecx-3` comparé à `9`). Les cas d’interface associés restent non documentés.
- Le retour principal observé est `0x49AB43`.

## Limites et vérifications restantes

Le tableau reflète seulement les lectures directes dans cette routine. Les noms des statistiques, des champs XP et des variables globales du précédent pseudocode sont des hypothèses héritées : leurs offsets de fil sont ici confirmés, pas toute leur sémantique. Il reste à examiner les cibles de la table de saut, les autres appels d’initialisation, les éventuelles exceptions de lecture, et à confronter le format au constructeur du serveur réel ou à une capture contrôlée.
