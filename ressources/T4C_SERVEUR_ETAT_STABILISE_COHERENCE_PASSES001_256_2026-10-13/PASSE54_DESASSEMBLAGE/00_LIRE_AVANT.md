# T4C Server — Passe 54 : fonctions WDA paramétrées et grammaire conditionnelle

Analyse statique du PE **T4C Server(1).exe**, SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Archive source : `T4C_SERVEUR_PASSE53_DESASSEMBLAGE_PUR_2026-10-09.zip`.

- Les **16 noms spéciaux** du lexique de la passe 53 ont maintenant des sous-types `OPERAND+0x11` associés à une instruction d'écriture vérifiée.
- La fonction `if` manipule **trois sous-arbres**, un comparateur et les séparateurs `?` et `:`. Ses erreurs sont rapprochées de 11 chaînes réelles du binaire.
- Les fonctions `0x40F300` (insertion dans un arbre associatif) et `0x40F5E0` (navigation) sont étudiées séparément, **sans inventer de lien fonctionnel direct** avec les WDA.
- **952 instructions vérifiées**, **2800 octets de code supplémentaires non redondants**, **0 rejet**.
- Couverture brute : **120518/905117 = 13.315 %** ; série prudente : **120427/905117 = 13.305 %**, écart historique de 91 octets conservé.

Données WDA réelles et DLL MFC authentifiée non disponibles. Aucun exécutable ou projet de serveur Python dans l'archive.
