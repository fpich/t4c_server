# Continuité des travaux — passe 23

**Priorité : désassemblage serveur.** Conserver le projet Python comme état historique ; pas d'implémentation nouvelle à cette passe.

Nouvelle priorité d'analyse : identifier les routines qui remplissent `MonsterStructure+0xB4/0xB8/0xBC`, les définitions initiales de `NPCstructure`, et le composant qui peuple le registre de modèles à `0x5163F4`. Puis cartographier les traitements SQL/ressources uniquement s'ils sont observés.

Attention à la différence : objets sélectionnés en mémoire ≠ objets effectivement déposés ≠ objets persistés. Les trois étapes sont distinctes et doivent recevoir des preuves individuelles.
