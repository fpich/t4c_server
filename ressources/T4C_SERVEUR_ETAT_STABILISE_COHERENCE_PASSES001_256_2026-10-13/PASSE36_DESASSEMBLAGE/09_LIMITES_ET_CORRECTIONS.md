# Limites, distinctions et corrections apportées

- [CORRECTION PASSE 35] +0x3AC n'est pas une clé de provenance indéterminée : une préparation de définition l'initialise depuis la valeur 32 bits de la source à +0x24, multipliée par 1000.
- [CONFIRMÉ] Un WORD de la même zone source est affecté au début de la définition et sert à RegisterSpell.
- [PARTIEL] Les 16 bits hauts de la valeur source 32 bits n'ont pas été identifiés ; ne pas conclure que l'initialisation utilise exactement 1000*SpellID sur toutes les entrées.
- [CONFIRMÉ] Six constructeurs distincts capturent une valeur du compteur puis l'incrémentent d'une unité.
- [LIMITATION] Pas de preuve d'unicité entre définitions, de protection atomique, de récupération après dépassement 32 bits, ni du comportement de plusieurs threads.
- [LIMITATION] Le comportement du parcours de la liste Unit+0xF4 pendant des callbacks réentrants reste partiel.
- [MÉTHODE] Les octets dans les preuves ont été comparés au fichier PE original ; la couverture est documentaire, sans exécution.
- [ARCHIVE] Ne contient ni réimplémentation de serveur Python, ni tests Python.
