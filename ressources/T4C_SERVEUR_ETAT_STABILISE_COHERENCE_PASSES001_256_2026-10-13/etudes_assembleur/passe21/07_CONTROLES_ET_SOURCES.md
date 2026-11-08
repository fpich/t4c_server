# Contrôles et sources — passe 21

- Binaire étudié : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Désassemblage statique déjà produit : `t4c_server_full_disasm_pass10.txt`, contrôlé contre le PE fourni par les adresses/constantes.
- Symboles MSVC : `T4C_SERVEUR_ANALYSE/01_INDEX_SYMBOLES_EXPORTES.tsv`, conservé dans les archives antérieures.
- Constants flottantes extraites du PE : `0x4DEF18=0.5`, `0x4DEF08=0.2`, `0x4DEF10=3.0`, `0x4DE8C0=1.0`, `0x4DE630=0.0`.
- Vtable Character `0x4DE68C` : slot `+0x168 -> 0x41EA40` (GetAC), `+0x3C -> 0x41CC00` (hit), `+0x44 -> 0x41B250` (Death), `+0x50 -> 0x41D1F0` (SetXP), `+0x54 -> 0x41D1B0` (GetXP).
- Préservation de la passe 20 : **117 fichiers inchangés**, contrôlés octet par octet après réarchivage.
- Nouvelles entrées : **8**. Pas de modifications apportées au projet Python historique.
- Vérification de l'archive : contrôle des noms, des empreintes des fichiers historiques et `ZipFile.testzip()`.
- Pas de test d'exécution du serveur original ; pas de certification des formules face au runtime.
