# Priorités — Passes 101 à 106

1. Valider les blocs et destinations de tables virtuelles nouvellement découvertes par une preuve RTTI ou une référence de constructeur, et distinguer explicitement callbacks, vtables et pointeurs utilitaires.
2. Remonter les indirects restants et les alertes `indirect_jump` dans les registres des passes 96–100.
3. Exploiter les autres données de relocation PE et les tables exception C++ pour identifier des **points d'entrée effectivement référencés**, sans désassembler aveuglément les trous entre fonctions.
4. Travailler en parallèle la sémantique (sérialisation, sauvegarde, gestion sessions) et la couverture en octets, avec deux registres distincts.
5. Répéter l'audit indépendant : masques et frontières, concordance PE, provenance des cibles, classification correcte code/données.
