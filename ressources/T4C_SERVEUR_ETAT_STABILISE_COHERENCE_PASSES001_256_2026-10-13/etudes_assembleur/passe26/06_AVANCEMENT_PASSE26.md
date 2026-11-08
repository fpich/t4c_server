# Passe 26 — Couverture assembleur réelle

**Mesure principale : 3.478 %** des octets de `.text` cités dans des preuves assembleur et vérifiés octet pour octet.

| Indicateur | Passe 25 | Passe 26 | Variation |
|---|---:|---:|---:|
| Octets vérifiés | 30 633 | 31 480 | **+847** |
| Couverture de `.text` | 3,384 % | **3,478 %** | **+0,094 point** |
| Fonctions exportées dont l'entrée est citée | 94 / 1 125 | 94 / 1 125 | 0 |
| Couverture des entrées exportées | 8,356 % | 8,356 % | 0 |
| Taille de `.text` | 905 117 | 905 117 | 0 |

Les octets sont cumulés **sans double comptage**, après lecture du binaire. Les instructions qui ne correspondent pas aux octets du PE sont exclues. L'analyse du chargeur et des thunks extérieurs n'ajoute pas nécessairement de nouvelles entrées de fonctions exportées.

**Limite :** cette couverture mesure uniquement la superficie des extraits sauvegardés ; elle ne signifie pas que 3,478 % des comportements du serveur sont intégralement reconstitués. Il faut examiner séparément la profondeur des fonctions, les conditions d'exécution et les données externes.

Le travail de cette passe concerne l'import MFC42, les champs `Creatures_Items`, et les pas internes 16 / 40 / 264 / 272 octets. Aucun développement Python serveur ajouté.

Les métriques complètes figurent dans `suivi_assembleur/PASSE26_MESURES.json`, calculées avec l'algorithme d'audit déjà présent dans l'archive.
