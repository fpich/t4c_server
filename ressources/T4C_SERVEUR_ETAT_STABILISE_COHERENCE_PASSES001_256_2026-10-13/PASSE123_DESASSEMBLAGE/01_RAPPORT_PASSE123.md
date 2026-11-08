# Passe 123 — Desassemblage des cibles DEUXIEME_GENERATION_DIRECTE justifiees par des instructions sources

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,517.
- Entrées candidates effectivement analysées : 39.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+6,796**.
- Couverture : **804,936 / 905,117 = 88.931707 %**.
- Appels directs documentés : 98 ; limites/alertes : 1 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
