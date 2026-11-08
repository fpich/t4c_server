# Passe 21 — Dégâts, résistances et distribution d’expérience

**Origine** : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Analyse **statique** de l’exécutable PE32, comparaison avec les symboles exportés et les tables virtuelles. **Aucun code serveur Python n’a été développé** et aucune exécution du serveur original n’est alléguée.

## 1. Armure : `Character::attacked` (`0x41B050`)

- **[CONFIRMÉ]** `0x41B185–0x41B18D` appelle la méthode virtuelle `+0x168`. La table `Character` à `0x4DE68C` pointe vers `Character::GetAC` (`0x41EA40`).
- **[CONFIRMÉ]** `0x41B18F` soustrait le retour flottant de `GetAC` à la valeur `double` située au début de `_ATTACK_STRUCTURE` (pointeur `EDI` dans ce chemin).
- **[CONFIRMÉ]** `0x41B191–0x41B1A8` compare le résultat à la constante `0.0` (`0x4DE630`) ; dans la branche de comparaison non positive, il le remplace par `1.0` (`0x4DE8C0`). Il réécrit le champ `double` de l’attaque.
- **[CONFIRMÉ]** Des callbacks/effets sont traités **avant** cette réduction (`0x41B05D–0x41B185`) et **après** (`0x41B1AA–0x41B23B`). Il ne faut donc pas interpréter `max(1, dégâts − AC)` comme une formule finale applicable à toutes les attaques.

Pseudocode documentaire de **cette étape seulement** :

```text
# lors de Character::attacked sur le chemin relevé
attaque.damage_double -= Character::GetAC()
if attaque.damage_double <= 0:
    attaque.damage_double = 1.0
# effets avant/après et étapes hit ultérieures non inclus
```

## 2. Points de vie, blessures, mort

### `Character::hit` (`0x41CC00`)

- **[CONFIRMÉ]** appels virtuels `+0xD8` et `+0xCC` pour les points de vie courants et la valeur maximale (`0x41CCC5–0x41CCDC`).
- **[CONFIRMÉ]** appels à `Skills::ExecuteSkill` avec identifiants `8` puis, sur d’autres chemins, notifications d’événements `0x0E` (`0x41CC8F`, `0x41CCBC`, `0x41CD10–0x41CE25`). La signification métier précise de ces numéros n’est pas attribuée sans preuve.
- **[CONFIRMÉ]** conversion du `double` en entier (`0x4D1D7A`, appel `0x41CCFE`), puis soustraction du résultat aux points de vie courants lorsque la branche d’accès autorise l’opération (`0x41CCEC–0x41CD03`).
- **[CONFIRMÉ]** le HP calculé est borné à zéro si négatif (`0x41CE28–0x41CE36`), suivi de l’écriture d’un paquet et de `SendPlayerMessage` virtuel `+0x14C` (`0x41CE3E–0x41CE75`). Le **type exact du paquet** ne doit pas être conclu uniquement de ce bloc.
- **[CONFIRMÉ]** branche conditionnelle menant à la méthode virtuelle `+0x44` (`Character::Death` = `0x41B250`) (`0x41CE84–0x41CEBF`). Elle contient des contrôles sur l’attaquant et les flags : ce n’est pas une règle universelle « tout dégât nul tue ».

### `Creatures::hit` (`0x432900`)

- **[CONFIRMÉ]** deux callbacks d’événements distincts précèdent l’application des dégâts (`0x43291B`, `0x432936`).
- **[CONFIRMÉ]** la récupération d’un pointeur et le test sur `+0x18` contre `100000` (`0x186A0`) contrôlent l’accès à une branche d’application des dégâts (`0x432939–0x432947`). **Rôle exact du pointeur non établi.**
- **[CONFIRMÉ]** récupère les HP via le slot `+0xD8`, convertit le `double` de la structure d’attaque, et teste HP − dégâts (`0x432949–0x432960`).
- **[CONFIRMÉ]** si la valeur devient non positive : appel virtuel `+0x44` vers la mort de la créature (`0x43296B`). Si positive : appel virtuel `+0xDC` pour mettre à jour les HP (`0x43297F`). Ces appels sont **conditionnels** aux tests précédents.

### `Character::Death`

