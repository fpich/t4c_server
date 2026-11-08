# Passe 35 — Enregistrement des effets et mécanismes concrets de callbacks

## Périmètre et niveaux de preuve

Binaire : `T4C Server(1).exe` SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Vérification octet par octet des instructions depuis `.text`; les noms `UnitEffectManager` et `Unit` sont issus des exports déjà indexés. Cette passe conserve les **243** documents historiques de la passe 34 sans modification. Pas de code de serveur Python.

## 1. Huit sites directs d'enregistrement [CONFIRMÉ]

Les appels directs à `UnitEffectManager::RegisterEffect` (`0x490B10`) sont localisés à : `0x4BD93A`, `0x4C2D3A`, `0x4C3EE8`, `0x4C46B8`, `0x4C4F58`, `0x4C5F18`, `0x4C6FF8`, `0x4C7938`.

Deux sites passent des clés constantes **17** (`0x11`, callback `0x4BD970`) et **1** (callback `0x4C2E60`). Six sites passent une clé lue depuis l'offset **`+0x3AC` d'une structure en argument**, avec les callbacks `0x4C3B70`, `0x4C43C0`, `0x4C4C60`, `0x4C5C90`, `0x4C6BE0` et `0x4C7990`. Le sens métier de cette clé n'est pas prouvé. Il s'agit de **huit sites d'appel direct retrouvés**, pas du nombre total possible d'effets à l'exécution.

`UnitEffectManager::RegisterEffect` alloue un enregistrement de huit octets, avec code et pointeur de fonction, puis le place dans la structure globale à `0x556400`. Le chemin complet des doublons n'est pas résolu.

## 2. Les codes de callback ne sont pas universels [CONFIRMÉ]

Les six callbacks dynamiques comparent notamment l'argument événementiel 16 bits à `5`, `0x1B` (27), `0x17` (23), `0x18` (24) et `9`. Le callback `0x4C7990` traite également `0x0D` (13). La famille enregistrée avec le code 1 (`0x4C2E60`) distingue un événement **2**; le callback de la clé 17 (`0x4BD970`) transmet une constante **`0x4E4D`** à une méthode virtuelle. Il est donc erroné d'assimiler tous les appels à une expiration fondée sur le code 5.

## 3. Expiration, désaffichage et suppression : opérations distinctes [CONFIRMÉ]

- Le callback `0x4C5C90` notifie un retrait visuel via `SpellEffect::DispellEffectStatus` (`0x460980`) dans ses chemins `5` et `0x1B`; dans ce dernier, il appelle en plus `Unit::RemoveEffect` (`0x48C930`).
- D'autres callbacks dynamiques associent des notifications S2C 84, des opérations sur les boosts, et des modifications de la liste des effets. Leur sémantique métier dépend des branches.
- Le callback `0x4C7990`, événement `5`, compare un champ de round à `TFCMAIN::GetRound`. Sur une branche il alloue une nouvelle entrée, calcule une échéance, puis appelle `Unit::AddEffect` (`0x48C810`). Sur une autre, il notifie la disparition (`0x460980`). Il peut donc **réinscrire un effet**, et pas seulement le détruire.
- Le même callback distingue `9` (libération), `0x0D` (suppression et notification) et un chemin de repli qui appelle `SpellMessageHandler::ActivateSpell` (`0x461560`). La destination de chaque événement est documentée sans extrapolation à tous les effets.

## 4. Graphe partiel utile à la reconstitution [CONFIRMÉ / PARTIEL]

Enregistrement `RegisterEffect(code, callback)` → chargement/stockage d'une unité → événements émis par `Unit::VerifyTimers` ou `SendGlobalEffectMessage` → callback propre à la famille → éventuellement `GetRound`, `AddEffect`, `RemoveEffect`, `DispellEffectStatus` ou `ActivateSpell`.

Ce graphe est **partiel** : l'association précise entre les six codes lus en mémoire et les définitions externes de sorts, les conditions de cumul, ainsi que les risques de mutation de liste en cours de parcours nécessitent davantage de désassemblage.

## 5. Couverture recomptée

- Passe 34 : **56,987 / 905,117**, soit **6.296 %**.
- Octets uniques ajoutés : **6,418**.
- Passe 35 : **63,405 / 905,117**, soit **7.005 %**.
- Exports avec entrée incluse dans les preuves : **158 / 1125**, contre 158 à la passe 34.
- Instructions nouvelles vérifiées dans les trois fichiers : **2,436**; aucun rejet.

Il s'agit de couverture **documentaire en octets**, non de couverture d'exécution ni de compréhension exhaustive.

## 6. Prochaines investigations

1. Retrouver le moment d'exécution de chacun des six constructeurs dynamiques et la provenance exacte de la valeur `+0x3AC`.
2. Distinguer les callbacks qui modifient le conteneur `Unit+0xF4` en cours de parcours et vérifier les garanties d'itération.
3. Relier les codes d'événements 5, 9, 0x17, 0x18, 0x1B, 0x0D aux structures transmises et à la persistance des effets.
4. Conserver la distinction entre **échéance/round**, **notification client**, **libération mémoire**, et **suppression de l'effet**.
