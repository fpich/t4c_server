# T4C Server — Mesure de couverture du désassemblage (référence passe 23)

**Date de référence :** 8 octobre 2026  
**Exécutable :** `T4C Server(1).exe` (PE32 x86)  
**SHA-256 :** `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`  
**Archive de référence :** `T4C_SERVEUR_PASSE23_DESASSEMBLAGE_2026-10-08.zip` (141 fichiers).  
**Objectif :** suivre l'étude du programme assembleur, **pas** l'implémentation Python.

## Mesures établies, reproductibles

| Indicateur | Résultat | Ce que cela prouve |
|---|---:|---|
| Section `.text` de l'exécutable | **905 117 octets** | Référence brute pour les octets de code et les éventuelles zones de données incluses dans cette section |
| Fichiers de preuves assembleur étudiés par le script | **26** | Extraits sauvegardés dans l'archive historique |
| Instructions citées, avec octets égaux à ceux du serveur | **12 378 lignes** | Comparaison directe des séquences machine |
| Adresses d'instruction distinctes | **9 257** | Les répétitions entre rapports sont dédupliquées |
| Octets machine distincts et vérifiés | **26 546** | **2,933 %** de la taille de `.text` |
| Fonctions exportées inventoriées | **1 125** | Noms exportés, pas nécessairement ensemble exhaustif des routines internes |
| Entrées exactes d'exports retrouvées dans les preuves | **89** | **7,911 %** des points d'entrée exportés apparaissent dans les extraits |
| Lignes de désassemblage écartées du comptage du serveur | **536** | Octets non identiques au binaire serveur ; les documents incluent notamment des extraits du client |

**Lecture correcte :** `2,933 %` est un *minimum de traces assembleur directement archivées et vérifiées*, **pas** le pourcentage du programme entièrement compris. Les `89` exports possèdent une instruction citée à leur entrée, mais cela **ne garantit pas** une analyse exhaustive de ces fonctions. Le total des 1 125 exports exclut les routines internes sans export.

De même, une sortie complète et automatique de `objdump` ne doit jamais être comptée comme « étude réalisée ». Il faut un travail d'identification, de reconstitution des branches et de documentation pour augmenter le niveau de compréhension.

## Historique des deux indicateurs (calculé à partir des preuves conservées)

| Passe | `.text` avec preuves uniques | Entrées exportées citées |
|---|---:|---:|
| 17 | 1,998 % | 56 / 1 125 = 4,978 % |
| 18 | 1,998 % | 56 / 1 125 = 4,978 % |
| 19 | 2,316 % | 62 / 1 125 = 5,511 % |
| 20 | 2,460 % | 68 / 1 125 = 6,044 % |
| 21 | 2,643 % | 82 / 1 125 = 7,289 % |
| 22 | 2,862 % | 83 / 1 125 = 7,378 % |
| 23 | **2,933 %** | **89 / 1 125 = 7,911 %** |

*La passe 18 n'ajoutait pas de preuve assembleur : elle réorganisait le code Python. L'historique n'attribue aucun progrès d'étude pour cette opération.*

Le fichier `HISTORIQUE_PAR_PASSE.tsv` donne toutes les passes de 1 à 23 avec les calculs et non un pourcentage reconstruit arbitrairement.

## Couverture des points d'entrée par famille exportée

Ce tableau mesure **uniquement les entrées ayant une instruction vérifiée**, non la compréhension complète des méthodes.

| Famille | Entrées dans les preuves / exports | Pourcentage |
|---|---:|---:|
| `WorldMap` | 10 / 37 | 27,03 % |
| `GAME_RULES` | 3 / 14 | 21,43 % |
| `Group` | 4 / 21 | 19,05 % |
| `Unit` | 35 / 237 | 14,77 % |
| `Character` | 15 / 142 | 10,56 % |
| `Creatures` | 3 / 37 | 8,11 % |
| `Objects` | 2 / 20 | 10,00 % |
| `Players` | 1 / 61 | 1,64 % |
| `CPlayerManager` | 0 / 30 | 0,00 % |

Ce classement ne remplace pas la couverture des fonctions internes : il sert à identifier les angles morts prioritaires.

## Critère de progression **sémantique** (à activer dans les futures passes)

Pour chaque fonction importante, conserver dans un registre les niveaux suivants :

- **N0 — Non identifiée :** aucune adresse fiable.
- **N1 — Identifiée :** adresse, nom probable ou export, délimitation non vérifiée.
- **N2 — Preuves assembleur :** extraits vérifiés et description de ce qu'ils prouvent.
- **N3 — Flot reconstitué :** branches, boucles, retours, erreurs et principales dépendances cartographiés.
- **N4 — Contrat reconstitué :** arguments, effets, structures, formats et conditions avec incertitudes explicites.
- **N5 — Corroborée :** contrat confirmé par un autre chemin indépendant (autre fonction, client, traces ou test contrôlé).

Seuls N3, N4 et N5 traduiront un niveau de compréhension suffisamment avancé pour servir de base à une implémentation Python. Aucune note globale N3+ ne doit être produite tant que le registre n'a pas été audité fonction par fonction.

**Condition pour envisager l'implémentation du serveur :** obtenir une documentation suffisamment complète des **parcours critiques**, et non simplement atteindre un nombre arbitraire d'octets ou de fonctions : session réseau, authentification, chargement et sauvegarde, entrée dans le monde, déplacement, visibilité, combat, sorts, inventaire/commerce, PNJ, ressources/monstres, erreurs, timers et configuration. Un taux de 80 % de ces parcours vérifiés serait un objectif de planification, **pas** une garantie de compatibilité ni une mesure atteinte aujourd'hui.

## Prochains secteurs de désassemblage à renforcer

1. Provenance du peuplement des `MonsterStructure` et des modèles `Objects::Create`, en suivant les écritures vers les tables mémoire.
2. Fonctions de session et de réception des paquets côté serveur (`CPlayerManager`, `Players`, transport), peu couvertes dans les preuves d'entrée export.
3. Sorts, résistances et interactions entre effets et `Character::hit`.
4. Inventaire, marchands, objets au sol et persistance associée.
5. Machines à états des PNJ, scripts/ressources, événements et timers.

Ces priorités sont des propositions de recherche fondées sur les lacunes documentées ; elles ne sont pas décrites comme déjà résolues.

## Méthode de recalcul

Exécuter `mesurer_assembleur.py` avec `--binaire`, `--archive` et `--sortie`. Le script :

1. Lit les fichiers `.asm` et `.txt` intitulés `ASSEMBLEUR`, `EXTRAIT`, `PREUVE` ou `DISASM` de l'archive.
2. Extrait les lignes d'instructions contenant une adresse virtuelle et leurs octets machine.
3. Compare directement ces octets à la section `.text` du PE dont le SHA-256 est contrôlé.
4. Écarte les lignes ne correspondant pas au serveur (par exemple extraits client).
5. Déduplique les adresses et les octets, puis rapproche les adresses d'entrée de la liste des exports.
6. Génère les résultats globaux, historiques, et le tableau de suivi de tous les exports.

Le script vise **précisément la révision binaire analysée**. Si le PE change, mettre à jour après vérification la base et la taille de sa section `.text`, puis établir un nouvel historique ; ne pas additionner les taux de binaires différents.
