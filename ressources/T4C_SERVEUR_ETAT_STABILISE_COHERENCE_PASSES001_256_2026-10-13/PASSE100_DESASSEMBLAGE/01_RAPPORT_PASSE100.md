# Passe 100 — Dernière génération de cibles directes et bilan des tables indirectes

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 6,464.
- Entrées candidates effectivement analysées : 128.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+17,623**.
- Couverture : **496,937 / 905,117 = 54.903068 %**.
- Appels directs documentés : 143 ; limites/alertes : 0 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
