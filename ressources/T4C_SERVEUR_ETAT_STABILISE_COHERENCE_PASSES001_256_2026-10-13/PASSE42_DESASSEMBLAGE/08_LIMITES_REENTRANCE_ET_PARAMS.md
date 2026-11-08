# Limites et points à ne pas sur-interpréter

- **CONFIRMÉ** : 14 clés enregistrées aux sites statiques identifiés; la recherche par WORD et l'appel indirect correspondent à `0x460C00`.
- **CONFIRMÉ** : `0x473A2D` appelle la première entrée de la vtable de la structure de type créée, pour **chaque** paramètre présent.
- **CONFIRMÉ** : les types 11 et 12 renvoient 1 localement; le rejet pour **absence** de paramètres, indépendant, précède cet appel.
- **CONFIRMÉ** : type 10 délègue au validateur de type 1 dans les autres cas que le paramètre 3.
- **PARTIEL** : des validateurs utilisent des conversions de chaînes ou numériques, mais le sens métier des IDs de paramètres ne peut être entièrement attribué sans données réelles.
- **INCONNU** : contenu réel des WDA, quels types sont utilisés dans les sorts et avec quelle distribution de paramètres, et cas d'erreur lors des allocations MFC.
- **INCONNU** : présence d'autres chemins de fabrique en dehors des 14 sites d'enregistrement statiques; ne pas assimiler un dénombrement de sites à un domaine mathématiquement exhaustif.
- **INCONNU** : conséquences dynamiques d'une modification des registres pendant un parcours, et sûreté en concurrence interthreads; cette passe est exclusivement statique.
- **MÉTHODE** : les vtables sont lues en `.rdata` à `offset_fichier = 0xDE000 + (VA - 0x4DE000)`. Les instructions documentées dans les preuves sont comparées à `.text`. Les octets `.rdata` ne sont pas ajoutés à la couverture de `.text`.
