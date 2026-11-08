# Passe 106 — Relocations HIGHLOW dans .text vers du code, pointages de controle ou gestion exception candidate

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 34,039.
- Entrées candidates effectivement analysées : 1495.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+101,139**.
- Couverture : **681,297 / 905,117 = 75.271705 %**.
- Appels directs documentés : 6172 ; limites/alertes : 1212 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
