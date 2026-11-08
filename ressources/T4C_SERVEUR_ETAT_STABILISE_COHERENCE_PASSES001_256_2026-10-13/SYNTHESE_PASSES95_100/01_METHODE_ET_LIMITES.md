# Méthode, critères de comptage et limites

1. Vérifier l'empreinte SHA-256 PE `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
2. Relire `PASSE94_DESASSEMBLAGE/07_MASQUE_CUMULE.bitset` : 364 548 bits actifs. Bit *i* = octet de VA `0x401000+i`.
3. Vérifier les points d'entrée : deux tableaux de branchement bornés et des pointeurs `DWORD` (4 octets) dans les séquences `.rdata` de 8 pointeurs-code consécutifs ou plus ; les appels transitifs sont des `CALL rel32` décodés.
4. Pour chaque instruction des `02_PREUVES_ASSEMBLEUR.asm`, vérifier l'adresse, la taille de 1–15 octets et les octets machine (`offset fichier = 0x1000 + VA - 0x401000`). Les chemins excluent explicitement les instructions invalides, le padding, les interruptions et les cibles hors fenêtres.
5. Chaque masque `06_MASQUE_AJOUTS.bitset` doit être disjoint du masque précédent. Le `07_MASQUE_CUMULE.bitset` doit être leur union et son cardinal égal au JSON de mesures.
6. Reconstruire chaque masque d'ajouts depuis `05_INTERVALLES_NOUVEAUX.tsv` et vérifier que chaque bit nouveau est couvert par une instruction du `.asm` de la passe correspondante.
7. Vérifier qu'aucun octet des tableaux `.text` de `0x4CFCBC..0x4CFD17` et `0x41CBD8..0x41CBF7` n'a été nouvellement comptabilisé comme code.
8. Vérifier les frontières d'instruction contre les instructions archivées des passes 71–94, en conservant la possibilité d'ambiguïtés non détectées par une analyse statique.

La couverture ne prouve ni l'exécution réelle des chemins, ni une sémantique correcte de toutes les fonctions, ni la validation des sauts indirects absents des deux tableaux traités.
