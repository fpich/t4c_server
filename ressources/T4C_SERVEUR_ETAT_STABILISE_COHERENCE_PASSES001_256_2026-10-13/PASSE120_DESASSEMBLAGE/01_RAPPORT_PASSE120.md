# Passe 120 — Desassemblage des cibles APPELS_DIRECTS_MASQUE justifiees par des instructions sources

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 5,703.
- Entrées candidates effectivement analysées : 74.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+13,903**.
- Couverture : **793,519 / 905,117 = 87.670323 %**.
- Appels directs documentés : 350 ; limites/alertes : 8 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
