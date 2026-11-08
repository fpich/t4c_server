# Passe 68 — États d'exception 6 à 11, conteneurs temporaires et couverture

## Périmètre

Binaire PE original `T4C Server(2).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`, section `.text` 0x00401000–0x004DDF9D (905 117 octets). Désassemblage statique x86, comparé instruction par instruction aux octets du PE. Code documenté exclusivement ; aucun exécutable reconstruit.

## Résultat du décodage des états 6–11

La table C++ identifiée en passe 67 à `0x4E6A30` contient les 12 entrées. Pour les états 6–11, les fonclets 0x4D77AB à 0x4D77E3 et les objets passés dans `ECX` sont vérifiés directement dans le PE :

| État | Vers | Adresse fonclet | Objet local | Routine appelée | Nature démontrée |
|---|---:|---|---|---|---|
| 6 | 5 | 0x4D77AB | [EBP-0x1C] | 0x45DC10 | Liste : suppression des nœuds, libération sentinelle, mise à zéro |
| 7 | 6 | 0x4D77B3 | [EBP-0xC4] | import 0x4DE4F0 | Destructeur `std::basic_string<char>` |
| 8 | 7 | 0x4D77BF | [EBP-0x94] | import 0x4DE4F0 | Destructeur `std::basic_string<char>` |
| 9 | 6 | 0x4D77CB | [EBP-0xA4] | import 0x4DE4F0 | Destructeur `std::basic_string<char>` |
| 10 | 9 | 0x4D77D7 | [EBP-0xB4] | import 0x4DE4F0 | Destructeur `std::basic_string<char>` |
| 11 | 6 | 0x4D77E3 | [EBP-0x28] | 0x45E1D0 | Liste de nœuds ayant un élément chaîne nettoyé via `_Tidy(1)` à 0x4DE514 |

Le slot IAT 0x4DE4F0 est importé depuis le runtime C++ avec le symbole manglé `??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ`. 0x4DE514 correspond à la méthode `_Tidy(bool)` de la même chaîne. Ce sont les noms du répertoire d'imports PE, non des noms inventés.

Le code attribue l'état 6 à 0x45CB44 après la construction du conteneur `[EBP-0x1C]`. Il attribue 7/8 autour de 0x45CB96/0x45CBA1, puis revient à 7/6 à 0x45CBB9/0x45CBCB. Les états 9/10 suivent à 0x45CC42/0x45CC4D, retour 9/6 à 0x45CC65/0x45CC77. L'état 11 est posé à 0x45CCAB après `0x42DD90` et avant l'appel `0x45E240`, et redevient 6 à 0x45CCC9.

## Sémantique mémoire vérifiée

- `0x45DC10` parcourt une liste doublement chaînée, appelle `0x442060` pour chaque nœud et la sentinelle, puis met `[ECX+4]` et `[ECX+8]` à zéro. La construction de la liste à `[EBP-0x1C]` passe par `0x45E4D0`, dont le code alloue 12 octets pour la sentinelle et initialise les pointeurs.
- `0x45E1D0` parcourt une structure semblable à une liste et appelle, pour les éléments, la méthode importée `_Tidy(1)` sur le membre à l'offset +8, puis `0x442060` sur les nœuds et la sentinelle. Cela appuie fortement l'interprétation d'une liste de chaînes.
- `0x45D300` fabrique/copie une chaîne dans une structure locale à partir d'un champ source +0x14 ; le type chaîne est corroboré par les imports `std::basic_string` employés directement dans cette routine. Les chaînes temporaires sont relâchées par `_Tidy` lors des chemins normaux montrés, et par leur destructeur importé dans les fonclets.

## Construction du conteneur `var` et exceptions

La fonction `0x45C950` appelle le constructeur de l'arbre `[EBP-0x3C]`, `0x45E8A0`, à `0x45CB0D`. L'état 5 n'est installé qu'à `0x45CB1B`, après le retour de cet appel. Le constructeur alloue la sentinelle 0x30 octets à `0x45E8B7` via `0x441FF0`, puis réalise des écritures d'initialisation sans autre appel visible.

Ainsi, **une exception levée par l'allocateur avant le retour du constructeur ne passe pas par le fonclet de l'état 5**, puisque celui-ci n'est pas encore armé. Cela ne démontre **pas** une fuite : l'existence d'une ressource déjà obtenue avant l'échec et la sémantique de `0x441FF0` restent à étudier. Les autres temporaires des états inférieurs possèdent leurs propres nettoyages. L'unwind C++ ne couvre pas les interruptions sans déroulement de pile.

## Couverture exacte

| Indicateur | Valeur |
|---|---:|
| Référentiel passe 67 (masque réconcilié) | 128 236 octets |
| Instructions uniques examinées passe 68 | 428 |
| Lignes discordantes avec le PE | 0 |
| Nouveaux octets `.text` confirmés passe 68 | **423** |
| Couverture cumulée passe 68 | **128659 / 905 117 = 14.214626 %** |
| Plages contiguës nouvelles | 4 |

Le nouveau masque représente la différence exacte entre les octets concordants de nos extraits et l'union cumulée vérifiée passe 67. Les données `.rdata` (table d'unwind) sont exclues du numérateur. Le compteur reflète une vérification de bytes de code, pas une couverture exhaustive de blocs de base ou de chemins exécutables.

## Limites et suite

Analyse statique seulement : les fonctions de nettoyage ne garantissent pas le succès de leur allocation/libération pour tout état mémoire. Il reste à vérifier en détail la sémantique de `0x441FF0`, les autres niveaux de table SEH (états 0–4), et les branches qui ne posent pas les états attendus. Continuer l'étude du serveur original, sans inférer de comportement dynamique non observé.
