# Contrôles, précautions et inconnues — passe 53

- **CONFIRMÉ** : les 114 chaînes proviennent du binaire original ; chaque VA est associée à une comparaison de la routine `ParseFormula`.
- **CONFIRMÉ** : 98 cas d'affectation directe ou commune de sélecteur ; 16 comparaisons vers des traitements paramétrés, donc **pas d'affectation conjecturale** de code.
- **CONFIRMÉ** : `Unit::GetWL` est le slot principal `+0x1C` des quatre classes inspectées, et renvoie trois champs d'une WorldPos.
- **CONFIRMÉ** : le helper `0x40F230` effectue une recherche indexée par chaîne dans une structure associative. Le nom `std::map<string,double>` est une hypothèse de type C++ haut niveau, **non un type prouvé par une RTTI exportée**.
- **CONFIRMÉ** : le décrément de compteur intervient dans l'appelant et teste `0` et `0xFF`. Son rôle métier et sa protection entre threads ne sont pas prouvés.
- **INCONNU** : les valeurs renvoyées par des branches `skill`, `spell`, `viewflag`, `var`, `if` dans tous les cas.
- **INCONNU** : présence de tels noms dans les WDA réellement utilisés ; donnée externe absente.
- **INCONNU** : collisions d'identifiants, erreurs de formule, arithmétique 32-bit et conformité de la distance à travers les mondes.
- **MESURES** : différence historique de 91 octets entre comptage indépendant et suivi conservateur ; les deux sont conservés.
- **MÉTHODE** : les noms littéraux dans `.data` ne comptent pas comme des octets de `.text` exécutables.
