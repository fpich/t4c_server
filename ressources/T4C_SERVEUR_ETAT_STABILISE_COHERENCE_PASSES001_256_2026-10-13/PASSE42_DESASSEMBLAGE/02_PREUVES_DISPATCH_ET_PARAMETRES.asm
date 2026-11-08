; T4C Server(1).exe - Passe 42
; VA, octets bruts, instructions objdump Intel; verification directe de chaque ligne sur .text.
; Fenetres volontairement selectionnees selon les branches analysees; une fonction peut continuer au-dela.

; RegisterSuperstructure: nœud de 8 octets, cle WORD  [0x460bd0,0x460bf7)
  460bd0: 55                                          push   ebp
  460bd1: 8b ec                                       mov    ebp,esp
  460bd3: 6a 08                                       push   0x8
  460bd5: e8 16 14 fe ff                              call   0x441ff0
  460bda: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  460bdd: 66 8b 55 0c                                 mov    dx,WORD PTR [ebp+0xc]
  460be1: 83 c4 04                                    add    esp,0x4
  460be4: 89 08                                       mov    DWORD PTR [eax],ecx
  460be6: 50                                          push   eax
  460be7: b9 60 4d 51 00                              mov    ecx,0x514d60
  460bec: 66 89 50 04                                 mov    WORD PTR [eax+0x4],dx
  460bf0: e8 5b 02 00 00                              call   0x460e50
  460bf5: 5d                                          pop    ebp
  460bf6: c3                                          ret

; Fabrique: recherche de cle WORD puis appel indirect du pointeur de fonction  [0x460c00,0x460c84)
  460c00: 55                                          push   ebp
  460c01: 8b ec                                       mov    ebp,esp
  460c03: 8b 0d 84 4d 51 00                           mov    ecx,DWORD PTR ds:0x514d84
  460c09: 53                                          push   ebx
  460c0a: 56                                          push   esi
  460c0b: 8b 75 0c                                    mov    esi,DWORD PTR [ebp+0xc]
  460c0e: 33 c0                                       xor    eax,eax
  460c10: 33 d2                                       xor    edx,edx
  460c12: 57                                          push   edi
  460c13: 66 8b 7d 08                                 mov    di,WORD PTR [ebp+0x8]
  460c17: 89 0d 80 4d 51 00                           mov    DWORD PTR ds:0x514d80,ecx
  460c1d: 89 15 a0 4d 51 00                           mov    DWORD PTR ds:0x514da0,edx
  460c23: c6 05 94 4d 51 00 08                        mov    BYTE PTR ds:0x514d94,0x8
  460c2a: 85 d2                                       test   edx,edx
  460c2c: 74 0a                                       je     0x460c38
  460c2e: 8b 09                                       mov    ecx,DWORD PTR [ecx]
  460c30: 89 0d 80 4d 51 00                           mov    DWORD PTR ds:0x514d80,ecx
  460c36: eb 0b                                       jmp    0x460c43
  460c38: ba 01 00 00 00                              mov    edx,0x1
  460c3d: 89 15 a0 4d 51 00                           mov    DWORD PTR ds:0x514da0,edx
  460c43: 85 c9                                       test   ecx,ecx
  460c45: 74 23                                       je     0x460c6a
  460c47: 85 c0                                       test   eax,eax
  460c49: 75 34                                       jne    0x460c7f
  460c4b: 8b 59 08                                    mov    ebx,DWORD PTR [ecx+0x8]
  460c4e: 66 39 7b 04                                 cmp    WORD PTR [ebx+0x4],di
  460c52: 75 d6                                       jne    0x460c2a
  460c54: 8b c3                                       mov    eax,ebx
  460c56: 56                                          push   esi
  460c57: ff 10                                       call   DWORD PTR [eax]
  460c59: 8b 0d 80 4d 51 00                           mov    ecx,DWORD PTR ds:0x514d80
  460c5f: 8b 15 a0 4d 51 00                           mov    edx,DWORD PTR ds:0x514da0
  460c65: 83 c4 04                                    add    esp,0x4
  460c68: eb c0                                       jmp    0x460c2a
  460c6a: 85 d2                                       test   edx,edx
  460c6c: 74 07                                       je     0x460c75
  460c6e: c6 05 94 4d 51 00 07                        mov    BYTE PTR ds:0x514d94,0x7
  460c75: c7 05 a0 4d 51 00 00                        mov    DWORD PTR ds:0x514da0,0x0
  460c7c: 00 00 00                                    460c7f:	5f                   	pop    edi
  460c80: 5e                                          pop    esi
  460c81: 5b                                          pop    ebx
  460c82: 5d                                          pop    ebp
  460c83: c3                                          ret

