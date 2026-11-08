# Bilan passes 161–166

**Couverture de reference** : 820 137 / 905 117 = 90,611159 %.

**Couverture apres audit** : **820 159 / 905 117 = 90.613589 %**.

Gain **+22 octets** et **6 instructions** nouvelles, sans aucun chevauchement. Une nouvelle branche interne WDA est maintenant documentee, au sein de `BoostFormula::GetOperandValue`.

### Verifications

- Empreinte de l'executable originale identique a l'archive.
- Correspondance des six instructions avec GNU objdump et LLVM objdump.
- Provenance : `JE` depuis `0x409F64`, puis continuation de l'instruction deja couverte `xor eax,eax`.
- La table de saut `0x40C18C` contient 113 pointeurs correspondant aux valeurs d'index autorisees.
- L'integrite des 1 472 fichiers d'archives precedents est preservee octet par octet.
- 77 relocations classifiees, 96 fausses continuations apres `_CxxThrowException` ecartees.

**Reserve** : 90,613590 % demeure une couverture statique heritee et partiellement heuristique. Le gain de 22 octets est documente avec provenance forte, mais la totalite des anciennes instructions n'est pas garantie exploitable fonctionnellement.
