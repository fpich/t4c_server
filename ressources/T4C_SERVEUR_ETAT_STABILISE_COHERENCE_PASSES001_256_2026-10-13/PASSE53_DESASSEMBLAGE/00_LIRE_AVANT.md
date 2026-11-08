# T4C Server — Passe 53 : lexique WDA, position et recherche associative

Le binaire examiné est `T4C Server(1).exe`, SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Aucune exécution du serveur, aucun WDA réel, aucun code de serveur Python.

- **114 noms de variables / commandes** ont été reliés à une comparaison explicite du parseur `BoostFormula::ParseFormula`.
- **98 noms** ont une affectation de sélecteur directement établie (y compris les deux cas communs `x` / `arrow_dmg`), et **16** nécessitent l'étude de branches paramétrées.
- Le slot `+0x1C` de la vtable principale de quatre classes mène à `Unit::GetWL`.
- Le helper `0x40F230` est une recherche associative par chaîne ; le décrément d'un octet est réalisé *après* le helper par son appelant.
- +8763 nouveaux octets vérifiés sans redondance, 3887 instructions neuves de preuve, 0 rejet.
- Mesure brute cumulée **117718/905117 = 13.006 %** ; continuité prudente historique **117627/905117 = 12.996 %** (écart antérieur de 91 octets conservé dans le registre).

Les **459 fichiers historiques** sont conservés à l'identique dans le ZIP. Aucun artefact Python.

Consulter `01_RAPPORT_PASSE53.md`, `07_LEXIQUE_114_NOMS_WDA.tsv`, `08_VTABLES_GETWL.tsv` et `10_MESURES_PASSE53.json`.
