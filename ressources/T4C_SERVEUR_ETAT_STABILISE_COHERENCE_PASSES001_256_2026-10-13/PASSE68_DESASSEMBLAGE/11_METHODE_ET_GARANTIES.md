# Contrôle de provenance et calcul de couverture passe 68

1. Binaire SHA-256 vérifié. `.text` : VA 0x401000, offset fichier 0x1000, longueur 905117.
2. Désassemblage x86 via GNU `objdump -d -M intel` dans des fenêtres d'entrée de fonctions et de blocs connus, avec bornes sur des frontières d'instruction.
3. Chaque ligne d'instruction est comparée à la séquence d'octets au même VA dans le fichier PE ; toute ligne hors `.text`, tronquée ou divergente est refusée.
4. Les `instructions uniques` sont les adresses d'instructions distinctes vérifiées dans les extraits, non le nombre total de chemins exécutés.
5. Le masque P68 nouveau est constitué des bytes vérifiés absents du masque `13_MASQUE_CUMULE_P67.bitset` conservé. Le masque cumulé P68 est leur OR.
6. Vérification mécanique : intersection vide, nombre de bits à 1 du cumul égal à la somme des deux comptes, somme des intervalles égale au nombre de bits nouveaux.
7. Toute région `.rdata` est exclue. Les imports servent à identifier les symboles, mais leurs descriptions ne génèrent aucun octet assembleur.

Attention : la méthode valide la concordance binaire et la non-redondance des octets d'instructions dans les plages reconnues, pas la réalisabilité dynamique de chaque bloc ni la couverture de tests.
