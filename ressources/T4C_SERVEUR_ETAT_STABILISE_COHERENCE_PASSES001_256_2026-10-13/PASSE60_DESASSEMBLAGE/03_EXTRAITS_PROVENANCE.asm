; Extraits cites des preuves deja archivees — ne sont PAS de nouveaux octets
; PASSE56_DESASSEMBLAGE/03_PREUVES_ARBRE_CLE_ET_LECTURE.asm
40a5b5: 8b 4d 2c             mov ecx,DWORD PTR [ebp+0x2c]
40a5c4: e8 67 4c 00 00       call 0x40f230
; PASSE56_DESASSEMBLAGE/02_PREUVES_DISPATCH_ECRITURES_VAR.asm
45ab4f: 8b 5d 1c             mov ebx,DWORD PTR [ebp+0x1c]
45acc8: 8b cb                mov ecx,ebx
45acce: e8 5d 45 fb ff       call 0x40f230
45ba57: 8b 4d 1c             mov ecx,DWORD PTR [ebp+0x1c]
45ba5e: e8 cd 37 fb ff       call 0x40f230
; PASSE57_DESASSEMBLAGE/04_PREUVES_CHEMIN_VARIABLES_ET_ARBRE.asm
40f23c: 8b 79 04             mov edi,DWORD PTR [ecx+0x4]
40f383: 6a 30                push 0x30
40f385: e8 66 2c 03 00       call 0x441ff0
