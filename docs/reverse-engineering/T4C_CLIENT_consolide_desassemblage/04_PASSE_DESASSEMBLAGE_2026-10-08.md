# T4C client — nouvelle passe de désassemblage statique

Date : 8 octobre 2026. Exécutable étudié : `t4c(2).exe` (PE32 x86, non exécuté).

**SHA-256** : `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68` — identique à l'empreinte déjà citée dans les notes V7. Il s'agit d'une nouvelle analyse du même binaire et non d'une nouvelle version.

## Résultat inédit : S2C 45 — GET_TIME

- Adresse du handler : `0x499864..0x4998E6`.
- Six appels successifs à `0x4B5AD0` (`read_u8`) écrivent chacun un octet dans des emplacements globaux.
- Un appel à `0x4B5A40` (`read_u16_be`) lit ensuite un entier non signé big-endian.
- Format observé **après l'identifiant du paquet** : `u8 × 6 + u16_be`, soit **8 octets**. Le libellé `GET_TIME` vient de la cartographie précédente ; le sens de chaque champ reste inconnu.
- Destinations dans l'ordre : `0x6990B0`, `0x6990B4`, `0x6990B8`, `0x6990C0`, `0x6990BC`, `0x6990C4`, `0x6990C8`.

## Autres vérifications

- **S2C 46** (`0x499292..0x4992AB`) appelle `0x4A2A30` en passant le pointeur du paquet ; aucune lecture explicite de champ dans cette branche courte. **Ne pas conclure** que le paquet est vide avant d'étudier le callee.
- **S2C 40** (`0x4994E0..0x499660`) : lecture de deux `u16` d'en-tête puis boucle d'enregistrements `u8, u16, u16, u16, u32, CString(u16 len + bytes)`. Cette structure était déjà documentée, et cette passe en corrobore l'ordre.

## Limites

Analyse statique seulement, désassemblage x86 par `objdump`. Aucune exécution réseau. Les champs n'ont pas été validés par capture réelle ni par suivi dynamique des consommateurs. Le pseudocode reconstruit n'est pas le code source original. Les autres paquets restent à analyser.

## Extrait de désassemblage vérifiable : S2C 45

```asm
  49987a:	e8 51 c2 01 00       	call   0x4b5ad0
  499886:	e8 45 c2 01 00       	call   0x4b5ad0
  499892:	e8 39 c2 01 00       	call   0x4b5ad0
  49989e:	e8 2d c2 01 00       	call   0x4b5ad0
  4998aa:	e8 21 c2 01 00       	call   0x4b5ad0
  4998b6:	e8 15 c2 01 00       	call   0x4b5ad0
  4998c2:	e8 79 c1 01 00       	call   0x4b5a40
```
