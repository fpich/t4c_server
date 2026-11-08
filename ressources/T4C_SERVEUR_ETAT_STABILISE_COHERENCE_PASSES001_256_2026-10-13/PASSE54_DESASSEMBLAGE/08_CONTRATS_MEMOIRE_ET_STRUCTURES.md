# Contrats mémoire observés — passe 54

| Élément | Découverte | Certitude |
|---|---|---|
| `OPERAND+0x11` | sous-type entier 8 bits des 16 fonctions spéciales | CONFIRMÉ |
| `if` `OPERAND+0x14/+0x18/+0x1C` | trois pointeurs vers des structures allouées séparément | CONFIRMÉ |
| `if` sous-type `2` | écrit à `0x40EAB8` | CONFIRMÉ |
| Paramètre `var` | sous-type `11` (`0xB`) écrit à `0x40E5FE`; construit une chaîne avant le nœud | CONFIRMÉ |
| Famille `skill`/`spell` | quatre couples de paramètres selon présence de `true_` et préfixe `target.` | CONFIRMÉ pour les branchements et sous-types ; sémantique complète non démontrée |
| Arbre associatif `0x40F300` | allocation de nœud `0x30`, liens de nœuds, mise à jour de taille, rotation / recoloration `+0x28` | CONFIRMÉ |
| Parcours `0x40F5E0` | navigation suivant pointeurs enfants / parent, sentinelle `+0x29` | CONFIRMÉ |

L'arbre de `0x40F300` et la recherche `0x40F230` appartiennent à une **famille structurelle comparable**, mais un lien direct vers les sous-types WDA individuels n'est pas déduit des seuls appels constatés. Ne pas renommer arbitrairement le conteneur sans RTTI / données complémentaires.

### Points sensibles

Les allocations `0x40` et `0x20` et les `rep stosd` montrent que les sous-arbres sont conservés par pointeur : ils ne sont pas fusionnés dans un seul nœud. Les erreurs de construction, la libération en cas d'échec et la concurrence dans les contextes évalués ne sont pas intégralement reconstituées. Aucun code de réimplémentation n'a été développé.
