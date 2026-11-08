# Passes 125–130 — Poursuite conservatrice du désassemblage T4C original

## Couverture

- Base de la passe 124 : **809 622 / 905 117**, soit **89,449 %**.
- Nouvelles instructions retenues : **14 instructions, 30 octets uniques**.
- Nouveau compteur : **809 652 / 905 117 = 89,452745 %**.
- Octets non comptés : **95 465**.
- Aucun octet heuristique, de donnée ou de remplissage ajouté artificiellement.

| Passe | Gain octets | Total octets | Couverture |
|---|---:|---:|---:|
| 125 | +30 | 809652 | 89.4527 % |
| 126 | +0 | 809652 | 89.4527 % |
| 127 | +0 | 809652 | 89.4527 % |
| 128 | +0 | 809652 | 89.4527 % |
| 129 | +0 | 809652 | 89.4527 % |
| 130 | +0 | 809652 | 89.4527 % |

## Nouvelles preuves directes

Les appels directs conservés en passe 124 :

- `0x477181` appelle `0x4773B0` ; nouvelle routine de 15 octets (de `push ebp` à `ret 4`).
- `0x477521` appelle `0x477750` ; nouvelle routine de 15 octets (de `push ebp` à `ret 4`).

Les deux routines chargent un mot de 32 bits depuis l'objet (`[ECX+4]`) et l'écrivent à l'adresse passée via `[EBP+8]`. Aucun appel direct supplémentaire dans ces deux routines.

## Audits complémentaires

- 44 tables de sauts indexés soutenues par des instructions archivées et une séquence de relocations : toutes leurs destinations sont **déjà couvertes**.
- 77 références relocalisées dans `.text` pointent vers une zone hors masque au début de cette série. Beaucoup désignent **des tables de saut ou d'autres données**, non de nouvelles fonctions ; elles sont classées dans le TSV et non comptées.
- Plusieurs gros intervalles non couverts semblent contenir du code x86 et des prologues MSVC plausibles, mais manquent de référence prouvée. Ils restent hors couverture.
- Les 14 instructions ajoutées correspondent au PE d'origine et au désassemblage indépendant LLVM ; l'union des masques est exacte.

La couverture accumulée précédemment comporte encore des points d'entrée issus des relocations et demeure une **couverture statique provisoire**. Aucun test d'exécution ou de comportement n'a été effectué.
