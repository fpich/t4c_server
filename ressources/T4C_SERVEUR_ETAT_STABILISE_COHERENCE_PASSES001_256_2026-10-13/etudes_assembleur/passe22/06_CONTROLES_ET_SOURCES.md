# Sources et contrôles — passe 22

- Exécutable fourni : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Source assembleur : désassemblage statique présent dans l'environnement, `t4c_server_full_disasm_pass10.txt` (lignes VA rapprochées du PE original par leurs adresses et constantes).
- Symboles : `T4C_SERVEUR_ANALYSE/01_INDEX_SYMBOLES_EXPORTES.tsv` (historique de l'archive).
- Clés de registre : 8 chaînes extraites **en lecture directe du PE**, sous `Software\Vircom\The 4th Coming Server\PVPDeath`.
- Constantes confirmées en section de données : `0x4DE8D0` = 0.01, `0x4DF1C8` = 1000000.0.
- Vtable Character `0x4DE68C` : `+0x104` = `0x41D850` GetGold ; `+0x108` = `0x41D880` SetGold ; `+0x60` = `0x41D230` GetBackpack ; `+0x50` = `0x41D1F0` SetXP ; `+0x54` = `0x41D1B0` GetXP.
- Points de branchement et d'appels validés dans 29 instructions précises de l'extrait x86.
- Liens initiaux d'analyse : passes 20 (Creature Death) et 21 (Group XP), conservées à l'identique.
- Pas d'exécution de serveur, pas d'émulation globale, pas de développement Python de serveur.
