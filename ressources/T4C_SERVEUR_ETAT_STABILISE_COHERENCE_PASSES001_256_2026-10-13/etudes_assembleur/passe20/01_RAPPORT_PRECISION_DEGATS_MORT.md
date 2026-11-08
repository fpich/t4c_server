# Passe 20 — Combat : précision, dégâts naturels et chaîne de mort

**Binaire** : `T4C Server(1).exe` — SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`  
**Méthode** : désassemblage statique x86 du PE fourni, contrôle des VA contre les instructions et les tables virtuelles présentes dans le fichier. Aucune exécution du serveur original ni nouvelle fonctionnalité Python.

## A. Précision — `GAME_RULES::GetBlowPrecision` (`0x438620`)

**CONFIRMÉ par les instructions** : quatre appels à `0x4590A0` avec les arguments `1` et une borne calculée ; les résultats sont successivement additionnés / soustraits.

Pour les arguments nommés dans l'ordre du site d'appel (`0x4725B0–0x4725D5`) :

- premier : attaque de l'unité attaquante, ramenée à **1** si nulle dans `TFCMAIN::Attack` ;
- deuxième : esquive de la cible, ramenée à **1** si nulle ;
- troisième : agilité attaquante ;
- quatrième : agilité cible.

Schéma de calcul **observé** :

```text
GetBlowPrecision(attack, dodge, attackerAgi, targetAgi):
    attack = max(attack, 1)
    dodge  = max(dodge, 1)
    return roll(1, attack) - roll(1, dodge) \
         + roll(1, attackerAgi // 3) - roll(1, targetAgi // 3)
```

La division par 3 des deux agilités résulte de `mul 0xAAAAAAAB ; shr edx,1` (pour opérandes non signés). `0x4590A0` appelle le générateur interne `0x458FF0` en incrémentant la borne supérieure. Les bornes ci-dessus expriment **l'intention observable de l'appel** et ne constituent pas une preuve d'une distribution statistique uniforme ou du traitement de tous les cas limites (borne haute = 0, débordement 32 bits). La valeur retournée est un *score numérique pouvant être négatif*, pas directement une probabilité de toucher.

Dans `TFCMAIN::Attack`, une branche considère le score `<= 0` (`0x472608–0x4726B7`) et peut appeler `Broadcast::BCMiss` à `0x4726AF`; **ne pas assimiler toutes les attaques avec score nul à un miss systématique** car des tests de drapeaux précèdent l'appel.

## B. Dégâts naturels — `GAME_RULES::GetNaturalDamage` (`0x4386A0`)

**CONFIRMÉ** : la fonction branche sur `Unit::GetType` (`0x48B670`) et, pour le type `1`, sur `Character::RangedAttack` (`0x421620`). Les attributs sont obtenus via `Unit::GetSTR` (`0x48E150`) et `Unit::GetAGI` (`0x48E1B0`). Le calcul reconnaissable par les multiplications `0x66666667` / décalages donne les expressions suivantes pour valeurs d'attributs ordinaires, représentées avec une division entière :

| Cas observé | Contribution numérique reconstituée | Adresses |
|---|---|---|
| Unité de type 1 et `RangedAttack()` vrai | `max(0,(STR-20)//20) + max(0,(AGI-20)//10)` | `0x4386C0–0x43872F` |
| Autre type ou `RangedAttack()` faux | `max(0,(STR-20)//5)` | `0x438730–0x43876E` |

**Réserve** : l'étiquette « dégâts naturels » provient de l'export C++, mais ces nombres ne représentent pas les dégâts finaux subis par la cible. Les buffs, l'armure, les effets et les méthodes virtuelles sont pris en compte plus loin. Les comportements aux bornes extrêmes (valeurs 16 bits maximales, signe, overflow) ne sont pas validés par test dynamique.

Le site `Character::attack` (`0x41AF00`) appelle `GetNaturalDamage` à `0x41AF24`, ajoute le résultat converti en flottant à une valeur de la structure d'attaque (`0x41AF36–0x41AF40`), puis appelle `GetBlowPrecision` à `0x41AF74`. Cela confirme que **dégâts naturels et précision sont deux calculs distincts**.

## C. Méthodes virtuelles résolues à partir du PE

Le fichier `03_SLOTS_VIRTUELS_COMBAT.tsv` contient les pointeurs réellement lus dans les tables `Character` (`0x4DE68C`) et `Unit` (`0x4DF658`), corrélés aux exports MSVC. Les slots `+0x34`, `+0x38`, `+0x3C`, `+0x40`, `+0x184` sont directement pertinents pour `TFCMAIN::Attack` ; `+0x1D0` et `+0x1D8` concernent invisibilité et sa dissipation.

## D. Mort d'une créature — `Creatures::Death` (`0x4324B0`)

- Garde d'état `Unit+0xB0` avant traitement, puis pose cet octet à `1` (`0x4324DC–0x4324F6`).
- Récupération des coordonnées par slot `+0x1C` et du monde via `TFCMAIN::GetWorld` (`0x43256E–0x432589`).
- `WorldMap::remove_world_unit` à `0x4325B2`, directement relié au retrait de l'unité du monde.
- Boucle de recherche autour des coordonnées initiales, avec **huit cas directionnels** et tirages de `1` à `2` (chemin `0x432613–0x4326D3`).
- Vérifie l'occupation (`WorldMap::IsBlocking`, `0x4AF250`), peut demander une position alternative (`WorldMap::FindValidSpot`, `0x4B21A0`), et dépose l'unité concernée via `WorldMap::deposit_unit` (`0x4AF110`, appel `0x432756`). Une notification visuelle `Unit::BroadcastPopup` intervient ensuite (`0x43276D`).

**INCONNU** : l'identité et la provenance de tous les objets passés dans ce parcours, l'algorithme complet de distribution du butin, les conditions de XP. Le nom `Death` et un dépôt d'unité ne suffisent pas à établir que chaque dépôt est du loot. Les fonctions `Character::Death`, `GAME_RULES::DeathPenalties` et `Group::DistributeKillXP` sont identifiées mais non reconstruites ici.

## E. Niveau de reconstruction

Le protocole et les chemins étudiés gagnent en détail. L'estimation de reconstruction **fonctionnelle globale reste à 2–5 %** (échelle indicative peu fiable), car aucune équivalence en exécution du serveur original n'a été établie. Le développement Python est maintenu en pause, conformément à la priorité de désassemblage.

**Pièces jointes** : preuves assembleur extraites des VA, tables virtuelles, cartographie des branches et contrôles d'intégrité. Voir le registre d'incertitudes pour distinguer fait, interprétation et tâche restante.
