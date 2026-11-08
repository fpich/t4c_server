# Mesure de couverture — méthodologie et limites (passe 17)

Source : `T4C Server(1).exe` (PE32 x86) ; inventaire existant de **1125 exports**. Nombre d'instructions ou de fonctions internes total non mesuré exhaustivement.

## Mesures calculables et reproductibles

- Exports nommés inventoriés : **1125** (noms fournis par la table d'exports, et non des reconstructions approfondies).
- Appels directs vers les trois fonctions sondées : **27** sites x86 (`BCObjectChanged` 7, `BCObjectRemoved` 9, `remove_world_unit` 11). **Un site est une instruction CALL ; non un comportement distinct prouvé ni une fonction reconstruite.** Les appels indirects ne sont pas comptés.
- Encodeurs de paquets validés localement : **4** (S2C 1, 11, 12, 16). Ils testent uniquement l'ordre de sérialisation, **sans exécution du serveur Windows original**.
- Taille binaire SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.

## Pourquoi le pourcentage global ne franchit pas automatiquement 5 %

Il existe trois métriques distinctes :
1. **Noms identifiés** : connaître un nom exporté ne reconstruit pas l'implémentation.
2. **Analyse statique** : documentation partielle des blocs et des formats, couverture variable selon le sous-système.
3. **Reconstruction fonctionnelle** : modules compilables et testés en isolation ; aucune implémentation globale serveur fonctionnelle ou équivalente n'est disponible.

L'estimation qualitative globale antérieure de **2–5 %** n'est pas calculable rigoureusement avec les données actuelles. Elle n'est pas augmentée mécaniquement. À l'avenir, conserver deux colonnes : couverture statique mesurée (nombre de fonctions examinées / dénominateur défini) et comportement réimplémenté et testé (scénarios conformes / scénarios spécifiés). Ne pas assimiler tests locaux au test d'un serveur complet.

## Critères suggérés pour un progrès mesuré

- Identifier les bornes des fonctions du cœur monde/réseau et les relations appelants-appelés.
- Implémenter un paquet et ses erreurs, puis disposer de trames de référence du vrai serveur/client pour test différentiel.
- Implémenter un chemin complet création / déplacement / disparition d'unité dans un serveur expérimental avec tests de visibilité, segmentation et filtrage.
- Mesurer les scénarios passés et ratés, publier le dénominateur, la méthode et la liste des zones non couvertes.
