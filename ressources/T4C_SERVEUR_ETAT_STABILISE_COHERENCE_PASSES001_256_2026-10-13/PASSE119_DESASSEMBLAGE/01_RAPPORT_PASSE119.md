# Passe 119 — Desassemblage des cibles APPELS_DIRECTS_PREUVES justifiees par des instructions sources

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,212.
- Entrées candidates effectivement analysées : 29.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+5,592**.
- Couverture : **779,616 / 905,117 = 86.134279 %**.
- Appels directs documentés : 71 ; limites/alertes : 4 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
