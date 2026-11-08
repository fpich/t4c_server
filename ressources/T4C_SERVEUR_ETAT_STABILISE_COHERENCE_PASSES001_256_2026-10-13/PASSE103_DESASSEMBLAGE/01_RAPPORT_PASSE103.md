# Passe 103 — Relocations HIGHLOW de .rdata ciblant le code — groupe 2

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,645.
- Entrées candidates effectivement analysées : 1111.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+10,990**.
- Couverture : **547,816 / 905,117 = 60.524330 %**.
- Appels directs documentés : 102 ; limites/alertes : 1009 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
