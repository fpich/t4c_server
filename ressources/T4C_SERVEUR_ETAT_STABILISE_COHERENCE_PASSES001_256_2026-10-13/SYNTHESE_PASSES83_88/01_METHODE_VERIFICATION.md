# Méthode reproductible de contrôle

1. Vérifier le SHA-256 du binaire original : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
2. Lire le masque cumulatif `PASSE82_DESASSEMBLAGE/07_MASQUE_CUMULE.bitset` (bits de poids faible en premier, décalage VA `0x401000`). Compter 264 486 bits actifs.
3. Pour chaque dossier `PASSE83_DESASSEMBLAGE` à `PASSE88_DESASSEMBLAGE`, analyser les lignes `VA: octets opcode`, comparer les octets à `.text` du binaire (`offset = 0x1000 + VA - 0x401000`). Rejeter les erreurs d'adresses, les instructions invalides ou de plus de 15 octets.
4. Exiger que tous les bits du masque `06_MASQUE_AJOUTS.bitset` soient justifiés par un ou plusieurs octets d'instructions documentées. Vérifier `masque_precedent & ajouts == 0` et `masque_precedent | ajouts == masque_cumule` pour chaque passe.
5. Comparer les intervalles du TSV `05_INTERVALLES_NOUVEAUX.tsv` au masque d'ajout, sans trous ni chevauchement.
6. Comparer les totaux dans `09_MESURES.json`, le présent dossier de synthèse et `07_AUDIT_INDEPENDANT.json`. Vérifier les hash des documents ajoutés via le manifeste.

L'audit des masques ne suffit pas à prouver que toutes les branches sont comprises. Les noms `CALL_target_...` signalent expressément une fonction interne non nommée.
