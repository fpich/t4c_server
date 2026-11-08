# Méthode de la passe 33

Binaire examiné : `T4C Server(1).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Section `.text` VA `0x401000`, 905117 octets, RVA/file offset `0x1000`.

Le recensement historique reprend uniquement les lignes présentes dans les fichiers `.asm` et `.txt` de preuve reconnus, dont les octets correspondent **exactement** au serveur. La preuve supplémentaire est désassemblée par `objdump -d -M intel` dans les plages de code indiquées puis validée avec l'image PE. Chaque adresse et les octets de l'instruction sont comparés. Les chevauchements sont exclus via l'union des offsets. Les exports sont dénombrés à l'adresse d'entrée exacte, non d'après les noms mentionnés dans les commentaires.

Ce contrôle ne remplace ni une validation d'atteignabilité de toutes les branches, ni un test dynamique. Les 536 lignes historiques du client ne contribuent pas à l'indicateur serveur.

Fichiers de preuve nouveaux :
- 02_PREUVES_OBJECTTIMER_ASSEMBLEUR_PASSE33.asm: 579 instructions vérifiées, 1729 octets nets dans le cumul
- 03_PREUVES_HANDLERS_OBJETS_ASSEMBLEUR_PASSE33.asm: 664 instructions vérifiées, 1354 octets nets dans le cumul
- 04_PREUVES_APPELANTS_ET_HORLOGE_PASSE33.asm: 429 instructions vérifiées, 1385 octets nets dans le cumul
