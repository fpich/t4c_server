# Méthode — Preuves et couverture

1. Source : PE `T4C Server(1).exe` (SHA256 attendu dans `00_LIRE_AVANT.md`). Section `.text` RVA `0x1000`, VA de base `0x401000`, longueur **905 117 octets** (PE section VirtualSize `0xDCF9D`). Les preuves client des premières passes sont exclues du numérateur, comme dans les mesures cumulées antérieures.
2. Extraire le code x86 par `objdump -d -M intel --start-address=0x... --stop-address=0x...`, en alignant les bornes sur de vraies instructions et en excluant les octets de remplissage sans intérêt.
3. Pour chaque ligne `adresse: octets instruction`, comparer directement les octets au PE `.text` à `offset_fichier = 0x1000 + (VA-0x401000)`. Une ligne erronée n'est jamais ajoutée au compteur.
4. Construire l'union de **positions d'octets** prouvées par tous les `.asm` de l'archive historique et nouveaux, sans additionner les doublons. Le pourcentage vaut `100 * nombre_octets_distincts / 905117`.
5. Une exportation est « entrée documentée » seulement si son VA exact est une adresse d'instruction validée, non parce que son corps est vaguement couvert. Les adresses exportées sont celles de `01_INDEX_SYMBOLES_EXPORTES.tsv`.
6. Audit statique uniquement. Les chaînes de diagnostics sont extraites de l'image `.data`; les conclusions sur les arguments proviennent des instructions. Aucun serveur n'est exécuté, aucun WDA authentique validé, aucun outil expérimental Python du serveur n'entre dans le ZIP.
7. Nuance de la donnée `0x514CE0` : `.data` a **VirtualSize `0x6572C`** contre **SizeOfRawData `0x12000`**. RVA `0x14CE0` relève de la portion non matérialisée sur disque : initialisation à zéro par le chargeur. A ne pas lire à l'offset brut `0x114CE0` comme si des octets existaient à cet endroit de la section sur disque.
