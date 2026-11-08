# Passe 87 — Cibles directes du systeme et de la logique serveur

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 3,056.
- Entrées candidates effectivement analysées : 52.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+8,508**.
- Couverture : **329,857 / 905,117 = 36.443576 %**.
- Appels directs documentés : 91 ; limites/alertes : 6 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
