# Passe 08 — Résolution de la table de saut S2C 13

Date : 2026-10-08 — Analyse **statique** du client `t4c(2).exe` (SHA-256 `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`). Il s'agit du binaire déjà étudié, sans exécution. Aucune comparaison avec un binaire serveur exécutable lors de cette passe.

## Contrôle du dispatcher

Dans le handler S2C 13, le premier octet lu à `0x49A634` est réutilisé à `0x49AA09` depuis `[ebp-0x14]` avec `and ecx,0xff`. À `0x49AA12` : `eax = ecx - 3`; à `0x49AA15` : comparaison **non signée** `eax <= 9` (sinon `ja 0x49AA52`); à `0x49AA1A`, saut indirect via une table de **10 pointeurs little-endian** commençant à l'adresse virtuelle `0x49F694` (fichier `.text` : offset `0x9F694`).

| Valeur du premier u8 | Entrée table | Cible | Suite immédiate |
|---:|---:|---:|---|
| 3 | `0x49f694` | `0x49aa21` | Appel `0x51EA5B` avec deux arguments nuls (`push esi` ×2), puis rejoint `0x49AA52` |
| 4 | `0x49f698` | `0x49aa28` | Appel `0x51EA5B` avec deux arguments nuls (`push esi` ×2), puis rejoint `0x49AA52` |
| 5 | `0x49f69c` | `0x49aa2f` | Appel `0x51EA5B` avec deux arguments nuls (`push esi` ×2), puis rejoint `0x49AA52` |
| 6 | `0x49f6a0` | `0x49aa36` | Appel `0x51EA5B` avec deux arguments nuls (`push esi` ×2), puis rejoint `0x49AA52` |
| 7 | `0x49f6a4` | `0x49aa3d` | Appel `0x51EA5B` avec deux arguments nuls (`push esi` ×2), puis rejoint `0x49AA52` |
| 8 | `0x49f6a8` | `0x49aa44` | Appel `0x51EA5B` avec deux arguments nuls (`push esi` ×2), puis rejoint `0x49AA52` |
| 9 | `0x49f6ac` | `0x49aa52` | Traitement commun directement |
| 10 | `0x49f6b0` | `0x49aa52` | Traitement commun directement |
| 11 | `0x49f6b4` | `0x49aa52` | Traitement commun directement |
| 12 | `0x49f6b8` | `0x49aa4b` | Appel `0x51EA5B` avec deux arguments nuls (`push esi` ×2), puis rejoint `0x49AA52` |

**Valeurs hors 3..12 :** rejoignent également `0x49AA52`. Les cas 9, 10, 11 ne passent pas par l'appel `0x51EA5B` dans ce chemin. La nature exacte de cet appel est **INCONNUE** ; il serait incorrect de présenter ces cas comme des « états » métier nommés sans preuve supplémentaire. `esi` vaut zéro dans le chemin observé après `xor esi,esi` en amont, à vérifier dans chaque entrée possible du handler.

## Comportement commun après la table

- `0x49AA52` charge une paire de DWORD en `0x88E580` / `0x88E584` et teste si elle est nulle ; plusieurs embranchements consultent un octet global `0x5D9E25`.
- `0x49AA8F` : appel `0x465EE0` conditionnel après mise à zéro de ce drapeau.
- `0x49AAA1..0x49AAAA` : construction d'un objet paquet et écriture de la constante `0x3C` (60 en décimal) via `0x4B57E0`. Cet entier ne doit **pas** être confondu sans recoupement avec un opcode C2S : les conventions d'écriture restent à vérifier.
- `0x49AAF6` : appel `0x45BA10`, suivi de `0x447310` et `0x447A60` puis destruction d'objets temporaires, avant le retour à `0x49AB43`.

## Méthode et limites

Les dix cibles ont été **lues comme DWORD directement dans le PE** et comparées au désassemblage `objdump -D -Mintel --start-address=0x49AA09 --stop-address=0x49AB44`. Le tableau est confirmé au niveau des octets du binaire. Le rôle des cas, des drapeaux d'interface et les éventuelles exceptions dans d'autres chemins ne sont pas établis. La passe précédente de 75 octets de lecture directe ne prouve pas, à elle seule, que tous les messages 13 ont la même longueur.
