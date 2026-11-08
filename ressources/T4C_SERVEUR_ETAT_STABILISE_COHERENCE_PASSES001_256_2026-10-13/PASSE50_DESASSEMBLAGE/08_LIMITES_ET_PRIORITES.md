# Précautions et incertitudes de la passe 50

1. Le signe x87 utilisé dans `0x4C6780` est testé dans plusieurs étapes ; son interprétation comme dégâts/soin doit conserver l'expression évaluée et les conditions de chance.
2. La branche offensive du type 1 appelle `attacked` et `hit`, mais **aucun getter élémentaire n'a été observé directement** : ne pas généraliser une formule de dégâts magiques.
3. Les bonus, armure, PVP et flags de cible peuvent influencer les effets ; les différents appels et sorties anticipées nécessitent une simulation/validation du graphe, absente ici.
4. Les appels à `SetHP` et aux paquets `0x21`/`0x45` sont visibles ; le nombre réel de notifications par événement dépend des classes et des branches.
5. Les vtables de Unit, Character, Creatures et Objects sont résolues statiquement ; d'autres classes dérivées ou DLL externes ne sont pas couvertes.
6. La perte d'objets à la mort n'est pas assimilée à `DropUnit` sans appel démontré ; les taux du registre Windows ne sont pas fournis.
7. `DropUnit` examine la portée, les quantités et les collisions ; son comportement sur des inventaires mutés concurremment demeure non testé.
8. Le timer appelant `Unit::CleanCorpse` reste inconnu, sans site d'appel direct retrouvé dans le dump complet.
9. Cette étude ne fournit pas de parseur WDA ou de serveur Python ; ses preuves sont uniquement statiques.

Suite recommandée : analyser les sous-routines d'évaluation de formule `0x40C350`, caractériser les flags X87 et les arguments du pipeline attacked/hit, puis identifier un chemin élémentaire ou un effet de puissance/résistance dans d'autres fabriques.
