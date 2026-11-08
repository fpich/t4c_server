# Passe 70 — Lire avant

- Binaire de référence : `T4C Server(2).exe`, SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Le binaire lui-même n’est pas archivé.
- Cette archive conserve sans changement les 635 fichiers de la passe 69 et ajoute les fichiers de passe 70.
- `07_MASQUE_AJOUTS_P70.bitset` ne contient que les octets d’instructions nouvellement prouvés, comparés au masque historique exact.
- Aucun test d’exécution ni injection d’échec d’allocation : les risques sont conditionnels.
- Les preuves reprises des fonctions déjà désassemblées sont revérifiées, mais ne comptent pas à nouveau. Aucun script Python dans le ZIP.
