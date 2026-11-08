# Reproductibilité des preuves

1. Calculer le SHA-256 de `T4C Server(1).exe` et vérifier qu'il correspond à l'empreinte du rapport.
2. Extraire la section `.text` : VA `0x401000`, offset physique `0x1000`, longueur `0xDCF9D` = 905 117 octets.
3. Désassembler statiquement avec `objdump -d -M intel` (GNU binutils) et relever les lignes au format `VA: hex-octets instruction`.
4. Pour chaque instruction, comparer la suite d'octets relevée à l'offset `(VA - 0x401000)` de la section `.text` ; rejeter les lignes sans concordance.
5. Compter uniquement les offsets d'octets distincts, même si plusieurs rapports citent les mêmes instructions. Tous les extraits des 34 fichiers historiques ont été inclus dans le recensement de cette passe.
6. Compter les entrées exportées uniquement si l'adresse d'entrée est couverte par un octet vérifié. Identifier le numéro ordinal et l'adresse VA depuis les tables PE (base image `0x400000`).

Cette procédure n'utilise aucun module de développement du serveur Python. La documentation inclut les résultats du calcul, pas de code exécutable.
