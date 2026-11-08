# Limitations et priorités — Fin passe 88

### Ce qui reste non résolu

- **45** alertes de parcours recensées sur les six passes (branches sortant des fenêtres, décodages absents, cibles indirectes, ou chemins terminés volontairement).
- Les `CALL` indirects (tables virtuelles, pointeurs de fonction, imports) apparaissent dans les désassemblages mais leurs cibles ne sont pas résolues par cette méthode.
- Les fonctions internes sans export conservent un nom de provenance (`CALL_target_XXXXXXXX`) et ne doivent pas recevoir de rôle métier non prouvé.
- Les chemins d'exception C++/SEH et les éventuels blocs dynamiques n'ont pas été entièrement explorés ; une grande fonction couverte par son graphe direct n'est donc pas nécessairement reconstituée.
- La mesure est une borne de couverture **des instructions trouvées**, pas une mesure de validation d'exécution.

### Priorités proposées pour les passes 89 à 94

1. Relever toutes les nouvelles cibles de `CALL` direct encore non couvertes, notamment celles émises par le grand graphe Sysop.
2. Distinguer les fonctions internes par leurs appelants et les tables de symboles existantes, puis examiner leur prologue, la convention d'appel et la valeur de retour.
3. Identifier les cibles des branchements indirects à partir de tables de saut valides, sans désassembler du code arbitraire ni attribuer de couverture aux données.
4. Étendre les graphes d'exception SEH et réauditer les frontières de fonctions, particulièrement en présence d'instructions intercalées et de sections de données.
5. Continuer à recalculer les masques par passe, avec un second audit indépendant avant publication.
