# T4C Server — Passe 56, étude statique

Source : `T4C Server(1).exe` (SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`). Point de départ : archive de la passe 55, 500 fichiers conservés à l'identique. Aucune réimplémentation du serveur, aucun fichier Python dans ce ZIP.

**Découverte principale :** l'opérande WDA `var` n'est pas seul à utiliser l'arbre associatif `0x40F230`. Deux branches de traitement à `0x45A7A0` écrivent effectivement des `double` dans les mêmes nœuds : catégories 5 et 20 du dispatch. Le sens fonctionnel de ces 24 catégories reste à qualifier.

**Mesure brute vérifiée :** 124,846/905,117 octets (13.793 %), gain net 1,481; mesure poursuivant la série publiée : 124,729 (13.780 %); mesure prudente conservant le décalage historique de 91 octets : 124,638 (13.770 %). 258 entrées exportées à point d'entrée assembleur retrouvé (sur 1125 exports), contre 259 dans la série précédemment publiée; cet écart d'une entrée n'est pas réconcilié.

Fichiers prioritaires : `01_RAPPORT_PASSE56.md`, `06_DISPATCH_24_CATEGORIES_ET_ECRITURES.tsv`, `07_CHAINES_VAR_LECTURE_ECRITURE.tsv`, `10_MESURES_COUVERTURE_PASSE56.json`. Attention aux limites du désassemblage statique et au code externe MFC.
