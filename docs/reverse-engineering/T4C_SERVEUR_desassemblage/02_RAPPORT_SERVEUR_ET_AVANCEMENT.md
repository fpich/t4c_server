# T4C Server — nouvelle passe de désassemblage statique (8 octobre 2026)

## Binaire analysé

- Fichier : `T4C Server(1).exe` ; SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- PE32 x86, console Windows ; base image `0x00400000`, point d'entrée `0x004D208E`.
- Horodatage PE : 24 avril 2003, 17:38:12 UTC (valeur du header, non preuve de date de production).
- Section `.text` : `0xDCF9D` octets (~884 KiB) ; la taille du code n'est pas celle du code effectivement compris.
- Table d'export : **1125 fonctions/symboles nommés** ; celle-ci est un index d'analyse, **pas** du code source récupéré.

## Avancement estimé — périmètres séparés

| Périmètre | Estimation | Méthode / limite |
|---|---|---|
| Fonctions exportées déjà étudiées en pseudocode approfondi | **5/1125 = 0.44 %** | Compte 5 fonctions documentées dans `03_T4C_SERVEUR_CONSOLIDE.cpp` ; sous-estime les structures/accessoires décrits, mais ne représente pas le total des fonctions internes |
| Inventaire des fonctions **exportées** | **1125/1125 (100 %)** | Ordinal, adresse VA, nom décoré ; aucun traitement fonctionnel ne découle de cet inventaire |
| Reconstruction du comportement global serveur | **environ 2–5 %**, très incertain | Estimation qualitative, incluant les helpers et notes partielles, sans métrique exhaustive de blocs ni fonctions non exportées |
| Reconstruction finale exploitable à l'identique | **non atteinte** | Pas de source C++ recompilable, ni démonstration d'équivalence fonctionnelle |

Le serveur n'est donc **pas** plus avancé que le client sur le plan de l'implémentation, même si ses exports permettent de progresser plus efficacement.

## Nouvelles preuves techniques

- L'exécutable inclut une table de **1125** exports, avec des noms de classes et de fonctions C++ MSVC.
- Les adresses de cette table sont transcrites dans `01_INDEX_SYMBOLES_EXPORTES.tsv` pour orienter les prochaines passes et rattacher le pseudocode aux fonctions réelles.
- Les **cinq** principales fonctions déjà reconstruites sont `Players::LoadAccount`, `Players::Logon`, `CPlayerManager::CreatePlayer` et les deux surcharges de `Character::CastSpell` ; leur équivalence avec le code natif n'est pas vérifiée par tests.

## Répartition indicative des classes (extraction automatique des noms décorés)

- `Unit` : 237 exports.
- `Character` : 142 exports.
- `(global)` : 130 exports.
- `Players` : 61 exports.
- `Creatures` : 37 exports.
- `WorldMap` : 37 exports.
- `CPlayerManager` : 30 exports.
- `TFCTime` : 25 exports.
- `BaseReferenceMessages` : 24 exports.
- `Group` : 21 exports.
- `` : 21 exports.
- `Objects` : 20 exports.
- `IntlText` : 19 exports.
- `NPCstructure` : 18 exports.
- `TFCPacket` : 18 exports.
- `GAME_RULES` : 14 exports.
- `ObjectStructure` : 14 exports.
- `TFCMAIN` : 13 exports.

## Recherche de cibles dans la table exportée

### `LoadAccount` (1 correspondances)
- `0x00456030` `?LoadAccount@Players@@QAEHVCString@@@Z`
### `Logon` (1 correspondances)
- `0x004583F0` `?Logon@Players@@QAEXXZ`
### `CreatePlayer` (1 correspondances)
- `0x00451C80` `?CreatePlayer@CPlayerManager@@SAPAVPlayers@@Usockaddr_in@@VCString@@@Z`
### `CastSpell` (3 correspondances)
- `0x004199A0` `?CastSpell@Character@@QAEHGPAVUnit@@@Z`
- `0x00419D40` `?CastSpell@Character@@QAEHGUWorldPos@@@Z`
- `0x00448B30` `?__CastSpell@@YAXKPAVUnit@@0@Z`
### `SendGroupMembers` (1 correspondances)
- `0x0043AF00` `?SendGroupMembers@Group@@QAEXPAVCharacter@@@Z`
### `SendSystemMessage` (1 correspondances)
- `0x00422E90` `?SendSystemMessage@Unit@@QAEXVCString@@@Z`
### `SendBuyItemListFunc` (1 correspondances)
- `0x00447E60` `?SendBuyItemListFunc@@YAXAAV?$TemplateList@U_OBJECTITEM@@@@PAVUnit@@@Z`
### `PacketUnitInformation` (1 correspondances)
- `0x0048F560` `?PacketUnitInformation@Unit@@UAEXAAVTFCPacket@@@Z`

## Priorités de désassemblage serveur

1. Étendre `Players::Logon` et le flux ODBC connexion → sélection du personnage → création/chargement.
2. Relier les appels de `Character::CastSpell` aux vérifications de mana, rechargement, cible, dégâts et effets.
3. Étudier `Group`, `Unit`, `NPCstructure`, achats/ventes, inventaire et sauvegardes, en priorité selon les exports disponibles.
4. Cartographier les fonctions internes *non exportées* en complément ; les 1 125 exports ne sont pas une liste exhaustive de tout le code.
5. Vérifier les formats réseau par des traces et tests d'intégration avant toute prétention de fidélité comportementale.

## Limitations

Analyse statique seulement : aucun binaire Windows exécuté, aucun serveur réel lancé, aucune requête SQL testée. La majorité des exports n'a pas encore été désassemblée instruction par instruction. L'analyse ne constitue pas une reconstitution source complète.

## Désassemblage supplémentaire — Group::SendGroupMembers

**Source** : instructions x86 `0x0043AF00` à `0x0043B076` du nouvel exécutable. Il s'agit d'une **sixième fonction** étudiée en profondeur (cinq précédemment documentées, une ajoutée).

- `0x43AF34` : insertion de `0x4C` (opcode 76) via `0x486150`.
- `0x43AF42..0x43AF4C` : insertion du booléen `group+0x3C` via `0x4861B0`.
- `0x43AF51..0x43AF58` : insertion de `group+0x2C` comme entier 16 bits.
- `0x43AF5D..0x43B037` : parcours de la liste à `group+0x28` ; membres accessibles à `node+0x0C`.
- `0x43AF71..0x43AF7D` : ID du membre ; `0x43AF82..0x43AF94` : champ lu via méthode virtuelle `+0x13C`.
- `0x43AF99..0x43AFDD` : calcul entier `GetHP()*100/GetMaxHP()` et branche `maxHP == 0`.
- `0x43AFE2..0x43AFF2` : comparaison du membre au leader `group+0x20`.
- `0x43AFF7..0x43B016` : sérialisation du nom.
- `0x43B03E..0x43B047` : appel virtuel `+0x14C` du destinataire pour envoyer le paquet.

**Attention** : certaines interprétations des appels virtuels reposent sur la structure protocolaire déjà documentée ; leurs signatures exactes ne sont pas toutes établies. Aucun test d'exécution effectué.

**Mesure actualisée** : 6 fonctions étudiées sur 1 125 exports, soit **0,53 %** des exports étudiés en profondeur. Ce ratio ne mesure pas le pourcentage de comportement serveur reproduit.
