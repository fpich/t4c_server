# Contrôles et limites

- Les preuves de la passe 35 sont issues de `objdump -M intel` et tous leurs octets sont vérifiés contre la section `.text` du binaire.
- Les instructions ajoutées ne sont comptées qu'une fois, même en cas de chevauchement des plages.
- Les huit sites sont des appels directs relevés, et non un inventaire absolu de tous les enregistrements dynamiques.
- Les clés provenant de `+0x3AC` ne peuvent pas être nommées avec certitude sans le chargement des définitions.
- Les codes de callbacks sont propres aux chemins observés ; ne pas donner la même sémantique à tous les handlers.
- Les listes peuvent être mutées pendant un callback : absence de preuve de sécurité en concurrence et d'absence d'invalidation de parcours.
- Aucune exécution de `T4C Server.exe` n'a été effectuée.
- Les statistiques de couverture mesurent des octets attestés et non une exhaustivité comportementale.
