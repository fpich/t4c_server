# Passe 58 — Programme de recherche

**Axe prioritaire** : identifier les cibles réelles des slots virtuels `+0x1A4`, `+0x1A8` et `+0x158` selon les classes d'unités, et établir le vrai contrat des messages construits par `0x45C890`.

**Second axe** : remonter le paramètre map utilisé par `0x40F230` à travers le passage `0x45C950 -> 0x45C890 -> 0x45A7A0 -> 0x40C350`, comparer sa portée avec celle de la collection temporaire et identifier le destructeur du map WDA.

**Méthode** : annexer uniquement les fragments assembleur effectivement étudiés, vérifier tous les octets contre `.text`, comparer la nouvelle union aux archives et conserver les incertitudes sous leur qualification actuelle.
