# Passe 23 — Origine mémoire des tables de butin et liaison sélection → dépôt

**Source** : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Désassemblage statique x86 du fichier fourni. Le binaire n'a pas été exécuté. Les exports nommés et les instructions brutes sont référencés dans `02_PREUVES_ASSEMBLEUR_PASSE23.asm`. **Aucune modification du projet Python.**

## Synthèse

Cette passe répond partiellement aux trois questions ouvertes en passe 22 : **où est la table utilisée par `NPCstructure::OnDeath` ?**, **comment est obtenu l'identifiant d'un objet ?** et **quel chemin mène aux dépôts au sol ?**

1. La table est un **conteneur dynamique à entrées de 16 octets** appartenant à `MonsterStructure`, lui-même incorporé dans `NPCstructure`. Le constructeur initialise le tableau vide et le constructeur de copie recopie les entrées en réallouant leur mémoire. La **source externe initiale qui peuple** ce conteneur **n'est pas encore identifiée** (script, fichier, base ou autre : aucune n'est démontrée).
2. Le premier DWORD de chaque entrée est transmis à la méthode virtuelle confirmée `Objects::Create(3, identifiant)`. La création utilise une **table globale de modèles en mémoire** à `0x5163F4 + 4*identifiant`. Il s'agit donc d'un identifiant/index de modèle pour ce chemin, et **pas** d'une preuve de l'identifiant unique d'un objet sur la carte.
3. L'objet créé est ajouté à une liste de sortie. `Creatures::Death` fournit un tel conteneur à un callback virtuel, le parcourt, cherche une position acceptable, appelle `WorldMap::deposit_unit` puis `Unit::BroadcastPopup`. Les branches d'échec peuvent éliminer l'objet. Le dépôt n'est **pas systématique**.

## 1. Structure des données et propriété de la liste — [CONFIRMÉ]

- `NPCstructure::NPCstructure()` (`0x449AA0`) construit un `MonsterStructure` à **`this+0x08`** par l'appel `0x442490` (`0x449AA3–0x449AAC`). Le constructeur par copie de `NPCstructure` (`0x449820`) appelle `MonsterStructure::MonsterStructure(const&)` (`0x4116A0`) sur le même sous-objet (`0x44982F–0x449840`).
- `MonsterStructure::MonsterStructure()` initialise trois DWORD consécutifs à `+0xB4`, `+0xB8`, `+0xBC` à zéro (`0x442559–0x442571`). Ils forment respectivement **début, fin et fin de capacité** de la séquence dynamique.
- `MonsterStructure::MonsterStructure(const&)` calcule `N=(src.end-src.begin)/16` (`0x4118C9–0x4118E8`), réserve `16*N` octets (`0x4118F5–0x411901`) puis appelle `0x424900`, une copie par blocs de 16 octets (`0x411912–0x411928`). Ce n'est donc pas une simple copie d'un pointeur vers une table statique du PE.
- En ajoutant **8 octets** de sous-objet, le tableau est lu par `NPCstructure::OnDeath` à `this+0xBC` (début) et `this+0xC0` (fin). La taille est `(end-begin)>>4` (`0x44A977–0x44A995`).

Les champs structuraux et leur niveau de certitude se trouvent dans `03_STRUCTURE_MONSTER_LOOT.tsv`.

## 2. Structure d'une entrée et recherche du modèle — [CONFIRMÉ/INFÉRÉ]

Table de **16 octets** parcourue à `0x44A9A1–0x44AACC` :

| Offset | Type vérifié | Utilisation |
|---|---|---|
| `+0x00` | `u32` | passé à `Objects::Create(3, valeur)` ; **index de modèle** dans la table de création |
| `+0x04` | `u32` | **inconnu** dans ce chemin ; aucune signification métier démontrée |
| `+0x08` | `double` | comparé après multiplication par **1 000 000,0** à un tirage borné par **100 000 000** |

Attention : `0x44AA03–0x44AA17` invoque `[vtable+0x18]` sur un objet `Objects`. La table virtuelle `Objects` à **`0x4DF1E0`** pointe à ce slot vers **`0x44C070`**, export `Objects::Create(unsigned int, unsigned int)`. Le binaire contient la séquence `push entry[0]; push 3` avant l'appel ; **3** est un mode/type de création observé, pas un ID d'objet. `Objects::Create` appelle `0x48B0C0` qui consulte **`[0x5163F4 + 4*id]`** (`0x48B0CB`), puis définit divers champs de l'unité créée. Les valeurs de cette table RAM ne sont pas incluses dans la preuve ; aucune liste de noms/prix/objets n'est inférée.

