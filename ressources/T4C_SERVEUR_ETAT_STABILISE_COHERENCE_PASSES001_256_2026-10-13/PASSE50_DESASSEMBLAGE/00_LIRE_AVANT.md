# Passe 50 — Exécution des sorts, PV, réactions de combat et dépôt des objets

Étude statique du **serveur original** `T4C Server(1).exe`, empreinte SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Aucun développement Python du serveur, ni cache/test associé, n'est présent dans cette archive cumulative.

**Nouveauté majeure :** le type WDA **1** dispose d'un traitement négatif branché sur les appels virtuels `attacked`/`hit` et d'un traitement alternatif bornant les PV via `GetHP`, `GetMaxHP`, `SetHP`, avec diffusion de paquets. La formule générale de résistance magique n'est **pas** établie.

**Lecture recommandée :** `01_RAPPORT_PASSE50.md`, preuves `02` et `03` pour l'effet type 1, `04` pour le dépôt, table `05` des vtables, graphe `06`, comparaison `07`, incertitudes `08`, métrique `09`, manifeste `10` et continuité `11`.

Le taux de couverture vérifiée se rapporte aux octets distincts de `.text` dont les preuves assembleur correspondent exactement au PE. Il **ne mesure pas** la complétude fonctionnelle de la rétro-ingénierie.
