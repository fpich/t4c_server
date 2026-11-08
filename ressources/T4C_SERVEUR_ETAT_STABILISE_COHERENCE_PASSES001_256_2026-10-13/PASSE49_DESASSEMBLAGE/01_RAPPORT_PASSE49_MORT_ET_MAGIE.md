# Passe 49 — Chaînes mort, pénalités, cadavres et déclenchement des sorts

## Synthèse

**CONFIRMÉ :** Le traitement des décès est polymorphe : `Character::Death` à `0x41B250` et `Creatures::Death` à `0x4324B0`. Le `Death` de base de `Unit` a une autre implémentation. Le déclenchement après un coup dépend de `hit` et du slot virtuel `+0x44` ; on ne généralise pas ses conditions.

**CONFIRMÉ :** Le chemin personnage stoppe le combat automatique, pose un garde de réentrance à `Character+0xB0`, consulte le contexte du joueur et peut documenter le tueur dans le journal. Il envoie le message global **13** aux effets (`0x41B771`). L'un des chemins appelle `GAME_RULES::DeathPenalties` à **`0x41BC58`**. Ensuite le traitement récupère la perte d'or et appelle virtuellement `GetGold` (`+0x104`) puis `SetGold` (`+0x108`).

### 1. Pénalités : huit clés de configuration [CONFIRMÉ]

`DeathPenalties` (`0x438A20`) sépare deux situations selon le type de la source. Il lit, sous `Software\Vircom\The 4th Coming Server\PVPDeath`, les quatre familles `PC_XP_LOSS`, `PC_EQUIP_LOSS`, `PC_BACKPACK_LOSS`, `PC_GOLD_LOSS`, ou leurs homologues `MOB_`. Les noms et leur usage résultent de données `.rdata` réellement référencées par l'assembleur. **Les valeurs configurées sont extérieures au PE** : les pourcentages en production sont inconnus.

Dans la branche expérience, la routine borne le niveau lu par `GetLevel` à la plage **1 à 199**, indexe un tableau de 64 bits à `0x511B10`, compare ce seuil à `GetXP`, calcule une perte avec le pourcentage (constante `double` **0,01** à `0x4DE8D0`) puis appelle `SetXP` virtuellement (`+0x50`). Le détail du comportement pour toutes les valeurs signées est à valider, notamment la conversion vers entier de la quantité.

Pour les objets, `RRandom(0,100)` sélectionne des candidats ; `SendUnitMessage(20)` et une condition sur les flags de la structure renvoyée filtrent certains objets. Le code appelle `Objects::Remove(1)` et vérifie `Objects::GetQty` ; il peut créer de nouvelles instances `Objects` pour la liste de sortie. Une boucle suivante visite **16 emplacements** en avançant des pointeurs par pas de quatre octets. Il ne faut pas assimiler cet ensemble à « tous les objets sont perdus », ni conclure au volume d'inventaire exact de chaque configuration.

Pour l'or, on observe un produit `GetGold * pourcentage` et une division entière par **100**, compilée via multiplication par `0x51EB851F` puis décalage. La perte est retournée via un pointeur de sortie et appliquée dans `Character::Death`. `DeathPenalties` réalise aussi un appel `SetHP` avec `GetHP` divisé par deux (`shr 1`) et le flag de notification à 1. **Il n'est pas démontré** que la valeur lue à cet instant égale le maximum de PV : éviter l'expression « réapparition à 50 % du maximum ».

### 2. Mort du personnage : monde et paquets [CONFIRMÉ]

`Character::Death` continue avec des branches de construction de texte, des appels aux caractéristiques réelles et boostées (log), à `WorldMap::IsBlocking`, `FindValidSpot` et `deposit_unit`. Dans une branche ultérieure, des appels construisent des paquets via `TFCPacket`. Il diffuse `Broadcast::BCSpellEffect` (`0x41C6D9`) avec un identifiant issu de `GetNextGlobalEffectID`, et appelle `Teleport` virtuellement (`0x41C6F7`), puis `Unit::SetUnderBlock(7)`. Un paquet débutant par **`0x3F`** est envoyé à `SendPlayerMessage`. Les trois valeurs d'octets visibles avant la chaîne sont **0x3F, 0x1E, 0x03** ; elles ne constituent pas seules un schéma complet du paquet.

L'appel de `DeathPenalties` se fait seulement dans un sous-chemin du long corps `Character::Death`. Les chemins initiaux de protection, journalisation, sanctions PvP et situations sans tueur doivent être gardés séparés.

### 3. Mort des créatures, positionnement et nettoyage [CONFIRMÉ]

`Creatures::Death` met initialement les HP à zéro, vérifie le garde de réentrance `+0xB0`, invoque `SendUnitMessage(13)` et obtient le monde. Si celui-ci est présent, `WorldMap::remove_world_unit` retire la créature. Le code parcourt ensuite une liste interne et, pour certains éléments, calcule jusqu'à **huit positions candidates** autour d'un point, par incréments/décréments de 1 choisis aléatoirement. Il vérifie collision (`IsBlocking`), trouve éventuellement une case valide (`FindValidSpot`), insère l'unité (`deposit_unit`), émet `BroadcastPopup`, ou détruit une instance si la position n'est pas admissible.

`Unit::CleanCorpse` (`0x48B040`) est une autre étape : recherche `GetWorld`, retrait via `remove_world_unit` et diffusion de `Broadcast::BCObjectRemoved` si le monde est disponible. La planification temporelle de cette étape n'est **pas** résolue ici.

### 4. Où commence l'attaque magique d'un monstre ? [CONFIRMÉ / INCONNU]

La méthode exportée `_MONSTER_SPELL_ATTACK::Attack` (`0x432EC0`) récupère une échéance et la compare à `TFCMAIN::GetRound`. Elle journalise des branches cible existante ou cible absente, puis appelle directement `SpellMessageHandler::ActivateSpell` à **`0x432FF7`**, avec l'identifiant de sort provenant d'un champ à `+0x88` de la structure d'attaque. Cela démontre une **entrée de magie des monstres** et le retour dans le moteur général des sorts.

**INCONNU :** le nombre de dégâts magiques et l'application des six résistances élémentaires. Dans cette méthode d'entrée, on ne trouve pas la formule magique ; elle peut résider après `ActivateSpell`, dans une fabrique d'effet, une formule ou une cible virtuelle. La routine adjacente à `0x433020` construit un paquet `0x44` après un autre message interne 20 ; sa proximité d'adresse ne démontre pas qu'elle soit la conséquence directe de chaque activation de sort.

### 5. Chaîne croisée consolidée

`Character::hit` → `Character::Death` → éventuellement `GAME_RULES::DeathPenalties` → modifications XP / or / quantités d'objets → effets visuels, déplacement et notification.

`Creatures::hit` → `Creatures::Death` → `SendUnitMessage(13)` → retrait du monde → dépôt conditionnel d'éléments → nettoyage ultérieur potentiel via `CleanCorpse` (appel direct entre ces deux dernières routines NON confirmé).

`_MONSTER_SPELL_ATTACK::Attack` → `SpellMessageHandler::ActivateSpell` → traitements de sorts déjà étudiés aux passes 30–44. Le lien complet vers les résistances et la réduction des PV est encore ouvert.

**Registre de certitude :** `CONFIRMÉ` = appel/condition/octet recoupé ; `INFÉRÉ` = interprétation probable ; `INCONNU` = valeur ou dépendance non établie. Tous les résultats demeurent statiques.
