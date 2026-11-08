# Passe 38 — Origine WDA des sorts, 14 fabriques, rechargement et réentrance

## Périmètre et niveau de preuve

Désassemblage **statique uniquement** de `T4C Server(1).exe` SHA256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Instructions citées comparées à la section `.text`, 905 117 octets. Les anciens fichiers sont conservés sans modification. Les découvertes sont étiquetées CONFIRMÉ / INFÉRÉ / INCONNU ; aucun développement Python du serveur.

## A — Origine des définitions : fichiers WDA et préparation des sorts [CONFIRMÉ]

Le bloc de démarrage `0x475A30` référence les noms **`T4C Worlds.WDA`** (`0x50A600`) et **`T4C Edit.WDA`** (`0x50A5F0`) : les messages littéraux d'ouverture en échec et de version erronée sont présents dans le PE, et les adresses sont utilisées par le parcours. Le code `0x475D94` référence la chaîne `- Charg. Spells` (`0x50A508`), puis `0x475DDF` appelle **directement `0x473610`**, la routine de préparation des définitions. Cette continuité conforte une provenance WDA de cette préparation ; elle ne démontre pas, à elle seule, l'emplacement physique précis de chaque champ ni le schéma sérialisé des WDA.

Cette précision est cruciale : la présence de SQL ailleurs dans le serveur ne justifie pas de traiter **cette** origine d'identifiants comme une colonne SQL. Les fichiers WDA ne sont pas fournis dans l'étude, il n'y a donc ni validation de leurs enregistrements réels ni interprétation exhaustive de leurs formats.

## B — Compteur `+0x3AC` et largeur [CONFIRMÉ / CONDITIONNEL]

À `0x473729`, `mov cx, WORD PTR [esi+0x24]` copie l'identifiant de **16 bits** dans `[definition+0x00]`. À `0x473878` le calcul repart de `mov eax, DWORD PTR [esi+0x24]` (**32 bits**), puis multiplie par 1 000 pour initialiser `[definition+0x3AC]` à `0x473887`. Les six fabriques déjà recensées à la passe 36 peuvent allouer des identifiants d'instance par incrément de ce compteur.

Conséquence arithmétique **conditionnelle** : avec un compteur 32 bits, la multiplication est modulo 2^32. Deux valeurs source séparées de **536 870 912** donnent la même base modulo 2^32, et deux définitions de numéros adjacents auraient des intervalles de mille valeurs **si** les six fabriques allouaient respectivement des blocs bornés de taille 1 000. Aucun site n'établit ici une borne de 1 000 allocations ; **ne pas déclarer les collisions effectives**. Le statut des 16 bits hauts du DWORD source demeure inconnu.

## C — Registre statique des fabriques : 14 clés distinctes [CONFIRMÉ]

L'examen de tous les appels directs `call 0x460BD0` trouvés dans le `.text` donne **14 sites**, chacun précédé d'un `push` de l'identifiant WORD puis d'un `push` de l'adresse de la fabrique. Les clés sont exactement **1, 2, 3, 6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17**, toutes différentes dans cet ensemble. La table `07_CARTOGRAPHIE_14_FABRIQUES.tsv` lie chaque clé, appel et fonction. Exemple : clé `7` à `0x4C7170` pointe vers `0x4C72D0`; ce code alloue **0x160 octets** et prépare une structure portant des sous-objets aux offsets +0x10, +0x80, +0xF0.

La passe 37 établit que la recherche `SpellEffectManager` exécute toute fabrique portant la clé. **Les 14 inscriptions directes répertoriées ne se collisionnent pas**; on ne peut conclure ni à l'absence d'enregistrement indirect, ni à l'absence d'effet multiple sur un identifiant reçu, ni à une couverture de toutes les familles disponibles dans les données externes.

## D — Rechargement différé et événement 0x18 [CONFIRMÉ]

La fonction exportée `Unit::DeferredLoadEffects` débute à `0x48E9F0`. Dans le bloc `0x48EA48` elle crée un enregistrement interne de **0x20 octets**, obtient le numéro de round via `GetRound` (`0x48EA51`) et construit l'échéance par addition à une valeur chargée. À `0x48EA86` l'identifiant de procédure est transmis à `UnitEffectManager::GetEffectProc`, et l'adresse retournée est stockée dans `[enregistrement+0x08]` (`0x48EA8B`). **Si ce callback est non nul**, `0x48EB2C` l'appelle avec le code **0x18** et les données reconstituées ; le traitement insère ensuite l'enregistrement dans `Unit+0xF4` via `0x490A20` (`0x48EBAB`). La branche sans callback trace un message (texte non décodé dans ce rapport).

Un `0x18` n'est donc pas simplement un numéro de sort : **dans ce chemin**, c'est un code transmis à la procédure d'effet lors de la reprise d'état. Cela complète les codes 5 et 9 observés pendant l'expiration, sans supposer un contrat universel de tous les callbacks. L'origine de l'échéance et sa signification exacte restent à clarifier.

## E — Réentrance : trois contextes de callbacks différents [CONFIRMÉ / INCONNU]

- `Unit::RemoveEffect` entre dans le verrou de l'unité à `0x48C944`, compare les identifiants des effets et peut invoquer leur callback avec code **9** à `0x48C9BD`. Le déverrouillage associé se situe à `0x48CAC1` : **l'appel se trouve dans la région protégée par ce verrou**.
- Le callback d'une famille `0x4C7990`, à l'événement **0x1B**, appelle lui-même `Unit::RemoveEffect` à `0x4C7AB2` ; c'est une **chaîne interne capable de réentrer dans un mécanisme de retrait**, mais le contexte effectif de l'appel initial et la nature réentrante du verrou ne sont pas démontrés.
- `Unit::SendGlobalEffectMessage` constitue une liste temporaire de pointeurs puis quitte le verrou avant d'appeler ses callbacks, tandis que `Unit::VerifyTimers` retire les effets échus de la liste principale avant d'appeler les codes **5 puis 9** et de libérer les objets.

**On ne peut pas conclure à un deadlock, une course ou un use-after-free effectivement observés.** Les régimes de verrouillage et de propriété diffèrent selon le chemin ; ceci reste une piste d'audit dynamique futur, pas une vulnérabilité affirmée.

## F — Résultat mesurable

Ancienne archive : **67,909 / 905,117 = 7.503 %**, 160 entrées exportées. Après ajout des preuves : **69,281 / 905,117 = 7.654 %**, gain **1,372 octets non redondants**; **1,071 lignes d'instructions validées dans cette passe**, 0 ligne rejetée; **160 / 1125 entrées exportées**. Les octets couverts ne mesurent PAS une proportion égale du comportement fonctionnel.

## Piste suivante

Traduire les chemins de lecture des enregistrements WDA en offsets/tailles, auditer le chargement différé des effets en cas de procédure absente, et relier les enregistrements d'effet au stockage SQL et à la création depuis les sorts, tout en documentant les callbacks dans leur contexte de verrou réel.
