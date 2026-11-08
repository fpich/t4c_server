# Passe 27 — Mesure de la couverture assembleur

| Indicateur | Passe 26 | Passe 27 | Variation |
|---|---:|---:|---:|
| Octets de `.text` avec preuve vérifiée | 31 480 | 32 796 | **+1 316** |
| Couverture sur 905 117 octets | 3,478 % | **3,623 %** | **+0,145 point** |
| Entrées exportées avec preuve | 94 / 1125 | 94 / 1125 | +0 |
| Couverture des entrées exportées | 8,356 % | 8,356 % | +0,000 point |

Les preuves sont contrôlées **octet par octet contre le PE**, puis dédupliquées. Le dénominateur est la section `.text` originale (905 117 octets). Les preuves nouvellement incluses concernent en majorité les fonctions internes de chargement et les gestionnaires de conteneurs.

**Attention :** la couverture mesure les *preuves présentes et vérifiées*, pas le taux de compréhension complète du comportement serveur.
