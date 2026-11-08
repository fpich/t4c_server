# Limites, collisions et scénarios non résolus — Passe 41

- **CONFIRMÉ** : un doublon *qui atteint* `0x461360` remplace l'ancien pointeur, après destruction de l'objet précédent. Aucun contenu de WDA authentique n'est disponible pour constater un doublon réel dans les données.
- **CONFIRMÉ** : la branche `0x473C1A` signale un sort inactif, tandis que la branche `0x473BC9` peut l'enregistrer; ne pas conclure qu'un sort invalide dans le WDA secondaire écrase forcément le sort du premier WDA.
- **CONFIRMÉ** : l'identifiant clé est traité comme WORD sur ce chemin. Le compteur `+0x3AC` est un champ DWORD distinct d'instance et non la clé de table.
- **INCONNU** : noms, nombre de définitions et collisions réellement présentes dans `T4C Edit.WDA`/`T4C Worlds.WDA`.
- **INCONNU** : les appels virtuels aux validateurs de paramètres ne sont pas tous associés à une méthode nommée; la table des fabriques de la passe 38 reste la source de ce rapprochement.
- **INCONNU** : exceptions MFC, comportement face aux échecs d'allocation ou à des données WDA malformées. Ne pas en déduire une protection mémoire garantie.
- **INCONNU** : si le générateur RNG reçoit des appels avant l'initialisation du masque WDA, malgré la valeur initiale nulle de sa donnée non initialisée.
- **PARTIEL** : les copies `0x4AB130`, `0x4AB1B0`, `0x4AA930` sont documentées au niveau des strides, allocations, branches et nettoyages; certaines méthodes MFC appelées indirectement restent opaques.
