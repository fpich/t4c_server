# T4C Server — Dossier technique consolidé (13 octobre 2026)

## Lire d'abord

Ce dossier regroupe **neuf documents Word** (un dossier général + volumes II à IX), des registres CSV, une matrice de traçabilité et un registre de lacunes. Il documente le **même exécutable** que l'archive d'analyse des passes 1–256 :

SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`

Les volumes I–VI proviennent des étapes documentaires antérieures et sont conservés sans modification. Les volumes VII–IX, les CSV systèmes et administratifs, et les index sont nouveaux. Les données historiques ne sont PAS reclassées.

## Cartographie des volumes

I. Référence générale et couverture statique
II. Catalogue de fonctions + CSV
III. Protocole, paquets et messages
IV. Structures et SQL/ODBC + CSV
V. Combat, dégâts, effets et résistances + CSV
VI. Monde, unités, objets et butin + CSV
VII. Architecture système, démarrage, imports, IOCP, timers + CSV
VIII. Administration, droits gameop, configuration et journalisation + CSV
IX. Consolidation transversale, priorités, preuves, inconnues

## Réserves d'interprétation

Les littéraux issus du désassemblage attestent une présence de chaînes et une référence par une instruction ; ils ne garantissent pas leur activation. Les exports attestent des adresses PE, pas la complétude ni l'usage des fonctions. La couverture .text est statique et ne mesure pas l'exécution réelle. Un fichier journal ou une clé de registre mentionné n'est pas une preuve de valeur sur une installation. Les droits GOD_* ne constituent pas un audit d'authentification.

L'archive stabilisée originale des 256 passes n'est pas dupliquée dans ce paquet pour éviter l'inflation ; la source est `T4C_SERVEUR_ETAT_STABILISE_COHERENCE_PASSES001_256_2026-10-13.zip`.

## Répertoires

- `VOLUMES/` : neuf documents Word.
- `REGISTRES/` : inventaires CSV (y compris anciens).
- `META/` : traçabilité, lacunes, métriques et manifeste de fichiers.

Le manifeste contient les empreintes SHA-256 des pièces distribuées. Tous les livrables sont entièrement statiques ; aucune tentative de lancement du serveur ni communication réseau n'a été entreprise.
