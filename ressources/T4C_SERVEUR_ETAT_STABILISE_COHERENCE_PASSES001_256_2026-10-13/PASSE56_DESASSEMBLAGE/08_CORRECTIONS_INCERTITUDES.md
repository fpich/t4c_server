# Corrections et incertitudes — passe 56

- **Corrigé :** l'appel à `0x442060` à la fin de la branche `var` ne permet pas de conclure à la destruction du nœud `[esi]`. L'adresse fournie au libérateur provient d'une variable locale représentant une chaîne/temporaire, distincte de `esi`.
- **Établi :** deux sites d'écriture dans des nœuds issus de `0x40F230`, `0x45ACF5` et `0x45BA83/8B`.
- **Établi :** la table de 24 catégories est distincte de la table des 12 sous-types et des 113 sélecteurs WDA.
- **Inconnu :** provenance et portée des conteneurs `var` dans les différents appels; lien effectif entre les arbres des trois chemins.
- **Inconnu :** conventions de partage de chaîne `ptr-1`, rôle du byte 0xFF et éventuelle protection multi-thread du pool.
- **Inconnu :** destructor exact du conteneur de variables, persistance et gestion des exceptions.
- **Inconnu :** correspondance entre les catégories 5/20 et une commande de formule nommée par les fichiers WDA; ne pas inventer ces noms.
- **Alerte :** table de saut de 24 pointeurs conservée comme donnée, ses 96 octets ne comptent pas dans la couverture instructionnelle.
- **Mesure :** +117 octets entre notre recalcul indépendant de la passe 55 et le chiffre publié, ainsi que l'écart historique de 91 octets : différences explicitement consignées, sans hausse artificielle.
- **Exportations :** 258 débuts d'instructions vérifiés dans la section `.text` contre 259 publiés à la passe 55; aucun nouveau début d'export n'est apporté par la passe 56, donc ne pas surinterpréter l'écart.
- **Contrôle :** 536 lignes d'anciennes preuves client/serveur ne correspondent pas à l'exécutable serveur; elles sont exclues des octets vérifiés. Zéro rejet dans les seules nouvelles preuves de passe 56.
