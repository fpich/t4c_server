# Passe 26 — Chargement des définitions, interfaces externes et pas de structures

## Périmètre et méthode

- Binaire : `T4C Server(1).exe` (SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`).
- `objdump` sur le PE32 x86, vérification des octets des instructions retenues contre `.text`, références croisées avec la table d’importation du même PE et les chaînes `.data`.
- Aucun programme Windows exécuté et aucune donnée SQL extraite.

## 1. Résolution effective des appels 0x4D1Bxx

Les adresses `0x4D1B5A` à `0x4D1B7E` sont des **thunks JMP [IAT]** vers des imports par **ordinal** dans **MFC42.DLL**. Exemples :

- `0x4D1B78: jmp DWORD PTR [0x4DE1BC]` → MFC42 ordinal **5176**.
- `0x4D1B66: jmp DWORD PTR [0x4DE1C4]` → ordinal **4061**.
- `0x4D1B60: jmp DWORD PTR [0x4DE1C8]` → ordinal **4293**.
- `0x4D1B72: jmp DWORD PTR [0x4DE1C0]` → ordinal **3167**.

**Correction de méthode :** la passe 25 avait décrit ces adresses comme des fonctions appelées au cours de la lecture structurée. Ceci reste exact pour les *sites d’appel*, mais leur implémentation se trouve dans la DLL importée. Leur nom exact, signature et contrat d’échec ne sont pas établis avec la seule image serveur. Les libellés « ouverture », « fin de jeu de résultats », « champ » restent donc des hypothèses déduites de l’usage dans le code T4C.

## 2. Chaîne `Creatures_Items`

Le chemin à `0x494F23` référence le littéral `SELECT * FROM Creatures_Items`, puis appelle le thunk `0x4D1B78`. Des lectures avec chaînes `ItemID` et `DropPercentage` suivent, aux sites `0x494FD1` et `0x494FF9`. Les champs extraits alimentent le stockage interne associé à une créature via des routines `0x495280` et `0x495420`.

Le bloc indexé à `0x495018–0x495028` calcule `33 * index * 8 = 264 * index`, à partir d’une base puis `+0x14`. **264 octets est un pas de tableau de ce parcours**, pas une preuve de la taille de l’objet C++ `MonsterStructure`. Le helper `0x495420` traite pour sa part un vecteur avec des entrées de **16 octets** (`sar esi, 4`, `shl esi, 4`).

Les lignes SQL, leurs noms de colonnes et ces calculs sont observés. Les lignes concrètes de la base (IDs, valeurs, probabilités) ne sont pas disponibles dans l’exécutable.

## 3. Chaîne `Objects_ContainerGroups`

Le site `0x49F223` ouvre le chemin `SELECT * FROM Objects_ContainerGroups`, suivi d’un champ `ObjectID` et de parcours conditionnels. À `0x49F304–0x49F316` : `(16*index + index)*16 = **272*index**`, avec décalage de champ `+0x34`. L'autre routine `0x49FBE0` manipule un conteneur dont le pas est **40 octets**, reconnaissable à la constante de division `0x66666667` et à la multiplication finale par 40.

**Ne pas confondre** le pas de 272 octets de la table de définitions et les 40 octets du sous-conteneur associé. Les deux concernent des niveaux différents de données.

## 4. Chaînes de chargement confirmées

Le fichier TSV de la passe recense les adresses `.data` exactes des chaînes SQL et de leurs champs : `CreatureID`, `ItemID`, `DropPercentage`, `ObjectID` et `Objects_ContainerItems`.

## 5. Réserves restantes

1. Les noms exacts des fonctions MFC importées par ordinal n'ont pas été reconstitués depuis une copie certifiée de `MFC42.DLL`.
2. L’origine physique des tables de données, leur schéma complet et les identifiants d’objets ne sont pas présents dans les sources reçues.
3. Les chemins SQL observés ne prouvent pas à eux seuls l’intégralité de la logique d’initialisation, ni la validité en exécution.
4. La couverture assembleur mesure les **octets de preuves cités** ; elle ne constitue pas une mesure de comportement intégralement compris.

## Prochaine étude ciblée

Reconstituer la relation `Objects_ContainerGroups → Objects_ContainerItems`, puis cartographier les constructeurs de modèles à partir des routines qui remplissent les tables mémoire.
