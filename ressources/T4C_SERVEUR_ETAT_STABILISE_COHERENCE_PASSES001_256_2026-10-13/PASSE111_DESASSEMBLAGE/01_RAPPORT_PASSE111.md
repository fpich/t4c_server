# Passe 111 — Cibles de CALL immédiats révélées par passes 107 à 110

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 8,139.
- Entrées candidates effectivement analysées : 99.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+22,384**.
- Couverture : **762,426 / 905,117 = 84.235077 %**.
- Appels directs documentés : 416 ; limites/alertes : 8 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
