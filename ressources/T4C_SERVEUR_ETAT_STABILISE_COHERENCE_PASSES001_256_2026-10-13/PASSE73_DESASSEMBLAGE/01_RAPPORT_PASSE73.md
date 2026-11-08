# Passe 73 — GROUPES ET MOUVEMENT SUR LA CARTE

## Mesures certifiées sur le binaire d'origine

- SHA-256 binaire: `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`
- Couverture avant: **133,644 / 905,117** octets.
- Ajout non redondant: **+6,757** octets.
- Couverture après: **140,401 / 905,117**, soit **15.512 %**.
- Entrées examinées: **28** ; instructions distinctes de cette passe: **4,072**.
- Intervalles nouveaux: 25 ; cibles non décodées: 0 ; sorties par branches externes/indirectes: 4.

## Découvertes issues de l’assembleur

### Interactions de groupe

CreateGroup 0x439F10, Invite 0x43A3B0, Join 0x43AA60, Dismiss 0x43A6E0/0x43A950 : appels à Character::SetGroup 0x41FCB0, notifications et construction TFCPacket.

### Répartition

DistributeKillGold 0x43A1D0 et DistributeGold 0x43A260; DistributeKillXP 0x439FA0 était déjà entièrement comptabilisé, donc +0 dans cette passe.

### Carte

WorldMap::SetBlockingUnit 0x4AF3E0, deposit_unit 0x4AF110, ScanHostiles 0x4B1530; les chemins sont reliés à QueryAreaType, manipulation des unités et collisions.

### Limite

Les branches indirectes de 0x4AF250, 0x4AF3E0, 0x4AF770 et 0x4B12A0 ne sont pas explorées par le parcours statique.

## Portée et vérification

Les preuves `.asm` contiennent uniquement des instructions atteignables par parcours de branches directes, depuis les entrées indiquées dans le registre. Chaque opcode est comparé aux octets `.text` de l'exécutable. Les données PE, instructions de padding `NOP/INT3`, xrefs indirectes non résolues et chemins non atteignables ne sont pas ajoutés. Le registre `08_LIMITES_ET_ALERTES.tsv` permet de retrouver les transferts non suivis.

Les masques sont des bitsets d'un octet `.text` par bit, bit 0 = offset 0 de `.text`, base VA `0x401000`. `06_MASQUE_AJOUTS.bitset` est disjoint du masque d’entrée; `07_MASQUE_CUMULE.bitset` est leur union exacte.

**Important :** ces résultats sont statiques. Ils ne prouvent ni le passage effectif dans chaque branche, ni une couverture de test, ni l'absence de failles; les exports et routines de branche indirecte exigent une analyse approfondie complémentaire.
