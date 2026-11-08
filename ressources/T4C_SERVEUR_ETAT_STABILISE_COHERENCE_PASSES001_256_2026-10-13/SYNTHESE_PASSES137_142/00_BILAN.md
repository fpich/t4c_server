# T4C — Passes 137 à 142

**Couverture : 809 638 / 905 117 octets = 89.451198 %.**

- +18 octets uniques (10 octets de trampoline SEH, 8 octets de routine unwind), 4 instructions contrôlées par 2 désassembleurs.
- Référence depuis une instruction existante `0x4D1905`, puis `FuncInfo` C++ à `0x4F0C30`.
- 788 descripteurs d’exception à structure cohérente examinés ; une seule action absente du masque initial, désormais ajoutée.
- La fonction candidate `0x43EF10` révèle une journalisation vers `exit.txt` en cas de terminaison exceptionnelle, sans appelant prouvé : hors compteur.
- 47 tables de pointeurs `.text` (3 052 octets) restent correctement exclues.

**Limite :** la mesure décrit des octets d’instructions attestés, pas la compréhension exhaustive du serveur.
