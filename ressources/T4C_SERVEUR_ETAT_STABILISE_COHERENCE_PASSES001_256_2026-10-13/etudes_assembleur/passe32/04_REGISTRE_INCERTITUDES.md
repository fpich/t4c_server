# Limites et questions non résolues — passe 32

- Le nom exporté `DispellEffectWithFlag` ne démontre pas une dissipation par catégorie métier ; la comparaison mémoire existe, sa signification détaillée reste inconnue.
- Le code numérique `9` est transmis à certains callbacks pendant `RemoveEffect` et `DestroyEffects`, mais les fonctions concrètes branchées par chaque registre restent à cartographier.
- `UnitEffectManager::Destroy` est une destruction du registre et ne prouve pas l'arrêt de tous les effets du monde.
- Le compteur global des effets est atomique au niveau de l'appel à `InterlockedIncrement` ; sa persistance et la politique en cas de débordement ne sont pas documentées.
- La cadence de traitement, les règles d'expiration, le cumul et la résistance magique ne sont pas suffisamment compris.
- **Audit de couverture** : un nouveau recensement de toutes les preuves présentes dans la passe 31 retrouve 45 855 octets contre 45 764 annoncés antérieurement (+91). L'écart est signalé, pas attribué au travail de passe 32. Le nouveau calcul exclut les lignes historiques dont les octets diffèrent du binaire.
- Les anciens documents sont conservés sans correction rétroactive pour préserver l'historique de recherche.
