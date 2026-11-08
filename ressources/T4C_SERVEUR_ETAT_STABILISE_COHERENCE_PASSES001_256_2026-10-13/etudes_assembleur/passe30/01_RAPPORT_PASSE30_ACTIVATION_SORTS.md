# Passe 30 — activation des sorts, garde de ciblage et distribution des effets

## Périmètre et méthode

Binaire : `T4C Server(1).exe`, PE32 x86, analyse statique sans exécution. Cette passe reprend la liaison établie en passe 29 entre `ObjectStructure::OnDisturbed` / `ObjectStructure::OnUse` et `SpellMessageHandler::ActivateSpell` à `0x00461560`. Les instructions incluses dans la preuve sont extraites du binaire et contrôlées octet par octet. Les noms des fonctions exportées proviennent du tableau C++ du même binaire. Aucun serveur Python n'est implémenté.

## 1. Table centrale des sorts

- `SpellMessageHandler::RegisterSpell` (`0x00461360`) et `SpellMessageHandler::GetSpell` (`0x00462230`) utilisent la table `SpellMessageHandler::lpSpellTable`, adresse `0x00514DA4`.
- La recherche est indexée par `spellId - 0x2710` et limitée à **0x400 (1 024) emplacements**. Les identifiants acceptables dans ce chemin sont donc de `0x2710` à `0x2B0F` inclus, sous réserve d'une entrée non nulle.
- `RegisterSpell` vérifie les limites, traite une entrée préexistante en appelant plusieurs destructeurs/nettoyages, puis affecte le pointeur de la nouvelle définition dans la table (`0x4614A2–0x4614AD`). La libération précise des sous-objets doit être traitée comme conditionnelle.
- `ActivateSpell` prend l'identifiant comme argument 16 bits dans `[ebp+8]`, interroge la même table à `0x4615C0` et quitte précocement si la définition est absente.

## 2. Conditions d'entrée et sélection de cible

`ActivateSpell` :

1. Vérifie que l'unité `[ebp+0x0C]` n'est pas nulle (`0x46156C–0x461571`).
2. Obtient sa position par un appel virtuel au slot `+0x1C`, puis en déduit le numéro de monde et appelle **`TFCMAIN::GetWorld`** (`0x471EC0`) ; abandon si le monde est absent (`0x461577–0x461598`).
3. Contrôle l'ID du sort et la présence de la définition (`0x46159E–0x4615CC`).
4. Selon l'octet `spell+0x23A`, les valeurs `5`, `15` et `18` sélectionnent l'unité initiale comme cible (`0x4615D2–0x4615EB`), sinon le paramètre `[ebp+0x14]` est utilisé. **Le sens métier de chaque valeur est inconnu.**
5. Tire une valeur via une routine appelée avec bornes `1` et `100000` (`0x4615EB–0x4615FC`), puis la multiplie par la constante **0,001** située à `0x004DF518` ; la compare à la valeur fournie par **`BoostFormula::GetBoost`** sur `spell+0x248` (`0x461600–0x461631`). Il s'agit d'un contrôle probabiliste ou de seuil, sans pouvoir attribuer définitivement une « chance d'incantation » au champ.
6. Si `spell+0x32C` est non nul, appelle **`GAME_RULES::InPVP`** (`0x438FE0`) pour le couple d'unités (`0x461633–0x461658`), puis applique des exceptions selon `Unit::GetType` et une fonction supplémentaire. Certains rejets entraînent un message système (`Character::SendSystemMessage` à `0x422E90`). Les numéros de texte `0x1CF` et `0x1D6` sont visibles, sans traduction démontrée.

## 3. Préparation de zone et contrôle de cibles

- Les octets `spell+0x23B` et les positions alimentent les bornes des boucles (`0x461AD7–0x461B5A`). Des appels à `WorldMap::GetMaxX` / `GetMaxY` ou accesseurs analogues situés à `0x4B1C40` et `0x4B1C50` bornent ces positions (noms exacts à recouper).
- Deux boucles imbriquées balayent des coordonnées voisines (`0x461B98–0x461F15`). Un contrôle de distance est calculé à partir de carrés de différences de coordonnées et de l'instruction `fsqrt` (`0x461BD9–0x461C0A`).
- `WorldMap::ViewTopUnit` (`0x4AF0C0`) recherche une unité à une position parcourue (`0x461C10–0x461C2F`). Les types `3` et `4` sont exclus dans une branche ; un contrôle de drapeau suit pour certains personnages (`0x461C35–0x461C77`).
- Une table de branchement à `0x461F78` dépend du type défini en `spell+0x23A`. Les chemins testent notamment égalité entre cible et lanceur, types `Unit::GetType` et appartenance à un groupe dans certains cas ; ils rejoignent un traitement de cible admissible (`0x461DC3`). Les étiquettes de type (ennemi/allié/soi) restent inférées, **non confirmées**.
- `GAME_RULES::InPVP` peut être consulté à nouveau dans cette phase (`0x461DC3–0x461DDC`). `WorldMap::GetCollisionPos` (`0x4B2700`) intervient avant le traitement final (`0x461DF2–0x461E3A`).

## 4. Effets diffusés et routine interne

- La routine envoie des notifications via **`Broadcast::BCSpellEffect`** (`0x40FF00`) lorsque des conditions de la définition sont satisfaites (`0x4619F1–0x461A1A` et `0x461E53–0x461EC5`). Les champs `spell+0x23C` et `spell+0x23E` participent à ces chemins, sans que leur nom métier soit établi.
- Le traitement effectif par cible passe par une sous-routine interne `0x461FD0`, appelée à `0x461EE9`. Cette sous-routine parcourt un conteneur de traitements attaché à la définition du sort (notamment à `spell+0x3B0`, `+0x3D0`, `+0x3F0`), utilise des appels virtuels pour traiter les entrées et comporte un chemin de libération `slot +0x1C4` (`0x462211–0x462215`).
- La sous-routine `0x461FD0` retourne un booléen dans des chemins observés, mais **les règles de réussite, d'échec et la sémantique exacte des effets** demandent l'analyse des implémentations virtuelles concrètes et de leurs tables.

## 5. Références prouvées et limites

Le lien **objet → message interne 3/4 → `ObjectStructure::OnDisturbed` / `OnUse` → `ActivateSpell` → sélection de cibles → effets** est démontré pour les chemins identifiés. Il ne signifie pas que tous les objets activent un sort, que tous les sorts fonctionnent ou que les groupes de conteneurs tirent des objets. Le rôle exact des méthodes de `SpellEffect` ou des superstructures d'effets reste partiel.

Aucune trace dynamique, aucun dump des données SQL réelles, aucun serveur reconstruit n'a été produit. La mesure de couverture porte exclusivement sur les octets `.text` explicitement présents dans les preuves validées.

## 6. Tables de saut décodées (données, pas instructions)

Les tables de 19 adresses à `0x461F2C` et `0x461F78` sont décodées dans `09_TABLES_SAUT_TYPE_SORT.tsv`. Elles correspondent aux types `spell+0x23A` **1 à 19**. Les types 5, 6 et 13 convergent vers les mêmes branches communes dans les deux tables, mais il serait prématuré de leur attribuer une signification métier identique. Chaque table fait exactement **76 octets** (`19 × 4`). Elles sont exclues du numérateur de couverture des **instructions**.
