# T4C 1.25 Python server — étape 4

Prototype de serveur autoritaire compatible avec **Client T4C 1.25**.

## Ce qui est validé par le vrai client

Le transport et le premier échange sont maintenant confirmés en conditions réelles :

```text
Client 1.25                 Serveur Python
     |                           |
     | SAFE seq=0 + ID 66       |
     |-------------------------->|
     |<--------------------------| ACK seq=0
     |<--------------------------| SAFE seq=0 + réponse ID 66
     | ACK seq=0                |
     |-------------------------->|
```

Le datagramme réel utilisé dans les tests est :

```text
00 02 12 00 00 00 00 00 00 00 00 00 96 00 42 00 f7 aa
```

Il contient une enveloppe UDP T4C de 12 octets puis un `TFCPacket` qui se
déchiffre en `00 42`, donc **ID 66 / MESSAGE_OF_THE_DAY**.

## Étape 4 : débloquer le client français 1.25

Un comportement historique documenté du client Dialsoft/Vircom 1.25 français
correspond exactement à notre symptôme : après le MOTD il peut entrer dans
l'ancien écran d'enregistrement GOA au lieu de continuer le flux du jeu.

Le contournement connu consiste à mettre dans le registre Wine :

```text
HKEY_CURRENT_USER\Software\Vircom\T4C
Language = English
```

Le script fourni le fait uniquement dans le préfixe Wine choisi :

```bash
./prepare_client_125.sh
```

Il choisit d'abord `$WINEPREFIX`, sinon `~/.wine-t4c`, sinon `~/.wine`.
On peut forcer le préfixe :

```bash
./prepare_client_125.sh --prefix "$HOME/.wine-t4c"
```

Puis fermer complètement le client et le relancer.

## Lancer le serveur

```bash
./start_server.sh
```

Le script libère automatiquement UDP 11677 puis lance :

```text
python3 run_server.py --host 0.0.0.0 --port 11677 --debug
```

## IDs désormais nommés dans les traces

Bootstrap sans joueur :

```text
14  REGISTER_ACCOUNT
45  GET_TIME
65  QUERY_SERVER_VERSION
66  MESSAGE_OF_THE_DAY
90  QUERY_NAME_EXISTENCE
91  QUERY_PATCH_SERVER_INFO
```

Menu / post-auth utiles pour la prochaine phase :

```text
13   PUT_PLAYER_IN_GAME
25   CREATE_PLAYER
26   GET_PERSONAL_PC_LIST
38   RETURN_TO_MENU
46   FROM_PREINGAME_TO_INGAME
99   AUTHENTICATE_SERVER_VERSION
103  MAX_CHARACTERS_PER_ACCOUNT_INFO
```

Les IDs sont nommés pour l'observation; seuls les handlers déjà compris sont
implémentés. On n'invente pas encore les payloads de 13/25/26/38/46/99/103.

## Prochaine capture recherchée

Après `Language=English`, la prochaine trace intéressante est tout paquet reçu
après l'ACK du MOTD, en particulier `91`, `14`, `99` ou `26`.

Le serveur affiche maintenant `state=FRONTEND` après avoir servi le MOTD, ce
qui permet de distinguer clairement le bootstrap de l'authentification.

## Tests

```bash
python3 -m unittest discover -s tests -v
```

La fragmentation UDP est toujours détectée mais pas encore réassemblée. Elle
sera implémentée dès qu'une capture réelle l'exigera.


## Étape 5 — validation 1.25 + liste des personnages

La capture réelle du client FR 1.25 confirme la séquence suivante :

```text
66 MOTD -> 91 patch info -> 14 login -> 99 version
```

Le paquet 99 transporte un `u32` big-endian. Le client 1.25 envoie `125`
(`00 00 00 7d`). Le serveur original répond sur l'ID 99 avec un `u32` :
`1` si la version correspond, `0` sinon. Cette étape implémente cette réponse.

Le paquet 26 (`GET_PERSONAL_PC_LIST`) est également pris en charge. Pour le
moment le compte de développement renvoie une liste vide (`count = 0`) afin
d'atteindre l'écran de création de personnage sans inventer de données.

Lancement recommandé :

```bash
./start_server.sh
```

Le profil 1.25 utilise `--protocol-version 125` par défaut.


## Étape 6 — paquet 20 et français

La capture réelle du client 1.25 après authentification envoie le paquet 20.
Les sources 1.25 publiques et le binaire serveur original confirment que 20 est
`RQ_ExitGame`. Le serveur original ne renvoie pas de paquet applicatif 20 :
l'ACK de la couche transport suffit. Notre implémentation conserve donc le
compte authentifié, efface seulement le personnage actif et passe l'état en
`CHARACTER_MENU`.

Les textes visibles envoyés par le serveur sont désormais en français. Le
script Wine accepte aussi `--language French`, mais l'ancien client Dialsoft FR
peut alors réactiver l'écran GOA. Pour le développement réseau, `English` reste
le contournement le plus fiable jusqu'à ce que ce chemin du client soit patché.

Exemples :

```bash
./prepare_client_125.sh --prefix "$HOME/.wine-t4c" --language English
./start_server.sh
```

Pour tester explicitement l'interface française :

```bash
./prepare_client_125.sh --prefix "$HOME/.wine-t4c" --language French
```

