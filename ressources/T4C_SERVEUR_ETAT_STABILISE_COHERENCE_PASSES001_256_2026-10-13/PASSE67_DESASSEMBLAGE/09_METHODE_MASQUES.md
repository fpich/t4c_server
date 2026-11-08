# Reproduction exacte des mesures de couverture

**Précondition** : disposer de l'exécutable avec le SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Ne pas prendre en compte les extraits qui divergent de cet original.

Pour chaque ligne `VA: octets-opcode instruction` des fichiers assembleur historiques `.asm` **et** `.txt` :
1. Convertir `VA` en offset `.text`: `offset = VA - 0x401000` ; conserver uniquement `0 <= offset` et `offset + n <= 905117`.
2. Comparer chaque octet opcode au PE à `fichier[0x1000 + offset : 0x1000 + offset + n]` ; rejeter la ligne entière si différence.
3. Mettre à 1 les bits correspondant aux offsets de code validés ; les doublons restent un seul bit.
4. Pour les passes 58–65, soustraire le masque historique de la passe 57 ; pour la passe 67, soustraire l'union précédente.

Les quatre masques binaires fournissent la preuve persistante exacte sans code exécutable :
- `10_MASQUE_HISTORIQUE_P57.bitset` : 126431 bits à 1.
- `11_MASQUE_AJOUTS_P58_P65.bitset` : 1501 bits à 1.
- `12_MASQUE_AJOUTS_P67.bitset` : 304 bits à 1.
- `13_MASQUE_CUMULE_P67.bitset` : 128236 bits à 1.

**Format** : 113140 octets par masque (bitset dense) ; bit `offset % 8` de l'octet `offset // 8` représente le byte `VA = 0x401000 + offset`. Le dernier octet est complété par 0 jusqu'au multiple de huit. Les ensembles des 3 premiers masques sont disjoints ; leur OU bit-à-bit produit exactement le masque cumulé.

Le fichier `07_INTERVALLES_NOUVEAUX.tsv` donne les plages compressées (bornes d'adresse VA, fin exclue). Les octets `.rdata` des tables C++ ne sont **pas** des instructions `.text` et ne sont jamais comptabilisés.

L'archive inclut les preuves et les mesures, **aucun script Python**. En particulier un pourcentage assembleur ne signifie pas « pourcentage de comportements réimplémentés ».
