# Passe 22 — Pénalités de mort, perte d’objets et tirages de butin

**Binaire** : `T4C Server(1).exe` ; SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Examen statique x86 du PE fourni, contrôle des constantes et des pointeurs de tables virtuelles. L'exécutable original n'a pas été lancé. **Aucune modification du serveur Python.**

## 1. `GAME_RULES::DeathPenalties` à `0x438A20`

### 1.1 Deux familles de réglages dans le registre — [CONFIRMÉ]

Le bloc `0x438A3B–0x438B1A` teste le type de l'argument `Unit*` via `Unit::GetType` (`0x48B670`). Si le résultat vaut `1`, les quatre clés `PC_*` sont lues, sinon `MOB_*` (l'absence d'argument utilise également cette seconde branche). `0x407190` obtient les paramètres de la clé `Software\Vircom\The 4th Coming Server\PVPDeath`.

Les **huit noms exacts** et leurs adresses de références figurent dans `03_CLES_REGISTRE_MORT.tsv`. Il ne faut pas inventer les valeurs des clés : elles se trouvent dans la configuration Windows d'une installation, non dans le PE analysé. Le suffixe `PC` ne garantit pas que les autres règles PvP hors de cette fonction soient identiques.

### 1.2 Perte d’expérience — [CONFIRMÉ : chaîne de calcul ; INFÉRÉ : sens métier du seuil]

- `0x4DE8D0` contient le `double` **0.01** ; les paramètres XP du registre sont multipliés par cette valeur, cohérente avec des pourcentages.
- `0x438B2A–0x438B47` appelle le slot virtuel `+0x13C`, identifié comme `Unit::GetLevel`, et borne le niveau entre **1 et 199**.
- `0x438B4C` indexe une table en mémoire **`0x511B10 + 8 * level`**. L'entrée 64 bits est comparée à la valeur d'expérience courante obtenue via `+0x54` (`Character::GetXP`). Le contenu complet de cette table en RAM n'est pas prouvé statiquement.
- Dans le chemin où l'XP courante dépasse ce seuil, `0x438B6C–0x438B85` calcule une différence 64 bits puis la multiplie par le taux de perte avant conversion en entier.
- `0x438B90–0x438BB1` soustrait la pénalité calculée à l'XP courante avec une borne à **zéro**, puis appelle `+0x50` (`Character::SetXP`).

Pseudocode de **l'étape prouvée**, non exécutable et sans reproduire les cas d'arrondi x87 :

```text
niv = clamp(GetLevel(), 1, 199)
seuil = table64[niv]                  # table en RAM à 0x511B10
xp = GetXP()
perte = trunc((xp - seuil) * taux_xp * 0.01) si xp > seuil, sinon 0
SetXP(max(0, xp - perte))
```

### 1.3 Perte dans le sac à dos — [CONFIRMÉ sur la boucle principale]

`+0x60` de la vtable `Character` désigne `Character::GetBackpack` ; le code effectue un parcours de la liste, avec tirage aléatoire par objet/entrée (`0x438C01–0x438C12`). Il vérifie des drapeaux et types d'objet, puis la fonction exportée `Objects::Remove(1)` (`0x44C4A0`) suivie de `Objects::GetQty` (`0x44C3F0`). La quantité restante conditionne un retrait de l'entrée de liste ou une construction d'objet séparé. Les adresses `0x438D3A–0x438E2D` couvrent ce second chemin.

**Réserve** : les appels virtuels `+0x24`, `+0x28`, `+0x18`, les drapeaux et les conditions complexes de liste doivent encore être entièrement résolus avant de fournir un moteur d'inventaire compatible.

### 1.4 Perte d’équipement — [CONFIRMÉ]

`Character::GetEquipment` (`0x41EC20`, `0x438E41`) retourne une table de références d'unités. La boucle `0x438E58–0x438F78` parcourt explicitement **16 emplacements** avec incrément de 4 octets. Elle saute les cases nulles et utilise un tirage ainsi que des tests de propriétés de chaque objet ; lorsqu'ils permettent la perte, le chemin appelle une méthode du `Character` à `0x4194D0` puis actualise les références de l'inventaire. **Tous les effets de bord restent à vérifier.**

