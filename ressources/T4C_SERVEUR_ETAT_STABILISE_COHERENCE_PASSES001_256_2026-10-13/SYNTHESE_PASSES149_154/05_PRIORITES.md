# Prochaines priorités

- Examiner les nouvelles fonctions isolées à l'aide de preuves non heuristiques : tables de callbacks enregistrées, contextes de construction C++, métadonnées SEH.
- Vérifier en priorité les grandes lacunes qui suivent un retour (`ret`) et ne peuvent donc pas être raccordées par simple fall-through.
- Réauditer le masque des anciennes relocations en contrôlant les points d'entrée et les chemins entrants.
- Maintenir la distinction entre code statiquement décodé, chemin de contrôle prouvé et comportement observé.
