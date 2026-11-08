# Passe 91 — Deuxieme generation de CALL directs distincts

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 226.
- Entrées candidates effectivement analysées : 5.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+550**.
- Couverture : **356,885 / 905,117 = 39.429709 %**.
- Appels directs documentés : 9 ; limites/alertes : 0 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
