# Passe 112 — Dernière fermeture du graphe : destinations directes nouvelles encore manquantes

- PE SHA256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Code `.text` base `0x401000` ; taille 905,117 octets.
- Nouvelles instructions justificatives : 1,757.
- Entrées candidates effectivement analysées : 30.
- Octets nouveaux, vérifiés et distincts du masque précédent : **+4,575**.
- Couverture : **767,001 / 905,117 = 84.740536 %**.
- Appels directs documentés : 95 ; limites/alertes : 6 ; instructions rejetées pour conflit : 0.

Les chemins indirects sont laissés ouverts. Les appels directs ne prouvent pas nécessairement la fonction exacte lorsque la structure des tables virtuelles intervient. Compteur statique uniquement, pas de validation comportementale.
