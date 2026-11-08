# T4C Serveur original — Passes 167 a 172

Reprise depuis le cumul des passes 161–166. Methode stricte : seuls les blocs atteints en continuite depuis une instruction archivée ET deja comptee, ou par un branchement direct depuis un tel bloc, sont ajoutes. Chaque instruction doit correspondre a l'executable original et a GNU objdump et LLVM objdump. Les pistes non justifiees restent hors du compteur.

**Limite :** il s'agit du masque de couverture statique *historique*, dont l'audit integral des passes anciennes demeure ouvert. Cette passe verifie et ajoute ses propres octets ; elle ne certifie pas retroactivement tout le masque historique.

## Bilan final

**823,141 / 905,117 = 90.943049 %**, gain **+2,982 octets**. Il reste **81,976 octets hors masque**.

La decouverte principale : plusieurs lacunes n’etaient pas de nouvelles fonctions isolees mais des continuations de blocs de `Character::DropUnit`, des routines d’objets, de sessions et de WDA. Les fichiers `PASSE172_AUDIT` fournissent les masques et le controle numerique.
