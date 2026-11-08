# Passe 45 — Boosts, persistance et exhaustion

**Binaire étudié :** `T4C Server(1).exe` — SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.

Poursuite documentaire de la passe 44. Les 359 fichiers historiques demeurent inchangés; seuls des rapports, extraits x86 et tableaux nouveaux sont ajoutés. Aucun développement ou test Python du serveur n'est livré. Les calculs de couverture sont opérés hors archive.

## Lecture guidée

1. `01_RAPPORT_PASSE45_BOOSTS_EXHAUSTION.md` — interprétation vérifiée, offsets et limites.
2. `02_PREUVES_GESTION_BOOSTS.asm` — API `_BOOST`, collisions de clés, agrégation.
3. `03_PREUVES_STATISTIQUES_ET_PAQUET.asm` — getters, valeurs de base et notification.
4. `04_PREUVES_EXHAUST_PAR_CLASSE.asm` — méthodes virtuelles et champs par classe.
5. `05_PREUVES_PERSISTANCE_SQL_BOOSTS.asm` — requêtes SQL et reconstruction.
6. `06_CONTRATS_BOOSTS.tsv`, `07_STRUCTURES_EXHAUSTION.tsv`, `08_CORRESPONDANCES_SQL_ET_STATISTIQUES.tsv` — tables.
7. `09_INCERTITUDES_ET_PRIORITES.md`, `10_COUVERTURE_PASSE45.json`, `11_MANIFESTE_PASSE45.tsv` — traçabilité.

Les expressions « confirmé » et « inconnu » concernent le désassemblage statique et non une validation en partie ni avec une base ou des fichiers WDA réels.
