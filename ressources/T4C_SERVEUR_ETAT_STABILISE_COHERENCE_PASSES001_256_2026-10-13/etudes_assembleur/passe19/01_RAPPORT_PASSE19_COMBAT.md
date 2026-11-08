# T4C Server — Passe 19 : attaque, collision et notifications de combat

**Date de travail :** 2026-10-08  
**Nature :** désassemblage statique du binaire PE32 x86 fourni, sans exécution.  
**Binaire :** `T4C Server(1).exe`  
**SHA-256 :** `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`  
**Outil :** GNU `objdump -d -M intel` et index d'exports de la passe 1.  
**Périmètre :** analyse des fonctions et des formats ; **aucun développement de serveur Python**.

## 1. Fonctions identifiées par les exports

| Adresse VA | Fonction (symbole exporté) | Statut |
|---|---|---|
| `0x4722A0` | `TFCMAIN::Attack(Unit*, Unit*, bool&)` | Symbole + désassemblage |
| `0x4B2700` | `WorldMap::GetCollisionPos` | Symbole ; appel à `0x472390` |
| `0x48B670` | `Unit::GetType` | Symbole ; appels répétés |
| `0x48F490` | `Unit::GetUnderBlock` | Symbole ; vérifications de valeurs 6/7 |
| `0x48E210` | `Unit::GetDODGE` | Symbole ; appel à `0x47254E` |
| `0x48E1F0` | `Unit::GetATTACK` | Symbole ; appel à `0x47257F` |
| `0x48E1B0` | `Unit::GetAGI` | Symbole ; appels à `0x4725B0`, `0x4725BD` |
| `0x438620` | `GAME_RULES::GetBlowPrecision` | Symbole ; appel à `0x4725CD` |
| `0x41FE40` | `Character::StopAutoCombat` | Symbole ; appel à `0x472465` |
| `0x40FCA0` | `Broadcast::BCAttack` | Symbole + désassemblage |
| `0x40FD90` | `Broadcast::BCMiss` | Symbole + désassemblage |
| `0x40FE60` | `Broadcast::BCSkillUsed` | Symbole + désassemblage |
| `0x40FAF0` | `Broadcast::BCast` | Symbole ; invoqué par les trois constructeurs |

Les noms `GetCollisionPos`, `GetBlowPrecision`, etc. sont issus des symboles du **serveur** et non de suppositions fondées seulement sur les adresses.

## 2. Chemin observé dans `TFCMAIN::Attack`

- **`0x4722BE–0x4722E8` :** initialise un indicateur de sortie à zéro ; obtient des pointeurs internes situés à `Unit+0x30` ; pas de preuve ici qu'un argument non nul soit toujours garanti.
- **`0x47231D–0x472390` :** extrait deux positions par appels virtuels `+0x1C`, appelle `TFCMAIN::GetWorld`, puis `WorldMap::GetCollisionPos` avec les positions et des pointeurs de résultat.
- **`0x472399–0x4723D7` :** traite spécifiquement un résultat de collision ; une branche écrit `1` dans l'indicateur de sortie puis quitte par le nettoyage commun.
- **`0x4723DC–0x4724F3` :** vérifie l'identité, les types, et plusieurs états ; certaines conditions appellent `Character::StopAutoCombat` et un chemin envoie un message au personnage.
- **`0x472514–0x47253A` :** comparaison des deux premières coordonnées des unités. Les deux différences absolues doivent être **≤ 3** pour passer dans le chemin de résolution analysé. Cette limite est **locale à ce chemin**, pas nécessairement la portée générale de toutes les attaques ou sorts.
- **`0x47254E–0x4725D5` :** lit `GetDODGE` et `GetATTACK`, ramène certaines valeurs nulles à 1, lit `GetAGI` pour les deux unités, puis appelle `GAME_RULES::GetBlowPrecision`.
- **`0x472608–0x4726B7` :** une branche produit `Broadcast::BCMiss` à `0x4726AF`.
- **`0x472913–0x472A6B` :** deux chemins distincts produisent `Broadcast::BCAttack` à `0x4729B6` ou `0x472A66`.
- **`0x472AD7` :** appelle aussi `Broadcast::BCObjectChanged` dans un chemin conditionnel.
- **`0x472ADF–0x472B49` :** libération/déverrouillage des ressources et sorties ; le chemin final observé retourne zéro. Une sortie anticipée à `0x472AF1` retourne la constante `0x14` ; **signification du code retour à déterminer**.

