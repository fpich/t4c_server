# Reproduire la vérification

1. Calculer `SHA256(T4C Server(2).exe)` : attendu `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
2. Lire les lignes `VA: octets désassemblage` des six preuves et retrouver les octets d'instructions depuis la section `.text`: offset_fichier = `0x1000 + VA - 0x401000`.
3. Refuser toutes les lignes dont l’adresse, les octets ou le format sont invalides ; vérifier qu'aucune instruction ne commence dans le corps d'une autre instruction recensée.
4. Lire le masque cumulatif historique `PASSE76_DESASSEMBLAGE/07_MASQUE_CUMULE.bitset` : 113 140 octets, bits de poids faible vers fort ; 161 732 bits allumés.
5. Pour chaque passe 77 à 82, vérifier que `masque_precedent AND ajout = 0` et que `masque_precedent OR ajout = cumul`. Tous les bits ajoutés doivent se retrouver dans des octets d’instructions valides documentés ; les plages TSV recouvrent exactement les bits ajoutés.
6. Confirmer les sommes dans `09_MESURES.json` (et `03_MESURES_CUMULEES.json` de la synthèse). Vérifier les SHA-256 des fichiers nouveaux grâce au manifeste.

Important : ce comptage concerne les octets d'instructions statiquement observés, pas un taux de compréhension du logiciel. Les sauts indirects et les sorties de fenêtre restent explicitement incomplets.
