# Passe 39 — Décodeur WDA et provenance des enregistrements de sorts

## Méthode et base de vérification

Analyse statique de **T4C Server(1).exe** SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Les quatre fichiers de preuves sont contrôlés instruction par instruction contre `.text`, taille **905,117 octets**, base virtuelle `0x401000`. **CONFIRMÉ** décrit une opération effectivement observée. **INFÉRÉ** est une interprétation traçable sans tous ses prérequis. **INCONNU** signifie que le binaire fourni n'apporte pas les données nécessaires. L'archive ne contient pas d'implémentation Python.

## A. Transformation par XOR au niveau de la lecture [CONFIRMÉ]

`0x499A30` n'est pas une simple copie des octets du disque. Elle utilise `ftell` (import IAT `0x4DE32C`) pour récupérer la position initiale, lit chaque octet par `fgetc` (IAT `0x4DE328`), puis l'assemble par `xor al, bl` (`0x499AB3`). La valeur de la table est calculée par `0x4993E0` avec **index = position du fichier % 0xD5A**; ce diviseur vaut **3 418**. Le résultat est écrit dans le tampon d'appel. Les appels suivants maintiennent un index correspondant à la position des octets lus, grâce à l'incrément du pointeur destination.

La table de 3 418 octets est initialisée une fois dans `0x4993A0`. Le code fixe deux paramètres du générateur via `0x459100` avec `0x5B7E` et `0`, puis remplit la table à l'aide de `0x4590A0`. Le mécanisme est **un masquage XOR**; ne pas le qualifier de chiffrement cryptographiquement robuste. La suite pseudo-aléatoire exacte doit être obtenue en analysant `0x458FF0`, qui n'est pas reconstituée ici.

**Limites** : pas de WDA réel fourni ; cette passe prouve le code de lecture, et non la possibilité pratique de décoder n'importe quel fichier. La gestion d'EOF en `0x499AC9` appelle un chemin de journalisation/exception ; ses garanties d'arrêt restent à valider.

## B. En-tête et types primitifs [CONFIRMÉ]

Le parseur `0x499E60` lit deux champs sur **16 bits** à partir du flux et un drapeau depuis un octet. Il accepte le marqueur `0x0CA7` (test à `0x499E8B`) et valide séparément la valeur `1` dans le champ à `+0x06` du petit objet en-tête (`0x499EB0`). Un échec mène à la valeur de retour `0`; le succès à `1`.

La table de routines typées montre: `0x499B80` (4 octets), `0x499BA0` (2 octets), `0x499CE0` (1 octet), `0x499D00` (booléen: comparaison avec 1), `0x499BC0` (chaîne précédée par une longueur 32 bits, allocation de `taille+1`, terminaison `NUL`). Elles utilisent le même lecteur transformant les octets. Les champs de l'en-tête sont des champs **logiques du flux**, non des offsets absolus sur disque communs à tous les WDA.

## C. Chargement de sorts depuis un ou deux fichiers WDA [CONFIRMÉ / PRÉCISION]

La séquence de démarrage `0x475A30` manipule les noms **`T4C Edit.WDA`** et **`T4C Worlds.WDA`**. À `0x475C8B`, l'ouverture du flux principal est testée ; `0x475CB3` valide son en-tête via `0x499E60`. Le chemin conditionnel à `0x475D28` valide le **second flux**, si disponible. La collection de sorts (`0x4A8310`) est ensuite alimentée depuis le flux principal par `0x4A8810` (`0x475DBC`) et, si le second flux est présent, une seconde fois (`0x475DD3`), avant l'appel `0x473610` à `0x475DDF`.

Cela **affine la passe 38** : l'origine des sorts peut impliquer deux lectures successives des fichiers WDA, et non exclusivement un unique WDA. Le rôle précis d'une possible surcharge, déduplication ou fusion doit être établi dans `0x4A8810`/ses helpers, pas présumé. Le second fichier n'est donc **pas supposé obligatoire** pour le chemin général observé.

## D. Types d'enregistrements et listes imbriquées [CONFIRMÉ]

La routine `0x4A8810` charge d'abord un **compteur 32 bits** avec `0x499B80` (`0x4A8857`), puis itère sur les entrées. Chaque entrée contient plusieurs chaînes (`0x499BC0`), plusieurs DWORD (`0x499B80`) et trois booléens lus par `0x499D00` (`0x4A8A32`, `0x4A8A3D`, `0x4A8A48`). Une autre lecture de DWORD à `0x4A8C78` détermine la longueur d'une **première sous-collection** ; une seconde à `0x4A8CF5` celle d'une **seconde sous-collection**. Les éléments sont traités par deux couples de helpers distincts (`0x4A71B0/0x4A73A0` et `0x4A8110/0x4A8210`).

Le destructeur `0x4A8370` progresse de **0xE4 octets** par entrée (instruction `add esi,0xE4` à `0x4A845F`) : c'est une **taille de structure en mémoire**, pas une longueur fixe des enregistrements sur disque. Les sous-collections utilisent elles-mêmes des composants dynamiques : par conséquent, le modèle "un sort = 0xE4 octets dans WDA" serait **incorrect**.

## E. Construction de définitions runtime [CONFIRMÉ]

`0x473610` alloue **0x418 octets** par objet préparé (`push 0x418` à `0x47364F`) et copie des champs scalaires et des chaînes depuis l'entrée WDA. L'identifiant est lu comme `WORD [source+0x24]` pour l'entête du nouvel objet (`0x473729`), mais le compteur `+0x3AC` part du **DWORD** au même offset (`0x473878`) avant multiplication par 1 000 (`0x47387B..0x473887`). Les offsets `+0x24` et `+0x3AC` sont **mémoire source et mémoire cible**, pas des offsets physiques dans WDA. Les six familles identifiées aux passes 35–36 consomment ensuite le compteur.

La différence WORD/DWORD préserve une incertitude importante sur les bits supérieurs et l'unicité globale des IDs. Sans les valeurs réelles WDA, impossible de prouver des collisions effectives.

## F. Mesure

L'archive précédente documentait **69,281 octets** (7.654 %). Le nouvel état documente **71,381 / 905,117** octets, soit **7.886 %**, gain **2,100 octets uniques**. Les preuves ajoutées contiennent **1,134 instructions correspondant aux octets du binaire**, aucune rejetée. **160 / 1125** entrées exportées ont une instruction d'entrée documentée. Ces indicateurs mesurent les octets directement cités et **pas** l'exhaustivité de la compréhension fonctionnelle.

## Synthèse et continuité

La chaîne maintenant documentable est : **fichier WDA → ouverture/validation → lecture avec XOR dépendant de l'offset → champ typé, longueur et sous-listes → transformation mémoire en définition → compteur `+0x3AC` → constructeurs et callbacks des effets**. Il manque la reproduction prouvée du générateur, les fichiers WDA originaux, la description exacte de tous les champs, et la politique de fusion et remplacement si deux fichiers présentent une même définition. Ces points constituent la priorité de la prochaine passe.
