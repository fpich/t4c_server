# Passe 16 — variantes du paquet S2C 68 et visibilité lors du déplacement

**Date** : 8 octobre 2026. **Méthode** : désassemblage statique PE32/x86 (`objdump -d -Mintel`), sans démarrer les exécutables. **Serveur SHA-256** `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc` ; **client SHA-256** `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`.

## 1. Résultat majeur : trois implémentations distinctes du paquet 68

Les exports C++ attestent les trois fonctions `PacketPuppetInfo` de `Character` (`0x41FB70`), `Creatures` (`0x433020`) et `Unit` (`0x48F620`). Toutes commencent par `u16(68)` (opcode `0x44`) puis écrivent un identifiant `u32` via `TFCPacket::operator<<(long)` (`0x4861F0`). Le sérialiseur `0x486150` écrit des entiers 16 bits ; l'ordre applicatif des octets est big-endian (voir les passes client précédentes).

**Character** : `Unit::GetID()` (`0x48B700`), puis exactement **huit u16** obtenus depuis les pointeurs situés à `this+0x1A0, +0x1A4, +0x1A8, +0x1AC, +0x1B0, +0x1C0, +0x1C4, +0x1DC` ; si pointeur nul, valeur zéro. Si non nul, appel de la méthode virtuelle `+0x2C`, dont la sémantique reste à identifier. Corps = **20 octets**, paquet applicatif = **22 octets avec l'opcode**. Voir `0x41FB70–0x41FC79`.

**Creatures** : appel virtuel `+0x24` avec un argument constant `0x14` et un pointeur de sortie ; si la structure obtenue est non nulle, écriture de **huit u16** aux offsets de cette structure `+0x10C..+0x11A` inclus, par pas de 2. Sinon appel à `Unit::PacketPuppetInfo`. Corps du chemin spécialisé = **20 octets**. Voir `0x433027–0x433119`. **Ne pas prétendre** que le chemin de repli a exactement la même longueur.

**Unit (base)** : écrit `u16(68)`, l'identifiant `this+0x78`, puis **dix u16 à zéro**, et non huit. Corps = **24 octets**, paquet applicatif = **26 octets**. Voir `0x48F620–0x48F69B`.

**Client** : le handler du S2C 68 à `0x49E0AF` lit exactement `u32 + 8*u16` (`0x49E0C4–0x49E11C`), soit 20 octets après l'opcode. Le chemin générique `Unit` peut donc produire **4 octets excédentaires** par rapport à la lecture observée. Cela n'est **pas** une preuve de désynchronisation réseau : la couche de framing et le traitement des octets non consommés restent à confirmer, et la fréquence d'utilisation de ce chemin de repli n'est pas établie.

## 2. `WorldMap::packet_peripheral_units` (`0x4AF770`)

Le moteur distingue la liste initiale (`packet_inview_units`, passe 15) du traitement de périphérie après mouvement. Dans la fonction `packet_peripheral_units`, une table de saut prend en charge des directions de déplacement (index interne de 1 à 8 dans le chemin observé). Les bandes traversées utilisent des décalages de coordonnées **12 en X** et **18 en Y**, puis sont limitées aux bornes du monde. Le parcours accède à des cellules de taille 4 (`shr 2`).

Deux zones de parcours à `0x4AF8F0` et `0x4AFA4B` convergent vers un filtrage d'objets : exclusion `GetType()==4` (`0x4AF902–0x4AF909` et `0x4AFA5B–0x4AFA64`), interrogation du slot virtuel `+0x1D0` (`GetInvisibleQuery`) puis de son prédicat, rétention avec `+0x1C8` (`CreateVirtualUnit`) et insertion en liste temporaire (`0x44E2C0`).

Si le nombre de résultats est positif, écriture de **u16(16)** et **u16(nombre)** à `0x4AFAF2–0x4AFB04`. Une seconde boucle écrit les deux coordonnées `u16`, appelle la sérialisation virtuelle `+0x1AC` (`PacketUnitInformation`) puis le slot `+0x1C4` (`DeleteUnit`) pour relâcher la référence (`0x4AFC6B–0x4AFCAB`). Ce chemin comporte donc les mêmes unités à **13 octets chacune** que le sous-paquet S2C 16 documenté précédemment.

Si le nombre est nul, le contrôle saute l'écriture de l'en-tête S2C 16 dans cette fonction (`0x4AFAE5–0x4AFAEC`). Les responsabilités exactes d'envoi du paquet englobant restent à tracer chez les appelants.

## 3. Après mouvement : diffusion d'une unité

Dans `WorldMap::move_world_unit` (`0x4B12A0`), le code rejette d'abord les coordonnées hors du monde (`0x4B12D4–0x4B1308`), parcourt une représentation des cellules, puis distingue la sortie de l'ancienne case et l'entrée dans la nouvelle (`0x4B1403` / `0x4B141E`). Sous un drapeau d'appel, à `0x4B1451–0x4B14A8`, il prépare un paquet dont le premier entier 16 bits vaut **1**, suivi de deux coordonnées 16 bits. Il invoque le slot virtuel `+0x1AC` de l'unité pour ajouter ses données, puis appelle `Broadcast::BCast` à `0x40FAF0` avec une portée argumentée à **0x16 (22)**. Ce `0x16` est un **paramètre de diffusion**, pas un opcode supplémentaire.

Le paquet correspond donc à l'agencement connu de S2C 1 — `u16(1), u16(x), u16(y), WireUnitInformation` — sous réserve des chemins conditionnels. **Ce rapport n'affirme pas** que tous les mouvements produisent toujours ce broadcast.

## 4. Réserves et suite

- Le rôle exact des huit références du `Character` et des huit champs de `Creatures` demeure inconnu ; aucun nom métier n'est inventé.
- Le traitement client de la version générique à dix champs n'est pas encore prouvé ; les quatre octets additionnels peuvent ne pas avoir les conséquences intuitives.
- La transmission et les exceptions des variantes courtes de S2C 46 restent une question ouverte.
- L'entrée initiale S2C 46 et les mises à jour périphériques de S2C 16 / S2C 1 sont des **chemins distincts**.
- Le taux global 2–5 % demeure une approximation qualitative, sans serveur compilable ni essai d'équivalence.

## Preuves et pièces

`63_PREUVES_ASSEMBLEUR_PASSE16.asm` contient les sept plages désassemblées ; `64_PSEUDOCODE_PUPPET_VISIBILITE_PASSE16.cpp` décrit la reconstruction non compilable ; `65_TABLE_VARIANTES_PUPPET_VISIBILITE_PASSE16.tsv` fixe les tailles, les branches et les limites ; `66_REGISTRE_CONTROLES_PASSE16.md` donne les recoupements et points ouverts. Les mesures de taille proviennent du comptage des appels d'écriture/lecture dans les traces, pas de captures réseau.