Si le client revient sur l'écran GOA, remettez `English`; cela n'empêche pas le
serveur, le MOTD et les futurs dialogues de jeu d'être en français.

## Étape 7 — création de personnage (paquet 25)

Le format a été confirmé à partir du gestionnaire `RQ_CreatePlayer` du serveur
original (réponses du questionnaire + nom en pascal-string u8, réponse
`u8 résultat` suivie de `Character::packet_stats`). La liste de personnages
(paquet 26) est désormais réelle et persistante par compte (en mémoire), et le
serveur envoie d'abord le paquet 103 (nombre maximal de personnages par compte)
exactement comme l'original, afin de piloter l'option « Nouveau personnage ».

Sérialisation du paquet 26 confirmée : `u8 count`, puis pour chaque personnage
`u8 name_len, name, i16 race, i16 level`.

Le stockage (`t4c/characters.py`) est volontairement en mémoire pour l'instant ;
la persistance sur disque est le prochain jalon.

## Étape 7.1 — paquet 89 (RQ_TogglePage)

La capture réelle du client 1.25 envoie le paquet 89 (corps `01`) juste avant la
liste de personnages. Le code original le nomme `RQ_TogglePage` : un seul u8
d'état, bascule d'affichage d'une page du client, **aucune réponse
applicative** (l'ACK transport suffit). Le serveur l'enregistre désormais au
lieu de le signaler comme inconnu.

## Étape 8 — entrée en monde (paquets 13 et 46)

Formats confirmés depuis `AsyncRQFUNC_PutPlayerInGame` et
`RQFUNC_FromPreInGameToInGame` du serveur original :

- **13** : requête = `u8 name_len, name` ; réponse = `u8 résultat` (0 = chargé,
  1 = échec) puis, si chargé : `i32 ID, i16 X/Y/monde, i32 HP/HPmax,
  i16 mana/manaMax, i32 XP (hi/lo), i32 XP niveau suivant (hi/lo),
  i16 STR/END/AGI/wil/WIS/INT/luck, heure (comme GET_TIME),
  i32 or, i16 niveau, i32 XP niveau précédent (hi/lo)`.
  Après succès, la session passe en `PRE_INGAME`.
- **46** : réponse = `u8 résultat` (0 = OK, 1 = déjà en jeu). Le monde de
  développement étant vide, aucune unité en vue n'est sérialisée (comportement
  du serveur original quand `packet_inview_units` ne renvoie rien). La session
  passe en `IN_WORLD`.

La position (0,0,0), l'XP, l'or et les seuils de niveau sont des valeurs de
développement ; la carte, les collisions et les unités sont les prochains
jalons.

## Ressources originales du serveur (dépôt)

`ressources/T4C_Server/` contient désormais la distribution originale du
serveur 1.25. Éléments exploitables pour le développement :

- **`T4C.mdb`** : base Access (Jet DB) du serveur. Schéma de persistance
  complet récupéré :
  - `T4Cusers` : comptes (Account, Password, Account_type, Expired…)
  - `PlayingCharacters` : personnages (UserID, PlayerName, AccountName, wlX/Y/World,
    nClass, CurrentHP/MaxHP, mana, Strength/Endurance/Agility/Intelligence/
    WillPower/Wisdom/Luck, CurrentLevel, Gold, Appearance, Gender, XP,
    StatPnts/SkillPnts, Karma, guilde, …)
  - `PlayerItems`, `PlayerSkills`, `PlayerSpells` : inventaire/sorts/compétences
  - `guildz`, `guildplayers`, `Guildboard` : guildes
  - `OnlineUsers`, `OfflineMessages`, `MessageDispatch` : présence/messagerie
  Ce schéma servira de référence pour la persistance du serveur Python
  (SQLite) — jalon « étape 9 : persistance ».
- **`Documents/T4C server manuel fr.doc`** : manuel d'exploitation français.
- **`Motd.txt`** : format du MOTD original (texte brut multi-lignes).
- **Logs/** : exemples de format de logs du serveur original (World.log…).
- **`t4c_fr.elng`** : fichier de langue serveur — la numérotation des chaînes
  (`_DEFAULT_STR`) correspond aux messages envoyés au client.

## Étape 9 — persistance SQLite (schéma T4C.mdb porté)

Nouveau module `t4c/persistence.py` : comptes et personnages persistés dans
SQLite, schéma directement porté de la base Access `T4C.mdb` du serveur
original (`T4Cusers`, `PlayingCharacters` avec position/stats/niveau/or/XP).
La persistance est activée par `--database` (`t4c.sqlite3` par défaut via
`run_server.py`, chaîne vide = mémoire uniquement). La création (25) sauvegarde
le personnage, le chargement (13) restaure la position sauvegardée, et les
déplacements la mettent à jour.

## Étape 10 — boucle de jeu minimale (mouvements 1-8, position 9)

Formats confirmés depuis `RQFUNC_PlayerMove` original :
- **9 (RQ_GetPlayerPos)** : réponse `i16 X, i16 Y, i16 monde`.
- **1-8 (RQ_Move*)** : acceptés uniquement en jeu ; le monde de développement
  n'ayant ni carte ni collisions, tout déplacement est accepté. Le serveur
  répond l'événement `__EVENT_OBJECT_MOVED` (id 1) : `i16 X, i16 Y`.
La position est persistée à chaque mouvement (si `--database` actif).
