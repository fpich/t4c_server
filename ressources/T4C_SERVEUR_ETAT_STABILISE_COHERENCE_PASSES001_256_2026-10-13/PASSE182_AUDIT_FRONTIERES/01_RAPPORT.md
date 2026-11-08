# Passe 182 — Frontieres historiques reconstruites

Trois masques de la passe 178 coupaient une instruction x86 en plusieurs octets :

| Source entiere deja couverte | Instruction partiellement masquee | Nouvelle plage |
|---|---|---|
| `0x41305C : 8A 4D F3` | `0x41305F : 8A 45 F3` | `0x413060–0x4132F7` |
| `0x44F5C7 : 8B 46 24` | `0x44F5CA : 89 46 20` | `0x44F5CC–0x44F6ED` |
| `0x49EBCD : 8B 16` | `0x49EBCF : 8D 45 E4` | `0x49EBD0–0x49F1F0` |

La troisieme plage s'etend jusqu'a `0x49F1F0` (fin exclue), avec les deux octets nouveaux de l'instruction a `0x49F1EE` ; la seconde moitie de cette instruction etait deja couverte. Les trois parcours sont ancres sur une instruction source couverte et ne traversent pas de retour ou de saut sans retour non resolu dans leur fenetre.

**Point non promu :** la region `0x493A80–0x494098` contient des instructions x86 plausibles, mais la provenance de l'instruction d'entree complete n'est pas suffisamment justifiee par le masque conserve. Les blocs a `0x4BAA90` et `0x434670`, apres alignement NOP, restent egalement des fonctions candidates sans appelant confirme.
