# Passe 59 — Audit croisé des provenances `var` (documentaire)

## Périmètre
Relecture croisée des preuves archivées passes 55 à 58, **sans exécutable original**. Aucun octet ni instruction n'est déclaré nouvellement vérifié contre le binaire. Les notes anciennes restent intègres.

## Résultat principal : lecture non pure
Le sous-type d'opérande 11 mène à `0x40A55B`, puis à l'appel `0x40A5C4 → 0x40F230`. Ce helper compare les clés et peut appeler `0x40F300` pour une insertion (sites `0x40F28F` et `0x40F2D2`). La valeur double est lue à `0x40A5DA`, au décalage `noeud+0x20`. **Conséquence : l'évaluation d'une lecture `var` est susceptible de modifier la structure de l'arbre (création implicite de clé)**. Ce constat ne prouve ni la valeur initiale métier, ni une écriture permanente.

## Écritures
Dans le dispatcher à 24 catégories `0x45A7A0`, deux routes documentées aboutissent au même contrat `chercher/créer` : catégorie 5 (`0x45ACCE`, écriture `0x45ACF5`) et catégorie 20 (`0x45BA5E`, écriture de deux demi-mots `0x45BA83`/`0x45BA8B`). L'identité du conteneur concret entre chaque route et le lecteur reste **non prouvée**, faute de traçage de l'argument `this` / des alias à travers les appelants.

## Point mémoire à ne pas confondre
La libération `0x442060` autour de la lecture (`0x40A5DD–0x40A612`) porte sur un temporaire de chaîne et **ne démontre pas** la destruction du nœud `var`. La collection locale de `0x45C950` est construite (`0x45CB07/0x45CB0D → 0x45E8A0`) et nettoyée (`0x45CF90` et `0x45D0ED → 0x45E3D0`; valeurs `0x45F4C0`; nœuds `0x442060`). L'équivalence de cette collection avec le conteneur `var` **n'est pas établie**.

## Branche de dialogue
`0x45C890` expose des appels aux slots `+0x1A4`, `+0x1A8`, `+0x158`. Les correspondances `IsPrivateTalk`, `SendPrivateMessage`, `Talk` demeurent compatibles avec les exports, mais non revérifiées à l'aide d'un dump de la vtable originale dans cette passe.

## Prochaine preuve décisive
Sur l'exécutable SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`, tracer : (1) la valeur de `ECX` au site `0x40A5C4` jusqu'à son propriétaire; (2) `ECX` dans `0x45ACCE` et `0x45BA5E`, puis comparer les alias réels; (3) la chaîne de destruction du propriétaire; (4) les trois pointeurs des vtables aux slots appelés. Sans le binaire, aucune identité des arbres ni couverture supplémentaire ne peut être attestée.

## Sources d'archive
- `PASSE55_DESASSEMBLAGE/09_VARIABLES_ARBRE_ET_COMPTEUR.md`
- `PASSE56_DESASSEMBLAGE/02_PREUVES_DISPATCH_ECRITURES_VAR.asm`
- `PASSE56_DESASSEMBLAGE/03_PREUVES_ARBRE_CLE_ET_LECTURE.asm`
- `PASSE56_DESASSEMBLAGE/07_CHAINES_VAR_LECTURE_ECRITURE.tsv`
- `PASSE56_DESASSEMBLAGE/08_CORRECTIONS_INCERTITUDES.md`
- `PASSE57_DESASSEMBLAGE/03_PREUVES_ARBRE_TEMPORAIRE_DESTRUCTION.asm`
- `PASSE57_DESASSEMBLAGE/05_CONTRATS_CONTEXTE.tsv`
- `PASSE58_DESASSEMBLAGE/04_MATRICE_HYPOTHESES.tsv`
