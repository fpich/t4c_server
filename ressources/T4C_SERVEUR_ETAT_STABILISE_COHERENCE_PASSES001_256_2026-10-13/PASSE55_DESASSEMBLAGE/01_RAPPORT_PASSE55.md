# Passe 55 — Évaluation conditionnelle WDA, variables associatives et branches d'attributs

**Exécutable:** `T4C Server(1).exe` — SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Aucun fichier WDA réel n'a été fourni. Analyse statique et contrôle octet par octet.

## 1. Une seule branche résultat pour `if` [CONFIRMÉ]

L'évaluateur `0x409C10`, sur sous-type `2`, évalue d'abord les deux opérandes de comparaison (`0x409FAE`, `0x409FDD`). Le comparateur a six destinations possibles à partir de la table `0x40C174`. Seule la branche retenue est ensuite évaluée : `0x40A08B` pour le nœud `[esi+0x14]+0x20` ou `0x40A0CC` pour `[esi+0x14]`. **Il y a donc court-circuit des branches de résultat, mais pas des deux expressions comparées.** Voir `08_DECISION_IF_EVALUATION.md`.

## 2. `var` : une lecture peut impliquer une création [CONFIRMÉ]

Le sous-type `11` débute en `0x40A55B`, appelle `0x40F230` à `0x40A5C4`; cet auxiliaire appelle `0x40F300` sur ses branches de clé absente (`0x40F28F`, `0x40F2D2`). Le lien `var -> recherche/creation` est démontré. Lecture du `double` en `[noeud+0x20]`, compteur modifié conditionnellement. La passe 54 présentait à juste titre ce lien comme inconnu : **la passe 55 clôt cette incertitude**. Le temps de vie et la portée de `var` restent inconnus.

## 3. Douze chemins de sous-types [CONFIRMÉ sur le dispatch]

La table de 12 pointeurs à `0x40C144` est indexée par `OPERAND+0x11 - 2`. Elle distingue le `if` (2), compétences (3,8,9,10), viewflag (4,5), comptages d'objets (6,7,12,13) et `var` (11). Dans la branche compétence normale `0x40A0E4`, une écriture **`USER_SKILL+0x4 = 0`** apparaît à `0x40A14C`; dans la branche de lecture `0x40A22B`, la valeur est simplement lue à `0x40A280`. Un autre contexte peut produire d'autres effets : nous ne généralisons pas ces propriétés à tous les sous-types.

## 4. Attributs, résistances et distance [CONFIRMÉ sur les appels]

La table `0x40C18C` de 113 pointeurs aiguille les sélecteurs `[OPERAND+0x10]`. Les nouvelles preuves portent sur les lectures `self`/`target` (caractéristiques, mana), les flags et boosts élémentaires, les familles `true_*`, la classe d'armure, l'or et `range`. Les correspondances de noms ont été vérifiées contre `07_LEXIQUE_114_NOMS_WDA.tsv` de la passe 53. La distance du sélecteur `range` utilise deux positions rendues par le slot virtuel `+0x1C` (`GetWL`) et un calcul de racine carrée (`fsqrt` à `0x40C10C`). La présente étude ne prouve pas la formule générale des dégâts magiques.

## 5. Couverture et état des preuves

- Couverture brute vérifiée : **123,248 / 905,117 octets = 13.617 %**.
- Gain **non redondant** depuis la passe 54 : **2,730 octets**.
- Instructions des fichiers de preuves de la passe 55 : **1,973**, aucun rejet. Les extraits centraux `if` et `var` étaient déjà couverts en octets; leurs **interprétations** sont nouvelles. Ne pas compter ces octets une seconde fois.
- Série prudente après conservation de l'écart historique de 91 octets : **123,157 = 13.607 %**.
- Entrées exportées correspondant à un début d'instruction documenté : **259 / 1125**.

## 6. Limites [INCONNU]

- Usage réel de chaque branche sur des définitions WDA authentiques et éventuels effets secondaires supplémentaires des fonctions appelées indirectement.
- Politique complète d'insertion/réutilisation de `var`, durée de vie des données contextuelles et rapport aux données persistées.
- Équivalence de toutes les aliases `skill`/`spell` sous tous contextes, ainsi que l'ordre d'évaluation en présence d'erreurs ou d'exceptions.
- La sûreté sous appels concurrents et les limites de récursion des formules.

**Prochaine passe:** suivre `0x442060` et les chemins d'initialisation de variables, puis reconstituer les constantes et les expressions utilisatrices des résistances dans les superstructures de sorts. Aucune implémentation Python du serveur ne fait partie du travail.
