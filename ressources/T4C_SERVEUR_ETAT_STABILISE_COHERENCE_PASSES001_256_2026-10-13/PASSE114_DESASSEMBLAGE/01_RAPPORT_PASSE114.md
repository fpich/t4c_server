# Passe 114 — Frontières de continuité après instructions sources vérifiées

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 70.
- Entrées candidates effectivement analysées : 1.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+178**.
- Couverture : **773,575 / 905,117 = 85.466851 %**.
- Appels directs documentés : 14 ; limites/alertes : 0 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
