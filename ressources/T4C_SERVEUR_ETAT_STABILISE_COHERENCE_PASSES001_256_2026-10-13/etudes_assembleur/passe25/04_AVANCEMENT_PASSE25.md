# Mesure de progression : passe 25

Même algorithme que la passe 24, y compris la vérification des octets directement dans `T4C Server(1).exe`.

| Indicateur | Passe 24 | Passe 25 |
|---|---:|---:|
| Octets uniques documentés | 28 433 | 30633 |
| Couverture de .text | 3,141 % | **3.384 %** |
| Entrées de fonctions exportées présentes en preuve | 94 / 1 125 | 94 / 1125 |
| Taux d'entrées exportées | 8,356 % | **8.356 %** |

Ce score est une borne inférieure de la couverture des **preuves**, non le pourcentage de code compris ou de serveur reconstruit.

- SHA-256 de l'exécutable : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Lignes d'assembleur reconnues : 14201.
- Lignes validées : 13665.
- Lignes non validées : 536 ; elles ne comptent pas.
- Le retrait du projet Python ne doit pas retirer les documents de référence assembleur.
