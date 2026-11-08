# Passes 155 a 160 — relais d'importation PE verifiés

## Resultat

**1 308 octets uniques** sont nouvellement identifies comme code machine : 218 instructions `FF 25 <adresse IAT>` de 6 octets chacune, justifiees par la table d'imports originale et verifiees deux fois, avec GNU objdump et LLVM objdump.

- Reference passe 154 : **818 829 / 905 117** (90,466647 %).
- Nouveau total : **820 137 / 905 117** (**90,611159 %**).
- 20 plages de relais d'importation ; 218 nouvelles instructions ; 0 chevauchement de masque.

Ces instructions effectuent un `jmp dword ptr [adresse IAT]` vers un symbole importe (ex. `KERNEL32.dll`, `MSVCRT.dll`, `sxlrt233.dll`). Elles sont du code de raccordement generé par l'editeur de liens ; leur presence ne prouve pas que toutes ont été utilisees a l'execution.

## Niveaux de preuve

1. Instruction reconnue en `.text` et operand directement egal a une adresse valide de la table d'importation PE.
2. Octets, adresses et frontieres confirmes pour chacune des 218 instructions par deux desassembleurs.
3. Six octets entiers absents du masque 154, et non chevauchants entre eux.
4. Nouvelle couverture produite par union bit-a-bit et reverifiee.

## Resultat negatif utile

77 relocations de `.text` contiennent un pointeur vers un octet encore hors masque. Plusieurs destinataires sont des tables de sauts et tableaux d'indices, pas du code autonome. Aucun de ces 77 pointeurs n'a donc été promu en couverture.

Les trous encore isoles peuvent contenir du code compile. Ils ne sont pas comptabilises sans provenance et controle de frontieres adequats.

## Limites

Le masque historique est une mesure statique heritee ; cette verification ne prouve pas retroactivement l'integrite des 818 829 octets de la passe 154. La couverture presente n'est pas un taux de fonctionnalites reverse-engineerees.
