# Passe 25 — Origine des définitions : créatures et objets

## Portée
Étude statique de `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Aucun exécutable Windows lancé. Aucun développement de serveur Python ajouté.

## Résultat vérifiable : tables de données identifiées

Le binaire contient les commandes `SELECT * FROM Creatures_Items`, `SELECT * FROM Creatures_Attacks`, `SELECT * FROM Creatures_DeathFlags`, `SELECT * FROM Objects_Spells`, `SELECT * FROM Objects_AttrBoosts` et `SELECT * FROM Objects_ContainerGroups`. Un code de chargement passe ces chaînes à la fonction `0x4D1B78` puis parcourt des enregistrements via les appels `0x4D1B60` et `0x4D1B66` dans les chemins observés. Il s'agit d'une **source de définitions structurées**, et non de données intégrées entièrement dans la section code du PE.

### Butin des créatures

- `0x494F23` : empile l'adresse de la chaîne `SELECT * FROM Creatures_Items` (`0x50E6C4`), puis appelle `0x4D1B78` en `0x494F34`.
- `0x494FF9` et `0x494FD1` : les champs nommés `DropPercentage` et `ItemID` sont présents dans les lectures de cette même boucle ; le bloc de transfert se poursuit via `0x495280` et `0x495420`.
- `0x494DA8` : charge `SELECT * FROM Creatures_DeathFlags`.
- `0x494B42` : charge `SELECT * FROM Creatures_Attacks`.
- `0x49394C` : message de chargement de créatures/objets, mais ce message **ne prouve pas à lui seul** l'origine de l'ensemble des fichiers ou tables.

Cette passe relie donc le catalogue de butin en mémoire analysé en passes 22–24 à un chargement dont la source est nommée `Creatures_Items`. Le schéma SQL complet, les types des colonnes, les clés relationnelles et la nature du fournisseur de données derrière `0x4D1B78` restent à confirmer.

### Définition d'objets

- `0x49EA00` : message de chargement des objets.
- `0x49EB93` : requête du champ `ObjectID` dans le chemin chargé.
- `0x49F223` : `SELECT * FROM Objects_ContainerGroups`.
- `0x49F41E` : `SELECT * FROM Objects_AttrBoosts`.
- `0x49F69D` : `SELECT * FROM Objects_Spells`.
- `0x4A599D` : préparation d'une requête `SELECT * FROM Objects_ContainerItems WHERE ContainerGroupID=%u` ; la substitution et le résultat restent à suivre.

La source **immédiate** de certaines listes est donc une couche de lecture structurée. La relation exacte avec l'initialisation du registre global à `0x5163F4`, sa séquence chronologique et la provenance physique de la base (moteur SQL, fichier ou adaptateur) ne sont pas encore toutes démontrées.

## Corrections de méthode

Le projet de réimplémentation Python de la passe 18 (modules `src/`, tests, configuration de paquet, simulateur) est **exclu de la nouvelle archive** à la demande de l'utilisateur. Les scripts Python qui ne font que mesurer la couverture assembleur sont conservés comme outils d'analyse, et **ne constituent pas un développement du serveur**. Les documents historiques de désassemblage et pseudocodes de référence sont préservés, parfois sous un nouveau chemin d'archivage.

## Limites

**Confirmé :** adresses, octets d'instructions, contenus des chaînes et appels directs. **Inféré :** contrat exact de l'interface d'accès aux données et correspondance complète avec les modèles chargés. Aucun nombre réel de monstres/objets, aucune probabilité de drop individuelle et aucune base de données n'ont été extraits.

## Prochaines étapes

1. Identifier concrètement les interfaces sous `0x4D1B78` / `0x4D1B60`.
2. Relier les enregistrements chargés aux producteurs `0x47421E`, `0x475630` et `0x489C90`.
3. Dresser les offsets et tailles de `MonsterStructure` et `ObjectStructure` à partir du constructeur, puis corroborer leurs données sources.
