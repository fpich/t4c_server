# Points non résolus — passe 22

1. Valeurs concrètes du registre `PVPDeath` : aucune ruche Windows de serveur n'est fournie ; seules les clés sont prouvées.
2. Entrées exactes en mémoire de la table de seuil XP `0x511B10` : adresse/indexation trouvées, mais source/initialisation de la table à confirmer.
3. Arrondis et limites dans la conversion x87 et calcul or : code assembleur documenté, pas de tests dynamiques.
4. Liste du sac et propriété de transfert/dépôt : appels de quantités et de liste identifiés, les conditions de chaque branche sont encore à mapper.
5. Équipement : boucle de 16 pointeurs ; références nulles et exclusions observées, mais certaines fonctions virtuelles non nommées.
6. Monstres : `double` à `dropEntry+8` et pas de 16 octets prouvés, mais ni objet exact, ni table concrète, ni taux réel de drop.
7. Le seuil `chance*1e6` comparé à un tirage `0..100e6` n'autorise pas à présenter une probabilité générale sans vérifier les bornes et flags du générateur.
8. Aucune preuve de comportement pour les cas de mémoire invalide, concurrence, ressources rares ; le serveur original n'a pas été exécuté.
9. Confirmation du lien entre objets sélectionnés par `NPCstructure::OnDeath` et `WorldMap::deposit_unit` à retrouver via la liste en argument de sortie.
