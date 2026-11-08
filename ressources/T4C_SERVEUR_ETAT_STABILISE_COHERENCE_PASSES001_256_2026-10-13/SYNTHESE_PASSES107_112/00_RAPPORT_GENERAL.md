# Passes 107–112 — Chaînes de contrôle direct

- Exécutable original SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Couverture de référence : **681 297 / 905 117** octets (75,272 %).
- Couverture après cette série : **767 001 / 905 117** octets (84,741 %).
- Gain : **+85 704 octets uniques**, prouvés par les fichiers assembleur et leur correspondance avec le PE.
- Références de départ directes dont l'instruction source et sa destination sont vérifiées : **2027**.
- Audit des frontières de nouvelles instructions : aucun chevauchement divergent avec les preuves précédentes recensées.
- Le masque final laisse **138 116 octets non couverts**, qui peuvent être du code, des données intégrées ou de l'alignement.

Les passes 107–108 suivent des branches directes ; la 109 reprend les CALL immédiats non couverts ; les 110–112 poursuivent les dépendances transitives.

Ces métriques mesurent la reconstruction **statique de plages interprétées comme instructions**. Les points d'entrée historiques provenant de relocations doivent conserver une catégorie de confiance séparée des appels explicites : ni les allocations, ni les comportements en exécution ne sont validés par ces chiffres.
