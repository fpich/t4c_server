# Passe 29 — Messages d'utilisation des objets, définitions statiques et consommation

## 1. Correspondance certaine des slots virtuels

La table virtuelle dynamique de `Unit` est à `0x4DF658`, celle de `Character` à `0x4DE68C`, celle de `Creatures` à `0x4DEBB0` et celle de `Objects` à `0x4DF1E0`. L'entrée `+0x24` pointe sur `Unit::SendUnitMessage` à `0x48B150` pour `Unit`, `Creatures` et `Objects`, ou sur `Character::SendUnitMessage` à `0x41DD60` pour `Character`.

L'entrée `+0x1C4` pointe sur `Unit::DeleteUnit` à `0x48AF10` pour ces quatre tables. Les usages de `+0x1C4` dans `Character::use_item` (passe 28) correspondent donc à la **libération conditionnelle de référence**, et non à une routine de récompense. Voir `04_TABLES_VIRTUELLES_PASSE29.tsv` et la preuve à `0x48AF7C`–`0x48AF8A`.

## 2. Aiguillage de `Unit::SendUnitMessage` (`0x48B150`)

La fonction vérifie la référence statique `+0x74` dans les limites `0..0xFFFF`, lit la table globale `0x5163F4 + (reference * 4)`, puis sélectionne une destination par la table de saut à `0x48B5F8` : index = code de message - 1, pour les codes de **1 à 28**.

- Code **3** → adresse `0x48B254` → slot `+0x08` de la définition statique. Si celle-ci est une `ObjectStructure` (vtable `0x4DEDF4`), ce slot cible **`ObjectStructure::OnDisturbed` (`0x44D0D0`)**.
- Code **4** → adresse `0x48B28E` → slot `+0x0C` ; avec une `ObjectStructure`, la cible est **`ObjectStructure::OnUse` (`0x44D2E0`)**.
- L'aiguillage contient aussi des chemins de retour sans envoi, des gardes contre la récursion via `+0xFC` et un comportement de repli si la référence statique est absente. Voir `03_MESSAGES_ET_METHODES_PASSE29.tsv` ; ne pas considérer les codes 1–28 comme une énumération complète de gameplay sans étudier chaque branche.

Ainsi, dans les branches d'utilisation d'objet observées à la passe 28, la séquence **code 3 puis code 4** est compatible avec « dérangement/notification » puis « utilisation » lorsqu'une `ObjectStructure` est réellement la définition référencée. La structure de référence pouvant varier, ceci est conditionnel au type concret.

## 3. Réactions d'`ObjectStructure` — activation de sorts

`ObjectStructure::OnDisturbed` et `ObjectStructure::OnUse` parcourent des structures internes attachées à la définition (dont un conteneur à `+0x1C0` et un autre lien à `+0x1E0`). Des comparaisons à `3` dans `OnDisturbed` (`0x44D146`) et à `4` dans `OnUse` (`0x44D350`) conditionnent le traitement d'entrées.

Dans les deux fonctions, un chemin appelle **`SpellMessageHandler::ActivateSpell` à `0x461560`** (`0x44D191` et `0x44D394`), ce qui confirme le lien entre le message interne et le système des sorts. Cela **ne démontre pas** que tous les objets activent un sort, ni que `Objects_ContainerGroups` est un tirage aléatoire d'objet lors de `OnUse`.

## 4. Quantités et libération des objets

- `Objects::GetQty` (`0x44C3F0`) lit l'entier 32 bits `this+0x104`.
- `Objects::Remove` (`0x44C4A0`) compare la quantité à la valeur demandée : dans un chemin, décrémente `+0x104` ; dans les autres, la remet à zéro. Le chemin dépend aussi de **`Objects::IsUnique`**, qui lit l'octet `this+0x108`.
- `Unit::DeleteUnit` (`0x48AF10`) décrémente un compteur `+0x5C` et ne suit la destruction de l'objet que lorsque ce compteur devient nul. Le nom de la méthode peut induire en erreur : il s'agit aussi de gestion des références.

La persistance SQL après retrait d'un objet du sac à dos n'a pas été reliée intégralement à ces méthodes dans cette passe.

## 5. Relation aux groupes de conteneurs

Les routines de groupes `0x4A5720`, `0x4A5790` et `0x4A5850`, identifiées aux passes 27–28, **ne figurent pas comme appels directs** dans les chemins de dispatch démontrés ci-dessus. Leurs liens éventuels avec des callbacks ou des sorts activés restent ouverts. Ne pas interpréter ces groupes comme une table de récompenses sans preuve supplémentaire.

## 6. Travaux suivants

1. Suivre `SpellMessageHandler::ActivateSpell` jusqu'aux effets liés à l'ouverture des conteneurs, sans présumer un tirage aléatoire.
2. Étudier les sous-structures `ObjectStructure +0x1C0/+0x1E0`, les identifiants, et les conditions de correspondance 3/4.
3. Retrouver les consommateurs des groupes `Objects_ContainerGroups`, en établissant des références directes à leurs fonctions internes.
4. Conserver comme mesure principale les **octets `.text` des preuves vérifiées**, complétée par une évaluation indépendante de compréhension.

**Sources :** binaire fourni, export table MSVC, octets `.text` dans `02_PREUVES_ASSEMBLEUR_PASSE29.asm`, données `.rdata` et table de saut décodées dans les TSV. Aucune source extérieure utilisée.
