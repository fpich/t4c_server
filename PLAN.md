# Plan d'action — Serveur T4C 1.25 complet

> Document de suivi de l'implémentation. Cocher et dater au fur et à mesure.
> Références RE : `docs/reverse-engineering/` (formats confirmés par passe V1-V5).

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
- [ ] `gold`, XP, HP/mana réels dans la base ; le 13 et le 43 les reflètent
- **Validation** : tuer/acheter modifie l'or, relog le conserve

### 1.3 Chat local ✅ (2026-10-08)
- [x] C2S 30 (LOCAL_TALK) → diffusion S2C 27 (Unit::Talk) aux joueurs en vue + émetteur (`world.broadcast_unit_talk`)
- [x] S2C 63 (SERVER_MESSAGE cat=30 style=3) disponible (`world.send_server_message`)
- [ ] Paquet 29 : observer en trace avant d'implémenter (sémantique non résolue)
- **Validation** : ✅ **confirmé en jeu client** (2026-10-08) : PAROLE 'hello'/'bonjour' diffusée aux 2 joueurs (27 C2S→S2C)

## Phase 2 — Monde vivant

### 2.1 Carte et collisions
- [ ] Extraire les données de map du client original (ressources binaires) ou format minimal : grille de passabilité par monde
- [ ] Le mouvement vérifie la tuile cible ; refus = pas de paquet 1 (le client reste sur sa prédiction locale)
- **Validation** : impossible de traverser un mur/l'eau

### 2.2 NPCs statiques
- [ ] Table de spawn : position, apparence, nom
- [ ] Diffusion via 16 (en vue), 0x2714 (apparition), 11 (disparition) — étendre `t4c/world.py` aux non-joueurs
- [ ] S2C 35 (NPC_NAME) à l'approche
- **Validation** : PNJ visible dans le monde, clic dessus affiche son nom

### 2.3 Objets au sol
- [ ] C2S 12 (DROP_ITEM) → spawn objet visible des autres ; C2S 11 (PICKUP) → ajout au sac + retrait diffusé
- [ ] S2C 70 avec `{unitId, 11}` si le pickup échoue
- **Validation** : déposer un objet, le ramasser avec l'autre compte

### 2.4 Synchronisation de vue dynamique
- [ ] Au mouvement : détecter entrée/sortie du rayon de 20 tuiles → 0x2714 / 11 aux concernés (pas seulement à l'entrée en jeu)
- **Validation** : s'éloigner de >20 tuiles, l'autre disparaît

## Phase 3 — Interaction

### 3.1 Marchands
- [ ] NPC marchand avec inventaire ; à l'interaction : S2C 41 (BUY_LIST, format passe V5)
- [ ] C2S 41 → débit or, ajout sac
- [ ] C2S 56 (paires u32/u32 jusqu'à EOF, SANS compteur) → crédit or, retrait sac
- **Validation** : acheter/vendre, or et sac cohérents des deux côtés

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

- [ ] 4.1 Chat par canaux : 75 (CHANNEL_LIST réel), 50 (utilisateurs), 29 si identifié
- [ ] 4.2 Groupes : inviter (S2C 78), membres (76), HP partagé (87), dissolution (80/82)
- [ ] 4.3 Liste en ligne réelle (clarifier l'ambiguïté 62/63 relevée dans les docs)

## Phase 5 — Robustesse (continu)

- [ ] 5.1 Retransmission SAFE transport (125 ms, max 5 suivis, `PacketLost.Log`)
- [ ] 5.2 Nettoyage des sessions mortes (pas de RX depuis N secondes → 11 diffusé)
- [ ] 5.3 Anti-triche minimal : cadence de mouvement, validation des positions C2S
- [ ] 5.4 Tests d'intégration : harness simulant deux clients complets (bootstrap → jeu → interaction)

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

## Prochaine session recommandée

Phase 1.1 + 1.3 (inventaire + chat) — maximum de valeur testable en jeu pour un
effort modéré, et tout le reste en dépend.
