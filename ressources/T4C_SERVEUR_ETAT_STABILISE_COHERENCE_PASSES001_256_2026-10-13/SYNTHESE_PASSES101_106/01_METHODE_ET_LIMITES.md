# Méthode et limites

- Comparaison SHA256 et octets exécutables.
- Désassemblage x86 depuis des candidats, suivi des branches directes dans des fenêtres bornées.
- Exclusion de tableaux de pointeurs relocalisés contigus dans .text.
- Masques binaires : un bit par octet `.text`, union sans double comptage.
- Audit séparé des masques, des preuves, des intervalles et des relocations.
- Les instructions ambiguës et les cibles de pointeurs sans contrôle de flot indépendant nécessitent encore validation sémantique.
- Un taux de couverture statique n'est ni une couverture des tests ni une garantie de reconstruction des comportements.
