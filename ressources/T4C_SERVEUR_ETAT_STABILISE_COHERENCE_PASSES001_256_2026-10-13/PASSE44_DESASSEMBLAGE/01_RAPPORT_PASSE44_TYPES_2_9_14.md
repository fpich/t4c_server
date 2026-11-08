# Passe 44 — Exécution des types d’effets 2, 9 et 14

## 1. Objet de la passe

Poursuivre les validateurs identifiés dans les passes 42–43 vers **leurs effets runtime**. Les adresses ci-dessous sont des VA x86 du PE serveur ; les noms `Unit::*` proviennent directement de la table d'exports MSVC et les cibles virtuelles de `.rdata`. Les fichiers WDA effectifs ne sont pas disponibles : les règles décrites sont conditionnelles à l'activation des branches observées.

## 2. Type WDA 2 : valeurs de stats, boosts et mana [CONFIRMÉ]

- La méthode d'application est `0x4C38B0` (table virtuelle de la fabrique type 2). Elle vérifie d'abord le pointeur de cible dans son troisième argument explicite (adresse `0x4C38CD–0x4C38D5`).
- **Cas spécial `this+0x0C == 0xF0` (`mana`)** : elle lit virtuellement `GetMana` (`+0xEC`), évalue une expression à `this+0x10` via `0x40C350`, convertit par `0x4D1D7A`, additionne, puis applique une borne basse **0** et une borne haute par `GetMaxMana` (`+0xE0`), avant d'appeler `SetMana` (`+0xF0`, argument final `1`). Les cibles virtuelles ont été vérifiées pour `Unit`, `Character`, `Creatures` et `Objects` ; certaines sont redéfinies dans les classes dérivées. Les méthodes virtuelles sont un contrat d'interface, pas la preuve d'une mana utilisable pour toute classe.
- **Autres codes de statistique** : le chemin retire un effet existant avec `Unit::RemoveEffect` (`0x48C930`) puis un boost avec `Unit::RemoveBoost` (`0x48DAF0`) à partir de `this+0x08`; il évalue des expressions et passe les résultats à `Unit::AddBoost` (`0x48D790`), lequel manipule une structure `_BOOST` et une liste interne. Ce chemin contient des cas particuliers pour `0x0B`, `0x19` et `0x1A`. Une notification `SpellEffect::CreateEffectStatus` suit certaines branches ; un objet `_UNIT_EFFECT` muni du callback `0x4C3B70` peut être créé et remis à `Unit::AddEffect`.
- Les noms de caractéristiques de la passe 43 concernent le **décodage** des paramètres. Leur mapping à des modifications de personnage passe par l'API `Unit`, pas par une simple écriture directe dans les champs du personnage.

## 3. Type 2 : cycle callback / booster [CONFIRMÉ]

`0x4C3B70` compare des codes d'événements internes et traite notamment `5`, `0x1B`, `0x17`, `0x18`, `9`. Dans plusieurs branches, il utilise `Unit::GetBoost` (`0x48DDC0`) et `SpellEffect::DispellEffectStatus` (`0x460980`). Le code `0x17` prépare des données exportables; le code `0x18` met en œuvre un chemin de rechargement/traitement depuis une donnée sérialisée. Ce callback n'est pas le validateur WDA et son code `5` ne doit pas être assimilé mécaniquement à la valeur `OnTimer` de tous les sorts.

## 4. Type WDA 9 : événement, échéance et callback [CONFIRMÉ]

Le validateur `0x4C75A0` de la passe 43 enregistre l'événement `On*` dans `this+0x0E`. La méthode d'application `0x4C7720` fabrique un enregistrement temporaire de 20 octets, stocke le code d'événement et l'identifiant, évalue les expressions et établit une échéance dépendante de `TFCMAIN::GetRound`.

- Pour l'événement **5 = `OnTimer`**, `0x4C77C7–0x4C780F` évalue `this+0x18`, multiplie le double obtenu par la constante **0,02** de `.rdata` à `0x4DFE20`, ajoute le compteur de rounds courant et convertit le résultat en entier.
- Pour les autres événements, `0x4C7811–0x4C7834` utilise un calcul entier à multiplicateur magique `0x51EB851F` et une addition à `GetRound` ; l'instruction de division implicite correspond à une réduction de l'ordre de `n/50` en arithmétique entière non signée, sous hypothèses de non-débordement. **Ne pas présenter ce résultat comme une conversion temporelle exacte vérifiée par exécution.** Le cas sentinelle `-1` évite de calculer une nouvelle échéance.
- Le callback `0x4C7990` traite des échéances, une possibilité de renouvellement via `Unit::AddEffect`, des notifications de dissipation et une sélection particulière sur les codes `5`, `0x1B`, `0x17`, `0x18`, `9`, `0x0D`. Les branches `0x17` / `0x18` constituent les chemins de sauvegarde/reprise, dont le format peut comporter des types d'enregistrements `0x10` et `0x14`.
- Le paquet 83 est produit par `SpellEffect::CreateEffectStatus`; le retrait est notifié par `SpellEffect::DispellEffectStatus`. Cela reste distinct d'une preuve d'ordonnancement déterministe des callbacks concurrents.

## 5. Type WDA 14 : une consommation d’exhaustion [CONFIRMÉ]

La méthode d'application `0x4C5980` commence par un tirage de `Random::operator()(1,100)` (`0x4590A0`). Elle compare ce résultat à une évaluation de l'expression WDA ID **4** (`this+0x160`), et peut abandonner la suite. Ce champ sert donc de **seuil de déclenchement** observé (interprétation probabiliste plausible, non validée sur WDA réel).

En cas de poursuite, les expressions ID **1** (`+0x80`), ID **2** (`+0x10`) et ID **3** (`+0xF0`) sont évaluées via `0x40C350` puis converties par `0x4D1D7A`. À `0x4C5A7F`, la routine appelle `[vptr+0x78]` sur la cible. La résolution des vtables des classes `Unit`, `Character`, `Creatures` et `Objects` démontre la même destination exportée **`Unit::DealExhaust` (`0x48F6A0`)**. Ces **trois entiers** sont les arguments de cette méthode.

`Unit::DealExhaust` appelle virtuellement `GetExhaust` (`+0x70`) et `SetExhaust` (`+0x74`), chacun spécialisé éventuellement par la classe. Entre les deux, il consulte `GetRound` et reprogramme jusqu'à trois champs d'échéance au moyen de multiplications/divisions optimisées par `0x51EB851F`; cela actualise une structure `_EXHAUST` de 16 octets. Ensuite le type 14 transmet une notification `SpellEffect::CreateEffectStatus`.

**Correction du niveau de compréhension** : la passe 43 ne connaissait qu'une « méthode virtuelle non résolue » pour les quatre expressions du type 14. L'action est maintenant nommée de façon reproductible, avec ses méthodes dépendantes des classes.

## 6. Structure commune et garanties [CONFIRMÉ / LIMITÉ]

Les types 2, 9 et 14 utilisent le parseur partagé des expressions (`0x409900`) et son évaluateur (`0x40C350`), mais produisent des effets très différents : **modification mana/boosts**, **déclencheurs et timers**, **exhaustion**. La couverture mesurée correspond uniquement aux octets x86 explicitement cités, et non au taux de compréhension des comportements du serveur.

Risques non prouvés : débordement d'entiers sur échéances, identifiants de boost répétés, comportement lors d'allocations échouées, logique complète de paramètres WDA, effets réseau côté client et sécurité en concurrence.
