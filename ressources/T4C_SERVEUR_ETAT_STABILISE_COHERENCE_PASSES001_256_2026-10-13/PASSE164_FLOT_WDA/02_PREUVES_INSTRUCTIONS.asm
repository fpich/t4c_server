; Server original : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 0x409F64 est deja comptabilise et branche vers 0x40A61F
00409F64: 0f 84 b5 06 00 00  je 0x40A61F ; source historique
0040A61F: 33 c0              xor eax,eax ; instruction historique
; Nouvelles instructions, verifiees GNU et LLVM
0040A621: dd d8                  ; ajouter 2 octets
0040A623: 8a 46 10               ; ajouter 3 octets
0040A626: 48                     ; ajouter 1 octets
0040A627: 83 f8 70               ; ajouter 3 octets
0040A62A: 0f 87 55 1a 00 00      ; ajouter 6 octets
0040A630: ff 24 85 8c c1 40 00   ; ajouter 7 octets
; Table indirecte 0x40C18C, 113 pointeurs de branchement tous deja comptes comme destinations
; La table elle-meme est une DONNEE et n'est pas comptee.