### 1.5 Or et HP — [CONFIRMÉ]

- La table virtuelle `Character` à `0x4DE68C` référence `Character::GetGold` (`+0x104 → 0x41D850`) et `Character::SetGold` (`+0x108 → 0x41D880`).
- `0x438F7E–0x438F9B` calcule la valeur de **`GetGold() × taux_or / 100`**, avec multiplication entière et constante `0x51EB851F` ; le montant est placé dans l'argument de sortie fourni par l'appelant.
- `Character::Death` reçoit cette valeur par référence (`0x41BC3D–0x41BC58`) et réalise `SetGold(max(0, GetGold() - montant))` sur son chemin `0x41BC64–0x41BC8C`.
- `0x438F9F–0x438FAE` lit les HP via `+0xD8`, décale la valeur d'un bit à droite et transmet ce résultat à `SetHP` via `+0xDC` avec un indicateur `1`. C'est **un ajustement des HP à la fin de la fonction**, pas une preuve que tous les personnages reprennent le jeu au même niveau de vie dans tous les chemins.

## 2. Table de récompenses / butin — `NPCstructure::OnDeath` (`0x44A540`)

**[CONFIRMÉ]** après les chemins d'expérience précédemment documentés, `0x44A977–0x44AACC` :

1. Lit des bornes de tableau à `structure + 0xBC` et `+0xC0` ; leur différence est divisée par **16** pour déterminer le nombre d'entrées, puis les entrées sont parcourues par pas de **16 octets**.
2. Lance un tirage `0x4590A0` avec arguments `0` et `100000000` (`0x05F5E100`).
3. Lit un `double` à **`entrée + 0x8`** et le multiplie par **`1000000.0`**, constante confirmée à `0x4DF1C8`. Le résultat entre dans une comparaison flottante avec le tirage ; la branche de réussite est conditionnelle.
4. Alloue un objet de taille `0x120`, appelle son constructeur `Objects::Objects` (`0x44BD80`), tente une initialisation depuis un autre champ de l'entrée, puis ajoute le résultat à la liste des objets sélectionnés si la condition réussit.
5. La création au sol proprement dite est traitée plus loin dans le cycle de mort et **n'est pas équivalente à un dépôt systématique** : les appels de `WorldMap::deposit_unit` étudiés en passe 20 doivent encore être corrélés au tableau de sortie.

L'échelle suggère que l'entrée représente une chance exprimée dans une unité de type « pourcentage », mais **le tirage exact, l'échelle métier, les bornes inclusives et la nature des champs autres que le `double` restent à démontrer**. Nous ne fournissons donc ni une table de probabilités factice, ni une liste d'objets inexistante dans les preuves.

## 3. Chaîne de mort et limites

- `Character::Death` (`0x41B250`) protège certaines entrées avec un drapeau d'état, arrête des actions et appelle `GAME_RULES::DeathPenalties` (`0x41BC58`).
- `NPCstructure::OnDeath` traite sous conditions le crédit XP individuel ou via `Group::DistributeKillXP` (passe 21) puis la sélection d'objets possibles (cette passe). Les conditions de déclenchement de chaque branche dépendent de l'attaquant, des flags et de la structure du monstre.
- `Creatures::Death` effectue le retrait du monde et traite un dépôt conditionnel (passe 20) ; le chemin complet **sélection → objets en mémoire → monde visible → persistance SQL** n'est pas encore prouvé intégralement.

## 4. Avancement

Estimation antérieure de reconstruction *fonctionnelle exécutable* : **2–5 %**, inchangée. Le détail des règles de mort et du tableau de loot progresse, mais il ne s'agit ni d'un source compilable, ni d'un serveur Python, ni d'une validation sur une instance en marche.