; Passage WDA vers fabrique et boucle de validation virtuelle +0  [0x473997,0x473a97)
  473997: 8b 7e 04                                    mov    edi,DWORD PTR [esi+0x4]
  47399a: 3b 7e 08                                    cmp    edi,DWORD PTR [esi+0x8]
  47399d: 89 7d ec                                    mov    DWORD PTR [ebp-0x14],edi
  4739a0: 0f 84 1c 02 00 00                           je     0x473bc2
  4739a6: 53                                          push   ebx
  4739a7: 8b cf                                       mov    ecx,edi
  4739a9: e8 32 39 03 00                              call   0x4a72e0
  4739ae: 50                                          push   eax
  4739af: e8 4c d2 fe ff                              call   0x460c00
  4739b4: 83 c4 08                                    add    esp,0x8
  4739b7: 85 c0                                       test   eax,eax
  4739b9: 89 45 e8                                    mov    DWORD PTR [ebp-0x18],eax
  4739bc: 0f 84 1b 02 00 00                           je     0x473bdd
  4739c2: 8b cf                                       mov    ecx,edi
  4739c4: e8 27 39 03 00                              call   0x4a72f0
  4739c9: 8b 48 04                                    mov    ecx,DWORD PTR [eax+0x4]
  4739cc: 85 c9                                       test   ecx,ecx
  4739ce: 89 45 e0                                    mov    DWORD PTR [ebp-0x20],eax
  4739d1: 0f 84 16 01 00 00                           je     0x473aed
  4739d7: 8b 40 08                                    mov    eax,DWORD PTR [eax+0x8]
  4739da: 8b d0                                       mov    edx,eax
  4739dc: 89 45 e4                                    mov    DWORD PTR [ebp-0x1c],eax
  4739df: 2b d1                                       sub    edx,ecx
  4739e1: b8 e9 a2 8b 2e                              mov    eax,0x2e8ba2e9
  4739e6: f7 ea                                       imul   edx
  4739e8: c1 fa 03                                    sar    edx,0x3
  4739eb: 8b c2                                       mov    eax,edx
  4739ed: c1 e8 1f                                    shr    eax,0x1f
  4739f0: 03 d0                                       add    edx,eax
  4739f2: 0f 84 f5 00 00 00                           je     0x473aed
  4739f8: 8b 45 e4                                    mov    eax,DWORD PTR [ebp-0x1c]
  4739fb: 8b f9                                       mov    edi,ecx
  4739fd: 3b f8                                       cmp    edi,eax
  4739ff: 0f 84 92 00 00 00                           je     0x473a97
  473a05: 8b cf                                       mov    ecx,edi
  473a07: e8 04 35 03 00                              call   0x4a6f10
  473a0c: 50                                          push   eax
  473a0d: 8b cf                                       mov    ecx,edi
  473a0f: e8 ec 34 03 00                              call   0x4a6f00
  473a14: 8b c8                                       mov    ecx,eax
  473a16: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  473a1c: 51                                          push   ecx
  473a1d: 8b cc                                       mov    ecx,esp
  473a1f: 89 65 e4                                    mov    DWORD PTR [ebp-0x1c],esp
  473a22: 50                                          push   eax
  473a23: e8 3c e0 05 00                              call   0x4d1a64
  473a28: 8b 4d e8                                    mov    ecx,DWORD PTR [ebp-0x18]
  473a2b: 8b 11                                       mov    edx,DWORD PTR [ecx]
  473a2d: ff 12                                       call   DWORD PTR [edx]
  473a2f: 85 c0                                       test   eax,eax
  473a31: 75 53                                       jne    0x473a86
  473a33: 8b cf                                       mov    ecx,edi
  473a35: c7 45 08 01 00 00 00                        mov    DWORD PTR [ebp+0x8],0x1
  473a3c: e8 bf 34 03 00                              call   0x4a6f00
  473a41: 8b 40 04                                    mov    eax,DWORD PTR [eax+0x4]
  473a44: 85 c0                                       test   eax,eax
  473a46: 8b 15 d8 e4 4d 00                           mov    edx,DWORD PTR ds:0x4de4d8
  473a4c: 75 02                                       jne    0x473a50
  473a4e: 8b c2                                       mov    eax,edx
  473a50: 8b 4e 2c                                    mov    ecx,DWORD PTR [esi+0x2c]
  473a53: 85 c9                                       test   ecx,ecx
  473a55: 89 55 e4                                    mov    DWORD PTR [ebp-0x1c],edx
  473a58: 74 03                                       je     0x473a5d
  473a5a: 89 4d e4                                    mov    DWORD PTR [ebp-0x1c],ecx
  473a5d: 50                                          push   eax
  473a5e: 8b cf                                       mov    ecx,edi
  473a60: e8 ab 34 03 00                              call   0x4a6f10
  473a65: 8b 4d ec                                    mov    ecx,DWORD PTR [ebp-0x14]
  473a68: 50                                          push   eax
  473a69: e8 72 38 03 00                              call   0x4a72e0
  473a6e: 8b 4d e4                                    mov    ecx,DWORD PTR [ebp-0x1c]
  473a71: 50                                          push   eax
  473a72: 8b 46 24                                    mov    eax,DWORD PTR [esi+0x24]
  473a75: 50                                          push   eax
  473a76: 51                                          push   ecx
  473a77: 68 98 9f 50 00                              push   0x509f98
  473a7c: 6a 08                                       push   0x8
  473a7e: e8 bd e2 ff ff                              call   0x471d40
  473a83: 83 c4 1c                                    add    esp,0x1c
  473a86: 8b 55 e0                                    mov    edx,DWORD PTR [ebp-0x20]
  473a89: 8b 42 08                                    mov    eax,DWORD PTR [edx+0x8]
  473a8c: 83 c7 2c                                    add    edi,0x2c
  473a8f: 3b f8                                       cmp    edi,eax
  473a91: 0f 85 6e ff ff ff                           jne    0x473a05

