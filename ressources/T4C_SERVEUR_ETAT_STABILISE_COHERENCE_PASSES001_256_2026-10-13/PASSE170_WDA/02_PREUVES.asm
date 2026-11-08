; Assembleur statique : instructions validees GNU + LLVM et octets PE
; SHA-256 du PE : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
  0045a859: 8a 4d 13                                         mov    cl,BYTE PTR [ebp+0x13]  ; fallthrough_source ; source initiale 0x45a853
  0045a85c: 56                                               push   esi  ; 0x45a859+3 ; source initiale 0x45a853
  0045a85d: 88 4d cc                                         mov    BYTE PTR [ebp-0x34],cl  ; 0x45a85c+1 ; source initiale 0x45a853
  0045a860: 56                                               push   esi  ; 0x45a85d+3 ; source initiale 0x45a853
  0045a861: 8d 4d cc                                         lea    ecx,[ebp-0x34]  ; 0x45a860+1 ; source initiale 0x45a853
  0045a864: e8 67 3c 00 00                                   call   0x45e4d0  ; 0x45a861+3 ; source initiale 0x45a853
  0045a869: 89 45 d0                                         mov    DWORD PTR [ebp-0x30],eax  ; 0x45a864+5 ; source initiale 0x45a853
  0045a86c: 89 75 d4                                         mov    DWORD PTR [ebp-0x2c],esi  ; 0x45a869+3 ; source initiale 0x45a853
  0045a86f: 8b 17                                            mov    edx,DWORD PTR [edi]  ; 0x45a86c+3 ; source initiale 0x45a853
  0045a871: 8d 45 cc                                         lea    eax,[ebp-0x34]  ; 0x45a86f+2 ; source initiale 0x45a853
  0045a874: 50                                               push   eax  ; 0x45a871+3 ; source initiale 0x45a853
  0045a875: 8b cf                                            mov    ecx,edi  ; 0x45a874+1 ; source initiale 0x45a853
  0045a877: c6 45 fc 02                                      mov    BYTE PTR [ebp-0x4],0x2  ; 0x45a875+2 ; source initiale 0x45a853
  0045a87b: ff 52 0c                                         call   DWORD PTR [edx+0xc]  ; 0x45a877+4 ; source initiale 0x45a853
  0045a87e: 8b 45 d0                                         mov    eax,DWORD PTR [ebp-0x30]  ; 0x45a87b+3 ; source initiale 0x45a853
  0045a881: 3b f0                                            cmp    esi,eax  ; 0x45a87e+3 ; source initiale 0x45a853
  0045a883: 74 2c                                            je     0x45a8b1  ; 0x45a881+2 ; source initiale 0x45a853
  0045a885: 8b 30                                            mov    esi,DWORD PTR [eax]  ; 0x45a883+2 ; source initiale 0x45a853
  0045a887: 3b f0                                            cmp    esi,eax  ; 0x45a885+2 ; source initiale 0x45a853
  0045a889: 74 26                                            je     0x45a8b1  ; 0x45a887+2 ; source initiale 0x45a853
  0045a88b: 8b 7d 18                                         mov    edi,DWORD PTR [ebp+0x18]  ; 0x45a889+2 ; source initiale 0x45a853
  0045a88e: 8b 4e 08                                         mov    ecx,DWORD PTR [esi+0x8]  ; 0x45a88b+3 ; source initiale 0x45a853
  0045a891: 8b 55 10                                         mov    edx,DWORD PTR [ebp+0x10]  ; 0x45a88e+3 ; source initiale 0x45a853
  0045a894: 8b 45 0c                                         mov    eax,DWORD PTR [ebp+0xc]  ; 0x45a891+3 ; source initiale 0x45a853
  0045a897: 53                                               push   ebx  ; 0x45a894+3 ; source initiale 0x45a853
  0045a898: 57                                               push   edi  ; 0x45a897+1 ; source initiale 0x45a853
  0045a899: 51                                               push   ecx  ; 0x45a898+1 ; source initiale 0x45a853
  0045a89a: 8b 4d 08                                         mov    ecx,DWORD PTR [ebp+0x8]  ; 0x45a899+1 ; source initiale 0x45a853
  0045a89d: 52                                               push   edx  ; 0x45a89a+3 ; source initiale 0x45a853
  0045a89e: 50                                               push   eax  ; 0x45a89d+1 ; source initiale 0x45a853
  0045a89f: 51                                               push   ecx  ; 0x45a89e+1 ; source initiale 0x45a853
  0045a8a0: e8 fb fe ff ff                                   call   0x45a7a0  ; 0x45a89f+1 ; source initiale 0x45a853
  0045a8a5: 8b 36                                            mov    esi,DWORD PTR [esi]  ; 0x45a8a0+5 ; source initiale 0x45a853
  0045a8a7: 8b 45 d0                                         mov    eax,DWORD PTR [ebp-0x30]  ; 0x45a8a5+2 ; source initiale 0x45a853
  0045a8aa: 83 c4 18                                         add    esp,0x18  ; 0x45a8a7+3 ; source initiale 0x45a853
  0045a8ad: 3b f0                                            cmp    esi,eax  ; 0x45a8aa+3 ; source initiale 0x45a853
  0045a8af: 75 dd                                            jne    0x45a88e  ; 0x45a8ad+2 ; source initiale 0x45a853
  0045a8b1: 50                                               push   eax  ; 0x45a883:je ; source initiale 0x45a853
  0045a8b2: 8d 55 10                                         lea    edx,[ebp+0x10]  ; 0x45a8b1+1 ; source initiale 0x45a853
  0045a8b5: 52                                               push   edx  ; 0x45a8b2+3 ; source initiale 0x45a853
  0045a8b6: 8d 4d cc                                         lea    ecx,[ebp-0x34]  ; 0x45a8b5+1 ; source initiale 0x45a853
  0045a8b9: c6 45 fc 00                                      mov    BYTE PTR [ebp-0x4],0x0  ; 0x45a8b6+3 ; source initiale 0x45a853
  0045a8bd: e8 ae 33 00 00                                   call   0x45dc70  ; 0x45a8b9+4 ; source initiale 0x45a853
  0045a8c2: 8b 00                                            mov    eax,DWORD PTR [eax]  ; 0x45a8bd+5 ; source initiale 0x45a853
  0045a8c4: 50                                               push   eax  ; 0x45a8c2+2 ; source initiale 0x45a853
  0045a8c5: 8d 4d 0c                                         lea    ecx,[ebp+0xc]  ; 0x45a8c4+1 ; source initiale 0x45a853
  0045a8c8: 51                                               push   ecx  ; 0x45a8c5+3 ; source initiale 0x45a853
  0045a8c9: 8d 4d cc                                         lea    ecx,[ebp-0x34]  ; 0x45a8c8+1 ; source initiale 0x45a853
  0045a8cc: e8 af 3b 00 00                                   call   0x45e480  ; 0x45a8c9+3 ; source initiale 0x45a853
  0045a8d1: 8b 55 d0                                         mov    edx,DWORD PTR [ebp-0x30]  ; 0x45a8cc+5 ; source initiale 0x45a853
  0045a8d4: 52                                               push   edx  ; 0x45a8d1+3 ; source initiale 0x45a853
  0045a8d5: e8 86 77 fe ff                                   call   0x442060  ; 0x45a8d4+1 ; source initiale 0x45a853
  0045a8da: 83 c4 04                                         add    esp,0x4  ; 0x45a8d5+5 ; source initiale 0x45a853
  0045a8dd: e9 6d 01 00 00                                   jmp    0x45aa4f  ; 0x45a8da+3 ; source initiale 0x45a853
  0045a975: 6a 00                                            push   0x0  ; fallthrough_source ; source initiale 0x45a973
  0045a977: 6a 00                                            push   0x0  ; 0x45a975+2 ; source initiale 0x45a973
  0045a979: 6a 00                                            push   0x0  ; 0x45a977+2 ; source initiale 0x45a973
  0045a97b: 52                                               push   edx  ; 0x45a979+2 ; source initiale 0x45a973
  0045a97c: 50                                               push   eax  ; 0x45a97b+1 ; source initiale 0x45a973
  0045a97d: 8d 8d 00 ff ff ff                                lea    ecx,[ebp-0x100]  ; 0x45a97c+1 ; source initiale 0x45a973
  0045a983: e8 c8 19 fb ff                                   call   0x40c350  ; 0x45a97d+6 ; source initiale 0x45a973
  0045a988: dc 1d 30 e6 4d 00                                fcomp  QWORD PTR ds:0x4de630  ; 0x45a983+5 ; source initiale 0x45a973
  0045a98e: df e0                                            fnstsw ax  ; 0x45a988+6 ; source initiale 0x45a973
  0045a990: f6 c4 40                                         test   ah,0x40  ; 0x45a98e+2 ; source initiale 0x45a973
  0045a993: 74 69                                            je     0x45a9fe  ; 0x45a990+3 ; source initiale 0x45a973
  0045a995: 8b 4d 1c                                         mov    ecx,DWORD PTR [ebp+0x1c]  ; 0x45a993+2 ; source initiale 0x45a973
  0045a998: 8b 01                                            mov    eax,DWORD PTR [ecx]  ; 0x45a995+3 ; source initiale 0x45a973
  0045a99a: 3b 45 dc                                         cmp    eax,DWORD PTR [ebp-0x24]  ; 0x45a998+2 ; source initiale 0x45a973
  0045a99d: 89 45 1c                                         mov    DWORD PTR [ebp+0x1c],eax  ; 0x45a99a+3 ; source initiale 0x45a973
  0045a9a0: 0f 85 79 ff ff ff                                jne    0x45a91f  ; 0x45a99d+3 ; source initiale 0x45a973
  0045a9a6: 33 f6                                            xor    esi,esi  ; 0x45a9a0+6 ; source initiale 0x45a973
  0045ad18: 8a 55 13                                         mov    dl,BYTE PTR [ebp+0x13]  ; fallthrough_source ; source initiale 0x45ad12
  0045ad1b: 56                                               push   esi  ; 0x45ad18+3 ; source initiale 0x45ad12
  0045ad1c: 56                                               push   esi  ; 0x45ad1b+1 ; source initiale 0x45ad12
  0045ad1d: 8d 4d cc                                         lea    ecx,[ebp-0x34]  ; 0x45ad1c+1 ; source initiale 0x45ad12
  0045ad20: 88 55 cc                                         mov    BYTE PTR [ebp-0x34],dl  ; 0x45ad1d+3 ; source initiale 0x45ad12
  0045ad23: e8 a8 37 00 00                                   call   0x45e4d0  ; 0x45ad20+3 ; source initiale 0x45ad12
  0045ad28: 89 45 d0                                         mov    DWORD PTR [ebp-0x30],eax  ; 0x45ad23+5 ; source initiale 0x45ad12
  0045ad2b: 89 75 d4                                         mov    DWORD PTR [ebp-0x2c],esi  ; 0x45ad28+3 ; source initiale 0x45ad12
  0045ad2e: 8b 07                                            mov    eax,DWORD PTR [edi]  ; 0x45ad2b+3 ; source initiale 0x45ad12
  0045ad30: 8d 4d cc                                         lea    ecx,[ebp-0x34]  ; 0x45ad2e+2 ; source initiale 0x45ad12
  0045ad33: 51                                               push   ecx  ; 0x45ad30+3 ; source initiale 0x45ad12
  0045ad34: 8b cf                                            mov    ecx,edi  ; 0x45ad33+1 ; source initiale 0x45ad12
  0045ad36: c6 45 fc 0c                                      mov    BYTE PTR [ebp-0x4],0xc  ; 0x45ad34+2 ; source initiale 0x45ad12
  0045ad3a: ff 50 0c                                         call   DWORD PTR [eax+0xc]  ; 0x45ad36+4 ; source initiale 0x45ad12
  0045ad3d: 8b 45 d0                                         mov    eax,DWORD PTR [ebp-0x30]  ; 0x45ad3a+3 ; source initiale 0x45ad12
  0045ad40: 3b c6                                            cmp    eax,esi  ; 0x45ad3d+3 ; source initiale 0x45ad12
  0045ad42: 75 04                                            jne    0x45ad48  ; 0x45ad40+2 ; source initiale 0x45ad12
  0045ad44: 33 f6                                            xor    esi,esi  ; 0x45ad42+2 ; source initiale 0x45ad12
  0045ad46: eb 02                                            jmp    0x45ad4a  ; 0x45ad44+2 ; source initiale 0x45ad12
  0045ad48: 8b 30                                            mov    esi,DWORD PTR [eax]  ; 0x45ad42:jne ; source initiale 0x45ad12
  0045ad4a: 3b f0                                            cmp    esi,eax  ; 0x45ad48+2 ; source initiale 0x45ad12
  0045ad4c: 74 26                                            je     0x45ad74  ; 0x45ad4a+2 ; source initiale 0x45ad12
  0045ad4e: 8b 55 18                                         mov    edx,DWORD PTR [ebp+0x18]  ; 0x45ad4c+2 ; source initiale 0x45ad12
  0045ad51: 8b 46 08                                         mov    eax,DWORD PTR [esi+0x8]  ; 0x45ad4e+3 ; source initiale 0x45ad12
  0045ad54: 8b 4d 10                                         mov    ecx,DWORD PTR [ebp+0x10]  ; 0x45ad51+3 ; source initiale 0x45ad12
  0045ad57: 53                                               push   ebx  ; 0x45ad54+3 ; source initiale 0x45ad12
  0045ad58: 52                                               push   edx  ; 0x45ad57+1 ; source initiale 0x45ad12
  0045ad59: 8b 55 0c                                         mov    edx,DWORD PTR [ebp+0xc]  ; 0x45ad58+1 ; source initiale 0x45ad12
  0045ad5c: 50                                               push   eax  ; 0x45ad59+3 ; source initiale 0x45ad12
  0045ad5d: 8b 45 08                                         mov    eax,DWORD PTR [ebp+0x8]  ; 0x45ad5c+1 ; source initiale 0x45ad12
  0045ad60: 51                                               push   ecx  ; 0x45ad5d+3 ; source initiale 0x45ad12
  0045ad61: 52                                               push   edx  ; 0x45ad60+1 ; source initiale 0x45ad12
  0045ad62: 50                                               push   eax  ; 0x45ad61+1 ; source initiale 0x45ad12
  0045ad63: e8 38 fa ff ff                                   call   0x45a7a0  ; 0x45ad62+1 ; source initiale 0x45ad12
  0045ad68: 8b 36                                            mov    esi,DWORD PTR [esi]  ; 0x45ad63+5 ; source initiale 0x45ad12
  0045ad6a: 8b 45 d0                                         mov    eax,DWORD PTR [ebp-0x30]  ; 0x45ad68+2 ; source initiale 0x45ad12
  0045ad6d: 83 c4 18                                         add    esp,0x18  ; 0x45ad6a+3 ; source initiale 0x45ad12
  0045ad70: 3b f0                                            cmp    esi,eax  ; 0x45ad6d+3 ; source initiale 0x45ad12
  0045ad72: 75 da                                            jne    0x45ad4e  ; 0x45ad70+2 ; source initiale 0x45ad12
  0045ad74: 85 c0                                            test   eax,eax  ; 0x45ad4c:je ; source initiale 0x45ad12
  0045ad76: c6 45 fc 0a                                      mov    BYTE PTR [ebp-0x4],0xa  ; 0x45ad74+2 ; source initiale 0x45ad12
  0045ad7a: 75 04                                            jne    0x45ad80  ; 0x45ad76+4 ; source initiale 0x45ad12
  0045ad7c: 33 c9                                            xor    ecx,ecx  ; 0x45ad7a+2 ; source initiale 0x45ad12
  0045ad7e: eb 02                                            jmp    0x45ad82  ; 0x45ad7c+2 ; source initiale 0x45ad12
  0045ad80: 8b 08                                            mov    ecx,DWORD PTR [eax]  ; 0x45ad7a:jne ; source initiale 0x45ad12
  0045ad82: 50                                               push   eax  ; 0x45ad80+2 ; source initiale 0x45ad12
  0045ad83: 51                                               push   ecx  ; 0x45ad82+1 ; source initiale 0x45ad12
  0045ad84: 8d 4d 14                                         lea    ecx,[ebp+0x14]  ; 0x45ad83+1 ; source initiale 0x45ad12
  0045ad87: 51                                               push   ecx  ; 0x45ad84+3 ; source initiale 0x45ad12
  0045ad88: 8d 4d cc                                         lea    ecx,[ebp-0x34]  ; 0x45ad87+1 ; source initiale 0x45ad12
  0045ad8b: e8 f0 36 00 00                                   call   0x45e480  ; 0x45ad88+3 ; source initiale 0x45ad12
  0045ad90: 8b 55 d0                                         mov    edx,DWORD PTR [ebp-0x30]  ; 0x45ad8b+5 ; source initiale 0x45ad12
  0045ad93: 52                                               push   edx  ; 0x45ad90+3 ; source initiale 0x45ad12
  0045ad94: e8 c7 72 fe ff                                   call   0x442060  ; 0x45ad93+1 ; source initiale 0x45ad12
  0045ad99: 8b 45 1c                                         mov    eax,DWORD PTR [ebp+0x1c]  ; 0x45ad94+5 ; source initiale 0x45ad12
  0045ad9c: dd 40 20                                         fld    QWORD PTR [eax+0x20]  ; 0x45ad99+3 ; source initiale 0x45ad12
  0045ad9f: 33 f6                                            xor    esi,esi  ; 0x45ad9c+3 ; source initiale 0x45ad12
  0045ada1: dc 05 c0 e8 4d 00                                fadd   QWORD PTR ds:0x4de8c0  ; 0x45ad9f+2 ; source initiale 0x45ad12
  0045ada7: 83 c4 04                                         add    esp,0x4  ; 0x45ada1+6 ; source initiale 0x45ad12
  0045adaa: 89 75 d0                                         mov    DWORD PTR [ebp-0x30],esi  ; 0x45ada7+3 ; source initiale 0x45ad12
  0045adad: 89 75 d4                                         mov    DWORD PTR [ebp-0x2c],esi  ; 0x45adaa+3 ; source initiale 0x45ad12
  0045adb0: dd 50 20                                         fst    QWORD PTR [eax+0x20]  ; 0x45adad+3 ; source initiale 0x45ad12
  0045adb3: dc 9d 78 ff ff ff                                fcomp  QWORD PTR [ebp-0x88]  ; 0x45adb0+3 ; source initiale 0x45ad12
  0045adb9: df e0                                            fnstsw ax  ; 0x45adb3+6 ; source initiale 0x45ad12
  0045adbb: f6 c4 01                                         test   ah,0x1  ; 0x45adb9+2 ; source initiale 0x45ad12
  0045adbe: 0f 85 54 ff ff ff                                jne    0x45ad18  ; 0x45adbb+3 ; source initiale 0x45ad12
