# Passe 161 — 77 references vers des zones hors masque

- 59 operations `jmp [index*4+adresse]` ; 18 lectures d'octet indexees.
- 76 instructions sources entieres deja couvertes ; un saut a `0x40A630` encore absent du masque.
- Les adresses de ces references sont des bases de tables, et non des pointeurs directs vers de nouvelles fonctions.
- Aucune promotion de la cible pointee en code : **gain +0 octet**.

Les operations sont reconnues par les opcodes originaux et leurs operandes 32 bits, pas par une simple ressemblance d'adresse.
