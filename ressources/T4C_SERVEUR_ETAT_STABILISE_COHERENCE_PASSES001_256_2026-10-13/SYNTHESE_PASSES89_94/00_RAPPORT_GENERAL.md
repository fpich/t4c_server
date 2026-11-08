# T4C Serveur — Passes 89 à 94 : désassemblage accéléré

## Résultat

- Binaire original analysé : `T4C Server(2).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Il **n'est pas inclus** dans cette archive.
- Section `.text` : base VA `0x401000`, offset fichier `0x1000`, taille **905,117 octets**.
- Référence passe 88 : 343 688 octets (37.971666 %).
- Nouveau gain vérifié : **20 860 octets distincts**.
- Après la passe 94 : **364 548 / 905 117 = 40.276340 %**.
- Instructions présentes dans les six fichiers de preuves : **10,961** ; entrées de graphe parcourues : **126**.
- Les masques nouveaux sont disjoints entre passes et de la couverture de la passe 88 ; concordance avec les octets du binaire confirmée par une lecture indépendante.

## Détail des passes

- **89** Cibles de CALL encore hors masque après passe 88 : **+8,837 octets**, cumul 352,525 (38.948003 %), 44 entrées ; 2 alertes.
- **90** Une generation supplementaire de CALL internes : **+3,810 octets**, cumul 356,335 (39.368943 %), 39 entrées ; 0 alertes.
- **91** Deuxieme generation de CALL directs distincts : **+550 octets**, cumul 356,885 (39.429709 %), 5 entrées ; 0 alertes.
- **92** Extensions des graphes CFG des mondes, sessions et combats : **+7,045 octets**, cumul 363,930 (40.208061 %), 15 entrées ; 1 alertes.
- **93** Extensions CFG des fonctions infrastructure et auxiliaires : **+5 octets**, cumul 363,935 (40.208614 %), 17 entrées ; 0 alertes.
- **94** Fermeture supplementaire des cibles CALL directes : **+613 octets**, cumul 364,548 (40.276340 %), 6 entrées ; 0 alertes.

## Découvertes et provenance des appels

- La passe 89 explore 44 cibles de `CALL` directement référencées dans la passe 88 et encore absentes du masque. Deux sauts indirects sont signalés sans inventer leurs cibles.
- Les passes 90 et 91 continuent les appels directs sur deux générations supplémentaires (respectivement 39 et 5 entrées).
- La passe 92 reprend 15 fonctions exportées présentant de larges zones non couvertes. Le graphe `Character::Death` (`0x41B250`) et celui de `Character::LoadCharacter` (`0x414B70`) apportent la majeure partie de ce gain. Les appels directs attestés de `Character::Death` incluent notamment `CT4CLog::GetLog`, `CLogger::AsyncLog` et `Unit::GetID` ; `Character::LoadCharacter` utilise entre autres `CT4CLog::DebugLog`, `Unit::GetID`, `0x441FF0` et `0x442060`.
- La passe 93 repasse sur 17 autres grandes entrées exportées. Elle n'ajoute que 5 octets, résultat normal lorsque le graphe direct couvert est déjà complet pour ces chemins : un grand écart entre exports ne doit **pas** être interprété comme une seule fonction gigantesque.
- La passe 94 suit six cibles directes supplémentaires issues des passes antérieures.

## Limites de la couverture

Cette mesure concerne les octets identifiés comme appartenant à des instructions x86 dans des graphes d'exécution statiques. Les points d'entrée suivent les exports du PE et des cibles d'appels directs documentés. Les appels indirects, les tableaux de branchement, les exceptions, les callbacks, et d'éventuels points d'entrée non référencés demeurent partiellement ou totalement hors du périmètre. Le désassembleur GNU peut être trompé par du code entrelacé de données, même si la correspondance des octets est parfaite ; les masques **ne sont pas** une preuve formelle de validité des frontières x86 ni de couverture de tous les comportements.

L'archive contient les anciens fichiers sans modification, six dossiers de preuves et une synthèse, sans code Python ni exécutable.
