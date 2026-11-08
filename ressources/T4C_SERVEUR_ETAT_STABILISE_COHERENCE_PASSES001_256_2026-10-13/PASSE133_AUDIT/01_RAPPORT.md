# Passe 133 — Tables de pointeurs intégrées à .text

Les relocations identifient 47 séquences contiguës de pointeurs dans la section `.text` : 3 052 octets de données. Parmi elles, 32 octets étaient présents dans le masque historique, à `0x41E9E0–0x41E9FF`. L’instruction `0x41E944 : jmp [ebx*4+0x41E9E0]` démontre qu’il s’agit d’une table de huit pointeurs et non de 32 octets d’instructions. Ces 32 octets sont retirés du compteur corrigé.

Compteur réaudité à cette étape : 809,620 / 905,117 octets. Ajout vérifié : +0. Correction des octets de données : -32.
