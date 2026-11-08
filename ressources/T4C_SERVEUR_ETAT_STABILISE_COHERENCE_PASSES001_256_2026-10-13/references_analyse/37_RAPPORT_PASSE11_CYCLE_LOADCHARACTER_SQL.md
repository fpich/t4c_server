# Serveur T4C — Passe 11 : schéma SQL et chaîne de chargement du personnage

**Date** : 8 octobre 2026  
**Binaire** : `T4C Server(1).exe` (PE32 x86)  
**SHA-256** : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`  
**Méthode** : examen de la section `.data`, de la table des exports C++ et des instructions x86, sans exécution du binaire ni base de données attachée.

## Synthèse

Les passes 4–6 montraient les lectures numériques des colonnes de `Character::LoadCharacter` (`0x414B70`), mais la signification des indices était laissée inconnue. La passe 11 les relie désormais à une **requête SELECT textuelle complète présente dans le même binaire**, référencée par `0x414BD5` (pointeur VA `0x501ACC`). Il s'agit d'un recoupement direct, pas d'un nom de colonne inféré.

**31 colonnes `PlayingCharacters`** sont projetées dans un ordre confirmé :

```
SELECT UserID,AccountName,wlX,wlY,wlWorld,nClass,CurrentHP,MaxHP,CurrentMana,MaxMana,Strength,Endurance,Agility,Intelligence,Wisdom,CurrentLevel,AttackSkill,DodgeSkill,Gold,Appearance,Corpse,XP,StatPnts,SkillPnts,Karma,Gender,ListingTitle,ListingMisc,MoveExhaust,MentalExhaust,AttackExhaust FROM PlayingCharacters WHERE PlayerName='%s'
```

La table intégrale numéro → nom → routine de lecture → destination connue → présence dans le `UPDATE` se trouve dans `38_CORRESPONDANCES_31_COLONNES_LOAD_VS_SAVE_PASSE11.tsv`.

**Important :** le nom SQL identifié ne prouve pas que l'offset de chaque champ est relatif à la base de `Character` ; certains setters sont virtuels ou reçoivent un sous-objet. Les sept petits setters des passes 5–6 conservent donc la réserve sur le pointeur `ECX`.

## Correspondances clés et ordre d'accès

| Index ODBC | Nom SQL confirmé | Destination ou traitement déjà observé |
|---:|---|---|
| 1 | `UserID` | `Unit::SetID` (`0x48B710`) |
| 2 | `AccountName` | comparaison avec le compte associé au personnage, retour alternatif `10` en cas d'échec observé |
| 3, 4, 5 | `wlX`, `wlY`, `wlWorld` | trois DWORD constituant une position transmise par vtable+`0x20` |
| 6 | `nClass` | lecture différée après la colonne 24, écriture d'un octet `this+0x58` |
| 11–15 | `Strength`, `Endurance`, `Agility`, `Intelligence`, `Wisdom` | helpers `0x48E2xx` affectant des WORD, base `ECX` à qualifier |
| 17–18 | `AttackSkill`, `DodgeSkill` | helpers `0x48E2F0`, `0x48E300` |
| 20,21 | `Appearance`, `Corpse` | WORD `this+0x7C`, WORD `this+0x84` |
| 22 | `XP` | lecture QWORD puis conversion x87 / méthode virtuelle +`0x50` |
| 23,24 | `StatPnts`, `SkillPnts` | WORD `this+0x1E2`, WORD `this+0x1E0` |
| 25,26 | `Karma`, `Gender` | DWORD `this+0x80`, BYTE `this+0x7E` |
| 27,28 | `ListingTitle`, `ListingMisc` | chaînes, tampon annoncé à `0x400`, champs `this+0x164` / `+0x168` |
| 29–31 | `MoveExhaust`, `MentalExhaust`, `AttackExhaust` | DWORD `this+0x8C`, `+0x88`, `+0x90` |

La requête projette aussi `CurrentHP`, `MaxHP`, `CurrentMana`, `MaxMana`, `CurrentLevel`, `Gold`, qui passent par des méthodes ou zones intermédiaires. Voir le TSV pour les 31 champs.

## Requêtes annexes observées à l'intérieur de `LoadCharacter`

| Origine dans `.data` | Requête extraite | Adresse de l'appel de préparation |
|---|---|---|
| `0x501A28` | `SELECT ObjID, EquipPos, ObjType, Qty FROM PlayerItems WHERE OwnerID=%u` | `0x4150C2` → exécution `0x4150DA` |
| `0x5019E8` | `SELECT SkillID, SkillPnts FROM PlayerSkills WHERE OwnerID=%u` | `0x41555B` → exécution `0x415585` |
| `0x501884` | `SELECT SpellID FROM PlayerSpells WHERE OwnerID=%u` | `0x415949` → exécution `0x415961` |

**Objets (`0x4150F9…0x4151E3`) :** la boucle lit les quatre colonnes de `PlayerItems` dans un objet temporaire (alloc. `0x40`), puis le chemin de conversion utilise notamment `Objects::Objects` (`0x44BD80`), `Objects::SetQty` (`0x44C400`), `Objects::IsUnique` (`0x44C500`) et `Character::AddToBackpack` (`0x420D20`). D'autres chemins concernent l'équipement ; ne pas considérer la logique complète d'équipement comme prouvée.

**Compétences (`0x4155A4…0x4156D8`) :** la boucle lit `SkillID` et `SkillPnts` et appelle `Character::LearnSkill` (`0x41E0C0`, nom exporté) après conversions. Après la boucle, `vtable+0x170` est interrogé avec l'ID `0x23` (=35) ; si la valeur retournée est nulle, une branche journalise la création d'une compétence **Archery** par défaut et tente `LearnSkill(35, 15, …)`. Le chemin des erreurs est journalisé, donc cette création n'est pas garantie.

**Sorts (`0x415980…0x415A65`) :** lecture de `SpellID` en entier 32 bits via `0x44EF10` puis insertion dans un conteneur interne lié au personnage (`this+0x3E0` et voisins). Il s'agit de la structure constatée, pas d'une preuve de l'ensemble des contrôles métier applicables à ces sorts.

**Autres données** : la fonction appelle `Unit::LoadFlags` à `0x41503B` et `0x4152F5`, `Unit::LoadEffects` à `0x415A84`, puis `Unit::LoadBoosts` à `0x415AA2`. Ces **noms sont des symboles C++ exportés**, non des étiquettes inventées.

## Recoupement avec `SaveCharacter`

La chaîne UPDATE de la passe 7, à `0x501354`, comporte **29 champs affectés dans `SET`**. Sur les 31 champs de la projection SELECT :

- **28** apparaissent aussi dans l'UPDATE principal ;
- **3** figurent dans SELECT mais pas dans les affectations de l'UPDATE : `UserID`, `AccountName`, `nClass` ;
- l'UPDATE modifie en plus `PlayerName`, qui sert de critère de recherche au SELECT et n'en fait pas partie.

`UserID` est employé dans le **`WHERE UserID=%u`** du `UPDATE` : son absence du `SET` est normale et ne signifie pas qu'il est perdu. **Ne pas en déduire que `AccountName` et `nClass` ne sont jamais modifiés ailleurs** : la comparaison ne porte que sur les deux chaînes SQL précises. Voir le catalogue SQL de passe 7, et `41_COMPARAISON_SELECTION_SAUVEGARDE_PASSE11.tsv`.

## Chemins de retour et zones non reconstruites

- `0x415AF7` : retour observé `EAX=0` après le chemin ordinaire.
- `0x415B61` : retour alternatif `EAX=0xA` après la comparaison du compte.
- `0x415BBF` : retour alternatif `EAX=6` lorsque le contexte initial ou le résultat de la requête est absent dans les chemins observés.
- Le traitement complet des exceptions, des allocations et des transitions vers `PutPlayerInGame` reste à analyser ; les deux fonctions ne sont pas ici prouvées directement appelées l'une à la suite de l'autre.

## Périmètre de preuve et avancement

- **Confirmé dans le PE** : cinq chaînes SQL référencées ci-dessus, ordre des 31 colonnes, appels de lecture et certains pointeurs et branches.
- **Corroboré par exports C++ du PE** : `LoadFlags`, `LoadEffects`, `LoadBoosts`, `LearnSkill`, `SetID`, `AddToBackpack`.
- **Hypothèses non validées** : équivalence de fonctionnement avec le serveur original, correspondance exhaustive offsets ↔ propriétés, succès des requêtes ODBC, séquencement complet du cycle de jeu.

La reconstruction fonctionnelle globale du serveur demeure **estimée à 2–5 % (faible confiance)**. Ce progrès ne signifie pas que 31/31 colonnes équivalent à 100 % du chargement ou du jeu. Aucune exécution du serveur ni test de persistance n'a été effectué.

**Fichiers de preuve :** `39_PREUVES_ASSEMBLEUR_ET_SQL_PASSE11.asm` (instructions réelles et chaînes exactes), `38_CORRESPONDANCES_31_COLONNES_LOAD_VS_SAVE_PASSE11.tsv` et index des exports `01_INDEX_SYMBOLES_EXPORTES.tsv` conservé dans l'archive.
