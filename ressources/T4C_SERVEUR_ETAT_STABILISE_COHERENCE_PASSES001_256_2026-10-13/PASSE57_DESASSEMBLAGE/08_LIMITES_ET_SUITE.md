# Registre des inconnues et propositions pour la passe 58

1. **Propriétaire de `var` non confirmé** : remonter le pointeur de map dans les neuf arguments de `BoostFormula::GetBoost` pour les appels récursifs de `0x45A7A0`, puis comparer les adresses aux structures construites dans `0x45C950`.
2. **Noms des slots virtuels** : résoudre les slots `+0x1A4`, `+0x1A8`, `+0x158` du wrapper avec les tables virtuelles `Unit`, `Character`, `Creatures`, `Objects` et les exportations, en distinguant chaque classe.
3. **Nettoyage de `var`** : retrouver la routine propre au map des expressions. La routine `0x45E3D0` s'applique à un conteneur local observé, sans équivalence prouvée à ce map.
4. **Appels indirects** : la recherche d'appels directs ne démontre pas qu'il n'existe aucun autre appel indirect à `0x45A7A0`.
5. **Sens fonctionnel de `0x45C950`** : la vtable est celle de `SimpleMonster`, mais le nom exact de la méthode slot +0x74 reste INCONNU.
6. **Concurrence et exceptions** : examen statique seulement, sans garantie de sécurité mémoire ni d'absence de fuite.
7. **Dégâts magiques** : aucune formule générale des résistances n'est établie, faute de contenu WDA authentique et de résolution exhaustive des chemins d'effets.
8. **Mesures** : le réaudit selon le vérificateur historique retourne {sum(baseline)} octets au lieu des 124 846 octets publiés comme 'indépendants' en passe 56, soit {124846-sum(baseline)} octets d'écart. L'écart à la série historique de 124 729 octets est de {124729-sum(baseline)}. Ne pas assimiler ces écarts ni le différentiel d'une entrée exportée à un gain de couverture.
