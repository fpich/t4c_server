# T4C Serveur — Archive autonome, passe 2

Contient 1 125 exports inventoriés, le rapport initial, le pseudocode enrichi, des extraits de désassemblage, une cartographie de priorités, et un rapport de progression.

Les fichiers sont issus de rétro-ingénierie statique ; ils ne sont pas le code source d'origine et ne constituent pas un serveur exécutable.


## Passe 3 — persistance (08/10/2026)
Ajout : `07_EXTRAITS_ASSEMBLEUR_PASSE3.txt`, `08_PERSISTANCE_PSEUDOCODE_PARTIEL.cpp`, `09_RAPPORT_PASSE3_PERSISTANCE.md`. Analyse partielle des callbacks et sauvegardes ; rien de compilable ni de validé en exécution.

## Passe 4 (8 octobre 2026)

Ajout du rapport 11, des extraits assembleur 12 et du pseudocode partiel 13 concernant le chargement du personnage et son placement en jeu. Les interprétations restent prudentes.

## Passe 5 (8 octobre 2026)
Cartographie additionnelle des colonnes du chargement (6–31, ordre réel conservé), assembleur brut et pseudocode annoté. Pas de nouveaux noms SQL prétendus confirmés.

## Passe 6
Sept helpers de LoadCharacter reconstitués au niveau des écritures 16 bits (colonnes 11–15, 17–18), avec précautions sur le pointeur ECX. Comparaison limitée avec les séquences de construction de SaveCharacter, sans présumer de correspondance SQL. Voir 18–20.

## Passe 7 (8 octobre 2026)
Extraction des requêtes SQL textuelles et vérification de huit références directes depuis SaveCharacter. Voir fichiers 21 à 24. Ne pas confondre chaîne embarquée et branche nécessairement exécutée.

## Passe 8 (8 octobre 2026)
Références directes à `DELETE PlayerSpells`, `INSERT PlayerSpells` et `UPDATE PlayingCharacters` confirmées dans `SaveCharacter` : consulter `27_RAPPORT_PASSE8_SORTS_UPDATE.md`. Les validations transactionnelles restent à démontrer.

## Passe 9 (8 octobre 2026)
Chaîne asynchrone de persistance reconstruite : `SaveCharacter` -> IOCP Windows -> worker -> `SQLExecDirect` ODBC32 ordinal 11 -> `SQLTransact` ordinal 23 (COMMIT / ROLLBACK) -> callback -> `SetEvent`. Preuves en `29_RAPPORT_PASSE9_CHAINE_SQL_ASYNCHRONE.md`, extraits originaux en `30_*`, pseudocode en `31_*`, index TSV en `32_*`. Les vérifications de succès final et l’équivalence d’exécution restent ouvertes.


## Passe 10 (8 octobre 2026)
Reconstruction des réponses d’échec de `SQLExecDirect`, libération/réallocation de handles et nouvelle tentative de connexion puis seconde exécution SQL. Identification de deux contextes configurés avec `SQL_AUTOCOMMIT_OFF` : `0x511878` et `0x511478`, dont le second est utilisé par l’envoi de `SaveCharacter`. Les retours de COMMIT/ROLLBACK ne sont toujours pas contrôlés avant le callback. Voir fichiers `33_` à `36_`. En cas de `SQL_SUCCESS_WITH_INFO` le code prend aussi le chemin de reprise ; conséquence fonctionnelle NON TESTÉE.

## Passe 11 (8 octobre 2026) — Schéma exact de chargement et pipeline

Résolution des 31 noms de colonnes de `PlayingCharacters` à partir du `SELECT` littéral du PE (`0x501ACC`), puis comparaison au `UPDATE` littéral (`0x501354` : 28 champs communs, 3 présents seulement dans SELECT et `PlayerName` modifié seulement dans UPDATE). Ajout des requêtes `PlayerItems`, `PlayerSkills`, `PlayerSpells`, et identification via symboles exportés de `LoadFlags`, `LoadEffects`, `LoadBoosts`, `LearnSkill`. Les preuves sont dans les fichiers **37 à 41**. Les passes 1 à 10 sont conservées sans modification ; pas de validation en exécution, taux global estimé inchangé à 2–5 %.


## Passe 12 — 8 octobre 2026 : PutPlayerInGame et monde

- `42_RAPPORT_PASSE12_PLACEMENT_MONDE.md` : raccord `GetWorld` → `create_world_unit` → notifications et appels de session.
- `43_PREUVES_ASSEMBLEUR_PASSE12.asm` : preuves redésassemblées sur `T4C Server(1).exe`.
- `44_PSEUDOCODE_PLACEMENT_CORRIGE_PASSE12.cpp` : pseudocode du **flot atteignable** (non compilable).
- `45_TABLE_SAUT_ET_FLOT_PASSE12.tsv` : destinations exactes de la table.

