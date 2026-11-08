# Passe 225 — Vérifications croisées

- **18 comparaisons**, **18 lectures d'octets**, **18 sauts indexés** : concordance binaire GNU/LLVM (54 instructions de contrôle).
- 18 tableaux de longueurs bornées ; 891 octets non chevauchants et absents des trois masques antérieurs.
- Les valeurs des 18 tableaux sélectionnent exclusivement des destinations de code préexistantes, avec les bornes de lecture contrôlées par un `cmp` suivi d'un `ja`.
- Les entrées de relais sont issues du registre de relocations archivé.
- Aucun point d'entrée de fonction isolée n'est supposé.
- Le contrôle des destinations ne valide pas intégralement le graphe dynamique d'exécution.