; Accesseurs des sous-enregistrements WDA  [0x4a6f00,0x4a6f20)
  4a6f00: 8d 41 18                                    lea    eax,[ecx+0x18]
  4a6f03: c3                                          ret
  4a6f04: 90                                          nop
  4a6f05: 90                                          nop
  4a6f06: 90                                          nop
  4a6f07: 90                                          nop
  4a6f08: 90                                          nop
  4a6f09: 90                                          nop
  4a6f0a: 90                                          nop
  4a6f0b: 90                                          nop
  4a6f0c: 90                                          nop
  4a6f0d: 90                                          nop
  4a6f0e: 90                                          nop
  4a6f0f: 90                                          nop
  4a6f10: 8b 41 28                                    mov    eax,DWORD PTR [ecx+0x28]
  4a6f13: c3                                          ret
  4a6f14: 90                                          nop
  4a6f15: 90                                          nop
  4a6f16: 90                                          nop
  4a6f17: 90                                          nop
  4a6f18: 90                                          nop
  4a6f19: 90                                          nop
  4a6f1a: 90                                          nop
  4a6f1b: 90                                          nop
  4a6f1c: 90                                          nop
  4a6f1d: 90                                          nop
  4a6f1e: 90                                          nop
  4a6f1f: 90                                          nop

; Accesseurs du type d effet et de la collection de parametres  [0x4a72e0,0x4a7310)
  4a72e0: 8b 41 18                                    mov    eax,DWORD PTR [ecx+0x18]
  4a72e3: c3                                          ret
  4a72e4: 90                                          nop
  4a72e5: 90                                          nop
  4a72e6: 90                                          nop
  4a72e7: 90                                          nop
  4a72e8: 90                                          nop
  4a72e9: 90                                          nop
  4a72ea: 90                                          nop
  4a72eb: 90                                          nop
  4a72ec: 90                                          nop
  4a72ed: 90                                          nop
  4a72ee: 90                                          nop
  4a72ef: 90                                          nop
  4a72f0: 8d 41 1c                                    lea    eax,[ecx+0x1c]
  4a72f3: c3                                          ret
  4a72f4: 90                                          nop
  4a72f5: 90                                          nop
  4a72f6: 90                                          nop
  4a72f7: 90                                          nop
  4a72f8: 90                                          nop
  4a72f9: 90                                          nop
  4a72fa: 90                                          nop
  4a72fb: 90                                          nop
  4a72fc: 90                                          nop
  4a72fd: 90                                          nop
  4a72fe: 90                                          nop
  4a72ff: 90                                          nop
  4a7300: 55                                          push   ebp
  4a7301: 8b ec                                       mov    ebp,esp
  4a7303: 81 ec 00 08 00 00                           sub    esp,0x800
  4a7309: 53                                          push   ebx
  4a730a: 8b 5d 08                                    mov    ebx,DWORD PTR [ebp+0x8]
  4a730d: 56                                          push   esi
  4a730e: 8b f1                                       mov    esi,ecx

