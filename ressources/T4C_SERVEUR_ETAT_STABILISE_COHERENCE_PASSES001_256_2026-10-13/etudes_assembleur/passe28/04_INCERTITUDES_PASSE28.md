# Incertitudes et garde-fous — passe 28

- `+0x24` est un **slot virtuel** non résolu sur les types concrets rencontrés ; les codes `3` et `4` sont des arguments observés, pas encore des noms d’action officiels.
- `+0x1C4` est invoqué après des contrôles de marquage et de quantité ; sa signature est inconnue pour les instances en jeu.
- Le bloc de 16 emplacements se trouve sur un autre chemin de recherche d’objets ; les noms « équipement » et « inventaire » sont liés au contexte de `Character` et restent à préciser pour chaque membre de structure.
- `0x4DE548` est une fonction importée indirecte utilisée pour la comparaison dans le sous-système des groupes ; le nom de l’import doit être obtenu depuis les tables importées ou la DLL, et non deviné.
- Aucun chemin prouvé ne relie encore les groupes de la base de données au tirage d’un objet à l’usage. La passe 28 documente des composants adjacents et le chemin de consommation, **pas une chaîne complète de récompense**.
- Les résultats restent statiques, non testés en exécution. Cette archive exclut les projets expérimentaux de serveur Python.
