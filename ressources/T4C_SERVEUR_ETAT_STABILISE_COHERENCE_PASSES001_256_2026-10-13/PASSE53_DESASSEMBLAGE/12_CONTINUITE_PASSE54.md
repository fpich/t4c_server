# Suite recommandée — passe 54

1. Décoder les sous-types `skill`, `spell`, `viewflag`, `itemcount`, `equipcount`, `var` et `if` dans la grammaire WDA : sous-code `[OPERAND+0x11]`, paramètres et pointeurs de contexte.
2. Rechercher des chemins de sortie non triviaux du parseur et la gestion exacte des jetons invalides.
3. Examiner les réactions aux branches `range` et `infinite` dans l'évaluateur ; déduire les bornes de `WorldPos` seulement après vérification.
4. Corréler le lexique à des enregistrements WDA authentiques lorsqu'ils seront disponibles ; ne pas fabriquer de fichiers.
5. Achever l'audit des 91 octets historiques et de l'écart des entrées exportées, sans déplacer les définitions de métrique d'une passe à l'autre.

Exclusivement études et désassemblage ; aucun programme de serveur Python.
