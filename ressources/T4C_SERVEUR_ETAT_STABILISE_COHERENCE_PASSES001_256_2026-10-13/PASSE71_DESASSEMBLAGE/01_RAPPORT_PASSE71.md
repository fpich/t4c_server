# Passe 71 — MESSAGERIE, ALLOCATION ET STRUCTURES

## Mesures certifiées sur le binaire d'origine

- SHA-256 binaire: `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`
- Couverture avant: **129,812 / 905,117** octets.
- Ajout non redondant: **+1,367** octets.
- Couverture après: **131,179 / 905,117**, soit **14.493 %**.
- Entrées examinées: **11** ; instructions distinctes de cette passe: **495**.
- Intervalles nouveaux: 9 ; cibles non décodées: 0 ; sorties par branches externes/indirectes: 0.

## Découvertes issues de l’assembleur

### Dialogue privé

Character::SendPrivateMessage, VA 0x41F8E0, construit un TFCPacket de type 27 (push 0x1B à 0x41F9DF), puis invoque le slot virtuel +0x14C à 0x41FA74 pour émettre le paquet.

### Parole normale

Unit::Talk, VA 0x48C3E0, construit lui aussi un paquet 27 à 0x48C4FD, puis effectue un traitement de diffusion spatiale ; appel direct à 0x40FAF0 à 0x48C5A4.

### Délégation des méthodes

Unit::IsPrivateTalk et Creatures::IsPrivateTalk disposent de codes distincts aux VA 0x48F540 et 0x432EA0. Unit::SendPrivateMessage est une routine minimale à 0x48F550.

### Structure adjacente

Le véritable début du constructeur MonsterStructure est 0x442490 ; la reprise à 0x4424A0 aurait produit un décodage faux et a été définitivement écartée avant le comptage.

## Portée et vérification

Les preuves `.asm` contiennent uniquement des instructions atteignables par parcours de branches directes, depuis les entrées indiquées dans le registre. Chaque opcode est comparé aux octets `.text` de l'exécutable. Les données PE, instructions de padding `NOP/INT3`, xrefs indirectes non résolues et chemins non atteignables ne sont pas ajoutés. Le registre `08_LIMITES_ET_ALERTES.tsv` permet de retrouver les transferts non suivis.

Les masques sont des bitsets d'un octet `.text` par bit, bit 0 = offset 0 de `.text`, base VA `0x401000`. `06_MASQUE_AJOUTS.bitset` est disjoint du masque d’entrée; `07_MASQUE_CUMULE.bitset` est leur union exacte.

**Important :** ces résultats sont statiques. Ils ne prouvent ni le passage effectif dans chaque branche, ni une couverture de test, ni l'absence de failles; les exports et routines de branche indirecte exigent une analyse approfondie complémentaire.
