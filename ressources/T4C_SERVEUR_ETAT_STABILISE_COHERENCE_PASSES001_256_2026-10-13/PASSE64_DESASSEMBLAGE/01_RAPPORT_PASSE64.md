# Passe 64 — Identité de provenance du conteneur var WDA

## Exécutable vérifié
SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. PE i386 original. Preuves : extraits GNU objdump produits depuis le binaire, archives historiques 55–63.

## Résultat principal
Le pointeur de la collection locale `[EBP-0x3C]` construite par `0x45E8A0` est transmis à `0x45C890` puis à `0x45A7A0` ([EBP+0x1C] dans le dispatcher). La catégorie 5 charge ce pointeur en `EBX` (`0x45AB4F`). À `0x45ACC8`, `ECX=EBX` avant `CALL 0x40F230` : chemin d'écriture. La branche d'évaluation empile `EBX` comme premier des 9 arguments (`0x45AB58`) avant `CALL 0x40C350` (`0x45AB6D`).

`0x40C350` retransmet les 9 arguments à `0x409C10` en y ajoutant le contexte `[ECX+8]`; ce premier argument de `0x40C350` devient le dernier (dixième) de `0x409C10`, soit `[EBP+0x2C]`. Le lecteur `var` charge précisément `[EBP+0x2C]` en `ECX` (`0x40A5B5`) avant `CALL 0x40F230` (`0x40A5C4`).

**Conclusion vérifiée pour cette catégorie et cet appel : la lecture `var` et l'écriture de catégorie 5 opèrent sur le même pointeur de conteneur temporaire.** Par transposition du passage d'arguments commun, les autres appels de cette fonction qui utilisent cette structure peuvent suivre la même provenance ; leur exhaustivité et leur traitement exceptionnel restent à auditer.

## Destruction
Le constructeur (`0x45E8A0`) et le destructeur (`0x45E3D0`) de ce conteneur ont été documentés en passe 63; deux appels au destructeur sont connus (`0x45CF90`, `0x45D0ED`). Cela ne prouve pas encore que toutes les sorties, notamment exceptionnelles, libèrent l'arbre, ni que d'autres contextes WDA ne possèdent pas de conteneurs distincts.

## Bornes de preuve
- Les instructions sont examinées en statique ; aucune exécution du serveur ni traçage dynamique.
- Le statut concerne la provenance du pointeur, non un suivi de l'aliasing après éventuelles mutations.
- L'analyse de la catégorie 20 est héritée des passes antérieures ; sa chaîne complète reste à vérifier individuellement.
- Le compteur de couverture reste fixé à 126431 / 905117 octets = 13,968 % (arrondi), nouveaux octets uniques revendiqués : zéro, faute d'union indépendante avec toutes les plages historiques.

## Suite : passe 65
Auditer les accès aux variables depuis la catégorie 20 et dresser un graphe des sorties normales et SEH de `0x45C950` pour déterminer si chaque chemin détruit le conteneur.
