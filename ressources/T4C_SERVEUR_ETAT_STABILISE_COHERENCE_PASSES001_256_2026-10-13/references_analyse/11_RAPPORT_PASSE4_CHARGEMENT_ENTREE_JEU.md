# T4C Serveur — Passe 4 : chargement et placement en jeu

Analyse statique du binaire `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Les VA proviennent de l'image PE32 x86. Aucune exécution du serveur ni validation ODBC.

## Character::LoadCharacter — `0x00414B70`

- `0x414B91–0x414BA9` : sauvegarde `this+0x178` et mise à zéro de `this+0x198`. Si la valeur lue à `this+0x178` est nulle, saut vers `0x415BAB` (fin ou nettoyage à analyser).
- `0x414BD2–0x414BFB` : construction d'une chaîne via un format à `0x501ACC` et utilisation de l'objet global situé à `0x511678`, avec appels `0x44E980`, `0x44ED80`.
- `0x414C12–0x414C1E` : appel `0x44ED60` sur cet objet, puis embranchement conditionnel si résultat nul (`0x415B79`). **Inférence** : opération du curseur/requête, à préciser.
- `0x414C24–0x414C53` : lecture d'une colonne index 1 (`0x44EF10`) puis conversion via `0x48B710`, et extraction d'une colonne index 2 dans une zone locale, taille passée `0x14` (`0x44F120`).
- `0x414C69–0x414C97` : récupération d'une chaîne attachée à `this+0x178` via `0x456E10`; comparaison via import `0x4DE2E4` avec la zone précédente; si le résultat échoue, branche `0x415B0C`. Le nom de l'import reste à confirmer.
- `0x414CAF–0x414CE6` : lectures des colonnes 3, 4 et 5 via `0x44EF10`; le code poursuit au-delà de l'extrait. **Ce n'est pas la liste complète des colonnes.**

## Character::PutPlayerInGame — `0x0041E8A0`

- `0x41E8AA–0x41E8B3` : teste `this+0x148`. Lorsque cette valeur est nulle, embranchement vers `0x41E9D6` (retour `AL=1`).
- `0x41E8B9–0x41E8CB` : appel virtuel `vtable+0x1C`, lecture du mot à offset `+8` de la structure retournée, puis appel `0x471EC0`.
- `0x41E8E0–0x41E914` : transmission d'une structure de **trois dwords** issue d'un appel virtuel à un autre appel virtuel (`vtable+0x2C`) ; `0x4AFF00` appelé avec un pointeur et des arguments. On ne conclut pas encore à une signification exacte des trois champs.
- `0x41E929–0x41E9BE` : **huit itérations potentielles** indexées par `EBX = 0..7` dans la branche conditionnelle; table d'adresses à `0x41E9E0` (données et non instructions). Les branches ajustent les deux premières composantes par `+1`/`-1` avant de tester via `0x4AFF00`.
- `0x41E9CD–0x41E9DE` : chemins de retour explicites : `AL=0` si l'objet cible est non nul, `AL=1` si nul. **Attention** : l'interprétation fonctionnelle du booléen nécessite de suivre l'appelant.

## Pistes et limites

La fonction `PutPlayerInGame` contient des opérations compatibles avec une recherche de position dans un voisinage, mais c'est une **inférence**, pas un nom de sous-système confirmé. L'analyse ne reconstitue pas encore la session, le protocole de connexion ou le schéma de la base de données. Les anciennes estimations de 2–5 % de reconstruction globale restent inchangées. Les seules fonctions approfondies ne sont pas équivalentes à un serveur réimplémenté.

## Éléments vérifiables

`12_EXTRAITS_ASSEMBLEUR_PASSE4.txt` reproduit les désassemblages des deux zones pour validation indépendante.