**Rectificatif important sur la passe 4 :** une table de huit cases est présente dans `PutPlayerInGame`, mais sa boucle est inatteignable depuis l'entrée de fonction analysée, car le second test du pointeur `EDI` déclenche le retour `AL=1` avant toute itération. L'ancien libellé « huit essais » décrivait un bloc présent, **pas** huit tentatives prouvées. Le nouvel examen de l'appelant démontre que `AL=0` mène à l'initialisation, `AL=1` la contourne.

**État global** : reconstruction serveur encore non compilable/non testée ; couverture indicative 2–5 % (sans métrique de référence exhaustive). Historique ancien préservé, seules la notice et les nouveaux livrables sont ajoutés.

## Passe 13 — statut S2C 43 (2026-10-08)

- Rapport 46 : schéma S2C 43 entièrement **délimité par largeur/ordre**.
- TSV 47 : 29 champs détaillés, octets et adresses client/serveur.
- Assembleur 48, pseudocode 49, chemin 50 : éléments reproductibles.
- 68 octets (2 d'opcode + 66 de payload), lectures client identiques.
- Attention : plusieurs getters virtuels ne sont pas nommés ; aucune validation sur instance démarrée.

## Passe 14 — tables virtuelles et transition en jeu (2026-10-08)

- `51_RAPPORT_PASSE14_VTABLES_STATUT_ENTREE_JEU.md` : analyse complète et limites.
- `52_TABLES_VIRTUELLES_CHARACTER_UNIT_PASSE14.tsv` : résolution de 21 slots virtuels.
- `53_SCHEMA_S2C43_CHAMPS_NOMMES_PASSE14.tsv` : 29 champs conservant ordre, types et offsets de la passe 13 ; getters identifiés.
- `54_PREUVES_ASSEMBLEUR_PASSE14.asm` : extraits objdump reproductibles.
- `55_PSEUDOCODE_TRANSITION_PASSE14.cpp` : description non compilable.
- `56_CORRELATION_S2C46_S2C16_PASSE14.tsv` : liaison branche longue 46 + message unité 16.
- **Limite** : chemin court du paquet 46 non validé côté client.
- Binaire serveur SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc` ; client SHA-256 `569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68`.


## Passe 15 — 8 octobre 2026 : visibilité et comptage de références

Ajouts `57` à `61`. L'analyse complète `packet_inview_units`, distingue les unités retenues par compteur de références des vrais objets détruits, sépare `PacketPuppetInfo` du tableau fixe des unités et relève l'ambiguïté des variantes courtes S2C 46. Voir le rapport `57_RAPPORT_PASSE15_VISIBILITE_REFERENCES_S2C46.md`. Aucun binaire étudié exécuté, aucune compatibilité réseau validée ; avancement global estimatif conservé à 2–5 %.


## Passe 16 — 8 octobre 2026 : PuppetInfo, visibilité périphérique, déplacement

Ajouts `62` à `66`. Les trois implémentations de S2C68 sont distinguées, dont une version générique à **dix** u16 nuls, différente du client à huit u16 ; ce décalage est marqué comme hypothèse de risque, pas comme panne prouvée. Le traitement périphérique S2C16 et la construction conditionnelle S2C1 après mouvement sont documentés. Voir `62_RAPPORT_PASSE16_PUPPET_ET_DEPLACEMENT.md`. Aucun `.exe` exécuté, aucune validation de compatibilité runtime. Avancement global qualitatif conservé à 2–5 %.


## Passe 17 — événements du monde (2026-10-08)

Sept nouveaux documents (rapport 67, preuves 68, cartographie 69, deux scripts Python, résultats 72, méthode 73) : paquets S2C 11/12 et `remove_world_unit`, **27** sites d’appels directs ; **codec Python** `t4c_world_packets.py` pour S2C 1/11/12/16 avec encodage et décodage. Tests `test_t4c_world_packets.py` : **14 tests réussis**. Exécuter `python -m unittest -v test_t4c_world_packets.py` dans le dossier extrait. Résultats dans `72_RESULTATS_TESTS_CODEC_PASSE17.txt`. Les pseudocodes C++ historiques sont conservés comme références, les nouvelles briques exécutables seront développées en Python. Aucune compatibilité dynamique avec le serveur original n’est prouvée ; score global non recalculé faute de dénominateur fonctionnel.
