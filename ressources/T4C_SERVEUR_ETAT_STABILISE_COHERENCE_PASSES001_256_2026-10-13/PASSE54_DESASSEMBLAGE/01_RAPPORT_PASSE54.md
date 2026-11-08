# Passe 54 — Grammaire et sous-types des fonctions d'expression WDA

## 1. Les 16 noms spéciaux sont désormais discriminés [CONFIRMÉ]

La passe 53 avait recensé 114 noms dans `BoostFormula::ParseFormula` (`0x40C400`), dont **16** étaient classés comme traitements spéciaux sans affectation simple du sélecteur `[OPERAND+0x10]`. La présente étude identifie pour **chacun** l'écriture d'un **sous-type à `[OPERAND+0x11]`**, suivant une branche directe, ou un saut commun à plusieurs noms. L'existence du sous-type et les destinations sont vérifiées dans les preuves des passes 53 et 54.

- `skill`/`spell` : sous-type 3 ; `true_skill`/`true_spell` : 10.
- `target.skill`/`target.spell` : 8 ; `target.true_skill`/`target.true_spell` : 9.
- `self.viewflag` : 4 ; `target.viewflag` : 5.
- `itemcount` : 6 ; `target.itemcount` : 12.
- `equipcount` : 7 ; `target.equipcount` : 13.
- `var` : 11 (0x0B) ; `if` : 2.

La table `05_REGISTRE_16_OPERANDES_SPECIAUX.tsv` donne pour chaque nom **son adresse de comparaison, le sous-type, la VA d'écriture et la limitation**. Ces valeurs ne doivent pas être confondues avec les 113 grands sélecteurs `[OPERAND+0x10]` ; les deux champs sont différents.

## 2. `if` : trois branches et gestion des erreurs [CONFIRMÉ]

À `0x40E8C1–0x40E8DF`, après reconnaissance de `if`, le parseur alloue une structure de 64 octets et trois sous-structures de 32 octets puis les référence par `[OPERAND+0x14/+0x18/+0x1C]`. Il fixe le sous-type **2** à `0x40EAB8`. Le bloc `0x40EAFB–0x40ED35` cherche un opérateur de comparaison et les séparateurs `?` et `:`, construit des sous-expressions et **appelle récursivement** `BoostFormula::ParseFormula`.

La table de classification près de `0x40F184` est **une donnée embarquée dans `.text`**, mais elle n'est **pas** une suite d'instructions exécutées et est exclue de la couverture. Le contrat et les diagnostics sont détaillés dans `06_GRAMMAIRE_CONDITIONNELLE_IF.md` et `07_MESSAGES_ERREUR_PARSEUR_WDA.tsv`.

## 3. Les sous-types sont stockés dans le nœud, pas résolus par magie [CONFIRMÉ et LIMITE]

`var` écrit **11** à `0x40E5FE` et traite une chaîne placée entre parenthèses, avec une erreur explicite si la parenthèse fermante manque. Les variantes `skill` et `spell`, normales/true et self/target, choisissent des branches réutilisées avant de construire un enfant. Nous **n'attribuons aucune valeur numérique aux arguments** ni une validité de syntaxe non démontrée sur fichiers authentiques. Les erreurs remontent au parseur par des appels à `0x471D40` et par un état local.

## 4. Arbres associatifs [CONFIRMÉ sur les pointeurs, lien non démontré]

La fonction interne `0x40F300` crée des nœuds d'environ **0x30 octets**, insère dans un arbre muni de liens parent/enfants, met à jour le compteur `[conteneur+0x8]` et effectue recolorations et rotations (marqueur `noeud+0x28`). `0x40F5E0` recherche un autre nœud par chaînage et sentinelle `+0x29`. Ceci est distinct du helper de **recherche** `0x40F230` documenté à la passe 53. La similarité du contrat n'autorise pas à supposer sans preuve quel sous-type WDA insère dans cet arbre.

## 5. Couverture et limites

- **952 instructions** dans les preuves de la passe 54, **0 rejet**, **2800 nouveaux octets non redondants**.
- Mesure brute recomptée : **120518/905117 = 13.315 %**.
- Série prudente conservant l'écart historique de **91 octets** : **120427/905117 = 13.305 %**.
- Entrées exportées couvertes en recomptage indépendant : **259/1125**.

**INCONNU :** tolérance exacte aux constructions incorrectes, sûreté sur allocation nulle, représentation métier de tous les codes de comparaison, validité sur vrais fichiers WDA et sens complet de `var` au sein des conditions de jeu. Les chaînes de données et tables de saut ne sont pas comptées comme code.
