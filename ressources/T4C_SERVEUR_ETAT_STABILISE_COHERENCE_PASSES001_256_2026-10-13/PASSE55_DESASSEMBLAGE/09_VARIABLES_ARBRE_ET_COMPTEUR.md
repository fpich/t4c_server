# Opérande `var` : lecture, insertion implicite et durée de vie [PASSE55]

## Chaîne d'appel démontrée

1. Le sous-type **11** cible `0x40A55B` dans la table `0x40C144` (`OPERAND+0x11 - 2`).
2. Après vérification du pointeur de contexte `[ebp+0x2C]`, la branche prépare un nom de variable et un objet de clé, `0x40A568–0x40A5C0`.
3. `0x40A5C4` appelle directement le helper **`0x40F230`**.
4. `0x40F230` parcourt un arbre via une comparaison des clés; en cas de clé non trouvée, les branches **`0x40F28F`** et **`0x40F2D2`** peuvent appeler **`0x40F300`** (insertion). Il s'agit donc d'un mécanisme *chercher ou créer*, pas d'une simple recherche immuable.
5. L'appelant lit un `double` à **`[noeud+0x20]`** en `0x40A5DA`.
6. `0x40A5DD–0x40A612` examine une métadonnée de contrôle : si le byte adjacent n'est ni `0x00` ni `0xFF`, décrément à `0x40A5F9–0x40A5FC`; dans l'autre branche, appel à **`0x442060`**. La signification exacte de cette métadonnée et du libérateur MFC/CRT ne peut pas être fixée par ce seul chemin.

## Correction des passes précédentes

La passe 53 décrivait `0x40F230` comme une recherche et la passe 54 indiquait que le lien **`var → insertion`** restait non démontré. Le couple **`0x40A5C4 → 0x40F230 → 0x40F300`** confirme le lien. On conserve les documents historiques intacts et on ajoute ici la correction. Ne pas confondre **création d'une clé dans un conteneur** et **persistance SQL ou initialisation métier d'une variable**, qui ne sont pas prouvées.
