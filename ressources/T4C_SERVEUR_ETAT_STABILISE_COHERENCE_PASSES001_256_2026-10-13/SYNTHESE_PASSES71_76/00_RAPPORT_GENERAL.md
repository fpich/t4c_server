# T4C Server — Désassemblage accéléré des passes 71 à 76

## Résultat : 17,869 % de couverture

À partir de la passe 70 (**129 812 octets**, 14,342 %), six passes thématiques ont désassemblé et validé **31 920 octets nouveaux**, sans double comptage. Le masque final donne **161 732 / 905 117 octets**, soit **17,868629 %**. L'augmentation représente environ **+3,527 points de couverture**.

Ce résultat est obtenu par décodage de chemins directs statiquement atteignables à partir d'entrées d'exports et de fonctions identifiées. La vérification d'octets est indépendante du niveau de compréhension fonctionnelle : le sens des fonctions peut rester partiel. Aucune fonction n'a été exécutée dans un serveur actif.

## Résultats par sous-passe

| Passe | Domaine | Nouveaux octets uniques | Cumul octets | Couverture cumulée | Entrées |
|---|---|---:|---:|---:|---:|
| 71 | ALLOCATION_ET_MESSAGES | +1,367 | 131,179 | 14.493 % | 11 |
| 72 | PAQUETS_ET_SERIALISATION | +2,465 | 133,644 | 14.765 % | 20 |
| 73 | GROUPES_ET_CARTE | +6,757 | 140,401 | 15.512 % | 28 |
| 74 | PERSONNAGES_ET_INVENTAIRE | +10,195 | 150,596 | 16.638 % | 18 |
| 75 | SESSIONS_ET_RESSOURCES | +7,755 | 158,351 | 17.495 % | 21 |
| 76 | MOTEUR_MONSTRES_ET_BOUCLE | +3,381 | 161,732 | 17.869 % | 17 |

## Chaînes établies

**Messagerie** : `Character::SendPrivateMessage` (`0x41F8E0`) et `Unit::Talk` (`0x48C3E0`) créent chacun un `TFCPacket` avec un type **27 (`0x1B`)** ; leurs chemins d'envoi/diffusion diffèrent. Des traitements de direction/position apparaissent dans les deux routines. Les slots virtuels +0x194, +0x48, +0x14C et +0x1C sont présents mais ne sont pas tous identifiés dans cette passe.

**Paquets** : les routines `TFCPacket` de construction, destruction, transformation et lecture ont été examinées. La routine `DecryptPacket` réalise un XOR à `0x4860D4` après extraction d'une entête; aucune garantie de confidentialité cryptographique n'en découle.

**Groupes** : les flux `Invite`, `Join` et `Dismiss` mettent à jour les associations `Character`/`Group` et génèrent des notifications/payloads; les distributions d'or/XP et listings possèdent des voies distinctes.

**Déplacements et inventaire** : le graphe s'élargit aux fonctions `WorldMap` (dépôt, retrait, obstacle, déplacement, scan hostile, collision) et `Character` (équipement, sac, quantités, statistiques). Plusieurs sauts indirects restent à résoudre.

**Sessions et créatures** : la maintenance du gestionnaire de joueurs appelle des contrôles d'état/session et des routines de sauvegarde; l'initialisation de `SimpleMonster` peuple des champs via setters virtuels. `WorldMap::SummonMonster` réutilise `0x441FF0` avant l'initialisation d'une structure de 0x1C octets, ce qui rattache les limites du gestionnaire mémoire aux objets du monde.

## Qualité de preuve et limites

- Les **647 fichiers** de la passe 70 sont recopiés sans modifier leurs octets extraits (chaque SHA-256 interne est préservé).
- Six paires de masques: chaque ajout est disjoint du masque précédent, et chaque cumul est l'OU du masque précédent et des ajouts.
- Un second contrôle reparcourt les lignes d'assembleur, compare tous les opcodes au PE et reconstruit les masques sans utiliser le calcul initial.
- Correction d'une fausse entrée `0x4424A0` : elle pointait dans une instruction. Le constructeur exporté exact commence à `0x442490`. Seule cette entrée alignée a été retenue.
- Les branches indirectes non résolues sont listées dans chaque passe. Aucune instruction de bourrage NOP ou INT3 n'est comptabilisée. Les offsets des tables virtuelles ou imports en `.rdata` ne sont pas comptés comme `.text`.
- La couverture ne mesure pas les comportements, la sécurité ni les cas d'exception à l'exécution; elle mesure seulement les **octets d'instructions vérifiés**. Une désynchronisation de décodage en amont ou du code atteint exclusivement par branche indirecte exigerait une preuve spécifique.

## Prochain chantier conseillé

1. Résoudre les sauts indirects de `WorldMap`, `Character::equip_object`, `Character::QueryEquip` et `Creatures::MoveUnit`; relier chaque table de branchement à des cibles vérifiées.
2. Suivre les callbacks et slots virtuels utilisés par `SimpleMonster::OnInitialise` et les fonctions de dialogue, pour mieux rapprocher les chemins WDA des objets serveur.
3. Poursuivre la couverture ciblée sur les exports non encore validés dans `WorldMap`, `Character`, `Players` et `TFCPacket`, mais toujours en partant de frontières d'instructions vérifiées.
