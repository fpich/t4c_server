# Validation des frontières

Les débuts proviennent de lignes assembleur archivées dont les octets correspondent exactement au PE et au masque de code. Les branches ne sont extraites que si la longueur de la ligne correspond à la forme d’encodage attendue. Une ligne archivée peut néanmoins être une désassemblage ambigu : aucune nouvelle zone n’est déclarée atteignable sans vérification supplémentaire.
