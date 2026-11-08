# T4C Server.exe — Désassemblage statique, passe 23 — 2026-10-08

**Objet** : liste de butin appartenant à `MonsterStructure` ; copie profonde ; index du modèle ; sélection et dépôt en cas de position valide.

**Limite** : source initiale des tables, noms des modèles, valeurs des chances et persistance SQL **non identifiés**. Le binaire n'a pas été lancé. Le serveur Python historique reste inchangé.

| Fichier | Contenu |
|---|---|
| `01_RAPPORT_PASSE23_PROVENANCE_LOOT.md` | Résultats confirmés, corrections et incertitudes |
| `02_PREUVES_ASSEMBLEUR_PASSE23.asm` | Instructions x86 par plage d'adresses |
| `03_STRUCTURE_MONSTER_LOOT.tsv` | Structure offsets et 16 octets/entrée |
| `04_CHAINE_SELECTION_DEPOT.tsv` | Chaîne OnDeath → création → dépôt et branchements |
| `05_REGISTRE_INCERTITUDES.md` | Ce qui reste inconnu |
| `06_CONTROLES_ET_SOURCES.md` | Tests de cohérence et traçabilité |
| `07_CONTINUITE.md` | Priorités de la prochaine passe |

SHA-256 exécutable : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
