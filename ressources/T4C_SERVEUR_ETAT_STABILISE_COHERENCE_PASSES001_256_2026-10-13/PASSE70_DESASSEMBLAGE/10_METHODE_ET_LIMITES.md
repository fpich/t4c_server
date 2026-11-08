# Méthode et limites — Passe 70

1. L’exécutable original a l’empreinte SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. La section `.text` débute à VA `0x401000`, octet de fichier `0x1000`, sur `905117` octets.
2. Chaque plage est désassemblée depuis un point d’entrée explicite connu du binaire. Les bornes sont sur des frontières d’instructions. Chaque suite d'octets produite est comparée au PE, byte par byte.
3. Aucune instruction `nop`/`int3` de bourrage n’est prise en compte ; aucune double attribution intra-passe. Les passages déjà couverts restent des preuves mais ne sont jamais ajoutés au masque.
4. Le masque cumulatif de la passe 69 est repris à l’identique, recompté (129770 bits). Les nouveaux bits sont les seuls absents de P69. Différence, intersection nulle, union et nombre de bits sont vérifiés.
5. Les imports `KERNEL32.dll!EnterCriticalSection` IAT VA `0x4DE0F8`, `LeaveCriticalSection` IAT VA `0x4DE0FC`, `MSVCRT.dll!malloc` IAT `0x4DE294` et `free` IAT `0x4DE308` ont été relevés dans le répertoire d'import PE via `objdump -p`. Les imports ne sont PAS des octets supplémentaires de la section `.text`.
6. Aucun test réel de surcharge mémoire, démarrage ou envoi de paquet. Les comportements sous pointeur nul sont déduits conditionnellement des instructions et de la sémantique des appels. On ne conclut pas à l'exploitabilité ou à une fuite mémoire effectivement constatée.
7. L’état réel d’activation du pool à l’exécution du serveur original, les appelants indirects et les exceptions de tout le programme n’ont pas été déterminés.
