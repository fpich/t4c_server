# Priorités du prochain lot (passes 77+)

Les gains importants de P73–P75 montrent qu'il est plus efficace de traiter des groupes cohérents d'exports que de revoir plusieurs fois les mêmes helpers.

## Couverture ciblée

- Compléter les fonctions WorldMap encore non examinées : `create_world_unit` 0x4AFF00, `QueryEffects` 0x4B04B0, `QueryAreaType` 0x4B1C60 et `VerifyPeripheralHives` 0x4B23C0.
- Étudier les voies d'événement pour l'équipement/les paquets, puis les autres routines Character non couvertes, en priorisant leur graphe de contrôle.
- Résoudre les sauts indirects de `QueryEquip` 0x418340, `equip_object` 0x418590, `WorldMap` et `Creatures::MoveUnit` 0x432C10. Les zones référencées par ces tables de dispatch ne seront ajoutées qu'après vérification de l'alignement et des cibles.
- Revoir les appels virtuels de `SimpleMonster::OnInitialise` à l'aide des tables de vtables exactes et des méthodes exportées.

## Discipline

Rester sur l'exécutable T4C fourni, conserver l'historique intact, fournir les masques, rejeter les faux départs d'instructions et séparer compréhension logique, preuve de byte et couverture exhaustive de branches.
