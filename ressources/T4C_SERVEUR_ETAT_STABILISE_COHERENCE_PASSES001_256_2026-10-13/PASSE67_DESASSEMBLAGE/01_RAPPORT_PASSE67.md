# Passe 67 — Résolution du différentiel historique et décodage de l'unwind C++

## 1. Couverture mesurée et vérifiée

Recalcul sur l'exécutable original (SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`) ; section `.text` de 905117 octets à `0x00401000`.

| Étape | Octets uniques `.text` | Couverture |
|---|---:|---:|
| Passe 57 : `.asm` seuls | 122233 | 13.504663 % |
| **Complément des 8 anciens `.txt`** | **+4198** | — |
| **Référentiel historique exact** | **126431** | 13.968470 % |
| Passes 58–65 (distincts) | +1501 | — |
| Après passe 66 / avant nouvelle preuve SEH | **127932** | 14.134305 % |
| Passe 67 (fonclets / destructeur) | **+304** | — |
| **Couverture cumulée passe 67** | **128236** | **14.167892 %** |

L'écart de 4 198 octets est entièrement expliqué : la reconstitution de la passe 66 omettait 8 documents `.txt` pourtant composés de désassemblage. Leur apport unique est exactement 4 198 ; les 126 431 octets de la passe 57 sont reproduits **à l'octet près**, après rejet de 536 lignes divergentes. Les 1 501 nouveaux octets précédemment candidats deviennent non redondants par comparaison directe avec le masque **complet** de la passe 57. Le total de 128 236 et les masques byte-offset sont enregistrés dans l'archive.

## 2. Métadonnées d'exception du traitement `0x45C950`

Le prologue pousse `0x4D77EB` (`0x45C955`). Ce thunk exécute `MOV EAX,0x4E6A10` puis saute vers `0x4D1B8A` (import du gestionnaire runtime des exceptions C++). À `0x4E6A10` dans `.rdata`, l'en-tête vaut `0x19930520`, `maxState=12`, pointeur de table `0x4E6A30`. L'unwind map a 12 entrées 8-octets ; voir `05_TABLE_UNWIND.tsv`.

L'état 5 est marqué à `0x45CB1B` immédiatement après la construction du conteneur `[EBP-0x3C]` via `0x45E8A0` à `0x45CB0D`. Son entrée d'unwind (`0x4E6A58`) indique **toState=3**, action **`0x4D77A3`**, qui effectue `LEA ECX,[EBP-0x3C]` puis `JMP 0x45D450`. Cela constitue une preuve machine directe d'un chemin de **nettoyage exceptionnel du conteneur local**.

## 3. Distinguer nettoyage normal et nettoyage exceptionnel

- Sur chemins normaux étudiés, `0x45CF90` et `0x45D0ED` appellent **`0x45E3D0`** ; le code repasse à l'état 3 avant destruction (`0x45CF8C` et `0x45D0E9`).
- Sur déroulement C++ à partir de l'état 5, le fonclet `0x4D77A3` route vers **`0x45D450`** ; cette routine traverse les nœuds (`0x45F080`), nettoie le sous-objet (`0x45F4C0`), libère les blocs (`0x442060`) et remet les champs de contrôle à zéro (`+4`, `+8`).
- Le chemin exceptionnel emploie donc une seconde routine à comportement destructeur, différente en adresse du destructeur explicite normal.
- Ce fait ne prouve ni l'absence de fuites si un constructeur lance avant l'installation de l'état 5, ni un nettoyage si le processus s'interrompt sans unwind, ni la totalité des autres graphes d'exceptions.

## 4. Provenance et limites

- 12 entrées d'unwind de **données** ont été décodées, mais leurs octets `.rdata` ne contribuent PAS aux 128236 octets assembleur.
- Des **102 instructions** ont été consignées dans les trois extraits ciblés (l'import déjà couvert compris), totalisant 310 octets distincts dans les extraits ; **seuls 304 sont nouveaux** contre le masque vérifié des passes 2–65.
- Le périmètre demeure le binaire original, sans désassemblage dynamique et sans réimplémentation du serveur.

## 5. Suite conseillée — Passe 68

Vérifier les états 6–11, les objets temporaires associés, les exceptions possibles à l'intérieur de la construction de l'arbre et les autres chemins d'évaluation `var`. Ajouter exclusivement les plages assembleur nouvelles en comparant au masque passe 67.
