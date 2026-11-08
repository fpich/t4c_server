# Corrections cumulatives / bornes de l'analyse — passe 55

- **Corrigé par nouvelle preuve de chaînage :** `var` appelle `0x40F230`, dont le chemin clé absente appelle `0x40F300`; ne plus décrire `0x40F230` comme une simple recherche. Aucun fichier ancien modifié.
- **Fermé :** l'incertitude sur le court-circuit de `if` des branches de résultat. Les deux opérandes de la comparaison restent tous deux évalués.
- **Non résolu :** lien d'une formule magique spécifique avec les résistances; effet exact de `0x442060`; durée de vie/portée des variables; sûreté mémoire/thread et données WDA réelles.
- **Mesure :** il y a 2730 nouveaux octets uniques et non 5096 ; certains octets centraux étaient déjà documentés mais sans leur signification. Écart historique de 91 octets conservé : brute 123248, prudente 123157.
- **Tables de dispatch :** `0x40C114`, `0x40C144`, `0x40C174`, `0x40C18C` sont des données pointeurs placées dans `.text`, non des instructions et ne sont pas comptées.
