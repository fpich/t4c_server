# Contrôles et traçabilité — passe 23

- Exécutable source : `T4C Server(1).exe` — SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Source du désassemblage : `p17_server_full_objdump.txt` extrait statiquement du même binaire (une seconde vérification de sections et symboles a été effectuée sur le PE).
- Contrôle table virtuelle `Objects` : lecture du DWORD à `0x4DF1E0+0x18` = `0x0044C070`, correspond à l'export `Objects::Create` dans `01_INDEX_SYMBOLES_EXPORTES.tsv`.
- Contrôles binaires : les adresses critiques de structures, de tirage, de callback et de dépôt figurent dans le flux x86.
- Connaissances non démontrées : pas de promesse de source de table extérieure, pas d'identifiants d'objets concrets, pas de probabilités exactes.
- Archive précédente : les **133 membres** doivent être conservés **byte pour byte**, nouveaux documents dans `T4C_SERVEUR_PYTHON/disassembly/passe23/`.
- Développement Python : aucune modification des `.py` ou des tests existants.
