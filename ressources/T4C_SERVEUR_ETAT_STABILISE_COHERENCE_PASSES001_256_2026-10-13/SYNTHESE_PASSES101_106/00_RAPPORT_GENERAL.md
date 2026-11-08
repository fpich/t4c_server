# Passes 101–106 — Relocations et couverture statique

SHA256 exécutable : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Base `.text` : `0x401000`, longueur : 905117.

Couverture : **496,937** → **681,297 octets** (75.271705 %), soit **+184,360 octets**.

Les cibles proviennent de références relocalisées et d'appels directs. Une cible relocalisée n'est pas nécessairement une entrée de fonction ; une instruction décodable n'implique pas qu'elle soit effectivement exécutée. Des séries de pointeurs inline dans `.text` ont été exclues.

Alertes de parcours ouvertes : 4156 ; leur résolution reste prioritaire.
