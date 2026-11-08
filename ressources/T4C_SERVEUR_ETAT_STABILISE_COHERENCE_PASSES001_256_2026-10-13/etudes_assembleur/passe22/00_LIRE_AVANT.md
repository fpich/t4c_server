# T4C Server.exe — Désassemblage, passe 22 — 8 octobre 2026

**Objet** : pénalités de mort configurées dans le registre, perte d'expérience/or/inventaire/équipement, tirage de butin conditionnel en `NPCstructure::OnDeath`.

| Document | Description |
|---|---|
| `01_RAPPORT_PASSE22_PENALITES_ET_BUTIN.md` | Analyse fonctionnelle et limites |
| `02_PREUVES_ASSEMBLEUR_PASSE22.asm` | Preuves x86 par plage d'adresses |
| `03_CLES_REGISTRE_MORT.tsv` | Huit clés `MOB_*` / `PC_*` et références VA |
| `04_CARTOGRAPHIE_MORT_LOOT.tsv` | 13 étapes et confiance |
| `05_REGISTRE_INCERTITUDES.md` | Hypothèses explicitement séparées des preuves |
| `06_CONTROLES_ET_SOURCES.md` | Constantes, symboles et empreintes |
| `07_NOTES_CONTINUITE.md` | Continuité des chantiers et priorité du désassemblage |
| `00_LIRE_AVANT.md` | Présente liste |

Le projet Python historique reste **inchangé**, et le client n'a pas été modifié. Binaire SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
