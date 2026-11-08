# Passe 19 — désassemblage uniquement

Cette passe poursuit le **désassemblage de T4C Server.exe** et n'ajoute aucun code de serveur Python. Le projet expérimental Python de la passe 18 reste inclus sans modification, comme référence et base éventuelle pour plus tard.

Documents :
- `01_RAPPORT_PASSE19_COMBAT.md` : rapport consolidé, confirmé / inconnu / suite.
- `02_ASSEMBLEUR_TFCMAIN_ATTACK.txt` : sortie brute de GNU objdump pour `0x4722A0–0x472B60`.
- `03_ASSEMBLEUR_BROADCAST_COMBAT.txt` : sortie brute pour `0x40FCA0–0x40FF00`.
- `04_SCHEMA_EVENEMENTS_COMBAT.tsv` : schéma par offsets et tailles.
- `05_CARTOGRAPHIE_COMBAT.tsv` : appels vérifiables et leurs adresses.
- `06_ASSEMBLEUR_CANATTACK_CHARACTER.txt` et `07_ASSEMBLEUR_MONSTER_ATTACK.txt` : fonctions courtes.

**Source de vérité :** le binaire fourni. Les anciens pseudocodes ne sont utilisés que pour recouper les étiquettes de champs. L'ensemble de la passe est une reconstruction statique, pas le code source original.
