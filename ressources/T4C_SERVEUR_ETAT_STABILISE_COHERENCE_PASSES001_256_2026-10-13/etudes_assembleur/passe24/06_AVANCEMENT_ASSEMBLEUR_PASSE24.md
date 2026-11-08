# Suivi de couverture — passe 24

SHA-256 binaire : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. Mesures reproductibles calculées sur **les preuves présentes dans la nouvelle archive**, comparées aux octets du PE.

| Mesure | Passe 23 | Passe 24 | Gain |
|---|---:|---:|---:|
| Octets distincts directement prouvés | 26,546 | 28,433 | +1,887 |
| Part de la section .text (905 117 octets) | 2.933 % | 3.141 % | +0.208 point |
| Entrées exportées citées | 89 / 1125 | 94 / 1125 | +5 |
| Taux d'entrées exportées citées | 7.911 % | 8.356 % | +0.445 point |

**Interprétation :** ce score est le minimum d'octets explicitement cités et vérifiés, non le pourcentage de fonctions pleinement comprises. Un export peut n'avoir qu'une seule instruction documentée. La majorité des nouvelles fonctions étudiées ici sont **internes non exportées**, si bien que la colonne d'entrées exportées peut progresser peu. Aucun total N3+ global n'est affirmé sans audit fonction par fonction.

Le script de mesure utilisé dans cette passe étend l'historique jusqu'à la passe 24 sans modifier celui de la passe 23.
