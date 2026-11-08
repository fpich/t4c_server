# Passe 105 — Destinations nouvelles des appels directs relevés dans les passes précédentes

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 7,991.
- Entrées candidates effectivement analysées : 332.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+21,295**.
- Couverture : **580,158 / 905,117 = 64.097570 %**.
- Appels directs documentés : 170 ; limites/alertes : 143 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
