; Assembleur statique : instructions validees GNU + LLVM et octets PE
; SHA-256 du PE : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
  00472b60: 50                                               push   eax  ; fallthrough_source ; source initiale 0x472b5a
  00472b61: 64 89 25 00 00 00 00                             mov    DWORD PTR fs:0x0,esp  ; 0x472b60+1 ; source initiale 0x472b5a
  00472b68: 81 ec 24 01 00 00                                sub    esp,0x124  ; 0x472b61+7 ; source initiale 0x472b5a
  00472b6e: 53                                               push   ebx  ; 0x472b68+6 ; source initiale 0x472b5a
  00472b6f: b8 01 00 00 00                                   mov    eax,0x1  ; 0x472b6e+1 ; source initiale 0x472b5a
  00472b74: 56                                               push   esi  ; 0x472b6f+5 ; source initiale 0x472b5a
  00472b75: 8d 4d ec                                         lea    ecx,[ebp-0x14]  ; 0x472b74+1 ; source initiale 0x472b5a
  00472b78: 89 45 e0                                         mov    DWORD PTR [ebp-0x20],eax  ; 0x472b75+3 ; source initiale 0x472b5a
  00472b7b: 89 45 e8                                         mov    DWORD PTR [ebp-0x18],eax  ; 0x472b78+3 ; source initiale 0x472b5a
  00472b7e: e8 db ee 05 00                                   call   0x4d1a5e  ; 0x472b7b+3 ; source initiale 0x472b5a
  00472b83: 33 db                                            xor    ebx,ebx  ; 0x472b7e+5 ; source initiale 0x472b5a
  00472b85: 8d 4d e4                                         lea    ecx,[ebp-0x1c]  ; 0x472b83+2 ; source initiale 0x472b5a
  00472b88: 89 5d fc                                         mov    DWORD PTR [ebp-0x4],ebx  ; 0x472b85+3 ; source initiale 0x472b5a
  00472b8b: e8 ce ee 05 00                                   call   0x4d1a5e  ; 0x472b88+3 ; source initiale 0x472b5a
  00472b90: 8d 8d d0 fe ff ff                                lea    ecx,[ebp-0x130]  ; 0x472b8b+5 ; source initiale 0x472b5a
  00472b96: c6 45 fc 01                                      mov    BYTE PTR [ebp-0x4],0x1  ; 0x472b90+6 ; source initiale 0x472b5a
  00472b9a: e8 f1 65 fe ff                                   call   0x459190  ; 0x472b96+4 ; source initiale 0x472b5a
  00472b9f: 68 fc 9d 50 00                                   push   0x509dfc  ; 0x472b9a+5 ; source initiale 0x472b5a
  00472ba4: 68 02 00 00 80                                   push   0x80000002  ; 0x472b9f+5 ; source initiale 0x472b5a
  00472ba9: 8d 8d d0 fe ff ff                                lea    ecx,[ebp-0x130]  ; 0x472ba4+5 ; source initiale 0x472b5a
  00472baf: c6 45 fc 02                                      mov    BYTE PTR [ebp-0x4],0x2  ; 0x472ba9+6 ; source initiale 0x472b5a
  00472bb3: e8 58 66 fe ff                                   call   0x459210  ; 0x472baf+4 ; source initiale 0x472b5a
  00472bb8: 85 c0                                            test   eax,eax  ; 0x472bb3+5 ; source initiale 0x472b5a
  00472bba: 0f 84 7c 01 00 00                                je     0x472d3c  ; 0x472bb8+2 ; source initiale 0x472b5a
  00472bc0: 8b 75 0c                                         mov    esi,DWORD PTR [ebp+0xc]  ; 0x472bba+6 ; source initiale 0x472b5a
  00472bc3: 57                                               push   edi  ; 0x472bc0+3 ; source initiale 0x472b5a
  00472bc4: 8b 45 e8                                         mov    eax,DWORD PTR [ebp-0x18]  ; 0x472bc3+1 ; source initiale 0x472b5a
  00472bc7: 8b 4d 08                                         mov    ecx,DWORD PTR [ebp+0x8]  ; 0x472bc4+3 ; source initiale 0x472b5a
  00472bca: 50                                               push   eax  ; 0x472bc7+3 ; source initiale 0x472b5a
  00472bcb: 51                                               push   ecx  ; 0x472bca+1 ; source initiale 0x472b5a
  00472bcc: 8d 55 e4                                         lea    edx,[ebp-0x1c]  ; 0x472bcb+1 ; source initiale 0x472b5a
  00472bcf: 68 80 65 50 00                                   push   0x506580  ; 0x472bcc+3 ; source initiale 0x472b5a
  00472bd4: 52                                               push   edx  ; 0x472bcf+5 ; source initiale 0x472b5a
  00472bd5: e8 ba ee 05 00                                   call   0x4d1a94  ; 0x472bd4+1 ; source initiale 0x472b5a
  00472bda: 8b 45 e4                                         mov    eax,DWORD PTR [ebp-0x1c]  ; 0x472bd5+5 ; source initiale 0x472b5a
  00472bdd: 83 c4 10                                         add    esp,0x10  ; 0x472bda+3 ; source initiale 0x472b5a
  00472be0: 68 ec 9d 50 00                                   push   0x509dec  ; 0x472bdd+3 ; source initiale 0x472b5a
  00472be5: 50                                               push   eax  ; 0x472be0+5 ; source initiale 0x472b5a
  00472be6: 8d 8d d0 fe ff ff                                lea    ecx,[ebp-0x130]  ; 0x472be5+1 ; source initiale 0x472b5a
  00472bec: e8 bf 66 fe ff                                   call   0x4592b0  ; 0x472be6+6 ; source initiale 0x472b5a
  00472bf1: 50                                               push   eax  ; 0x472bec+5 ; source initiale 0x472b5a
  00472bf2: 8d 4d ec                                         lea    ecx,[ebp-0x14]  ; 0x472bf1+1 ; source initiale 0x472b5a
  00472bf5: e8 5e ee 05 00                                   call   0x4d1a58  ; 0x472bf2+3 ; source initiale 0x472b5a
  00472bfa: 8b 45 ec                                         mov    eax,DWORD PTR [ebp-0x14]  ; 0x472bf5+5 ; source initiale 0x472b5a
  00472bfd: bf ec 9d 50 00                                   mov    edi,0x509dec  ; 0x472bfa+3 ; source initiale 0x472b5a
  00472c02: 8a 10                                            mov    dl,BYTE PTR [eax]  ; 0x472bfd+5 ; source initiale 0x472b5a
  00472c04: 8a ca                                            mov    cl,dl  ; 0x472c02+2 ; source initiale 0x472b5a
  00472c06: 3a 17                                            cmp    dl,BYTE PTR [edi]  ; 0x472c04+2 ; source initiale 0x472b5a
  00472c08: 75 1c                                            jne    0x472c26  ; 0x472c06+2 ; source initiale 0x472b5a
  00472c0a: 3a cb                                            cmp    cl,bl  ; 0x472c08+2 ; source initiale 0x472b5a
  00472c0c: 74 14                                            je     0x472c22  ; 0x472c0a+2 ; source initiale 0x472b5a
  00472c0e: 8a 50 01                                         mov    dl,BYTE PTR [eax+0x1]  ; 0x472c0c+2 ; source initiale 0x472b5a
  00472c11: 8a ca                                            mov    cl,dl  ; 0x472c0e+3 ; source initiale 0x472b5a
  00472c13: 3a 57 01                                         cmp    dl,BYTE PTR [edi+0x1]  ; 0x472c11+2 ; source initiale 0x472b5a
  00472c16: 75 0e                                            jne    0x472c26  ; 0x472c13+3 ; source initiale 0x472b5a
  00472c18: 83 c0 02                                         add    eax,0x2  ; 0x472c16+2 ; source initiale 0x472b5a
  00472c1b: 83 c7 02                                         add    edi,0x2  ; 0x472c18+3 ; source initiale 0x472b5a
  00472c1e: 3a cb                                            cmp    cl,bl  ; 0x472c1b+3 ; source initiale 0x472b5a
  00472c20: 75 e0                                            jne    0x472c02  ; 0x472c1e+2 ; source initiale 0x472b5a
  00472c22: 33 c0                                            xor    eax,eax  ; 0x472c0c:je ; source initiale 0x472b5a
  00472c24: eb 05                                            jmp    0x472c2b  ; 0x472c22+2 ; source initiale 0x472b5a
  00472c26: 1b c0                                            sbb    eax,eax  ; 0x472c08:jne ; source initiale 0x472b5a
  00472c28: 83 d8 ff                                         sbb    eax,0xffffffff  ; 0x472c26+2 ; source initiale 0x472b5a
  00472c2b: 3b c3                                            cmp    eax,ebx  ; 0x472c28+3 ; source initiale 0x472b5a
  00472c2d: 0f 84 e1 00 00 00                                je     0x472d14  ; 0x472c2b+2 ; source initiale 0x472b5a
  00472c33: 6a 04                                            push   0x4  ; 0x472c2d+6 ; source initiale 0x472b5a
  00472c35: e8 b6 f3 fc ff                                   call   0x441ff0  ; 0x472c33+2 ; source initiale 0x472b5a
  00472c3a: 8b f8                                            mov    edi,eax  ; 0x472c35+5 ; source initiale 0x472b5a
  00472c3c: 8b 45 ec                                         mov    eax,DWORD PTR [ebp-0x14]  ; 0x472c3a+2 ; source initiale 0x472b5a
  00472c3f: 83 c4 04                                         add    esp,0x4  ; 0x472c3c+3 ; source initiale 0x472b5a
  00472c42: 50                                               push   eax  ; 0x472c3f+3 ; source initiale 0x472b5a
  00472c43: ff 15 b0 e0 4d 00                                call   DWORD PTR ds:0x4de0b0  ; 0x472c42+1 ; source initiale 0x472b5a
  00472c49: 3b c3                                            cmp    eax,ebx  ; 0x472c43+6 ; source initiale 0x472b5a
  00472c4b: 89 07                                            mov    DWORD PTR [edi],eax  ; 0x472c49+2 ; source initiale 0x472b5a
  00472c4d: c7 45 fc 02 00 00 00                             mov    DWORD PTR [ebp-0x4],0x2  ; 0x472c4b+2 ; source initiale 0x472b5a
  00472c54: 0f 84 8d 00 00 00                                je     0x472ce7  ; 0x472c4d+7 ; source initiale 0x472b5a
  00472c5a: 8b 46 28                                         mov    eax,DWORD PTR [esi+0x28]  ; 0x472c54+6 ; source initiale 0x472b5a
  00472c5d: 8b 56 38                                         mov    edx,DWORD PTR [esi+0x38]  ; 0x472c5a+3 ; source initiale 0x472b5a
  00472c60: 42                                               inc    edx  ; 0x472c5d+3 ; source initiale 0x472b5a
  00472c61: 3b c3                                            cmp    eax,ebx  ; 0x472c60+1 ; source initiale 0x472b5a
  00472c63: 89 5d e0                                         mov    DWORD PTR [ebp-0x20],ebx  ; 0x472c61+2 ; source initiale 0x472b5a
  00472c66: 89 46 20                                         mov    DWORD PTR [esi+0x20],eax  ; 0x472c63+3 ; source initiale 0x472b5a
  00472c69: 89 5e 40                                         mov    DWORD PTR [esi+0x40],ebx  ; 0x472c66+3 ; source initiale 0x472b5a
  00472c6c: c6 46 34 08                                      mov    BYTE PTR [esi+0x34],0x8  ; 0x472c69+3 ; source initiale 0x472b5a
  00472c70: 89 46 2c                                         mov    DWORD PTR [esi+0x2c],eax  ; 0x472c6c+4 ; source initiale 0x472b5a
  00472c73: 89 56 38                                         mov    DWORD PTR [esi+0x38],edx  ; 0x472c70+3 ; source initiale 0x472b5a
  00472c76: 6a 0c                                            push   0xc  ; 0x472c73+3 ; source initiale 0x472b5a
  00472c78: 75 34                                            jne    0x472cae  ; 0x472c76+2 ; source initiale 0x472b5a
  00472c7a: e8 71 f3 fc ff                                   call   0x441ff0  ; 0x472c78+2 ; source initiale 0x472b5a
  00472c7f: 83 c4 04                                         add    esp,0x4  ; 0x472c7a+5 ; source initiale 0x472b5a
  00472c82: 3b c3                                            cmp    eax,ebx  ; 0x472c7f+3 ; source initiale 0x472b5a
  00472c84: 74 07                                            je     0x472c8d  ; 0x472c82+2 ; source initiale 0x472b5a
  00472c86: 89 18                                            mov    DWORD PTR [eax],ebx  ; 0x472c84+2 ; source initiale 0x472b5a
  00472c88: 89 58 04                                         mov    DWORD PTR [eax+0x4],ebx  ; 0x472c86+2 ; source initiale 0x472b5a
  00472c8b: eb 02                                            jmp    0x472c8f  ; 0x472c88+3 ; source initiale 0x472b5a
  00472c8d: 33 c0                                            xor    eax,eax  ; 0x472c84:je ; source initiale 0x472b5a
  00472c8f: 89 46 20                                         mov    DWORD PTR [esi+0x20],eax  ; 0x472c8d+2 ; source initiale 0x472b5a
  00472c92: 89 46 28                                         mov    DWORD PTR [esi+0x28],eax  ; 0x472c8f+3 ; source initiale 0x472b5a
  00472c95: 89 46 24                                         mov    DWORD PTR [esi+0x24],eax  ; 0x472c92+3 ; source initiale 0x472b5a
  00472c98: 89 18                                            mov    DWORD PTR [eax],ebx  ; 0x472c95+3 ; source initiale 0x472b5a
  00472c9a: 8b 4e 20                                         mov    ecx,DWORD PTR [esi+0x20]  ; 0x472c98+2 ; source initiale 0x472b5a
  00472c9d: 89 59 04                                         mov    DWORD PTR [ecx+0x4],ebx  ; 0x472c9a+3 ; source initiale 0x472b5a
  00472ca0: 8b 46 20                                         mov    eax,DWORD PTR [esi+0x20]  ; 0x472c9d+3 ; source initiale 0x472b5a
  00472ca3: 89 78 08                                         mov    DWORD PTR [eax+0x8],edi  ; 0x472ca0+3 ; source initiale 0x472b5a
  00472ca6: ff 45 e8                                         inc    DWORD PTR [ebp-0x18]  ; 0x472ca3+3 ; source initiale 0x472b5a
  00472ca9: e9 16 ff ff ff                                   jmp    0x472bc4  ; 0x472ca6+3 ; source initiale 0x472b5a
  00472cae: e8 3d f3 fc ff                                   call   0x441ff0  ; 0x472c78:jne ; source initiale 0x472b5a
  00472cb3: 83 c4 04                                         add    esp,0x4  ; 0x472cae+5 ; source initiale 0x472b5a
  00472cb6: 3b c3                                            cmp    eax,ebx  ; 0x472cb3+3 ; source initiale 0x472b5a
  00472cb8: 74 07                                            je     0x472cc1  ; 0x472cb6+2 ; source initiale 0x472b5a
  00472cba: 89 18                                            mov    DWORD PTR [eax],ebx  ; 0x472cb8+2 ; source initiale 0x472b5a
  00472cbc: 89 58 04                                         mov    DWORD PTR [eax+0x4],ebx  ; 0x472cba+2 ; source initiale 0x472b5a
  00472cbf: eb 02                                            jmp    0x472cc3  ; 0x472cbc+3 ; source initiale 0x472b5a
  00472cc1: 33 c0                                            xor    eax,eax  ; 0x472cb8:je ; source initiale 0x472b5a
  00472cc3: 8b 56 20                                         mov    edx,DWORD PTR [esi+0x20]  ; 0x472cc1+2 ; source initiale 0x472b5a
  00472cc6: 89 02                                            mov    DWORD PTR [edx],eax  ; 0x472cc3+3 ; source initiale 0x472b5a
  00472cc8: 8b 4e 2c                                         mov    ecx,DWORD PTR [esi+0x2c]  ; 0x472cc6+2 ; source initiale 0x472b5a
  00472ccb: 89 46 20                                         mov    DWORD PTR [esi+0x20],eax  ; 0x472cc8+3 ; source initiale 0x472b5a
  00472cce: 89 46 28                                         mov    DWORD PTR [esi+0x28],eax  ; 0x472ccb+3 ; source initiale 0x472b5a
  00472cd1: 89 48 04                                         mov    DWORD PTR [eax+0x4],ecx  ; 0x472cce+3 ; source initiale 0x472b5a
  00472cd4: 8b 56 20                                         mov    edx,DWORD PTR [esi+0x20]  ; 0x472cd1+3 ; source initiale 0x472b5a
  00472cd7: 89 1a                                            mov    DWORD PTR [edx],ebx  ; 0x472cd4+3 ; source initiale 0x472b5a
  00472cd9: 8b 46 20                                         mov    eax,DWORD PTR [esi+0x20]  ; 0x472cd7+2 ; source initiale 0x472b5a
  00472cdc: 89 78 08                                         mov    DWORD PTR [eax+0x8],edi  ; 0x472cd9+3 ; source initiale 0x472b5a
  00472cdf: ff 45 e8                                         inc    DWORD PTR [ebp-0x18]  ; 0x472cdc+3 ; source initiale 0x472b5a
  00472ce2: e9 dd fe ff ff                                   jmp    0x472bc4  ; 0x472cdf+3 ; source initiale 0x472b5a
  00472ce7: ff 15 ec e0 4d 00                                call   DWORD PTR ds:0x4de0ec  ; 0x472c54:je ; source initiale 0x472b5a
  00472ced: 8b 4d ec                                         mov    ecx,DWORD PTR [ebp-0x14]  ; 0x472ce7+6 ; source initiale 0x472b5a
  00472cf0: 50                                               push   eax  ; 0x472ced+3 ; source initiale 0x472b5a
  00472cf1: 50                                               push   eax  ; 0x472cf0+1 ; source initiale 0x472b5a
  00472cf2: 51                                               push   ecx  ; 0x472cf1+1 ; source initiale 0x472b5a
  00472cf3: 68 a8 9d 50 00                                   push   0x509da8  ; 0x472cf2+1 ; source initiale 0x472b5a
  00472cf8: 6a 04                                            push   0x4  ; 0x472cf3+5 ; source initiale 0x472b5a
  00472cfa: e8 41 f0 ff ff                                   call   0x471d40  ; 0x472cf8+2 ; source initiale 0x472b5a
  00472cff: 57                                               push   edi  ; 0x472cfa+5 ; source initiale 0x472b5a
  00472d00: e8 5b f3 fc ff                                   call   0x442060  ; 0x472cff+1 ; source initiale 0x472b5a
  00472d05: 8b 45 e8                                         mov    eax,DWORD PTR [ebp-0x18]  ; 0x472d00+5 ; source initiale 0x472b5a
  00472d08: 83 c4 18                                         add    esp,0x18  ; 0x472d05+3 ; source initiale 0x472b5a
  00472d0b: 40                                               inc    eax  ; 0x472d08+3 ; source initiale 0x472b5a
  00472d0c: 89 45 e8                                         mov    DWORD PTR [ebp-0x18],eax  ; 0x472d0b+1 ; source initiale 0x472b5a
  00472d0f: e9 b0 fe ff ff                                   jmp    0x472bc4  ; 0x472d0c+3 ; source initiale 0x472b5a
  00472d14: 39 5d e8                                         cmp    DWORD PTR [ebp-0x18],ebx  ; 0x472c2d:je ; source initiale 0x472b5a
  00472d17: 5f                                               pop    edi  ; 0x472d14+3 ; source initiale 0x472b5a
  00472d18: 75 17                                            jne    0x472d31  ; 0x472d17+1 ; source initiale 0x472b5a
  00472d1a: 68 70 9d 50 00                                   push   0x509d70  ; 0x472d18+2 ; source initiale 0x472b5a
  00472d1f: 6a 01                                            push   0x1  ; 0x472d1a+5 ; source initiale 0x472b5a
  00472d21: e8 1a f0 ff ff                                   call   0x471d40  ; 0x472d1f+2 ; source initiale 0x472b5a
  00472d26: 83 c4 08                                         add    esp,0x8  ; 0x472d21+5 ; source initiale 0x472b5a
  00472d29: 6a 78                                            push   0x78  ; 0x472d26+3 ; source initiale 0x472b5a
  00472d2b: ff 15 40 e3 4d 00                                call   DWORD PTR ds:0x4de340  ; 0x472d29+2 ; source initiale 0x472b5a
  00472d31: 8d 8d d0 fe ff ff                                lea    ecx,[ebp-0x130]  ; 0x472d18:jne ; source initiale 0x472b5a
  00472d37: e8 84 66 fe ff                                   call   0x4593c0  ; 0x472d31+6 ; source initiale 0x472b5a
  00472d3c: 8b 45 e0                                         mov    eax,DWORD PTR [ebp-0x20]  ; 0x472bba:je ; source initiale 0x472b5a
  00472d3f: 33 d2                                            xor    edx,edx  ; 0x472d3c+3 ; source initiale 0x472b5a
  00472d41: 3b c3                                            cmp    eax,ebx  ; 0x472d3f+2 ; source initiale 0x472b5a
  00472d43: 0f 94 c2                                         sete   dl  ; 0x472d41+2 ; source initiale 0x472b5a
  00472d46: 8d 8d d0 fe ff ff                                lea    ecx,[ebp-0x130]  ; 0x472d43+3 ; source initiale 0x472b5a
  00472d4c: c6 45 fc 01                                      mov    BYTE PTR [ebp-0x4],0x1  ; 0x472d46+6 ; source initiale 0x472b5a
  00472d50: 8b f2                                            mov    esi,edx  ; 0x472d4c+4 ; source initiale 0x472b5a
  00472d52: e8 49 64 fe ff                                   call   0x4591a0  ; 0x472d50+2 ; source initiale 0x472b5a
  00472d57: 8d 4d e4                                         lea    ecx,[ebp-0x1c]  ; 0x472d52+5 ; source initiale 0x472b5a
  00472d5a: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x472d57+3 ; source initiale 0x472b5a
  00472d5d: e8 de ec 05 00                                   call   0x4d1a40  ; 0x472d5a+3 ; source initiale 0x472b5a
  00472d62: 8d 4d ec                                         lea    ecx,[ebp-0x14]  ; 0x472d5d+5 ; source initiale 0x472b5a
  00472d65: c7 45 fc ff ff ff ff                             mov    DWORD PTR [ebp-0x4],0xffffffff  ; 0x472d62+3 ; source initiale 0x472b5a
  00472d6c: e8 cf ec 05 00                                   call   0x4d1a40  ; 0x472d65+7 ; source initiale 0x472b5a
  00472d71: 8b 4d f4                                         mov    ecx,DWORD PTR [ebp-0xc]  ; 0x472d6c+5 ; source initiale 0x472b5a
  00472d74: 8b c6                                            mov    eax,esi  ; 0x472d71+3 ; source initiale 0x472b5a
  00472d76: 5e                                               pop    esi  ; 0x472d74+2 ; source initiale 0x472b5a
  00472d77: 5b                                               pop    ebx  ; 0x472d76+1 ; source initiale 0x472b5a
  00472d78: 64 89 0d 00 00 00 00                             mov    DWORD PTR fs:0x0,ecx  ; 0x472d77+1 ; source initiale 0x472b5a
  00472d7f: 8b e5                                            mov    esp,ebp  ; 0x472d78+7 ; source initiale 0x472b5a
  00472d81: 5d                                               pop    ebp  ; 0x472d7f+2 ; source initiale 0x472b5a
  00472d82: c3                                               ret  ; 0x472d81+1 ; source initiale 0x472b5a
  00475e65: 89 7d fc                                         mov    DWORD PTR [ebp-0x4],edi  ; fallthrough_source ; source initiale 0x475e60
  00475e68: ff d6                                            call   esi  ; 0x475e65+3 ; source initiale 0x475e60
  00475e6a: 83 c4 04                                         add    esp,0x4  ; 0x475e68+2 ; source initiale 0x475e60
  00475e6d: 8d 55 bc                                         lea    edx,[ebp-0x44]  ; 0x475e6a+3 ; source initiale 0x475e60
  00475e70: b3 0d                                            mov    bl,0xd  ; 0x475e6d+3 ; source initiale 0x475e60
  00475e72: 52                                               push   edx  ; 0x475e70+2 ; source initiale 0x475e60
  00475e73: 8d 8d 70 ff ff ff                                lea    ecx,[ebp-0x90]  ; 0x475e72+1 ; source initiale 0x475e60
  00475e79: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x475e73+6 ; source initiale 0x475e60
  00475e7c: e8 ff 75 02 00                                   call   0x49d480  ; 0x475e79+3 ; source initiale 0x475e60
  00475e81: 6a 01                                            push   0x1  ; 0x475e7c+5 ; source initiale 0x475e60
  00475e83: 8d 45 dc                                         lea    eax,[ebp-0x24]  ; 0x475e81+2 ; source initiale 0x475e60
  00475e86: 50                                               push   eax  ; 0x475e83+3 ; source initiale 0x475e60
  00475e87: 8d 8d 70 ff ff ff                                lea    ecx,[ebp-0x90]  ; 0x475e86+1 ; source initiale 0x475e60
  00475e8d: c6 45 fc 0e                                      mov    BYTE PTR [ebp-0x4],0xe  ; 0x475e87+6 ; source initiale 0x475e60
  00475e91: e8 6a 7c 02 00                                   call   0x49db00  ; 0x475e8d+4 ; source initiale 0x475e60
  00475e96: 8a 45 ef                                         mov    al,BYTE PTR [ebp-0x11]  ; 0x475e91+5 ; source initiale 0x475e60
  00475e99: 84 c0                                            test   al,al  ; 0x475e96+3 ; source initiale 0x475e60
  00475e9b: 74 13                                            je     0x475eb0  ; 0x475e99+2 ; source initiale 0x475e60
  00475e9d: 8b 4d e8                                         mov    ecx,DWORD PTR [ebp-0x18]  ; 0x475e9b+2 ; source initiale 0x475e60
  00475ea0: 51                                               push   ecx  ; 0x475e9d+3 ; source initiale 0x475e60
  00475ea1: 8d 55 d4                                         lea    edx,[ebp-0x2c]  ; 0x475ea0+1 ; source initiale 0x475e60
  00475ea4: 52                                               push   edx  ; 0x475ea1+3 ; source initiale 0x475e60
  00475ea5: 8d 8d 70 ff ff ff                                lea    ecx,[ebp-0x90]  ; 0x475ea4+1 ; source initiale 0x475e60
  00475eab: e8 50 7c 02 00                                   call   0x49db00  ; 0x475ea5+6 ; source initiale 0x475e60
  00475eb0: 8d 85 70 ff ff ff                                lea    eax,[ebp-0x90]  ; 0x475e9b:je ; source initiale 0x475e60
  00475eb6: 50                                               push   eax  ; 0x475eb0+6 ; source initiale 0x475e60
  00475eb7: 8d 4d e4                                         lea    ecx,[ebp-0x1c]  ; 0x475eb6+1 ; source initiale 0x475e60
  00475eba: e8 c1 e1 ff ff                                   call   0x474080  ; 0x475eb7+3 ; source initiale 0x475e60
  00475ebf: 8d 8d 70 ff ff ff                                lea    ecx,[ebp-0x90]  ; 0x475eba+5 ; source initiale 0x475e60
  00475ec5: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x475ebf+6 ; source initiale 0x475e60
  00475ec8: e8 23 76 02 00                                   call   0x49d4f0  ; 0x475ec5+3 ; source initiale 0x475e60
  00475ecd: 68 c4 a4 50 00                                   push   0x50a4c4  ; 0x475ec8+5 ; source initiale 0x475e60
  00475ed2: 89 7d fc                                         mov    DWORD PTR [ebp-0x4],edi  ; 0x475ecd+5 ; source initiale 0x475e60
  00475ed5: ff d6                                            call   esi  ; 0x475ed2+3 ; source initiale 0x475e60
  00475ed7: 83 c4 04                                         add    esp,0x4  ; 0x475ed5+2 ; source initiale 0x475e60
  00475eda: 8d 4d bc                                         lea    ecx,[ebp-0x44]  ; 0x475ed7+3 ; source initiale 0x475e60
  00475edd: 51                                               push   ecx  ; 0x475eda+3 ; source initiale 0x475e60
  00475ede: b3 10                                            mov    bl,0x10  ; 0x475edd+1 ; source initiale 0x475e60
  00475ee0: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475ede+2 ; source initiale 0x475e60
  00475ee3: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x475ee0+3 ; source initiale 0x475e60
  00475ee6: e8 05 d5 01 00                                   call   0x4933f0  ; 0x475ee3+3 ; source initiale 0x475e60
  00475eeb: 6a 01                                            push   0x1  ; 0x475ee6+5 ; source initiale 0x475e60
  00475eed: 8d 55 dc                                         lea    edx,[ebp-0x24]  ; 0x475eeb+2 ; source initiale 0x475e60
  00475ef0: 52                                               push   edx  ; 0x475eed+3 ; source initiale 0x475e60
  00475ef1: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475ef0+1 ; source initiale 0x475e60
  00475ef4: c6 45 fc 11                                      mov    BYTE PTR [ebp-0x4],0x11  ; 0x475ef1+3 ; source initiale 0x475e60
  00475ef8: e8 23 da 01 00                                   call   0x493920  ; 0x475ef4+4 ; source initiale 0x475e60
  00475efd: 8a 45 ef                                         mov    al,BYTE PTR [ebp-0x11]  ; 0x475ef8+5 ; source initiale 0x475e60
  00475f00: 84 c0                                            test   al,al  ; 0x475efd+3 ; source initiale 0x475e60
  00475f02: 74 10                                            je     0x475f14  ; 0x475f00+2 ; source initiale 0x475e60
  00475f04: 8b 45 e8                                         mov    eax,DWORD PTR [ebp-0x18]  ; 0x475f02+2 ; source initiale 0x475e60
  00475f07: 50                                               push   eax  ; 0x475f04+3 ; source initiale 0x475e60
  00475f08: 8d 4d d4                                         lea    ecx,[ebp-0x2c]  ; 0x475f07+1 ; source initiale 0x475e60
  00475f0b: 51                                               push   ecx  ; 0x475f08+3 ; source initiale 0x475e60
  00475f0c: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475f0b+1 ; source initiale 0x475e60
  00475f0f: e8 0c da 01 00                                   call   0x493920  ; 0x475f0c+3 ; source initiale 0x475e60
  00475f14: 8d 55 84                                         lea    edx,[ebp-0x7c]  ; 0x475f02:je ; source initiale 0x475e60
  00475f17: 52                                               push   edx  ; 0x475f14+3 ; source initiale 0x475e60
  00475f18: 8d 4d e4                                         lea    ecx,[ebp-0x1c]  ; 0x475f17+1 ; source initiale 0x475e60
  00475f1b: e8 e0 f1 ff ff                                   call   0x475100  ; 0x475f18+3 ; source initiale 0x475e60
  00475f20: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475f1b+5 ; source initiale 0x475e60
  00475f23: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x475f20+3 ; source initiale 0x475e60
  00475f26: e8 25 d5 01 00                                   call   0x493450  ; 0x475f23+3 ; source initiale 0x475e60
  00475f2b: 8d 4d e4                                         lea    ecx,[ebp-0x1c]  ; 0x475f26+5 ; source initiale 0x475e60
  00475f2e: 89 7d fc                                         mov    DWORD PTR [ebp-0x4],edi  ; 0x475f2b+3 ; source initiale 0x475e60
  00475f31: e8 ca 03 00 00                                   call   0x476300  ; 0x475f2e+3 ; source initiale 0x475e60
  00475f36: 68 b0 a4 50 00                                   push   0x50a4b0  ; 0x475f31+5 ; source initiale 0x475e60
  00475f3b: ff d6                                            call   esi  ; 0x475f36+5 ; source initiale 0x475e60
  00475f3d: 83 c4 04                                         add    esp,0x4  ; 0x475f3b+2 ; source initiale 0x475e60
  00475f40: 8d 45 bc                                         lea    eax,[ebp-0x44]  ; 0x475f3d+3 ; source initiale 0x475e60
  00475f43: b3 13                                            mov    bl,0x13  ; 0x475f40+3 ; source initiale 0x475e60
  00475f45: 50                                               push   eax  ; 0x475f43+2 ; source initiale 0x475e60
  00475f46: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475f45+1 ; source initiale 0x475e60
  00475f49: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x475f46+3 ; source initiale 0x475e60
  00475f4c: e8 6f 3f 02 00                                   call   0x499ec0  ; 0x475f49+3 ; source initiale 0x475e60
  00475f51: 6a 01                                            push   0x1  ; 0x475f4c+5 ; source initiale 0x475e60
  00475f53: 8d 4d dc                                         lea    ecx,[ebp-0x24]  ; 0x475f51+2 ; source initiale 0x475e60
  00475f56: 51                                               push   ecx  ; 0x475f53+3 ; source initiale 0x475e60
  00475f57: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475f56+1 ; source initiale 0x475e60
  00475f5a: c6 45 fc 14                                      mov    BYTE PTR [ebp-0x4],0x14  ; 0x475f57+3 ; source initiale 0x475e60
  00475f5e: e8 1d 42 02 00                                   call   0x49a180  ; 0x475f5a+4 ; source initiale 0x475e60
  00475f63: 8a 45 ef                                         mov    al,BYTE PTR [ebp-0x11]  ; 0x475f5e+5 ; source initiale 0x475e60
  00475f66: 84 c0                                            test   al,al  ; 0x475f63+3 ; source initiale 0x475e60
  00475f68: 74 10                                            je     0x475f7a  ; 0x475f66+2 ; source initiale 0x475e60
  00475f6a: 8b 55 e8                                         mov    edx,DWORD PTR [ebp-0x18]  ; 0x475f68+2 ; source initiale 0x475e60
  00475f6d: 52                                               push   edx  ; 0x475f6a+3 ; source initiale 0x475e60
  00475f6e: 8d 45 d4                                         lea    eax,[ebp-0x2c]  ; 0x475f6d+1 ; source initiale 0x475e60
  00475f71: 50                                               push   eax  ; 0x475f6e+3 ; source initiale 0x475e60
  00475f72: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475f71+1 ; source initiale 0x475e60
  00475f75: e8 06 42 02 00                                   call   0x49a180  ; 0x475f72+3 ; source initiale 0x475e60
  00475f7a: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475f68:je ; source initiale 0x475e60
  00475f7d: 51                                               push   ecx  ; 0x475f7a+3 ; source initiale 0x475e60
  00475f7e: 8d 4d e4                                         lea    ecx,[ebp-0x1c]  ; 0x475f7d+1 ; source initiale 0x475e60
  00475f81: e8 0a f7 ff ff                                   call   0x475690  ; 0x475f7e+3 ; source initiale 0x475e60
  00475f86: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475f81+5 ; source initiale 0x475e60
  00475f89: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x475f86+3 ; source initiale 0x475e60
  00475f8c: e8 8f 3f 02 00                                   call   0x499f20  ; 0x475f89+3 ; source initiale 0x475e60
  00475f91: 68 98 a4 50 00                                   push   0x50a498  ; 0x475f8c+5 ; source initiale 0x475e60
  00475f96: 89 7d fc                                         mov    DWORD PTR [ebp-0x4],edi  ; 0x475f91+5 ; source initiale 0x475e60
  00475f99: ff d6                                            call   esi  ; 0x475f96+3 ; source initiale 0x475e60
  00475f9b: 83 c4 04                                         add    esp,0x4  ; 0x475f99+2 ; source initiale 0x475e60
  00475f9e: 8d 55 bc                                         lea    edx,[ebp-0x44]  ; 0x475f9b+3 ; source initiale 0x475e60
  00475fa1: b3 16                                            mov    bl,0x16  ; 0x475f9e+3 ; source initiale 0x475e60
  00475fa3: 52                                               push   edx  ; 0x475fa1+2 ; source initiale 0x475e60
  00475fa4: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475fa3+1 ; source initiale 0x475e60
  00475fa7: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x475fa4+3 ; source initiale 0x475e60
  00475faa: e8 d1 b1 01 00                                   call   0x491180  ; 0x475fa7+3 ; source initiale 0x475e60
  00475faf: 6a 01                                            push   0x1  ; 0x475faa+5 ; source initiale 0x475e60
  00475fb1: 8d 45 dc                                         lea    eax,[ebp-0x24]  ; 0x475faf+2 ; source initiale 0x475e60
  00475fb4: 50                                               push   eax  ; 0x475fb1+3 ; source initiale 0x475e60
  00475fb5: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475fb4+1 ; source initiale 0x475e60
  00475fb8: c6 45 fc 17                                      mov    BYTE PTR [ebp-0x4],0x17  ; 0x475fb5+3 ; source initiale 0x475e60
  00475fbc: e8 6f b3 01 00                                   call   0x491330  ; 0x475fb8+4 ; source initiale 0x475e60
  00475fc1: 8a 45 ef                                         mov    al,BYTE PTR [ebp-0x11]  ; 0x475fbc+5 ; source initiale 0x475e60
  00475fc4: 84 c0                                            test   al,al  ; 0x475fc1+3 ; source initiale 0x475e60
  00475fc6: 74 10                                            je     0x475fd8  ; 0x475fc4+2 ; source initiale 0x475e60
  00475fc8: 8b 4d e8                                         mov    ecx,DWORD PTR [ebp-0x18]  ; 0x475fc6+2 ; source initiale 0x475e60
  00475fcb: 51                                               push   ecx  ; 0x475fc8+3 ; source initiale 0x475e60
  00475fcc: 8d 55 d4                                         lea    edx,[ebp-0x2c]  ; 0x475fcb+1 ; source initiale 0x475e60
  00475fcf: 52                                               push   edx  ; 0x475fcc+3 ; source initiale 0x475e60
  00475fd0: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475fcf+1 ; source initiale 0x475e60
  00475fd3: e8 58 b3 01 00                                   call   0x491330  ; 0x475fd0+3 ; source initiale 0x475e60
  00475fd8: 8d 45 84                                         lea    eax,[ebp-0x7c]  ; 0x475fc6:je ; source initiale 0x475e60
  00475fdb: 50                                               push   eax  ; 0x475fd8+3 ; source initiale 0x475e60
  00475fdc: 8d 4d e4                                         lea    ecx,[ebp-0x1c]  ; 0x475fdb+1 ; source initiale 0x475e60
  00475fdf: e8 dc f8 ff ff                                   call   0x4758c0  ; 0x475fdc+3 ; source initiale 0x475e60
  00475fe4: 8d 4d 84                                         lea    ecx,[ebp-0x7c]  ; 0x475fdf+5 ; source initiale 0x475e60
  00475fe7: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x475fe4+3 ; source initiale 0x475e60
  00475fea: e8 f1 b1 01 00                                   call   0x4911e0  ; 0x475fe7+3 ; source initiale 0x475e60
  00475fef: 68 84 a4 50 00                                   push   0x50a484  ; 0x475fea+5 ; source initiale 0x475e60
  00475ff4: 89 7d fc                                         mov    DWORD PTR [ebp-0x4],edi  ; 0x475fef+5 ; source initiale 0x475e60
  00475ff7: ff d6                                            call   esi  ; 0x475ff4+3 ; source initiale 0x475e60
  00475ff9: 83 c4 04                                         add    esp,0x4  ; 0x475ff7+2 ; source initiale 0x475e60
  00475ffc: 8d 4d bc                                         lea    ecx,[ebp-0x44]  ; 0x475ff9+3 ; source initiale 0x475e60
  00475fff: 51                                               push   ecx  ; 0x475ffc+3 ; source initiale 0x475e60
  00476000: b3 19                                            mov    bl,0x19  ; 0x475fff+1 ; source initiale 0x475e60
  00476002: 8d 8d 70 ff ff ff                                lea    ecx,[ebp-0x90]  ; 0x476000+2 ; source initiale 0x475e60
  00476008: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x476002+6 ; source initiale 0x475e60
  0047600b: e8 20 bc 01 00                                   call   0x491c30  ; 0x476008+3 ; source initiale 0x475e60
  00476010: 6a 01                                            push   0x1  ; 0x47600b+5 ; source initiale 0x475e60
  00476012: 8d 55 dc                                         lea    edx,[ebp-0x24]  ; 0x476010+2 ; source initiale 0x475e60
  00476015: 52                                               push   edx  ; 0x476012+3 ; source initiale 0x475e60
  00476016: 8d 8d 70 ff ff ff                                lea    ecx,[ebp-0x90]  ; 0x476015+1 ; source initiale 0x475e60
  0047601c: c6 45 fc 1a                                      mov    BYTE PTR [ebp-0x4],0x1a  ; 0x476016+6 ; source initiale 0x475e60
  00476020: e8 ab be 01 00                                   call   0x491ed0  ; 0x47601c+4 ; source initiale 0x475e60
  00476025: 8a 45 ef                                         mov    al,BYTE PTR [ebp-0x11]  ; 0x476020+5 ; source initiale 0x475e60
  00476028: 84 c0                                            test   al,al  ; 0x476025+3 ; source initiale 0x475e60
  0047602a: 74 13                                            je     0x47603f  ; 0x476028+2 ; source initiale 0x475e60
  0047602c: 8b 45 e8                                         mov    eax,DWORD PTR [ebp-0x18]  ; 0x47602a+2 ; source initiale 0x475e60
  0047602f: 50                                               push   eax  ; 0x47602c+3 ; source initiale 0x475e60
  00476030: 8d 4d d4                                         lea    ecx,[ebp-0x2c]  ; 0x47602f+1 ; source initiale 0x475e60
  00476033: 51                                               push   ecx  ; 0x476030+3 ; source initiale 0x475e60
  00476034: 8d 8d 70 ff ff ff                                lea    ecx,[ebp-0x90]  ; 0x476033+1 ; source initiale 0x475e60
  0047603a: e8 91 be 01 00                                   call   0x491ed0  ; 0x476034+6 ; source initiale 0x475e60
  0047603f: 8d 95 70 ff ff ff                                lea    edx,[ebp-0x90]  ; 0x47602a:je ; source initiale 0x475e60
  00476045: 52                                               push   edx  ; 0x47603f+6 ; source initiale 0x475e60
  00476046: 8d 4d e4                                         lea    ecx,[ebp-0x1c]  ; 0x476045+1 ; source initiale 0x475e60
  00476049: e8 f2 f8 ff ff                                   call   0x475940  ; 0x476046+3 ; source initiale 0x475e60
  0047604e: 8d 8d 70 ff ff ff                                lea    ecx,[ebp-0x90]  ; 0x476049+5 ; source initiale 0x475e60
  00476054: 88 5d fc                                         mov    BYTE PTR [ebp-0x4],bl  ; 0x47604e+6 ; source initiale 0x475e60
  00476057: e8 44 bc 01 00                                   call   0x491ca0  ; 0x476054+3 ; source initiale 0x475e60
  0047605c: 8d 4d ac                                         lea    ecx,[ebp-0x54]  ; 0x476057+5 ; source initiale 0x475e60
  0047605f: c7 45 fc 04 00 00 00                             mov    DWORD PTR [ebp-0x4],0x4  ; 0x47605c+3 ; source initiale 0x475e60
  00476066: e8 b5 3d 02 00                                   call   0x499e20  ; 0x47605f+7 ; source initiale 0x475e60
  0047606b: 8d 4d d4                                         lea    ecx,[ebp-0x2c]  ; 0x476066+5 ; source initiale 0x475e60
  0047606e: c6 45 fc 03                                      mov    BYTE PTR [ebp-0x4],0x3  ; 0x47606b+3 ; source initiale 0x475e60
  00476072: e8 c9 33 02 00                                   call   0x499440  ; 0x47606e+4 ; source initiale 0x475e60
  00476077: 8d 4d dc                                         lea    ecx,[ebp-0x24]  ; 0x476072+5 ; source initiale 0x475e60
  0047607a: c6 45 fc 02                                      mov    BYTE PTR [ebp-0x4],0x2  ; 0x476077+3 ; source initiale 0x475e60
  0047607e: e8 bd 33 02 00                                   call   0x499440  ; 0x47607a+4 ; source initiale 0x475e60
  00476083: 8b 4d c8                                         mov    ecx,DWORD PTR [ebp-0x38]  ; 0x47607e+5 ; source initiale 0x475e60
  00476086: 85 c9                                            test   ecx,ecx  ; 0x476083+3 ; source initiale 0x475e60
  00476088: 74 10                                            je     0x47609a  ; 0x476086+2 ; source initiale 0x475e60
  0047608a: 8a 41 ff                                         mov    al,BYTE PTR [ecx-0x1]  ; 0x476088+2 ; source initiale 0x475e60
  0047608d: 84 c0                                            test   al,al  ; 0x47608a+3 ; source initiale 0x475e60
  0047608f: 74 1a                                            je     0x4760ab  ; 0x47608d+2 ; source initiale 0x475e60
  00476091: 3c ff                                            cmp    al,0xff  ; 0x47608f+2 ; source initiale 0x475e60
  00476093: 74 16                                            je     0x4760ab  ; 0x476091+2 ; source initiale 0x475e60
  00476095: fe c8                                            dec    al  ; 0x476093+2 ; source initiale 0x475e60
  00476097: 88 41 ff                                         mov    BYTE PTR [ecx-0x1],al  ; 0x476095+2 ; source initiale 0x475e60
  0047609a: 8b 4d f4                                         mov    ecx,DWORD PTR [ebp-0xc]  ; 0x476088:je ; source initiale 0x475e60
  0047609d: 64 89 0d 00 00 00 00                             mov    DWORD PTR fs:0x0,ecx  ; 0x47609a+3 ; source initiale 0x475e60
  004760a4: 5f                                               pop    edi  ; 0x47609d+7 ; source initiale 0x475e60
  004760a5: 5e                                               pop    esi  ; 0x4760a4+1 ; source initiale 0x475e60
  004760a6: 5b                                               pop    ebx  ; 0x4760a5+1 ; source initiale 0x475e60
  004760a7: 8b e5                                            mov    esp,ebp  ; 0x4760a6+1 ; source initiale 0x475e60
  004760a9: 5d                                               pop    ebp  ; 0x4760a7+2 ; source initiale 0x475e60
  004760aa: c3                                               ret  ; 0x4760a9+1 ; source initiale 0x475e60
  004760ab: 49                                               dec    ecx  ; 0x47608f:je ; source initiale 0x475e60
  004760ac: 51                                               push   ecx  ; 0x4760ab+1 ; source initiale 0x475e60
  004760ad: e8 ae bf fc ff                                   call   0x442060  ; 0x4760ac+1 ; source initiale 0x475e60
  004760b2: 8b 4d f4                                         mov    ecx,DWORD PTR [ebp-0xc]  ; 0x4760ad+5 ; source initiale 0x475e60
  004760b5: 83 c4 04                                         add    esp,0x4  ; 0x4760b2+3 ; source initiale 0x475e60
  004760b8: 5f                                               pop    edi  ; 0x4760b5+3 ; source initiale 0x475e60
  004760b9: 5e                                               pop    esi  ; 0x4760b8+1 ; source initiale 0x475e60
  004760ba: 64 89 0d 00 00 00 00                             mov    DWORD PTR fs:0x0,ecx  ; 0x4760b9+1 ; source initiale 0x475e60
  004760c1: 5b                                               pop    ebx  ; 0x4760ba+7 ; source initiale 0x475e60
  004760c2: 8b e5                                            mov    esp,ebp  ; 0x4760c1+1 ; source initiale 0x475e60
  004760c4: 5d                                               pop    ebp  ; 0x4760c2+2 ; source initiale 0x475e60
  004760c5: c3                                               ret  ; 0x4760c4+1 ; source initiale 0x475e60
