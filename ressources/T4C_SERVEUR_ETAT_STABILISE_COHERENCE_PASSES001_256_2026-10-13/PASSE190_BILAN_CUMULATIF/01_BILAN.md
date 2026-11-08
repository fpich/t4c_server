# Passes 185–190 — Audit de fonctions isolées

**Couverture statique provisoire inchangée** : 826 773 / 905 117 = 91.344323 %.

- Nouveaux octets uniques **certifiés : 0**.
- Les fonctions candidates `0x4BAA90` et `0x434670` ont été redésassemblées dans une fenêtre bornée et confrontées aux deux outils, mais ne disposent d'aucune provenance d'appel direct démontrée.
- Les 955 exports `.text` distincts sont déjà couverts.
- Pas de répertoire TLS ni `.pdata` dans l'en-tête PE.
- Des preuves anciennes sont incorrectement tronquées autour de `0x493A7B` : point d'audit sans progression chiffrée.
- Restent 78344 octets hors masque.

**Limite majeure :** le compteur historique inclut des parcours heuristiques dont l'exécutabilité n'a pas été démontrée intégralement. Le présent audit ne valide pas rétroactivement cette provenance.
