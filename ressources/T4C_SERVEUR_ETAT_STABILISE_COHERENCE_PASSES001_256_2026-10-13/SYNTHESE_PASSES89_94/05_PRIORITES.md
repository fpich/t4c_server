# Suite proposée — Passes 95 à 100

1. Résoudre avec preuve PE les sauts indirects `0x4CFC53`, `0x4D21C8`, `0x41C204`, ou les maintenir « non résolus ».
2. Rechercher les entrées de méthodes virtuelles dans les vtables réellement identifiées ; ne pas considérer chaque pointeur de la section de données comme une fonction.
3. Poursuivre les cibles d'appels directs non couvertes après la passe 94, avec priorité aux fonctions réseau, événements et sauvegarde.
4. Vérifier par blocs les points d'entrée, les retours et les bornes d'exception SEH ; ne pas transformer automatiquement les écarts entre exports en code.
5. Séparer la mesure de couverture machine, les identifications de fonctions et les preuves sémantiques.
