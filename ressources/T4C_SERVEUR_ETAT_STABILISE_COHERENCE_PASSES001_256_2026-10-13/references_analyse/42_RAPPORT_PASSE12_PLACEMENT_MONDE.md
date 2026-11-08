# T4C Server — Passe 12 : placement d'un personnage dans le monde et raccordement à la session

**Binaire** : `T4C Server(1).exe` (PE32 x86), SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.  
**Technique** : désassemblage statique `objdump -d -Mintel` et recoupement avec l'index des **symboles exportés du même binaire**.  
**Tests exécutés** : contrôles statiques des adresses/instructions et de l'archive ; **pas d'exécution du jeu, ni de test réseau**.

## 1. Fonctions maintenant nommées par les exports C++ (confirmé)

| Adresse VA | Nom exporté | Rôle local |
|---|---|---|
| `0x41E8A0` | `Character::PutPlayerInGame` | Point d'entrée du placement |
| `0x471EC0` | `TFCMAIN::GetWorld(unsigned short)` | Recherche du `WorldMap*` correspondant au champ monde |
| `0x4AFF00` | `WorldMap::create_world_unit(char,int,WorldPos,Unit*,int)` | Tentative de création/ajout d'une unité sur la carte |
| `0x48E9F0` | `Unit::DeferredLoadEffects` | Appelé après la branche de placement réussi |
| `0x422700` | `Character::BroadcastSeraphArrival` | Notification conditionnelle d'arrivée |
| `0x48F7E0` | `Unit::BroadcastPopup` | Notification alternative avec `WorldPos` |
| `0x41F5A0` | `Character::PacketStatus` | Remplit un paquet avec des informations de statut |
| `0x40FAF0` | `Broadcast::BCast` | Diffusion conditionnelle plus loin dans l’appelant |
| `0x4B25F0` | `WorldMap::VerifyInviewHives` | Appel conditionnel post-placement, dans la partie commune |
| `0x4B0C40` | `WorldMap::packet_inview_units` | Construit un paquet de visibilité des unités |

Le nom exporté est confirmé, mais les paramètres exacts à chaque site d'appel doivent être distingués des noms métier reconstruits.

## 2. Graphe de contrôle du placement (`0x41E8A0–0x41E9DE`)

1. `0x41E8AA–0x41E8B3`: contrôle d'un pointeur `this+0x148`. Zéro → retourne `AL=1`.
2. `0x41E8B9–0x41E8D7`: appel virtuel `vtable+0x1C` pour une position logique de trois DWORD ; le mot à `+8` est passé à `TFCMAIN::GetWorld`. Absence de monde → chemin qui retourne `AL=1` (`0x41E9C6–0x41E9D6`).
3. `0x41E8E0–0x41E914`: préparation et appel de `WorldMap::create_world_unit` (`type=1`, code issu de `vtable+0x2C`, position de 12 octets, pointeur `this`, dernier argument `0`). L'appel renvoie un pointeur dans `EAX`, sauvegardé dans `EDI`.
4. `0x41E921–0x41E923`: si le pointeur retourné est non nul, branche `0x41E9CD` et retour `AL=0`.
5. Si le pointeur est nul : `0x41E929` initialise `EBX=0`; `0x41E92E` teste **encore `EDI` (inchangé et nécessairement nul)**, et `0x41E930` saute vers `0x41E9D6` ⇒ retour `AL=1`.

**Conclusion statique** : dans les chemins d'entrée normaux atteignables depuis `0x41E8A0`, `AL=0` correspond à un pointeur d'unité créée, et `AL=1` au défaut de placement ou à une condition préalable manquante. Ce rôle est **corroboré par l'appelant** `0x47B7A5–0x47B7C4`, qui ne suit les étapes d'initialisation que pour `AL=0`.

### Rectificatif important des passes 4–11 : la boucle des huit cases

