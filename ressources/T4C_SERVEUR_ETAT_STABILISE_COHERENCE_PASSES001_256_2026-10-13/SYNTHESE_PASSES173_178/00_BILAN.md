# T4C Serveur — Passes 173 à 178

- Couverture : **824 253 / 905 117 = 91.065906 %** (historique statique).
- Nouveaux octets uniques : **+1 112** ; nouvelles instructions : **360**.
- Cinq continuations fondées sur des instructions sources archivées et déjà couvertes.
- Concordance du décodage avec GNU et LLVM pour les instructions nouvellement promues.
- Aucune création de code à partir d’une table de données, d’un alignement ou d’un prologue non référencé.
- **Limite :** la fiabilité de l’ensemble du masque antérieur reste à réauditer, ces passes certifient uniquement leurs ajouts.

| Passe | Zone | Octets | Instructions |
|---|---|---:|---:|
| 173 | Référentiel et exclusions | 0 | 0 |
| 174 | `0x0045ac11` — Dispatcher WDA catégorie 5 | +136 | 47 |
| 175 | `0x0045b9b2` — Dispatcher WDA catégorie 20 | +118 | 40 |
| 176 | `0x004a8a6e` — Routines internes : continuation A | +516 | 168 |
| 177 | `0x004a8da8` — Routines internes : continuation B | +275 | 85 |
| 178 | `0x0048d920` — Routine d’application du mana et audit | +67 | 20 |

## Points à poursuivre

- Vérifier les pointeurs des fonctions isolées et les entrées via les métadonnées C++/SEH.
- Réviser les sources historiques dont une frontière s’arrête au milieu d’une instruction, sans reclasser les données comme du code.
- Documenter les effets fonctionnels et invariants des branches déjà désassemblées.
