# Continuité des travaux — au-delà de la passe 22

1. Identifier les fonctions appelées par les branches de perte d'objets pour fermer le chemin « inventaire → références → dépôt ».
2. Désassembler les routines construisant/chargeant les enregistrements de drop à 16 octets dans MonsterStructure ; documenter leur source (fichier, base, script).
3. Corréler les listes d'objets produites par NPCstructure::OnDeath aux listes reçues par Creatures::Death et WorldMap::deposit_unit.
4. Reconstituer les règles exactes de sélection (probabilités, drapeaux exclus, quantité) par analyse statique ; tester ultérieurement avec captures de serveur original si disponible.
5. Garder le serveur Python en pause et préserver les modules déjà produits sans les enrichir à partir d'hypothèses.

Le pourcentage global reste une estimation non mesurée de 2–5 %. Des sous-systèmes détaillés ne permettent pas de déduire la couverture du binaire total.
