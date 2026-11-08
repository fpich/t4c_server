# Registre de corrections et limitations — passe 24

1. `0x5163F4` : registre **global multi-types**, pas catalogue d'objets exclusivement. Les objets consultent cette table.
2. Capacité `65536` : ce n'est **pas** le nombre de modèles réels.
3. `0x475638` : incrément `0x108` dans **une boucle** et non preuve de format de fichier complet.
4. La recherche `0x48A2D0` résout un identifiant par nom et catégorie ; l'instance créée plus tard possède un autre compteur.
5. Source de définition (SQL/script/fichier) **non identifiée** ; les notes précédentes demeurent archivées et non modifiées.
6. Les niveaux N2/N3/N4 concernent les chemins explicitement examinés, jamais toutes les branches du programme.
7. Mesures de couverture : preuves de lignes machine ≠ code totalement compris ; pas de gain de couverture attribué au dump automatique brut.
