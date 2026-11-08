# Passe 29 — Couverture assembleur vérifiée

Mesure par `suivi_assembleur/mesurer_assembleur.py` à partir des octets de `.text` et des preuves du dossier. **Les octets de la table de saut ou de la `.rdata` ne sont pas comptés comme instructions.**

| Indicateur | Passe 28 | Passe 29 | Variation |
|---|---:|---:|---:|
| Octets `.text` cités et vérifiés | 35,858 | 37,767 | +1,909 |
| Couverture (sur 905 117 octets) | 3.962 % | **4.173 %** | +0.211 point |
| Points d'entrée exportés couverts | 97 | 104 | +7 |
| Lignes d'instructions de passe 29 acceptées | — | 792 | 0 rejet |

L'augmentation est mesurée après **déduplication des chevauchements** avec les 28 passes précédentes. Il ne s'agit **pas** d'un pourcentage de code serveur entièrement compris.
