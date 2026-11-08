# Passe 188 — Deux fonctions isolées candidates

- `0x4BAA90` : prologue x86, enregistrement SEH, appels à `0x4BBB70`, comparaison de chaînes, appel à l'allocateur `0x441FF0`. Ce chemin **teste explicitement** la valeur renvoyée par l'allocateur à `0x4BAB1E` avant de poursuivre certaines écritures.
- `0x434670` : prologue x86, enregistrement SEH, appels virtuels sur les slots `+0x04` et `+0x08`, appels directs notamment vers `0x4346E0` et `0x4346F0`.

Les deux architectures sont compatibles avec des fonctions compilées. Cependant, **leur provenance de contrôle de flot n'est pas établie** ; aucune instruction n'est donc ajoutée au compteur sur cette seule base.
