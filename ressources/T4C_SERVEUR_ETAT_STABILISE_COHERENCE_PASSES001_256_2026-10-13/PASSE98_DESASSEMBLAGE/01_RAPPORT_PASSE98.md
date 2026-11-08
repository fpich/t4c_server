# Passe 98 — Cibles des appels directs cumulées depuis les passes 89-97

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 12,413.
- Entrées candidates effectivement analysées : 258.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+33,373**.
- Couverture : **453,021 / 905,117 = 50.051098 %**.
- Appels directs documentés : 465 ; limites/alertes : 29 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
