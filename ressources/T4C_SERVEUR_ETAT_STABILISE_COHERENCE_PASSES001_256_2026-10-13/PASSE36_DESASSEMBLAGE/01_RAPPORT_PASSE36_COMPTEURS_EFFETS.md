# Passe 36 — Provenance des identifiants des effets et liaison au chargement des sorts

## Périmètre et vérification

Binaire serveur : `T4C Server(1).exe` (SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`). Analyse **statique**, sans exécution. Preuves objdump x86 comparées octet par octet à `.text`. Les 253 documents de la passe 35 sont conservés sans modification. **Aucun artefact de développement du serveur Python.**

## 1. Provenance précise de `+0x3AC` [CONFIRMÉ]

Dans le traitement des définitions à `0x473610`, l'entrée est obtenue en parcourant un conteneur source puis en allouant un objet de **0x418 octets** à `0x47364F`. Après initialisation des sous-objets, le traitement prend la **valeur 16 bits** de `[esi+0x24]` pour alimenter `[ebx]` à `0x473729`. Plus loin, l'instruction `mov eax,[esi+0x24]` à `0x473878` lit **32 bits** à ce même offset, puis les opérations `lea eax,[eax+eax*4]` répétées trois fois et `shl eax,3` multiplient cette valeur par **5×5×5×8 = 1000**. À `0x473887`, le résultat est stocké dans `[ebx+0x3AC]`.

**Correction par rapport à la passe 35 :** le champ `+0x3AC` n'est plus d'origine inconnue. Il est initialisé à partir d'une valeur de la définition de sort. Cependant, **les 32 bits de la source ne doivent pas être assimilés aveuglément au champ 16 bits** copié dans l'identifiant principal : des bits hauts peuvent intervenir et leur rôle reste à confirmer. Les règles d'overflow arithmétique (32 bits), de réinitialisation et de collision restent non étudiées.

## 2. Les six constructeurs d'effets consomment et incrémentent ce compteur [CONFIRMÉ]

Six constructeurs différents lisent `[definition+0x3AC]`, recopient cette valeur à l'offset `+0x08` d'un nouvel objet et **incrémentent** ensuite `+0x3AC`. Sites : `0x4C3F16`, `0x4C46E6`, `0x4C4F86`, `0x4C5F46`, `0x4C7026`, `0x4C7966`. Le comportement correspond à une **allocation de valeurs d'identification successives pour les effets d'une définition donnée**. Les sites d'enregistrement des callbacks correspondants se trouvent dans la passe 35.

L'attribution n'est pas prouvée globalement unique sur tout le serveur, ni thread-safe. Les deux niveaux d'identifiants (clé de procédure d'effet et identifiant de chaque instance) sont distincts ; `UnitEffectManager::RegisterEffect` reçoit un code de procédure et une adresse callback, alors que les constructeurs créent aussi un identifiant de suivi de l'objet d'effet.

## 3. Chaîne de chargement et publication du sort [CONFIRMÉ]

Le code appelant `0x475DDF` exécute la routine de préparation `0x473610`. Celle-ci alloue une structure de définition, copie l'identifiant, prépare les valeurs et certaines sous-structures, puis appelle `SpellMessageHandler::RegisterSpell` à `0x473BD0`. Les instructions montrent le passage du **WORD `[ebx]`** et du pointeur vers la définition. Le registre `SpellMessageHandler` ne doit pas être confondu avec le registre `UnitEffectManager` des callbacks.

Les six callbacks spécifiques sont instanciés via des fonctions de création enregistrées par `SpellEffectManager::RegisterSuperstructure` (`0x460BD0`), mécanisme distinct qui sélectionne la famille concrète de l'objet.

## 4. Modification des listes et callbacks [CONFIRMÉ/PARTIEL]

`Unit::AddEffect` (`0x48C810`) attache l'entrée à la liste conservée à l'offset `Unit+0xF4`. `Unit::RemoveEffect` (`0x48C930`) cherche un identifiant et suit différents chemins de retrait. `Unit::SendGlobalEffectMessage` (`0x48CF40`) parcourt les effets et transmet un code événementiel. Les callbacks documentés à la passe 35 peuvent provoquer `AddEffect`, `RemoveEffect`, notifications et d'autres traitements. **La sécurité de l'itération lors des mutations et la synchronisation entre threads ne sont pas prouvées** par ces seules séquences.

## 5. Mesures vérifiées

- Avant passe 36 : **63,405** octets documentés sur **905,117** (**7.005 %**).
- Apport non redondant passe 36 : **3,131** octets.
- Après passe 36 : **66,536 / 905,117**, soit **7.351 %**.
- Nouvelles lignes d'instructions vérifiées : **1,603**, **zéro** rejet.
- Entrées exportées documentées : **160 / 1125**, auparavant **158**.

Ce sont des **octets de preuves documentaires validées**, non des tests d'exécution ou une mesure de compréhension exhaustive.

## 6. Prochaine analyse recommandée

1. Déterminer précisément le type et la provenance des 32 bits à `source+0x24`, notamment les bits hauts et le risque de chevauchement des plages d'identifiants.
2. Étudier les règles de doublons et de remplacement de `UnitEffectManager` et `SpellEffectManager`, ainsi que leurs durées de vie.
3. Reconstruire les parcours de liste après modification dans un callback, en distinguant réentrance, invalidation d'itérateur et verrouillage.
4. Conserver le lien avec le chargement SQL et le cycle de sauvegarde, sans inférer de règles de gameplay absentes des preuves.
