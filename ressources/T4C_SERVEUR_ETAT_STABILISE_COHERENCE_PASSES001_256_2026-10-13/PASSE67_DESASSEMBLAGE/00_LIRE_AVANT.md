# Passe 67 — Désassemblage serveur original, référentiel réconcilié et SEH

Archive cumulative : 591 fichiers de la passe 66 conservés à l'identique, plus les fichiers sous `PASSE67_DESASSEMBLAGE/`.

- Exécutable de référence, **non inclus** dans ce ZIP : `T4C Server(2).exe` ; SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- `.text` : VA 0x00401000, offset fichier 0x1000, taille 905 117 octets.
- **Couverture unique prouvée : 128 236 / 905 117 = 14,167892 %**.
- Base passe 57 : 126 431 octets ; passes 58–65 : +1 501 ; passe 67 : **+304**.
- Les masques bit-à-bit archivés sont l'élément reproductible du compteur, et non les seuls pourcentages des rapports.
- Les octets de données C++ EH à 0x4E6A10 et suivants se trouvent en `.rdata` et ne sont pas comptés comme assembleur.
- Aucun code Python ni exécutable original n'est inclus.

Lire `01_RAPPORT_PASSE67.md`, `05_TABLE_UNWIND.tsv`, `08_MESURES_PASSE67.json` et `09_METHODE_MASQUES.md`.
