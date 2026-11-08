# Passe 53 — Correspondance réelle des expressions WDA

## 1. L'identifiant textuel entre dans `BoostFormula::ParseFormula` [CONFIRMÉ]

La fonction exportée `BoostFormula::ParseFormula`, `0x40C400`, décompose des parenthèses, nombres à partie décimale et jetons alphabétiques. Les identifiants peuvent comprendre le point (`.`) et le souligné (`_`), observés à `0x40C7FA–0x40C802`. L'identifiant formé est comparé à une série de chaînes ASCII constantes situées en `.data`, dans une suite de code de `0x40C80D` à `0x40E885`.

**114 comparaisons textuelles distinctes** ont été repérées, classées et rapprochées du fichier de 113 sélecteurs de la passe 52. La liste et les adresses précises figurent dans `07_LEXIQUE_114_NOMS_WDA.tsv`. **98** comparaisons débouchent sur un sélecteur documenté ; **16** empruntent des branches paramétrées et leur éventuel code final n'est pas déduit sans preuve. Les chaînes sont du **binaire**, pas des exemples inventés.

Les noms démontrés comprennent `self.int`, `target.str`, `self.hp`, `target.mana`, `self.r_fire`, `target.r_light`, `self.true_r_air`, `target.true_fire`, `self.ac`, `target.ac`, `range`, `infinite`, `skill`, `spell`, `target.true_skill`, `self.viewflag`, `itemcount`, `var`, `equipcount`, `if`. Le caractère spécial `x` et `arrow_dmg` sont rattachés à une affectation commune de code `0x26` à `0x40F0D4`, mais leur sens dans tous les contextes reste à étudier.

## 2. Accès aux coordonnées et calcul de distance [CONFIRMÉ]

Dans l'évaluateur, le bloc `0x40C09E–0x40C114` appelle le slot virtuel `+0x1C` de deux unités, obtient une `WorldPos`, exploite ses deux premiers DWORD, puis calcule une racine carrée après quadrature des différences. Cette méthode virtuelle est **`Unit::GetWL` à `0x48B680`** pour `Unit`, `Character`, `Creatures` et `Objects`, après lecture des quatre tables virtuelles principales dans `.rdata`. Le troisième DWORD est copié par `GetWL` mais **n'entre pas dans le calcul de distance observé**. Les limites arithmétiques et les mondes différents restent indéterminés.

## 3. Recherche dans la table contextuelle, et écriture conditionnelle [CONFIRMÉ]

Le helper `0x40F230` inspecte des nœuds de structure associative, compare une clé texte via un appel MFC/C++ indirect, et remplit un résultat d'itérateur indiquant si la recherche a réussi. Dans la branche appelante `0x40A55B–0x40A61A`, la routine extrait `double` dans le nœud (offset `+0x20`) ; plus loin elle **décrémente un octet du contexte** uniquement si celui-ci n'est ni `0` ni `0xFF`. Cet effet n'est pas imputable au helper lui-même. Le type exact du compteur et la sécurité de cette écriture sous réentrance demeurent inconnus.

## 4. Structure des opérandes et limites [CONFIRMÉ sur les bits]

Les affectations directes alimentent principalement `[OPERAND+0x10]`, qui sert ensuite d'indice à l'aiguillage de 113 entrées (`0x40C18C`). Les branches avec arguments remplissent aussi `[OPERAND+0x11]`, pointeurs et sous-arbres ; l'absence de code direct dans le TSV ne signifie pas que la fonctionnalité est absente. `self` et `target` ne désignent pas nécessairement un personnage : l'évaluation prend des pointeurs `Unit` et comporte des chemins de repli pour les unités nulles.

Ce travail met enfin en relation les textes **`self.r_fire`, `target.r_fire`, `self.true_r_fire`** avec les formules de résistances de la passe 52, sans établir la formule générale des dégâts magiques (fichiers WDA et environnement de jeu non disponibles).

## 5. Avancement

- Binaire original SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc` ; preuves de cette passe **3887 instructions exactes**, **0 rejet**.
- **8763 octets non redondants** nouvellement documentés.
- Couverture brute vérifiée **117718 / 905117 = 13.006 %** ; série historique prudente **117627 / 905117 = 12.996 %** ; conserver l'écart de 91 octets sans le dissimuler.
- 259/1125 entrées exportées selon vérification indépendante ; suivre le registre historique comme série distincte jusqu'à correction finale.

Les fichiers de preuves contiennent des blocs sémantiquement requalifiés et excluent les tables de saut du comptage.
