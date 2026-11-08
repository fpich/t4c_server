# Passe 50 — Superstructure 1 : attaque, points de vie et dépôt d'objets

## 1. Deux voies d'exécution sous la même superstructure [CONFIRMÉ]

La fabrique enregistrée sous le type WDA **1** (vtable `0x4DFDCC`, fabrique `0x4C68E0`) conduit à une méthode d'exécution à `0x4C6780`. Après un test de chance (`0x4590A0`), une expression évaluée via `0x40C350` pilote le dispatch de `0x4C6871` vers `0x4C61A0`, ou de `0x4C687F` vers `0x4C64F0`. Le test est fondé sur les flags x87 : il convient de préserver la comparaison et la gestion des signes plutôt que de décréter une table « dégâts positifs/négatifs » universelle.

## 2. Voie offensive `0x4C61A0` [CONFIRMÉ]

- Filtre initial sur `Unit::GetUnderBlock` (`0x48F490`) et `Unit::GetType` (`0x48B670`), avec sortie anticipée dans un sous-cas.
- Appel `GAME_RULES::InPVP` (`0x438FE0`) à `0x4C6225`; d'autres vérifications x87 et sur le `+0x239` d'une structure déterminent l'exécution.
- Appel virtuel au **slot `+0x38`** de la cible à `0x4C628D`. Sur `Character`, `Creatures`, `Objects`, ce slot est respectivement `attacked` de leur classe.
- Appel virtuel au **slot `+0x3C`** à `0x4C6402`. Sur ces trois classes, il s'agit de `hit` ; ces implémentations ont déjà été étudiées dans les passes combat/mort.
- Une branche appelle `Broadcast::BCObjectChanged` (`0x40FB60`), une autre émet un paquet `0x45` et `PacketUnitInformation`, et la routine retourne le négatif de la valeur préparée.

**Interprétation encadrée :** cette voie relie réellement un effet de sort au **pipeline `attacked → hit`** et, via les passes 46–49, aux réactions et à la diminution possible des PV. Cela ne prouve **pas** le calcul final de toutes les résistances magiques : aucun appel direct à `Unit::GetFireResist` ou aux cinq autres getters n'est observé dans ce fragment.

## 3. Voie alternative `0x4C64F0` : points de vie [CONFIRMÉ]

À `0x4C652E`, la méthode appelle le **getter virtuel `GetHP` `+0xD8`**, après lecture/arrondi d'un résultat d'expression. Elle calcule une nouvelle valeur candidate, puis à `0x4C6681` appelle **`GetMaxHP` `+0xCC`**. Selon la comparaison, elle passe au **setter `SetHP` `+0xDC`** avec flag de notification `1`. Sur un personnage, ce setter aboutit à `Character::SetHP` (`0x41D6B0`, stockage `+0x13C`).

La routine assemble **`TFCPacket(0x21)`** contenant `GetHP`, `GetMaxHP` et un envoi via le slot `+0x14C` ; elle construit séparément **`TFCPacket(0x45)`**, alimente `PacketUnitInformation` par le slot `+0x1AC` et opère des notifications conditionnelles. Il peut y avoir recouvrement entre notifications directes et celles déclenchées par `Character::SetHP`. Ne pas affirmer une émission unique ou systématique par sort.

## 4. Dépôt des objets hors pénalités de mort [CONFIRMÉ]

`Character::DropUnit` (`0x417240`) réalise contrôles de distance/carte, de contenu et quantités, de protections et de positions bloquées. Des branches manipulent des instances `Objects`, appellent `Objects::Remove` et `Objects::Add`, et traitent des quantités fractionnées. L'appelant direct repéré à `0x47AA71` peut enchaîner vers `BroadcastPopup` après réussite. La chaîne de mort (`DeathPenalties`, dépôt et/ou création d'entités) est indépendante tant que les appels indirects ne sont pas résolus.

## 5. Conclusion et portée

Cette passe démontre un **chemin d'exécution magique vers le combat et les PV**, et non une simple validation WDA. La séparation des voies du type 1 permet d'étudier précisément les formules, les protections PvP et les réseaux dans une prochaine passe. La formule résistance élémentaire → dommages reste inconnue.
