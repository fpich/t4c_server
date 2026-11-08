# Passe 46 — Des boosts aux dégâts, réactions et paquets réseau

## A. Caractéristiques effectives dans les règles de combat [CONFIRMÉ]

- `Unit::GetSTR` (`0x48E150`) et `GetAGI` (`0x48E1B0`) agrègent une statistique de base avec `Unit::QueryBoost`, d'après la passe 45.
- `GAME_RULES::GetNaturalDamage` (`0x4386A0–0x438770`) appelle explicitement ces deux getters à `0x4386C2`, `0x4386F7` et dans les autres branches. Le seuil comparé est **20** (`cmp ax,0x14`), avant les calculs par multiplication/division entière. Des branches dépendent du type de l'unité et d'un contrôle supplémentaire `0x421620`.
- `Character::attack` (`0x41AF00`) appelle `GetNaturalDamage` à `0x41AF24`, additionne sa valeur à une grandeur `double` pointée par la structure d'attaque, puis lit `GetATTACK` (`0x48E1F0`) et les `GetAGI` des deux combattants. Il appelle `GetBlowPrecision` (`0x438620`) à `0x41AF74`. Un `QueryBoost` avec **stat 10** est aussi ajouté à la grandeur `double` (`0x41B01D–0x41B030`).
- `GAME_RULES::GetBlowPrecision` s'appuie sur quatre tirages `RRandom::operator()` via `0x4590A0`, ajuste ses quatre arguments et retourne leur combinaison. Ce chemin démontre l'emploi d'aléatoire dans la précision, pas une probabilité universelle de toucher obtenue par une formule isolée.

**Portée de l'observation :** l'impact des boosts sur les valeurs lues par ces fonctions est démontré. Il manque la preuve exhaustive de toutes les variantes d'attaque et des résistances.

## B. Attaque et réception d'un coup [CONFIRMÉ]

- `Character::attack` déclenche `Character::Disturbed`, puis inspecte six pointeurs d'équipement (notamment `+0x1CC`, `+0x1D0`, `+0x1B8`, `+0x1BC`, `+0x1C0`, `+0x1C4`). Les entrées non nulles reçoivent un appel virtuel au slot **`+0x24`** avec le code interne **1**; deux slots d'équipement égaux sont traités spécialement pour ne pas envoyer deux fois la même notification dans le chemin observé.
- `Character::attacked` (`0x41B050`) envoie aux équipements présents le **code 2** via le même slot ; il ajuste ensuite la grandeur de dégâts à partir d'un appel virtuel **`+0x168`**. Une autre liste d'effets internes est parcourue avec l'appel au dispatcher `0x460000` et le code **4**.
- `Character::hit` (`0x41CC00`) déclenche une famille supplémentaire : **code 14** pour des objets équipés et code **8** dans un autre parcours. L'extrait contient aussi la construction d'un paquet d'opcode **0x21 (33)** dans un chemin conditionnel. La signification exacte de chaque champ doit être confirmée indépendamment.
- Les codes 1, 2, 4, 8, 14 ne sont pas des indices de méthodes : ce sont des valeurs de message, en cohérence avec les passes 29 à 44. Il serait incorrect de leur attribuer une sémantique identique pour toutes les familles de callbacks.

## C. Combat à distance et sérialisation [CONFIRMÉ sur le chemin étudié]

- `Character::RangedAttack` (`0x421620`) inspecte deux emplacements d'équipement aux offsets `+0x1C0` et `+0x1C4`, emploie le message interne **`0x14` (20)**, puis compare un champ WORD `+0xA` à **12**. Il retourne 1 uniquement si la chaîne observée réussit.
- Le helper interne `0x4216A0` lit `GetDODGE`, vérifie certains états `GetUnderBlock` (6 et 7), interroge `GAME_RULES::InPVP`, calcule la distance entre deux positions par `sqrt(dx²+dy²)` puis invoque des formules `BoostFormula::GetBoost`. Il aboutit également à `GetBlowPrecision` et remplit la structure d'attaque.
- Les helpers internes `0x421890` et `0x4218F0` construisent une diffusion spatiale et un paquet commençant par **opcode 0x5F (95)** : après cet opcode, un identifiant sur 32 bits, deux WORD, puis un octet conditionnel sont sérialisés dans le chemin observé. `0x4218F0` appelle `0x421890` pour la diffusion.
- Le traitement `0x4219D0` modifie conditionnellement les dégâts selon des tests et des appels virtuels, et prépare un autre paquet d'opcode **0x60 (96)**. Il comporte aussi des appels de journal/notification, des identifiants numériques `0x4E53` et `0x4E31`, puis des traitements liés à l'état de la cible. Sans résoudre chaque slot virtuel, les mécanismes précis d'armure/résistances et le sens des deux marqueurs restent inconnus.

## D. Régénération et callbacks [CONFIRMÉ]

- `GAME_RULES::HPregen` (`0x438770`) lit les HP courants et maximum par slots virtuels `+0xD8` et `+0xCC`, emploie **`Unit::GetEND`**, des tirages et une écriture via `+0xDC` ; elle a des branches distinctes selon le rapport courant/max.
- `GAME_RULES::ManaRegen` (`0x438830`) lit le mana courant/max par `+0xEC/+0xE0`, utilise **`GetWIS` et `GetINT`**, des tirages, et écrit via `+0xF0`.
- `GAME_RULES::FaithRegen` (`0x438990`) suit un chemin propre sur `+0xF4/+0xFC/+0xF8`. **Son existence ne démontre pas son déclenchement par `Character::Regenerate`.**
- `Character::Regenerate` (`0x41E020`) appelle explicitement HPregen et ManaRegen (`0x41E024`, `0x41E02A`), puis parcourt une collection d'effets, avec **code interne `0x40` (64)** remis au dispatcher `0x460000`.

## E. Mise à jour du statut côté client [CONFIRMÉ dans deux chemins, PAS généralisé]

- La passe 45 a prouvé que `Character::PacketStatus` (`0x41F5A0`) sérialise des statistiques *effectives*, c'est-à-dire après boosts.
- Lors de la branche examinée d'**équipement** (`Character::equip_object`, `0x4192CB–0x419329`), le personnage appelle `PacketStatus` à `0x4192F3` et transmet ensuite le paquet par un appel virtuel au slot `+0x14C` à `0x419300`.
- Lors du **déséquipement** (`Character::unequip_object`, `0x4195B2–0x419606`), le même duo apparaît à `0x4195D1` et `0x4195DE`.
- La chaîne **modification de l'équipement → recalcul sérialisé des statistiques → transmission** est donc prouvée dans ces branches, mais **aucune garantie d'envoi instantané après chaque `Unit::AddBoost` ou `SetBoost` n'en découle**.

## F. Conclusions croisées

1. `Boosts` SQL → formules restaurées → getters effectifs → `GetNaturalDamage`/précision → structure d'attaque : liens directs pour la partie RAM/calcul, SQL documenté en passe 45.
2. Équipement et effets de coups empruntent des **messages internes distincts** (`1`,`2`,`4`,`8`,`14`), et les callbacks peuvent faire varier les dégâts.
3. Le combat possède **plusieurs familles de notifications** : statut (suite à équipement), paquets combat/animation (95,96) et notification conditionnelle (33). Aucun de ces paquets n'est déclaré équivalent sans preuve.

La recherche demeure statique : sans WDA/SQL authentiques ni traces réseau dynamiques, il n'est pas possible d'affirmer l'exhaustivité des variantes ou des fréquences de diffusion.
