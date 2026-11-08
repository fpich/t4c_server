# Passe 96 — Première moitié des entrées de pointeurs de code vérifiés en .rdata

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 5,803.
- Entrées candidates effectivement analysées : 181.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+14,892**.
- Couverture : **379,530 / 905,117 = 41.931596 %**.
- Appels directs documentés : 458 ; limites/alertes : 7 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
