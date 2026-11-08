# Registre des corrections et incertitudes — passe 26

| Point | Statut | Justification |
|---|---|---|
| `0x4D1B78` appartient au corps SQL de T4C | CORRIGÉ | thunk importé, `jmp [0x4DE1BC]`, MFC42.DLL ordinal 5176 |
| `0x4D1B60 / 66 / 72` dans DLL externe | CONFIRMÉ | sauts IAT et table des imports |
| `Creatures_Items` et colonnes `ItemID/DropPercentage` | CONFIRMÉ | chaînes `.data`, sites d'appel |
| Taille de `MonsterStructure` égale à 264 octets | NON DÉMONTRÉ | 264 correspond seulement à un pas de tableau |
| Taille de `ObjectStructure` égale à 272 octets | NON DÉMONTRÉ | 272 correspond seulement à un pas de tableau |
| Entrées de tableau interne de 16 octets | CONFIRMÉ | `sar esi,4` et `shl esi,4` dans le helper |
| Entrées de sous-conteneur de 40 octets | CONFIRMÉ | divisions et indexations dans `0x49FBE0` |
| Valeurs concrètes de butin et tables complètes | INCONNU | dépendances de données absentes |
| Rôle exact des imports MFC par ordinal | À CORROBORER | DLL d’origine nécessaire pour résoudre les symboles |