La séquence `0x41E936–0x41E9BE` et la table de saut à `0x41E9E0` sont **présentes** dans le binaire. Cependant, dans le flot examiné, le chemin vers `0x41E936` passe par `0x41E92E`, où `EDI=0` provoque sans condition effective le retour `AL=1`. La boucle de recherche de positions voisines n'est donc **pas atteignable depuis l'entrée observée**, malgré sa présence textuelle. N'en **pas** déduire que le serveur retente effectivement huit positions. Les huit destinations brutes sont listées dans `45_TABLE_SAUT_ET_FLOT_PASSE12.tsv` ; deux indices partagent une destination.

Il s'agit d'un constat de **flot de contrôle statique**, sous réserve d'une modification du code en mémoire ou d'une entrée non conventionnelle dans le milieu de fonction (non démontrées).

## 3. Raccordement à la session et aux notifications (`0x47B750`)

L'appelant à `0x47B7A5` conserve `AL` dans `BL`, effectue un appel supplémentaire `0x4274E0` sur un gestionnaire (`0x454050`), puis teste `BL` :

- `BL=0` : `0x47B7C4–0x47B7D1` modifie des champs de session (`[esi+0x44]=1`, `[esi+0x48]=0`) et un octet de l'unité (`+0xB0=0`). `0x47B7DA` appelle `Unit::DeferredLoadEffects`.
- `0x47B7E2–0x47B823` : appel virtuel avec l'identifiant littéral `0x76D3`, puis branche : si sa valeur de retour est positive, `Character::BroadcastSeraphArrival` ; sinon `Unit::BroadcastPopup` avec la position et un argument `1`.
- `0x47B837–0x47B845` : appel exporté `Character::PacketStatus` (`0x41F5A0`) avec un objet `TFCPacket` en construction, puis appel virtuel `vtable+0x14C` (probable transmission du paquet, non prouvée par son seul offset).
- `0x47B85F–0x47B869` : compare un identifiant virtuel avec `0x271B` et `0x271C`; le chemin particulier appelle `Broadcast::BCast` (`0x40FAF0`) uniquement en cas de correspondance.
- `BL != 0` : saute directement à `0x47B8B7` ; il **ne suit pas** cette initialisation réussie. La suite du gestionnaire reste à qualifier.

Ce chemin indique une séquence de placement → effets différés → annonce de présence → traitement des paquets, mais **pas** l'ensemble du cycle d'authentification/connexion du serveur.

## 4. Frontière entre certitude et inférence

**Confirmé** : adresses, noms C++ exportés, contrôle `EDI`, retours `AL`, appelant direct, champs de session écrits, appels `DeferredLoadEffects`, `BroadcastSeraphArrival`, `BroadcastPopup`, comparaisons `0x271B/0x271C`, table de saut.

**À valider** : sens métier de `this+0x148`, du caractère `1` dans `create_world_unit`, de l'identifiant `0x76D3`, de l'appel `0x4274E0`, de du contenu exact de `Character::PacketStatus` (`0x41F5A0`), du paquet émis par `vtable+0x14C` et du chemin complet de déconnexion/erreur.

**À ne pas affirmer** : prise en charge effective de huit alternatives de placement, équivalence d'un serveur compilable, test positif en réseau, reconstruction globale > 5 %.

## 5. Livrables de la passe

- `43_PREUVES_ASSEMBLEUR_PASSE12.asm` : extraits redésassemblés du binaire.
- `44_PSEUDOCODE_PLACEMENT_CORRIGE_PASSE12.cpp` : reconstruction du chemin atteignable, symbolique et non compilable.
- `45_TABLE_SAUT_ET_FLOT_PASSE12.tsv` : destinations brutes de la table et annotations d'atteignabilité.

**Poursuite recommandée** : examiner `0x41F5A0`, le site d'appel `0x47B8B7–0x47B9D4`, les interfaces virtuelles de position et l'origine du champ `this+0x148`, puis construire un automate d'état du personnage du chargement jusqu'à l'annonce en jeu.
