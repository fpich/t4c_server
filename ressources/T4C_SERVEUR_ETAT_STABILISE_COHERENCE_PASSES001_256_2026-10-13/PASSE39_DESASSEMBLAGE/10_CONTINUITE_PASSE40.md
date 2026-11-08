# Continuité — prochaines recherches

1. Analyser le générateur interne `0x458FF0` et le remplissage de la table (`0x4993A0`) pour déterminer la production exacte de chaque octet de masque, sans inventer une clé issue d'un WDA absent.
2. Reconstituer les helpers de sous-collection `0x4A73A0` et `0x4A8210` : champs typés lus, bornes, tailles et adresses de destination.
3. Vérifier la politique de chargement de `0x4A8810` quand les deux fichiers WDA contiennent la même référence de sort (append, remplacement, filtre, journalisation).
4. Comparer la gestion des en-têtes à d'autres collections WDA (créatures, mondes, objets) et distinguer les tables transversales.
5. Sur réception d'un WDA authentique, valider séparément l'en-tête et les enregistrements, sans affirmer une reconstruction du format complet tant que les tests ne le confirment pas.
