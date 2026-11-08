# Limites du balayage

Le balayage des octets `FF` et des motifs `68`, `B8`–`BF` est volontairement une recherche de **candidats** : des octets d’opérandes peuvent correspondre aux mêmes valeurs. Seul un désassemblage ancré sur des débuts d’instructions vérifiés permettrait de confirmer chaque branche. Aucun résultat négatif ne démontre l’absence d’appels indirects.
