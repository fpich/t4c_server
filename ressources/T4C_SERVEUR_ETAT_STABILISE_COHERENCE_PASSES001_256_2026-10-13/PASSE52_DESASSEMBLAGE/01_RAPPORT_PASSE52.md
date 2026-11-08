# Passe 52 — Registre des opérandes contextuels du moteur WDA

## 1. Décodage statique de la grande table [CONFIRMÉ]

`BoostFormula::GetOperandValue` (`0x409C10`) utilise un aiguillage secondaire à `0x40A630` : index formé par le discriminateur d'opérande (`[esi+0x10] - 1`) et contrôlé par `cmp eax,0x70`. La table de **113 pointeurs 32 bits** commence à la VA `0x40C18C`. Elle contient **98 destinations distinctes**, dont **15 entrées vers le repli** à `0x40C085`. Cette table est une donnée du segment `.text`, pas une suite d'instructions : elle est conservée en TSV et ne contribue **pas** à la couverture de code.

La cartographie de chaque sélection, destination, clé de flag et appel direct figure dans `06_TABLE_113_OPERANDES_WDA.tsv`. Plusieurs familles sont seulement structurellement identifiées ; le TSV indique explicitement le degré de certitude.

## 2. Résistances et autres modificateurs via les formules [CONFIRMÉ]

Les branches `0x40AD01` et suivantes réalisent, après test de présence d'une unité et appel virtuel `ViewFlag` (`vtable+0xC`), `Unit::QueryBoost (0x48DE60)`, puis calculent `100 + ViewFlag(flag) + QueryBoost(boost)`. Parmi les couples prouvés :

- Air `0x4E3E` / boost 12 ; Feu `0x4E40` / 13 ; Eau `0x4E3F` / 14 ; Terre `0x4E41` / 15.
- Lumière `0x4E45` / 21 ; Ténèbres `0x4E46` / 22.

Ce schéma a été observé auparavant dans les getters `Unit::GetXResist` (passe 47). Son implantation dans les formules **explique pourquoi une lecture de résistance peut exister sans appel direct au getter**. Cela **ne prouve pas** l'application du résultat à chaque dégât magique, ni la présence de ces opérandes dans les vrais fichiers WDA.

On distingue les versions travaillant sur l'unité de `[ebp+0xC]` et sur celle de `[ebp+0x10]`. Il existe aussi des variantes `100 + ViewFlag` **sans** `QueryBoost`, dont les clés sont détaillées dans la preuve `04_...` et la table TSV. Il ne faut pas confondre ces variantes avec les valeurs boostées.

## 3. Caractéristiques : valeurs vraies, valeurs effectives et deux contextes [CONFIRMÉ]

D'autres branches appellent explicitement les getters exportés `Unit::GetINT`, `GetSTR`, `GetEND`, `GetWIS`, `GetAGI`, `GetATTACK`, `GetDODGE`. À partir de `0x40B4F9`, elles appellent des fonctions distinctes : `GetTrueINT` (`0x48E230`), `GetTrueSTR` (`0x48E250`), `GetTrueEND` (`0x48E240`), `GetTrueWIS` (`0x48E270`), `GetTrueAGI` (`0x48E260`), `GetTrueATTACK` (`0x48E280`) et `GetTrueDODGE` (`0x48E290`). La distinction de base/effectif est donc disponible comme opérandes dans les calculs WDA. Les résultats sont convertis vers x87 ; les chemins présentant un pointeur nul disposent de retours de repli séparés.

## 4. Compétences, états modifiés et parsing [CONFIRMÉ sur certaines branches]

La passe 51 documentait `GetSkill` virtuel `+0x170` et `QueryBoost(WORD(skill_id+10000))`. Les branches comparables `0x40A1D9` et `0x40A262` montrent que l'évaluateur peut soit remettre `USER_SKILL+0x4` à zéro, soit simplement lire ce champ et le retourner. **Cette différence de comportement, à elle seule, ne suffit pas à nommer chaque type d'opérande**.

La branche `0x40A55B` assemble un texte provenant du nœud, appelle le helper interne `0x40F230`, lit un résultat flottant, puis peut décrémenter l'octet pointé par un champ du contexte (sauf valeurs zéro et `0xFF`). Cette écriture constitue une autre preuve d'**effet secondaire conditionnel**, sans attribution métier définitive du compteur. Une autre branche appelle `Character::EquipCount(0x4223A0)`; l'emploi exact de l'inventaire dépend du contexte d'objet transmis.

## 5. Distance entre deux unités [CONFIRMÉ pour le calcul arithmétique]

La branche `0x40C09E` appelle le slot virtuel `+0x1C` sur **deux unités**, reçoit des structures dont elle lit deux entiers (`+0` et `+4`), puis calcule `sqrt((x1-x2)^2 + (y1-y2)^2)` via `imul`, `fild` et `fsqrt`. La cible précise du slot par classe et les conséquences de débordements d'entiers intermédiaires demandent encore un contrôle. Il s'agit d'une formule de distance compatible avec des coordonnées spatiales ; **la sémantique du slot reste à vérifier**.

## 6. Méthodologie et avancement [CONFIRMÉ pour les octets]

Quatre fichiers `.asm` nouveaux, 1610 instructions toutes comparées contre le PE. 4001 octets uniques nouveaux. Totaux : 108955 (brut indépendant) ou 108864 (continuité prudente). **La divergence historique de 91 octets et celle d'une entrée exportée sont exposées, pas corrigées silencieusement**. Aucun tirage de WDA réel, aucune DLL MFC authentifiée, aucune exécution dynamique.
