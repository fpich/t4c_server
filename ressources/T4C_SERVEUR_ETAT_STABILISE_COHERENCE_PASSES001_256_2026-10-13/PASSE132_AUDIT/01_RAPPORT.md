# Passe 132 — Exceptions C++ et faux chemins continus

Cinq grandes lacunes commencent après un appel direct à `0x4D1D56`. Ce trampoline est importé sous le nom `_CxxThrowException` dans la table d’import MSVCRT. Il ne représente donc pas un point de retour normal. Les octets situés immédiatement après cet appel n’ont pas de provenance prouvée par la simple continuité linéaire. Ils restent hors compteur.

Compteur réaudité à cette étape : 809,652 / 905,117 octets. Ajout vérifié : +0. Correction des octets de données : -0.
