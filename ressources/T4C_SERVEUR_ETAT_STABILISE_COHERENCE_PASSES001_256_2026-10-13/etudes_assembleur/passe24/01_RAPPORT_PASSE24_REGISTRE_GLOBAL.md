# Passe 24 — Registre global de références et origine partielle des modèles

**Binaire :** `T4C Server(1).exe` SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc` ; analyse statique PE32 x86. **Aucune exécution** du binaire ni modification du projet serveur Python.

## Résultat nouveau

La table en mémoire `0x5163F4` est un **répertoire global de 65 536 pointeurs/références indexés sur 16 bits**, non un catalogue exclusivement réservé aux objets du butin. Le chemin de création d'objets `Objects::Create -> 0x48B0C0` s'appuie sur cette table, mais d'autres producteurs y enregistrent des références de catégories différentes. Une adresse RAM de cette nature ne permet pas d'extraire les définitions effectives sans suivre leurs producteurs.

### 1. Initialisation — N4 pour cette opération isolée

À `0x489C70`, `mov ecx,0x10000`, `mov edi,0x5163F4` et `rep stosd` mettent à zéro **65 536 DWORD**. La fonction est appelée depuis la séquence d'initialisation observée en `0x472E03`. Ce nombre décrit une **capacité maximale d'emplacements**, pas un nombre d'objets chargés.

### 2. Enregistrement — N3

La routine `0x489C90` vérifie un identifiant `u16` non nul (`0x489CAD–0x489CC7`), peut consulter un registre de noms (`0x48A2D0`) pour une condition de doublon (`0x489CD1–0x489D13`), puis cherche un emplacement disponible en utilisant le masque `0xFFFF` (`0x489D14–0x489D54`). Le cas observé alloue une petite structure de métadonnées de 8 octets (`0x489D75`), mémorise un type à `+0x04`, l'identifiant `u16` à `+0x06`, et insère une association liée au nom dans un conteneur global. La **preuve décisive d'inscription** est `mov [edx*4+0x5163F4],eax` en `0x489E62`, où `eax` provient de l'argument `[ebp+0x0C]`. Une branche de conflit renvoie zéro avec journalisation (`0x489E7D`).

**Important :** les six arguments exacts de `0x489C90` ne sont pas encore tous nommés sémantiquement ; les registres globaux de noms et de références ont des rôles différents. Ce résumé n'affirme ni lecture de SQL ni chargement d'un format de fichier.

### 3. Recherche par nom et type — N3

`0x48A2D0` consulte un conteneur global, traverse des entrées, compare un champ de type en `+0x04` (`0x48A370–0x48A37A`), puis compare un nom (chemin manuel `0x48A383–0x48A3B5` ou fonction indirecte `0x48A3B7–0x48A3C9`). Une correspondance retourne l'identifiant `u16` à `entrée+0x06` (`0x48A446`), sinon `0` (`0x48A416`). Cette fonction **retrouve un identifiant de référence par nom**, elle n'est pas une preuve de création d'objet de jeu.

### 4. Création d'objets — N3 pour le contrôle d'existence

`Objects::Create` exporté en `0x44C070` délègue à `0x48B0C0`. En `0x48B0CB`, celui-ci lit `[0x5163F4 + 4*id]`. Le chemin `0x48B0D5–0x48B0E7` refuse certains modèles absents selon un mode passé en argument ; le contrôle `mode == 1` autorise un autre parcours. Il attribue aussi un identifiant d'instance venant du compteur global `0x50DB04` avec cas particulier pour `-1` (`0x48B0EA–0x48B104`), puis invoque une méthode virtuelle en `+0x24` (`0x48B11E`). **Index de définition et identifiant d'instance ne sont pas interchangeables.**

### 5. Sites de peuplement observés — N2, partiels

- `0x43789D` : un fabricant situé en `0x437810` transmet un pointeur créé via callback à `0x489C90` avec catégorie observée `3`.
- `0x47421E` : autre producteur lié à la construction d'une unité/PNJ, catégorie `3`.
- `0x475630` : une boucle consomme des fiches dont le pointeur avance de **`0x108` octets** à `0x475638`; un identifiant court à `ebx-0x08` et une référence nommée sont enregistrés sous catégorie `2`. Il s'agit de la **taille de pas observée dans cette boucle**, pas nécessairement de la taille complète de toute définition.
- `0x476910` : enregistrement de catégorie `2`, avec identifiant immédiat `0x7530` dans ce cas particulier.
- `0x44B0C8`, `0x44B0EE`, etc. : résolution de noms par `0x48A2D0`, avec chaînes directement présentes dans le PE : **`GOLD`**, **`DECOR001`**, **`DECOR002`**.

On sait maintenant **comment** une partie du registre est alimentée et recherchée. La provenance externe de l'ensemble des fiches (fichiers de données, ressources, scripts ou SQL) n'est toujours **pas démontrée**.

### 6. Balayage générique — N2

La fonction `0x48A470` parcourt les indices de `0` à `0xFFFF` (`0x48A49F–0x48A4DF`) et appelle des slots virtuels en fonction d'un sélecteur ; elle illustre l'usage **multi-types** du registre. Son contrat complet n'est pas reconstitué : certains embranchements supplémentaires restent à documenter.

## Corrections et incertitudes

La formulation historique « table de modèles d'objets » doit être **restreinte au chemin `Objects::Create`**. Le tableau global n'est pas exclusif aux objets. Aucun inventaire des objets ni des probabilités de butin ne peut être extrait de ce seul chemin. Les notes historiques sont conservées telles quelles ; cette passe apporte une **correction explicite**, pas une réécriture silencieuse.

## Prochaines pistes

1. Remonter l'origine du conteneur de fiches parcouru par `0x475630`, caractériser sa création et ses règles de peuplement.
2. Étudier le chemin producteur `0x47421E` (monstres/PNJ) et l'origine de ses descriptions.
3. Rapprocher les références de noms `GOLD`, `DECOR001`, `DECOR002` des tables de données ou du code de chargement.
4. Étudier les autres branches de `0x48B0C0` (construction/initialisation effective des instances) avant de produire des modèles Python.

Le désassemblage complet automatique n'est **pas** conservé dans l'archive ni comptabilisé. Seuls les extraits examinés et décrits sont retenus comme preuves.
