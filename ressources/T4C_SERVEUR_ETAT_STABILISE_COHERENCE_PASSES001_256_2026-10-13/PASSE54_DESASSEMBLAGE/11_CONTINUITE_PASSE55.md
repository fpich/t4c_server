# Prochaine étude — Passe 55

1. Tracer les sous-types `OPERAND+0x11` dans `BoostFormula::GetOperandValue` pour vérifier exactement les effets en lecture et en écriture sur les structures de compétence, de variable et d'inventaire.
2. Relier les opérateurs conditionnels écrits par `if` aux branches de l'évaluateur, notamment le comportement court-circuit / évaluation de toutes les branches (non établi).
3. Réexaminer les messages de diagnostic, les allocations nulles et le désassemblage autour de l'arbre `0x40F300` avant toute conclusion de sûreté mémoire.
4. Retrouver les chemins directs entre `var`, les structures de contexte et les routines de recherche / insertion d'arbre. Ne pas généraliser un lien non vérifié.
5. Corriger éventuellement l'écart historique des 91 octets par un registre d'adresses explicite, sans réécrire les rapports précédents.

Toujours désassemblage et preuves, sans reconstruire le serveur Python.
