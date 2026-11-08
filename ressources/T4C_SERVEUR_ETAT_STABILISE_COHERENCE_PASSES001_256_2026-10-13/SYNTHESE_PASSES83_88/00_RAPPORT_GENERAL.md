# Désassemblage accéléré du serveur T4C original — Passes 83 à 88

## Résultat principal

- Exécutable étudié : `T4C Server(2).exe`, identique à l'empreinte SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. **Le binaire n'est pas redistribué** dans l'archive.
- Section `.text` : début VA `0x401000`, décalage fichier `0x1000`, longueur `905117` octets.
- Avant passe 83 : `264486 / 905117` = **29.221195 %**.
- Ajouts uniques, non redondants : **+79202 octets**.
- Après passe 88 : **`343688 / 905117` = 37.971666 %**.
- Instructions documentées par six preuves : **29985**, avec **308** entrées de graphe parcourues.
- Aucun octet ajouté en double d'après le masque historique de la passe 82 et les masques incrémentaux.

## Déroulé des six passes

**83 — Entrées exportées restantes :** 51 entrées historiques non couvertes à leur adresse de départ, notamment `SpellMessageHandler::IsSpellLearnable` (`0x462380`), ainsi que les routines de copie de `MonsterStructure`, `Players`, `Group` et `TFCPacket`. Attention : les noms correspondant aux opérateurs de copie sont des décorations C++ MSVC, leur sémantique d'exécution n'a pas été testée.

**84 — Fin du graphe Sysop :** extension de `SysopCmd::VerifySysopCommand`, entrée `0x463E00`, jusqu'aux branches directement atteignables à l'intérieur de sa plage d'export ; 53 043 octets d'instructions documentés dont 39 046 nouveaux. La dernière instruction atteinte se situe avant `0x4715D0`, entrée exportée suivante. Le graphe statique d'appels et de sauts directs ne couvre pas les sauts indirects ni des comportements dynamiques inconnus.

**85 — Cibles d'appels directes liées au monde et au combat :** nouvelles routines internes pointées depuis `Character`, `WorldMap`, `Unit`, `Creatures`, etc. Leurs noms restent non résolus quand l'adresse n'est pas exportée.

**86 — Cibles liées aux sessions et au réseau :** suivi des cibles directes issues de `Players`, `CPlayerManager`, `TFCPacket`, `Group`, `TFCMAIN`, etc. Aucun contenu réseau sensible n'a été exécuté ou envoyé.

**87 — Infrastructure et logique :** exploration de cibles directes des classes restantes et de l'infrastructure serveur.

**88 — Appels transitifs :** une génération supplémentaire d'appels directs relevés dans les cinq nouvelles passes, avec déduplication sur l'ensemble du masque cumulatif.

## Portée des résultats

Ce résultat mesure **les octets correspondant à des instructions x86 statiquement parcourues depuis des entrées déterminées**, vérifiés octet par octet contre le PE original, et non la proportion de comportements métier compris ou validés.

Le désassemblage s'appuie sur GNU `objdump` et un parcours de graphe (branches directes internes, appels traités comme cibles documentées). Chaque fonction est bornée par l'entrée exportée suivante et une limite par passe. Les branchements indirects, callbacks virtuels, tables de saut, exceptions et chemins exécutés seulement au runtime peuvent manquer. Les preuves de la passe 84 dépassent volontairement la fenêtre de 14 000 octets de la passe 82 parce que la fin d'espace d'export est connue.

Le second audit a indépendamment relu les lignes de code machine des six preuves, vérifié les octets dans le fichier original, recomposé les additions et vérifié leur absence des masques précédents. Il ne constitue pas une preuve de correction fonctionnelle du serveur.

L'archive cumulative conserve à l'identique tous les fichiers de la passe 82 ; aucun fichier Python ni exécutable n'y figure.
