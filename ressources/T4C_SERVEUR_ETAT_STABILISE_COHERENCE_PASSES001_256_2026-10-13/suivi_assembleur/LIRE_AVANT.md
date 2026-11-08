# Mise à jour méthodologique : mesure de l'étude assembleur

Cette mise à jour **ne reconstruit pas un nouveau sous-système**. Elle corrige la façon de mesurer les progrès de recherche : l'indicateur principal devient la couverture documentée du désassemblage de `T4C Server.exe`, en remplacement de l'estimation de réimplémentation Python 2–5 %.

- **2,933 %** : octets d'instructions distincts cités dans les preuves et vérifiés dans le binaire serveur.
- **7,911 %** : points d'entrée exportés dont une instruction apparaît dans les preuves.
- Aucun de ces chiffres n'est un taux de compréhension exhaustive.
- **141 fichiers** de la passe 23 inchangés, huit fichiers de suivi ajoutés.

Fichiers : `RAPPORT_AVANCEMENT_ASSEMBLEUR.md`, `MESURES.json`, `INVENTAIRE_EXPORTS.tsv`, `COUVERTURE_PAR_CLASSE.tsv`, `PREUVES_VERIFIEES.tsv`, `HISTORIQUE_PAR_PASSE.tsv`, et `mesurer_assembleur.py`.

Le projet Python reste en pause. Les anciennes notes sont conservées, avec leur terminologie, y compris l'ancien pourcentage de reconstruction fonctionnelle. Le rapport de suivi est désormais prioritaire pour interpréter le **taux d'étude assembleur**.
