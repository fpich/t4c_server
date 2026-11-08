# T4C Server — Passe 33 : relations timers, événements et horloge

## Périmètre

Analyse statique du même serveur PE32 : SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Aucune exécution du programme ni implémentation Python. Les lignes assembleur des trois fichiers de preuve sont comparées aux octets dans la section `.text`. Les **223 documents historiques** restent intacts.

## 1. Chaîne d'appels confirmée

Les appels directs à `Unit::VerifyTimers` (`0x48D330`) sont retrouvés aux huit sites suivants : `0x443282`, `0x44CCB9`, `0x44CE09`, `0x44CF59`, `0x44D0A9`, `0x44D1D5`, `0x44E0BE`, `0x452C44`. Leur provenance est consignée dans `06_CARTOGRAPHIE_APPELS_TIMERS.tsv`.

- **Circuit des objets suivis globalement :** `BeforeNPCThread` appelle `ObjectTimer::VerifyTimers` à `0x444DD7`. `ObjectTimer::VerifyTimers` (`0x44E040`) parcourt les unités présentes dans une liste globale et appelle `Unit::VerifyTimers` pour chacune à `0x44E0BE`.
- **Circuit d'entretien des personnages :** `CPlayerManager::PlayerMaintenance` (`0x452870`) vérifie les timers de l'unité attachée à la session (appel `0x452C44`), dans un chemin précédé par une vérification d'état.
- **Circuits événementiels :** cinq méthodes `ObjectStructure` appellent directement `Unit::VerifyTimers` dans les chemins `OnAttack`, `OnAttacked`, `OnHit`, `OnAttackHit` et `OnDisturbed`. Il s'agit de sites d'appel distincts ; aucune fréquence globale unique ne peut leur être attribuée.
- **Autre appel :** `BeforeNPCThread` appelle aussi `Unit::VerifyTimers` à `0x443282` dans un parcours conditionnel.

## 2. Inscription à la liste globale

`ObjectTimer::AddObject` (`0x44DC10`) consulte un code de classe/type via `Unit::GetType` (cible `0x48B670`), compare la valeur à **3**, puis effectue une recherche d'appartenance avant un chemin d'insertion (`0x44E2C0`). Cette information ne suffit pas à nommer exactement le type 3 ni à garantir que toutes les unités/effets y figurent.

Le conteneur global et la liste locale des effets (`Unit+0xF4`, documentée lors de la stabilisation) ne sont pas la même structure.

## 3. Horloge logique

- `TFCMAIN::StartBeat` (`0x472250`) prépare le démarrage d'un thread avec point d'entrée `0x4721F0`, et règle une priorité Windows.
- Le worker demande `Sleep(0x32)` soit **50 ms** à `0x472200`, puis met à jour le compteur global `0x515E88`, observé par `TFCMAIN::GetRound` à `0x472290`.
- La boucle inclut une correction calculée à intervalles de 20 itérations et la publication via `InterlockedExchange` (import `0x4DE0B4`). Le compteur est donc **visé** par une cadence issue des 50 ms de sommeil, avec recalage, pas une horloge strictement garantie de 20 rounds/s.
- Dans `PlayerMaintenance`, un autre chemin compare une échéance stockée à `GetRound`, puis recalcule une borne à `GetRound + 0x28` (40 rounds), ce qui ne prouve pas la durée des effets magiques ni celle du callback `VerifyTimers`.

## 4. Relation avec la passe stabilisée

La fonction `Unit::VerifyTimers` compare des échéances à `GetRound` ; dans un chemin documenté, les callbacks 5 puis 9 sont invoqués. Les **nouveaux** sites d'appel prouvent les occasions de vérification, **pas** leur sémantique métier ni leur fréquence exacte.

Les événements `OnAttack` / `OnHit` ne prouvent pas qu'un effet se termine lors de chaque attaque : chaque `VerifyTimers` conserve ses propres conditions d'échéance, de présence et de callback.

## 5. Limites et prochaines études

- Démontrer les conditions de l'entrée type 3 dans la liste globale et la sémantique des callbacks 5 et 9.
- Identifier la routine exacte exécutée au travers du pointeur `[entrée+0x08]` et le contrat de ses paramètres.
- Vérifier dynamiquement la cadence du round et les latences d'ordonnancement avant de prescrire une durée en secondes.
- Déterminer si les parcours globaux et les callbacks peuvent modifier les conteneurs pendant leur itération.

## 6. Couverture recalculée

| Mesure | Avant | Après |
|---|---:|---:|
| Octets `.text` vérifiés | 48,321 | **52,789** |
| Pourcentage | 5.339 % | **5.832 %** |
| Points d'entrée exportés documentés | 128 / 1125 | **142 / 1125** |

Contribution nette : **4,468 octets**, une fois les chevauchements dédupliqués. Ce taux mesure seulement des **octets correctement reproduits et vérifiés** ; il ne mesure ni la couverture des branches ni une complétude fonctionnelle.
