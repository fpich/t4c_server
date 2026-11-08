# Contrôles et limites

1. Extraction directe des octets de `.text` dans le PE original.
2. Concordance byte-for-byte avec les instructions décodées séparément par GNU `objdump` et LLVM `llvm-objdump`.
3. Exploration bornée en largeur des successeurs : branchement conditionnel, saut direct, continuation; interruption au `ret` ou au saut sans continuation.
4. Comparaison **octet par octet** avec le masque de passe 190.
5. Les anciennes lignes tronquées d'instruction ne sont pas acceptées comme instruction complète : elles servent uniquement à repérer les fenêtres à réauditer.

Limites : il s'agit de preuves statiques. Les instructions atteignables par du code existant n'établissent pas que l'application a exécuté chaque branche en pratique.