Les appels virtuels restants, les formules des dégâts, les types de frappes et l'interprétation exacte des variables locales exigent une nouvelle passe. La reconstruction n'est ni un moteur de combat ni une preuve d'équivalence fonctionnelle.

## 3. Formats d'événements de combat écrits par le serveur

Les constructeurs utilisent les helpers TFCPacket documentés par les passes précédentes : `0x486150 = écriture u16`, `0x4861B0 = écriture u8`, `0x4861F0 = écriture u32`. Les valeurs sont écrites en ordre réseau pour ces champs applicatifs.

### S2C 10001 — `BCAttack`, `0x40FCA0`

Octets après l'opcode : `u32 attackerId`, `u32 targetId`, `u8 zero`, `u8 zero`, `u8 attackType`, `u16 pos1X`, `u16 pos1Y`, `u16 pos2X`, `u16 pos2Y`.

**21 octets opcode inclus** : `2 + 4 + 4 + 1 + 1 + 1 + 2 + 2 + 2 + 2`. L'ordre est corroboré par la structure `Attack10001` déjà présente dans `T4C_Client_world_combat_pseudocode(2).cpp` ; les noms des deux unités proviennent de cette référence existante, non du seul sérialiseur.

### S2C 10002 — `BCMiss`, `0x40FD90`

Octets après l'opcode : `u32 attackerId`, `u32 targetId`, `u16 pos1X`, `u16 pos1Y`, `u16 pos2X`, `u16 pos2Y`.

**18 octets opcode inclus** : `2 + 4 + 4 + 2 + 2 + 2 + 2`. Recoupement avec `Miss10002` du pseudocode client.

### S2C 10003 — `BCSkillUsed`, `0x40FE60`

Octets après l'opcode : `u16 skillId`, `u16 zero`.

**6 octets opcode inclus**. Recoupement avec `SkillUsed10003` du pseudocode client.

L'absence de padding supplémentaire a été vérifiée dans les séquences d'écriture **de ces trois constructeurs** ; ne pas confondre avec les en-têtes du transport UDP.

## 4. Deux cas à ne pas généraliser

- `Character::CanAttack` à `0x41EC40` est, dans ce binaire, une fonction très courte qui retourne `1` (instructions `mov eax,1 ; ret`). Cela **n'implique pas** que l'attaque est toujours autorisée : `TFCMAIN::Attack` effectue d'autres vérifications.
- `_MONSTER_ATTACK::Attack` à `0x432EB0` retourne `0` (`xor eax,eax ; ret 8`). Il s'agit de **cette méthode virtuelle précise**, pas d'une conclusion sur l'ensemble des attaques de monstres. `_MONSTER_SPELL_ATTACK::Attack` est distinct.

## 5. Limitations et suite de désassemblage

1. Résoudre les slots virtuels `+0x34`, `+0x184`, `+0x1D0`, `+0x1D8` et les chemins `Character::attack`, `Unit::attacked`.
2. Examiner `GAME_RULES::GetBlowPrecision` et les conditions exactes menant à `BCMiss`.
3. Reconstituer les dégâts et résistances sans déduire un algorithme à partir d'un seul chemin.
4. Relier les effets du combat à `Character::Death`, `Creatures::Death`, XP et loot.

**Politique documentaire :** les observations sûres, les inférences et les inconnues sont séparées. Les 101 fichiers de la passe 18 sont préservés sans modification dans la nouvelle archive.
