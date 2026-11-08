# Organisation sans développement du serveur Python

Le code du projet serveur Python, ses tests et ses documents de développement sont exclus de cette livraison. Les références de rétro-ingénierie provenant des archives précédentes ont été conservées **octet pour octet**, mais réorganisées sous `references_analyse/`, `etudes_assembleur/` et `suivi_assembleur/`. Un registre TSV associe les anciens et nouveaux chemins avec leurs empreintes.

Les fichiers `.py` restants sous `suivi_assembleur/` ou `etudes_assembleur/passe24/suivi/` servent uniquement à **mesurer la couverture des preuves assembleur** ; ils n'implémentent aucun serveur.

Le taux de couverture porte sur les octets d'instructions explicitement présents dans les extraits vérifiés, et non sur la compréhension exhaustive.
