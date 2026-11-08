# Passe 45 — Mise à jour de la compréhension des boosts et de l'exhaustion

## A. Règles de cumul des boosts [CONFIRMÉ]

- `Unit` conserve le pointeur vers une collection de boosts à **`this+0xF8`**. Les entrées allouées font **`0x78 = 120 octets`** : identifiant DWORD à `+0`, code de caractéristique WORD à `+4`, instance de formule à `+8`. Les maillons de liste, distincts des entrées, sont gérés par des helpers propres à la collection.
- `Unit::AddBoost(unsigned id, short stat, char* formula)` (`0x48D980`) construit une nouvelle entrée, vérifie la formule avec `BoostFormula::SetFormula` (`0x409900`) et l'insère si la validation réussit. La routine ne recherche pas les identifiants préexistants avant cette insertion. L'autre surcharge `Unit::AddBoost(unsigned,short,short)` (`0x48D790`, étudiée en passe 44) produit également un enregistrement, sauf valeur nulle dans le chemin observé. **On ne peut pas en conclure une unicité globale de `BoostID` en mémoire.**
- `Unit::SetBoost(unsigned id, short stat, int value)` (`0x48DF30`) parcourt les entrées et compare le DWORD d'identifiant avec l'argument à `0x48DFAD–0x48DFB2`. Quand il trouve la première correspondance, il réinitialise la formule de **cette entrée** via `0x409900` et cesse de chercher. Si rien ne correspond et si la valeur entière fournie n'est pas nulle, il alloue une nouvelle entrée. Dans la branche de remplacement observée, le code `Stat` de l'entrée existante n'est pas réécrit : attention aux divergences entre ID et stat fournie.
- `Unit::GetBoost` (`0x48DDC0`) recherche par **ID**, tandis que `Unit::QueryBoost` (`0x48DE60`) recherche par **stat** (WORD à `+4`) et additionne en double les résultats successifs de `BoostFormula::GetBoost` (`0x40C350`). Le cumul est donc **additif par caractéristique**, puis converti en entier par `0x4D1D7A`. Les collisions de `BoostID` restent distinctes du cumul des contributions.
- `Unit::RemoveBoost(id)` (`0x48DAF0`) et `Unit::RemoveBoostFromStat(stat)` (`0x48DC60`) ont des critères distincts. La deuxième recommence le parcours après retrait et peut supprimer plusieurs entrées correspondant à la même caractéristique. Des appels virtuels protègent la séquence de mutation du conteneur, sans démontrer une sûreté globale contre les autres threads.
- Les rejets de formules sont accompagnés de chaînes de diagnostic `Unit::AddBoost2`, `Unit::AddBoost3` ou `Unit::SetBoost`; l'existence d'un log ne prouve pas que chaque cas invalide provoque une erreur visible au joueur.

## B. Caractéristiques de base et effectives [CONFIRMÉ]

- `Unit::GetSTR` (`0x48E150`), `GetINT` (`0x48E170`), `GetEND` (`0x48E190`), `GetAGI` (`0x48E1B0`) ainsi que `GetWIS`, `GetATTACK`, `GetDODGE` lisent un champ de base WORD puis appellent `QueryBoost` avec le code correspondant : **valeur effective = base + somme des boosts**, avec une borne basse à zéro selon le chemin visible (opérations `sets`, `dec` et `and`). La gestion des débordements arithmétiques sur les entiers 32 bits n'est pas entièrement prouvée.
- `GetTrue*` (`0x48E230` et suivants) retourne directement les WORD sans appel à `QueryBoost`; `Set*` les modifie par écriture WORD. Les sept correspondances chiffrées figurent au tableau 08.
- `Character::PacketStatus` (`0x41F5A0`) sérialise plusieurs champs de la cible, dont les valeurs de statistiques via des appels aux getters à `0x48E150`, `0x48E170`, `0x48E190` et `0x48E1B0`. La présence d'un getter dans le paquet ne garantit **pas** l'envoi immédiat du paquet lors de chaque changement de boost. La fréquence de diffusion et la mise à jour UI restent à vérifier.

## C. Persistance SQL : `Boosts` [CONFIRMÉ]

- La chaîne brute retrouvée à `0x50E0F8` : `INSERT INTO Boosts(OwnerID,BaseOwnerID,BoostID,Stat,Boost) VALUES ( %d,%d,%d,%d,'%s' )`. `Unit::SaveBoosts` (`0x48EEB0`) parcourt la collection et prépare une chaîne SQL par entrée dans la liste des requêtes à exécuter.
- La chaîne à `0x50E150` : `SELECT BoostID, Stat, Boost FROM Boosts WHERE OwnerID=%d AND BaseOwnerID=%d`. `Unit::LoadBoosts` (`0x48F070`) vide la collection préexistante, fait une requête puis extrait les colonnes **1, 2 et 3** à travers les helpers ODBC avant une insertion dans sa collection. Les appels `0x44ED80`, `0x44ED60`, `0x44EF10`, `0x44EFF0`, `0x44F120` ont des contrats partiels. `0x48FF80` est un helper de liste qui matérialise l'insertion et copie un enregistrement.
- Nous n'avons pas les lignes SQL réelles ni la preuve qu'un enregistrement en doublon est empêché par des contraintes de base. Également, l'enregistrement peut être préparé sans que son COMMIT soit garanti par cette seule routine.

## D. Exhaustion : méthodes virtuelles différentes selon la classe [CONFIRMÉ]

| Classe dynamique | GetExhaust | SetExhaust | stockage struct 16 octets |
|---|---|---|---|
| `Character` | `0x41DAD0` | `0x41DB00` | `this+0x17C` |
| `Creatures` | `0x432990` | `0x4329C0` | `this+0x124` |
| `Unit` | `0x48B9C0` | `0x48B9F0` | aucun : lecture à zéro, écriture sans effet |
| `Objects` | méthodes héritées de `Unit` | héritée | aucun dans ce chemin virtuel |

Les getters de `Character` et `Creatures` recopient successivement quatre DWORD depuis le champ de l'objet vers le buffer de résultat ; les setters réalisent les quatre écritures inverses. Le `GetExhaust` de base initialise le buffer à quatre zéros et le setter de base ne modifie aucun champ (`ret 0x10`). La même destination `Unit::DealExhaust` est utilisée par les quatre classes, mais **son résultat persistant dépend des deux méthodes virtuelles**. Il serait faux d'inférer que l'exhaustion modifie toujours un objet ou une unité de base.

`Unit::DealExhaust` (`0x48F6A0`, déjà documenté en passe 44) lit l'état, recalcule des échéances à partir de `GetRound`, puis demande sa réécriture. `Character::TraceExhaust` à `0x412420` ne contient qu'une instruction `ret` dans ce binaire — aucune trace additionnelle n'est effectuée par cette fonction.

## E. Contrats consolidés et limites

**CONFIRMÉ** : sommes des formules par stat, recherche par identifiant pour les remplacements, SQL `Boosts`, trois politiques virtuelles d'exhaustion, champs 16 octets en mémoire pour les deux classes dérivées.

**INFÉRÉ** : la combinaison `Get... -> PacketStatus` explique comment une valeur boostée peut parvenir au client. Aucune connexion temporelle directe ne garantit que l'application d'un boost produit aussitôt un paquet statut.

**NON DÉMONTRÉ** : contraintes SQL sur `BoostID`, résolution en présence de plusieurs identifiants identiques lors d'un chargement, propriétés en multithreading, comportement des fonctions MFC non identifiées, valeurs WDA, arrondi de l'évaluateur et réémission réseau après chaque mutation.
