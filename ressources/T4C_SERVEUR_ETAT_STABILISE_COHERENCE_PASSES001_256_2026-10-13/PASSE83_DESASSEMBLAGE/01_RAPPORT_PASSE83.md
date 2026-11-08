# Passe 83 — Entrees exportees historiquement non couvertes

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 2,380.
- Entrées candidates effectivement analysées : 51.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+7,296**.
- Couverture : **271,782 / 905,117 = 30.027278 %**.
- Appels directs documentés : 121 ; limites/alertes : 0 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
