# Passe 72 — PAQUETS, LECTURE ET TRANSFORMATION

## Mesures certifiées sur le binaire d'origine

- SHA-256 binaire: `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`
- Couverture avant: **131,179 / 905,117** octets.
- Ajout non redondant: **+2,465** octets.
- Couverture après: **133,644 / 905,117**, soit **14.765 %**.
- Entrées examinées: **20** ; instructions distinctes de cette passe: **1,080**.
- Intervalles nouveaux: 16 ; cibles non décodées: 0 ; sorties par branches externes/indirectes: 6.

## Découvertes issues de l’assembleur

### Cycle de vie

TFCPacket : constructeur 0x485DF0, destructeur 0x485E80, Destroy 0x485EC0 et Seek 0x485F10.

### Transformation réseau

EncryptPacket 0x485F40 écrit une en-tête et procède au traitement de charge utile. DecryptPacket 0x486050 effectue une transformation XOR octet par octet à 0x4860D4; aucune propriété cryptographique ne peut être déduite du seul nom.

### Lecture typée

Six variantes Get à 0x4863F0–0x486700, chaîne à 0x486770, buffer 0x4869B0/0x486A30 et identifiant de paquet à 0x486A60.

### Limite de portée

Six entrées Get se terminent en branchement vers la variante exportée suivante ; les transferts aux frontières des exports sont enregistrés et non suivis dans la fonction source.

## Portée et vérification

Les preuves `.asm` contiennent uniquement des instructions atteignables par parcours de branches directes, depuis les entrées indiquées dans le registre. Chaque opcode est comparé aux octets `.text` de l'exécutable. Les données PE, instructions de padding `NOP/INT3`, xrefs indirectes non résolues et chemins non atteignables ne sont pas ajoutés. Le registre `08_LIMITES_ET_ALERTES.tsv` permet de retrouver les transferts non suivis.

Les masques sont des bitsets d'un octet `.text` par bit, bit 0 = offset 0 de `.text`, base VA `0x401000`. `06_MASQUE_AJOUTS.bitset` est disjoint du masque d’entrée; `07_MASQUE_CUMULE.bitset` est leur union exacte.

**Important :** ces résultats sont statiques. Ils ne prouvent ni le passage effectif dans chaque branche, ni une couverture de test, ni l'absence de failles; les exports et routines de branche indirecte exigent une analyse approfondie complémentaire.
