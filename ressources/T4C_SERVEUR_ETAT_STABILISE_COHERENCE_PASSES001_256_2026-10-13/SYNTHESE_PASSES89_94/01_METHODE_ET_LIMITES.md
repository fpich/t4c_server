# Contrôle reproductible et limites

1. Vérifier SHA-256 du PE original : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
2. Extraire le masque `PASSE88_DESASSEMBLAGE/07_MASQUE_CUMULE.bitset` : exactement 343 688 bits actifs. Chaque bit i représente l'octet de VA `0x401000+i`.
3. Chaque `02_PREUVES_ASSEMBLEUR.asm` fournit une VA, les octets machine et le mnémonique ; vérifier 1 à 15 octets contre le PE (`offset fichier = 0x1000 + VA - 0x401000`).
4. Pour chaque passe, vérifier le caractère disjoint de `06_MASQUE_AJOUTS.bitset`, l'union avec le masque précédent donnant exactement `07_MASQUE_CUMULE.bitset`, et la concordance avec `05_INTERVALLES_NOUVEAUX.tsv` et les preuves.
5. Vérifier le total de 364 548 bits actifs en fin de passe 94, et les totaux du fichier `07_AUDIT_INDEPENDANT.json`.
6. Distinguer instructions effectivement vérifiées et sémantique partiellement reconstruite ; les sauts indirects figurant dans les fichiers `08_LIMITES_ET_ALERTES.tsv` restent ouverts.

L'analyse n'exécute pas le serveur. Les noms internes `CALL_target_XXXXXXXX` ne constituent pas des attributions de fonction métier. Les intervalles de parcours dépendent de fenêtres bornées et les fonctions exportées peuvent se trouver à proximité de grandes zones internes indépendantes ; seul le graphe des branches réellement décodées est comptabilisé.
