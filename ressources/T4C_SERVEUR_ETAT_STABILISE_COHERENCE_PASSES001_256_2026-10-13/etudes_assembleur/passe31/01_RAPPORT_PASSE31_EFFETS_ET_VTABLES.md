# Passe 31 — Gestion et cycle de vie des effets (désassemblage seul)

## Portée et méthode

Binaire : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`, PE32 x86. Analyse **statique** sans lancer l'exécutable. La preuve `02_PREUVES_ASSEMBLEUR_PASSE31.asm` contient des instructions issues du désassembleur GNU `objdump`, recoupées octet par octet contre la section `.text`. Les adresses sont des VA du binaire original. Les anciens pseudocodes C++ restent uniquement comme documentation historique. Aucun serveur Python ni codec Python n'est fourni.

## Observations nouvelles

1. **Notification d'ajout d'effet** : `SpellEffect::CreateEffectStatus` (`0x460820`) écrit l'opcode applicatif `0x53` (83) à `0x4608D4`, suivi des paramètres, dont un champ extrait à `spell+0x244`, puis effectue un appel d'envoi via slot virtuel `+0x14C` (`0x460926`). Le nombre et le sens exact des valeurs doivent être établis sur le chemin complet ; le format général est corroboré par les notes du client antérieures.
2. **Notification de retrait d'effet** : `SpellEffect::DispellEffectStatus` (`0x460980`) écrit `0x54` (84) à `0x4609D2`, puis une valeur 32 bits, et effectue un envoi virtuel (`0x4609F4`).
3. **Registre de constructeurs d'effets** : `SpellEffectManager::RegisterSuperstructure` (`0x460BD0`) alloue 8 octets via `0x441FF0`, y stocke un pointeur de constructeur et une clef `u16`, puis l'ajoute au registre autour de `0x514D60`. `SpellEffectManager::GetEffectObject` (`0x460C00`) parcourt le registre, compare la clef et invoque le pointeur correspondant (`call DWORD PTR [eax]` à `0x460C57`), lui passant un pointeur de définition de sort. Il ne fabrique donc pas systématiquement le même type concret d'effet.
4. **Callbacks d'effets** : `UnitEffectManager::RegisterEffect` (`0x490B10`) alloue une paire de 8 octets et l'enregistre dans la liste `0x556400`. `UnitEffectManager::GetEffectProc` (`0x490B40`) recherche une clé et retourne un pointeur de fonction ou zéro dans ses chemins observés. Le code emploie des appels de synchronisation ; la nature exacte des primitives externes nécessite le recoupement des imports.
5. **Stockage sur une unité** : `Unit::AddEffect` (`0x48C810`) manipule un conteneur à l'offset `Unit+0xF4`; lorsqu'il est absent, il alloue un bloc de `0x44` octets. `Unit::RemoveEffect` (`0x48C930`) effectue une recherche par identifiant sur les nœuds, appelle conditionnellement le callback stocké dans l'entrée avec le code numérique `9` (`0x48C9BB`) puis retire le nœud. Le sens métier du code `9` est **inconnu**.

6. **Persistance des effets et chargement différé** : `Unit::SaveEffects` (`0x48E430`) parcourt le conteneur à `Unit+0xF4`, invoque un callback avec le code `0x17` (`0x48E4E7`) et assemble une requête de sauvegarde. `Unit::LoadEffects` (`0x48E8A0`) construit une requête SQL à partir de `Unit+0x78`, utilise `0x44ED80` (soumission ODBC), lit des colonnes **1 à 7** via des fonctions de lecture distinctes (`0x48E92B..0x48E981`) et boucle tant que `0x44ED60` produit des lignes. `Unit::DeferredLoadEffects` (`0x48E9F0`) parcourt le conteneur `Unit+0x98`, construit une copie de travail, appelle `UnitEffectManager::GetEffectProc` (`0x48EA86`) et conduit conditionnellement à un callback avec le code `0x18` (`0x48EB2C`). Le sens métier exact de ces codes reste à établir. `Unit::QueryEffects` (`0x48D110`) teste `Unit+0x100`, puis parcourt les effets associés à l'unité.

## Interprétation et limites

La chaîne `définition de sort → sélection de superstructure → gestion d'effet sur Unit → notification S2C83 / S2C84` est maintenant soutenue par plusieurs fonctions identifiées, mais **la correspondance directe entre chaque constructeur d'effet, chaque callback, et chaque transition réseau reste à compléter**. Les durées, les résistances, le calcul des valeurs et l'expiration ne sont pas déduits des seuls noms de fonctions. La présence de fonctions d'ajout/retrait n'établit pas que tous les sorts utilisent ce même chemin.

## Mesure contrôlée

- Avant cette passe : **4.577 %** (41,424 octets).
- Maintenant : **5.056 %** (45,764 octets sur 905,117).
- Variation : **+0.479 point**, soit **4,340 octets inédits**.
- Nouvelles preuves : **1,459 instructions** dans quatorze plages bornées, **0 ligne rejetée**.
- Entrées de fonctions exportées documentées selon la même méthode : **121** (anciennement 107), sur **1125 symboles exportés au total** dont **955 entrées situées dans `.text`**.

Il s'agit uniquement de la part des octets de la section `.text` cités dans les preuves et identiques à ceux du binaire ; ce n'est **pas** un pourcentage de compréhension fonctionnelle exhaustive ni un pourcentage de code exécutable reconstruit. La mesure utilise un ensemble d'adresses **et d'intervalles uniques**, sans recompter les chevauchements.

## Artefacts historiques retirés

Les fichiers listés dans `06_REGISTRE_ARTEFACTS_EXCLUS.tsv` ont été exclus de la nouvelle archive uniquement : anciens scripts Python de mesure, caches `__pycache__`, et résultat de tests de codec du projet expérimental. Les anciens fichiers du projet Python ne figurent pas dans cette archive. Les fichiers C++ historiques sont conservés **comme références de désassemblage**, pas comme développement actif.

## À étudier ensuite

- Résoudre les constructeurs réels stockés dans `SpellEffectManager::tlRegisteredEffects` et les callbacks de `UnitEffectManager`.
- Compléter les branches non couvertes de `Unit::QueryEffects`, `Unit::SaveEffects`, `Unit::LoadEffects` et `Unit::DeferredLoadEffects`, puis relier leurs callbacks aux identifiants d'effets.
- Comparer les opérations d'expiration et les paquets 83/84 aux traces client en distinguant les variations possibles.
