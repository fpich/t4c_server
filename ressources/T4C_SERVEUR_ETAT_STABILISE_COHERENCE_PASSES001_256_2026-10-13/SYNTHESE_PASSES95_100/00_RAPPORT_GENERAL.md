# T4C Serveur — Passes 95 à 100, désassemblage accéléré par pointeurs et graphes

## Résultat chiffré

- Exécutable PE original `T4C Server(2).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc` (non inclus dans l'archive).
- Section `.text` : 905 117 octets, VA `0x401000`, offset PE `0x1000`.
- Couverture avant passe 95 : **364 548 octets (40.276340 %)**.
- Octets nouveaux uniques : **+132 389 octets**.
- Couverture en fin de passe 100 : **496 937 / 905 117 = 54.903068 %**.
- Instructions présentes dans les six fichiers de preuves : **50,541** ; entrées de graphes examinées : **818**.
- Les preuves machine sont contrôlées contre le binaire original, les masques sont disjoints et leurs intervalles sont reconstruits indépendamment.

## Progression

- **Passe 95** — Décodage des deux tables de saut bornées, sans désassembler leurs données : +90 octets, 364,638 cumulés (40.286283 %), 2 entrées, 0 alertes.
- **Passe 96** — Première moitié des entrées de pointeurs de code vérifiés en .rdata : +14,892 octets, 379,530 cumulés (41.931596 %), 181 entrées, 7 alertes.
- **Passe 97** — Deuxième moitié des entrées de pointeurs de code vérifiés en .rdata : +40,118 octets, 419,648 cumulés (46.363951 %), 180 entrées, 4 alertes.
- **Passe 98** — Cibles des appels directs cumulées depuis les passes 89-97 : +33,373 octets, 453,021 cumulés (50.051098 %), 258 entrées, 29 alertes.
- **Passe 99** — Propagation d’une nouvelle génération d’appels directs : +26,293 octets, 479,314 cumulés (52.956027 %), 69 entrées, 0 alertes.
- **Passe 100** — Dernière génération de cibles directes et bilan des tables indirectes : +17,623 octets, 496,937 cumulés (54.903068 %), 128 entrées, 0 alertes.

## Résolutions exactes des trois sauts prioritaires

1. `0x4CFC53` : `jmp DWORD PTR [eax*4+0x4CFCBC]` ; bornage `cmp eax,0x16` avec branchement `ja 0x4CFCB4` ; **23 cases**, **16 destinations distinctes** lues littéralement dans le PE. `0x4CFC40` soustrait `0x30` au caractère et retourne les chiffres hexadécimaux majuscules `0–9`/`A–F` sous forme 0..15 ; les entrées hors plage reviennent au cas par défaut retournant 0. Aucun octet de la table n'est classé comme instruction nouvelle.
2. `0x41C204` : `jmp DWORD PTR [eax*4+0x41CBD8]` ; bornage `cmp eax,0x7` avec `ja 0x41C2BB` ; **8 entrées**, **8 destinations distinctes** à l'intérieur du graphe `Character::Death` (`0x41B250`). Aucun rôle métier supplémentaire des cas n'est attribué sans analyse.
3. `0x4D21C8` : `jmp DWORD PTR ds:0x4DE2C4` ; saut vers la table IAT et import **MSVCRT!__dllonexit**. **Ce n'est pas** une table de branches de code interne.

## Tables de pointeurs et cibles transitives

- Onze séquences d'au moins huit pointeurs consécutifs vers `.text` ont été trouvées dans `.rdata`. Elles peuvent contenir des tables virtuelles, des listes de callbacks ou des tableaux adjacents ; ne pas leur attribuer automatiquement une classe C++.
- Le registre `TABLES_POINTEURS_RDATA.tsv` conserve chaque cible et toutes ses adresses de provenance dans `.rdata`. **361 cibles initialement non couvertes** ont été retenues comme points de départ, 181 en passe 96 et 180 en passe 97.
- Les passes 98 à 100 prolongent les cibles des appels `CALL` effectivement identifiés ; elles ne remplissent pas artificiellement les écarts entre exports.
- Le chiffre de couverture inclut des instructions vérifiées au plan octet et frontière de décodage statique, et non la reconstruction sémantique complète des fonctions.

## Réserves méthodologiques importantes

- Toutes les correspondances PE, preuves assembleur et masques vérifiées ne prouvent pas à elles seules la correction du graphe de contrôle statique sur tous les chemins (données intégrées, appels indirects, SEH, callbacks, obfuscation éventuelle).
- Les longs tableaux de pointeurs consécutifs ne sont **pas tous** attribués avec certitude à des vtables RTTI. Les origines brutes sont fournies pour permettre un audit ultérieur.
- Une cible désassemblée peut contenir des branches indirectes ouvertes ; les alertes spécifiques figurent dans chaque passe.
- Aucun exécutable, source Python ni outil de désassemblage n'est distribué dans le ZIP.
