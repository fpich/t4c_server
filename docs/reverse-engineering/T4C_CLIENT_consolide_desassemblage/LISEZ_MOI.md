# T4C — Dossier consolidé

19 fichiers d'entrée ont été regroupés en **3 documents techniques**.

- `01_T4C_CLIENT_CONSOLIDE.cpp` : base client V7 et annexes spécialisées (handlers, PNJ / effets, transport UDP, monde et combat). Les extraits du tout premier brouillon absents de V7 sont conservés en fin de fichier pour traçabilité.
- `02_T4C_PROTOCOLE_CONSOLIDE.tsv` : table unifiée de la cartographie des paquets et des schémas jusqu’à V7. Une ligne par couple `(direction, packet_id)` ; la correspondance d'adresse des fichiers « packet_map » est préservée dans des colonnes distinctes. Les anciennes définitions modifiées sont archivées dans `historical_notes`.
- `03_T4C_SERVEUR_CONSOLIDE.cpp` : pseudocode commenté du serveur.

## Méthode

- Versions V2, V3, V4, V5 et V6 du client : contenu intégral retrouvé dans V7 en conservant l'ordre des lignes ; V7 sert de base.
- Versions V3 à V6 des schémas : toutes les clés sont présentes en V7 ; une modification de S2C 98 est conservée.
- Les deux fichiers de cartographie sont identiques.
- Les quatre modules spécialisés restent en annexes intégrales, non fusionnées au niveau des fonctions : des définitions parallèles peuvent exister, puisque ces documents sont du pseudocode et non un programme destiné à compiler.
- Ne pas considérer ces fichiers comme le code source original. Les états de confiance et les incertitudes des auteurs sont conservés.

## Contrôle

- 60 entrées de cartographie initiales ; 84 clés `(direction, ID)` dans la table consolidée.
- 13 passages de l'ébauche V1 non repris textuellement dans V7, conservés dans l'annexe historique.

## Mise à jour du 8 octobre 2026

Nouvelle passe **sur le même exécutable** (SHA-256 inchangé) : S2C 45 confirmé comme 6 × u8 + 1 × u16_be, et vérifications ciblées de S2C 40 et 46. Le détail, la méthode et les limites figurent dans `04_PASSE_DESASSEMBLAGE_2026-10-08.md`. Modifications intégrées aux documents 01 et 02.

## Complément du 8 octobre 2026 (passe approfondie)
Voir `05_PASSE_DESASSEMBLAGE_APPROFONDIE_2026-10-08.md` : préfixe et boucle partiels du paquet S2C 46 ; nouvelles observations dans S2C 13. Le tableau et le C++ client ont été actualisés. Aucun format incomplet ne doit être considéré comme un parseur définitif.


## Passe 06 — boucle de S2C 46
Le rapport `06_PASSE_BOUCLE_S2C46_2026-10-08.md` fixe le corps de boucle (13 octets par entrée), ses bornes, les huit tags comparés et les limites de la reconstruction. Les documents client/protocole sont mis à jour.


## Passe 07 — S2C 13 (8 octobre 2026)
Le rapport `07_PASSE_S2C13_STRUCTURE_FIXE_2026-10-08.md` établit 31 lectures directes (75 octets de données après opcode) et relève la table de saut associée au premier octet. Le client et la table protocolaire ont été enrichis. Les ambiguïtés sémantiques sont conservées.


## Passe 08 — table de saut S2C 13 (8 octobre 2026)
Les dix cibles de la table de saut `0x49F694` ont été décodées directement dans le binaire. Voir `08_PASSE_TABLE_SAUT_S2C13_2026-10-08.md`. Client et TSV mis à jour ; aucune sémantique métier inventée.

## Passe 09 — exception C++ du switch S2C 13 (8 octobre 2026)
`09_PASSE_EXCEPTION_S2C13_2026-10-08.md` identifie la cible `0x51EA5B` : appel à `RaiseException` avec code MSVC `0xE06D7363`. Correction explicite du rapport 08 : les branches appelantes ne sont pas prouvées rejoindre le bloc commun par retour normal. Le client et le TSV reflètent cette nuance.

## Passe 10 — C2S 60 et estimation de couverture
`10_PASSE_S2C13_ENVOI_ET_COUVERTURE_2026-10-08.md` décrit la préparation d'une requête C2S 60 consécutive à S2C 13 et établit les limites méthodologiques des pourcentages. Une nouvelle entrée C2S 60 a été ajoutée à la table. Estimation globale de reconstruction fonctionnelle du client : ~15 % (fourchette 10–20 %, faible confiance).
