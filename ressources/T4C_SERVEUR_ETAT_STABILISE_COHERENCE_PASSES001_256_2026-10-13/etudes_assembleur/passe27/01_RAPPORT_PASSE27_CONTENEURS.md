# Passe 27 — Chaîne `Objects_ContainerGroups` → `Objects_ContainerItems`

## Méthode

Étude de `T4C Server(1).exe` PE32 x86 : chaînes littérales de la section `.data`, parcours des branches et des appels x86 dans `.text`, puis contrôle des octets cités avec la version archivée du binaire. Les fonctions MFC accessibles à travers des *thunks* importés restent non résolues nominativement faute de `MFC42.DLL` vérifiée.

## 1 — Groupe associé à l'objet

- À `0x49F223`, la routine de chargement utilise la chaîne à `0x50EF78` : `SELECT * FROM Objects_ContainerGroups` et appelle la passerelle `0x4D1B78`.
- À `0x49F277`, elle recherche la colonne `ObjectID` (`0x50F300`) via `0x4D1B72` ; le résultat intermédiaire sert à retrouver une définition en mémoire.
- `0x49F2C0` appelle `0x4A19F0` pour une recherche ; une comparaison préalable à l'insertion oriente ensuite le traitement vers un enregistrement ou sa réutilisation.
- Le calcul à `0x49F304`–`0x49F316` utilise un indice × 272, avec un accès au champ **+0x34** de la définition : un pas de tableau, **pas** une taille de classe complète prouvée.
- `0x49F3A6` (`0x49FA80`) et `0x49F3B1` (`0x49FBE0`) interviennent après le sous-chargement ; leur sémantique fine est encore incomplète.
- À `0x49F3F3`–`0x49F3FA`, la condition permet de recommencer la lecture des groupes ; à partir de `0x49F400` vient le passage à `Objects_AttrBoosts`, à ne pas confondre avec la table de groupes.

## 2 — Jointure logique par identifiant de groupe

- Fonction sous-jacente à `0x4A5910` : récupération d'un champ littéral **`ID`** (`0x50F378`) par appel virtuel `+0x4C` (`0x4A5941`–`0x4A5951`). Le nom précis de l'interface n'est pas établi.
- Cette valeur est conservée dans `edi` à `0x4A5970` avant le formatage par `0x403940` : `SELECT * FROM Objects_ContainerItems WHERE ContainerGroupID=%u` (chaîne `0x50F3AC`, site `0x4A599D`). Cela relie explicitement les deux ensembles de données.
- Le chemin lance la requête par le thunk MFC `0x4D1B78` (`0x4A59B8`), vérifie un état via `0x4D1B66`, puis boucle sur les lignes lues (`0x4A59D0`–`0x4A5A4D`).
- `0x4A5A51` traite un chemin où le groupe ne retourne pas de lignes et journalise le message littéral `WARNING: Container is empty!` (`0x50F38C`).

## 3 — Entrées et stockage en mémoire

- `0x4A6640` lit pour chaque ligne le champ littéral **`ConjureID`** (`0x50F400`, site `0x4A6687`–`0x4A6695`). Ne **pas** le renommer automatiquement `ItemID` : le binaire emploie bien `ConjureID`.
- Le résultat est stocké dans une chaîne sous un objet auxiliaire (`0x4A66A0`–`0x4A6703`), avec chemins de réallocation/copie. Les détails internes des classes MFC demandent une validation supplémentaire.
- `0x4A5A0C` appelle ce parseur sur la ligne courante ; `0x4A5A19` puis `0x4A5A24` alimentent un vecteur. Le sous-conteneur emploie **40 octets par entrée** : `0x4A5AAB` et `0x4A5B41`–`0x4A5B44` montrent des incréments ×40.
- Le sous-conteneur de 40 octets est donc distinct de la table de définitions ×272 (`0x49F304` et `0x49F389`–`0x49F3A6`).
- `0x4A5720` parcourt les entrées avec un incrément `add esi,0x28` et effectue un appel virtuel par entrée. Cette fonction n'établit pas à elle seule ce que produit le tirage d'un conteneur en jeu.

## 4 — Chaînes et indices vérifiés

`0x50EF78=SELECT * FROM Objects_ContainerGroups`; `0x50F300=ObjectID`; `0x50F378=ID`; `0x50F3AC=SELECT * FROM Objects_ContainerItems WHERE ContainerGroupID=%u`; `0x50F400=ConjureID`; `0x50F38C=WARNING: Container is empty!`; `0x50EF24=SELECT * FROM Objects_AttrBoosts`.

## 5 — Ce qui reste non démontré

1. Nature du stockage physique SQL, intégralité des colonnes, valeurs effectives du jeu et inventaire d'objets ; ces données sont externes au binaire reçu.
2. Signature exacte et gestion d'erreur des appels MFC par ordinal.
3. Caractéristiques et chances de tirage des conteneurs en jeu ; le sous-conteneur est peuplé ici, mais son exploitation finale n'a pas été entièrement suivie.
4. Identité exacte des types C++ aux slots virtuels des structures de groupes ; les tailles ×272 et ×40 sont des pas observés et non des définitions C++ complètes.
5. Couverture : seuls les octets explicitement cités et vérifiés comptent ; l'exécution et l'équivalence fonctionnelle ne sont pas validées.

## Suite recommandée

Remonter les appels consommateurs de ces conteneurs afin de trouver l'ouverture réelle et les mécanismes de sélection ; poursuivre l'exploration des autres tables de définitions, tout en conservant une couverture assembleur mesurée par le même outil.
