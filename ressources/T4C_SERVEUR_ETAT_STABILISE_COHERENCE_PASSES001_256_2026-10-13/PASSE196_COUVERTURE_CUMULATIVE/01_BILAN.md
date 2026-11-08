# Passe 196 — Résultat du contrôle de couverture

- Avant : 826 773 / 905 117 octets (91.344323 %).
- Nouveaux octets uniques : **+1 254**.
- Après : **828 027 / 905 117 = 91.482869 %**.
- Instructions décodées et comparées dans 11 régions : 627 ; instructions ayant ajouté au moins un octet : 410.
- Intervalles nouveaux contigus : 11 ; octets restants hors masque : 77,090.
- Correspondance GNU/LLVM pour chaque instruction comptabilisée ; pas d’instruction divergente dans les blocs retenus.

## Pourquoi 100 % du `.text` ne signifie pas 100 % d’instructions

Le masque restant contient 4,417 lacunes. Parmi elles, 2,116 segments de 8 octets ou plus sont composés **uniquement** des octets `00`, `90` et `CC`, soit 25,798 octets candidats de remplissage. Ceci est un **indice structurel**, pas une preuve que toutes ces zones ne sont jamais exécutées. Leur classement demande une provenance de flot ou une vérification fonctionnelle ; ne pas les compter d’office comme instructions.

Pour viser une couverture *exhaustive*, il faudrait distinguer au minimum : code prouvé, données/tableaux prouvés, alignement probable et octets encore indéterminés. Le taux historique en pourcentage de `.text` ne peut pas être assimilé à un pourcentage de fonctions comprises.

Les régions historiques fondées sur des heuristiques demeurent explicitement provisoires.
