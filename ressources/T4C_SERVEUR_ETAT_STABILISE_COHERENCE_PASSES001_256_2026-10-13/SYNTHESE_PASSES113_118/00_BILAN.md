# Passes 113–118 — Continuations et sauts indirects

Base : 767 001 / 905 117 (84,741 %). Final : **774 024 / 905 117 = 85,516 %**. Gain **+7 023 octets uniques**.

| Passe | Objet | Nouveaux octets | Couverture cumulée |
|---|---|---:|---:|
| 113 | STRAIGHT_LINE_CONTINUATION | +6,396 | 85.447 % |
| 114 | PROVEN_FALLTHROUGH | +178 | 85.467 % |
| 115 | PROVEN_FALLTHROUGH | +336 | 85.504 % |
| 116 | NEW_DIRECT_EDGES | +113 | 85.516 % |
| 117 | INDIRECT_SWITCHES | +0 | 85.516 % |
| 118 | CLOSURE | +0 | 85.516 % |

**P113 :** le bloc commençant à `0x4CBB15` est la continuation démontrée de l'instruction vérifiée `0x4CBB13: mov esi,edi` ; il ajoute **6 396 octets** dans la région `0x4CBB15–0x4CD430`.

**P114–116 :** explorations de continuations et des cibles directes de leurs nouveaux appels, pour **627 octets** supplémentaires.

**P117 :** 22 sauts indexés résolus par tables de pointeurs et bornes (`CMP` / branche de dépassement ou table secondaire d'indices vérifiée) ; aucune destination ne justifie une augmentation de couverture, étant déjà présente dans le masque.

**P118 :** fermeture sans nouvel octet ; des entrées de contrôle supplémentaires ne sont pas inventées pour augmenter le pourcentage.

Les plages `0x43EF09–0x4404E7` et `0x4B9CD6–0x4BA9E0` ne disposent d'aucun appelant direct prouvé dans les preuves parcourues : elles restent hors masque malgré des prologues plausibles. Une instruction x86 plausible ne suffit pas à certifier qu'il s'agit de code atteignable.