- **[CONFIRMÉ]** appelle `GAME_RULES::DeathPenalties` à `0x41BC58`, puis utilise des méthodes virtuelles pour des valeurs après pénalité (`0x41BC64–0x41BC8C`). Le calcul complet des pertes n’est pas reconstruit par cette passe.

## 3. Expérience en groupe : `Group::DistributeKillXP` (`0x439FA0`)

**[CONFIRMÉ]** `Group::GetRangeGroupMembers` (`0x43ACB0`, appel `0x439FE4`) remplit un vecteur. Si le tableau est vide, la fonction termine sans distribution. Pour un nombre de membres retenus `n > 0`, les instructions montrent :

1. Coefficient de groupe `min(1 + 0.5 × (n − 1), 3.0)` utilisant les constantes `0x4DE8C0 = 1.0`, `0x4DEF18 = 0.5`, `0x4DEF10 = 3.0` (`0x43A004–0x43A035`).
2. Multiplication de l’XP transmise par ce coefficient, conversion flottant→entier 64 bits et division entière par le nombre de membres (`0x43A035–0x43A053`). La gestion exacte des arrondis extrêmes n’est pas démontrée.
3. Recherche du niveau maximum parmi les membres retenus via le slot virtuel `+0x13C = GetLevel` (`0x43A05C–0x43A08E`).
4. Pour chaque membre de niveau `L`, construction d’un pas de pénalité : `pas = 4 × (1 + floor(L / 25))`. Le quotient `k = floor((Lmax − L) / pas)` est calculé en entier (`0x43A0A3–0x43A0F6`). L’expression suppose `Lmax ≥ L`, ce que la recherche préalable garantit pour les membres parcourus.
5. Si `k == 0`, la part de base est conservée. Si `k >= 1`, elle est multipliée par **`0.5 × (0.2 ** (k−1))`**, puis reconvertie en entier 64 bits (`0x43A0F8–0x43A11B`).
6. Appels virtuels `+0x54 = GetXP` puis `+0x50 = SetXP` pour augmenter l’expérience de chaque membre (`0x43A11D–0x43A132`). Un message de gain peut être envoyé selon un drapeau de compte (`0x43A137–0x43A17B`).

**[CONFIRMÉ]** un appel à `Group::DistributeKillXP` existe dans `NPCstructure::OnDeath` à `0x44A964`. Cela établit un chemin d’attribution de XP depuis le traitement de mort côté structure PNJ ; cela **ne prouve pas** que toute mort de créature déclenche nécessairement ce chemin.

Le fichier `04_DISTRIBUTION_XP_GROUPE.tsv` décrit chaque phase et ses VA. Aucune fonction Python de calcul d’expérience n’est livrée dans cette passe : le projet Python existant reste inchangé.

## 4. Résistances élémentaires : 12 accesseurs identifiés

- **[CONFIRMÉ]** six `Unit::Get*Resist` appellent une méthode virtuelle au slot `+0x0C` avec un identifiant propre à l’élément, puis `0x48DE60` avec un indice additionnel, et retournent la somme **`100 + valeur virtuelle + valeur additionnelle`** (`0x462FD0–0x4630E1`).
- **[CONFIRMÉ]** les six `Unit::GetTrue*Resist` (`0x4630F0–0x46314F`) appellent seulement la méthode virtuelle `+0x0C` et renvoient **`100 + valeur virtuelle`** ; l’appel à `0x48DE60` n’est pas présent dans ces routines.
- **[INCONNU]** comment ces pourcentages/indices sont appliqués aux dégâts d’un sort ou d’un type de dégâts : l’accès à des statistiques ne suffit pas à en déduire la formule effective de réduction, ni une borne supérieure.

Les identifiants exacts figurent dans `05_RESISTANCES_ET_AC.tsv`.

## 5. Butin : périmètre non résolu

`Creatures::Death` retire l’unité du monde et présente un chemin de dépôt au sol (`WorldMap::deposit_unit`, documenté en passe 20). Cette passe n’a **pas** prouvé l’origine des objets, la table de butin ou l’algorithme de tirage. Le butin reste donc **à reconstruire**, sans assimiler tout dépôt à un objet de loot.

## 6. État d’avancement

Estimation globale maintenue à **2–5 %**, très indicative, car les preuves couvrent un sous-ensemble des fonctions et aucune compatibilité d’exécution n’a été validée. **Priorité : désassemblage et preuves, avant écriture du serveur Python.**
