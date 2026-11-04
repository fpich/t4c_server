# Plan d'action — Serveur T4C 1.25 complet

> Document de suivi de l'implémentation. Cocher et dater au fur et à mesure.
> Références RE : `docs/reverse-engineering/` (formats confirmés par passe V1-V5).

---

# PLAN DE FINALISATION — serveur T4C complet (2026-10-13, décision autonome)

## Nouvelles sources RE produites cette session (binaire présent dans le dépôt)

RE directe de `ressources/T4C_Server/T4C Server.exe` (PE32, ImageBase 0x400000) :
table d'enregistrement des handlers = séquence `push opcode; push handler; call`
dans `.text` → **79 handlers C2S identifiés** (voir
`docs/reverse-engineering/RE_HANDLERS_TABLE_2026-10-13.md`).
Découvertes clés :
- **C2S 32** (handler 0x480240) appelle `Character::StartAutoCombat` (0x41FDD0)
  → **c'est le paquet d'attaque/sort sur unité** (format connu :
  u16 spellId, u16 x, u16 y, u32 targetUnitId). Le combat de mêlée se lance
  donc par 32 avec targetUnitId = créature hostile.
- **C2S 78** = inviter un groupe (CreateGroup/Invite), **79** = rejoindre
  (Join), **80** = quitter (Dismiss), **81** = dissoudre, **88** = auto-split
  (u8). S2C associés déjà connus : 76 membres, 78 invitation, 80/82 fin,
  87 HP membre, 88 état auto-split.
- Handler 24 appelle aussi StartAutoCombat (attaque à distance / compétence).

## Chantiers de finalisation (ordre d'exécution)

| # | Chantier | Contenu | Statut |
|---|---|---|---|
| 22 | Combat de base (3.2) | C2S 32 (spellId=0) sur PNJ hostile → jet touche → S2C 0x2711/0x2712, dégâts, mort PNJ (11 + loot + XP 44 + or 53), riposte, mort joueur → respawn (57) | ✅ 2026-10-13 (6 tests) |
| 23 | Groupes (4.2) | C2S 78/79/80/81/88, S2C 76/78/80/82/87/88, partage XP/or (DistributeKillXP/Gold) | ✅ 2026-10-13 (6 tests) |
| 24 | Sorts réels (3.3) | C2S 32 spellId>0 : coût mana (67), diffusion 64, dégâts, sort de départ 414 Fire dart, PNJ teach → S2C 55, persistance PlayerSpells | ✅ 2026-10-13 (5 tests) |
| 25 | WDA déchiffré | `tools/wda_decrypt.py` (masque LCG 3418 octets, SHA256 vérifié), `ressources/wda_extract/` : 188 items, 962 sorts, PNJ/mobs/spawners ; catalogue chargé dans items.py/spells.py | ✅ 2026-10-13 (4 tests) — grille de tuiles non localisée (binaire) |
| 26 | Persistance étendue | Tables guildz/guildplayers/Guildboard/OfflineMessages/OnlineUsers + CRUD ; messages offline livrés au 46 ; présence online/offline | ✅ 2026-10-13 (5 tests) — opcodes wire guilde à identifier (SQL direct côté original) |
| 27 | Téléportation & mort | S2C 57 au respawn après mort (fait avec étape 22) ; pénalité/XP niveau (37) : formules WDA extraites mais pas encore branchées | 🔄 |
| 28 | Fragmentation UDP | Réassemblage (flag 0x0400) : declaredLength = taille totale, 1012 o/fragment, purge 10 s | ✅ 2026-10-13 (3 tests) |
| 29 | Comptes réels | 14 = inscription si inconnu (hash SHA-256 salé) / vérification si connu ; persistance T4Cusers | ✅ 2026-10-13 (2 tests) |
| 30 | Serveur original sous Wine | ✅ **FONCTIONNEL** (port 11677, Wine 10 local) : causes racines = MFC42, winbind, ODBC i386+MachineName, NPCDLL1=NPCs.dll. Doc : `docs/SERVEUR_ORIGINAL_WINE_LOCAL.md`. Diff-test vs Python OK (66/91/65/45/14/26/46) | ✅ 2026-10-13 |
| 31 | Validation de bout en bout | Harnais multi-clients (fait étape 19, étendu groupe/combat/sort) + diff-test contre l'original (fait étape 30) ; reste : diff-test 25/13/46 complet avec perso créé côté original | 🔄 |

