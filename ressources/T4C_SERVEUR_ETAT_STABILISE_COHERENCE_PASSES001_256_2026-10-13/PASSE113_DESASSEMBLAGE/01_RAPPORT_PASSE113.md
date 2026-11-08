# Passe 113 — Continuation directe dans la première grande lacune

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,137.
- Entrées candidates effectivement analysées : 1.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+6,396**.
- Couverture : **773,397 / 905,117 = 85.447185 %**.
- Appels directs documentés : 138 ; limites/alertes : 0 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
