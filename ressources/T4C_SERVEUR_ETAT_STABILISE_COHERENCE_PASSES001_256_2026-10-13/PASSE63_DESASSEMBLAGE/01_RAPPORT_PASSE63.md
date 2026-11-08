# Passe 63 — Cycle de vie de la collection locale WDA

## Source binaire

- SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`
- Désassemblage : GNU objdump, PE i386, syntaxe Intel.
- Étendue `.text` historique conservée : 905117 octets.

## Résultats vérifiés directement

1. À `0x45CB07`, `LEA ECX,[EBP-0x3C]` suivi à `0x45CB0D` de `CALL 0x45E8A0` : construction de la structure locale transmise dans les six appels du wrapper.
2. Le constructeur `0x45E8A0` écrit deux octets de contexte aux offsets +0 et +1, alloue `0x30` octets à `0x441FF0`, construit un nœud sentinelle auto-référent, le range à structure+4, initialise structure+8 à zéro. Ces opérations sont compatibles avec un conteneur arborescent à sentinelle et nombre d'éléments.
3. Deux sorties du traitement appellent `0x45E3D0` avec `ECX=&[EBP-0x3C]` : `0x45CF90` et `0x45D0ED`. Ces appels confirment la destruction du conteneur sur ces chemins.
4. `0x45E3D0` visite et libère des nœuds (`0x45F080`, `0x45F4C0`, `0x442060`), puis libère la sentinelle et annule les champs +4 et +8.
5. D'autres branches manipulent la même structure à `0x45E8F0` et `0x45E910`, avec libération explicite de données de travail via `0x442060`. Ces derniers appels ne prouvent pas, à eux seuls, la destruction de tous les nœuds.

## Distinction indispensable

Le conteneur `[EBP-0x3C]` a une origine locale et une destruction démontrée sur au moins deux branches. **Il n'est pas établi que ce conteneur soit identique à l'arbre utilisé pour les variables `var` du lecteur d'expressions `0x40A5C4`.** Il ne faut donc pas conclure que toutes les variables `var` sont détruites par `0x45E3D0`. Le chemin de sortie/exception complet n'est pas audité.

## Comptage

Couverture cumulée antérieure conservée : **126431 / 905117 = 13,968 %**. Nouveaux octets uniques revendiqués : **0**, faute d'union indépendante des plages historiques avec celles de cette passe. Les extraits représentent une vérification directe nouvelle au sens documentaire, pas un accroissement mesuré.

## Suite

Suivre les écritures dans l'arbre `[EBP-0x3C]`, puis examiner les arguments des appels à `0x40A5C4` / `0x40F230` pour tester l'identité ou la séparation de leurs structures. Auditer explicitement les sorties normales et les chemins SEH.
