# Passe 74 — EQUIPEMENT ET INVENTAIRE

## Mesures certifiées sur le binaire d'origine

- SHA-256 binaire: `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`
- Couverture avant: **140,401 / 905,117** octets.
- Ajout non redondant: **+10,195** octets.
- Couverture après: **150,596 / 905,117**, soit **16.638 %**.
- Entrées examinées: **18** ; instructions distinctes de cette passe: **3,441**.
- Intervalles nouveaux: 24 ; cibles non décodées: 0 ; sorties par branches externes/indirectes: 4.

## Découvertes issues de l’assembleur

### Contrôle de l’équipement

Character::CanEquip 0x417BE0, QueryEquip 0x418340, equip_object 0x418590 et unequip_object 0x4194D0.

### Réseau et inventaire

PacketSingleEquip 0x4196F0, packet_equiped 0x419870, PacketBackpack 0x420760 et PacketRobBackpack 0x4208B0.

### Objets et ressources

JunkItems 0x420A00, AddToBackpack 0x420D20, SetMana 0x41D7C0, SetGold 0x41D880 et leurs appels à TFCPacket.

### Carte et collisions

WorldMap::FindValidSpot 0x4B21A0, IsCollideArea 0x4B26D0 et GetCollisionPos 0x4B2700.

### Limite

Quatre sauts indirects des chemins équipement restent non suivis ; ne pas interpréter la couverture des octets comme une exhaustivité des règles d’équipement.

## Portée et vérification

Les preuves `.asm` contiennent uniquement des instructions atteignables par parcours de branches directes, depuis les entrées indiquées dans le registre. Chaque opcode est comparé aux octets `.text` de l'exécutable. Les données PE, instructions de padding `NOP/INT3`, xrefs indirectes non résolues et chemins non atteignables ne sont pas ajoutés. Le registre `08_LIMITES_ET_ALERTES.tsv` permet de retrouver les transferts non suivis.

Les masques sont des bitsets d'un octet `.text` par bit, bit 0 = offset 0 de `.text`, base VA `0x401000`. `06_MASQUE_AJOUTS.bitset` est disjoint du masque d’entrée; `07_MASQUE_CUMULE.bitset` est leur union exacte.

**Important :** ces résultats sont statiques. Ils ne prouvent ni le passage effectif dans chaque branche, ni une couverture de test, ni l'absence de failles; les exports et routines de branche indirecte exigent une analyse approfondie complémentaire.
