# Guide d'audit sans scripts exécutables dans l'archive

- Le binaire de référence n'est pas inclus dans le ZIP : il s'agit de l'exécutable fourni dans la conversation, SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Section `.text`: VA `0x401000`, position fichier `0x1000`, longueur `905117` octets.
- Vérifiez chaque ligne `VA: octets instruction` dans `02_PREUVES_ASSEMBLEUR.asm` avec le binaire: `position_fichier = 0x1000 + VA - 0x401000`; seules les instructions atteignables de l'entrée connue sont listées.
- Format masques: 113140 octets (bits de poids faible vers poids fort, offset de `.text`). Les octets sont uniques: chaque bit allumé vaut 1 octet vérifié, jamais une instruction ni une fonction.
- Pour chaque passe N: `MASQUE_CUMULE_N = MASQUE_CUMULE_N-1 OR MASQUE_AJOUTS_N`, et `AND` entre les deux termes = 0. Le premier masque précédent est `PASSE70_DESASSEMBLAGE/08_MASQUE_CUMULE_P70.bitset`.
- Contrôlez les registres TSV et les avertissements de sauts indirects. Les preuves n'impliquent pas que tous les chemins de chaque fonction sont entièrement explorés.
- Aucun fichier Python/aucun exécutable de travail supplémentaire n'est ajouté. Aucun pourcentage ne mesure la fidélité de réimplémentation.