## Hors périmètre réaliste (à documenter comme limitations connues)

- IA avancée des créatures (NPC AddOn dlls propriétaires), quêtes/dialogues
  scriptés WDA, sons/musiques (client), anti-cheat poussé.

---

## État actuel (acquis)

| Domaine | Statut |
|---|---|
| Transport UDP (12 octets LE, ACK/SAFE, fragmentation) | ✅ opérationnel |
| Bootstrap (MOTD 66, patch 91, version 99, compte 14) | ✅ |
| Cycle personnages (création 25, liste 26, suppression 15, entrée 13/46) | ✅ |
| Mouvement 1-9 + position clampée (0..0x0C00) | ✅ |
| Compétences 39/40, sorts (liste vide) 62, statut 43, temps 45 | ✅ |
| Sac/équipement (18/19 vides, formats corrigés), 21/22/23/59 parsés | ✅ partiel |
| Multi-joueurs : vue 16, popup 0x2714, mouvement 1, retrait 11 | ✅ |
| Persistance SQLite (position, comptes) | ✅ |

---

## Phase 1 — Fondations de gameplay ✅ TERMINÉE (2026-10-08)

### 1.1 Modèle de données d'inventaire ✅ (2026-10-08)
- [x] `Item` dataclass : `unit_id`, `template_id`, `name`, `quantity`, `price`, `equip_slot`, `is_unique` (`t4c/items.py`)
- [x] Persistance des items (table `CharacterItems` par personnage : sac + 13 slots d'équipement)
- [x] Remplir 18/19 avec le vrai contenu
- [x] Brancher 21 (équiper → maj slot + renvoyer 19), 22 (déséquiper), 23 (utiliser — potion de soin consommable)
- **Validation** : ✅ **confirmé en jeu client** (2026-10-08) : épée + potions dans le sac, épée équipable dans le slot, noms d'objets visibles (59), persistance OK

### 1.2 Or et stats persistants
- [x] `gold`, XP, HP/mana réels dans la base ; le 13 et le 43 les reflètent ✅ (2026-10-13, étape 14)
- [x] S2C 53 GOLD_UPDATE + S2C 44 XP (hi/lo 64 bits) ; potion (23) soigne +25 HP clamp max et renvoie 43
- **Validation** : tuer/acheter modifie l'or, relog le conserve (achat/vente testés étape 16)

### 1.3 Chat local ✅ (2026-10-08)
- [x] C2S 30 (LOCAL_TALK) → diffusion S2C 27 (Unit::Talk) aux joueurs en vue + émetteur (`world.broadcast_unit_talk`)
- [x] S2C 63 (SERVER_MESSAGE cat=30 style=3) disponible (`world.send_server_message`)
- [ ] Paquet 29 : observer en trace avant d'implémenter (sémantique non résolue)
- **Validation** : ✅ **confirmé en jeu client** (2026-10-08) : PAROLE 'hello'/'bonjour' diffusée aux 2 joueurs (27 C2S→S2C)

## Phase 2 — Monde vivant

### 2.1 Carte et collisions
- [x] Format minimal propre : `t4c/maps.py` WorldMap, grille CSV `maps/world<id>.csv` (--maps-dir), tout franchissable par défaut ✅ (2026-10-13, étape 20)
- [x] Le mouvement vérifie la tuile cible (`is_walkable`) ; refus = pas de paquet 1 ✅
- [ ] Extraire les vraies données de `T4C Worlds.WDA` (format restant INCONNU dans les passes 41+) pour remplir les CSV
- **Validation** : impossible de traverser un mur/l'eau (une fois la grille réelle chargée)

### 2.2 NPCs statiques ✅ (2026-10-08)
- [x] Table de spawn : position, apparence, nom (`world.register_npc`)
- [x] Inclus dans le 16 (vue) + popup 0x2714 ; 3 PNJ seedés à LightHaven au démarrage
- [x] S2C 35 (NPC_NAME) sur demande (clic)
- **Validation** : tests `test_step13_ground_items_npcs.py` — à confirmer en jeu client

### 2.3 Objets au sol ✅ (2026-10-08)
- [x] C2S 12 (DROP_ITEM) → consomme le sac, spawn au sol visible (popup 0x2714), sac renvoyé
- [x] C2S 11 (PICKUP) → retrait du sol diffusé (paquet 11), ajout au sac, sac renvoyé
- [x] S2C 70 avec `{unitId, 11}` si le pickup échoue (ACTION_FAILURE corrélé)
- **Validation** : tests `test_step13_ground_items_npcs.py` — à confirmer en jeu client

### 2.4 Synchronisation de vue dynamique
- [x] Au mouvement : `world.sync_view_on_move` détecte entrée/sortie du rayon de 20 tuiles → 0x2714 (+68 puppet) / 11, pour le joueur qui bouge ET pour les autres joueurs qui le voient ✅ (2026-10-13, étape 15)
- **Validation** : tests `test_step15_view_sync.py`

## Phase 3 — Interaction

### 3.1 Marchands
- [x] PNJ marchand (`Npc.shop` : template_id → stock) ; C2S 11 (GET_UNIT) sur le marchand → S2C 41 BUY_LIST + S2C 56 SELL_LIST ✅ (2026-10-13, étape 16)
- [x] C2S 41 → débit or, ajout sac, réponses 18 + 53 + 41 rafraîchi ; or insuffisant → S2C 70 {npcId, 41}
- [x] C2S 56 (paires u32/u32 jusqu'à EOF, SANS compteur) → crédit or (prix/2), retrait sac, réponses 18 + 53 + 56 rafraîchi
- **Validation** : tests `test_step16_shops.py`

### 3.2 Combat de base
- [ ] Identifier le C2S d'attaque en trace (probablement via clic sur cible)
- [ ] Résolution serveur : toucher → S2C 0x2711 (ATTACK) ; manquer → 0x2712 (MISS)
- [ ] HP réels, mort → retrait + respawn
- **Validation** : attaquer un PNJ, voir l'animation, le tuer

### 3.3 Compétences et sorts réels
- [ ] 32 (USE_SPELL) / 42 (USE_SKILL) : validation de cible, coût mana, diffusion 64 (SPELL_CASTING avec effectId/childId)
- [ ] Apprentissage via 40 (TRAIN_SKILL_LIST alimenté par les PNJ entraîneurs)
- **Validation** : apprendre un sort chez un PNJ, le lancer, voir le FX

## Phase 4 — Social

- [x] 4.1 Chat par canaux : 48 (entrée + mdp), 51 (sortie), 52→75 (liste publique), 53 (écoute), 50 (utilisateurs), 49 (message canalisé) ✅ (2026-10-13, étape 18) ; 29 = chuchotement (déjà fait)
- [ ] 4.2 Groupes : inviter (S2C 78), membres (76), HP partagé (87), dissolution (80/82) — C2S d'invitation à identifier en trace
- [x] 4.3 Liste en ligne réelle : S2C 62 = u16 count + (CString perso, CString compte)* par joueur IN_WORLD ✅ (2026-10-13, étape 21 — format client @0x49DD27)

## Phase 5 — Robustesse (continu)

- [x] 5.1 Retransmission SAFE transport (125 ms, max 5 essais, log PacketLost) ✅ (2026-10-13, étape 17)
- [x] 5.2 Nettoyage des sessions mortes (60 s sans RX → 11 diffusé + suppression) ✅ (2026-10-13, étape 17)
- [x] 5.3 Cadence de mouvement : > `max_moves_per_second` (10/s, fenêtre 1 s) → requête ignorée ✅ (2026-10-13, étape 21) ; validation position = collisions (étape 20)
- [x] 5.4 Test d'intégration bout-en-bout : 2 clients UDP réels vs vrai serveur (bootstrap → monde → popup/mouvement/chat/canal/shop/sortie) ✅ `tests/test_step19_integration.py` (2026-10-13)

---

## Ordre de dépendance technique

```
Phase 1.1 (items) ──→ 2.3 (sol) ──→ 3.1 (marchands)
Phase 1.3 (chat) ──→ 4.1 (canaux)
Phase 2.1 (carte) ──→ 2.2 (PNJ) ──→ 3.2 (combat) ──→ 3.3 (sorts)
Phase 2.2 ──→ 4.2 (groupes)
```

## Risques / inconnues à trancher en priorité

1. **Format de carte** : rien dans le repo — extraire du client ou définir un format minimal. Principal goulot d'étranglement.
2. **Paquet 29** et le **C2S d'attaque** : à capturer en trace réelle avant d'écrire le code.
3. **Sémantique des champs `headerFlag`/`headerValue` du 18** : à confirmer (probablement or/poids).

## Plan de développement autonome — 2026-10-13

Décision de session (analyse complète du dépôt) : le serveur Python `t4c/` est
la piste principale ; le harness Docker/Wine (`docker/original-server/`) reste
un outil de diagnostic du serveur original (bloqué au startup sous Wine 10,
cause ODBC/SQLConnect en cours d'investigation — sans impact sur le serveur
Python). On poursuit sur les chantiers dont les formats wire sont **confirmés
dans `docs/reverse-engineering/` et `ressources/.../02_T4C_PROTOCOLE_CONSOLIDE.tsv`**,
dans l'ordre de valeur testable avec le vrai client :

| Étape | Chantier | Plan | Statut |
|---|---|---|---|
| 14 | Or/XP/HP/mana persistants ; 13/43 réels ; S2C 53 (or) + 44 (XP) ; potion soigne | 1.2 | ✅ 2026-10-13 (6 tests) |
| 15 | Synchro de vue dynamique : entrée/sortie du rayon de 20 tuiles → 0x2714 / 11 | 2.4 | ✅ 2026-10-13 (5 tests) |
| 16 | Marchands : C2S 11 sur PNJ marchand → S2C 41/56 ; achat C2S 41, vente C2S 56, or réel | 3.1 | ✅ 2026-10-13 (6 tests) |
| 17 | Robustesse : retransmission SAFE (125 ms × 5) + nettoyage sessions mortes | 5.1/5.2 | ✅ 2026-10-13 (5 tests) |
| 18 | Canaux de chat réels : 48/51/52/53 C2S, 75/50 S2C | 4.1 | ✅ 2026-10-13 (7 tests) |
| 19 | Test d'intégration bout-en-bout : 2 clients UDP réels, bootstrap → monde → chat/shop/sortie | 5.4 | ✅ 2026-10-13 (1 test) |
| 20 | Carte/collisions : `t4c/maps.py` WorldMap (CSV `maps/world<id>.csv`), refus de déplacement | 2.1 | ✅ 2026-10-13 (5 tests) — données WDA réelles à extraire |
| 21 | 62 = liste joueurs en ligne réelle ; 60 renvoie le 16 si unités en vue ; cadence mouvement (5.3) | 4.3/5.3 | ✅ 2026-10-13 (5 tests) |

Bloqués en attente de capture client réelle ou d'extraction WDA (ne pas
spéculer) : C2S d'attaque (3.2 — `TFCMAIN::Attack` @0x4722A0 existe mais le
paquet C2S déclencheur n'est pas encore identifié), format de carte/collisions
(2.1 — `T4C Worlds.WDA` 198 Mo à extraire), groupes (4.2).

## Prochaine session recommandée

Phase 1.1 + 1.3 (inventaire + chat) — maximum de valeur testable en jeu pour un
effort modéré, et tout le reste en dépend.
