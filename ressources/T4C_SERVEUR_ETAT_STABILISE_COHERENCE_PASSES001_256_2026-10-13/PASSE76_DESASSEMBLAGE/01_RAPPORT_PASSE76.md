# Passe 76 — MONSTRES, CREATURES ET BOUCLE SERVEUR

## Mesures certifiées sur le binaire d'origine

- SHA-256 binaire: `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`
- Couverture avant: **158,351 / 905,117** octets.
- Ajout non redondant: **+3,381** octets.
- Couverture après: **161,732 / 905,117**, soit **17.869 %**.
- Entrées examinées: **17** ; instructions distinctes de cette passe: **2,105**.
- Intervalles nouveaux: 15 ; cibles non décodées: 0 ; sorties par branches externes/indirectes: 1.

## Découvertes issues de l’assembleur

### Initialisation

SimpleMonster::OnInitialise 0x45A3C0 charge les paramètres du monstre et déclenche de nombreux setters virtuels. Les appels internes permettent de rapprocher cette initialisation du traitement WDA documenté antérieurement, sans démontrer que toutes les unités empruntent le même chemin.

### Déplacements

Creatures::MoveUnit 0x432C10 appelle WorldMap::move_world_unit à 0x432E01 ; SetPrivateTalk 0x432E90 gère le drapeau de conversation privée.

### Vie du monde

WorldMap::SummonMonster 0x4B06C0 appelle l’allocateur 0x441FF0 à 0x4B06E6 puis remplit le bloc ; l’absence de test de EAX avant [ESI+0xC] à 0x4B06F0 dépend des garanties de l’allocateur.

### Ciblage

WorldMap::IsNearPlayer 0x4B0950 et FindNearUnit 0x4B1DB0 complètent le graphe de localisation ; TFCMAIN::Attack 0x4722A0 était déjà couvert dans le masque historique.

### Limite

Une branche indirecte demeure dans Creatures::MoveUnit, à 0x432C60.

## Portée et vérification

Les preuves `.asm` contiennent uniquement des instructions atteignables par parcours de branches directes, depuis les entrées indiquées dans le registre. Chaque opcode est comparé aux octets `.text` de l'exécutable. Les données PE, instructions de padding `NOP/INT3`, xrefs indirectes non résolues et chemins non atteignables ne sont pas ajoutés. Le registre `08_LIMITES_ET_ALERTES.tsv` permet de retrouver les transferts non suivis.

Les masques sont des bitsets d'un octet `.text` par bit, bit 0 = offset 0 de `.text`, base VA `0x401000`. `06_MASQUE_AJOUTS.bitset` est disjoint du masque d’entrée; `07_MASQUE_CUMULE.bitset` est leur union exacte.

**Important :** ces résultats sont statiques. Ils ne prouvent ni le passage effectif dans chaque branche, ni une couverture de test, ni l'absence de failles; les exports et routines de branche indirecte exigent une analyse approfondie complémentaire.
