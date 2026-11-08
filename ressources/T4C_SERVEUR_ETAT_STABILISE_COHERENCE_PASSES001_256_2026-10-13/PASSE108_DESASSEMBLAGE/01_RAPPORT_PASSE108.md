# Passe 108 — Cibles de JMP/Jcc directs signalées hors fenêtre par les passes précédentes

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,748.
- Entrées candidates effectivement analysées : 73.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+7,930**.
- Couverture : **697,149 / 905,117 = 77.023081 %**.
- Appels directs documentés : 228 ; limites/alertes : 11 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
