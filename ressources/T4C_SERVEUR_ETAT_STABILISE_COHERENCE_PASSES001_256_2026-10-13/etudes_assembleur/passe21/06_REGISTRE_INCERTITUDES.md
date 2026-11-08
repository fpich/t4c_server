# Incertitudes après la passe 21

| Zone | Confirmé par le binaire | Non démontré |
|---|---|---|
| Armure | `Character::attacked` utilise `GetAC`, soustrait la valeur et impose 1 à son étape si résultat non positif | Formule de dégâts finale pour chaque arme, sort et type de cible |
| `Character::hit` | Conversion d'un `double`, HP clampés à zéro, message et voie vers `Death` | Toutes les conditions de flags/protections et type complet de notification |
| `Creatures::hit` | HP − dégâts ; chemins distincts Death / SetHP | Identité du pointeur filtré par `0x186A0`, conditions de toutes les créatures |
| Résistances | Six accesseurs et six « True » ; composantes `100` et bonus | Application aux dommages des sorts, sens exact de l'échelle et limites |
| XP groupe | Bonus capé à 3, partage, pénalités niveaux, SetXP | Détails de `GetRangeGroupMembers`, conversions extrêmes, cas de race/flags |
| Mort des créatures | Retrait et dépôt observés en passe 20, notifications | Table de butin, provenance des objets, chance de drop, toutes voies XP |
| Précision | Observations de la passe 20 | Toute la chaîne hit/miss et les interactions bonus |

Ne pas considérer ce dossier comme du code source original ou une preuve de compatibilité d'exécution.