Le test flottant utilise une chance multipliée par 1e6 avant comparaison avec un RNG sur 0…100000000. L'interprétation **« taux en pour cent »** est cohérente avec l'échelle, mais les bornes du RNG, les arrondis et le peuplement des chances doivent encore être validés pour fournir une probabilité exacte.

La création peut échouer (`0x44AA1A–0x44AAB6`). La branche de succès insère le pointeur objet dans la liste de sortie (`0x44AA22–0x44AAB0`) ; la branche d'échec appelle le slot de libération de l'objet (`+0x1C4`, `0x44AAB2–0x44AAB6`). Les instructions précises de gestion de la liste sont préservées sans imposer le type C++ exact de son implémentation.

## 3. Créature morte → liste → emplacement → `deposit_unit` — [CONFIRMÉ]

- `Creatures::Death` (`0x4324B0`) alloue sur la pile un conteneur de sortie et transmet son adresse à un callback virtuel **`+0x24`** (`0x432519–0x43256B`). Cette interface correspond à la signature de `NPCstructure::OnDeath`, qui prend notamment un pointeur de liste en sortie. **Le type concret du gestionnaire branché dépend toutefois de l'unité : ne pas supposer qu'il s'agit toujours de `NPCstructure`.**
- La boucle `0x4325E6–0x432610` prend un élément de cette liste et prépare les coordonnées x/y/monde. Une sélection de positions voisines par table de saut est visible à `0x432613–0x4326D3`, puis des contrôles de validité et collision sont exécutés (`0x4326D3–0x432745`).
- Sur le chemin où la position est acceptée, `0x432745–0x432756` transmet la position et l'unité à **`WorldMap::deposit_unit` (`0x4AF110`)**, dont le nom est confirmé par un export C++. Juste après, `0x43275B–0x43276D` invoque **`Unit::BroadcastPopup` (`0x48F7E0`)**.
- Un chemin distinct (`0x43277C–0x432781`) appelle un destructeur virtuel lorsque la position ne peut être retenue. Il n'y a donc pas de preuve de dépôt inconditionnel de chaque objet sélectionné.

Ces appels établissent un lien **fonctionnel** entre une sortie de callback de mort et les dépôts mondiaux. Ils ne démontrent pas encore que la totalité des tables de modèles, facteurs du jeu et cas NPC suivent nécessairement la même branche, ni que les objets au sol sont persistés en SQL.

## 4. Corrections et limites par rapport aux passes précédentes

- **Précisé** : la table de butin n'est pas seulement une « table à l'offset +0xBC » : les offsets dépendent de l'objet de base (`MonsterStructure+0xB4`, `NPCstructure+0xBC`). Les déductions de « données du PE intégrées statiquement » ne sont pas justifiées ; la source de peuplement reste **inconnue**.
- **Précisé** : `entry+0x00` est l'argument de création d'un modèle d'objet, pas l'identifiant d'instance finale.
- **Ajouté** : liaison directe avec `WorldMap::deposit_unit`, suivie de `Unit::BroadcastPopup`, conditionnée par la recherche de coordonnées.
- **Non résolu** : quel composant peuple la table de MonsterStructure, noms/références de modèles et probabilités réelles, le champ à `+0x04`, le transport d'objets entre scripts/ressources, la sauvegarde éventuelle des dépôts.

## 5. Avancement et prochaine étape

La reconstruction fonctionnelle exécutable **reste une estimation de 2–5 %** ; ce n'est pas un taux calculé sur l'ensemble des fonctions ni une mesure du code déjà porté en Python. Le désassemblage approfondit le sous-système de butin et sa chaîne d'appel, sans modifier le serveur Python.

La prochaine passe peut cibler les **sites de modification** de la séquence `MonsterStructure+0xB4..+0xBC` (peuplement) et la table de modèles en mémoire `0x5163F4`, afin de retrouver les définitions de monstres et d'objets. Préserver les noms inconnus tant que leur provenance n'est pas démontrée.
