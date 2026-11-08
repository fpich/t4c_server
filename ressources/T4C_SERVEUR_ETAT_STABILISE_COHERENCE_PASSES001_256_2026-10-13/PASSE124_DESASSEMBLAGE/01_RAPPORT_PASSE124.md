# Passe 124 — Desassemblage des cibles TROISIEME_GENERATION_DIRECTE justifiees par des instructions sources

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,372.
- Entrées candidates effectivement analysées : 19.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+4,686**.
- Couverture : **809,622 / 905,117 = 89.449430 %**.
- Appels directs documentés : 133 ; limites/alertes : 0 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
