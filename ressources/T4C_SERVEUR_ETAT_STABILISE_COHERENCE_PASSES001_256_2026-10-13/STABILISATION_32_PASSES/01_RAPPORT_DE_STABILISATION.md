# Rapport transversal de stabilisation — 32 passes de T4C Server

## 1. Méthode et constat

Examen du binaire `T4C Server(1).exe` (`SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`), des **211 fichiers** de l'archive passe 32, de l'index des 1 125 exports et de toutes les sources contenant des lignes d'assembleur vérifiables. Les octets sont comparés au segment `.text` (`VA 0x401000`, longueur **905 117 octets**) ; les redondances sont supprimées et les lignes du client ne sont pas comptées pour le serveur. Aucun exécutable n'a été lancé.

- **Ancien chiffre publié** : 47 610 octets / 5,260 %.
- **Anciennes preuves recomptées** : **47519 octets / 5.250 %**, soit une correction de **91 octets**.
- **Nouvelle fonction documentée** : `Unit::VerifyTimers`, 0x48D330–0x48D651. 262 instructions validées, **802 nouveaux octets après dédoublonnage**.
- **Total stabilisé** : **48321 octets / 5.339 %**.
- **Entrées exportées explicitement prouvées à l'adresse de départ** : 127 avant, **128 maintenant**, sur 1125 exports au total. Cet indicateur ne signifie pas que toutes les branches de ces fonctions sont comprises.
- **536 lignes distinctes du serveur** classées en preuves client croisées, **536** concordant exactement avec `t4c(2).exe`, **0** inconnu.

L'ancien dossier est préservé à l'identique. Les corrections sont documentées dans des annexes, et non appliquées silencieusement aux rapports de l'époque.

## 2. Ce que les 32 passes permettent maintenant d'expliquer

### Comptes, personnages, persistance (passes 1–11)

Les requêtes de chargement de 31 colonnes et les tables `PlayerItems`, `PlayerSkills`, `PlayerSpells`, `Flags`, `Boosts`, `Effects` sont reliées aux routines de chargement, à `SaveCharacter`, à la file ODBC asynchrone puis aux callbacks. Les chemins COMMIT/ROLLBACK, une reprise SQL après première réponse non nulle et le risque `SQL_SUCCESS_WITH_INFO` sont documentés. Le succès end-to-end d'une transaction dans toutes les conditions n'est pas démontré.

### Entrée en jeu et monde (passes 12–17)

`PutPlayerInGame`, `GetWorld`, `create_world_unit`, statut S2C43 (29 champs), visibilité S2C46/S2C16, mouvement S2C1, suppression S2C11, apparence S2C12 et variantes S2C68 disposent de correspondances serveur/client. L'ancienne hypothèse de huit positions alternatives essayées systématiquement a été invalidée par l'analyse du graphe de contrôle. Les variantes courtes de S2C46 et les quatre octets supplémentaires possibles de la variante de base S2C68 restent à vérifier.

### Combat, mort et expérience (passes 19–23)

La chaîne `Attack` / collision / `GetBlowPrecision` / `GetNaturalDamage` / `GetAC` / `hit` / `Death` / partage de XP est partiellement cartographiée. Les pertes à la mort dépendent de huit paramètres de configuration PVPDeath. Les entrées de butin de 16 octets alimentent `Objects::Create`, puis une partie des objets est déposée par `WorldMap::deposit_unit`. Le moteur intégral de dégâts, les protections élémentaires et la distribution exacte des probabilités de butin ne sont pas achevés.

### Définitions, conteneurs, objets, sorts (passes 24–30)

Le registre de 65 536 emplacements est plus général qu'une simple table d'objets. Les définitions `Creatures_Items` et autres tables `Objects_*` sont rattachées à des tableaux de structures, parfois en pas de 264 / 272 / 40 octets selon le parcours. `Character::use_item` conduit dans les branches étudiées à des messages internes 3/4, `ObjectStructure::OnDisturbed` / `OnUse`, puis potentiellement `ActivateSpell`. Les conteneurs et les récompenses ne doivent **pas** être considérés comme prouvés reliés au même mécanisme de tirage.

### Effets et horloge (passes 31–32 + stabilisation)

S2C83/S2C84, `AddEffect`, `RemoveEffect`, `SaveEffects`, `LoadEffects`, `DeferredLoadEffects`, `DestroyEffects` et gestion des identifiants globaux sont partiellement documentés. Nouvelle confirmation : `Unit::VerifyTimers` compare une échéance à `TFCMAIN::GetRound`, et un chemin d'expiration invoque des callbacks avec les codes 5 puis 9. L'unité temporelle, la fréquence de traitement et les sémantiques propres aux effets restent à démontrer.

## 3. Incidents méthodologiques corrigés

1. **Chiffres de couverture** : correction de 91 octets pour la passe 32 ; conserver les mesures initiales à titre historique.
2. **Mixité des preuves** : 536 lignes documentent le client, pas le serveur ; leurs octets sont corrects mais leur appartenance doit être affichée.
3. **Différence entre preuve, interprétation et implémentabilité** : un opcode, un export ou une instruction vérifiée ne prouve pas une fonctionnalité complète.
4. **Preuves concurrentes** : aucune donnée binaire n'a été modifiée ni remplacée ; les corrections figurent dans un registre de décisions.

## 4. Priorités pour une couverture utile

1. Retrouver le **chemin appelant** `Unit::VerifyTimers`, la période de `GetRound` et les callbacks concrets des codes 5 et 9, avant de nommer la durée des effets.
2. Reconstituer les **fonctions non exportées centrales** (dispatcher de sorts, moteur de dégâts, transfert/sélection de butin) et leurs branches de retour.
3. Mettre à plat les **contrats réseau variant selon le type d'unité** (S2C 46 et 68) sans supposer que chaque version produit la même longueur.
4. Reconstituer le **schéma concret de base de données et les conditions de transaction** ; distinguer chaînes SQL intégrées et requêtes réellement exécutées.
5. Ajouter, pour chaque fonction prioritaire, une fiche entrées/états/sorties/erreurs/side effects/adresses et *seulement ensuite* viser l'implémentation.

## 5. Comment lire le taux

Le nouveau taux de **5.339 %** est un **taux de couverture des octets assembleur explicitement vérifiés**, et non de compréhension intégrale des comportements. L'archive permet de mieux expliquer certaines chaînes sans autoriser un pourcentage de fonctionnalité équivalent. La moyenne par fonctions ou l'estimation « serveur Python prêt » ne sont pas mélangées à ce chiffre.
