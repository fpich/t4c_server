# Passe 107 — Cibles de JMP/Jcc directs signalées hors fenêtre par les passes précédentes

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 3,787.
- Entrées candidates effectivement analysées : 73.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+7,922**.
- Couverture : **689,219 / 905,117 = 76.146951 %**.
- Appels directs documentés : 261 ; limites/alertes : 13 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
