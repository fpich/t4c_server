# T4C Serveur original — bilan accéléré des passes 77 à 82

## Résultat de couverture

- Binaire original : `T4C Server(2).exe` (non distribué dans l’archive).
- SHA-256 exécutable : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Section PE `.text` : début virtuel `0x00401000`, position fichier `0x1000`, taille exacte **905 117 octets**.
- Base à la passe 76 : **161 732 octets (17,869 %)**.
- Nouvelles preuves non redondantes : **+102,754 octets**.
- Résultat à la passe 82 : **264,486 octets, soit 29.221195 %**.
- Entrées d’exports examinées : **552** ; instructions distinctes vérifiées : **33592**.

Les six masques cumulés sont incrémentaux et chacun possède son masque d’ajout. Le contrôle indépendant a confirmé que tous les octets ajoutés sont présents dans des instructions enregistrées et correspondent au fichier `.exe` original. Aucun chevauchement des ajouts ni désaccord entre frontières d’instructions dans le nouveau lot.

## Observations vérifiables par domaine

### Passe 77 — WorldMap

- Entrées de `WorldMap` désassemblées : constructeur `0x4AEC30`, destructeur `0x4AECA0`, création `0x4AEEF0`, `QueryAreaType` `0x4B1C60`, `GetLocalUnits` `0x4B1F50` et `VerifyPeripheralHives` `0x4B23C0`.
- `QueryAreaType` vérifie les limites des coordonnées et extrait des moitiés d’octet (masque `0x0F` ou décalage de quatre bits) à partir du tableau référencé par un champ `+0x30`. La signification exacte de chaque code d’aire n’est pas encore déduite.

### Passe 78 — Character

- Chemins majeurs couvrant `CreateCharacter` `0x415C10`, `DeleteCharacter` `0x4168E0`, `CastSpell` `0x4199A0`/`0x419D40`, `LearnSkill` `0x41E0C0`, `ExecAutoCombat` `0x41FF10` et le destructeur `0x412B90`.
- Destruction/initialisation, compétences et combat sont reliés par des appels directs conservés dans la table TSV. Les appels virtuels et la validation fonctionnelle à l’exécution restent hors de portée.

### Passe 79 — Unit et BaseReferenceMessages

- Cycle de vie `Unit` (`0x48A9E0`, `0x48AC70`), déplacement (`0x48BA50`), gestion des identifiants et registres, sauvegarde `SaveFlags` (`0x48F1E0`) et chargement `LoadFlags` (`0x48F370`).
- Les traitements `BaseReferenceMessages` et les méthodes de dialogue/unité forment des surfaces d’appel complémentaires ; les destinataires finaux des appels virtuels ne sont pas toujours résolus.

### Passe 80 — Players et CPlayerManager

- `Players::LoadAccount` à `0x456030`, création/destruction de joueurs, vérification de connexion et `Players::QueryAuthWatchDog` à `0x4581F0`.
- `CPlayerManager::PageUser` à `0x4531E0` et `PacketUserList` à `0x4538C0` couvrent des chemins d'interaction avec des joueurs et de sérialisation de listes.

### Passe 81 — Monde vivant et règles

- `NPCstructure::OnInitialise` (`0x449C40`) et `OnDeath` (`0x44A540`) sont étudiés avec `Skills::IsSkillLearnable` (`0x460090`) et `GAME_RULES::InPVP` (`0x438FE0`).
- Des fonctions de structure d’objets et de démarrage du moteur `TFCMAIN` complètent ces chemins.

### Passe 82 — Infrastructure, langues et commandes

- `IntlText::LoadLngDB` (`0x43D260`), `CT4CLog::InitLogs` (`0x4715D0`), gestion du registre, files asynchrones, mécanismes de temps et fonctions auxiliaires NPC sont désassemblés.
- Une portion de `SysopCmd::VerifySysopCommand` (`0x463E00`) totalisant 13 997 octets d'instructions locales est vérifiée. **Cette fonction n’est pas complètement couverte** :  plusieurs branches se dirigent vers des destinations hors de la fenêtre bornée à 14 000 octets. La couverture ne doit pas être interprétée comme une résolution exhaustive de son dispatcher.

## Cadre de preuve et limitations

1. Seules les instructions atteignables par parcours statique du graphe de contrôle depuis une entrée exportée connue et à l’intérieur de la fenêtre de fonction sont retenues.
2. Les frontières sont limitées par l’entrée exportée suivante et plafonnées à 14 000 octets depuis l’entrée : cela **exclut volontairement** les branches sortant de la fenêtre.
3. Les sauts indirects ne sont pas résolus par cette passe, et les instructions `NOP`, `INT3`, `.byte` indécodables et `UD2` ne sont pas comptabilisées.
4. Correspondance des octets machine avec l’exécutable original et absence de redondance **ne démontrent ni exhaustivité des fonctions, ni fonctionnement correct, ni sécurité du serveur**.
5. Aucun débogage dynamique ni exécution serveur n’a été effectué ; la portée des conclusions reste celle du désassemblage statique.

Les preuves sont réauditables dans les fichiers `02_PREUVES_ASSEMBLEUR.asm` et les masques `06`/`07` de chaque passe. Les 714 fichiers historiques sont reproduits à l'identique au niveau de leur contenu. Aucun fichier Python n’est archivé.
