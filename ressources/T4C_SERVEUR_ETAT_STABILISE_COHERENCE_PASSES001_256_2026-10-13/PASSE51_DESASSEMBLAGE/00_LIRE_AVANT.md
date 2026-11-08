# T4C Server — Passe 51 — Expressions WDA / BoostFormula

**Cible :** `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.

La passe suit le **parseur/evaluateur BoostFormula** et relie la syntaxe WDA au contexte runtime (skills, boosts, flags, objets). Etude statique, aucune execution d'un serveur reconstruit.

## Navigation

- `01_RAPPORT_PASSE51.md` : methodes et constats, confirmations/limites.
- `02_`, `03_`, `04_` : assembleur avec instructions et octets verifiables.
- `05_TABLE_OPERATEURS.tsv`, `06_CHAINES_APPELS.tsv`, `07_VTABLES_ET_SYMBOLES.tsv` : tables auditables.
- `08_LIMITES.md` : inconnues.
- `09_MESURES_COUVERTURE_PASSE51.json` : couverture recalculée et dedupliquee.
- `10_CONTINUITE.md` et `11_MANIFESTE.tsv` : suite et manifest.

**Important :** la couverture des octets de `.text` n'est pas un pourcentage du gameplay compris. Aucun fichier `.py` n'est ajoute a l'archive cumulative.
