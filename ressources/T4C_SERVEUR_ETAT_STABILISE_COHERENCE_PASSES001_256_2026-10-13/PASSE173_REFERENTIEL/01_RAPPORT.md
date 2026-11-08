# Passe 173 — Point de départ et qualification des lacunes

Binaire PE original à SHA-256 identique aux archives. Masque d'origine : 823 141 octets sur 905 117.
La passe 173 n'ajoute pas d'octets : elle localise des lacunes au contact d'instructions historiquement vérifiées.
Seules les continuations à frontière exacte sont retenues, et non les débuts de fonctions sans provenance ni les suites d'un `ret` ou des données.

Les sources archivées comportent des fragments partiels et parfois divergents. Elles servent uniquement à localiser les **sources** ; le décodage des nouveaux octets est refait sur le binaire et confronté à deux désassembleurs.
