# Contrôles et origine — passe 20

- SHA-256 binaire : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Fichier étudié : `T4C Server(1).exe` (PE32), désassemblage statique et lecture des tables virtuelles présentes dans ses sections.
- Inventaire exports : `T4C_SERVEUR_ANALYSE/01_INDEX_SYMBOLES_EXPORTES.tsv`, recoupé avec les pointeurs du binaire.
- Fichier brut local de désassemblage : `t4c_server_full_disasm_pass10.txt` ; les instructions citées sont extraites aux adresses listées dans le rapport. Ce fichier massif et le binaire ne sont pas intégrés à l'archive.
- Les 110 entrées de la passe 19 sont réinsérées octet pour octet, sans modification de leur contenu.
- Code Python existant conservé sans changement ; aucun moteur de combat ajouté.
- Estimation globale : 2–5 %, indication qualitative, aucune équivalence runtime démontrée.

## Contrôles statiques du script de génération

- Adresse et export de `GetNaturalDamage`, `GetBlowPrecision`, `Creatures::Death` : vérifiés.
- Tables virtuelles du PE : lecture directe à `0x4DE68C`, `0x4DF658`, contrôle de quatre pointeurs importants.
- Branches du chemin combat et du placement : correspondances vérifiées avec les octets désassemblés.
- Archive : conservation intégrale des 110 entrées + 7 nouveaux documents (dont ce fichier).
