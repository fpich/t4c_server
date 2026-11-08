# Passe 104 — Relocations HIGHLOW de .rdata ciblant le code — groupe 3

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,858.
- Entrées candidates effectivement analysées : 1110.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+11,047**.
- Couverture : **558,863 / 905,117 = 61.744835 %**.
- Appels directs documentés : 125 ; limites/alertes : 985 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
