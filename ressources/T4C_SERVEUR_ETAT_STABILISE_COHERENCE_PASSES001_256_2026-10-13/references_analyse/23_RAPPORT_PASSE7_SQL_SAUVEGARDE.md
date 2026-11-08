# Passe 7 — Reconstruction des requêtes SQL de sauvegarde du personnage

Binaire : `T4C Server(1).exe` — SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Analyse statique uniquement.

## Découverte principale

Les chaînes SQL exactes sont désormais extraites de `.data`, image base `0x400000`, adresse de section `0x500000`. Les chaînes ne sont pas une hypothèse issue du nom des fonctions.

### Requête principale `PlayingCharacters`

À `0x501354` :

```sql
UPDATE PlayingCharacters SET PlayerName='%s',Strength=%u,Endurance=%u,Agility=%u,Intelligence=%u,Wisdom=%u,AttackSkill=%u,DodgeSkill=%u,XP=%f,CurrentLevel=%u,CurrentHP=%u,MaxHP=%u,CurrentMana=%u,MaxMana=%u,Gold=%u,wlX=%u,wlY=%u,wlWorld=%u,SkillPnts=%u,StatPnts=%u,Corpse=%u,Appearance=%u,Karma=%d,Gender=%u,ListingTitle='%s',ListingMisc='%s',MoveExhaust=%u,MentalExhaust=%u,AttackExhaust=%u WHERE UserID=%u
```

Les noms de colonnes et leurs formats (`%u`, `%d`, `%f`, `%s`) sont confirmés par la chaîne présente dans le binaire. Les variables exactes utilisées pour remplir chacun des arguments ne sont pas toutes reliées aux offsets mémoire.

### Autres requêtes identifiées

| VA | Opération / table | Preuve dans `SaveCharacter` |
|---|---|---|
| `0x501514` | `INSERT PlayerSpells` | Chaîne extraite ; appel hors extrait ou non vérifié |
| `0x501554` | `DELETE PlayerSpells` | Chaîne extraite ; appel hors extrait ou non vérifié |
| `0x5015b0` | `INSERT PlayerSkills` | `push 0x5015b0` à `0x4143ce` |
| `0x501630` | `DELETE PlayerSkills` | `push 0x501630` à `0x4142ce` |
| `0x50166c` | `INSERT PlayerItems` | `push 0x50166c` à `0x41421c` |
| `0x5016e0` | `INSERT PlayerItems` | `push 0x5016e0` à `0x41409d` |
| `0x501750` | `DELETE Effects` | `push 0x501750` à `0x413f97` |
| `0x50177c` | `DELETE Boosts` | `push 0x50177c` à `0x413f46` |
| `0x5017a4` | `DELETE Flags` | `push 0x5017a4` à `0x413ef5` |
| `0x5017cc` | `DELETE PlayerItems` | `push 0x5017cc` à `0x413ea4` |

## Séquence de sauvegarde (portion désassemblée)

Les instructions de `SaveCharacter` entre `0x413EA4` et `0x413F97` référencent successivement les suppressions des tables `PlayerItems`, `Flags`, `Boosts`, puis `Effects`. Plus loin, on observe des chaînes d’insertion `PlayerItems` pour le sac à `0x41409D` et l’équipement à `0x41421C`, une suppression de `PlayerSkills` à `0x4142CE`, et un ajout de compétence à `0x4143CE`. Ces références directes confortent l’interprétation d’un schéma effacement/recréation pour certains enregistrements.

Les chaînes de suppression/ajout des sorts et de mise à jour du personnage sont également présentes dans le binaire ; leur exécution précise doit être démontrée en étendant le désassemblage au-delà de l’extrait de la présente passe. **Ne pas considérer les insertions de Flags/Boosts/Effects prouvées par ce seul extrait**.

## Lien avec le chargement

Les libellés `Strength`, `Endurance`, `Agility`, `Intelligence`, `Wisdom`, `AttackSkill`, `DodgeSkill`, `CurrentHP`, `CurrentMana`, `Gold`, `wlX`, `wlY`, `wlWorld`, etc. sont des **noms SQL effectivement écrits** dans la requête principale. Une correspondance colonne de `LoadCharacter` → champ `Character` → paramètre SQL reste à vérifier instruction par instruction : l’ordre des setters de la passe 6 ne suffit pas à la prouver.

## Points ouverts

- Vérifier le chemin de validation des lots SQL, callback et rollback éventuel.
- Compléter les chemins de sauvegarde des sorts, boosts, effets et flags.
- Vérifier les échappements et longueurs des chaînes utilisateur.
- Vérifier la concordance lecture/écriture en comparant `LoadCharacter` et l’assemblage des arguments du `UPDATE`.

## Reproduction

- `21_EXTRAIT_SAVECHARACTER_PASSE7.asm` : désassemblage brut de `0x413D50` à `0x414450`.
- `22_CATALOGUE_SQL_SAUVEGARDE_PASSE7.tsv` : chaînes textuelles exactes et VA.
- Extraction statique depuis les octets à l’offset de fichier `VA - 0x400000` pour la section `.data` (dans ce PE particulier).

## Avancement

Toujours **2–5 %** sur le serveur global : progression notable sur le **schéma de persistance**, mais aucune équivalence de fonctionnement validée et aucun serveur exécutable.
