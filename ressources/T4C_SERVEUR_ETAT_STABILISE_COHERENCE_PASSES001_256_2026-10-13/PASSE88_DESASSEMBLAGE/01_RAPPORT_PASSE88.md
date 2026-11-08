# Passe 88 — Cibles directes nouvelles et fonctions internes du serveur

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 5,201.
- Entrées candidates effectivement analysées : 98.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+13,831**.
- Couverture : **343,688 / 905,117 = 37.971666 %**.
- Appels directs documentés : 177 ; limites/alertes : 13 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
