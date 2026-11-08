# Passe 167 — Reaudit des frontieres

- SHA-256 du binaire : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Masque de depart : 820,159 octets sur 905,117, soit 90.613589 %.
- Analyse des debuts de lacunes avec instructions sources archivees et deja couvertes.
- Les sauts de table, les sequences de bourrage, les retours et les instructions ambigues sont exclus de la promotion automatique.
- Trois points exclus du candidat principal : 0x41E9E0 (table de sauts), 0x4C5970 (interpretation ambigue), 0x4633A1 (petit suffixe sans contexte suffisant).
- Aucun gain comptabilise dans cette passe : reconnaissance des candidats uniquement.
