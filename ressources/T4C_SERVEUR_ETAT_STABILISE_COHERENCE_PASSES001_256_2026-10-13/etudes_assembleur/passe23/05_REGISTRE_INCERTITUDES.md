# Passe 23 — Registre des incertitudes

| Question | État | Pourquoi |
|---|---|---|
| Origine initiale des entrées du tableau de monstres | INCONNU | Constructeur/copie identifiés, mais pas le producteur initial des données |
| `LootEntry+0x04` | INCONNU | Le chemin OnDeath étudié ne lit pas ce champ |
| `LootEntry+0x00` comme identifiant de modèle | CORROBORÉ | Passe à Objects::Create et indexe 0x5163F4; nom métier exact non exporté |
| Valeur `3` dans Objects::Create | OBSERVÉ, SÉMANTIQUE INCERTAINE | Paramètre constant, probablement classe/mode; aucune énumération prouvée |
| Chance en pourcentage | INFÉRÉ | 1e6 × chance contre RNG 1e8; bornes et distributions exactes à étudier |
| Tous les callbacks `Creatures::Death` = `NPCstructure::OnDeath` | NON CONFIRMÉ | Invocation virtuelle; dépend du type de référence associé |
| Dépôt de tous les objets sélectionnés | FAUX COMME AFFIRMATION GÉNÉRALE | Positions invalides peuvent entraîner une libération |
| SQL/ressource contenant table de monstres | INCONNU | Pas d'accès de peuplement prouvé dans ce périmètre |
| Persistance des objets déposés | INCONNU | Aucun chemin complet vers un INSERT/UPDATE de dépôt établi |
| Correspondance modèles → noms d'objets | INCONNU | Contenu du registre RAM 0x5163F4 non fourni |

Cette passe ne modifie aucun module Python.
