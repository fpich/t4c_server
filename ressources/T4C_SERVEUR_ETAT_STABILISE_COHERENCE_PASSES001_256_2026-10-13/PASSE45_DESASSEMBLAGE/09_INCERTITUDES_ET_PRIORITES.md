# Passe 45 — Registre de limites et pistes prioritaires

1. **Collision mémoire** : `AddBoost` ne vérifie pas l'ID avant insertion ; `SetBoost` s'arrête au premier ID correspondant ; `QueryBoost` agrège par *stat*, indépendamment de l'ID. Les chemins de chargement, la détection de doublons SQL et la suppression multiple par ID demandent encore des contrôles spécifiques.
2. **Persistance** : les requêtes du tableau `Boosts` sont explicites ; l'échappement de texte des formules et les contraintes d'unicité réelles ne sont pas confirmés par le désassemblage étudié. Ne pas transposer directement un format SQL en API sûre.
3. **Exhaustion** : `Unit::DealExhaust` est commun, mais `Get/SetExhaust` diffèrent. La variante de base est un stub ; `Character` et `Creatures` disposent de stockage. Il faut suivre leurs effets sur la vitesse réelle / le client avant de prétendre que chaque expiration modifie le mouvement.
4. **Statut réseau** : `Character::PacketStatus` appelle des getters visibles, mais aucune émission immédiate pour un boost individuel n'est établie par ces preuves.
5. **Libs MFC** : les import thunks à `0x4D....` ne sont pas renommés sans DLL authentifiée ; certains détails de chaînes et d'itération sont donc hors de portée.
6. **PASSE 46** : relier les getters boostés aux formules de combat et à la diffusion des paquets de statistiques ; inspecter les contraintes de la table SQL `Boosts` si un schéma authentique est disponible.

Les incertitudes sont documentées : ne pas extrapoler vers un serveur Python ou un client modifié.
