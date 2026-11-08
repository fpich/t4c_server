# Passe 95 — Décodage des deux tables de saut bornées, sans désassembler leurs données

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,059.
- Entrées candidates effectivement analysées : 2.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+90**.
- Couverture : **364,638 / 905,117 = 40.286283 %**.
- Appels directs documentés : 182 ; limites/alertes : 0 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
