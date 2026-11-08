# Passe 41 — Transformations WDA, validation et priorité en cas de doublon

## 1. Résultat majeur : « dernier enregistrement valide gagnant » [CONFIRMÉ, dans les bornes]

**Ordre de chargement.** Dans la routine du chargement, `0x475DBC` appelle `0x4A8810` pour le premier WDA; si le test `0x475DC1..0x475DC6` autorise une seconde source, `0x475DD3` rappelle `0x4A8810` sur **le même conteneur**. `0x475DDF` appelle ensuite `0x473610`, qui convertit les données agrégées. Le conteneur est itéré au pas `0xE4` (`0x473EF3..0x473F00`). Ainsi, les doublons ne sont pas nécessairement filtrés lors de leur lecture.

**Enregistrement.** `0x473BC9..0x473BD5` n'appelle `0x461360` (nom déjà documenté : `SpellMessageHandler::RegisterSpell`) que lorsque le flag d'erreur local vaut zéro. Le sort runtime a une allocation de `0x418` octets (`0x47364F..0x47365C`). Son identifiant est copié depuis le WORD de la source à `+0x24` vers le WORD runtime `+0` (`0x473729..0x47372D`).

**Table active.** `0x461360` compare l'ID traité sur **16 bits** à la borne inférieure **10000 / `0x2710`**, puis soustrait 10000, vérifie `index < 0x400`, et accède au pointeur situé dans `0x514DA4 + index*4`. Plage utile d'ID : **10000..11023**, sous réserve de l'interprétation 16 bits effectivement opérée par le binaire. Un ID hors de cette plage conduit à un diagnostic, et la routine **n'écrit pas dans la table** par ces branches. `SpellMessageHandler::GetSpell` à `0x462230` applique les mêmes bornes, puis renvoie zéro si elles ne sont pas satisfaites.

**Doublon.** Quand `0x4613A1` trouve une entrée non nulle, le binaire émet le message littéral : `Found duplicate spell ID %u, unregistering previous one. (overriding it)` (`0x506E34`); les chemins `0x4613D2..0x46149E` nettoient l'ancien enregistrement; `0x4614A2..0x4614A6` écrivent le **nouveau pointeur** à l'index. Conclusion : **dans la table runtime et sur ce chemin, le dernier sort effectivement enregistré remplace la définition précédente**. Un doublon du second fichier peut ainsi écraser celui du premier, mais uniquement s'il survit aux contrôles de préparation.

## 2. Politique de validation avant enregistrement [CONFIRMÉ]

`0x473610` prépare une structure de sort, copie des champs et prépare une collection d'effets/paramètres. Le pourcentage déclaré invalide est contrôlé via `0x409900` sur le champ texte runtime `+0x248` (`0x473914..0x47394E`) : le code journalise l'erreur et remplace par la chaîne `100` (`0x50A008`). Ce chemin de correction ne rend pas nécessairement le sort inactif.

Chaque élément du tableau de sous-structures WDA à pas **`0x2C` = 44 octets** (`0x473997..0x4739A6`) tente une sélection/création de superstructure avec `0x460C00` (`0x4739A7..0x4739BC`). Si le type est absent, diagnostic `unsupported effect type` et flag d'échec (`0x473BDD..0x473C18`). Si le type existe mais requiert des paramètres absents, diagnostic `effect requires parameters` (`0x473AED..0x473B45`). Les paramètres fournis subissent eux-mêmes une validation par **appel virtuel** (`0x473A28..0x473A31`); un échec provoque le diagnostic `invalid value` et fait passer le flag à 1 (`0x473A33..0x473A83`). Les noms exacts des validateurs virtuels restent non attribués sans analyse de leurs vtables.

Lorsque ce flag est non nul après les sous-structures, le chemin `0x473C1A..0x473C3C` journalise **`Spell will be inactive`**. Le code continue ensuite dans des routines de nettoyage; à l'inverse, le chemin sans erreur `0x473BC9..0x473BD8` appelle l'enregistrement. Ce sont deux chemins distincts : **correction locale d'une propriété** vs **rejet de la définition runtime**.

## 3. Les copies mémoire WDA sont profondes sur certaines sous-structures [CONFIRMÉ / PARTIEL]

L'insertion de collection `0x4AA930` prépare une structure locale en copiant plusieurs sous-structures depuis l'élément d'entrée de `0xE4` octets. Elle utilise notamment `0x4AB130` pour copier le sous-objet à `+0`, `0x4AB330` à `+0x10`, et plusieurs appels d'une routine importée depuis `0x4DE510` pour les champs à `+0x28,+0x38,...`. `0x4AB130` ne fait **pas** qu'un `memcpy` : il calcule un nombre d'éléments par division de la différence de pointeurs par `0x2C`, alloue un tampon de longueur `n*0x2C`, et délègue la construction/copie de chaque entrée à `0x4ACB60`.

La routine `0x4AA930` distingue une insertion possible dans la capacité existante (déplacements de plage) et une augmentation/réallocation de capacité avec destruction des anciennes entrées (`0x4AAC92..0x4AACA8` appelle `0x4ACCD0` au pas `0xE4`). Elle emploie des constructeurs de copie et des appels de nettoyage lors de l'insertion. **Il ne faut pas inférer** que la structure WDA sur disque a une taille constante de `0xE4`: il s'agit du pas **de la représentation mémoire** déduite des opérations sur pointeurs.

## 4. Masque XOR : statut du résultat précédent [CONFIRMÉ / condition]

Le seul **accès direct** au DWORD global `0x514CE0` dans le désassemblage serveur analysé apparaît dans la routine du générateur à `0x459064` (lecture), `0x459088` et `0x459094` (écritures). L'adresse relève de la partie **non initialisée de `.data`** : RVA `0x14CE0` après les `0x12000` octets sur disque mais avant les `0x6572C` octets de taille virtuelle. Sa valeur initiale est donc normalement zéro à la mise en mémoire par Windows. En revanche, les appels préalables éventuels au même générateur peuvent modifier cet état **avant** la construction du masque WDA. Ainsi, les vecteurs de la passe 40 sont mieux étayés sur la valeur au démarrage, mais restent un **modèle conditionnel** tant que l'ordre des appels à `0x458FF0` n'est pas exhaustivement prouvé.

## 5. Limites de la chaîne établie

Le binaire établit une règle de remplacement dans la table de sorts, mais pas le contenu réel des WDA. Le premier fichier et le second peuvent contenir ou non une clé dupliquée. Le chemin étudié n'apporte ni preuve d'authenticité d'un WDA concret, ni garantie qu'une définition invalide remplace l'ancienne. Il ne documente pas non plus l'intégralité des validations des sous-paramètres : les appels virtuels requièrent leur propre analyse. Ne pas confondre **ID de sort sur 16 bits** (clé `10000..11023`) et **compteur d'instances d'effets `runtime +0x3AC`**, initialisé depuis la source `+0x24` avec multiplication par 1000 (`0x473878..0x473887`).
