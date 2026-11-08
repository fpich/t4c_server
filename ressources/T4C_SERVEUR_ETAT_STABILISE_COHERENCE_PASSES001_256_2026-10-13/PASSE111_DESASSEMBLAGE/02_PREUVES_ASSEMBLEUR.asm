; PASSE 111, Cibles de CALL immédiats révélées par passes 107 à 110
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 8139 distinct instructions; 99 graph entry points

  00402730: 55                                              push   ebp
  00402731: 8b ec                                           mov    ebp,esp
  00402733: 6a ff                                           push   0xffffffff
  00402735: 68 39 2f 4d 00                                  push   0x4d2f39
  0040273a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00402740: 50                                              push   eax
  00402741: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00402748: 51                                              push   ecx
  00402749: 53                                              push   ebx
  0040274a: 8b d9                                           mov    ebx,ecx
  0040274c: 56                                              push   esi
  0040274d: 8d 43 1c                                        lea    eax,[ebx+0x1c]
  00402750: 50                                              push   eax
  00402751: c7 43 14 8c e5 4d 00                            mov    DWORD PTR [ebx+0x14],0x4de58c
  00402758: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  0040275e: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  00402761: 33 c0                                           xor    eax,eax
  00402763: 3b f0                                           cmp    esi,eax
  00402765: 74 47                                           je     0x4027ae
  00402767: 57                                              push   edi
  00402768: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0040276b: 3b f7                                           cmp    esi,edi
  0040276d: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00402770: 74 2d                                           je     0x40279f
  00402772: eb 02                                           jmp    0x402776
  00402774: 33 c0                                           xor    eax,eax
  00402776: 6a 01                                           push   0x1
  00402778: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0040277b: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0040277e: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00402784: 6a 01                                           push   0x1
  00402786: 8b ce                                           mov    ecx,esi
  00402788: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0040278f: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00402795: 83 c6 20                                        add    esi,0x20
  00402798: 3b f7                                           cmp    esi,edi
  0040279a: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0040279d: 75 d5                                           jne    0x402774
  0040279f: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004027a2: 51                                              push   ecx
  004027a3: e8 b8 f8 03 00                                  call   0x442060
  004027a8: 83 c4 04                                        add    esp,0x4
  004027ab: 33 c0                                           xor    eax,eax
  004027ad: 5f                                              pop    edi
  004027ae: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004027b1: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004027b4: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004027b7: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  004027ba: 5e                                              pop    esi
  004027bb: 5b                                              pop    ebx
  004027bc: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004027c3: 8b e5                                           mov    esp,ebp
  004027c5: 5d                                              pop    ebp
  004027c6: c3                                              ret
  00402a30: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00402a32: e9 09 00 00 00                                  jmp    0x402a40
  00402a40: 55                                              push   ebp
  00402a41: 8b ec                                           mov    ebp,esp
  00402a43: 6a ff                                           push   0xffffffff
  00402a45: 68 b4 2f 4d 00                                  push   0x4d2fb4
  00402a4a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00402a50: 50                                              push   eax
  00402a51: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00402a58: 81 ec 40 0a 00 00                               sub    esp,0xa40
  00402a5e: 53                                              push   ebx
  00402a5f: 56                                              push   esi
  00402a60: 8b f1                                           mov    esi,ecx
  00402a62: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  00402a65: 57                                              push   edi
  00402a66: 8d 7e 14                                        lea    edi,[esi+0x14]
  00402a69: 8b cf                                           mov    ecx,edi
  00402a6b: 89 7d d4                                        mov    DWORD PTR [ebp-0x2c],edi
  00402a6e: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00402a71: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00402a74: 33 db                                           xor    ebx,ebx
  00402a76: 3b c3                                           cmp    eax,ebx
  00402a78: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00402a7b: 74 0d                                           je     0x402a8a
  00402a7d: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00402a80: 2b c8                                           sub    ecx,eax
  00402a82: f7 c1 e0 ff ff ff                               test   ecx,0xffffffe0
  00402a88: 75 1f                                           jne    0x402aa9
  00402a8a: 8b 17                                           mov    edx,DWORD PTR [edi]
  00402a8c: 8b cf                                           mov    ecx,edi
  00402a8e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00402a95: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00402a98: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00402a9b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00402aa2: 5f                                              pop    edi
  00402aa3: 5e                                              pop    esi
  00402aa4: 5b                                              pop    ebx
  00402aa5: 8b e5                                           mov    esp,ebp
  00402aa7: 5d                                              pop    ebp
  00402aa8: c3                                              ret
  00402aa9: e8 e2 f7 06 00                                  call   0x472290
  00402aae: 3b 46 10                                        cmp    eax,DWORD PTR [esi+0x10]
  00402ab1: 73 1f                                           jae    0x402ad2
  00402ab3: 8b 07                                           mov    eax,DWORD PTR [edi]
  00402ab5: 8b cf                                           mov    ecx,edi
  00402ab7: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00402abe: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00402ac1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00402ac4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00402acb: 5f                                              pop    edi
  00402acc: 5e                                              pop    esi
  00402acd: 5b                                              pop    ebx
  00402ace: 8b e5                                           mov    esp,ebp
  00402ad0: 5d                                              pop    ebp
  00402ad1: c3                                              ret
  00402ad2: 8a 4d f3                                        mov    cl,BYTE PTR [ebp-0xd]
  00402ad5: 88 4d d8                                        mov    BYTE PTR [ebp-0x28],cl
  00402ad8: 53                                              push   ebx
  00402ad9: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00402adc: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00402ae2: 68 00 01 00 00                                  push   0x100
  00402ae7: 8d 95 b4 fd ff ff                               lea    edx,[ebp-0x24c]
  00402aed: 52                                              push   edx
  00402aee: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00402af2: c6 85 b4 f5 ff ff 00                            mov    BYTE PTR [ebp-0xa4c],0x0
  00402af9: e8 0a fa 0c 00                                  call   0x4d2508
  00402afe: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00402b01: e8 58 ef 0c 00                                  call   0x4d1a5e
  00402b06: 8d 85 b4 fd ff ff                               lea    eax,[ebp-0x24c]
  00402b0c: 50                                              push   eax
  00402b0d: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00402b10: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00402b14: e8 3f ef 0c 00                                  call   0x4d1a58
  00402b19: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00402b1c: 6a 01                                           push   0x1
  00402b1e: 51                                              push   ecx
  00402b1f: e8 5c b6 03 00                                  call   0x43e180
  00402b24: 83 c4 08                                        add    esp,0x8
  00402b27: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  00402b2d: e8 5e 66 05 00                                  call   0x459190
  00402b32: 68 4c 04 50 00                                  push   0x50044c
  00402b37: 68 02 00 00 80                                  push   0x80000002
  00402b3c: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  00402b42: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00402b46: e8 c5 66 05 00                                  call   0x459210
  00402b4b: 68 48 04 50 00                                  push   0x500448
  00402b50: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00402b53: e8 fa ee 0c 00                                  call   0x4d1a52
  00402b58: 68 58 13 51 00                                  push   0x511358
  00402b5d: 68 40 04 50 00                                  push   0x500440
  00402b62: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  00402b68: e8 43 67 05 00                                  call   0x4592b0
  00402b6d: 50                                              push   eax
  00402b6e: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00402b71: e8 dc ee 0c 00                                  call   0x4d1a52
  00402b76: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00402b79: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00402b7c: 8b 3d b0 42 51 00                               mov    edi,DWORD PTR ds:0x5142b0
  00402b82: 52                                              push   edx
  00402b83: 50                                              push   eax
  00402b84: e8 79 f9 0c 00                                  call   0x4d2502
  00402b89: 50                                              push   eax
  00402b8a: 57                                              push   edi
  00402b8b: 8d 8d b4 f5 ff ff                               lea    ecx,[ebp-0xa4c]
  00402b91: 68 0c 04 50 00                                  push   0x50040c
  00402b96: 51                                              push   ecx
  00402b97: e8 a4 0d 00 00                                  call   0x403940
  00402b9c: 8b d0                                           mov    edx,eax
  00402b9e: 83 c9 ff                                        or     ecx,0xffffffff
  00402ba1: 83 c4 14                                        add    esp,0x14
  00402ba4: 33 c0                                           xor    eax,eax
  00402ba6: 8b fa                                           mov    edi,edx
  00402ba8: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00402baa: f7 d1                                           not    ecx
  00402bac: 49                                              dec    ecx
  00402bad: 51                                              push   ecx
  00402bae: 52                                              push   edx
  00402baf: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00402bb2: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00402bb8: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00402bbb: 3b cb                                           cmp    ecx,ebx
  00402bbd: 75 04                                           jne    0x402bc3
  00402bbf: 33 c0                                           xor    eax,eax
  00402bc1: eb 08                                           jmp    0x402bcb
  00402bc3: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00402bc6: 2b c1                                           sub    eax,ecx
  00402bc8: c1 f8 05                                        sar    eax,0x5
  00402bcb: 50                                              push   eax
  00402bcc: 8d 95 b4 f5 ff ff                               lea    edx,[ebp-0xa4c]
  00402bd2: 68 e8 03 50 00                                  push   0x5003e8
  00402bd7: 52                                              push   edx
  00402bd8: e8 63 0d 00 00                                  call   0x403940
  00402bdd: 8b d0                                           mov    edx,eax
  00402bdf: 83 c9 ff                                        or     ecx,0xffffffff
  00402be2: 83 c4 0c                                        add    esp,0xc
  00402be5: 33 c0                                           xor    eax,eax
  00402be7: 8b fa                                           mov    edi,edx
  00402be9: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00402beb: f7 d1                                           not    ecx
  00402bed: 49                                              dec    ecx
  00402bee: 51                                              push   ecx
  00402bef: 52                                              push   edx
  00402bf0: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00402bf3: ff 15 08 e5 4d 00                               call   DWORD PTR ds:0x4de508
  00402bf9: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00402bfc: 85 c0                                           test   eax,eax
  00402bfe: 74 6a                                           je     0x402c6a
  00402c00: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00402c03: 2b c8                                           sub    ecx,eax
  00402c05: c1 f9 05                                        sar    ecx,0x5
  00402c08: 3b d9                                           cmp    ebx,ecx
  00402c0a: 73 5e                                           jae    0x402c6a
  00402c0c: 83 c9 ff                                        or     ecx,0xffffffff
  00402c0f: 33 c0                                           xor    eax,eax
  00402c11: bf cc 03 50 00                                  mov    edi,0x5003cc
  00402c16: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00402c18: f7 d1                                           not    ecx
  00402c1a: 49                                              dec    ecx
  00402c1b: 51                                              push   ecx
  00402c1c: 68 cc 03 50 00                                  push   0x5003cc
  00402c21: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00402c24: ff 15 08 e5 4d 00                               call   DWORD PTR ds:0x4de508
  00402c2a: 53                                              push   ebx
  00402c2b: 8b ce                                           mov    ecx,esi
  00402c2d: e8 ee 0c 00 00                                  call   0x403920
  00402c32: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00402c38: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00402c3a: 51                                              push   ecx
  00402c3b: 83 c0 10                                        add    eax,0x10
  00402c3e: 6a 00                                           push   0x0
  00402c40: 50                                              push   eax
  00402c41: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00402c44: ff 15 04 e5 4d 00                               call   DWORD PTR ds:0x4de504
  00402c4a: 53                                              push   ebx
  00402c4b: 8b ce                                           mov    ecx,esi
  00402c4d: e8 ce 0c 00 00                                  call   0x403920
  00402c52: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00402c58: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00402c5a: 51                                              push   ecx
  00402c5b: 6a 00                                           push   0x0
  00402c5d: 50                                              push   eax
  00402c5e: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00402c61: ff 15 04 e5 4d 00                               call   DWORD PTR ds:0x4de504
  00402c67: 43                                              inc    ebx
  00402c68: eb 8f                                           jmp    0x402bf9
  00402c6a: 8d 55 c4                                        lea    edx,[ebp-0x3c]
  00402c6d: 52                                              push   edx
  00402c6e: ff 15 e4 e0 4d 00                               call   DWORD PTR ds:0x4de0e4
  00402c74: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  00402c77: 85 c0                                           test   eax,eax
  00402c79: 75 05                                           jne    0x402c80
  00402c7b: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00402c80: 8b 4d ce                                        mov    ecx,DWORD PTR [ebp-0x32]
  00402c83: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  00402c86: 6a 00                                           push   0x0
  00402c88: 68 c0 03 50 00                                  push   0x5003c0
  00402c8d: 68 a0 03 50 00                                  push   0x5003a0
  00402c92: 6a 00                                           push   0x0
  00402c94: 50                                              push   eax
  00402c95: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  00402c98: 8b 3d b0 42 51 00                               mov    edi,DWORD PTR ds:0x5142b0
  00402c9e: 25 ff ff 00 00                                  and    eax,0xffff
  00402ca3: 50                                              push   eax
  00402ca4: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  00402ca7: 81 e1 ff ff 00 00                               and    ecx,0xffff
  00402cad: 51                                              push   ecx
  00402cae: 8b 4d ca                                        mov    ecx,DWORD PTR [ebp-0x36]
  00402cb1: 81 e2 ff ff 00 00                               and    edx,0xffff
  00402cb7: 52                                              push   edx
  00402cb8: 8b 55 c6                                        mov    edx,DWORD PTR [ebp-0x3a]
  00402cbb: 25 ff ff 00 00                                  and    eax,0xffff
  00402cc0: 50                                              push   eax
  00402cc1: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00402cc4: 81 e1 ff ff 00 00                               and    ecx,0xffff
  00402cca: 51                                              push   ecx
  00402ccb: 8b 0d ac 42 51 00                               mov    ecx,DWORD PTR ds:0x5142ac
  00402cd1: 81 e2 ff ff 00 00                               and    edx,0xffff
  00402cd7: 52                                              push   edx
  00402cd8: 50                                              push   eax
  00402cd9: 51                                              push   ecx
  00402cda: 8d 95 b4 f5 ff ff                               lea    edx,[ebp-0xa4c]
  00402ce0: 68 68 03 50 00                                  push   0x500368
  00402ce5: 52                                              push   edx
  00402ce6: e8 55 0c 00 00                                  call   0x403940
  00402ceb: 83 c4 28                                        add    esp,0x28
  00402cee: 50                                              push   eax
  00402cef: 68 4c 03 50 00                                  push   0x50034c
  00402cf4: 57                                              push   edi
  00402cf5: 68 3c 03 50 00                                  push   0x50033c
  00402cfa: 8d 4d f3                                        lea    ecx,[ebp-0xd]
  00402cfd: e8 7e 00 00 00                                  call   0x402d80
  00402d02: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  00402d08: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00402d0c: e8 8f 64 05 00                                  call   0x4591a0
  00402d11: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00402d14: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00402d18: e8 23 ed 0c 00                                  call   0x4d1a40
  00402d1d: 6a 01                                           push   0x1
  00402d1f: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00402d22: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00402d26: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00402d2c: 51                                              push   ecx
  00402d2d: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00402d30: 8b c4                                           mov    eax,esp
  00402d32: 51                                              push   ecx
  00402d33: 89 08                                           mov    DWORD PTR [eax],ecx
  00402d35: 54                                              push   esp
  00402d36: 8b ce                                           mov    ecx,esi
  00402d38: e8 23 0e 00 00                                  call   0x403b60
  00402d3d: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00402d40: 50                                              push   eax
  00402d41: 8b ce                                           mov    ecx,esi
  00402d43: e8 98 0e 00 00                                  call   0x403be0
  00402d48: e8 43 f5 06 00                                  call   0x472290
  00402d4d: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  00402d50: 05 70 17 00 00                                  add    eax,0x1770
  00402d55: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  00402d58: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00402d5a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00402d61: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00402d64: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00402d67: 5f                                              pop    edi
  00402d68: 5e                                              pop    esi
  00402d69: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00402d70: 5b                                              pop    ebx
  00402d71: 8b e5                                           mov    esp,ebp
  00402d73: 5d                                              pop    ebp
  00402d74: c3                                              ret
  00406a50: 55                                              push   ebp
  00406a51: 8b ec                                           mov    ebp,esp
  00406a53: 6a ff                                           push   0xffffffff
  00406a55: 68 0b 34 4d 00                                  push   0x4d340b
  00406a5a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00406a60: 50                                              push   eax
  00406a61: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00406a68: 81 ec b0 01 00 00                               sub    esp,0x1b0
  00406a6e: 8a 45 17                                        mov    al,BYTE PTR [ebp+0x17]
  00406a71: 53                                              push   ebx
  00406a72: 56                                              push   esi
  00406a73: 57                                              push   edi
  00406a74: 33 f6                                           xor    esi,esi
  00406a76: 56                                              push   esi
  00406a77: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00406a7a: 88 45 ac                                        mov    BYTE PTR [ebp-0x54],al
  00406a7d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406a83: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  00406a86: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  00406a89: ff 15 f8 e4 4d 00                               call   DWORD PTR ds:0x4de4f8
  00406a8f: 89 75 cc                                        mov    DWORD PTR [ebp-0x34],esi
  00406a92: 89 75 d0                                        mov    DWORD PTR [ebp-0x30],esi
  00406a95: 8d 8d 44 fe ff ff                               lea    ecx,[ebp-0x1bc]
  00406a9b: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00406aa2: e8 e9 26 05 00                                  call   0x459190
  00406aa7: 8a 4d 17                                        mov    cl,BYTE PTR [ebp+0x17]
  00406aaa: 88 4d d4                                        mov    BYTE PTR [ebp-0x2c],cl
  00406aad: 56                                              push   esi
  00406aae: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00406ab1: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00406ab5: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406abb: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00406abe: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00406ac1: 83 c9 ff                                        or     ecx,0xffffffff
  00406ac4: 33 c0                                           xor    eax,eax
  00406ac6: 8b fe                                           mov    edi,esi
  00406ac8: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00406aca: f7 d1                                           not    ecx
  00406acc: 49                                              dec    ecx
  00406acd: 51                                              push   ecx
  00406ace: 56                                              push   esi
  00406acf: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00406ad2: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00406ad6: 89 55 a8                                        mov    DWORD PTR [ebp-0x58],edx
  00406ad9: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00406adf: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00406ae2: 83 c9 ff                                        or     ecx,0xffffffff
  00406ae5: 33 c0                                           xor    eax,eax
  00406ae7: 8b fb                                           mov    edi,ebx
  00406ae9: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00406aeb: f7 d1                                           not    ecx
  00406aed: 49                                              dec    ecx
  00406aee: 51                                              push   ecx
  00406aef: 53                                              push   ebx
  00406af0: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  00406af3: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00406af9: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  00406afc: 56                                              push   esi
  00406afd: 50                                              push   eax
  00406afe: 8d 8d 44 fe ff ff                               lea    ecx,[ebp-0x1bc]
  00406b04: e8 07 27 05 00                                  call   0x459210
  00406b09: 8a 4d 17                                        mov    cl,BYTE PTR [ebp+0x17]
  00406b0c: 88 4d e4                                        mov    BYTE PTR [ebp-0x1c],cl
  00406b0f: 6a 00                                           push   0x0
  00406b11: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00406b14: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406b1a: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00406b1d: 85 c0                                           test   eax,eax
  00406b1f: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00406b23: 75 07                                           jne    0x406b2c
  00406b25: 68 58 13 51 00                                  push   0x511358
  00406b2a: eb 01                                           jmp    0x406b2d
  00406b2c: 50                                              push   eax
  00406b2d: 53                                              push   ebx
  00406b2e: 8d 8d 44 fe ff ff                               lea    ecx,[ebp-0x1bc]
  00406b34: e8 77 27 05 00                                  call   0x4592b0
  00406b39: 8b d0                                           mov    edx,eax
  00406b3b: 83 c9 ff                                        or     ecx,0xffffffff
  00406b3e: 33 c0                                           xor    eax,eax
  00406b40: 8b fa                                           mov    edi,edx
  00406b42: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00406b44: f7 d1                                           not    ecx
  00406b46: 49                                              dec    ecx
  00406b47: 51                                              push   ecx
  00406b48: 52                                              push   edx
  00406b49: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00406b4c: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00406b52: 50                                              push   eax
  00406b53: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00406b56: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00406b59: 58                                              pop    eax
  00406b5a: e8 a1 d6 02 00                                  call   0x434200
  00406b5f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00406b61: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00406b64: 51                                              push   ecx
  00406b65: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00406b68: 68 18 14 51 00                                  push   0x511418
  00406b6d: 51                                              push   ecx
  00406b6e: 8b c8                                           mov    ecx,eax
  00406b70: ff 12                                           call   DWORD PTR [edx]
  00406b72: 68 20 14 51 00                                  push   0x511420
  00406b77: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00406b7d: e8 7e d6 02 00                                  call   0x434200
  00406b82: 8b 10                                           mov    edx,DWORD PTR [eax]
  00406b84: 68 1c 14 51 00                                  push   0x51141c
  00406b89: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00406b8c: 51                                              push   ecx
  00406b8d: 8b c8                                           mov    ecx,eax
  00406b8f: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00406b92: 8a 55 17                                        mov    dl,BYTE PTR [ebp+0x17]
  00406b95: 6a 00                                           push   0x0
  00406b97: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  00406b9a: 88 55 98                                        mov    BYTE PTR [ebp-0x68],dl
  00406b9d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406ba3: 8d 45 98                                        lea    eax,[ebp-0x68]
  00406ba6: 50                                              push   eax
  00406ba7: 8d 4d a8                                        lea    ecx,[ebp-0x58]
  00406baa: 51                                              push   ecx
  00406bab: b3 05                                           mov    bl,0x5
  00406bad: 8d 8d 54 ff ff ff                               lea    ecx,[ebp-0xac]
  00406bb3: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00406bb6: e8 75 0d 00 00                                  call   0x407930
  00406bbb: 50                                              push   eax
  00406bbc: 8d 55 90                                        lea    edx,[ebp-0x70]
  00406bbf: 52                                              push   edx
  00406bc0: b9 08 14 51 00                                  mov    ecx,0x511408
  00406bc5: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  00406bc9: e8 92 0c 00 00                                  call   0x407860
  00406bce: 8b 30                                           mov    esi,DWORD PTR [eax]
  00406bd0: 8d 8d 54 ff ff ff                               lea    ecx,[ebp-0xac]
  00406bd6: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00406bd9: e8 72 0b 00 00                                  call   0x407750
  00406bde: 6a 01                                           push   0x1
  00406be0: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  00406be3: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00406be7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406bed: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00406bf2: 8b 10                                           mov    edx,DWORD PTR [eax]
  00406bf4: 8d 4e 38                                        lea    ecx,[esi+0x38]
  00406bf7: 52                                              push   edx
  00406bf8: 33 f6                                           xor    esi,esi
  00406bfa: 56                                              push   esi
  00406bfb: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00406bfe: 50                                              push   eax
  00406bff: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00406c05: e8 f6 d5 02 00                                  call   0x434200
  00406c0a: 8b 10                                           mov    edx,DWORD PTR [eax]
  00406c0c: 68 1c 14 51 00                                  push   0x51141c
  00406c11: 8b c8                                           mov    ecx,eax
  00406c13: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00406c16: 68 20 14 51 00                                  push   0x511420
  00406c1b: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00406c21: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00406c24: 3b c6                                           cmp    eax,esi
  00406c26: 74 1c                                           je     0x406c44
  00406c28: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00406c2b: 8a 01                                           mov    al,BYTE PTR [ecx]
  00406c2d: 84 c0                                           test   al,al
  00406c2f: 74 0a                                           je     0x406c3b
  00406c31: 3c ff                                           cmp    al,0xff
  00406c33: 74 06                                           je     0x406c3b
  00406c35: fe c8                                           dec    al
  00406c37: 88 01                                           mov    BYTE PTR [ecx],al
  00406c39: eb 09                                           jmp    0x406c44
  00406c3b: 51                                              push   ecx
  00406c3c: e8 1f b4 03 00                                  call   0x442060
  00406c41: 83 c4 04                                        add    esp,0x4
  00406c44: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  00406c47: 3b c6                                           cmp    eax,esi
  00406c49: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  00406c4c: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00406c4f: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00406c52: 74 1c                                           je     0x406c70
  00406c54: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00406c57: 8a 01                                           mov    al,BYTE PTR [ecx]
  00406c59: 84 c0                                           test   al,al
  00406c5b: 74 0a                                           je     0x406c67
  00406c5d: 3c ff                                           cmp    al,0xff
  00406c5f: 74 06                                           je     0x406c67
  00406c61: fe c8                                           dec    al
  00406c63: 88 01                                           mov    BYTE PTR [ecx],al
  00406c65: eb 09                                           jmp    0x406c70
  00406c67: 51                                              push   ecx
  00406c68: e8 f3 b3 03 00                                  call   0x442060
  00406c6d: 83 c4 04                                        add    esp,0x4
  00406c70: 8d 8d 44 fe ff ff                               lea    ecx,[ebp-0x1bc]
  00406c76: 89 75 d8                                        mov    DWORD PTR [ebp-0x28],esi
  00406c79: 89 75 dc                                        mov    DWORD PTR [ebp-0x24],esi
  00406c7c: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  00406c7f: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00406c83: e8 18 25 05 00                                  call   0x4591a0
  00406c88: 6a 01                                           push   0x1
  00406c8a: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  00406c8d: c7 45 fc 07 00 00 00                            mov    DWORD PTR [ebp-0x4],0x7
  00406c94: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406c9a: 6a 01                                           push   0x1
  00406c9c: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00406c9f: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00406ca6: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406cac: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00406caf: 5f                                              pop    edi
  00406cb0: 5e                                              pop    esi
  00406cb1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00406cb8: 5b                                              pop    ebx
  00406cb9: 8b e5                                           mov    esp,ebp
  00406cbb: 5d                                              pop    ebp
  00406cbc: c3                                              ret
  00410e50: 55                                              push   ebp
  00410e51: 8b ec                                           mov    ebp,esp
  00410e53: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  00410e56: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00410e59: 89 10                                           mov    DWORD PTR [eax],edx
  00410e5b: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00410e5e: 5d                                              pop    ebp
  00410e5f: c2 04 00                                        ret    0x4
  00410e70: 55                                              push   ebp
  00410e71: 8b ec                                           mov    ebp,esp
  00410e73: 6a ff                                           push   0xffffffff
  00410e75: 68 19 38 4d 00                                  push   0x4d3819
  00410e7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00410e80: 50                                              push   eax
  00410e81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00410e88: 83 ec 3c                                        sub    esp,0x3c
  00410e8b: 53                                              push   ebx
  00410e8c: 56                                              push   esi
  00410e8d: 8b f1                                           mov    esi,ecx
  00410e8f: 57                                              push   edi
  00410e90: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  00410e93: f7 c7 ff 03 00 00                               test   edi,0x3ff
  00410e99: 0f 85 47 01 00 00                               jne    0x410fe6
  00410e9f: 8b 4e 10                                        mov    ecx,DWORD PTR [esi+0x10]
  00410ea2: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00410ea5: 81 c1 00 04 00 00                               add    ecx,0x400
  00410eab: c1 e9 0a                                        shr    ecx,0xa
  00410eae: 3b c1                                           cmp    eax,ecx
  00410eb0: 0f 87 30 01 00 00                               ja     0x410fe6
  00410eb6: ba ff ff 0f 00                                  mov    edx,0xfffff
  00410ebb: bb 01 00 00 00                                  mov    ebx,0x1
  00410ec0: 2b d0                                           sub    edx,eax
  00410ec2: 3b d3                                           cmp    edx,ebx
  00410ec4: 73 2f                                           jae    0x410ef5
  00410ec6: 68 f4 10 50 00                                  push   0x5010f4
  00410ecb: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00410ece: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00410ed4: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  00410ed7: 50                                              push   eax
  00410ed8: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00410edb: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00410ee2: e8 39 45 ff ff                                  call   0x405420
  00410ee7: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00410eec: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00410eef: 51                                              push   ecx
  00410ef0: e8 61 0e 0c 00                                  call   0x4d1d56
  00410ef5: 8b c8                                           mov    ecx,eax
  00410ef7: d1 e9                                           shr    ecx,1
  00410ef9: 83 f9 08                                        cmp    ecx,0x8
  00410efc: 73 07                                           jae    0x410f05
  00410efe: b9 08 00 00 00                                  mov    ecx,0x8
  00410f03: eb 05                                           jmp    0x410f0a
  00410f05: 83 f9 01                                        cmp    ecx,0x1
  00410f08: 76 0d                                           jbe    0x410f17
  00410f0a: ba ff ff 0f 00                                  mov    edx,0xfffff
  00410f0f: 2b d1                                           sub    edx,ecx
  00410f11: 3b c2                                           cmp    eax,edx
  00410f13: 77 02                                           ja     0x410f17
  00410f15: 8b d9                                           mov    ebx,ecx
  00410f17: 03 c3                                           add    eax,ebx
  00410f19: c1 e0 02                                        shl    eax,0x2
  00410f1c: 50                                              push   eax
  00410f1d: c1 ef 0a                                        shr    edi,0xa
  00410f20: e8 cb 10 03 00                                  call   0x441ff0
  00410f25: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00410f28: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00410f2b: 8d 0c b8                                        lea    ecx,[eax+edi*4]
  00410f2e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00410f31: 8d 14 90                                        lea    edx,[eax+edx*4]
  00410f34: 8d 04 b8                                        lea    eax,[eax+edi*4]
  00410f37: 83 c4 04                                        add    esp,0x4
  00410f3a: 3b c2                                           cmp    eax,edx
  00410f3c: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  00410f3f: 74 11                                           je     0x410f52
  00410f41: 8b 10                                           mov    edx,DWORD PTR [eax]
  00410f43: 89 11                                           mov    DWORD PTR [ecx],edx
  00410f45: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  00410f48: 83 c0 04                                        add    eax,0x4
  00410f4b: 83 c1 04                                        add    ecx,0x4
  00410f4e: 3b c2                                           cmp    eax,edx
  00410f50: 75 ef                                           jne    0x410f41
  00410f52: 3b fb                                           cmp    edi,ebx
  00410f54: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00410f57: 77 4b                                           ja     0x410fa4
  00410f59: 8d 14 b8                                        lea    edx,[eax+edi*4]
  00410f5c: 3b c2                                           cmp    eax,edx
  00410f5e: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  00410f61: 74 11                                           je     0x410f74
  00410f63: 8b 10                                           mov    edx,DWORD PTR [eax]
  00410f65: 89 11                                           mov    DWORD PTR [ecx],edx
  00410f67: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  00410f6a: 83 c0 04                                        add    eax,0x4
  00410f6d: 83 c1 04                                        add    ecx,0x4
  00410f70: 3b c2                                           cmp    eax,edx
  00410f72: 75 ef                                           jne    0x410f63
  00410f74: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00410f77: 50                                              push   eax
  00410f78: 8b d3                                           mov    edx,ebx
  00410f7a: 2b d7                                           sub    edx,edi
  00410f7c: 52                                              push   edx
  00410f7d: 51                                              push   ecx
  00410f7e: c7 45 e8 00 00 00 00                            mov    DWORD PTR [ebp-0x18],0x0
  00410f85: e8 66 06 00 00                                  call   0x4115f0
  00410f8a: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00410f8d: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00410f90: 50                                              push   eax
  00410f91: 57                                              push   edi
  00410f92: 51                                              push   ecx
  00410f93: c7 45 e8 00 00 00 00                            mov    DWORD PTR [ebp-0x18],0x0
  00410f9a: e8 51 06 00 00                                  call   0x4115f0
  00410f9f: 83 c4 18                                        add    esp,0x18
  00410fa2: eb 34                                           jmp    0x410fd8
  00410fa4: 51                                              push   ecx
  00410fa5: 8d 14 98                                        lea    edx,[eax+ebx*4]
  00410fa8: 52                                              push   edx
  00410fa9: 50                                              push   eax
  00410faa: e8 11 06 00 00                                  call   0x4115c0
  00410faf: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00410fb2: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00410fb5: 51                                              push   ecx
  00410fb6: 8d 14 b8                                        lea    edx,[eax+edi*4]
  00410fb9: 52                                              push   edx
  00410fba: 8d 04 98                                        lea    eax,[eax+ebx*4]
  00410fbd: 50                                              push   eax
  00410fbe: e8 fd 05 00 00                                  call   0x4115c0
  00410fc3: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00410fc6: 51                                              push   ecx
  00410fc7: 53                                              push   ebx
  00410fc8: 50                                              push   eax
  00410fc9: c7 45 e4 00 00 00 00                            mov    DWORD PTR [ebp-0x1c],0x0
  00410fd0: e8 1b 06 00 00                                  call   0x4115f0
  00410fd5: 83 c4 24                                        add    esp,0x24
  00410fd8: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00410fdb: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00410fde: 03 c3                                           add    eax,ebx
  00410fe0: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00410fe3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00410fe6: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  00410fe9: 85 ff                                           test   edi,edi
  00410feb: 75 06                                           jne    0x410ff3
  00410fed: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  00410ff0: c1 e7 0a                                        shl    edi,0xa
  00410ff3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00410ff6: 4f                                              dec    edi
  00410ff7: 8b df                                           mov    ebx,edi
  00410ff9: c1 eb 0a                                        shr    ebx,0xa
  00410ffc: 83 3c 98 00                                     cmp    DWORD PTR [eax+ebx*4],0x0
  00411000: 75 13                                           jne    0x411015
  00411002: 68 00 10 00 00                                  push   0x1000
  00411007: e8 e4 0f 03 00                                  call   0x441ff0
  0041100c: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0041100f: 83 c4 04                                        add    esp,0x4
  00411012: 89 04 99                                        mov    DWORD PTR [ecx+ebx*4],eax
  00411015: ff 46 10                                        inc    DWORD PTR [esi+0x10]
  00411018: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0041101b: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0041101e: 8b 04 9a                                        mov    eax,DWORD PTR [edx+ebx*4]
  00411021: 81 e7 ff 03 00 00                               and    edi,0x3ff
  00411027: 8d 3c b8                                        lea    edi,[eax+edi*4]
  0041102a: 85 ff                                           test   edi,edi
  0041102c: 74 07                                           je     0x411035
  0041102e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00411031: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00411033: 89 17                                           mov    DWORD PTR [edi],edx
  00411035: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00411038: 5f                                              pop    edi
  00411039: 5e                                              pop    esi
  0041103a: 5b                                              pop    ebx
  0041103b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00411042: 8b e5                                           mov    esp,ebp
  00411044: 5d                                              pop    ebp
  00411045: c2 04 00                                        ret    0x4
  00411050: 8b 41 10                                        mov    eax,DWORD PTR [ecx+0x10]
  00411053: 85 c0                                           test   eax,eax
  00411055: 74 0b                                           je     0x411062
  00411057: 48                                              dec    eax
  00411058: 85 c0                                           test   eax,eax
  0041105a: 89 41 10                                        mov    DWORD PTR [ecx+0x10],eax
  0041105d: 75 03                                           jne    0x411062
  0041105f: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  00411062: c3                                              ret
  00411070: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00411072: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00411075: 8b c2                                           mov    eax,edx
  00411077: 56                                              push   esi
  00411078: c1 e8 0a                                        shr    eax,0xa
  0041107b: 8b f0                                           mov    esi,eax
  0041107d: c1 e6 0a                                        shl    esi,0xa
  00411080: 2b d6                                           sub    edx,esi
  00411082: 8b 71 08                                        mov    esi,DWORD PTR [ecx+0x8]
  00411085: 3b f0                                           cmp    esi,eax
  00411087: 77 02                                           ja     0x41108b
  00411089: 2b c6                                           sub    eax,esi
  0041108b: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0041108e: 8b 04 81                                        mov    eax,DWORD PTR [ecx+eax*4]
  00411091: 8d 04 90                                        lea    eax,[eax+edx*4]
  00411094: 5e                                              pop    esi
  00411095: c3                                              ret
  004110a0: 55                                              push   ebp
  004110a1: 8b ec                                           mov    ebp,esp
  004110a3: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004110a5: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004110a8: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004110ab: 03 d0                                           add    edx,eax
  004110ad: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004110b0: 89 10                                           mov    DWORD PTR [eax],edx
  004110b2: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004110b5: 5d                                              pop    ebp
  004110b6: c2 08 00                                        ret    0x8
  004110c0: 55                                              push   ebp
  004110c1: 8b ec                                           mov    ebp,esp
  004110c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004110c6: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004110c9: 3b 50 04                                        cmp    edx,DWORD PTR [eax+0x4]
  004110cc: 75 0f                                           jne    0x4110dd
  004110ce: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004110d0: 3b 08                                           cmp    ecx,DWORD PTR [eax]
  004110d2: 75 09                                           jne    0x4110dd
  004110d4: b8 01 00 00 00                                  mov    eax,0x1
  004110d9: 5d                                              pop    ebp
  004110da: c2 04 00                                        ret    0x4
  004110dd: 33 c0                                           xor    eax,eax
  004110df: 5d                                              pop    ebp
  004110e0: c2 04 00                                        ret    0x4
  00411540: 55                                              push   ebp
  00411541: 8b ec                                           mov    ebp,esp
  00411543: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00411546: 8b 55 1c                                        mov    edx,DWORD PTR [ebp+0x1c]
  00411549: 53                                              push   ebx
  0041154a: 56                                              push   esi
  0041154b: 57                                              push   edi
  0041154c: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041154f: 3b 45 18                                        cmp    eax,DWORD PTR [ebp+0x18]
  00411552: 75 05                                           jne    0x411559
  00411554: 3b 7d 14                                        cmp    edi,DWORD PTR [ebp+0x14]
  00411557: 74 56                                           je     0x4115af
  00411559: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041155c: 8b cf                                           mov    ecx,edi
  0041155e: c1 e9 0a                                        shr    ecx,0xa
  00411561: 8b f1                                           mov    esi,ecx
  00411563: c1 e6 0a                                        shl    esi,0xa
  00411566: 8b de                                           mov    ebx,esi
  00411568: 8b f7                                           mov    esi,edi
  0041156a: 2b f3                                           sub    esi,ebx
  0041156c: 3b c1                                           cmp    eax,ecx
  0041156e: 77 02                                           ja     0x411572
  00411570: 2b c8                                           sub    ecx,eax
  00411572: 8b c2                                           mov    eax,edx
  00411574: c1 e8 0a                                        shr    eax,0xa
  00411577: 8b d8                                           mov    ebx,eax
  00411579: c1 e3 0a                                        shl    ebx,0xa
  0041157c: 2b d3                                           sub    edx,ebx
  0041157e: 8b 5d 20                                        mov    ebx,DWORD PTR [ebp+0x20]
  00411581: 8b 5b 08                                        mov    ebx,DWORD PTR [ebx+0x8]
  00411584: 3b d8                                           cmp    ebx,eax
  00411586: 77 02                                           ja     0x41158a
  00411588: 2b c3                                           sub    eax,ebx
  0041158a: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  0041158d: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  00411590: 8b 0c 8b                                        mov    ecx,DWORD PTR [ebx+ecx*4]
  00411593: 8b 5d 20                                        mov    ebx,DWORD PTR [ebp+0x20]
  00411596: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  00411599: 8b 04 83                                        mov    eax,DWORD PTR [ebx+eax*4]
  0041159c: 8b 0c b1                                        mov    ecx,DWORD PTR [ecx+esi*4]
  0041159f: 89 0c 90                                        mov    DWORD PTR [eax+edx*4],ecx
  004115a2: 8b 55 1c                                        mov    edx,DWORD PTR [ebp+0x1c]
  004115a5: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004115a8: 42                                              inc    edx
  004115a9: 89 55 1c                                        mov    DWORD PTR [ebp+0x1c],edx
  004115ac: 47                                              inc    edi
  004115ad: eb a0                                           jmp    0x41154f
  004115af: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004115b2: 5f                                              pop    edi
  004115b3: 89 10                                           mov    DWORD PTR [eax],edx
  004115b5: 8b 55 20                                        mov    edx,DWORD PTR [ebp+0x20]
  004115b8: 5e                                              pop    esi
  004115b9: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004115bc: 5b                                              pop    ebx
  004115bd: 5d                                              pop    ebp
  004115be: c3                                              ret
  00423460: 55                                              push   ebp
  00423461: 8b ec                                           mov    ebp,esp
  00423463: 6a ff                                           push   0xffffffff
  00423465: 68 f9 44 4d 00                                  push   0x4d44f9
  0042346a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00423470: 50                                              push   eax
  00423471: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00423478: 83 ec 34                                        sub    esp,0x34
  0042347b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042347e: 56                                              push   esi
  0042347f: 8b f1                                           mov    esi,ecx
  00423481: 8a 48 21                                        mov    cl,BYTE PTR [eax+0x21]
  00423484: 84 c9                                           test   cl,cl
  00423486: 57                                              push   edi
  00423487: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0042348a: 74 57                                           je     0x4234e3
  0042348c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  0042348f: 6a 00                                           push   0x0
  00423491: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00423494: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00423497: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042349d: 83 c9 ff                                        or     ecx,0xffffffff
  004234a0: 33 c0                                           xor    eax,eax
  004234a2: bf 40 05 50 00                                  mov    edi,0x500540
  004234a7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004234a9: f7 d1                                           not    ecx
  004234ab: 49                                              dec    ecx
  004234ac: 51                                              push   ecx
  004234ad: 68 40 05 50 00                                  push   0x500540
  004234b2: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004234b5: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  004234bb: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004234be: 51                                              push   ecx
  004234bf: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004234c2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004234c9: e8 b2 1b fe ff                                  call   0x405080
  004234ce: 68 18 0a 4e 00                                  push   0x4e0a18
  004234d3: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004234d6: 52                                              push   edx
  004234d7: c7 45 c0 e0 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5e0
  004234de: e8 73 e8 0a 00                                  call   0x4d1d56
  004234e3: 53                                              push   ebx
  004234e4: 8b d8                                           mov    ebx,eax
  004234e6: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004234e9: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004234ec: e8 2f 0d 00 00                                  call   0x424220
  004234f1: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004234f3: 8a 42 21                                        mov    al,BYTE PTR [edx+0x21]
  004234f6: 84 c0                                           test   al,al
  004234f8: 74 05                                           je     0x4234ff
  004234fa: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004234fd: eb 2b                                           jmp    0x42352a
  004234ff: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00423502: 8a 41 21                                        mov    al,BYTE PTR [ecx+0x21]
  00423505: 84 c0                                           test   al,al
  00423507: 74 04                                           je     0x42350d
  00423509: 8b fa                                           mov    edi,edx
  0042350b: eb 1d                                           jmp    0x42352a
  0042350d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042350f: 80 78 21 00                                     cmp    BYTE PTR [eax+0x21],0x0
  00423513: 75 0a                                           jne    0x42351f
  00423515: 8b c8                                           mov    ecx,eax
  00423517: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00423519: 80 78 21 00                                     cmp    BYTE PTR [eax+0x21],0x0
  0042351d: 74 f6                                           je     0x423515
  0042351f: 3b cb                                           cmp    ecx,ebx
  00423521: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  00423524: 0f 85 8a 00 00 00                               jne    0x4235b4
  0042352a: 8a 4f 21                                        mov    cl,BYTE PTR [edi+0x21]
  0042352d: 84 c9                                           test   cl,cl
  0042352f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00423532: 75 03                                           jne    0x423537
  00423534: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00423537: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0042353a: 39 59 04                                        cmp    DWORD PTR [ecx+0x4],ebx
  0042353d: 75 05                                           jne    0x423544
  0042353f: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00423542: eb 0b                                           jmp    0x42354f
  00423544: 39 18                                           cmp    DWORD PTR [eax],ebx
  00423546: 75 04                                           jne    0x42354c
  00423548: 89 38                                           mov    DWORD PTR [eax],edi
  0042354a: eb 03                                           jmp    0x42354f
  0042354c: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  0042354f: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00423552: 39 1e                                           cmp    DWORD PTR [esi],ebx
  00423554: 75 24                                           jne    0x42357a
  00423556: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00423559: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  0042355c: 84 d2                                           test   dl,dl
  0042355e: 74 04                                           je     0x423564
  00423560: 89 06                                           mov    DWORD PTR [esi],eax
  00423562: eb 16                                           jmp    0x42357a
  00423564: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00423566: 80 79 21 00                                     cmp    BYTE PTR [ecx+0x21],0x0
  0042356a: 8b d7                                           mov    edx,edi
  0042356c: 75 0a                                           jne    0x423578
  0042356e: 8b d1                                           mov    edx,ecx
  00423570: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00423572: 80 79 21 00                                     cmp    BYTE PTR [ecx+0x21],0x0
  00423576: 74 f6                                           je     0x42356e
  00423578: 89 16                                           mov    DWORD PTR [esi],edx
  0042357a: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0042357d: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  00423580: 39 5e 08                                        cmp    DWORD PTR [esi+0x8],ebx
  00423583: 0f 85 89 00 00 00                               jne    0x423612
  00423589: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  0042358b: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  0042358e: 84 d2                                           test   dl,dl
  00423590: 74 05                                           je     0x423597
  00423592: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00423595: eb 7b                                           jmp    0x423612
  00423597: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0042359a: 8a 59 21                                        mov    bl,BYTE PTR [ecx+0x21]
  0042359d: 84 db                                           test   bl,bl
  0042359f: 8b d7                                           mov    edx,edi
  004235a1: 75 0c                                           jne    0x4235af
  004235a3: 8b d1                                           mov    edx,ecx
  004235a5: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  004235a8: 8a 59 21                                        mov    bl,BYTE PTR [ecx+0x21]
  004235ab: 84 db                                           test   bl,bl
  004235ad: 74 f4                                           je     0x4235a3
  004235af: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004235b2: eb 5e                                           jmp    0x423612
  004235b4: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004235b7: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004235b9: 89 11                                           mov    DWORD PTR [ecx],edx
  004235bb: 3b 4b 08                                        cmp    ecx,DWORD PTR [ebx+0x8]
  004235be: 75 04                                           jne    0x4235c4
  004235c0: 8b c1                                           mov    eax,ecx
  004235c2: eb 1b                                           jmp    0x4235df
  004235c4: 8a 57 21                                        mov    dl,BYTE PTR [edi+0x21]
  004235c7: 84 d2                                           test   dl,dl
  004235c9: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004235cc: 75 03                                           jne    0x4235d1
  004235ce: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004235d1: 89 38                                           mov    DWORD PTR [eax],edi
  004235d3: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  004235d6: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004235d9: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  004235dc: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004235df: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004235e2: 39 5a 04                                        cmp    DWORD PTR [edx+0x4],ebx
  004235e5: 75 05                                           jne    0x4235ec
  004235e7: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004235ea: eb 0e                                           jmp    0x4235fa
  004235ec: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004235ef: 39 1a                                           cmp    DWORD PTR [edx],ebx
  004235f1: 75 04                                           jne    0x4235f7
  004235f3: 89 0a                                           mov    DWORD PTR [edx],ecx
  004235f5: eb 03                                           jmp    0x4235fa
  004235f7: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004235fa: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004235fd: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00423600: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  00423603: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00423606: 8a 5e 20                                        mov    bl,BYTE PTR [esi+0x20]
  00423609: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  0042360c: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  0042360f: 88 56 20                                        mov    BYTE PTR [esi+0x20],dl
  00423612: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00423615: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  00423618: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0042361b: b3 01                                           mov    bl,0x1
  0042361d: 3a d3                                           cmp    dl,bl
  0042361f: 0f 85 58 02 00 00                               jne    0x42387d
  00423625: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00423628: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  0042362b: 0f 84 49 02 00 00                               je     0x42387a
  00423631: 38 5f 20                                        cmp    BYTE PTR [edi+0x20],bl
  00423634: 0f 85 40 02 00 00                               jne    0x42387a
  0042363a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042363c: 3b f9                                           cmp    edi,ecx
  0042363e: 75 71                                           jne    0x4236b1
  00423640: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00423643: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  00423646: 84 d2                                           test   dl,dl
  00423648: 75 43                                           jne    0x42368d
  0042364a: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  0042364d: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00423650: c6 40 20 00                                     mov    BYTE PTR [eax+0x20],0x0
  00423654: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00423656: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00423659: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042365b: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  0042365f: 75 03                                           jne    0x423664
  00423661: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00423664: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00423667: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042366a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0042366d: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00423670: 75 05                                           jne    0x423677
  00423672: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00423675: eb 0e                                           jmp    0x423685
  00423677: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042367a: 3b 02                                           cmp    eax,DWORD PTR [edx]
  0042367c: 75 04                                           jne    0x423682
  0042367e: 89 0a                                           mov    DWORD PTR [edx],ecx
  00423680: eb 03                                           jmp    0x423685
  00423682: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00423685: 89 01                                           mov    DWORD PTR [ecx],eax
  00423687: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042368a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042368d: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  00423690: 84 d2                                           test   dl,dl
  00423692: 0f 85 86 00 00 00                               jne    0x42371e
  00423698: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042369a: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  0042369d: 0f 85 93 00 00 00                               jne    0x423736
  004236a3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004236a6: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  004236a9: 0f 85 87 00 00 00                               jne    0x423736
  004236af: eb 69                                           jmp    0x42371a
  004236b1: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  004236b4: 84 d2                                           test   dl,dl
  004236b6: 75 44                                           jne    0x4236fc
  004236b8: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  004236bb: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004236bd: c6 40 20 00                                     mov    BYTE PTR [eax+0x20],0x0
  004236c1: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004236c4: 89 10                                           mov    DWORD PTR [eax],edx
  004236c6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004236c9: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004236cd: 75 03                                           jne    0x4236d2
  004236cf: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004236d2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004236d5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004236d8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004236db: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004236de: 75 05                                           jne    0x4236e5
  004236e0: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004236e3: eb 0f                                           jmp    0x4236f4
  004236e5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004236e8: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  004236eb: 75 05                                           jne    0x4236f2
  004236ed: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004236f0: eb 02                                           jmp    0x4236f4
  004236f2: 89 0a                                           mov    DWORD PTR [edx],ecx
  004236f4: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004236f7: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004236fa: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004236fc: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  004236ff: 84 d2                                           test   dl,dl
  00423701: 75 1b                                           jne    0x42371e
  00423703: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00423706: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  00423709: 0f 85 d0 00 00 00                               jne    0x4237df
  0042370f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00423711: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  00423714: 0f 85 c5 00 00 00                               jne    0x4237df
  0042371a: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  0042371e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00423721: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00423724: 8b f8                                           mov    edi,eax
  00423726: 3b fa                                           cmp    edi,edx
  00423728: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042372b: 0f 85 00 ff ff ff                               jne    0x423631
  00423731: e9 44 01 00 00                                  jmp    0x42387a
  00423736: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00423739: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  0042373c: 75 4a                                           jne    0x423788
  0042373e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00423740: 88 5a 20                                        mov    BYTE PTR [edx+0x20],bl
  00423743: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00423745: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  00423749: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  0042374c: 89 31                                           mov    DWORD PTR [ecx],esi
  0042374e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00423751: 80 7e 21 00                                     cmp    BYTE PTR [esi+0x21],0x0
  00423755: 75 03                                           jne    0x42375a
  00423757: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0042375a: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0042375d: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00423760: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00423763: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00423766: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00423769: 75 05                                           jne    0x423770
  0042376b: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0042376e: eb 0f                                           jmp    0x42377f
  00423770: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00423773: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  00423776: 75 05                                           jne    0x42377d
  00423778: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0042377b: eb 02                                           jmp    0x42377f
  0042377d: 89 16                                           mov    DWORD PTR [esi],edx
  0042377f: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00423782: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00423785: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00423788: 8a 50 20                                        mov    dl,BYTE PTR [eax+0x20]
  0042378b: 88 51 20                                        mov    BYTE PTR [ecx+0x20],dl
  0042378e: 88 58 20                                        mov    BYTE PTR [eax+0x20],bl
  00423791: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00423794: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  00423797: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042379a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042379c: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  0042379f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004237a1: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004237a5: 75 03                                           jne    0x4237aa
  004237a7: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004237aa: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004237ad: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004237b0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004237b3: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004237b6: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004237b9: 75 0a                                           jne    0x4237c5
  004237bb: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004237be: 89 01                                           mov    DWORD PTR [ecx],eax
  004237c0: e9 b2 00 00 00                                  jmp    0x423877
  004237c5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004237c8: 3b 02                                           cmp    eax,DWORD PTR [edx]
  004237ca: 75 09                                           jne    0x4237d5
  004237cc: 89 0a                                           mov    DWORD PTR [edx],ecx
  004237ce: 89 01                                           mov    DWORD PTR [ecx],eax
  004237d0: e9 a2 00 00 00                                  jmp    0x423877
  004237d5: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004237d8: 89 01                                           mov    DWORD PTR [ecx],eax
  004237da: e9 98 00 00 00                                  jmp    0x423877
  004237df: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004237e1: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  004237e4: 75 48                                           jne    0x42382e
  004237e6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004237e9: 88 5a 20                                        mov    BYTE PTR [edx+0x20],bl
  004237ec: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004237ef: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  004237f3: 8b 32                                           mov    esi,DWORD PTR [edx]
  004237f5: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  004237f8: 8b 32                                           mov    esi,DWORD PTR [edx]
  004237fa: 80 7e 21 00                                     cmp    BYTE PTR [esi+0x21],0x0
  004237fe: 75 03                                           jne    0x423803
  00423800: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00423803: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00423806: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00423809: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0042380c: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0042380f: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00423812: 75 05                                           jne    0x423819
  00423814: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00423817: eb 0e                                           jmp    0x423827
  00423819: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0042381c: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0042381e: 75 04                                           jne    0x423824
  00423820: 89 16                                           mov    DWORD PTR [esi],edx
  00423822: eb 03                                           jmp    0x423827
  00423824: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00423827: 89 0a                                           mov    DWORD PTR [edx],ecx
  00423829: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042382c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042382e: 8a 50 20                                        mov    dl,BYTE PTR [eax+0x20]
  00423831: 88 51 20                                        mov    BYTE PTR [ecx+0x20],dl
  00423834: 88 58 20                                        mov    BYTE PTR [eax+0x20],bl
  00423837: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00423839: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  0042383c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042383e: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00423841: 89 10                                           mov    DWORD PTR [eax],edx
  00423843: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00423846: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  0042384a: 75 03                                           jne    0x42384f
  0042384c: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0042384f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00423852: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00423855: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00423858: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0042385b: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0042385e: 75 05                                           jne    0x423865
  00423860: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00423863: eb 0f                                           jmp    0x423874
  00423865: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00423868: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0042386b: 75 05                                           jne    0x423872
  0042386d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00423870: eb 02                                           jmp    0x423874
  00423872: 89 0a                                           mov    DWORD PTR [edx],ecx
  00423874: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00423877: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042387a: 88 5f 20                                        mov    BYTE PTR [edi+0x20],bl
  0042387d: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00423880: 8b 40 10                                        mov    eax,DWORD PTR [eax+0x10]
  00423883: 33 ff                                           xor    edi,edi
  00423885: 3b c7                                           cmp    eax,edi
  00423887: 5b                                              pop    ebx
  00423888: 74 1c                                           je     0x4238a6
  0042388a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0042388d: 8a 01                                           mov    al,BYTE PTR [ecx]
  0042388f: 84 c0                                           test   al,al
  00423891: 74 0a                                           je     0x42389d
  00423893: 3c ff                                           cmp    al,0xff
  00423895: 74 06                                           je     0x42389d
  00423897: fe c8                                           dec    al
  00423899: 88 01                                           mov    BYTE PTR [ecx],al
  0042389b: eb 09                                           jmp    0x4238a6
  0042389d: 51                                              push   ecx
  0042389e: e8 bd e7 01 00                                  call   0x442060
  004238a3: 83 c4 04                                        add    esp,0x4
  004238a6: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004238a9: 50                                              push   eax
  004238aa: 89 78 10                                        mov    DWORD PTR [eax+0x10],edi
  004238ad: 89 78 14                                        mov    DWORD PTR [eax+0x14],edi
  004238b0: 89 78 18                                        mov    DWORD PTR [eax+0x18],edi
  004238b3: e8 a8 e7 01 00                                  call   0x442060
  004238b8: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004238bb: 83 c4 04                                        add    esp,0x4
  004238be: 3b c7                                           cmp    eax,edi
  004238c0: 76 04                                           jbe    0x4238c6
  004238c2: 48                                              dec    eax
  004238c3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004238c6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004238c9: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004238cc: 89 08                                           mov    DWORD PTR [eax],ecx
  004238ce: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004238d1: 5f                                              pop    edi
  004238d2: 5e                                              pop    esi
  004238d3: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004238da: 8b e5                                           mov    esp,ebp
  004238dc: 5d                                              pop    ebp
  004238dd: c2 08 00                                        ret    0x8
  004238e0: 55                                              push   ebp
  004238e1: 8b ec                                           mov    ebp,esp
  004238e3: 53                                              push   ebx
  004238e4: 56                                              push   esi
  004238e5: 57                                              push   edi
  004238e6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004238e9: 8a 47 21                                        mov    al,BYTE PTR [edi+0x21]
  004238ec: 84 c0                                           test   al,al
  004238ee: 8b d9                                           mov    ebx,ecx
  004238f0: 8b f7                                           mov    esi,edi
  004238f2: 75 27                                           jne    0x42391b
  004238f4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004238f7: 50                                              push   eax
  004238f8: 8b cb                                           mov    ecx,ebx
  004238fa: e8 e1 ff ff ff                                  call   0x4238e0
  004238ff: 8b 36                                           mov    esi,DWORD PTR [esi]
  00423901: 8d 4f 0c                                        lea    ecx,[edi+0xc]
  00423904: e8 17 f3 ff ff                                  call   0x422c20
  00423909: 57                                              push   edi
  0042390a: e8 51 e7 01 00                                  call   0x442060
  0042390f: 8a 46 21                                        mov    al,BYTE PTR [esi+0x21]
  00423912: 83 c4 04                                        add    esp,0x4
  00423915: 84 c0                                           test   al,al
  00423917: 8b fe                                           mov    edi,esi
  00423919: 74 d9                                           je     0x4238f4
  0042391b: 5f                                              pop    edi
  0042391c: 5e                                              pop    esi
  0042391d: 5b                                              pop    ebx
  0042391e: 5d                                              pop    ebp
  0042391f: c2 04 00                                        ret    0x4
  00424220: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00424222: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00424225: 84 d2                                           test   dl,dl
  00424227: 53                                              push   ebx
  00424228: 75 41                                           jne    0x42426b
  0042422a: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0042422d: 8a 5a 21                                        mov    bl,BYTE PTR [edx+0x21]
  00424230: 84 db                                           test   bl,bl
  00424232: 75 18                                           jne    0x42424c
  00424234: 8b 02                                           mov    eax,DWORD PTR [edx]
  00424236: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  00424239: 84 db                                           test   bl,bl
  0042423b: 75 0b                                           jne    0x424248
  0042423d: 8b d0                                           mov    edx,eax
  0042423f: 8b 02                                           mov    eax,DWORD PTR [edx]
  00424241: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  00424244: 84 db                                           test   bl,bl
  00424246: 74 f5                                           je     0x42423d
  00424248: 89 11                                           mov    DWORD PTR [ecx],edx
  0042424a: 5b                                              pop    ebx
  0042424b: c3                                              ret
  0042424c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042424f: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00424252: 84 d2                                           test   dl,dl
  00424254: 75 13                                           jne    0x424269
  00424256: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00424258: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  0042425b: 75 0c                                           jne    0x424269
  0042425d: 89 01                                           mov    DWORD PTR [ecx],eax
  0042425f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00424262: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00424265: 84 d2                                           test   dl,dl
  00424267: 74 ed                                           je     0x424256
  00424269: 89 01                                           mov    DWORD PTR [ecx],eax
  0042426b: 5b                                              pop    ebx
  0042426c: c3                                              ret
  004251d0: 55                                              push   ebp
  004251d1: 8b ec                                           mov    ebp,esp
  004251d3: 56                                              push   esi
  004251d4: 8b f1                                           mov    esi,ecx
  004251d6: e8 45 da ff ff                                  call   0x422c20
  004251db: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004251df: 74 09                                           je     0x4251ea
  004251e1: 56                                              push   esi
  004251e2: e8 79 ce 01 00                                  call   0x442060
  004251e7: 83 c4 04                                        add    esp,0x4
  004251ea: 8b c6                                           mov    eax,esi
  004251ec: 5e                                              pop    esi
  004251ed: 5d                                              pop    ebp
  004251ee: c2 04 00                                        ret    0x4
  00425f00: 55                                              push   ebp
  00425f01: 8b ec                                           mov    ebp,esp
  00425f03: 51                                              push   ecx
  00425f04: 8a 41 1c                                        mov    al,BYTE PTR [ecx+0x1c]
  00425f07: 53                                              push   ebx
  00425f08: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00425f0b: 56                                              push   esi
  00425f0c: 33 d2                                           xor    edx,edx
  00425f0e: 8d 71 1c                                        lea    esi,[ecx+0x1c]
  00425f11: 88 03                                           mov    BYTE PTR [ebx],al
  00425f13: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00425f16: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00425f19: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00425f1c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00425f21: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00425f24: 8b 00                                           mov    eax,DWORD PTR [eax]
  00425f26: 57                                              push   edi
  00425f27: 8b f9                                           mov    edi,ecx
  00425f29: 3b c7                                           cmp    eax,edi
  00425f2b: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00425f2e: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00425f31: 73 05                                           jae    0x425f38
  00425f33: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00425f36: 8b f8                                           mov    edi,eax
  00425f38: 3b de                                           cmp    ebx,esi
  00425f3a: 75 73                                           jne    0x425faf
  00425f3c: 3b fa                                           cmp    edi,edx
  00425f3e: 8b f0                                           mov    esi,eax
  00425f40: 76 0a                                           jbe    0x425f4c
  00425f42: 8b cb                                           mov    ecx,ebx
  00425f44: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00425f4a: 33 d2                                           xor    edx,edx
  00425f4c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00425f4f: 2b c7                                           sub    eax,edi
  00425f51: 3b c6                                           cmp    eax,esi
  00425f53: 73 02                                           jae    0x425f57
  00425f55: 8b f0                                           mov    esi,eax
  00425f57: 3b f2                                           cmp    esi,edx
  00425f59: 0f 86 de 00 00 00                               jbe    0x42603d
  00425f5f: 8b cb                                           mov    ecx,ebx
  00425f61: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00425f67: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00425f6a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00425f6d: 2b d6                                           sub    edx,esi
  00425f6f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  00425f72: 2b d7                                           sub    edx,edi
  00425f74: 52                                              push   edx
  00425f75: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00425f78: 51                                              push   ecx
  00425f79: 50                                              push   eax
  00425f7a: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00425f80: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00425f83: 83 c4 0c                                        add    esp,0xc
  00425f86: 6a 00                                           push   0x0
  00425f88: 2b fe                                           sub    edi,esi
  00425f8a: 57                                              push   edi
  00425f8b: 8b cb                                           mov    ecx,ebx
  00425f8d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00425f93: 84 c0                                           test   al,al
  00425f95: 0f 84 a2 00 00 00                               je     0x42603d
  00425f9b: 57                                              push   edi
  00425f9c: 8b cb                                           mov    ecx,ebx
  00425f9e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00425fa4: 5f                                              pop    edi
  00425fa5: 5e                                              pop    esi
  00425fa6: 8b c3                                           mov    eax,ebx
  00425fa8: 5b                                              pop    ebx
  00425fa9: 8b e5                                           mov    esp,ebp
  00425fab: 5d                                              pop    ebp
  00425fac: c2 04 00                                        ret    0x4
  00425faf: 3b fa                                           cmp    edi,edx
  00425fb1: 76 4e                                           jbe    0x426001
  00425fb3: 3b f9                                           cmp    edi,ecx
  00425fb5: 75 4a                                           jne    0x426001
  00425fb7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00425fba: 3b c2                                           cmp    eax,edx
  00425fbc: 75 05                                           jne    0x425fc3
  00425fbe: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00425fc3: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00425fc7: 73 38                                           jae    0x426001
  00425fc9: 6a 01                                           push   0x1
  00425fcb: 8b cb                                           mov    ecx,ebx
  00425fcd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00425fd3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00425fd6: 85 c0                                           test   eax,eax
  00425fd8: 75 05                                           jne    0x425fdf
  00425fda: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00425fdf: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00425fe2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00425fe5: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00425fe8: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00425feb: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00425fee: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  00425ff1: 5f                                              pop    edi
  00425ff2: fe c1                                           inc    cl
  00425ff4: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  00425ff7: 5e                                              pop    esi
  00425ff8: 8b c3                                           mov    eax,ebx
  00425ffa: 5b                                              pop    ebx
  00425ffb: 8b e5                                           mov    esp,ebp
  00425ffd: 5d                                              pop    ebp
  00425ffe: c2 04 00                                        ret    0x4
  00426001: 6a 01                                           push   0x1
  00426003: 57                                              push   edi
  00426004: 8b cb                                           mov    ecx,ebx
  00426006: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042600c: 84 c0                                           test   al,al
  0042600e: 74 2d                                           je     0x42603d
  00426010: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00426013: 85 f6                                           test   esi,esi
  00426015: 75 06                                           jne    0x42601d
  00426017: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0042601d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00426020: 8b cf                                           mov    ecx,edi
  00426022: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00426025: 8b d1                                           mov    edx,ecx
  00426027: c1 e9 02                                        shr    ecx,0x2
  0042602a: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042602c: 8b ca                                           mov    ecx,edx
  0042602e: 83 e1 03                                        and    ecx,0x3
  00426031: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00426033: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00426036: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00426039: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0042603d: 5f                                              pop    edi
  0042603e: 5e                                              pop    esi
  0042603f: 8b c3                                           mov    eax,ebx
  00426041: 5b                                              pop    ebx
  00426042: 8b e5                                           mov    esp,ebp
  00426044: 5d                                              pop    ebp
  00426045: c2 04 00                                        ret    0x4
  00426a70: 55                                              push   ebp
  00426a71: 8b ec                                           mov    ebp,esp
  00426a73: 6a ff                                           push   0xffffffff
  00426a75: 68 11 48 4d 00                                  push   0x4d4811
  00426a7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00426a80: 50                                              push   eax
  00426a81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00426a88: 83 ec 1c                                        sub    esp,0x1c
  00426a8b: 53                                              push   ebx
  00426a8c: 56                                              push   esi
  00426a8d: 57                                              push   edi
  00426a8e: 8b f9                                           mov    edi,ecx
  00426a90: 8b 07                                           mov    eax,DWORD PTR [edi]
  00426a92: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00426a99: 89 7d e0                                        mov    DWORD PTR [ebp-0x20],edi
  00426a9c: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00426a9f: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00426aa2: 51                                              push   ecx
  00426aa3: 8d 55 dc                                        lea    edx,[ebp-0x24]
  00426aa6: 52                                              push   edx
  00426aa7: 8d 4f 30                                        lea    ecx,[edi+0x30]
  00426aaa: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00426aae: e8 ad 14 00 00                                  call   0x427f60
  00426ab3: 8b 30                                           mov    esi,DWORD PTR [eax]
  00426ab5: 3b 77 34                                        cmp    esi,DWORD PTR [edi+0x34]
  00426ab8: 75 24                                           jne    0x426ade
  00426aba: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00426abd: 50                                              push   eax
  00426abe: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00426ac1: 51                                              push   ecx
  00426ac2: 8d 4f 3c                                        lea    ecx,[edi+0x3c]
  00426ac5: e8 96 14 00 00                                  call   0x427f60
  00426aca: 8b 30                                           mov    esi,DWORD PTR [eax]
  00426acc: 3b 77 40                                        cmp    esi,DWORD PTR [edi+0x40]
  00426acf: 75 0d                                           jne    0x426ade
  00426ad1: 8b 17                                           mov    edx,DWORD PTR [edi]
  00426ad3: 8b cf                                           mov    ecx,edi
  00426ad5: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00426ad9: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00426adc: eb 68                                           jmp    0x426b46
  00426ade: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00426ae1: 8b cb                                           mov    ecx,ebx
  00426ae3: e8 f8 df 02 00                                  call   0x454ae0
  00426ae8: 83 e2 40                                        and    edx,0x40
  00426aeb: 33 c0                                           xor    eax,eax
  00426aed: 0b c2                                           or     eax,edx
  00426aef: 75 7c                                           jne    0x426b6d
  00426af1: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00426af4: 85 c0                                           test   eax,eax
  00426af6: 74 75                                           je     0x426b6d
  00426af8: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  00426afb: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00426afe: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  00426b01: 51                                              push   ecx
  00426b02: 8d 55 08                                        lea    edx,[ebp+0x8]
  00426b05: 8d 5e 2c                                        lea    ebx,[esi+0x2c]
  00426b08: 52                                              push   edx
  00426b09: 8b cb                                           mov    ecx,ebx
  00426b0b: c6 45 ec 01                                     mov    BYTE PTR [ebp-0x14],0x1
  00426b0f: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  00426b12: e8 89 1b 00 00                                  call   0x4286a0
  00426b17: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  00426b1a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00426b1d: 3b c3                                           cmp    eax,ebx
  00426b1f: 74 0d                                           je     0x426b2e
  00426b21: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00426b24: 3b 48 0c                                        cmp    ecx,DWORD PTR [eax+0xc]
  00426b27: 72 05                                           jb     0x426b2e
  00426b29: 8d 45 08                                        lea    eax,[ebp+0x8]
  00426b2c: eb 06                                           jmp    0x426b34
  00426b2e: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00426b31: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00426b34: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  00426b37: 39 10                                           cmp    DWORD PTR [eax],edx
  00426b39: 75 32                                           jne    0x426b6d
  00426b3b: 8b 07                                           mov    eax,DWORD PTR [edi]
  00426b3d: 8b cf                                           mov    ecx,edi
  00426b3f: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00426b43: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00426b46: 6a 01                                           push   0x1
  00426b48: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00426b4b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00426b52: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00426b58: 5f                                              pop    edi
  00426b59: 5e                                              pop    esi
  00426b5a: 32 c0                                           xor    al,al
  00426b5c: 5b                                              pop    ebx
  00426b5d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00426b60: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00426b67: 8b e5                                           mov    esp,ebp
  00426b69: 5d                                              pop    ebp
  00426b6a: c2 18 00                                        ret    0x18
  00426b6d: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  00426b74: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  00426b77: 8b 00                                           mov    eax,DWORD PTR [eax]
  00426b79: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00426b7c: 3b 46 30                                        cmp    eax,DWORD PTR [esi+0x30]
  00426b7f: 74 37                                           je     0x426bb8
  00426b81: 8b 5d 1c                                        mov    ebx,DWORD PTR [ebp+0x1c]
  00426b84: 8b 48 0c                                        mov    ecx,DWORD PTR [eax+0xc]
  00426b87: 8b 51 68                                        mov    edx,DWORD PTR [ecx+0x68]
  00426b8a: 83 c0 0c                                        add    eax,0xc
  00426b8d: 85 d2                                           test   edx,edx
  00426b8f: 75 15                                           jne    0x426ba6
  00426b91: 50                                              push   eax
  00426b92: 51                                              push   ecx
  00426b93: 54                                              push   esp
  00426b94: 8b cb                                           mov    ecx,ebx
  00426b96: e8 95 15 00 00                                  call   0x428130
  00426b9b: 8d 55 08                                        lea    edx,[ebp+0x8]
  00426b9e: 52                                              push   edx
  00426b9f: 8b cb                                           mov    ecx,ebx
  00426ba1: e8 1a 23 00 00                                  call   0x428ec0
  00426ba6: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00426ba9: e8 e2 26 00 00                                  call   0x429290
  00426bae: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  00426bb1: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00426bb4: 3b c1                                           cmp    eax,ecx
  00426bb6: 75 cc                                           jne    0x426b84
  00426bb8: 8b 07                                           mov    eax,DWORD PTR [edi]
  00426bba: 8b cf                                           mov    ecx,edi
  00426bbc: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00426bc0: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00426bc3: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00426bc6: 85 c9                                           test   ecx,ecx
  00426bc8: 74 1c                                           je     0x426be6
  00426bca: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  00426bcd: 84 c0                                           test   al,al
  00426bcf: 74 0b                                           je     0x426bdc
  00426bd1: 3c ff                                           cmp    al,0xff
  00426bd3: 74 07                                           je     0x426bdc
  00426bd5: fe c8                                           dec    al
  00426bd7: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00426bda: eb 0a                                           jmp    0x426be6
  00426bdc: 49                                              dec    ecx
  00426bdd: 51                                              push   ecx
  00426bde: e8 7d b4 01 00                                  call   0x442060
  00426be3: 83 c4 04                                        add    esp,0x4
  00426be6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00426be9: 5f                                              pop    edi
  00426bea: 5e                                              pop    esi
  00426beb: b0 01                                           mov    al,0x1
  00426bed: 5b                                              pop    ebx
  00426bee: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00426bf5: 8b e5                                           mov    esp,ebp
  00426bf7: 5d                                              pop    ebp
  00426bf8: c2 18 00                                        ret    0x18
  00426c00: 55                                              push   ebp
  00426c01: 8b ec                                           mov    ebp,esp
  00426c03: 6a ff                                           push   0xffffffff
  00426c05: 68 28 48 4d 00                                  push   0x4d4828
  00426c0a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00426c10: 50                                              push   eax
  00426c11: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00426c18: 83 ec 20                                        sub    esp,0x20
  00426c1b: 56                                              push   esi
  00426c1c: 8b f1                                           mov    esi,ecx
  00426c1e: 8b 06                                           mov    eax,DWORD PTR [esi]
  00426c20: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00426c23: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  00426c26: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00426c29: 8b 4e 34                                        mov    ecx,DWORD PTR [esi+0x34]
  00426c2c: 33 c0                                           xor    eax,eax
  00426c2e: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00426c31: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00426c34: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00426c36: 3b c1                                           cmp    eax,ecx
  00426c38: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00426c3b: 74 73                                           je     0x426cb0
  00426c3d: 53                                              push   ebx
  00426c3e: 57                                              push   edi
  00426c3f: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00426c42: 8b 58 30                                        mov    ebx,DWORD PTR [eax+0x30]
  00426c45: 8d 78 1c                                        lea    edi,[eax+0x1c]
  00426c48: 8d 55 d4                                        lea    edx,[ebp-0x2c]
  00426c4b: 89 4d d4                                        mov    DWORD PTR [ebp-0x2c],ecx
  00426c4e: 8d 77 10                                        lea    esi,[edi+0x10]
  00426c51: 52                                              push   edx
  00426c52: 8b ce                                           mov    ecx,esi
  00426c54: c6 45 d8 01                                     mov    BYTE PTR [ebp-0x28],0x1
  00426c58: e8 83 25 00 00                                  call   0x4291e0
  00426c5d: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00426c60: 3b c6                                           cmp    eax,esi
  00426c62: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00426c65: 74 0d                                           je     0x426c74
  00426c67: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  00426c6a: 3b 48 0c                                        cmp    ecx,DWORD PTR [eax+0xc]
  00426c6d: 72 05                                           jb     0x426c74
  00426c6f: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00426c72: eb 06                                           jmp    0x426c7a
  00426c74: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  00426c77: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00426c7a: 39 18                                           cmp    DWORD PTR [eax],ebx
  00426c7c: 74 18                                           je     0x426c96
  00426c7e: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00426c81: 57                                              push   edi
  00426c82: 51                                              push   ecx
  00426c83: 54                                              push   esp
  00426c84: 8b ce                                           mov    ecx,esi
  00426c86: e8 55 14 00 00                                  call   0x4280e0
  00426c8b: 8d 55 dc                                        lea    edx,[ebp-0x24]
  00426c8e: 52                                              push   edx
  00426c8f: 8b ce                                           mov    ecx,esi
  00426c91: e8 9a 21 00 00                                  call   0x428e30
  00426c96: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00426c99: e8 72 2a 00 00                                  call   0x429710
  00426c9e: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00426ca1: 8b 48 34                                        mov    ecx,DWORD PTR [eax+0x34]
  00426ca4: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00426ca7: 3b c1                                           cmp    eax,ecx
  00426ca9: 75 94                                           jne    0x426c3f
  00426cab: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  00426cae: 5f                                              pop    edi
  00426caf: 5b                                              pop    ebx
  00426cb0: 8b 16                                           mov    edx,DWORD PTR [esi]
  00426cb2: 8b ce                                           mov    ecx,esi
  00426cb4: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00426cbb: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00426cbe: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00426cc1: 5e                                              pop    esi
  00426cc2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00426cc9: 8b e5                                           mov    esp,ebp
  00426ccb: 5d                                              pop    ebp
  00426ccc: c2 08 00                                        ret    0x8
  00426cd0: 55                                              push   ebp
  00426cd1: 8b ec                                           mov    ebp,esp
  00426cd3: 6a ff                                           push   0xffffffff
  00426cd5: 68 48 48 4d 00                                  push   0x4d4848
  00426cda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00426ce0: 50                                              push   eax
  00426ce1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00426ce8: 51                                              push   ecx
  00426ce9: 56                                              push   esi
  00426cea: 57                                              push   edi
  00426ceb: 8b f9                                           mov    edi,ecx
  00426ced: 8b 07                                           mov    eax,DWORD PTR [edi]
  00426cef: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00426cf2: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00426cf5: 8b 47 40                                        mov    eax,DWORD PTR [edi+0x40]
  00426cf8: 8b 30                                           mov    esi,DWORD PTR [eax]
  00426cfa: 3b f0                                           cmp    esi,eax
  00426cfc: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00426d03: 74 5b                                           je     0x426d60
  00426d05: 53                                              push   ebx
  00426d06: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00426d09: 8d 46 1c                                        lea    eax,[esi+0x1c]
  00426d0c: 50                                              push   eax
  00426d0d: 51                                              push   ecx
  00426d0e: 54                                              push   esp
  00426d0f: 8b cb                                           mov    ecx,ebx
  00426d11: e8 ca 13 00 00                                  call   0x4280e0
  00426d16: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00426d19: 51                                              push   ecx
  00426d1a: 8b cb                                           mov    ecx,ebx
  00426d1c: e8 0f 21 00 00                                  call   0x428e30
  00426d21: 8a 46 49                                        mov    al,BYTE PTR [esi+0x49]
  00426d24: 84 c0                                           test   al,al
  00426d26: 75 32                                           jne    0x426d5a
  00426d28: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00426d2b: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00426d2e: 84 c9                                           test   cl,cl
  00426d30: 75 0b                                           jne    0x426d3d
  00426d32: 50                                              push   eax
  00426d33: e8 48 1f 00 00                                  call   0x428c80
  00426d38: 83 c4 04                                        add    esp,0x4
  00426d3b: eb 1b                                           jmp    0x426d58
  00426d3d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00426d40: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00426d43: 84 c9                                           test   cl,cl
  00426d45: 75 11                                           jne    0x426d58
  00426d47: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  00426d4a: 75 0c                                           jne    0x426d58
  00426d4c: 8b f0                                           mov    esi,eax
  00426d4e: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00426d51: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00426d54: 84 c9                                           test   cl,cl
  00426d56: 74 ef                                           je     0x426d47
  00426d58: 8b f0                                           mov    esi,eax
  00426d5a: 3b 77 40                                        cmp    esi,DWORD PTR [edi+0x40]
  00426d5d: 75 aa                                           jne    0x426d09
  00426d5f: 5b                                              pop    ebx
  00426d60: 8b 17                                           mov    edx,DWORD PTR [edi]
  00426d62: 8b cf                                           mov    ecx,edi
  00426d64: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00426d6b: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00426d6e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00426d71: 5f                                              pop    edi
  00426d72: 5e                                              pop    esi
  00426d73: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00426d7a: 8b e5                                           mov    esp,ebp
  00426d7c: 5d                                              pop    ebp
  00426d7d: c2 08 00                                        ret    0x8
  00426d80: 55                                              push   ebp
  00426d81: 8b ec                                           mov    ebp,esp
  00426d83: 6a ff                                           push   0xffffffff
  00426d85: 68 68 48 4d 00                                  push   0x4d4868
  00426d8a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00426d90: 50                                              push   eax
  00426d91: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00426d98: 83 ec 1c                                        sub    esp,0x1c
  00426d9b: 56                                              push   esi
  00426d9c: 57                                              push   edi
  00426d9d: 8b f9                                           mov    edi,ecx
  00426d9f: 8b 07                                           mov    eax,DWORD PTR [edi]
  00426da1: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  00426da8: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  00426dab: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00426dae: 8b 47 34                                        mov    eax,DWORD PTR [edi+0x34]
  00426db1: 8b 30                                           mov    esi,DWORD PTR [eax]
  00426db3: 3b f0                                           cmp    esi,eax
  00426db5: 0f 84 c9 00 00 00                               je     0x426e84
  00426dbb: f6 45 f0 01                                     test   BYTE PTR [ebp-0x10],0x1
  00426dbf: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00426dc6: 74 0f                                           je     0x426dd7
  00426dc8: 83 65 f0 fe                                     and    DWORD PTR [ebp-0x10],0xfffffffe
  00426dcc: 6a 01                                           push   0x1
  00426dce: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00426dd1: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00426dd7: 8b 46 34                                        mov    eax,DWORD PTR [esi+0x34]
  00426dda: 85 c0                                           test   eax,eax
  00426ddc: 75 57                                           jne    0x426e35
  00426dde: 8a 46 49                                        mov    al,BYTE PTR [esi+0x49]
  00426de1: 84 c0                                           test   al,al
  00426de3: 8b ce                                           mov    ecx,esi
  00426de5: 75 3f                                           jne    0x426e26
  00426de7: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00426dea: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00426ded: 84 d2                                           test   dl,dl
  00426def: 75 18                                           jne    0x426e09
  00426df1: 8b f0                                           mov    esi,eax
  00426df3: 8b 06                                           mov    eax,DWORD PTR [esi]
  00426df5: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00426df8: 84 d2                                           test   dl,dl
  00426dfa: 75 2a                                           jne    0x426e26
  00426dfc: 8b f0                                           mov    esi,eax
  00426dfe: 8b 06                                           mov    eax,DWORD PTR [esi]
  00426e00: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00426e03: 84 d2                                           test   dl,dl
  00426e05: 74 f5                                           je     0x426dfc
  00426e07: eb 1d                                           jmp    0x426e26
  00426e09: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00426e0c: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00426e0f: 84 d2                                           test   dl,dl
  00426e11: 75 11                                           jne    0x426e24
  00426e13: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  00426e16: 75 0c                                           jne    0x426e24
  00426e18: 8b f0                                           mov    esi,eax
  00426e1a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00426e1d: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00426e20: 84 d2                                           test   dl,dl
  00426e22: 74 ef                                           je     0x426e13
  00426e24: 8b f0                                           mov    esi,eax
  00426e26: 51                                              push   ecx
  00426e27: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00426e2a: 51                                              push   ecx
  00426e2b: 8d 4f 30                                        lea    ecx,[edi+0x30]
  00426e2e: e8 1d 0c 00 00                                  call   0x427a50
  00426e33: eb 46                                           jmp    0x426e7b
  00426e35: 8a 46 49                                        mov    al,BYTE PTR [esi+0x49]
  00426e38: 84 c0                                           test   al,al
  00426e3a: 75 3f                                           jne    0x426e7b
  00426e3c: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00426e3f: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00426e42: 84 c9                                           test   cl,cl
  00426e44: 75 18                                           jne    0x426e5e
  00426e46: 8b f0                                           mov    esi,eax
  00426e48: 8b 06                                           mov    eax,DWORD PTR [esi]
  00426e4a: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00426e4d: 84 c9                                           test   cl,cl
  00426e4f: 75 2a                                           jne    0x426e7b
  00426e51: 8b f0                                           mov    esi,eax
  00426e53: 8b 06                                           mov    eax,DWORD PTR [esi]
  00426e55: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00426e58: 84 c9                                           test   cl,cl
  00426e5a: 74 f5                                           je     0x426e51
  00426e5c: eb 1d                                           jmp    0x426e7b
  00426e5e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00426e61: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00426e64: 84 c9                                           test   cl,cl
  00426e66: 75 11                                           jne    0x426e79
  00426e68: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  00426e6b: 75 0c                                           jne    0x426e79
  00426e6d: 8b f0                                           mov    esi,eax
  00426e6f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00426e72: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00426e75: 84 c9                                           test   cl,cl
  00426e77: 74 ef                                           je     0x426e68
  00426e79: 8b f0                                           mov    esi,eax
  00426e7b: 3b 77 34                                        cmp    esi,DWORD PTR [edi+0x34]
  00426e7e: 0f 85 37 ff ff ff                               jne    0x426dbb
  00426e84: 8b 17                                           mov    edx,DWORD PTR [edi]
  00426e86: 8b cf                                           mov    ecx,edi
  00426e88: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00426e8f: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00426e92: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00426e95: 5f                                              pop    edi
  00426e96: 5e                                              pop    esi
  00426e97: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00426e9e: 8b e5                                           mov    esp,ebp
  00426ea0: 5d                                              pop    ebp
  00426ea1: c3                                              ret
  00426eb0: 55                                              push   ebp
  00426eb1: 8b ec                                           mov    ebp,esp
  00426eb3: 6a ff                                           push   0xffffffff
  00426eb5: 68 91 48 4d 00                                  push   0x4d4891
  00426eba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00426ec0: 50                                              push   eax
  00426ec1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00426ec8: 83 ec 1c                                        sub    esp,0x1c
  00426ecb: 53                                              push   ebx
  00426ecc: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00426ecf: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00426ed2: 85 c0                                           test   eax,eax
  00426ed4: 57                                              push   edi
  00426ed5: 75 04                                           jne    0x426edb
  00426ed7: 33 d2                                           xor    edx,edx
  00426ed9: eb 16                                           jmp    0x426ef1
  00426edb: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00426ede: 2b c8                                           sub    ecx,eax
  00426ee0: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  00426ee5: f7 e9                                           imul   ecx
  00426ee7: c1 fa 03                                        sar    edx,0x3
  00426eea: 8b c2                                           mov    eax,edx
  00426eec: c1 e8 1f                                        shr    eax,0x1f
  00426eef: 03 d0                                           add    edx,eax
  00426ef1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00426ef4: 52                                              push   edx
  00426ef5: 8b cf                                           mov    ecx,edi
  00426ef7: e8 54 f2 05 00                                  call   0x486150
  00426efc: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00426eff: 3b 43 08                                        cmp    eax,DWORD PTR [ebx+0x8]
  00426f02: 0f 84 b3 00 00 00                               je     0x426fbb
  00426f08: 56                                              push   esi
  00426f09: 8d 70 14                                        lea    esi,[eax+0x14]
  00426f0c: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00426f0f: 51                                              push   ecx
  00426f10: 8d 4e ec                                        lea    ecx,[esi-0x14]
  00426f13: e8 b8 00 00 00                                  call   0x426fd0
  00426f18: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00426f1b: 85 c0                                           test   eax,eax
  00426f1d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00426f24: 75 05                                           jne    0x426f2b
  00426f26: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00426f2b: 50                                              push   eax
  00426f2c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00426f2f: e8 30 ab 0a 00                                  call   0x4d1a64
  00426f34: 6a 01                                           push   0x1
  00426f36: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00426f39: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00426f3d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00426f43: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00426f46: 52                                              push   edx
  00426f47: 8b cf                                           mov    ecx,edi
  00426f49: e8 02 f4 05 00                                  call   0x486350
  00426f4e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00426f51: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00426f54: 51                                              push   ecx
  00426f55: 8d 4e fc                                        lea    ecx,[esi-0x4]
  00426f58: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00426f5b: c6 45 ec 01                                     mov    BYTE PTR [ebp-0x14],0x1
  00426f5f: e8 7c 22 00 00                                  call   0x4291e0
  00426f64: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00426f66: 3b c1                                           cmp    eax,ecx
  00426f68: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00426f6b: 74 0d                                           je     0x426f7a
  00426f6d: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  00426f70: 3b 50 0c                                        cmp    edx,DWORD PTR [eax+0xc]
  00426f73: 72 05                                           jb     0x426f7a
  00426f75: 8d 45 10                                        lea    eax,[ebp+0x10]
  00426f78: eb 06                                           jmp    0x426f80
  00426f7a: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  00426f7d: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00426f80: 8b 00                                           mov    eax,DWORD PTR [eax]
  00426f82: 3b c1                                           cmp    eax,ecx
  00426f84: 75 04                                           jne    0x426f8a
  00426f86: 6a 00                                           push   0x0
  00426f88: eb 09                                           jmp    0x426f93
  00426f8a: 8a 50 10                                        mov    dl,BYTE PTR [eax+0x10]
  00426f8d: 84 d2                                           test   dl,dl
  00426f8f: 0f 95 c0                                        setne  al
  00426f92: 50                                              push   eax
  00426f93: 8b cf                                           mov    ecx,edi
  00426f95: e8 16 f2 05 00                                  call   0x4861b0
  00426f9a: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00426f9d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00426fa4: e8 97 aa 0a 00                                  call   0x4d1a40
  00426fa9: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00426fac: 83 c6 2c                                        add    esi,0x2c
  00426faf: 8d 4e ec                                        lea    ecx,[esi-0x14]
  00426fb2: 3b c8                                           cmp    ecx,eax
  00426fb4: 0f 85 52 ff ff ff                               jne    0x426f0c
  00426fba: 5e                                              pop    esi
  00426fbb: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00426fbe: 5f                                              pop    edi
  00426fbf: 5b                                              pop    ebx
  00426fc0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00426fc7: 8b e5                                           mov    esp,ebp
  00426fc9: 5d                                              pop    ebp
  00426fca: c2 0c 00                                        ret    0xc
  00427f60: 55                                              push   ebp
  00427f61: 8b ec                                           mov    ebp,esp
  00427f63: 6a ff                                           push   0xffffffff
  00427f65: 68 99 49 4d 00                                  push   0x4d4999
  00427f6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00427f70: 50                                              push   eax
  00427f71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00427f78: 83 ec 08                                        sub    esp,0x8
  00427f7b: 53                                              push   ebx
  00427f7c: 56                                              push   esi
  00427f7d: 57                                              push   edi
  00427f7e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00427f81: 8b f1                                           mov    esi,ecx
  00427f83: 57                                              push   edi
  00427f84: e8 c7 16 00 00                                  call   0x429650
  00427f89: 3b 46 04                                        cmp    eax,DWORD PTR [esi+0x4]
  00427f8c: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00427f8f: 74 5f                                           je     0x427ff0
  00427f91: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00427f94: e8 67 0e 00 00                                  call   0x428e00
  00427f99: 50                                              push   eax
  00427f9a: e8 51 0a 00 00                                  call   0x4289f0
  00427f9f: 8a 10                                           mov    dl,BYTE PTR [eax]
  00427fa1: 83 ec 0c                                        sub    esp,0xc
  00427fa4: 8b cc                                           mov    ecx,esp
  00427fa6: 33 db                                           xor    ebx,ebx
  00427fa8: 88 11                                           mov    BYTE PTR [ecx],dl
  00427faa: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00427fad: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00427fb0: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  00427fb3: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00427fb9: 8b 12                                           mov    edx,DWORD PTR [edx]
  00427fbb: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00427fbe: 52                                              push   edx
  00427fbf: 53                                              push   ebx
  00427fc0: 50                                              push   eax
  00427fc1: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00427fc7: 83 ec 10                                        sub    esp,0x10
  00427fca: 8b cc                                           mov    ecx,esp
  00427fcc: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00427fcf: 57                                              push   edi
  00427fd0: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00427fd3: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  00427fd9: 8b ce                                           mov    ecx,esi
  00427fdb: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00427fe2: e8 39 00 00 00                                  call   0x428020
  00427fe7: 3a c3                                           cmp    al,bl
  00427fe9: 75 05                                           jne    0x427ff0
  00427feb: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00427fee: eb 09                                           jmp    0x427ff9
  00427ff0: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00427ff3: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00427ff6: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00427ff9: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00427ffb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00427ffe: 5f                                              pop    edi
  00427fff: 89 08                                           mov    DWORD PTR [eax],ecx
  00428001: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00428004: 5e                                              pop    esi
  00428005: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042800c: 5b                                              pop    ebx
  0042800d: 8b e5                                           mov    esp,ebp
  0042800f: 5d                                              pop    ebp
  00428010: c2 08 00                                        ret    0x8
  00428140: 55                                              push   ebp
  00428141: 8b ec                                           mov    ebp,esp
  00428143: 51                                              push   ecx
  00428144: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00428147: 8a 55 ff                                        mov    dl,BYTE PTR [ebp-0x1]
  0042814a: 53                                              push   ebx
  0042814b: 56                                              push   esi
  0042814c: 8b f1                                           mov    esi,ecx
  0042814e: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  00428151: 33 db                                           xor    ebx,ebx
  00428153: 88 06                                           mov    BYTE PTR [esi],al
  00428155: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00428158: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042815b: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0042815e: 6a 18                                           push   0x18
  00428160: 88 4e 10                                        mov    BYTE PTR [esi+0x10],cl
  00428163: 88 56 11                                        mov    BYTE PTR [esi+0x11],dl
  00428166: e8 85 9e 01 00                                  call   0x441ff0
  0042816b: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0042816e: 88 58 15                                        mov    BYTE PTR [eax+0x15],bl
  00428171: b1 01                                           mov    cl,0x1
  00428173: 88 48 14                                        mov    BYTE PTR [eax+0x14],cl
  00428176: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  00428179: 88 48 15                                        mov    BYTE PTR [eax+0x15],cl
  0042817c: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  0042817f: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00428182: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  00428185: 89 00                                           mov    DWORD PTR [eax],eax
  00428187: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  0042818a: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0042818d: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00428190: 89 5e 18                                        mov    DWORD PTR [esi+0x18],ebx
  00428193: 83 c4 04                                        add    esp,0x4
  00428196: 88 46 1c                                        mov    BYTE PTR [esi+0x1c],al
  00428199: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  0042819c: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  0042819f: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  004281a2: 8b c6                                           mov    eax,esi
  004281a4: 5e                                              pop    esi
  004281a5: 5b                                              pop    ebx
  004281a6: 8b e5                                           mov    esp,ebp
  004281a8: 5d                                              pop    ebp
  004281a9: c3                                              ret
  004284f0: 55                                              push   ebp
  004284f1: 8b ec                                           mov    ebp,esp
  004284f3: 51                                              push   ecx
  004284f4: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  004284f7: 56                                              push   esi
  004284f8: 8b f1                                           mov    esi,ecx
  004284fa: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  004284fd: 6a 18                                           push   0x18
  004284ff: 88 06                                           mov    BYTE PTR [esi],al
  00428501: 88 4e 01                                        mov    BYTE PTR [esi+0x1],cl
  00428504: e8 e7 9a 01 00                                  call   0x441ff0
  00428509: 83 c4 04                                        add    esp,0x4
  0042850c: 33 c9                                           xor    ecx,ecx
  0042850e: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00428511: 88 48 15                                        mov    BYTE PTR [eax+0x15],cl
  00428514: b2 01                                           mov    dl,0x1
  00428516: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  00428519: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042851c: 88 50 15                                        mov    BYTE PTR [eax+0x15],dl
  0042851f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428522: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00428525: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428528: 89 00                                           mov    DWORD PTR [eax],eax
  0042852a: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042852d: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00428530: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00428533: 8b c6                                           mov    eax,esi
  00428535: 5e                                              pop    esi
  00428536: 8b e5                                           mov    esp,ebp
  00428538: 5d                                              pop    ebp
  00428539: c3                                              ret
  00428540: 55                                              push   ebp
  00428541: 8b ec                                           mov    ebp,esp
  00428543: 83 ec 08                                        sub    esp,0x8
  00428546: 53                                              push   ebx
  00428547: 56                                              push   esi
  00428548: 8b f1                                           mov    esi,ecx
  0042854a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042854d: 85 c9                                           test   ecx,ecx
  0042854f: 57                                              push   edi
  00428550: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00428553: 8b 07                                           mov    eax,DWORD PTR [edi]
  00428555: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00428558: 74 4b                                           je     0x4285a5
  0042855a: 8b c8                                           mov    ecx,eax
  0042855c: 3b c1                                           cmp    eax,ecx
  0042855e: 75 45                                           jne    0x4285a5
  00428560: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00428563: 8a 43 15                                        mov    al,BYTE PTR [ebx+0x15]
  00428566: 84 c0                                           test   al,al
  00428568: 8b fb                                           mov    edi,ebx
  0042856a: 75 1f                                           jne    0x42858b
  0042856c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0042856f: 50                                              push   eax
  00428570: 8b ce                                           mov    ecx,esi
  00428572: e8 29 0c 00 00                                  call   0x4291a0
  00428577: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00428579: 53                                              push   ebx
  0042857a: e8 e1 9a 01 00                                  call   0x442060
  0042857f: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  00428582: 83 c4 04                                        add    esp,0x4
  00428585: 84 c0                                           test   al,al
  00428587: 8b df                                           mov    ebx,edi
  00428589: 74 e1                                           je     0x42856c
  0042858b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042858e: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00428591: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428594: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0042859b: 89 00                                           mov    DWORD PTR [eax],eax
  0042859d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004285a0: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  004285a3: eb 21                                           jmp    0x4285c6
  004285a5: 3b c7                                           cmp    eax,edi
  004285a7: 74 1d                                           je     0x4285c6
  004285a9: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004285ac: 8b d8                                           mov    ebx,eax
  004285ae: e8 dd 0c 00 00                                  call   0x429290
  004285b3: 53                                              push   ebx
  004285b4: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  004285b7: 51                                              push   ecx
  004285b8: 8b ce                                           mov    ecx,esi
  004285ba: e8 41 f0 ff ff                                  call   0x427600
  004285bf: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004285c2: 3b c7                                           cmp    eax,edi
  004285c4: 75 e3                                           jne    0x4285a9
  004285c6: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004285c9: 52                                              push   edx
  004285ca: e8 91 9a 01 00                                  call   0x442060
  004285cf: 83 c4 04                                        add    esp,0x4
  004285d2: 33 c0                                           xor    eax,eax
  004285d4: 5f                                              pop    edi
  004285d5: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004285d8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004285db: 5e                                              pop    esi
  004285dc: 5b                                              pop    ebx
  004285dd: 8b e5                                           mov    esp,ebp
  004285df: 5d                                              pop    ebp
  004285e0: c3                                              ret
  004286a0: 55                                              push   ebp
  004286a1: 8b ec                                           mov    ebp,esp
  004286a3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004286a6: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004286a9: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  004286ac: 84 d2                                           test   dl,dl
  004286ae: 75 25                                           jne    0x4286d5
  004286b0: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004286b3: 8b 12                                           mov    edx,DWORD PTR [edx]
  004286b5: 53                                              push   ebx
  004286b6: 39 50 0c                                        cmp    DWORD PTR [eax+0xc],edx
  004286b9: 73 05                                           jae    0x4286c0
  004286bb: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004286be: eb 04                                           jmp    0x4286c4
  004286c0: 8b c8                                           mov    ecx,eax
  004286c2: 8b 00                                           mov    eax,DWORD PTR [eax]
  004286c4: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004286c7: 84 db                                           test   bl,bl
  004286c9: 74 eb                                           je     0x4286b6
  004286cb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004286ce: 89 08                                           mov    DWORD PTR [eax],ecx
  004286d0: 5b                                              pop    ebx
  004286d1: 5d                                              pop    ebp
  004286d2: c2 08 00                                        ret    0x8
  004286d5: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004286d8: 89 08                                           mov    DWORD PTR [eax],ecx
  004286da: 5d                                              pop    ebp
  004286db: c2 08 00                                        ret    0x8
  004289c0: 55                                              push   ebp
  004289c1: 8b ec                                           mov    ebp,esp
  004289c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004289c6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004289c8: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  004289cb: 84 d2                                           test   dl,dl
  004289cd: 75 0b                                           jne    0x4289da
  004289cf: 8b c1                                           mov    eax,ecx
  004289d1: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004289d3: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  004289d6: 84 d2                                           test   dl,dl
  004289d8: 74 f5                                           je     0x4289cf
  004289da: 5d                                              pop    ebp
  004289db: c3                                              ret
  00428a00: 55                                              push   ebp
  00428a01: 8b ec                                           mov    ebp,esp
  00428a03: 6a ff                                           push   0xffffffff
  00428a05: 68 22 4a 4d 00                                  push   0x4d4a22
  00428a0a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00428a10: 50                                              push   eax
  00428a11: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00428a18: 83 ec 18                                        sub    esp,0x18
  00428a1b: 53                                              push   ebx
  00428a1c: 8b d9                                           mov    ebx,ecx
  00428a1e: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00428a21: 56                                              push   esi
  00428a22: 57                                              push   edi
  00428a23: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  00428a26: 8a 57 49                                        mov    dl,BYTE PTR [edi+0x49]
  00428a29: 84 d2                                           test   dl,dl
  00428a2b: 8b c8                                           mov    ecx,eax
  00428a2d: b0 01                                           mov    al,0x1
  00428a2f: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  00428a32: 89 4d ec                                        mov    DWORD PTR [ebp-0x14],ecx
  00428a35: 88 45 e4                                        mov    BYTE PTR [ebp-0x1c],al
  00428a38: 0f 85 bb 00 00 00                               jne    0x428af9
  00428a3e: 57                                              push   edi
  00428a3f: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  00428a42: e8 a9 ff ff ff                                  call   0x4289f0
  00428a47: 83 ec 0c                                        sub    esp,0xc
  00428a4a: 8b f4                                           mov    esi,esp
  00428a4c: 8b d8                                           mov    ebx,eax
  00428a4e: 8a 03                                           mov    al,BYTE PTR [ebx]
  00428a50: 89 65 e0                                        mov    DWORD PTR [ebp-0x20],esp
  00428a53: 6a 00                                           push   0x0
  00428a55: 8b ce                                           mov    ecx,esi
  00428a57: 88 06                                           mov    BYTE PTR [esi],al
  00428a59: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00428a5f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00428a64: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00428a66: 51                                              push   ecx
  00428a67: 6a 00                                           push   0x0
  00428a69: 53                                              push   ebx
  00428a6a: 8b ce                                           mov    ecx,esi
  00428a6c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00428a72: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00428a75: 56                                              push   esi
  00428a76: 8d 4d f3                                        lea    ecx,[ebp-0xd]
  00428a79: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00428a80: e8 7b 0c 00 00                                  call   0x429700
  00428a85: 83 ec 10                                        sub    esp,0x10
  00428a88: 8b cc                                           mov    ecx,esp
  00428a8a: 89 65 dc                                        mov    DWORD PTR [ebp-0x24],esp
  00428a8d: 50                                              push   eax
  00428a8e: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  00428a94: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00428a97: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00428a9e: e8 7d f5 ff ff                                  call   0x428020
  00428aa3: 84 c0                                           test   al,al
  00428aa5: 88 45 e4                                        mov    BYTE PTR [ebp-0x1c],al
  00428aa8: 74 04                                           je     0x428aae
  00428aaa: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00428aac: eb 03                                           jmp    0x428ab1
  00428aae: 8b 7f 08                                        mov    edi,DWORD PTR [edi+0x8]
  00428ab1: 8a 4f 49                                        mov    cl,BYTE PTR [edi+0x49]
  00428ab4: 84 c9                                           test   cl,cl
  00428ab6: 74 86                                           je     0x428a3e
  00428ab8: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  00428abb: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00428abe: 84 c0                                           test   al,al
  00428ac0: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  00428ac3: 74 41                                           je     0x428b06
  00428ac5: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00428ac8: 3b 08                                           cmp    ecx,DWORD PTR [eax]
  00428aca: 75 32                                           jne    0x428afe
  00428acc: 56                                              push   esi
  00428acd: 51                                              push   ecx
  00428ace: 6a 01                                           push   0x1
  00428ad0: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00428ad3: 52                                              push   edx
  00428ad4: 8b cb                                           mov    ecx,ebx
  00428ad6: e8 95 08 00 00                                  call   0x429370
  00428adb: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00428add: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428ae0: 89 08                                           mov    DWORD PTR [eax],ecx
  00428ae2: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  00428ae6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00428ae9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00428af0: 5f                                              pop    edi
  00428af1: 5e                                              pop    esi
  00428af2: 5b                                              pop    ebx
  00428af3: 8b e5                                           mov    esp,ebp
  00428af5: 5d                                              pop    ebp
  00428af6: c2 08 00                                        ret    0x8
  00428af9: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00428afc: eb c0                                           jmp    0x428abe
  00428afe: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00428b01: e8 5a 16 00 00                                  call   0x42a160
  00428b06: 56                                              push   esi
  00428b07: 8d 4d f3                                        lea    ecx,[ebp-0xd]
  00428b0a: e8 f1 0b 00 00                                  call   0x429700
  00428b0f: 83 ec 10                                        sub    esp,0x10
  00428b12: 8b f4                                           mov    esi,esp
  00428b14: 8b f8                                           mov    edi,eax
  00428b16: 8a 07                                           mov    al,BYTE PTR [edi]
  00428b18: 89 65 dc                                        mov    DWORD PTR [ebp-0x24],esp
  00428b1b: 6a 00                                           push   0x0
  00428b1d: 8b ce                                           mov    ecx,esi
  00428b1f: 88 06                                           mov    BYTE PTR [esi],al
  00428b21: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00428b27: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00428b2d: 8b 02                                           mov    eax,DWORD PTR [edx]
  00428b2f: 50                                              push   eax
  00428b30: 6a 00                                           push   0x0
  00428b32: 57                                              push   edi
  00428b33: 8b ce                                           mov    ecx,esi
  00428b35: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00428b3b: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00428b3e: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00428b45: e8 b6 02 00 00                                  call   0x428e00
  00428b4a: 50                                              push   eax
  00428b4b: e8 a0 fe ff ff                                  call   0x4289f0
  00428b50: 83 ec 0c                                        sub    esp,0xc
  00428b53: 8b cc                                           mov    ecx,esp
  00428b55: 89 65 e0                                        mov    DWORD PTR [ebp-0x20],esp
  00428b58: 50                                              push   eax
  00428b59: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  00428b5f: 8b cb                                           mov    ecx,ebx
  00428b61: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00428b68: e8 b3 f4 ff ff                                  call   0x428020
  00428b6d: 84 c0                                           test   al,al
  00428b6f: 74 35                                           je     0x428ba6
  00428b71: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00428b74: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00428b77: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00428b7a: 51                                              push   ecx
  00428b7b: 52                                              push   edx
  00428b7c: 50                                              push   eax
  00428b7d: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00428b80: 51                                              push   ecx
  00428b81: 8b cb                                           mov    ecx,ebx
  00428b83: e8 e8 07 00 00                                  call   0x429370
  00428b88: 8b 10                                           mov    edx,DWORD PTR [eax]
  00428b8a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428b8d: 89 10                                           mov    DWORD PTR [eax],edx
  00428b8f: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  00428b93: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00428b96: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00428b9d: 5f                                              pop    edi
  00428b9e: 5e                                              pop    esi
  00428b9f: 5b                                              pop    ebx
  00428ba0: 8b e5                                           mov    esp,ebp
  00428ba2: 5d                                              pop    ebp
  00428ba3: c2 08 00                                        ret    0x8
  00428ba6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428ba9: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00428bac: 5f                                              pop    edi
  00428bad: 89 08                                           mov    DWORD PTR [eax],ecx
  00428baf: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00428bb2: 5e                                              pop    esi
  00428bb3: c6 40 04 00                                     mov    BYTE PTR [eax+0x4],0x0
  00428bb7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00428bbe: 5b                                              pop    ebx
  00428bbf: 8b e5                                           mov    esp,ebp
  00428bc1: 5d                                              pop    ebp
  00428bc2: c2 08 00                                        ret    0x8
  00428ca0: 55                                              push   ebp
  00428ca1: 8b ec                                           mov    ebp,esp
  00428ca3: 6a ff                                           push   0xffffffff
  00428ca5: 68 4d 4a 4d 00                                  push   0x4d4a4d
  00428caa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00428cb0: 50                                              push   eax
  00428cb1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00428cb8: 51                                              push   ecx
  00428cb9: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428cbc: 53                                              push   ebx
  00428cbd: 56                                              push   esi
  00428cbe: 8b f1                                           mov    esi,ecx
  00428cc0: 8a 08                                           mov    cl,BYTE PTR [eax]
  00428cc2: 33 db                                           xor    ebx,ebx
  00428cc4: 88 0e                                           mov    BYTE PTR [esi],cl
  00428cc6: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00428cc9: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00428ccc: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00428ccf: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  00428cd5: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428cd7: 57                                              push   edi
  00428cd8: 52                                              push   edx
  00428cd9: 53                                              push   ebx
  00428cda: 50                                              push   eax
  00428cdb: 8b ce                                           mov    ecx,esi
  00428cdd: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00428ce0: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00428ce6: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00428ce9: 8a 08                                           mov    cl,BYTE PTR [eax]
  00428ceb: 8d 7e 10                                        lea    edi,[esi+0x10]
  00428cee: 88 0f                                           mov    BYTE PTR [edi],cl
  00428cf0: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00428cf3: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00428cf6: 89 5f 0c                                        mov    DWORD PTR [edi+0xc],ebx
  00428cf9: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  00428cff: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428d01: 52                                              push   edx
  00428d02: 53                                              push   ebx
  00428d03: 50                                              push   eax
  00428d04: 8b cf                                           mov    ecx,edi
  00428d06: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00428d09: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00428d0c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00428d12: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00428d15: 8a 48 11                                        mov    cl,BYTE PTR [eax+0x11]
  00428d18: 83 c0 10                                        add    eax,0x10
  00428d1b: 8a 00                                           mov    al,BYTE PTR [eax]
  00428d1d: 8d 5f 10                                        lea    ebx,[edi+0x10]
  00428d20: 88 4b 01                                        mov    BYTE PTR [ebx+0x1],cl
  00428d23: 8b cb                                           mov    ecx,ebx
  00428d25: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00428d29: 88 03                                           mov    BYTE PTR [ebx],al
  00428d2b: e8 c0 13 00 00                                  call   0x42a0f0
  00428d30: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00428d33: 8d 41 10                                        lea    eax,[ecx+0x10]
  00428d36: 50                                              push   eax
  00428d37: 8b cb                                           mov    ecx,ebx
  00428d39: e8 42 00 00 00                                  call   0x428d80
  00428d3e: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00428d41: 8d 42 1c                                        lea    eax,[edx+0x1c]
  00428d44: 8a 10                                           mov    dl,BYTE PTR [eax]
  00428d46: 8d 4f 1c                                        lea    ecx,[edi+0x1c]
  00428d49: 88 11                                           mov    BYTE PTR [ecx],dl
  00428d4b: 33 d2                                           xor    edx,edx
  00428d4d: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00428d50: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00428d53: 89 51 0c                                        mov    DWORD PTR [ecx+0xc],edx
  00428d56: 8b 3d ec e4 4d 00                               mov    edi,DWORD PTR ds:0x4de4ec
  00428d5c: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00428d5e: 57                                              push   edi
  00428d5f: 52                                              push   edx
  00428d60: 50                                              push   eax
  00428d61: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00428d65: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00428d6b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00428d6e: 5f                                              pop    edi
  00428d6f: 8b c6                                           mov    eax,esi
  00428d71: 5e                                              pop    esi
  00428d72: 5b                                              pop    ebx
  00428d73: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00428d7a: 8b e5                                           mov    esp,ebp
  00428d7c: 5d                                              pop    ebp
  00428d7d: c2 08 00                                        ret    0x8
  00428e10: 55                                              push   ebp
  00428e11: 8b ec                                           mov    ebp,esp
  00428e13: 8b c1                                           mov    eax,ecx
  00428e15: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00428e18: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428e1a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00428e1d: 89 10                                           mov    DWORD PTR [eax],edx
  00428e1f: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00428e21: 88 50 04                                        mov    BYTE PTR [eax+0x4],dl
  00428e24: 5d                                              pop    ebp
  00428e25: c2 08 00                                        ret    0x8
  00428f20: 55                                              push   ebp
  00428f21: 8b ec                                           mov    ebp,esp
  00428f23: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428f26: 56                                              push   esi
  00428f27: 8b f1                                           mov    esi,ecx
  00428f29: 33 c9                                           xor    ecx,ecx
  00428f2b: 3b c1                                           cmp    eax,ecx
  00428f2d: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00428f30: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00428f33: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  00428f36: 75 07                                           jne    0x428f3f
  00428f38: 32 c0                                           xor    al,al
  00428f3a: 5e                                              pop    esi
  00428f3b: 5d                                              pop    ebp
  00428f3c: c2 04 00                                        ret    0x4
  00428f3f: 57                                              push   edi
  00428f40: 8d 3c c5 00 00 00 00                            lea    edi,[eax*8+0x0]
  00428f47: 57                                              push   edi
  00428f48: e8 a3 90 01 00                                  call   0x441ff0
  00428f4d: 83 c4 04                                        add    esp,0x4
  00428f50: 03 f8                                           add    edi,eax
  00428f52: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00428f55: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00428f58: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00428f5b: 5f                                              pop    edi
  00428f5c: b0 01                                           mov    al,0x1
  00428f5e: 5e                                              pop    esi
  00428f5f: 5d                                              pop    ebp
  00428f60: c2 04 00                                        ret    0x4
  00428f80: 55                                              push   ebp
  00428f81: 8b ec                                           mov    ebp,esp
  00428f83: 6a ff                                           push   0xffffffff
  00428f85: 68 74 4a 4d 00                                  push   0x4d4a74
  00428f8a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00428f90: 50                                              push   eax
  00428f91: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00428f98: 51                                              push   ecx
  00428f99: 53                                              push   ebx
  00428f9a: 56                                              push   esi
  00428f9b: 57                                              push   edi
  00428f9c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00428f9f: 8a 07                                           mov    al,BYTE PTR [edi]
  00428fa1: 8b f1                                           mov    esi,ecx
  00428fa3: 33 db                                           xor    ebx,ebx
  00428fa5: 88 06                                           mov    BYTE PTR [esi],al
  00428fa7: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00428faa: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00428fad: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00428fb0: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00428fb5: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00428fb7: 51                                              push   ecx
  00428fb8: 53                                              push   ebx
  00428fb9: 57                                              push   edi
  00428fba: 8b ce                                           mov    ecx,esi
  00428fbc: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00428fbf: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00428fc5: 8a 4f 11                                        mov    cl,BYTE PTR [edi+0x11]
  00428fc8: 8d 47 10                                        lea    eax,[edi+0x10]
  00428fcb: 8a 00                                           mov    al,BYTE PTR [eax]
  00428fcd: 8d 7e 10                                        lea    edi,[esi+0x10]
  00428fd0: 6a 18                                           push   0x18
  00428fd2: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00428fd5: 88 07                                           mov    BYTE PTR [edi],al
  00428fd7: 88 4f 01                                        mov    BYTE PTR [edi+0x1],cl
  00428fda: e8 11 90 01 00                                  call   0x441ff0
  00428fdf: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00428fe2: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00428fe5: c6 40 14 01                                     mov    BYTE PTR [eax+0x14],0x1
  00428fe9: 88 58 15                                        mov    BYTE PTR [eax+0x15],bl
  00428fec: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00428fef: c6 40 15 01                                     mov    BYTE PTR [eax+0x15],0x1
  00428ff3: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00428ff6: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00428ff9: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00428ffc: 89 00                                           mov    DWORD PTR [eax],eax
  00428ffe: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00429001: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00429004: 83 c4 04                                        add    esp,0x4
  00429007: 8d 42 10                                        lea    eax,[edx+0x10]
  0042900a: 50                                              push   eax
  0042900b: 8b cf                                           mov    ecx,edi
  0042900d: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00429010: e8 6b fd ff ff                                  call   0x428d80
  00429015: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00429018: 8d 78 1c                                        lea    edi,[eax+0x1c]
  0042901b: 8a 07                                           mov    al,BYTE PTR [edi]
  0042901d: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  00429020: 88 01                                           mov    BYTE PTR [ecx],al
  00429022: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00429025: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00429028: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  0042902b: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00429031: 8b 02                                           mov    eax,DWORD PTR [edx]
  00429033: 50                                              push   eax
  00429034: 53                                              push   ebx
  00429035: 57                                              push   edi
  00429036: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0042903a: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00429040: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00429043: 5f                                              pop    edi
  00429044: 8b c6                                           mov    eax,esi
  00429046: 5e                                              pop    esi
  00429047: 5b                                              pop    ebx
  00429048: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042904f: 8b e5                                           mov    esp,ebp
  00429051: 5d                                              pop    ebp
  00429052: c2 04 00                                        ret    0x4
  00429060: 55                                              push   ebp
  00429061: 8b ec                                           mov    ebp,esp
  00429063: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00429066: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00429069: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  0042906c: 84 d2                                           test   dl,dl
  0042906e: 75 25                                           jne    0x429095
  00429070: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00429073: 8b 12                                           mov    edx,DWORD PTR [edx]
  00429075: 53                                              push   ebx
  00429076: 3b 50 0c                                        cmp    edx,DWORD PTR [eax+0xc]
  00429079: 73 06                                           jae    0x429081
  0042907b: 8b c8                                           mov    ecx,eax
  0042907d: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042907f: eb 03                                           jmp    0x429084
  00429081: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00429084: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00429087: 84 db                                           test   bl,bl
  00429089: 74 eb                                           je     0x429076
  0042908b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042908e: 89 08                                           mov    DWORD PTR [eax],ecx
  00429090: 5b                                              pop    ebx
  00429091: 5d                                              pop    ebp
  00429092: c2 08 00                                        ret    0x8
  00429095: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00429098: 89 08                                           mov    DWORD PTR [eax],ecx
  0042909a: 5d                                              pop    ebp
  0042909b: c2 08 00                                        ret    0x8
  004291e0: 55                                              push   ebp
  004291e1: 8b ec                                           mov    ebp,esp
  004291e3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004291e6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004291e9: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  004291ec: 84 d2                                           test   dl,dl
  004291ee: 75 1c                                           jne    0x42920c
  004291f0: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004291f3: 8b 12                                           mov    edx,DWORD PTR [edx]
  004291f5: 53                                              push   ebx
  004291f6: 39 51 0c                                        cmp    DWORD PTR [ecx+0xc],edx
  004291f9: 73 05                                           jae    0x429200
  004291fb: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004291fe: eb 04                                           jmp    0x429204
  00429200: 8b c1                                           mov    eax,ecx
  00429202: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00429204: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  00429207: 84 db                                           test   bl,bl
  00429209: 74 eb                                           je     0x4291f6
  0042920b: 5b                                              pop    ebx
  0042920c: 5d                                              pop    ebp
  0042920d: c2 04 00                                        ret    0x4
  00429330: 56                                              push   esi
  00429331: 6a 4c                                           push   0x4c
  00429333: 8b f1                                           mov    esi,ecx
  00429335: e8 b6 8c 01 00                                  call   0x441ff0
  0042933a: 33 c9                                           xor    ecx,ecx
  0042933c: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042933f: 88 48 49                                        mov    BYTE PTR [eax+0x49],cl
  00429342: b2 01                                           mov    dl,0x1
  00429344: 88 50 48                                        mov    BYTE PTR [eax+0x48],dl
  00429347: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042934a: 88 50 49                                        mov    BYTE PTR [eax+0x49],dl
  0042934d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429350: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00429353: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429356: 89 00                                           mov    DWORD PTR [eax],eax
  00429358: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042935b: 83 c4 04                                        add    esp,0x4
  0042935e: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00429361: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00429364: 5e                                              pop    esi
  00429365: c3                                              ret
  0042a130: 55                                              push   ebp
  0042a131: 8b ec                                           mov    ebp,esp
  0042a133: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042a136: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042a139: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  0042a13c: 84 d2                                           test   dl,dl
  0042a13e: 75 1c                                           jne    0x42a15c
  0042a140: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0042a143: 8b 12                                           mov    edx,DWORD PTR [edx]
  0042a145: 53                                              push   ebx
  0042a146: 3b 51 0c                                        cmp    edx,DWORD PTR [ecx+0xc]
  0042a149: 73 06                                           jae    0x42a151
  0042a14b: 8b c1                                           mov    eax,ecx
  0042a14d: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0042a14f: eb 03                                           jmp    0x42a154
  0042a151: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0042a154: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  0042a157: 84 db                                           test   bl,bl
  0042a159: 74 eb                                           je     0x42a146
  0042a15b: 5b                                              pop    ebx
  0042a15c: 5d                                              pop    ebp
  0042a15d: c2 04 00                                        ret    0x4
  0042a420: 55                                              push   ebp
  0042a421: 8b ec                                           mov    ebp,esp
  0042a423: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042a426: 56                                              push   esi
  0042a427: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042a42a: 3b ce                                           cmp    ecx,esi
  0042a42c: 74 51                                           je     0x42a47f
  0042a42e: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0042a431: 53                                              push   ebx
  0042a432: ff 02                                           inc    DWORD PTR [edx]
  0042a434: 8a 41 15                                        mov    al,BYTE PTR [ecx+0x15]
  0042a437: 84 c0                                           test   al,al
  0042a439: 75 3f                                           jne    0x42a47a
  0042a43b: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0042a43e: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  0042a441: 84 db                                           test   bl,bl
  0042a443: 75 18                                           jne    0x42a45d
  0042a445: 8b c8                                           mov    ecx,eax
  0042a447: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042a449: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  0042a44c: 84 db                                           test   bl,bl
  0042a44e: 75 2a                                           jne    0x42a47a
  0042a450: 8b c8                                           mov    ecx,eax
  0042a452: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042a454: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  0042a457: 84 db                                           test   bl,bl
  0042a459: 74 f5                                           je     0x42a450
  0042a45b: eb 1d                                           jmp    0x42a47a
  0042a45d: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042a460: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  0042a463: 84 db                                           test   bl,bl
  0042a465: 75 11                                           jne    0x42a478
  0042a467: 3b 48 08                                        cmp    ecx,DWORD PTR [eax+0x8]
  0042a46a: 75 0c                                           jne    0x42a478
  0042a46c: 8b c8                                           mov    ecx,eax
  0042a46e: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042a471: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  0042a474: 84 db                                           test   bl,bl
  0042a476: 74 ef                                           je     0x42a467
  0042a478: 8b c8                                           mov    ecx,eax
  0042a47a: 3b ce                                           cmp    ecx,esi
  0042a47c: 75 b4                                           jne    0x42a432
  0042a47e: 5b                                              pop    ebx
  0042a47f: 5e                                              pop    esi
  0042a480: 5d                                              pop    ebp
  0042a481: c3                                              ret
  0042aa70: 55                                              push   ebp
  0042aa71: 8b ec                                           mov    ebp,esp
  0042aa73: 56                                              push   esi
  0042aa74: 8b f1                                           mov    esi,ecx
  0042aa76: e8 d5 d8 ff ff                                  call   0x428350
  0042aa7b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042aa7f: 74 09                                           je     0x42aa8a
  0042aa81: 56                                              push   esi
  0042aa82: e8 d9 75 01 00                                  call   0x442060
  0042aa87: 83 c4 04                                        add    esp,0x4
  0042aa8a: 8b c6                                           mov    eax,esi
  0042aa8c: 5e                                              pop    esi
  0042aa8d: 5d                                              pop    ebp
  0042aa8e: c2 04 00                                        ret    0x4
  0042e0d0: 55                                              push   ebp
  0042e0d1: 8b ec                                           mov    ebp,esp
  0042e0d3: 6a ff                                           push   0xffffffff
  0042e0d5: 68 83 4f 4d 00                                  push   0x4d4f83
  0042e0da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042e0e0: 50                                              push   eax
  0042e0e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042e0e8: 51                                              push   ecx
  0042e0e9: 53                                              push   ebx
  0042e0ea: 56                                              push   esi
  0042e0eb: 8b f1                                           mov    esi,ecx
  0042e0ed: 57                                              push   edi
  0042e0ee: 8d 8e 8c 00 00 00                               lea    ecx,[esi+0x8c]
  0042e0f4: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0042e0f7: e8 24 32 00 00                                  call   0x431320
  0042e0fc: 8b 1d dc e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0dc
  0042e102: 8d 46 74                                        lea    eax,[esi+0x74]
  0042e105: 50                                              push   eax
  0042e106: c7 46 6c 8c e5 4d 00                            mov    DWORD PTR [esi+0x6c],0x4de58c
  0042e10d: c7 46 70 ff ff ff ff                            mov    DWORD PTR [esi+0x70],0xffffffff
  0042e114: ff d3                                           call   ebx
  0042e116: 33 ff                                           xor    edi,edi
  0042e118: 57                                              push   edi
  0042e119: 57                                              push   edi
  0042e11a: 57                                              push   edi
  0042e11b: 57                                              push   edi
  0042e11c: c7 46 6c 80 eb 4d 00                            mov    DWORD PTR [esi+0x6c],0x4deb80
  0042e123: ff 15 28 e1 4d 00                               call   DWORD PTR ds:0x4de128
  0042e129: 89 86 a0 00 00 00                               mov    DWORD PTR [esi+0xa0],eax
  0042e12f: 8a 55 0b                                        mov    dl,BYTE PTR [ebp+0xb]
  0042e132: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0042e135: 8d 8e a4 00 00 00                               lea    ecx,[esi+0xa4]
  0042e13b: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0042e13e: 88 11                                           mov    BYTE PTR [ecx],dl
  0042e140: 88 41 01                                        mov    BYTE PTR [ecx+0x1],al
  0042e143: e8 18 34 00 00                                  call   0x431560
  0042e148: 8d 8e b8 00 00 00                               lea    ecx,[esi+0xb8]
  0042e14e: 51                                              push   ecx
  0042e14f: c7 86 b0 00 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0xb0],0x4de58c
  0042e159: c7 86 b4 00 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0xb4],0xffffffff
  0042e163: ff d3                                           call   ebx
  0042e165: 8d 96 d8 00 00 00                               lea    edx,[esi+0xd8]
  0042e16b: 52                                              push   edx
  0042e16c: c7 86 d0 00 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0xd0],0x4de58c
  0042e176: c7 86 d4 00 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0xd4],0xffffffff
  0042e180: ff d3                                           call   ebx
  0042e182: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0042e185: 88 86 f0 00 00 00                               mov    BYTE PTR [esi+0xf0],al
  0042e18b: 89 be f4 00 00 00                               mov    DWORD PTR [esi+0xf4],edi
  0042e191: 89 be f8 00 00 00                               mov    DWORD PTR [esi+0xf8],edi
  0042e197: 89 be fc 00 00 00                               mov    DWORD PTR [esi+0xfc],edi
  0042e19d: 89 be 00 01 00 00                               mov    DWORD PTR [esi+0x100],edi
  0042e1a3: 8d 8e 24 01 00 00                               lea    ecx,[esi+0x124]
  0042e1a9: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0042e1ad: e8 6e 31 00 00                                  call   0x431320
  0042e1b2: 8d 8e 0c 01 00 00                               lea    ecx,[esi+0x10c]
  0042e1b8: 51                                              push   ecx
  0042e1b9: c7 86 04 01 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0x104],0x4de58c
  0042e1c3: c7 86 08 01 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0x108],0xffffffff
  0042e1cd: ff d3                                           call   ebx
  0042e1cf: 57                                              push   edi
  0042e1d0: 57                                              push   edi
  0042e1d1: 57                                              push   edi
  0042e1d2: 57                                              push   edi
  0042e1d3: c7 86 04 01 00 00 80 eb 4d 00                   mov    DWORD PTR [esi+0x104],0x4deb80
  0042e1dd: ff 15 28 e1 4d 00                               call   DWORD PTR ds:0x4de128
  0042e1e3: 8d 96 60 01 00 00                               lea    edx,[esi+0x160]
  0042e1e9: 89 86 38 01 00 00                               mov    DWORD PTR [esi+0x138],eax
  0042e1ef: 52                                              push   edx
  0042e1f0: c7 86 58 01 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0x158],0x4de58c
  0042e1fa: c7 86 5c 01 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0x15c],0xffffffff
  0042e204: ff d3                                           call   ebx
  0042e206: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0042e209: 88 86 78 01 00 00                               mov    BYTE PTR [esi+0x178],al
  0042e20f: 89 be 7c 01 00 00                               mov    DWORD PTR [esi+0x17c],edi
  0042e215: 89 be 80 01 00 00                               mov    DWORD PTR [esi+0x180],edi
  0042e21b: 89 be 84 01 00 00                               mov    DWORD PTR [esi+0x184],edi
  0042e221: 8b 46 54                                        mov    eax,DWORD PTR [esi+0x54]
  0042e224: 89 46 48                                        mov    DWORD PTR [esi+0x48],eax
  0042e227: 89 46 44                                        mov    DWORD PTR [esi+0x44],eax
  0042e22a: b8 01 00 00 00                                  mov    eax,0x1
  0042e22f: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  0042e232: 89 7e 1c                                        mov    DWORD PTR [esi+0x1c],edi
  0042e235: 89 86 40 01 00 00                               mov    DWORD PTR [esi+0x140],eax
  0042e23b: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042e23e: 89 be 54 01 00 00                               mov    DWORD PTR [esi+0x154],edi
  0042e244: 89 7e 4c                                        mov    DWORD PTR [esi+0x4c],edi
  0042e247: 89 7e 50                                        mov    DWORD PTR [esi+0x50],edi
  0042e24a: 89 86 44 01 00 00                               mov    DWORD PTR [esi+0x144],eax
  0042e250: 89 86 48 01 00 00                               mov    DWORD PTR [esi+0x148],eax
  0042e256: 89 86 4c 01 00 00                               mov    DWORD PTR [esi+0x14c],eax
  0042e25c: 89 86 50 01 00 00                               mov    DWORD PTR [esi+0x150],eax
  0042e262: 89 4e 18                                        mov    DWORD PTR [esi+0x18],ecx
  0042e265: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042e268: 5f                                              pop    edi
  0042e269: 8b c6                                           mov    eax,esi
  0042e26b: 5e                                              pop    esi
  0042e26c: 5b                                              pop    ebx
  0042e26d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042e274: 8b e5                                           mov    esp,ebp
  0042e276: 5d                                              pop    ebp
  0042e277: c2 04 00                                        ret    0x4
  0042ea50: 55                                              push   ebp
  0042ea51: 8b ec                                           mov    ebp,esp
  0042ea53: 53                                              push   ebx
  0042ea54: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  0042ea57: 85 db                                           test   ebx,ebx
  0042ea59: 56                                              push   esi
  0042ea5a: 57                                              push   edi
  0042ea5b: 8b 7d 18                                        mov    edi,DWORD PTR [ebp+0x18]
  0042ea5e: 8b f1                                           mov    esi,ecx
  0042ea60: 74 15                                           je     0x42ea77
  0042ea62: 85 ff                                           test   edi,edi
  0042ea64: 74 11                                           je     0x42ea77
  0042ea66: 57                                              push   edi
  0042ea67: 53                                              push   ebx
  0042ea68: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  0042ea6e: 83 c4 08                                        add    esp,0x8
  0042ea71: 85 c0                                           test   eax,eax
  0042ea73: 75 41                                           jne    0x42eab6
  0042ea75: eb 04                                           jmp    0x42ea7b
  0042ea77: 3b df                                           cmp    ebx,edi
  0042ea79: 75 3b                                           jne    0x42eab6
  0042ea7b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042ea7e: 66 3b 4d 10                                     cmp    cx,WORD PTR [ebp+0x10]
  0042ea82: 75 35                                           jne    0x42eab9
  0042ea84: 8d 7e 24                                        lea    edi,[esi+0x24]
  0042ea87: 57                                              push   edi
  0042ea88: 8d 46 20                                        lea    eax,[esi+0x20]
  0042ea8b: 50                                              push   eax
  0042ea8c: 53                                              push   ebx
  0042ea8d: 51                                              push   ecx
  0042ea8e: 8b ce                                           mov    ecx,esi
  0042ea90: e8 9b fe ff ff                                  call   0x42e930
  0042ea95: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0042ea98: 89 4e 1c                                        mov    DWORD PTR [esi+0x1c],ecx
  0042ea9b: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0042ea9d: 8d 56 34                                        lea    edx,[esi+0x34]
  0042eaa0: 89 0a                                           mov    DWORD PTR [edx],ecx
  0042eaa2: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0042eaa5: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0042eaa8: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0042eaab: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0042eaae: 8b 4f 0c                                        mov    ecx,DWORD PTR [edi+0xc]
  0042eab1: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  0042eab4: eb 30                                           jmp    0x42eae6
  0042eab6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042eab9: 8d 56 24                                        lea    edx,[esi+0x24]
  0042eabc: 52                                              push   edx
  0042eabd: 8d 46 20                                        lea    eax,[esi+0x20]
  0042eac0: 50                                              push   eax
  0042eac1: 53                                              push   ebx
  0042eac2: 51                                              push   ecx
  0042eac3: 8b ce                                           mov    ecx,esi
  0042eac5: e8 66 fe ff ff                                  call   0x42e930
  0042eaca: 84 c0                                           test   al,al
  0042eacc: 0f 84 14 01 00 00                               je     0x42ebe6
  0042ead2: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0042ead5: 8d 4e 34                                        lea    ecx,[esi+0x34]
  0042ead8: 51                                              push   ecx
  0042ead9: 8d 56 1c                                        lea    edx,[esi+0x1c]
  0042eadc: 52                                              push   edx
  0042eadd: 57                                              push   edi
  0042eade: 50                                              push   eax
  0042eadf: 8b ce                                           mov    ecx,esi
  0042eae1: e8 4a fe ff ff                                  call   0x42e930
  0042eae6: 84 c0                                           test   al,al
  0042eae8: 0f 84 f8 00 00 00                               je     0x42ebe6
  0042eaee: 68 f0 2b 50 00                                  push   0x502bf0
  0042eaf3: 68 00 04 00 00                                  push   0x400
  0042eaf8: e8 43 32 04 00                                  call   0x471d40
  0042eafd: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042eb00: 8b 3d 08 e1 4d 00                               mov    edi,DWORD PTR ds:0x4de108
  0042eb06: 83 c4 08                                        add    esp,0x8
  0042eb09: 6a 01                                           push   0x1
  0042eb0b: 6a 00                                           push   0x0
  0042eb0d: 6a 00                                           push   0x0
  0042eb0f: 6a ff                                           push   0xffffffff
  0042eb11: 89 8e 3c 01 00 00                               mov    DWORD PTR [esi+0x13c],ecx
  0042eb17: ff d7                                           call   edi
  0042eb19: 6a 01                                           push   0x1
  0042eb1b: 6a 00                                           push   0x0
  0042eb1d: 6a 00                                           push   0x0
  0042eb1f: 6a ff                                           push   0xffffffff
  0042eb21: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  0042eb24: ff d7                                           call   edi
  0042eb26: 6a 01                                           push   0x1
  0042eb28: 6a 00                                           push   0x0
  0042eb2a: 6a 00                                           push   0x0
  0042eb2c: 6a ff                                           push   0xffffffff
  0042eb2e: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  0042eb31: ff d7                                           call   edi
  0042eb33: 6a 01                                           push   0x1
  0042eb35: 6a 00                                           push   0x0
  0042eb37: 6a 00                                           push   0x0
  0042eb39: 6a ff                                           push   0xffffffff
  0042eb3b: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  0042eb3e: ff d7                                           call   edi
  0042eb40: 8b 3d 58 e3 4d 00                               mov    edi,DWORD PTR ds:0x4de358
  0042eb46: 56                                              push   esi
  0042eb47: 6a 00                                           push   0x0
  0042eb49: 68 30 ff 42 00                                  push   0x42ff30
  0042eb4e: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  0042eb51: ff d7                                           call   edi
  0042eb53: 56                                              push   esi
  0042eb54: 6a 00                                           push   0x0
  0042eb56: 68 50 01 43 00                                  push   0x430150
  0042eb5b: 89 46 44                                        mov    DWORD PTR [esi+0x44],eax
  0042eb5e: ff d7                                           call   edi
  0042eb60: 56                                              push   esi
  0042eb61: 6a 00                                           push   0x0
  0042eb63: 68 d0 fd 42 00                                  push   0x42fdd0
  0042eb68: 89 46 48                                        mov    DWORD PTR [esi+0x48],eax
  0042eb6b: ff d7                                           call   edi
  0042eb6d: 56                                              push   esi
  0042eb6e: 6a 00                                           push   0x0
  0042eb70: 68 d0 08 43 00                                  push   0x4308d0
  0042eb75: 89 46 54                                        mov    DWORD PTR [esi+0x54],eax
  0042eb78: ff d7                                           call   edi
  0042eb7a: 56                                              push   esi
  0042eb7b: 6a 00                                           push   0x0
  0042eb7d: 68 90 f0 42 00                                  push   0x42f090
  0042eb82: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  0042eb85: ff d7                                           call   edi
  0042eb87: 56                                              push   esi
  0042eb88: 6a 00                                           push   0x0
  0042eb8a: 68 80 f1 42 00                                  push   0x42f180
  0042eb8f: 89 46 4c                                        mov    DWORD PTR [esi+0x4c],eax
  0042eb92: ff d7                                           call   edi
  0042eb94: 8b 56 4c                                        mov    edx,DWORD PTR [esi+0x4c]
  0042eb97: 8b 3d 44 e1 4d 00                               mov    edi,DWORD PTR ds:0x4de144
  0042eb9d: 83 c4 48                                        add    esp,0x48
  0042eba0: 6a 02                                           push   0x2
  0042eba2: 52                                              push   edx
  0042eba3: 89 46 50                                        mov    DWORD PTR [esi+0x50],eax
  0042eba6: ff d7                                           call   edi
  0042eba8: 8b 46 50                                        mov    eax,DWORD PTR [esi+0x50]
  0042ebab: 6a 02                                           push   0x2
  0042ebad: 50                                              push   eax
  0042ebae: ff d7                                           call   edi
  0042ebb0: 8b 4e 44                                        mov    ecx,DWORD PTR [esi+0x44]
  0042ebb3: 6a 01                                           push   0x1
  0042ebb5: 51                                              push   ecx
  0042ebb6: ff d7                                           call   edi
  0042ebb8: 8b 56 48                                        mov    edx,DWORD PTR [esi+0x48]
  0042ebbb: 6a 01                                           push   0x1
  0042ebbd: 52                                              push   edx
  0042ebbe: ff d7                                           call   edi
  0042ebc0: 6a 01                                           push   0x1
  0042ebc2: 8b 46 54                                        mov    eax,DWORD PTR [esi+0x54]
  0042ebc5: 50                                              push   eax
  0042ebc6: ff d7                                           call   edi
  0042ebc8: 68 bc 2b 50 00                                  push   0x502bbc
  0042ebcd: 68 00 04 00 00                                  push   0x400
  0042ebd2: e8 69 31 04 00                                  call   0x471d40
  0042ebd7: 83 c4 08                                        add    esp,0x8
  0042ebda: 5f                                              pop    edi
  0042ebdb: 5e                                              pop    esi
  0042ebdc: b8 01 00 00 00                                  mov    eax,0x1
  0042ebe1: 5b                                              pop    ebx
  0042ebe2: 5d                                              pop    ebp
  0042ebe3: c2 14 00                                        ret    0x14
  0042ebe6: 68 90 2b 50 00                                  push   0x502b90
  0042ebeb: 68 00 04 00 00                                  push   0x400
  0042ebf0: e8 4b 31 04 00                                  call   0x471d40
  0042ebf5: 83 c4 08                                        add    esp,0x8
  0042ebf8: 5f                                              pop    edi
  0042ebf9: 5e                                              pop    esi
  0042ebfa: 33 c0                                           xor    eax,eax
  0042ebfc: 5b                                              pop    ebx
  0042ebfd: 5d                                              pop    ebp
  0042ebfe: c2 14 00                                        ret    0x14
  0042f5d0: 55                                              push   ebp
  0042f5d1: 8b ec                                           mov    ebp,esp
  0042f5d3: 83 ec 20                                        sub    esp,0x20
  0042f5d6: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042f5d9: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0042f5dc: 53                                              push   ebx
  0042f5dd: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042f5e0: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0042f5e3: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0042f5e6: 57                                              push   edi
  0042f5e7: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  0042f5ea: 8d 55 e0                                        lea    edx,[ebp-0x20]
  0042f5ed: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0042f5f0: 52                                              push   edx
  0042f5f1: 8d 45 f4                                        lea    eax,[ebp-0xc]
  0042f5f4: 81 c1 a4 00 00 00                               add    ecx,0xa4
  0042f5fa: 33 ff                                           xor    edi,edi
  0042f5fc: 50                                              push   eax
  0042f5fd: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  0042f600: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0042f603: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0042f606: e8 95 1d 00 00                                  call   0x4313a0
  0042f60b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042f60d: 8b 40 1c                                        mov    eax,DWORD PTR [eax+0x1c]
  0042f610: 3b c7                                           cmp    eax,edi
  0042f612: 0f 85 1d 01 00 00                               jne    0x42f735
  0042f618: 56                                              push   esi
  0042f619: 68 c4 03 00 00                                  push   0x3c4
  0042f61e: e8 cd 29 01 00                                  call   0x441ff0
  0042f623: 8b f0                                           mov    esi,eax
  0042f625: 83 c4 04                                        add    esp,0x4
  0042f628: 3b f7                                           cmp    esi,edi
  0042f62a: 0f 84 a3 00 00 00                               je     0x42f6d3
  0042f630: 8b 1d dc e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0dc
  0042f636: 8d 4e 18                                        lea    ecx,[esi+0x18]
  0042f639: 51                                              push   ecx
  0042f63a: c7 46 10 8c e5 4d 00                            mov    DWORD PTR [esi+0x10],0x4de58c
  0042f641: c7 46 14 ff ff ff ff                            mov    DWORD PTR [esi+0x14],0xffffffff
  0042f648: ff d3                                           call   ebx
  0042f64a: 8d 56 5c                                        lea    edx,[esi+0x5c]
  0042f64d: 89 7e 34                                        mov    DWORD PTR [esi+0x34],edi
  0042f650: 89 7e 38                                        mov    DWORD PTR [esi+0x38],edi
  0042f653: 89 7e 3c                                        mov    DWORD PTR [esi+0x3c],edi
  0042f656: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0042f659: c7 46 10 90 eb 4d 00                            mov    DWORD PTR [esi+0x10],0x4deb90
  0042f660: 89 7e 50                                        mov    DWORD PTR [esi+0x50],edi
  0042f663: c6 46 44 08                                     mov    BYTE PTR [esi+0x44],0x8
  0042f667: 89 7e 48                                        mov    DWORD PTR [esi+0x48],edi
  0042f66a: 52                                              push   edx
  0042f66b: c7 46 54 8c e5 4d 00                            mov    DWORD PTR [esi+0x54],0x4de58c
  0042f672: c7 46 58 ff ff ff ff                            mov    DWORD PTR [esi+0x58],0xffffffff
  0042f679: ff d3                                           call   ebx
  0042f67b: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  0042f67e: 89 7e 7c                                        mov    DWORD PTR [esi+0x7c],edi
  0042f681: 89 be 80 00 00 00                               mov    DWORD PTR [esi+0x80],edi
  0042f687: 89 be 84 00 00 00                               mov    DWORD PTR [esi+0x84],edi
  0042f68d: c7 46 54 90 eb 4d 00                            mov    DWORD PTR [esi+0x54],0x4deb90
  0042f694: 89 be 94 00 00 00                               mov    DWORD PTR [esi+0x94],edi
  0042f69a: c6 86 88 00 00 00 08                            mov    BYTE PTR [esi+0x88],0x8
  0042f6a1: 89 be 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],edi
  0042f6a7: 8d 86 98 00 00 00                               lea    eax,[esi+0x98]
  0042f6ad: b9 64 00 00 00                                  mov    ecx,0x64
  0042f6b2: c7 00 ff ff ff ff                               mov    DWORD PTR [eax],0xffffffff
  0042f6b8: 83 c0 08                                        add    eax,0x8
  0042f6bb: 49                                              dec    ecx
  0042f6bc: 75 f4                                           jne    0x42f6b2
  0042f6be: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042f6c1: c7 86 bc 03 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0x3bc],0xffffffff
  0042f6cb: 89 be b8 03 00 00                               mov    DWORD PTR [esi+0x3b8],edi
  0042f6d1: eb 02                                           jmp    0x42f6d5
  0042f6d3: 33 f6                                           xor    esi,esi
  0042f6d5: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042f6d8: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0042f6db: 8b c6                                           mov    eax,esi
  0042f6dd: 89 18                                           mov    DWORD PTR [eax],ebx
  0042f6df: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042f6e2: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0042f6e5: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  0042f6e8: 89 48 0c                                        mov    DWORD PTR [eax+0xc],ecx
  0042f6eb: c7 86 bc 03 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0x3bc],0xffffffff
  0042f6f5: e8 f6 a4 05 00                                  call   0x489bf0
  0042f6fa: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0042f6fd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0042f700: 05 98 3a 00 00                                  add    eax,0x3a98
  0042f705: 89 86 c0 03 00 00                               mov    DWORD PTR [esi+0x3c0],eax
  0042f70b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0042f70e: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  0042f711: 8d 55 e0                                        lea    edx,[ebp-0x20]
  0042f714: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0042f717: 52                                              push   edx
  0042f718: 8d 45 10                                        lea    eax,[ebp+0x10]
  0042f71b: 89 4d ec                                        mov    DWORD PTR [ebp-0x14],ecx
  0042f71e: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0042f721: 50                                              push   eax
  0042f722: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  0042f725: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0042f728: e8 73 1c 00 00                                  call   0x4313a0
  0042f72d: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042f72f: 89 70 1c                                        mov    DWORD PTR [eax+0x1c],esi
  0042f732: 8b c6                                           mov    eax,esi
  0042f734: 5e                                              pop    esi
  0042f735: 5f                                              pop    edi
  0042f736: 5b                                              pop    ebx
  0042f737: 8b e5                                           mov    esp,ebp
  0042f739: 5d                                              pop    ebp
  0042f73a: c2 10 00                                        ret    0x10
  00430dc0: 55                                              push   ebp
  00430dc1: 8b ec                                           mov    ebp,esp
  00430dc3: 6a ff                                           push   0xffffffff
  00430dc5: 68 09 51 4d 00                                  push   0x4d5109
  00430dca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00430dd0: 50                                              push   eax
  00430dd1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00430dd8: 83 ec 34                                        sub    esp,0x34
  00430ddb: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00430dde: 56                                              push   esi
  00430ddf: 8b f1                                           mov    esi,ecx
  00430de1: 8a 48 21                                        mov    cl,BYTE PTR [eax+0x21]
  00430de4: 84 c9                                           test   cl,cl
  00430de6: 57                                              push   edi
  00430de7: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00430dea: 74 57                                           je     0x430e43
  00430dec: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00430def: 6a 00                                           push   0x0
  00430df1: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00430df4: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00430df7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00430dfd: 83 c9 ff                                        or     ecx,0xffffffff
  00430e00: 33 c0                                           xor    eax,eax
  00430e02: bf 40 05 50 00                                  mov    edi,0x500540
  00430e07: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00430e09: f7 d1                                           not    ecx
  00430e0b: 49                                              dec    ecx
  00430e0c: 51                                              push   ecx
  00430e0d: 68 40 05 50 00                                  push   0x500540
  00430e12: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00430e15: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00430e1b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00430e1e: 51                                              push   ecx
  00430e1f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00430e22: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00430e29: e8 52 42 fd ff                                  call   0x405080
  00430e2e: 68 18 0a 4e 00                                  push   0x4e0a18
  00430e33: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00430e36: 52                                              push   edx
  00430e37: c7 45 c0 e0 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5e0
  00430e3e: e8 13 0f 0a 00                                  call   0x4d1d56
  00430e43: 53                                              push   ebx
  00430e44: 8b d8                                           mov    ebx,eax
  00430e46: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00430e49: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00430e4c: e8 7f 0a 00 00                                  call   0x4318d0
  00430e51: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00430e53: 8a 42 21                                        mov    al,BYTE PTR [edx+0x21]
  00430e56: 84 c0                                           test   al,al
  00430e58: 74 05                                           je     0x430e5f
  00430e5a: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00430e5d: eb 2b                                           jmp    0x430e8a
  00430e5f: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00430e62: 8a 41 21                                        mov    al,BYTE PTR [ecx+0x21]
  00430e65: 84 c0                                           test   al,al
  00430e67: 74 04                                           je     0x430e6d
  00430e69: 8b fa                                           mov    edi,edx
  00430e6b: eb 1d                                           jmp    0x430e8a
  00430e6d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00430e6f: 80 78 21 00                                     cmp    BYTE PTR [eax+0x21],0x0
  00430e73: 75 0a                                           jne    0x430e7f
  00430e75: 8b c8                                           mov    ecx,eax
  00430e77: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00430e79: 80 78 21 00                                     cmp    BYTE PTR [eax+0x21],0x0
  00430e7d: 74 f6                                           je     0x430e75
  00430e7f: 3b cb                                           cmp    ecx,ebx
  00430e81: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  00430e84: 0f 85 8a 00 00 00                               jne    0x430f14
  00430e8a: 8a 4f 21                                        mov    cl,BYTE PTR [edi+0x21]
  00430e8d: 84 c9                                           test   cl,cl
  00430e8f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00430e92: 75 03                                           jne    0x430e97
  00430e94: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00430e97: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00430e9a: 39 59 04                                        cmp    DWORD PTR [ecx+0x4],ebx
  00430e9d: 75 05                                           jne    0x430ea4
  00430e9f: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00430ea2: eb 0b                                           jmp    0x430eaf
  00430ea4: 39 18                                           cmp    DWORD PTR [eax],ebx
  00430ea6: 75 04                                           jne    0x430eac
  00430ea8: 89 38                                           mov    DWORD PTR [eax],edi
  00430eaa: eb 03                                           jmp    0x430eaf
  00430eac: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  00430eaf: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00430eb2: 39 1e                                           cmp    DWORD PTR [esi],ebx
  00430eb4: 75 24                                           jne    0x430eda
  00430eb6: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00430eb9: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  00430ebc: 84 d2                                           test   dl,dl
  00430ebe: 74 04                                           je     0x430ec4
  00430ec0: 89 06                                           mov    DWORD PTR [esi],eax
  00430ec2: eb 16                                           jmp    0x430eda
  00430ec4: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00430ec6: 80 79 21 00                                     cmp    BYTE PTR [ecx+0x21],0x0
  00430eca: 8b d7                                           mov    edx,edi
  00430ecc: 75 0a                                           jne    0x430ed8
  00430ece: 8b d1                                           mov    edx,ecx
  00430ed0: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00430ed2: 80 79 21 00                                     cmp    BYTE PTR [ecx+0x21],0x0
  00430ed6: 74 f6                                           je     0x430ece
  00430ed8: 89 16                                           mov    DWORD PTR [esi],edx
  00430eda: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00430edd: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  00430ee0: 39 5e 08                                        cmp    DWORD PTR [esi+0x8],ebx
  00430ee3: 0f 85 89 00 00 00                               jne    0x430f72
  00430ee9: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  00430eeb: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  00430eee: 84 d2                                           test   dl,dl
  00430ef0: 74 05                                           je     0x430ef7
  00430ef2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00430ef5: eb 7b                                           jmp    0x430f72
  00430ef7: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00430efa: 8a 59 21                                        mov    bl,BYTE PTR [ecx+0x21]
  00430efd: 84 db                                           test   bl,bl
  00430eff: 8b d7                                           mov    edx,edi
  00430f01: 75 0c                                           jne    0x430f0f
  00430f03: 8b d1                                           mov    edx,ecx
  00430f05: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  00430f08: 8a 59 21                                        mov    bl,BYTE PTR [ecx+0x21]
  00430f0b: 84 db                                           test   bl,bl
  00430f0d: 74 f4                                           je     0x430f03
  00430f0f: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00430f12: eb 5e                                           jmp    0x430f72
  00430f14: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00430f17: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00430f19: 89 11                                           mov    DWORD PTR [ecx],edx
  00430f1b: 3b 4b 08                                        cmp    ecx,DWORD PTR [ebx+0x8]
  00430f1e: 75 04                                           jne    0x430f24
  00430f20: 8b c1                                           mov    eax,ecx
  00430f22: eb 1b                                           jmp    0x430f3f
  00430f24: 8a 57 21                                        mov    dl,BYTE PTR [edi+0x21]
  00430f27: 84 d2                                           test   dl,dl
  00430f29: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00430f2c: 75 03                                           jne    0x430f31
  00430f2e: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00430f31: 89 38                                           mov    DWORD PTR [eax],edi
  00430f33: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00430f36: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00430f39: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00430f3c: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00430f3f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00430f42: 39 5a 04                                        cmp    DWORD PTR [edx+0x4],ebx
  00430f45: 75 05                                           jne    0x430f4c
  00430f47: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00430f4a: eb 0e                                           jmp    0x430f5a
  00430f4c: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00430f4f: 39 1a                                           cmp    DWORD PTR [edx],ebx
  00430f51: 75 04                                           jne    0x430f57
  00430f53: 89 0a                                           mov    DWORD PTR [edx],ecx
  00430f55: eb 03                                           jmp    0x430f5a
  00430f57: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00430f5a: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00430f5d: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00430f60: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  00430f63: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00430f66: 8a 5e 20                                        mov    bl,BYTE PTR [esi+0x20]
  00430f69: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  00430f6c: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  00430f6f: 88 56 20                                        mov    BYTE PTR [esi+0x20],dl
  00430f72: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00430f75: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  00430f78: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00430f7b: b3 01                                           mov    bl,0x1
  00430f7d: 3a d3                                           cmp    dl,bl
  00430f7f: 0f 85 58 02 00 00                               jne    0x4311dd
  00430f85: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00430f88: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  00430f8b: 0f 84 49 02 00 00                               je     0x4311da
  00430f91: 38 5f 20                                        cmp    BYTE PTR [edi+0x20],bl
  00430f94: 0f 85 40 02 00 00                               jne    0x4311da
  00430f9a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00430f9c: 3b f9                                           cmp    edi,ecx
  00430f9e: 75 71                                           jne    0x431011
  00430fa0: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00430fa3: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  00430fa6: 84 d2                                           test   dl,dl
  00430fa8: 75 43                                           jne    0x430fed
  00430faa: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  00430fad: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00430fb0: c6 40 20 00                                     mov    BYTE PTR [eax+0x20],0x0
  00430fb4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00430fb6: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00430fb9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00430fbb: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  00430fbf: 75 03                                           jne    0x430fc4
  00430fc1: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00430fc4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00430fc7: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00430fca: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00430fcd: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00430fd0: 75 05                                           jne    0x430fd7
  00430fd2: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00430fd5: eb 0e                                           jmp    0x430fe5
  00430fd7: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00430fda: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00430fdc: 75 04                                           jne    0x430fe2
  00430fde: 89 0a                                           mov    DWORD PTR [edx],ecx
  00430fe0: eb 03                                           jmp    0x430fe5
  00430fe2: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00430fe5: 89 01                                           mov    DWORD PTR [ecx],eax
  00430fe7: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00430fea: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00430fed: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  00430ff0: 84 d2                                           test   dl,dl
  00430ff2: 0f 85 86 00 00 00                               jne    0x43107e
  00430ff8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00430ffa: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  00430ffd: 0f 85 93 00 00 00                               jne    0x431096
  00431003: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00431006: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  00431009: 0f 85 87 00 00 00                               jne    0x431096
  0043100f: eb 69                                           jmp    0x43107a
  00431011: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  00431014: 84 d2                                           test   dl,dl
  00431016: 75 44                                           jne    0x43105c
  00431018: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  0043101b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043101d: c6 40 20 00                                     mov    BYTE PTR [eax+0x20],0x0
  00431021: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00431024: 89 10                                           mov    DWORD PTR [eax],edx
  00431026: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00431029: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  0043102d: 75 03                                           jne    0x431032
  0043102f: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00431032: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00431035: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00431038: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0043103b: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0043103e: 75 05                                           jne    0x431045
  00431040: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00431043: eb 0f                                           jmp    0x431054
  00431045: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00431048: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0043104b: 75 05                                           jne    0x431052
  0043104d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00431050: eb 02                                           jmp    0x431054
  00431052: 89 0a                                           mov    DWORD PTR [edx],ecx
  00431054: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00431057: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0043105a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043105c: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  0043105f: 84 d2                                           test   dl,dl
  00431061: 75 1b                                           jne    0x43107e
  00431063: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00431066: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  00431069: 0f 85 d0 00 00 00                               jne    0x43113f
  0043106f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00431071: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  00431074: 0f 85 c5 00 00 00                               jne    0x43113f
  0043107a: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  0043107e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00431081: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00431084: 8b f8                                           mov    edi,eax
  00431086: 3b fa                                           cmp    edi,edx
  00431088: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043108b: 0f 85 00 ff ff ff                               jne    0x430f91
  00431091: e9 44 01 00 00                                  jmp    0x4311da
  00431096: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00431099: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  0043109c: 75 4a                                           jne    0x4310e8
  0043109e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004310a0: 88 5a 20                                        mov    BYTE PTR [edx+0x20],bl
  004310a3: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004310a5: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  004310a9: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  004310ac: 89 31                                           mov    DWORD PTR [ecx],esi
  004310ae: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  004310b1: 80 7e 21 00                                     cmp    BYTE PTR [esi+0x21],0x0
  004310b5: 75 03                                           jne    0x4310ba
  004310b7: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004310ba: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004310bd: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  004310c0: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004310c3: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004310c6: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  004310c9: 75 05                                           jne    0x4310d0
  004310cb: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004310ce: eb 0f                                           jmp    0x4310df
  004310d0: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004310d3: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  004310d6: 75 05                                           jne    0x4310dd
  004310d8: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004310db: eb 02                                           jmp    0x4310df
  004310dd: 89 16                                           mov    DWORD PTR [esi],edx
  004310df: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004310e2: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004310e5: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004310e8: 8a 50 20                                        mov    dl,BYTE PTR [eax+0x20]
  004310eb: 88 51 20                                        mov    BYTE PTR [ecx+0x20],dl
  004310ee: 88 58 20                                        mov    BYTE PTR [eax+0x20],bl
  004310f1: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004310f4: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  004310f7: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004310fa: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004310fc: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004310ff: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00431101: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  00431105: 75 03                                           jne    0x43110a
  00431107: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0043110a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043110d: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00431110: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00431113: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00431116: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00431119: 75 0a                                           jne    0x431125
  0043111b: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0043111e: 89 01                                           mov    DWORD PTR [ecx],eax
  00431120: e9 b2 00 00 00                                  jmp    0x4311d7
  00431125: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00431128: 3b 02                                           cmp    eax,DWORD PTR [edx]
  0043112a: 75 09                                           jne    0x431135
  0043112c: 89 0a                                           mov    DWORD PTR [edx],ecx
  0043112e: 89 01                                           mov    DWORD PTR [ecx],eax
  00431130: e9 a2 00 00 00                                  jmp    0x4311d7
  00431135: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00431138: 89 01                                           mov    DWORD PTR [ecx],eax
  0043113a: e9 98 00 00 00                                  jmp    0x4311d7
  0043113f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00431141: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  00431144: 75 48                                           jne    0x43118e
  00431146: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00431149: 88 5a 20                                        mov    BYTE PTR [edx+0x20],bl
  0043114c: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0043114f: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  00431153: 8b 32                                           mov    esi,DWORD PTR [edx]
  00431155: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00431158: 8b 32                                           mov    esi,DWORD PTR [edx]
  0043115a: 80 7e 21 00                                     cmp    BYTE PTR [esi+0x21],0x0
  0043115e: 75 03                                           jne    0x431163
  00431160: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00431163: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00431166: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00431169: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0043116c: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0043116f: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00431172: 75 05                                           jne    0x431179
  00431174: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00431177: eb 0e                                           jmp    0x431187
  00431179: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0043117c: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0043117e: 75 04                                           jne    0x431184
  00431180: 89 16                                           mov    DWORD PTR [esi],edx
  00431182: eb 03                                           jmp    0x431187
  00431184: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00431187: 89 0a                                           mov    DWORD PTR [edx],ecx
  00431189: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0043118c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043118e: 8a 50 20                                        mov    dl,BYTE PTR [eax+0x20]
  00431191: 88 51 20                                        mov    BYTE PTR [ecx+0x20],dl
  00431194: 88 58 20                                        mov    BYTE PTR [eax+0x20],bl
  00431197: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00431199: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  0043119c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043119e: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004311a1: 89 10                                           mov    DWORD PTR [eax],edx
  004311a3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004311a6: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004311aa: 75 03                                           jne    0x4311af
  004311ac: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004311af: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004311b2: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004311b5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004311b8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004311bb: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004311be: 75 05                                           jne    0x4311c5
  004311c0: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004311c3: eb 0f                                           jmp    0x4311d4
  004311c5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004311c8: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  004311cb: 75 05                                           jne    0x4311d2
  004311cd: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004311d0: eb 02                                           jmp    0x4311d4
  004311d2: 89 0a                                           mov    DWORD PTR [edx],ecx
  004311d4: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004311d7: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004311da: 88 5f 20                                        mov    BYTE PTR [edi+0x20],bl
  004311dd: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004311e0: 50                                              push   eax
  004311e1: e8 7a 0e 01 00                                  call   0x442060
  004311e6: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004311e9: 83 c4 04                                        add    esp,0x4
  004311ec: 85 c0                                           test   eax,eax
  004311ee: 5b                                              pop    ebx
  004311ef: 76 04                                           jbe    0x4311f5
  004311f1: 48                                              dec    eax
  004311f2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004311f5: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004311f8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004311fb: 89 08                                           mov    DWORD PTR [eax],ecx
  004311fd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00431200: 5f                                              pop    edi
  00431201: 5e                                              pop    esi
  00431202: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00431209: 8b e5                                           mov    esp,ebp
  0043120b: 5d                                              pop    ebp
  0043120c: c2 08 00                                        ret    0x8
  004312e0: 55                                              push   ebp
  004312e1: 8b ec                                           mov    ebp,esp
  004312e3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004312e6: 56                                              push   esi
  004312e7: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004312ea: 3b f0                                           cmp    esi,eax
  004312ec: 57                                              push   edi
  004312ed: 8b f9                                           mov    edi,ecx
  004312ef: 74 1f                                           je     0x431310
  004312f1: 56                                              push   esi
  004312f2: 51                                              push   ecx
  004312f3: 54                                              push   esp
  004312f4: e8 d7 ff ff ff                                  call   0x4312d0
  004312f9: 51                                              push   ecx
  004312fa: 8d 45 10                                        lea    eax,[ebp+0x10]
  004312fd: 8b cc                                           mov    ecx,esp
  004312ff: 50                                              push   eax
  00431300: e8 4b 02 00 00                                  call   0x431550
  00431305: e8 d6 0d 00 00                                  call   0x4320e0
  0043130a: 83 c4 0c                                        add    esp,0xc
  0043130d: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  00431310: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00431313: 5f                                              pop    edi
  00431314: 89 30                                           mov    DWORD PTR [eax],esi
  00431316: 5e                                              pop    esi
  00431317: 5d                                              pop    ebp
  00431318: c2 0c 00                                        ret    0xc
  00431470: 55                                              push   ebp
  00431471: 8b ec                                           mov    ebp,esp
  00431473: 53                                              push   ebx
  00431474: 56                                              push   esi
  00431475: 57                                              push   edi
  00431476: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00431479: 8a 47 21                                        mov    al,BYTE PTR [edi+0x21]
  0043147c: 84 c0                                           test   al,al
  0043147e: 8b d9                                           mov    ebx,ecx
  00431480: 8b f7                                           mov    esi,edi
  00431482: 75 1f                                           jne    0x4314a3
  00431484: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00431487: 50                                              push   eax
  00431488: 8b cb                                           mov    ecx,ebx
  0043148a: e8 e1 ff ff ff                                  call   0x431470
  0043148f: 8b 36                                           mov    esi,DWORD PTR [esi]
  00431491: 57                                              push   edi
  00431492: e8 c9 0b 01 00                                  call   0x442060
  00431497: 8a 46 21                                        mov    al,BYTE PTR [esi+0x21]
  0043149a: 83 c4 04                                        add    esp,0x4
  0043149d: 84 c0                                           test   al,al
  0043149f: 8b fe                                           mov    edi,esi
  004314a1: 74 e1                                           je     0x431484
  004314a3: 5f                                              pop    edi
  004314a4: 5e                                              pop    esi
  004314a5: 5b                                              pop    ebx
  004314a6: 5d                                              pop    ebp
  004314a7: c2 04 00                                        ret    0x4
  004318d0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004318d2: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  004318d5: 84 d2                                           test   dl,dl
  004318d7: 53                                              push   ebx
  004318d8: 75 41                                           jne    0x43191b
  004318da: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  004318dd: 8a 5a 21                                        mov    bl,BYTE PTR [edx+0x21]
  004318e0: 84 db                                           test   bl,bl
  004318e2: 75 18                                           jne    0x4318fc
  004318e4: 8b 02                                           mov    eax,DWORD PTR [edx]
  004318e6: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  004318e9: 84 db                                           test   bl,bl
  004318eb: 75 0b                                           jne    0x4318f8
  004318ed: 8b d0                                           mov    edx,eax
  004318ef: 8b 02                                           mov    eax,DWORD PTR [edx]
  004318f1: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  004318f4: 84 db                                           test   bl,bl
  004318f6: 74 f5                                           je     0x4318ed
  004318f8: 89 11                                           mov    DWORD PTR [ecx],edx
  004318fa: 5b                                              pop    ebx
  004318fb: c3                                              ret
  004318fc: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004318ff: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00431902: 84 d2                                           test   dl,dl
  00431904: 75 13                                           jne    0x431919
  00431906: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00431908: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  0043190b: 75 0c                                           jne    0x431919
  0043190d: 89 01                                           mov    DWORD PTR [ecx],eax
  0043190f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00431912: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00431915: 84 d2                                           test   dl,dl
  00431917: 74 ed                                           je     0x431906
  00431919: 89 01                                           mov    DWORD PTR [ecx],eax
  0043191b: 5b                                              pop    ebx
  0043191c: c3                                              ret
  00431ec0: 8b 41 24                                        mov    eax,DWORD PTR [ecx+0x24]
  00431ec3: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00431ec6: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  00431ecd: c6 41 34 08                                     mov    BYTE PTR [ecx+0x34],0x8
  00431ed1: c3                                              ret
  00431ee0: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00431ee3: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  00431ee6: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  00431ee9: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  00431eec: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00431eef: 3b c2                                           cmp    eax,edx
  00431ef1: 74 57                                           je     0x431f4a
  00431ef3: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00431ef6: 74 4e                                           je     0x431f46
  00431ef8: 8b 10                                           mov    edx,DWORD PTR [eax]
  00431efa: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00431efd: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00431f00: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00431f03: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00431f06: 8b 00                                           mov    eax,DWORD PTR [eax]
  00431f08: 89 02                                           mov    DWORD PTR [edx],eax
  00431f0a: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  00431f0d: 83 f8 01                                        cmp    eax,0x1
  00431f10: 75 16                                           jne    0x431f28
  00431f12: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00431f15: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00431f18: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00431f1b: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00431f1e: 51                                              push   ecx
  00431f1f: e8 3c 01 01 00                                  call   0x442060
  00431f24: 83 c4 04                                        add    esp,0x4
  00431f27: c3                                              ret
  00431f28: 83 f8 02                                        cmp    eax,0x2
  00431f2b: 0f 85 8c 00 00 00                               jne    0x431fbd
  00431f31: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00431f34: 8b 02                                           mov    eax,DWORD PTR [edx]
  00431f36: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00431f39: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00431f3c: 51                                              push   ecx
  00431f3d: e8 1e 01 01 00                                  call   0x442060
  00431f42: 83 c4 04                                        add    esp,0x4
  00431f45: c3                                              ret
  00431f46: 3b c2                                           cmp    eax,edx
  00431f48: 75 34                                           jne    0x431f7e
  00431f4a: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00431f4d: 74 34                                           je     0x431f83
  00431f4f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00431f52: 33 d2                                           xor    edx,edx
  00431f54: 89 10                                           mov    DWORD PTR [eax],edx
  00431f56: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00431f59: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00431f5c: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  00431f5f: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00431f62: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00431f65: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00431f68: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  00431f6c: 75 4f                                           jne    0x431fbd
  00431f6e: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00431f71: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00431f74: 51                                              push   ecx
  00431f75: e8 e6 00 01 00                                  call   0x442060
  00431f7a: 83 c4 04                                        add    esp,0x4
  00431f7d: c3                                              ret
  00431f7e: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00431f81: 75 2c                                           jne    0x431faf
  00431f83: 3b c2                                           cmp    eax,edx
  00431f85: 74 28                                           je     0x431faf
  00431f87: 8b 00                                           mov    eax,DWORD PTR [eax]
  00431f89: 33 d2                                           xor    edx,edx
  00431f8b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00431f8e: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00431f91: 8b 00                                           mov    eax,DWORD PTR [eax]
  00431f93: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00431f96: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  00431f99: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  00431f9d: 75 1e                                           jne    0x431fbd
  00431f9f: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00431fa2: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00431fa5: 51                                              push   ecx
  00431fa6: e8 b5 00 01 00                                  call   0x442060
  00431fab: 83 c4 04                                        add    esp,0x4
  00431fae: c3                                              ret
  00431faf: 33 d2                                           xor    edx,edx
  00431fb1: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  00431fb4: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  00431fb7: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  00431fba: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00431fbd: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00431fc0: 51                                              push   ecx
  00431fc1: e8 9a 00 01 00                                  call   0x442060
  00431fc6: 83 c4 04                                        add    esp,0x4
  00431fc9: c3                                              ret
  004320a0: 8b 51 40                                        mov    edx,DWORD PTR [ecx+0x40]
  004320a3: 85 d2                                           test   edx,edx
  004320a5: b8 01 00 00 00                                  mov    eax,0x1
  004320aa: 74 0a                                           je     0x4320b6
  004320ac: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004320af: 8b 12                                           mov    edx,DWORD PTR [edx]
  004320b1: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  004320b4: eb 03                                           jmp    0x4320b9
  004320b6: 89 41 40                                        mov    DWORD PTR [ecx+0x40],eax
  004320b9: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004320bc: 85 d2                                           test   edx,edx
  004320be: 75 14                                           jne    0x4320d4
  004320c0: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  004320c3: 85 c0                                           test   eax,eax
  004320c5: 74 04                                           je     0x4320cb
  004320c7: c6 41 34 07                                     mov    BYTE PTR [ecx+0x34],0x7
  004320cb: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  004320d2: 33 c0                                           xor    eax,eax
  004320d4: c3                                              ret
  00432260: 55                                              push   ebp
  00432261: 8b ec                                           mov    ebp,esp
  00432263: 56                                              push   esi
  00432264: 8b f1                                           mov    esi,ecx
  00432266: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00432269: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0043226c: 57                                              push   edi
  0043226d: 33 ff                                           xor    edi,edi
  0043226f: 42                                              inc    edx
  00432270: 3b c7                                           cmp    eax,edi
  00432272: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00432275: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00432278: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0043227c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0043227f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00432282: 6a 0c                                           push   0xc
  00432284: 75 35                                           jne    0x4322bb
  00432286: e8 65 fd 00 00                                  call   0x441ff0
  0043228b: 83 c4 04                                        add    esp,0x4
  0043228e: 3b c7                                           cmp    eax,edi
  00432290: 74 07                                           je     0x432299
  00432292: 89 38                                           mov    DWORD PTR [eax],edi
  00432294: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00432297: eb 02                                           jmp    0x43229b
  00432299: 33 c0                                           xor    eax,eax
  0043229b: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0043229e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004322a1: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004322a4: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004322a7: 89 38                                           mov    DWORD PTR [eax],edi
  004322a9: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004322ac: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004322af: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004322b2: 5f                                              pop    edi
  004322b3: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004322b6: 5e                                              pop    esi
  004322b7: 5d                                              pop    ebp
  004322b8: c2 04 00                                        ret    0x4
  004322bb: e8 30 fd 00 00                                  call   0x441ff0
  004322c0: 83 c4 04                                        add    esp,0x4
  004322c3: 3b c7                                           cmp    eax,edi
  004322c5: 74 07                                           je     0x4322ce
  004322c7: 89 38                                           mov    DWORD PTR [eax],edi
  004322c9: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004322cc: eb 02                                           jmp    0x4322d0
  004322ce: 33 c0                                           xor    eax,eax
  004322d0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004322d3: 89 01                                           mov    DWORD PTR [ecx],eax
  004322d5: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004322d8: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004322db: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004322de: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004322e1: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004322e4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004322e7: 89 38                                           mov    DWORD PTR [eax],edi
  004322e9: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004322ec: 5f                                              pop    edi
  004322ed: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004322f0: 5e                                              pop    esi
  004322f1: 5d                                              pop    ebp
  004322f2: c2 04 00                                        ret    0x4
  004336e0: a1 ac 21 51 00                                  mov    eax,ds:0x5121ac
  004336e5: 68 88 13 00 00                                  push   0x1388
  004336ea: 50                                              push   eax
  004336eb: c7 05 78 21 51 00 00 00 00 00                   mov    DWORD PTR ds:0x512178,0x0
  004336f5: ff 15 1c e1 4d 00                               call   DWORD PTR ds:0x4de11c
  004336fb: 3d 02 01 00 00                                  cmp    eax,0x102
  00433700: 75 0f                                           jne    0x433711
  00433702: 8b 0d ac 21 51 00                               mov    ecx,DWORD PTR ds:0x5121ac
  00433708: 6a ff                                           push   0xffffffff
  0043370a: 51                                              push   ecx
  0043370b: ff 15 18 e1 4d 00                               call   DWORD PTR ds:0x4de118
  00433711: c3                                              ret
  00434230: 55                                              push   ebp
  00434231: 8b ec                                           mov    ebp,esp
  00434233: 51                                              push   ecx
  00434234: 56                                              push   esi
  00434235: 8b f1                                           mov    esi,ecx
  00434237: 8d 46 08                                        lea    eax,[esi+0x8]
  0043423a: 50                                              push   eax
  0043423b: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00434241: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00434248: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0043424e: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  00434251: 33 c0                                           xor    eax,eax
  00434253: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00434256: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00434259: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  0043425c: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  0043425f: 88 4e 24                                        mov    BYTE PTR [esi+0x24],cl
  00434262: c7 06 b8 ed 4d 00                               mov    DWORD PTR [esi],0x4dedb8
  00434268: c7 46 20 e8 03 00 00                            mov    DWORD PTR [esi+0x20],0x3e8
  0043426f: 8b c6                                           mov    eax,esi
  00434271: 5e                                              pop    esi
  00434272: 8b e5                                           mov    esp,ebp
  00434274: 5d                                              pop    ebp
  00434275: c3                                              ret
  004343c0: 55                                              push   ebp
  004343c1: 8b ec                                           mov    ebp,esp
  004343c3: 6a ff                                           push   0xffffffff
  004343c5: 68 42 53 4d 00                                  push   0x4d5342
  004343ca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004343d0: 50                                              push   eax
  004343d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004343d8: 81 ec 10 08 00 00                               sub    esp,0x810
  004343de: 56                                              push   esi
  004343df: 8b f1                                           mov    esi,ecx
  004343e1: 8b 06                                           mov    eax,DWORD PTR [esi]
  004343e3: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004343ea: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004343ed: 8b 16                                           mov    edx,DWORD PTR [esi]
  004343ef: 8b ce                                           mov    ecx,esi
  004343f1: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004343f4: 8a 45 18                                        mov    al,BYTE PTR [ebp+0x18]
  004343f7: 84 c0                                           test   al,al
  004343f9: 0f 84 3d 01 00 00                               je     0x43453c
  004343ff: 8d 45 18                                        lea    eax,[ebp+0x18]
  00434402: 53                                              push   ebx
  00434403: 50                                              push   eax
  00434404: c6 85 e4 f7 ff ff 00                            mov    BYTE PTR [ebp-0x81c],0x0
  0043440b: ff 15 78 e3 4d 00                               call   DWORD PTR ds:0x4de378
  00434411: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  00434414: 51                                              push   ecx
  00434415: ff 15 90 e3 4d 00                               call   DWORD PTR ds:0x4de390
  0043441b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043441d: 83 c4 08                                        add    esp,0x8
  00434420: 8d 55 08                                        lea    edx,[ebp+0x8]
  00434423: 52                                              push   edx
  00434424: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00434427: 51                                              push   ecx
  00434428: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0043442b: 52                                              push   edx
  0043442c: 8b 50 14                                        mov    edx,DWORD PTR [eax+0x14]
  0043442f: 51                                              push   ecx
  00434430: 8b 48 10                                        mov    ecx,DWORD PTR [eax+0x10]
  00434433: 52                                              push   edx
  00434434: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  00434437: 51                                              push   ecx
  00434438: 52                                              push   edx
  00434439: 8d 85 e4 f7 ff ff                               lea    eax,[ebp-0x81c]
  0043443f: 68 48 32 50 00                                  push   0x503248
  00434444: 50                                              push   eax
  00434445: e8 f6 f4 fc ff                                  call   0x403940
  0043444a: 83 c4 20                                        add    esp,0x20
  0043444d: 50                                              push   eax
  0043444e: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00434451: 51                                              push   ecx
  00434452: e8 e5 a0 09 00                                  call   0x4ce53c
  00434457: 83 c4 0c                                        add    esp,0xc
  0043445a: 8b f0                                           mov    esi,eax
  0043445c: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00434462: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00434465: 8b 02                                           mov    eax,DWORD PTR [edx]
  00434467: 8b d9                                           mov    ebx,ecx
  00434469: 3b c3                                           cmp    eax,ebx
  0043446b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0043446f: 73 02                                           jae    0x434473
  00434471: 8b d8                                           mov    ebx,eax
  00434473: 8d 55 08                                        lea    edx,[ebp+0x8]
  00434476: 3b d6                                           cmp    edx,esi
  00434478: 75 1d                                           jne    0x434497
  0043447a: 50                                              push   eax
  0043447b: 53                                              push   ebx
  0043447c: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0043447f: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00434485: 6a 00                                           push   0x0
  00434487: 6a 00                                           push   0x0
  00434489: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0043448c: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00434492: e9 81 00 00 00                                  jmp    0x434518
  00434497: 85 db                                           test   ebx,ebx
  00434499: 76 41                                           jbe    0x4344dc
  0043449b: 3b d9                                           cmp    ebx,ecx
  0043449d: 75 3d                                           jne    0x4344dc
  0043449f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004344a2: 85 c0                                           test   eax,eax
  004344a4: 75 05                                           jne    0x4344ab
  004344a6: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004344ab: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004344af: 73 2b                                           jae    0x4344dc
  004344b1: 6a 01                                           push   0x1
  004344b3: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004344b6: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004344bc: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004344bf: 85 c0                                           test   eax,eax
  004344c1: 75 05                                           jne    0x4344c8
  004344c3: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004344c8: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004344cb: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004344ce: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  004344d1: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004344d4: 89 55 14                                        mov    DWORD PTR [ebp+0x14],edx
  004344d7: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004344da: eb 3c                                           jmp    0x434518
  004344dc: 6a 01                                           push   0x1
  004344de: 53                                              push   ebx
  004344df: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004344e2: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004344e8: 84 c0                                           test   al,al
  004344ea: 74 2c                                           je     0x434518
  004344ec: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004344ef: 85 f6                                           test   esi,esi
  004344f1: 75 06                                           jne    0x4344f9
  004344f3: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004344f9: 57                                              push   edi
  004344fa: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004344fd: 8b cb                                           mov    ecx,ebx
  004344ff: 8b c1                                           mov    eax,ecx
  00434501: c1 e9 02                                        shr    ecx,0x2
  00434504: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00434506: 8b c8                                           mov    ecx,eax
  00434508: 83 e1 03                                        and    ecx,0x3
  0043450b: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0043450d: 53                                              push   ebx
  0043450e: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00434511: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00434517: 5f                                              pop    edi
  00434518: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0043451b: 85 c0                                           test   eax,eax
  0043451d: 5b                                              pop    ebx
  0043451e: 74 1c                                           je     0x43453c
  00434520: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00434523: 8a 01                                           mov    al,BYTE PTR [ecx]
  00434525: 84 c0                                           test   al,al
  00434527: 74 0a                                           je     0x434533
  00434529: 3c ff                                           cmp    al,0xff
  0043452b: 74 06                                           je     0x434533
  0043452d: fe c8                                           dec    al
  0043452f: 88 01                                           mov    BYTE PTR [ecx],al
  00434531: eb 09                                           jmp    0x43453c
  00434533: 51                                              push   ecx
  00434534: e8 27 db 00 00                                  call   0x442060
  00434539: 83 c4 04                                        add    esp,0x4
  0043453c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0043453f: 85 c9                                           test   ecx,ecx
  00434541: 5e                                              pop    esi
  00434542: 74 2a                                           je     0x43456e
  00434544: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  00434547: 84 c0                                           test   al,al
  00434549: 74 19                                           je     0x434564
  0043454b: 3c ff                                           cmp    al,0xff
  0043454d: 74 15                                           je     0x434564
  0043454f: fe c8                                           dec    al
  00434551: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00434554: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00434557: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043455e: 8b e5                                           mov    esp,ebp
  00434560: 5d                                              pop    ebp
  00434561: c2 14 00                                        ret    0x14
  00434564: 49                                              dec    ecx
  00434565: 51                                              push   ecx
  00434566: e8 f5 da 00 00                                  call   0x442060
  0043456b: 83 c4 04                                        add    esp,0x4
  0043456e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00434571: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00434578: 8b e5                                           mov    esp,ebp
  0043457a: 5d                                              pop    ebp
  0043457b: c2 14 00                                        ret    0x14
  00439240: 56                                              push   esi
  00439241: 8b f1                                           mov    esi,ecx
  00439243: c7 06 00 ef 4d 00                               mov    DWORD PTR [esi],0x4def00
  00439249: e8 a2 09 05 00                                  call   0x489bf0
  0043924e: 05 e0 93 04 00                                  add    eax,0x493e0
  00439253: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00439256: 8b c6                                           mov    eax,esi
  00439258: 5e                                              pop    esi
  00439259: c3                                              ret
  004392f0: 55                                              push   ebp
  004392f1: 8b ec                                           mov    ebp,esp
  004392f3: 83 ec 08                                        sub    esp,0x8
  004392f6: 53                                              push   ebx
  004392f7: 56                                              push   esi
  004392f8: 57                                              push   edi
  004392f9: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004392fc: 8d 1c 3f                                        lea    ebx,[edi+edi*1]
  004392ff: 53                                              push   ebx
  00439300: 89 5d f8                                        mov    DWORD PTR [ebp-0x8],ebx
  00439303: e8 f8 51 09 00                                  call   0x4ce500
  00439308: 57                                              push   edi
  00439309: 50                                              push   eax
  0043930a: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0043930d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00439310: 50                                              push   eax
  00439311: e8 1a 50 05 00                                  call   0x48e330
  00439316: 33 f6                                           xor    esi,esi
  00439318: 83 c4 10                                        add    esp,0x10
  0043931b: 85 db                                           test   ebx,ebx
  0043931d: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00439320: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00439323: 0f 86 15 01 00 00                               jbe    0x43943e
  00439329: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0043932c: 8a 14 0e                                        mov    dl,BYTE PTR [esi+ecx*1]
  0043932f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00439334: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00439336: 88 55 0f                                        mov    BYTE PTR [ebp+0xf],dl
  00439339: 2b 4b 08                                        sub    ecx,DWORD PTR [ebx+0x8]
  0043933c: 83 f9 01                                        cmp    ecx,0x1
  0043933f: 77 08                                           ja     0x439349
  00439341: 8b cb                                           mov    ecx,ebx
  00439343: ff 15 30 e5 4d 00                               call   DWORD PTR ds:0x4de530
  00439349: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0043934c: 6a 00                                           push   0x0
  0043934e: 47                                              inc    edi
  0043934f: 57                                              push   edi
  00439350: 8b cb                                           mov    ecx,ebx
  00439352: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00439358: 84 c0                                           test   al,al
  0043935a: 74 18                                           je     0x439374
  0043935c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0043935f: 0f be 55 0f                                     movsx  edx,BYTE PTR [ebp+0xf]
  00439363: 03 43 04                                        add    eax,DWORD PTR [ebx+0x4]
  00439366: 88 10                                           mov    BYTE PTR [eax],dl
  00439368: 8a f2                                           mov    dh,dl
  0043936a: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0043936d: 89 7b 08                                        mov    DWORD PTR [ebx+0x8],edi
  00439370: c6 04 17 00                                     mov    BYTE PTR [edi+edx*1],0x0
  00439374: 8b c6                                           mov    eax,esi
  00439376: 99                                              cdq
  00439377: b9 3c 00 00 00                                  mov    ecx,0x3c
  0043937c: f7 f9                                           idiv   ecx
  0043937e: 85 d2                                           test   edx,edx
  00439380: 0f 85 a9 00 00 00                               jne    0x43942f
  00439386: 85 f6                                           test   esi,esi
  00439388: 0f 84 a1 00 00 00                               je     0x43942f
  0043938e: 83 c9 ff                                        or     ecx,0xffffffff
  00439391: 33 c0                                           xor    eax,eax
  00439393: bf 48 04 50 00                                  mov    edi,0x500448
  00439398: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0043939a: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0043939d: f7 d1                                           not    ecx
  0043939f: 49                                              dec    ecx
  004393a0: 85 c0                                           test   eax,eax
  004393a2: 8b f9                                           mov    edi,ecx
  004393a4: 74 2a                                           je     0x4393d0
  004393a6: 3d 48 04 50 00                                  cmp    eax,0x500448
  004393ab: 77 23                                           ja     0x4393d0
  004393ad: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004393b0: 8b d0                                           mov    edx,eax
  004393b2: 03 d1                                           add    edx,ecx
  004393b4: 81 fa 48 04 50 00                               cmp    edx,0x500448
  004393ba: 72 14                                           jb     0x4393d0
  004393bc: 57                                              push   edi
  004393bd: b9 48 04 50 00                                  mov    ecx,0x500448
  004393c2: 2b c8                                           sub    ecx,eax
  004393c4: 51                                              push   ecx
  004393c5: 53                                              push   ebx
  004393c6: 8b cb                                           mov    ecx,ebx
  004393c8: ff 15 04 e5 4d 00                               call   DWORD PTR ds:0x4de504
  004393ce: eb 5f                                           jmp    0x43942f
  004393d0: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004393d6: 8b 02                                           mov    eax,DWORD PTR [edx]
  004393d8: 2b 43 08                                        sub    eax,DWORD PTR [ebx+0x8]
  004393db: 3b c7                                           cmp    eax,edi
  004393dd: 77 08                                           ja     0x4393e7
  004393df: 8b cb                                           mov    ecx,ebx
  004393e1: ff 15 30 e5 4d 00                               call   DWORD PTR ds:0x4de530
  004393e7: 85 ff                                           test   edi,edi
  004393e9: 76 44                                           jbe    0x43942f
  004393eb: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004393ee: 03 c7                                           add    eax,edi
  004393f0: 6a 00                                           push   0x0
  004393f2: 50                                              push   eax
  004393f3: 8b cb                                           mov    ecx,ebx
  004393f5: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004393f8: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004393fe: 84 c0                                           test   al,al
  00439400: 74 2d                                           je     0x43942f
  00439402: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00439405: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00439408: 8b cf                                           mov    ecx,edi
  0043940a: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0043940d: 03 fa                                           add    edi,edx
  0043940f: 8b d1                                           mov    edx,ecx
  00439411: c1 e9 02                                        shr    ecx,0x2
  00439414: be 48 04 50 00                                  mov    esi,0x500448
  00439419: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043941b: 8b ca                                           mov    ecx,edx
  0043941d: 83 e1 03                                        and    ecx,0x3
  00439420: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00439422: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00439425: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00439428: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0043942b: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0043942f: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  00439432: 46                                              inc    esi
  00439433: 3b f0                                           cmp    esi,eax
  00439435: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00439438: 0f 82 eb fe ff ff                               jb     0x439329
  0043943e: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00439441: 3d e8 03 00 00                                  cmp    eax,0x3e8
  00439446: 0f 86 85 00 00 00                               jbe    0x4394d1
  0043944c: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00439452: 8b 32                                           mov    esi,DWORD PTR [edx]
  00439454: 8d 88 18 fc ff ff                               lea    ecx,[eax-0x3e8]
  0043945a: 3b ce                                           cmp    ecx,esi
  0043945c: 73 02                                           jae    0x439460
  0043945e: 8b f1                                           mov    esi,ecx
  00439460: 85 f6                                           test   esi,esi
  00439462: 76 6d                                           jbe    0x4394d1
  00439464: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00439467: 85 ff                                           test   edi,edi
  00439469: 74 17                                           je     0x439482
  0043946b: 8a 4f ff                                        mov    cl,BYTE PTR [edi-0x1]
  0043946e: 84 c9                                           test   cl,cl
  00439470: 74 10                                           je     0x439482
  00439472: 80 f9 ff                                        cmp    cl,0xff
  00439475: 74 0b                                           je     0x439482
  00439477: 6a 00                                           push   0x0
  00439479: 50                                              push   eax
  0043947a: 8b cb                                           mov    ecx,ebx
  0043947c: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00439482: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00439485: 85 c0                                           test   eax,eax
  00439487: 74 04                                           je     0x43948d
  00439489: c6 40 ff ff                                     mov    BYTE PTR [eax-0x1],0xff
  0043948d: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00439490: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00439493: 2b ce                                           sub    ecx,esi
  00439495: 81 e9 e8 03 00 00                               sub    ecx,0x3e8
  0043949b: 51                                              push   ecx
  0043949c: 8d 94 30 e8 03 00 00                            lea    edx,[eax+esi*1+0x3e8]
  004394a3: 52                                              push   edx
  004394a4: 05 e8 03 00 00                                  add    eax,0x3e8
  004394a9: 50                                              push   eax
  004394aa: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004394b0: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004394b3: 83 c4 0c                                        add    esp,0xc
  004394b6: 6a 00                                           push   0x0
  004394b8: 2b fe                                           sub    edi,esi
  004394ba: 57                                              push   edi
  004394bb: 8b cb                                           mov    ecx,ebx
  004394bd: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004394c3: 84 c0                                           test   al,al
  004394c5: 74 0a                                           je     0x4394d1
  004394c7: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004394ca: 89 7b 08                                        mov    DWORD PTR [ebx+0x8],edi
  004394cd: c6 04 07 00                                     mov    BYTE PTR [edi+eax*1],0x0
  004394d1: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004394d4: 51                                              push   ecx
  004394d5: e8 86 8b 00 00                                  call   0x442060
  004394da: 83 c4 04                                        add    esp,0x4
  004394dd: 5f                                              pop    edi
  004394de: 5e                                              pop    esi
  004394df: 5b                                              pop    ebx
  004394e0: 8b e5                                           mov    esp,ebp
  004394e2: 5d                                              pop    ebp
  004394e3: c3                                              ret
  0043b870: 55                                              push   ebp
  0043b871: 8b ec                                           mov    ebp,esp
  0043b873: 6a ff                                           push   0xffffffff
  0043b875: 68 d9 58 4d 00                                  push   0x4d58d9
  0043b87a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043b880: 50                                              push   eax
  0043b881: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043b888: 83 ec 3c                                        sub    esp,0x3c
  0043b88b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0043b88e: 53                                              push   ebx
  0043b88f: 56                                              push   esi
  0043b890: 8b f1                                           mov    esi,ecx
  0043b892: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043b894: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  0043b897: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0043b89a: 85 c9                                           test   ecx,ecx
  0043b89c: 57                                              push   edi
  0043b89d: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0043b8a0: 75 04                                           jne    0x43b8a6
  0043b8a2: 33 db                                           xor    ebx,ebx
  0043b8a4: eb 08                                           jmp    0x43b8ae
  0043b8a6: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  0043b8a9: 2b d9                                           sub    ebx,ecx
  0043b8ab: c1 fb 02                                        sar    ebx,0x2
  0043b8ae: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0043b8b1: 85 ff                                           test   edi,edi
  0043b8b3: 0f 84 ea 02 00 00                               je     0x43bba3
  0043b8b9: 85 c9                                           test   ecx,ecx
  0043b8bb: 75 04                                           jne    0x43b8c1
  0043b8bd: 33 c0                                           xor    eax,eax
  0043b8bf: eb 08                                           jmp    0x43b8c9
  0043b8c1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043b8c4: 2b c1                                           sub    eax,ecx
  0043b8c6: c1 f8 02                                        sar    eax,0x2
  0043b8c9: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  0043b8ce: 2b d0                                           sub    edx,eax
  0043b8d0: 3b d7                                           cmp    edx,edi
  0043b8d2: 73 2f                                           jae    0x43b903
  0043b8d4: 68 80 05 50 00                                  push   0x500580
  0043b8d9: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0043b8dc: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  0043b8e2: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  0043b8e5: 50                                              push   eax
  0043b8e6: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  0043b8e9: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0043b8f0: e8 2b 9b fc ff                                  call   0x405420
  0043b8f5: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0043b8fa: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  0043b8fd: 51                                              push   ecx
  0043b8fe: e8 53 64 09 00                                  call   0x4d1d56
  0043b903: 85 c9                                           test   ecx,ecx
  0043b905: 75 04                                           jne    0x43b90b
  0043b907: 33 c0                                           xor    eax,eax
  0043b909: eb 08                                           jmp    0x43b913
  0043b90b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043b90e: 2b c1                                           sub    eax,ecx
  0043b910: c1 f8 02                                        sar    eax,0x2
  0043b913: 03 c7                                           add    eax,edi
  0043b915: 3b d8                                           cmp    ebx,eax
  0043b917: 0f 83 3e 01 00 00                               jae    0x43ba5b
  0043b91d: 8b c3                                           mov    eax,ebx
  0043b91f: d1 e8                                           shr    eax,1
  0043b921: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  0043b926: 2b d0                                           sub    edx,eax
  0043b928: 3b d3                                           cmp    edx,ebx
  0043b92a: 73 04                                           jae    0x43b930
  0043b92c: 33 db                                           xor    ebx,ebx
  0043b92e: eb 02                                           jmp    0x43b932
  0043b930: 03 d8                                           add    ebx,eax
  0043b932: 85 c9                                           test   ecx,ecx
  0043b934: 75 04                                           jne    0x43b93a
  0043b936: 33 c0                                           xor    eax,eax
  0043b938: eb 08                                           jmp    0x43b942
  0043b93a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043b93d: 2b c1                                           sub    eax,ecx
  0043b93f: c1 f8 02                                        sar    eax,0x2
  0043b942: 03 c7                                           add    eax,edi
  0043b944: 3b d8                                           cmp    ebx,eax
  0043b946: 73 13                                           jae    0x43b95b
  0043b948: 85 c9                                           test   ecx,ecx
  0043b94a: 75 04                                           jne    0x43b950
  0043b94c: 33 c0                                           xor    eax,eax
  0043b94e: eb 08                                           jmp    0x43b958
  0043b950: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043b953: 2b c1                                           sub    eax,ecx
  0043b955: c1 f8 02                                        sar    eax,0x2
  0043b958: 8d 1c 38                                        lea    ebx,[eax+edi*1]
  0043b95b: 8d 04 9d 00 00 00 00                            lea    eax,[ebx*4+0x0]
  0043b962: 50                                              push   eax
  0043b963: e8 88 66 00 00                                  call   0x441ff0
  0043b968: 83 c4 04                                        add    esp,0x4
  0043b96b: 50                                              push   eax
  0043b96c: 51                                              push   ecx
  0043b96d: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0043b970: 8d 55 08                                        lea    edx,[ebp+0x8]
  0043b973: 8b cc                                           mov    ecx,esp
  0043b975: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043b978: 52                                              push   edx
  0043b979: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0043b97c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0043b983: e8 48 fe ff ff                                  call   0x43b7d0
  0043b988: 51                                              push   ecx
  0043b989: 8b c4                                           mov    eax,esp
  0043b98b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043b98e: 50                                              push   eax
  0043b98f: 8b ce                                           mov    ecx,esi
  0043b991: e8 2a 02 00 00                                  call   0x43bbc0
  0043b996: 8b ce                                           mov    ecx,esi
  0043b998: e8 c3 02 00 00                                  call   0x43bc60
  0043b99d: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0043b9a0: 51                                              push   ecx
  0043b9a1: 57                                              push   edi
  0043b9a2: 50                                              push   eax
  0043b9a3: 8b ce                                           mov    ecx,esi
  0043b9a5: e8 46 02 00 00                                  call   0x43bbf0
  0043b9aa: 50                                              push   eax
  0043b9ab: 51                                              push   ecx
  0043b9ac: 8b d4                                           mov    edx,esp
  0043b9ae: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043b9b1: 52                                              push   edx
  0043b9b2: 8b ce                                           mov    ecx,esi
  0043b9b4: e8 b7 f9 ff ff                                  call   0x43b370
  0043b9b9: 51                                              push   ecx
  0043b9ba: 8d 45 08                                        lea    eax,[ebp+0x8]
  0043b9bd: 8b cc                                           mov    ecx,esp
  0043b9bf: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043b9c2: 50                                              push   eax
  0043b9c3: e8 08 fe ff ff                                  call   0x43b7d0
  0043b9c8: 8b ce                                           mov    ecx,esi
  0043b9ca: e8 91 02 00 00                                  call   0x43bc60
  0043b9cf: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043b9d2: 85 c0                                           test   eax,eax
  0043b9d4: 74 1a                                           je     0x43b9f0
  0043b9d6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0043b9d9: 3b c1                                           cmp    eax,ecx
  0043b9db: 74 07                                           je     0x43b9e4
  0043b9dd: 83 c0 04                                        add    eax,0x4
  0043b9e0: 3b c1                                           cmp    eax,ecx
  0043b9e2: 75 f9                                           jne    0x43b9dd
  0043b9e4: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0043b9e7: 51                                              push   ecx
  0043b9e8: e8 73 66 00 00                                  call   0x442060
  0043b9ed: 83 c4 04                                        add    esp,0x4
  0043b9f0: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0043b9f3: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0043b9f6: 85 c9                                           test   ecx,ecx
  0043b9f8: 8d 04 9a                                        lea    eax,[edx+ebx*4]
  0043b9fb: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  0043b9fe: 75 20                                           jne    0x43ba20
  0043ba00: 33 c0                                           xor    eax,eax
  0043ba02: 8b c7                                           mov    eax,edi
  0043ba04: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  0043ba07: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0043ba0a: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0043ba0d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043ba10: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043ba17: 5f                                              pop    edi
  0043ba18: 5e                                              pop    esi
  0043ba19: 5b                                              pop    ebx
  0043ba1a: 8b e5                                           mov    esp,ebp
  0043ba1c: 5d                                              pop    ebp
  0043ba1d: c2 0c 00                                        ret    0xc
  0043ba20: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043ba23: 2b c1                                           sub    eax,ecx
  0043ba25: c1 f8 02                                        sar    eax,0x2
  0043ba28: 03 c7                                           add    eax,edi
  0043ba2a: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  0043ba2d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0043ba30: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0043ba33: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043ba36: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043ba3d: 5f                                              pop    edi
  0043ba3e: 5e                                              pop    esi
  0043ba3f: 5b                                              pop    ebx
  0043ba40: 8b e5                                           mov    esp,ebp
  0043ba42: 5d                                              pop    ebp
  0043ba43: c2 0c 00                                        ret    0xc
  0043ba5b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043ba5e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043ba61: 8b d0                                           mov    edx,eax
  0043ba63: 2b d1                                           sub    edx,ecx
  0043ba65: c1 fa 02                                        sar    edx,0x2
  0043ba68: 3b d7                                           cmp    edx,edi
  0043ba6a: 0f 83 a5 00 00 00                               jae    0x43bb15
  0043ba70: 8d 1c bd 00 00 00 00                            lea    ebx,[edi*4+0x0]
  0043ba77: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  0043ba7a: 50                                              push   eax
  0043ba7b: 51                                              push   ecx
  0043ba7c: 8b cc                                           mov    ecx,esp
  0043ba7e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043ba81: 51                                              push   ecx
  0043ba82: 8b ce                                           mov    ecx,esi
  0043ba84: e8 e7 f8 ff ff                                  call   0x43b370
  0043ba89: 51                                              push   ecx
  0043ba8a: 8d 55 08                                        lea    edx,[ebp+0x8]
  0043ba8d: 8b cc                                           mov    ecx,esp
  0043ba8f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043ba92: 52                                              push   edx
  0043ba93: e8 38 fd ff ff                                  call   0x43b7d0
  0043ba98: 8b ce                                           mov    ecx,esi
  0043ba9a: e8 c1 01 00 00                                  call   0x43bc60
  0043ba9f: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043baa2: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0043baa5: 51                                              push   ecx
  0043baa6: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043baa9: 8b d0                                           mov    edx,eax
  0043baab: 2b d1                                           sub    edx,ecx
  0043baad: c1 fa 02                                        sar    edx,0x2
  0043bab0: 8b cf                                           mov    ecx,edi
  0043bab2: 2b ca                                           sub    ecx,edx
  0043bab4: 51                                              push   ecx
  0043bab5: 50                                              push   eax
  0043bab6: 8b ce                                           mov    ecx,esi
  0043bab8: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  0043babf: e8 2c 01 00 00                                  call   0x43bbf0
  0043bac4: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0043bac7: 03 cb                                           add    ecx,ebx
  0043bac9: 8d 55 10                                        lea    edx,[ebp+0x10]
  0043bacc: 52                                              push   edx
  0043bacd: 51                                              push   ecx
  0043bace: 8b c4                                           mov    eax,esp
  0043bad0: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043bad3: 57                                              push   edi
  0043bad4: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0043bad7: 50                                              push   eax
  0043bad8: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0043badb: 51                                              push   ecx
  0043badc: 8b ce                                           mov    ecx,esi
  0043bade: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043bae5: e8 86 f8 ff ff                                  call   0x43b370
  0043baea: 8b c8                                           mov    ecx,eax
  0043baec: e8 2f 01 00 00                                  call   0x43bc20
  0043baf1: 51                                              push   ecx
  0043baf2: 8d 55 08                                        lea    edx,[ebp+0x8]
  0043baf5: 8b cc                                           mov    ecx,esp
  0043baf7: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0043bafa: 52                                              push   edx
  0043bafb: e9 96 00 00 00                                  jmp    0x43bb96
  0043bb15: 50                                              push   eax
  0043bb16: 51                                              push   ecx
  0043bb17: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0043bb1a: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0043bb1d: 8b cc                                           mov    ecx,esp
  0043bb1f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043bb22: 50                                              push   eax
  0043bb23: e8 a8 fc ff ff                                  call   0x43b7d0
  0043bb28: 51                                              push   ecx
  0043bb29: 8b cc                                           mov    ecx,esp
  0043bb2b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043bb2e: 57                                              push   edi
  0043bb2f: 51                                              push   ecx
  0043bb30: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0043bb33: e8 e8 00 00 00                                  call   0x43bc20
  0043bb38: 8b ce                                           mov    ecx,esi
  0043bb3a: e8 21 01 00 00                                  call   0x43bc60
  0043bb3f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0043bb42: 51                                              push   ecx
  0043bb43: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0043bb46: 8b c4                                           mov    eax,esp
  0043bb48: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043bb4b: 51                                              push   ecx
  0043bb4c: 89 10                                           mov    DWORD PTR [eax],edx
  0043bb4e: 8b c4                                           mov    eax,esp
  0043bb50: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043bb53: 57                                              push   edi
  0043bb54: 50                                              push   eax
  0043bb55: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0043bb58: e8 c3 00 00 00                                  call   0x43bc20
  0043bb5d: 51                                              push   ecx
  0043bb5e: 8d 55 08                                        lea    edx,[ebp+0x8]
  0043bb61: 8b cc                                           mov    ecx,esp
  0043bb63: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043bb66: 52                                              push   edx
  0043bb67: e8 64 fc ff ff                                  call   0x43b7d0
  0043bb6c: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0043bb6f: 50                                              push   eax
  0043bb70: e8 3b 01 00 00                                  call   0x43bcb0
  0043bb75: 83 c4 10                                        add    esp,0x10
  0043bb78: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0043bb7b: 51                                              push   ecx
  0043bb7c: 51                                              push   ecx
  0043bb7d: 8b d4                                           mov    edx,esp
  0043bb7f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043bb82: 57                                              push   edi
  0043bb83: 52                                              push   edx
  0043bb84: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0043bb87: e8 44 00 00 00                                  call   0x43bbd0
  0043bb8c: 51                                              push   ecx
  0043bb8d: 8d 45 08                                        lea    eax,[ebp+0x8]
  0043bb90: 8b cc                                           mov    ecx,esp
  0043bb92: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0043bb95: 50                                              push   eax
  0043bb96: e8 35 fc ff ff                                  call   0x43b7d0
  0043bb9b: e8 f0 00 00 00                                  call   0x43bc90
  0043bba0: 83 c4 0c                                        add    esp,0xc
  0043bba3: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043bba6: 5f                                              pop    edi
  0043bba7: 5e                                              pop    esi
  0043bba8: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043bbaf: 5b                                              pop    ebx
  0043bbb0: 8b e5                                           mov    esp,ebp
  0043bbb2: 5d                                              pop    ebp
  0043bbb3: c2 0c 00                                        ret    0xc
  0043bc40: 55                                              push   ebp
  0043bc41: 8b ec                                           mov    ebp,esp
  0043bc43: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bc46: 85 c0                                           test   eax,eax
  0043bc48: 74 07                                           je     0x43bc51
  0043bc4a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0043bc4d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0043bc4f: 89 10                                           mov    DWORD PTR [eax],edx
  0043bc51: 5d                                              pop    ebp
  0043bc52: c3                                              ret
  0043e180: 55                                              push   ebp
  0043e181: 8b ec                                           mov    ebp,esp
  0043e183: 81 ec 00 01 00 00                               sub    esp,0x100
  0043e189: 53                                              push   ebx
  0043e18a: 56                                              push   esi
  0043e18b: 68 00 01 00 00                                  push   0x100
  0043e190: 8d 85 00 ff ff ff                               lea    eax,[ebp-0x100]
  0043e196: 50                                              push   eax
  0043e197: e8 6c 43 09 00                                  call   0x4d2508
  0043e19c: 83 f8 ff                                        cmp    eax,0xffffffff
  0043e19f: 74 63                                           je     0x43e204
  0043e1a1: 8d 8d 00 ff ff ff                               lea    ecx,[ebp-0x100]
  0043e1a7: 51                                              push   ecx
  0043e1a8: e8 a3 43 09 00                                  call   0x4d2550
  0043e1ad: 85 c0                                           test   eax,eax
  0043e1af: 74 53                                           je     0x43e204
  0043e1b1: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  0043e1b4: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0043e1b6: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0043e1b9: 33 f6                                           xor    esi,esi
  0043e1bb: 85 c9                                           test   ecx,ecx
  0043e1bd: 74 2a                                           je     0x43e1e9
  0043e1bf: 57                                              push   edi
  0043e1c0: 66 8b 7d 0c                                     mov    di,WORD PTR [ebp+0xc]
  0043e1c4: 33 c9                                           xor    ecx,ecx
  0043e1c6: 66 3b f7                                        cmp    si,di
  0043e1c9: 8b 14 0a                                        mov    edx,DWORD PTR [edx+ecx*1]
  0043e1cc: 8b 12                                           mov    edx,DWORD PTR [edx]
  0043e1ce: 7d 03                                           jge    0x43e1d3
  0043e1d0: 89 14 19                                        mov    DWORD PTR [ecx+ebx*1],edx
  0043e1d3: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  0043e1d6: 46                                              inc    esi
  0043e1d7: 0f bf ce                                        movsx  ecx,si
  0043e1da: c1 e1 02                                        shl    ecx,0x2
  0043e1dd: 83 3c 0a 00                                     cmp    DWORD PTR [edx+ecx*1],0x0
  0043e1e1: 75 e3                                           jne    0x43e1c6
  0043e1e3: 66 85 f6                                        test   si,si
  0043e1e6: 5f                                              pop    edi
  0043e1e7: 75 0c                                           jne    0x43e1f5
  0043e1e9: 5e                                              pop    esi
  0043e1ea: c7 03 00 00 00 00                               mov    DWORD PTR [ebx],0x0
  0043e1f0: 5b                                              pop    ebx
  0043e1f1: 8b e5                                           mov    esp,ebp
  0043e1f3: 5d                                              pop    ebp
  0043e1f4: c3                                              ret
  0043e1f5: 8b 40 0c                                        mov    eax,DWORD PTR [eax+0xc]
  0043e1f8: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043e1fa: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0043e1fc: 5e                                              pop    esi
  0043e1fd: 89 03                                           mov    DWORD PTR [ebx],eax
  0043e1ff: 5b                                              pop    ebx
  0043e200: 8b e5                                           mov    esp,ebp
  0043e202: 5d                                              pop    ebp
  0043e203: c3                                              ret
  0043e204: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0043e207: 5e                                              pop    esi
  0043e208: c7 02 00 00 00 00                               mov    DWORD PTR [edx],0x0
  0043e20e: 5b                                              pop    ebx
  0043e20f: 8b e5                                           mov    esp,ebp
  0043e211: 5d                                              pop    ebp
  0043e212: c3                                              ret
  004415f0: 55                                              push   ebp
  004415f1: 8b ec                                           mov    ebp,esp
  004415f3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004415f9: 6a ff                                           push   0xffffffff
  004415fb: 68 19 61 4d 00                                  push   0x4d6119
  00441600: 50                                              push   eax
  00441601: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00441608: 53                                              push   ebx
  00441609: 56                                              push   esi
  0044160a: 8b f1                                           mov    esi,ecx
  0044160c: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0044160f: 33 db                                           xor    ebx,ebx
  00441611: 88 06                                           mov    BYTE PTR [esi],al
  00441613: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00441616: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00441619: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0044161c: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  00441622: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00441624: 52                                              push   edx
  00441625: 53                                              push   ebx
  00441626: 8d 45 08                                        lea    eax,[ebp+0x8]
  00441629: 50                                              push   eax
  0044162a: 8b ce                                           mov    ecx,esi
  0044162c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0044162f: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00441635: 33 c9                                           xor    ecx,ecx
  00441637: c7 86 10 10 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0x1010],0xffffffff
  00441641: c7 86 28 10 00 00 03 00 00 00                   mov    DWORD PTR [esi+0x1028],0x3
  0044164b: 88 5e 10                                        mov    BYTE PTR [esi+0x10],bl
  0044164e: 8d 96 14 10 00 00                               lea    edx,[esi+0x1014]
  00441654: 89 0a                                           mov    DWORD PTR [edx],ecx
  00441656: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00441659: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0044165c: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  0044165f: 89 4a 10                                        mov    DWORD PTR [edx+0x10],ecx
  00441662: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00441665: 3b cb                                           cmp    ecx,ebx
  00441667: 74 2e                                           je     0x441697
  00441669: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  0044166c: 3a c3                                           cmp    al,bl
  0044166e: 74 1d                                           je     0x44168d
  00441670: 3c ff                                           cmp    al,0xff
  00441672: 74 19                                           je     0x44168d
  00441674: fe c8                                           dec    al
  00441676: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00441679: 8b c6                                           mov    eax,esi
  0044167b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044167e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00441685: 5e                                              pop    esi
  00441686: 5b                                              pop    ebx
  00441687: 8b e5                                           mov    esp,ebp
  00441689: 5d                                              pop    ebp
  0044168a: c2 10 00                                        ret    0x10
  0044168d: 49                                              dec    ecx
  0044168e: 51                                              push   ecx
  0044168f: e8 cc 09 00 00                                  call   0x442060
  00441694: 83 c4 04                                        add    esp,0x4
  00441697: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044169a: 8b c6                                           mov    eax,esi
  0044169c: 5e                                              pop    esi
  0044169d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004416a4: 5b                                              pop    ebx
  004416a5: 8b e5                                           mov    esp,ebp
  004416a7: 5d                                              pop    ebp
  004416a8: c2 10 00                                        ret    0x10
  00441700: 56                                              push   esi
  00441701: 8b f1                                           mov    esi,ecx
  00441703: 8b 86 10 10 00 00                               mov    eax,DWORD PTR [esi+0x1010]
  00441709: 50                                              push   eax
  0044170a: ff 15 38 e1 4d 00                               call   DWORD PTR ds:0x4de138
  00441710: c7 86 10 10 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0x1010],0xffffffff
  0044171a: 5e                                              pop    esi
  0044171b: c3                                              ret
  00441720: 56                                              push   esi
  00441721: 8b f1                                           mov    esi,ecx
  00441723: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00441726: 85 c0                                           test   eax,eax
  00441728: 75 05                                           jne    0x44172f
  0044172a: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0044172f: 6a 00                                           push   0x0
  00441731: 68 e8 03 00 00                                  push   0x3e8
  00441736: 6a 00                                           push   0x0
  00441738: 6a 00                                           push   0x0
  0044173a: 6a 01                                           push   0x1
  0044173c: 6a 07                                           push   0x7
  0044173e: 6a 03                                           push   0x3
  00441740: 50                                              push   eax
  00441741: ff 15 9c e1 4d 00                               call   DWORD PTR ds:0x4de19c
  00441747: 83 f8 ff                                        cmp    eax,0xffffffff
  0044174a: 89 86 10 10 00 00                               mov    DWORD PTR [esi+0x1010],eax
  00441750: 75 15                                           jne    0x441767
  00441752: ff 15 ec e0 4d 00                               call   DWORD PTR ds:0x4de0ec
  00441758: 50                                              push   eax
  00441759: 68 40 4b 50 00                                  push   0x504b40
  0044175e: ff 15 88 e3 4d 00                               call   DWORD PTR ds:0x4de388
  00441764: 83 c4 08                                        add    esp,0x8
  00441767: 8b 8e 10 10 00 00                               mov    ecx,DWORD PTR [esi+0x1010]
  0044176d: 33 c0                                           xor    eax,eax
  0044176f: 83 f9 ff                                        cmp    ecx,0xffffffff
  00441772: 0f 95 c0                                        setne  al
  00441775: 5e                                              pop    esi
  00441776: c3                                              ret
  004417d0: 55                                              push   ebp
  004417d1: 8b ec                                           mov    ebp,esp
  004417d3: 51                                              push   ecx
  004417d4: 8b 81 10 10 00 00                               mov    eax,DWORD PTR [ecx+0x1010]
  004417da: 83 f8 ff                                        cmp    eax,0xffffffff
  004417dd: 74 2a                                           je     0x441809
  004417df: 33 d2                                           xor    edx,edx
  004417e1: 52                                              push   edx
  004417e2: 89 91 28 10 00 00                               mov    DWORD PTR [ecx+0x1028],edx
  004417e8: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004417eb: 8d 55 fc                                        lea    edx,[ebp-0x4]
  004417ee: 52                                              push   edx
  004417ef: 68 ff 0f 00 00                                  push   0xfff
  004417f4: 83 c1 10                                        add    ecx,0x10
  004417f7: 51                                              push   ecx
  004417f8: 50                                              push   eax
  004417f9: ff 15 d4 e0 4d 00                               call   DWORD PTR ds:0x4de0d4
  004417ff: 85 c0                                           test   eax,eax
  00441801: 74 06                                           je     0x441809
  00441803: b0 01                                           mov    al,0x1
  00441805: 8b e5                                           mov    esp,ebp
  00441807: 5d                                              pop    ebp
  00441808: c3                                              ret
  00441809: 32 c0                                           xor    al,al
  0044180b: 8b e5                                           mov    esp,ebp
  0044180d: 5d                                              pop    ebp
  0044180e: c3                                              ret
  00441890: 8b 81 10 10 00 00                               mov    eax,DWORD PTR [ecx+0x1010]
  00441896: 83 f8 ff                                        cmp    eax,0xffffffff
  00441899: 74 20                                           je     0x4418bb
  0044189b: 50                                              push   eax
  0044189c: ff 15 c8 e0 4d 00                               call   DWORD PTR ds:0x4de0c8
  004418a2: 85 c0                                           test   eax,eax
  004418a4: 75 15                                           jne    0x4418bb
  004418a6: ff 15 ec e0 4d 00                               call   DWORD PTR ds:0x4de0ec
  004418ac: 50                                              push   eax
  004418ad: 68 54 4b 50 00                                  push   0x504b54
  004418b2: ff 15 88 e3 4d 00                               call   DWORD PTR ds:0x4de388
  004418b8: 83 c4 08                                        add    esp,0x8
  004418bb: c3                                              ret
  00441920: 55                                              push   ebp
  00441921: 8b ec                                           mov    ebp,esp
  00441923: 51                                              push   ecx
  00441924: 53                                              push   ebx
  00441925: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00441928: 56                                              push   esi
  00441929: 8d 71 10                                        lea    esi,[ecx+0x10]
  0044192c: 8a 4d 0b                                        mov    cl,BYTE PTR [ebp+0xb]
  0044192f: 33 c0                                           xor    eax,eax
  00441931: 57                                              push   edi
  00441932: 88 0b                                           mov    BYTE PTR [ebx],cl
  00441934: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00441937: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0044193a: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0044193d: 83 c9 ff                                        or     ecx,0xffffffff
  00441940: 8b fe                                           mov    edi,esi
  00441942: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00441944: f7 d1                                           not    ecx
  00441946: 49                                              dec    ecx
  00441947: 8b f9                                           mov    edi,ecx
  00441949: 6a 01                                           push   0x1
  0044194b: 57                                              push   edi
  0044194c: 8b cb                                           mov    ecx,ebx
  0044194e: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00441951: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00441954: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0044195a: 84 c0                                           test   al,al
  0044195c: 74 1f                                           je     0x44197d
  0044195e: 8b cf                                           mov    ecx,edi
  00441960: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00441963: 8b d1                                           mov    edx,ecx
  00441965: c1 e9 02                                        shr    ecx,0x2
  00441968: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0044196a: 8b ca                                           mov    ecx,edx
  0044196c: 83 e1 03                                        and    ecx,0x3
  0044196f: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00441971: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00441974: 8b c2                                           mov    eax,edx
  00441976: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00441979: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  0044197d: 5f                                              pop    edi
  0044197e: 5e                                              pop    esi
  0044197f: 8b c3                                           mov    eax,ebx
  00441981: 5b                                              pop    ebx
  00441982: 8b e5                                           mov    esp,ebp
  00441984: 5d                                              pop    ebp
  00441985: c2 04 00                                        ret    0x4
  00441990: 8b c1                                           mov    eax,ecx
  00441992: c7 00 30 f1 4d 00                               mov    DWORD PTR [eax],0x4df130
  00441998: c3                                              ret
  00445390: 55                                              push   ebp
  00445391: 8b ec                                           mov    ebp,esp
  00445393: 83 ec 20                                        sub    esp,0x20
  00445396: 56                                              push   esi
  00445397: 57                                              push   edi
  00445398: 50                                              push   eax
  00445399: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0044539c: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0044539f: 58                                              pop    eax
  004453a0: e8 5b ee fe ff                                  call   0x434200
  004453a5: 8b 10                                           mov    edx,DWORD PTR [eax]
  004453a7: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004453aa: 51                                              push   ecx
  004453ab: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004453ae: 68 30 44 51 00                                  push   0x514430
  004453b3: 51                                              push   ecx
  004453b4: 8b c8                                           mov    ecx,eax
  004453b6: ff 12                                           call   DWORD PTR [edx]
  004453b8: 68 38 44 51 00                                  push   0x514438
  004453bd: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  004453c3: e8 38 ee fe ff                                  call   0x434200
  004453c8: 8b 10                                           mov    edx,DWORD PTR [eax]
  004453ca: 68 34 44 51 00                                  push   0x514434
  004453cf: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004453d2: 51                                              push   ecx
  004453d3: 8b c8                                           mov    ecx,eax
  004453d5: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004453d8: a1 54 44 51 00                                  mov    eax,ds:0x514454
  004453dd: 33 c9                                           xor    ecx,ecx
  004453df: a3 50 44 51 00                                  mov    ds:0x514450,eax
  004453e4: 89 0d 70 44 51 00                               mov    DWORD PTR ds:0x514470,ecx
  004453ea: c6 05 64 44 51 00 08                            mov    BYTE PTR ds:0x514464,0x8
  004453f1: 85 c9                                           test   ecx,ecx
  004453f3: 74 09                                           je     0x4453fe
  004453f5: 8b 00                                           mov    eax,DWORD PTR [eax]
  004453f7: a3 50 44 51 00                                  mov    ds:0x514450,eax
  004453fc: eb 0b                                           jmp    0x445409
  004453fe: b9 01 00 00 00                                  mov    ecx,0x1
  00445403: 89 0d 70 44 51 00                               mov    DWORD PTR ds:0x514470,ecx
  00445409: 85 c0                                           test   eax,eax
  0044540b: 74 62                                           je     0x44546f
  0044540d: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  00445410: 8b 16                                           mov    edx,DWORD PTR [esi]
  00445412: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00445415: 50                                              push   eax
  00445416: 8b ce                                           mov    ecx,esi
  00445418: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0044541b: 33 c9                                           xor    ecx,ecx
  0044541d: 66 8b 48 08                                     mov    cx,WORD PTR [eax+0x8]
  00445421: 51                                              push   ecx
  00445422: e8 99 ca 02 00                                  call   0x471ec0
  00445427: 83 c4 04                                        add    esp,0x4
  0044542a: 8b ce                                           mov    ecx,esi
  0044542c: 8b f8                                           mov    edi,eax
  0044542e: e8 cd 62 04 00                                  call   0x48b700
  00445433: 8b 16                                           mov    edx,DWORD PTR [esi]
  00445435: 50                                              push   eax
  00445436: 8d 45 e0                                        lea    eax,[ebp-0x20]
  00445439: 50                                              push   eax
  0044543a: 8b ce                                           mov    ecx,esi
  0044543c: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0044543f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00445441: 83 ec 0c                                        sub    esp,0xc
  00445444: 8b cc                                           mov    ecx,esp
  00445446: 89 11                                           mov    DWORD PTR [ecx],edx
  00445448: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044544b: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0044544e: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00445451: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00445454: 8b cf                                           mov    ecx,edi
  00445456: e8 35 bc 06 00                                  call   0x4b1090
  0044545b: c6 86 b0 00 00 00 01                            mov    BYTE PTR [esi+0xb0],0x1
  00445462: a1 50 44 51 00                                  mov    eax,ds:0x514450
  00445467: 8b 0d 70 44 51 00                               mov    ecx,DWORD PTR ds:0x514470
  0044546d: eb 82                                           jmp    0x4453f1
  0044546f: 85 c9                                           test   ecx,ecx
  00445471: 74 07                                           je     0x44547a
  00445473: c6 05 64 44 51 00 07                            mov    BYTE PTR ds:0x514464,0x7
  0044547a: c7 05 70 44 51 00 00 00 00 00                   mov    DWORD PTR ds:0x514470,0x0
  00445484: e8 77 ed fe ff                                  call   0x434200
  00445489: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044548b: 68 34 44 51 00                                  push   0x514434
  00445490: 8b c8                                           mov    ecx,eax
  00445492: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00445495: 68 38 44 51 00                                  push   0x514438
  0044549a: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  004454a0: 5f                                              pop    edi
  004454a1: 5e                                              pop    esi
  004454a2: 8b e5                                           mov    esp,ebp
  004454a4: 5d                                              pop    ebp
  004454a5: c3                                              ret
  0044d670: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d673: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  0044d676: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  0044d679: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  0044d67c: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d67f: 3b c2                                           cmp    eax,edx
  0044d681: 74 57                                           je     0x44d6da
  0044d683: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044d686: 74 4e                                           je     0x44d6d6
  0044d688: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044d68a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d68d: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0044d690: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d693: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044d696: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044d698: 89 02                                           mov    DWORD PTR [edx],eax
  0044d69a: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0044d69d: 83 f8 01                                        cmp    eax,0x1
  0044d6a0: 75 16                                           jne    0x44d6b8
  0044d6a2: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d6a5: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0044d6a8: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d6ab: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d6ae: 51                                              push   ecx
  0044d6af: e8 ac 49 ff ff                                  call   0x442060
  0044d6b4: 83 c4 04                                        add    esp,0x4
  0044d6b7: c3                                              ret
  0044d6b8: 83 f8 02                                        cmp    eax,0x2
  0044d6bb: 0f 85 8c 00 00 00                               jne    0x44d74d
  0044d6c1: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d6c4: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044d6c6: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d6c9: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d6cc: 51                                              push   ecx
  0044d6cd: e8 8e 49 ff ff                                  call   0x442060
  0044d6d2: 83 c4 04                                        add    esp,0x4
  0044d6d5: c3                                              ret
  0044d6d6: 3b c2                                           cmp    eax,edx
  0044d6d8: 75 34                                           jne    0x44d70e
  0044d6da: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044d6dd: 74 34                                           je     0x44d713
  0044d6df: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d6e2: 33 d2                                           xor    edx,edx
  0044d6e4: 89 10                                           mov    DWORD PTR [eax],edx
  0044d6e6: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d6e9: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d6ec: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  0044d6ef: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d6f2: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d6f5: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d6f8: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  0044d6fc: 75 4f                                           jne    0x44d74d
  0044d6fe: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044d701: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d704: 51                                              push   ecx
  0044d705: e8 56 49 ff ff                                  call   0x442060
  0044d70a: 83 c4 04                                        add    esp,0x4
  0044d70d: c3                                              ret
  0044d70e: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044d711: 75 2c                                           jne    0x44d73f
  0044d713: 3b c2                                           cmp    eax,edx
  0044d715: 74 28                                           je     0x44d73f
  0044d717: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044d719: 33 d2                                           xor    edx,edx
  0044d71b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0044d71e: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d721: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044d723: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d726: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  0044d729: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  0044d72d: 75 1e                                           jne    0x44d74d
  0044d72f: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044d732: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d735: 51                                              push   ecx
  0044d736: e8 25 49 ff ff                                  call   0x442060
  0044d73b: 83 c4 04                                        add    esp,0x4
  0044d73e: c3                                              ret
  0044d73f: 33 d2                                           xor    edx,edx
  0044d741: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  0044d744: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  0044d747: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  0044d74a: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044d74d: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d750: 51                                              push   ecx
  0044d751: e8 0a 49 ff ff                                  call   0x442060
  0044d756: 83 c4 04                                        add    esp,0x4
  0044d759: c3                                              ret
  0044d760: 8b 51 40                                        mov    edx,DWORD PTR [ecx+0x40]
  0044d763: 85 d2                                           test   edx,edx
  0044d765: b8 01 00 00 00                                  mov    eax,0x1
  0044d76a: 74 0a                                           je     0x44d776
  0044d76c: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d76f: 8b 12                                           mov    edx,DWORD PTR [edx]
  0044d771: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  0044d774: eb 03                                           jmp    0x44d779
  0044d776: 89 41 40                                        mov    DWORD PTR [ecx+0x40],eax
  0044d779: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d77c: 85 d2                                           test   edx,edx
  0044d77e: 75 14                                           jne    0x44d794
  0044d780: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0044d783: 85 c0                                           test   eax,eax
  0044d785: 74 04                                           je     0x44d78b
  0044d787: c6 41 34 07                                     mov    BYTE PTR [ecx+0x34],0x7
  0044d78b: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  0044d792: 33 c0                                           xor    eax,eax
  0044d794: c3                                              ret
  0044e9f0: 56                                              push   esi
  0044e9f1: 57                                              push   edi
  0044e9f2: 8b f1                                           mov    esi,ecx
  0044e9f4: 8d 7e 04                                        lea    edi,[esi+0x4]
  0044e9f7: 57                                              push   edi
  0044e9f8: e8 3f fa 07 00                                  call   0x4ce43c
  0044e9fd: 8b 07                                           mov    eax,DWORD PTR [edi]
  0044e9ff: 83 c6 08                                        add    esi,0x8
  0044ea02: 56                                              push   esi
  0044ea03: 50                                              push   eax
  0044ea04: e8 2d fa 07 00                                  call   0x4ce436
  0044ea09: 5f                                              pop    edi
  0044ea0a: 5e                                              pop    esi
  0044ea0b: c3                                              ret
  0044ea10: 56                                              push   esi
  0044ea11: 8b f1                                           mov    esi,ecx
  0044ea13: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044ea16: 50                                              push   eax
  0044ea17: e8 2c fa 07 00                                  call   0x4ce448
  0044ea1c: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0044ea1f: 51                                              push   ecx
  0044ea20: e8 1d fa 07 00                                  call   0x4ce442
  0044ea25: 5e                                              pop    esi
  0044ea26: c3                                              ret
  00450b50: 55                                              push   ebp
  00450b51: 8b ec                                           mov    ebp,esp
  00450b53: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  00450b57: 66 3d 10 27                                     cmp    ax,0x2710
  00450b5b: 0f bf c0                                        movsx  eax,ax
  00450b5e: 7e 34                                           jle    0x450b94
  00450b60: 05 f0 d8 ff ff                                  add    eax,0xffffd8f0
  00450b65: 83 f8 04                                        cmp    eax,0x4
  00450b68: 77 58                                           ja     0x450bc2
  00450b6a: ff 24 85 c4 0b 45 00                            jmp    DWORD PTR [eax*4+0x450bc4]
  00450b94: 8b 04 85 f8 46 51 00                            mov    eax,DWORD PTR [eax*4+0x5146f8]
  00450b9b: 85 c0                                           test   eax,eax
  00450b9d: 74 23                                           je     0x450bc2
  00450b9f: ff 40 18                                        inc    DWORD PTR [eax+0x18]
  00450ba2: 83 3d 20 4a 51 00 64                            cmp    DWORD PTR ds:0x514a20,0x64
  00450ba9: 73 17                                           jae    0x450bc2
  00450bab: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00450bae: 51                                              push   ecx
  00450baf: 68 91 01 00 00                                  push   0x191
  00450bb4: e8 c5 d9 07 00                                  call   0x4ce57e
  00450bb9: 8b c8                                           mov    ecx,eax
  00450bbb: e8 b8 d9 07 00                                  call   0x4ce578
  00450bc0: ff 00                                           inc    DWORD PTR [eax]
  00450bc2: 5d                                              pop    ebp
  00450bc3: c3                                              ret
  004518b0: 55                                              push   ebp
  004518b1: 8b ec                                           mov    ebp,esp
  004518b3: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004518b6: 56                                              push   esi
  004518b7: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004518ba: 8d 45 10                                        lea    eax,[ebp+0x10]
  004518bd: 50                                              push   eax
  004518be: 51                                              push   ecx
  004518bf: 56                                              push   esi
  004518c0: ff 15 fc e2 4d 00                               call   DWORD PTR ds:0x4de2fc
  004518c6: 83 c4 0c                                        add    esp,0xc
  004518c9: 8b c6                                           mov    eax,esi
  004518cb: 5e                                              pop    esi
  004518cc: 5d                                              pop    ebp
  004518cd: c3                                              ret
  00455a70: 56                                              push   esi
  00455a71: 8b f1                                           mov    esi,ecx
  00455a73: 8b 06                                           mov    eax,DWORD PTR [esi]
  00455a75: 85 c0                                           test   eax,eax
  00455a77: 74 07                                           je     0x455a80
  00455a79: 50                                              push   eax
  00455a7a: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  00455a80: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00455a83: 85 f6                                           test   esi,esi
  00455a85: 74 09                                           je     0x455a90
  00455a87: 56                                              push   esi
  00455a88: e8 03 8a 07 00                                  call   0x4ce490
  00455a8d: 83 c4 04                                        add    esp,0x4
  00455a90: 5e                                              pop    esi
  00455a91: c3                                              ret
  004712c0: 56                                              push   esi
  004712c1: 8b f1                                           mov    esi,ecx
  004712c3: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004712c6: 85 c0                                           test   eax,eax
  004712c8: 74 1c                                           je     0x4712e6
  004712ca: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004712cd: 8a 01                                           mov    al,BYTE PTR [ecx]
  004712cf: 84 c0                                           test   al,al
  004712d1: 74 0a                                           je     0x4712dd
  004712d3: 3c ff                                           cmp    al,0xff
  004712d5: 74 06                                           je     0x4712dd
  004712d7: fe c8                                           dec    al
  004712d9: 88 01                                           mov    BYTE PTR [ecx],al
  004712db: eb 09                                           jmp    0x4712e6
  004712dd: 51                                              push   ecx
  004712de: e8 7d 0d fd ff                                  call   0x442060
  004712e3: 83 c4 04                                        add    esp,0x4
  004712e6: c7 46 24 00 00 00 00                            mov    DWORD PTR [esi+0x24],0x0
  004712ed: c7 46 28 00 00 00 00                            mov    DWORD PTR [esi+0x28],0x0
  004712f4: c7 46 2c 00 00 00 00                            mov    DWORD PTR [esi+0x2c],0x0
  004712fb: 5e                                              pop    esi
  004712fc: c3                                              ret
  00479100: 55                                              push   ebp
  00479101: 8b ec                                           mov    ebp,esp
  00479103: 6a ff                                           push   0xffffffff
  00479105: 68 cc 92 4d 00                                  push   0x4d92cc
  0047910a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00479110: 50                                              push   eax
  00479111: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00479118: 83 ec 40                                        sub    esp,0x40
  0047911b: a0 24 42 51 00                                  mov    al,ds:0x514224
  00479120: 53                                              push   ebx
  00479121: 56                                              push   esi
  00479122: 57                                              push   edi
  00479123: 33 db                                           xor    ebx,ebx
  00479125: 84 c0                                           test   al,al
  00479127: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0047912a: 0f 85 24 04 00 00                               jne    0x479554
  00479130: 68 f4 65 50 00                                  push   0x5065f4
  00479135: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00479138: e8 27 89 05 00                                  call   0x4d1a64
  0047913d: 6a 17                                           push   0x17
  0047913f: 53                                              push   ebx
  00479140: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00479143: 68 e4 65 50 00                                  push   0x5065e4
  00479148: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0047914b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0047914f: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00479152: e8 f9 fb fd ff                                  call   0x458d50
  00479157: 3b c3                                           cmp    eax,ebx
  00479159: 7d 0d                                           jge    0x479168
  0047915b: 3d 02 40 00 80                                  cmp    eax,0x80004002
  00479160: 74 06                                           je     0x479168
  00479162: 50                                              push   eax
  00479163: e8 f4 93 05 00                                  call   0x4d255c
  00479168: 68 d0 65 50 00                                  push   0x5065d0
  0047916d: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00479170: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00479174: e8 df 88 05 00                                  call   0x4d1a58
  00479179: 51                                              push   ecx
  0047917a: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  0047917d: 8b f4                                           mov    esi,esp
  0047917f: 6a 0c                                           push   0xc
  00479181: e8 6a 8e fc ff                                  call   0x441ff0
  00479186: 83 c4 04                                        add    esp,0x4
  00479189: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0047918c: 3b c3                                           cmp    eax,ebx
  0047918e: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00479192: 74 0e                                           je     0x4791a2
  00479194: 68 bc 65 50 00                                  push   0x5065bc
  00479199: 8b c8                                           mov    ecx,eax
  0047919b: e8 c0 a0 f8 ff                                  call   0x403260
  004791a0: eb 02                                           jmp    0x4791a4
  004791a2: 33 c0                                           xor    eax,eax
  004791a4: 3b c3                                           cmp    eax,ebx
  004791a6: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004791aa: 89 06                                           mov    DWORD PTR [esi],eax
  004791ac: 75 0a                                           jne    0x4791b8
  004791ae: 68 0e 00 07 80                                  push   0x8007000e
  004791b3: e8 a4 93 05 00                                  call   0x4d255c
  004791b8: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004791bb: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004791bf: e8 6c fb fd ff                                  call   0x458d30
  004791c4: 8b c8                                           mov    ecx,eax
  004791c6: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004791ca: e8 d1 ca fd ff                                  call   0x455ca0
  004791cf: 68 a8 65 50 00                                  push   0x5065a8
  004791d4: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004791d7: e8 7c 88 05 00                                  call   0x4d1a58
  004791dc: b9 80 42 51 00                                  mov    ecx,0x514280
  004791e1: e8 8a 8b fa ff                                  call   0x421d70
  004791e6: 51                                              push   ecx
  004791e7: 89 65 e0                                        mov    DWORD PTR [ebp-0x20],esp
  004791ea: 8b fc                                           mov    edi,esp
  004791ec: 6a 0c                                           push   0xc
  004791ee: 8b f0                                           mov    esi,eax
  004791f0: e8 fb 8d fc ff                                  call   0x441ff0
  004791f5: 83 c4 04                                        add    esp,0x4
  004791f8: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004791fb: 3b c3                                           cmp    eax,ebx
  004791fd: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00479201: 74 0a                                           je     0x47920d
  00479203: 56                                              push   esi
  00479204: 8b c8                                           mov    ecx,eax
  00479206: e8 55 a0 f8 ff                                  call   0x403260
  0047920b: eb 02                                           jmp    0x47920f
  0047920d: 33 c0                                           xor    eax,eax
  0047920f: 3b c3                                           cmp    eax,ebx
  00479211: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00479215: 89 07                                           mov    DWORD PTR [edi],eax
  00479217: 75 0a                                           jne    0x479223
  00479219: 68 0e 00 07 80                                  push   0x8007000e
  0047921e: e8 39 93 05 00                                  call   0x4d255c
  00479223: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00479226: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0047922a: e8 01 fb fd ff                                  call   0x458d30
  0047922f: 8b c8                                           mov    ecx,eax
  00479231: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00479235: e8 c6 c9 fd ff                                  call   0x455c00
  0047923a: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0047923d: 3b cb                                           cmp    ecx,ebx
  0047923f: 75 0d                                           jne    0x47924e
  00479241: 68 03 40 00 80                                  push   0x80004003
  00479246: e8 11 93 05 00                                  call   0x4d255c
  0047924b: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0047924e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00479250: 33 c0                                           xor    eax,eax
  00479252: 66 a1 7e 42 51 00                               mov    ax,ds:0x51427e
  00479258: 8b f1                                           mov    esi,ecx
  0047925a: 50                                              push   eax
  0047925b: 51                                              push   ecx
  0047925c: ff 52 20                                        call   DWORD PTR [edx+0x20]
  0047925f: 3b c3                                           cmp    eax,ebx
  00479261: 7d 0c                                           jge    0x47926f
  00479263: 68 98 65 50 00                                  push   0x506598
  00479268: 56                                              push   esi
  00479269: 50                                              push   eax
  0047926a: e8 fb 92 05 00                                  call   0x4d256a
  0047926f: 68 88 65 50 00                                  push   0x506588
  00479274: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00479277: e8 dc 87 05 00                                  call   0x4d1a58
  0047927c: 6a 10                                           push   0x10
  0047927e: 51                                              push   ecx
  0047927f: 8b cc                                           mov    ecx,esp
  00479281: 89 65 e0                                        mov    DWORD PTR [ebp-0x20],esp
  00479284: 68 d4 11 50 00                                  push   0x5011d4
  00479289: e8 f2 9e f8 ff                                  call   0x403180
  0047928e: a1 84 42 51 00                                  mov    eax,ds:0x514284
  00479293: 25 ff ff 00 00                                  and    eax,0xffff
  00479298: 50                                              push   eax
  00479299: b9 6c 42 51 00                                  mov    ecx,0x51426c
  0047929e: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  004792a2: e8 c9 8a fa ff                                  call   0x421d70
  004792a7: 51                                              push   ecx
  004792a8: 8b cc                                           mov    ecx,esp
  004792aa: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004792ad: 50                                              push   eax
  004792ae: e8 cd 9e f8 ff                                  call   0x403180
  004792b3: 33 c9                                           xor    ecx,ecx
  004792b5: 66 8b 0d 86 42 51 00                            mov    cx,WORD PTR ds:0x514286
  004792bc: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  004792c0: 51                                              push   ecx
  004792c1: b9 4c 42 51 00                                  mov    ecx,0x51424c
  004792c6: e8 a5 8a fa ff                                  call   0x421d70
  004792cb: 51                                              push   ecx
  004792cc: 8b cc                                           mov    ecx,esp
  004792ce: 89 65 dc                                        mov    DWORD PTR [ebp-0x24],esp
  004792d1: 50                                              push   eax
  004792d2: e8 a9 9e f8 ff                                  call   0x403180
  004792d7: 51                                              push   ecx
  004792d8: 8b cc                                           mov    ecx,esp
  004792da: 89 65 d8                                        mov    DWORD PTR [ebp-0x28],esp
  004792dd: 68 58 13 51 00                                  push   0x511358
  004792e2: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  004792e6: e8 95 9e f8 ff                                  call   0x403180
  004792eb: 51                                              push   ecx
  004792ec: 8b cc                                           mov    ecx,esp
  004792ee: 89 65 d4                                        mov    DWORD PTR [ebp-0x2c],esp
  004792f1: 68 d0 a7 50 00                                  push   0x50a7d0
  004792f6: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  004792fa: e8 81 9e f8 ff                                  call   0x403180
  004792ff: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00479302: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  00479306: e8 25 fa fd ff                                  call   0x458d30
  0047930b: 8b c8                                           mov    ecx,eax
  0047930d: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00479311: e8 ba c5 fd ff                                  call   0x4558d0
  00479316: 8b d8                                           mov    ebx,eax
  00479318: 68 64 65 50 00                                  push   0x506564
  0047931d: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00479320: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  00479323: e8 30 87 05 00                                  call   0x4d1a58
  00479328: 8b 35 bc 42 51 00                               mov    esi,DWORD PTR ds:0x5142bc
  0047932e: 51                                              push   ecx
  0047932f: 89 65 d4                                        mov    DWORD PTR [ebp-0x2c],esp
  00479332: 8b fc                                           mov    edi,esp
  00479334: 6a 0c                                           push   0xc
  00479336: e8 b5 8c fc ff                                  call   0x441ff0
  0047933b: 83 c4 04                                        add    esp,0x4
  0047933e: 89 45 d8                                        mov    DWORD PTR [ebp-0x28],eax
  00479341: 85 c0                                           test   eax,eax
  00479343: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  00479347: 74 0a                                           je     0x479353
  00479349: 56                                              push   esi
  0047934a: 8b c8                                           mov    ecx,eax
  0047934c: e8 0f 9f f8 ff                                  call   0x403260
  00479351: eb 02                                           jmp    0x479355
  00479353: 33 c0                                           xor    eax,eax
  00479355: 85 c0                                           test   eax,eax
  00479357: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0047935b: 89 07                                           mov    DWORD PTR [edi],eax
  0047935d: 75 0a                                           jne    0x479369
  0047935f: 68 0e 00 07 80                                  push   0x8007000e
  00479364: e8 f3 91 05 00                                  call   0x4d255c
  00479369: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0047936c: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  00479370: e8 bb f9 fd ff                                  call   0x458d30
  00479375: 6a 00                                           push   0x0
  00479377: 6a 08                                           push   0x8
  00479379: 53                                              push   ebx
  0047937a: 8b c8                                           mov    ecx,eax
  0047937c: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00479380: e8 cb c7 fd ff                                  call   0x455b50
  00479385: 8d 55 b4                                        lea    edx,[ebp-0x4c]
  00479388: 52                                              push   edx
  00479389: ff 15 04 e4 4d 00                               call   DWORD PTR ds:0x4de404
  0047938f: 6a 0c                                           push   0xc
  00479391: e8 5a 8c fc ff                                  call   0x441ff0
  00479396: 8b f0                                           mov    esi,eax
  00479398: 83 c4 04                                        add    esp,0x4
  0047939b: 89 75 d4                                        mov    DWORD PTR [ebp-0x2c],esi
  0047939e: 85 f6                                           test   esi,esi
  004793a0: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  004793a4: 74 33                                           je     0x4793d9
  004793a6: 68 d4 11 50 00                                  push   0x5011d4
  004793ab: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004793b2: c7 46 08 01 00 00 00                            mov    DWORD PTR [esi+0x8],0x1
  004793b9: e8 94 98 05 00                                  call   0x4d2c52
  004793be: 85 c0                                           test   eax,eax
  004793c0: 89 06                                           mov    DWORD PTR [esi],eax
  004793c2: 75 17                                           jne    0x4793db
  004793c4: b8 d4 11 50 00                                  mov    eax,0x5011d4
  004793c9: 85 c0                                           test   eax,eax
  004793cb: 74 0e                                           je     0x4793db
  004793cd: 68 0e 00 07 80                                  push   0x8007000e
  004793d2: e8 85 91 05 00                                  call   0x4d255c
  004793d7: eb 02                                           jmp    0x4793db
  004793d9: 33 f6                                           xor    esi,esi
  004793db: 85 f6                                           test   esi,esi
  004793dd: b3 0e                                           mov    bl,0xe
  004793df: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004793e2: 89 75 d4                                        mov    DWORD PTR [ebp-0x2c],esi
  004793e5: 75 0a                                           jne    0x4793f1
  004793e7: 68 0e 00 07 80                                  push   0x8007000e
  004793ec: e8 6b 91 05 00                                  call   0x4d255c
  004793f1: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  004793f4: 51                                              push   ecx
  004793f5: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  004793f9: ff 15 18 e4 4d 00                               call   DWORD PTR ds:0x4de418
  004793ff: 85 c0                                           test   eax,eax
  00479401: 7d 06                                           jge    0x479409
  00479403: 50                                              push   eax
  00479404: e8 53 91 05 00                                  call   0x4d255c
  00479409: 85 f6                                           test   esi,esi
  0047940b: 66 c7 45 b4 08 00                               mov    WORD PTR [ebp-0x4c],0x8
  00479411: 74 0d                                           je     0x479420
  00479413: 8b 3e                                           mov    edi,DWORD PTR [esi]
  00479415: 33 c0                                           xor    eax,eax
  00479417: 85 ff                                           test   edi,edi
  00479419: 0f 94 c0                                        sete   al
  0047941c: 84 c0                                           test   al,al
  0047941e: 74 09                                           je     0x479429
  00479420: c7 45 bc 00 00 00 00                            mov    DWORD PTR [ebp-0x44],0x0
  00479427: eb 20                                           jmp    0x479449
  00479429: 57                                              push   edi
  0047942a: ff 15 00 e4 4d 00                               call   DWORD PTR ds:0x4de400
  00479430: 50                                              push   eax
  00479431: 57                                              push   edi
  00479432: ff 15 20 e4 4d 00                               call   DWORD PTR ds:0x4de420
  00479438: 85 c0                                           test   eax,eax
  0047943a: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0047943d: 75 0a                                           jne    0x479449
  0047943f: 68 0e 00 07 80                                  push   0x8007000e
  00479444: e8 13 91 05 00                                  call   0x4d255c
  00479449: 85 f6                                           test   esi,esi
  0047944b: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0047944e: 74 07                                           je     0x479457
  00479450: 8b ce                                           mov    ecx,esi
  00479452: e8 99 c3 fd ff                                  call   0x4557f0
  00479457: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0047945a: 85 c0                                           test   eax,eax
  0047945c: 75 0d                                           jne    0x47946b
  0047945e: 68 03 40 00 80                                  push   0x80004003
  00479463: e8 f4 90 05 00                                  call   0x4d255c
  00479468: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0047946b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047946d: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00479470: 51                                              push   ecx
  00479471: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  00479474: 51                                              push   ecx
  00479475: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  00479478: 68 16 15 22 00                                  push   0x221516
  0047947d: 6a 07                                           push   0x7
  0047947f: 51                                              push   ecx
  00479480: 50                                              push   eax
  00479481: 8b f0                                           mov    esi,eax
  00479483: ff 52 58                                        call   DWORD PTR [edx+0x58]
  00479486: 85 c0                                           test   eax,eax
  00479488: 7d 0c                                           jge    0x479496
  0047948a: 68 98 65 50 00                                  push   0x506598
  0047948f: 56                                              push   esi
  00479490: 50                                              push   eax
  00479491: e8 d4 90 05 00                                  call   0x4d256a
  00479496: 8d 55 b4                                        lea    edx,[ebp-0x4c]
  00479499: 52                                              push   edx
  0047949a: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0047949e: ff 15 18 e4 4d 00                               call   DWORD PTR ds:0x4de418
  004794a4: 85 c0                                           test   eax,eax
  004794a6: 7d 06                                           jge    0x4794ae
  004794a8: 50                                              push   eax
  004794a9: e8 ae 90 05 00                                  call   0x4d255c
  004794ae: 68 54 65 50 00                                  push   0x506554
  004794b3: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004794b6: e8 9d 85 05 00                                  call   0x4d1a58
  004794bb: 33 c0                                           xor    eax,eax
  004794bd: 66 a1 56 42 51 00                               mov    ax,ds:0x514256
  004794c3: 6a 00                                           push   0x0
  004794c5: b9 58 42 51 00                                  mov    ecx,0x514258
  004794ca: 50                                              push   eax
  004794cb: e8 a0 88 fa ff                                  call   0x421d70
  004794d0: 51                                              push   ecx
  004794d1: 8b cc                                           mov    ecx,esp
  004794d3: 89 65 d4                                        mov    DWORD PTR [ebp-0x2c],esp
  004794d6: 50                                              push   eax
  004794d7: e8 a4 9c f8 ff                                  call   0x403180
  004794dc: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004794df: c6 45 fc 11                                     mov    BYTE PTR [ebp-0x4],0x11
  004794e3: e8 48 f8 fd ff                                  call   0x458d30
  004794e8: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  004794eb: 51                                              push   ecx
  004794ec: 8b c8                                           mov    ecx,eax
  004794ee: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004794f2: e8 a9 c5 fd ff                                  call   0x455aa0
  004794f7: 68 44 65 50 00                                  push   0x506544
  004794fc: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004794ff: e8 54 85 05 00                                  call   0x4d1a58
  00479504: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00479507: 85 c0                                           test   eax,eax
  00479509: 75 0d                                           jne    0x479518
  0047950b: 68 03 40 00 80                                  push   0x80004003
  00479510: e8 47 90 05 00                                  call   0x4d255c
  00479515: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00479518: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0047951b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047951d: 51                                              push   ecx
  0047951e: 50                                              push   eax
  0047951f: 8b f0                                           mov    esi,eax
  00479521: ff 52 2c                                        call   DWORD PTR [edx+0x2c]
  00479524: 85 c0                                           test   eax,eax
  00479526: 7d 0c                                           jge    0x479534
  00479528: 68 98 65 50 00                                  push   0x506598
  0047952d: 56                                              push   esi
  0047952e: 50                                              push   eax
  0047952f: e8 36 90 05 00                                  call   0x4d256a
  00479534: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00479537: 85 c0                                           test   eax,eax
  00479539: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0047953d: 74 06                                           je     0x479545
  0047953f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00479541: 50                                              push   eax
  00479542: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00479545: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00479548: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0047954f: e8 ec 84 05 00                                  call   0x4d1a40
  00479554: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00479557: 5f                                              pop    edi
  00479558: 5e                                              pop    esi
  00479559: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00479560: 5b                                              pop    ebx
  00479561: 8b e5                                           mov    esp,ebp
  00479563: 5d                                              pop    ebp
  00479564: c3                                              ret
  00479e60: 55                                              push   ebp
  00479e61: 8b ec                                           mov    ebp,esp
  00479e63: 66 8b 45 0c                                     mov    ax,WORD PTR [ebp+0xc]
  00479e67: 66 3d 65 00                                     cmp    ax,0x65
  00479e6b: 7d 0d                                           jge    0x479e7a
  00479e6d: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00479e70: 0f bf c0                                        movsx  eax,ax
  00479e73: 89 0c 85 90 60 51 00                            mov    DWORD PTR [eax*4+0x516090],ecx
  00479e7a: 5d                                              pop    ebp
  00479e7b: c3                                              ret
  0047b2e0: 83 c1 0c                                        add    ecx,0xc
  0047b2e3: e9 58 67 05 00                                  jmp    0x4d1a40
  0047bf80: 55                                              push   ebp
  0047bf81: 8b ec                                           mov    ebp,esp
  0047bf83: 83 ec 08                                        sub    esp,0x8
  0047bf86: 53                                              push   ebx
  0047bf87: 56                                              push   esi
  0047bf88: 57                                              push   edi
  0047bf89: 32 db                                           xor    bl,bl
  0047bf8b: 50                                              push   eax
  0047bf8c: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0047bf8f: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0047bf92: 58                                              pop    eax
  0047bf93: e8 68 82 fb ff                                  call   0x434200
  0047bf98: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047bf9a: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0047bf9d: 51                                              push   ecx
  0047bf9e: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0047bfa1: 68 a0 62 51 00                                  push   0x5162a0
  0047bfa6: 51                                              push   ecx
  0047bfa7: 8b c8                                           mov    ecx,eax
  0047bfa9: ff 12                                           call   DWORD PTR [edx]
  0047bfab: 68 a8 62 51 00                                  push   0x5162a8
  0047bfb0: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  0047bfb6: e8 45 82 fb ff                                  call   0x434200
  0047bfbb: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047bfbd: 68 a4 62 51 00                                  push   0x5162a4
  0047bfc2: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0047bfc5: 51                                              push   ecx
  0047bfc6: 8b c8                                           mov    ecx,eax
  0047bfc8: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0047bfcb: 8b 15 c4 62 51 00                               mov    edx,DWORD PTR ds:0x5162c4
  0047bfd1: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0047bfd4: 33 f6                                           xor    esi,esi
  0047bfd6: 89 15 c0 62 51 00                               mov    DWORD PTR ds:0x5162c0,edx
  0047bfdc: 89 35 e0 62 51 00                               mov    DWORD PTR ds:0x5162e0,esi
  0047bfe2: c6 05 d4 62 51 00 08                            mov    BYTE PTR ds:0x5162d4,0x8
  0047bfe9: 85 f6                                           test   esi,esi
  0047bfeb: 74 0a                                           je     0x47bff7
  0047bfed: 8b 12                                           mov    edx,DWORD PTR [edx]
  0047bfef: 89 15 c0 62 51 00                               mov    DWORD PTR ds:0x5162c0,edx
  0047bff5: eb 0b                                           jmp    0x47c002
  0047bff7: be 01 00 00 00                                  mov    esi,0x1
  0047bffc: 89 35 e0 62 51 00                               mov    DWORD PTR ds:0x5162e0,esi
  0047c002: 85 d2                                           test   edx,edx
  0047c004: 74 18                                           je     0x47c01e
  0047c006: 84 db                                           test   bl,bl
  0047c008: 75 29                                           jne    0x47c033
  0047c00a: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  0047c00d: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0047c010: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0047c012: 23 c8                                           and    ecx,eax
  0047c014: 23 c7                                           and    eax,edi
  0047c016: 3b c1                                           cmp    eax,ecx
  0047c018: 75 cf                                           jne    0x47bfe9
  0047c01a: b3 01                                           mov    bl,0x1
  0047c01c: eb cb                                           jmp    0x47bfe9
  0047c01e: 85 f6                                           test   esi,esi
  0047c020: 74 07                                           je     0x47c029
  0047c022: c6 05 d4 62 51 00 07                            mov    BYTE PTR ds:0x5162d4,0x7
  0047c029: c7 05 e0 62 51 00 00 00 00 00                   mov    DWORD PTR ds:0x5162e0,0x0
  0047c033: e8 c8 81 fb ff                                  call   0x434200
  0047c038: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047c03a: 68 a4 62 51 00                                  push   0x5162a4
  0047c03f: 8b c8                                           mov    ecx,eax
  0047c041: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0047c044: 68 a8 62 51 00                                  push   0x5162a8
  0047c049: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  0047c04f: 5f                                              pop    edi
  0047c050: 5e                                              pop    esi
  0047c051: 8a c3                                           mov    al,bl
  0047c053: 5b                                              pop    ebx
  0047c054: 8b e5                                           mov    esp,ebp
  0047c056: 5d                                              pop    ebp
  0047c057: c3                                              ret
  0047c7f0: 55                                              push   ebp
  0047c7f1: 8b ec                                           mov    ebp,esp
  0047c7f3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0047c7f9: 6a ff                                           push   0xffffffff
  0047c7fb: 68 f8 95 4d 00                                  push   0x4d95f8
  0047c800: 50                                              push   eax
  0047c801: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0047c808: 56                                              push   esi
  0047c809: 57                                              push   edi
  0047c80a: 8b f9                                           mov    edi,ecx
  0047c80c: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0047c80f: 85 f6                                           test   esi,esi
  0047c811: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0047c818: 74 04                                           je     0x47c81e
  0047c81a: 8b 06                                           mov    eax,DWORD PTR [esi]
  0047c81c: eb 02                                           jmp    0x47c820
  0047c81e: 33 c0                                           xor    eax,eax
  0047c820: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0047c822: 8d 55 14                                        lea    edx,[ebp+0x14]
  0047c825: 52                                              push   edx
  0047c826: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0047c829: 52                                              push   edx
  0047c82a: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0047c82d: 50                                              push   eax
  0047c82e: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0047c831: 50                                              push   eax
  0047c832: 52                                              push   edx
  0047c833: 57                                              push   edi
  0047c834: ff 51 40                                        call   DWORD PTR [ecx+0x40]
  0047c837: 85 c0                                           test   eax,eax
  0047c839: 7d 0c                                           jge    0x47c847
  0047c83b: 68 98 65 50 00                                  push   0x506598
  0047c840: 57                                              push   edi
  0047c841: 50                                              push   eax
  0047c842: e8 23 5d 05 00                                  call   0x4d256a
  0047c847: 85 f6                                           test   esi,esi
  0047c849: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  0047c84c: 74 34                                           je     0x47c882
  0047c84e: 8d 46 08                                        lea    eax,[esi+0x8]
  0047c851: 50                                              push   eax
  0047c852: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  0047c858: 85 c0                                           test   eax,eax
  0047c85a: 75 26                                           jne    0x47c882
  0047c85c: 8b 06                                           mov    eax,DWORD PTR [esi]
  0047c85e: 85 c0                                           test   eax,eax
  0047c860: 74 07                                           je     0x47c869
  0047c862: 50                                              push   eax
  0047c863: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  0047c869: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0047c86c: 85 c0                                           test   eax,eax
  0047c86e: 74 09                                           je     0x47c879
  0047c870: 50                                              push   eax
  0047c871: e8 1a 1c 05 00                                  call   0x4ce490
  0047c876: 83 c4 04                                        add    esp,0x4
  0047c879: 56                                              push   esi
  0047c87a: e8 e1 57 fc ff                                  call   0x442060
  0047c87f: 83 c4 04                                        add    esp,0x4
  0047c882: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0047c885: 8b c7                                           mov    eax,edi
  0047c887: 5f                                              pop    edi
  0047c888: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0047c88f: 5e                                              pop    esi
  0047c890: 8b e5                                           mov    esp,ebp
  0047c892: 5d                                              pop    ebp
  0047c893: c2 10 00                                        ret    0x10
  004852c0: 55                                              push   ebp
  004852c1: 8b ec                                           mov    ebp,esp
  004852c3: 6a ff                                           push   0xffffffff
  004852c5: 68 b1 a2 4d 00                                  push   0x4da2b1
  004852ca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004852d0: 50                                              push   eax
  004852d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004852d8: 83 ec 40                                        sub    esp,0x40
  004852db: 53                                              push   ebx
  004852dc: 56                                              push   esi
  004852dd: 57                                              push   edi
  004852de: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004852e1: 8b f1                                           mov    esi,ecx
  004852e3: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004852e6: 57                                              push   edi
  004852e7: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004852ea: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004852ed: e8 5a c7 04 00                                  call   0x4d1a4c
  004852f2: 66 8b 47 04                                     mov    ax,WORD PTR [edi+0x4]
  004852f6: 66 89 45 e4                                     mov    WORD PTR [ebp-0x1c],ax
  004852fa: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004852fd: 85 c0                                           test   eax,eax
  004852ff: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00485306: 75 04                                           jne    0x48530c
  00485308: 33 d2                                           xor    edx,edx
  0048530a: eb 0d                                           jmp    0x485319
  0048530c: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0048530f: 2b c8                                           sub    ecx,eax
  00485311: c1 f9 03                                        sar    ecx,0x3
  00485314: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  00485317: 8b d1                                           mov    edx,ecx
  00485319: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0048531c: 85 db                                           test   ebx,ebx
  0048531e: 0f 84 26 03 00 00                               je     0x48564a
  00485324: 85 c0                                           test   eax,eax
  00485326: 75 04                                           jne    0x48532c
  00485328: 33 c9                                           xor    ecx,ecx
  0048532a: eb 08                                           jmp    0x485334
  0048532c: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0048532f: 2b c8                                           sub    ecx,eax
  00485331: c1 f9 03                                        sar    ecx,0x3
  00485334: bf ff ff ff 1f                                  mov    edi,0x1fffffff
  00485339: 2b f9                                           sub    edi,ecx
  0048533b: 3b fb                                           cmp    edi,ebx
  0048533d: 73 2c                                           jae    0x48536b
  0048533f: 68 80 05 50 00                                  push   0x500580
  00485344: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00485347: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  0048534d: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00485350: 51                                              push   ecx
  00485351: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  00485354: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00485358: e8 c3 00 f8 ff                                  call   0x405420
  0048535d: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00485362: 8d 55 b4                                        lea    edx,[ebp-0x4c]
  00485365: 52                                              push   edx
  00485366: e8 eb c9 04 00                                  call   0x4d1d56
  0048536b: 85 c0                                           test   eax,eax
  0048536d: 75 04                                           jne    0x485373
  0048536f: 33 c9                                           xor    ecx,ecx
  00485371: eb 08                                           jmp    0x48537b
  00485373: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00485376: 2b c8                                           sub    ecx,eax
  00485378: c1 f9 03                                        sar    ecx,0x3
  0048537b: 03 cb                                           add    ecx,ebx
  0048537d: 3b d1                                           cmp    edx,ecx
  0048537f: 0f 83 66 01 00 00                               jae    0x4854eb
  00485385: 8b ca                                           mov    ecx,edx
  00485387: d1 e9                                           shr    ecx,1
  00485389: bf ff ff ff 1f                                  mov    edi,0x1fffffff
  0048538e: 2b f9                                           sub    edi,ecx
  00485390: 3b fa                                           cmp    edi,edx
  00485392: 73 0c                                           jae    0x4853a0
  00485394: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  0048539b: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0048539e: eb 05                                           jmp    0x4853a5
  004853a0: 03 d1                                           add    edx,ecx
  004853a2: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004853a5: 85 c0                                           test   eax,eax
  004853a7: 75 04                                           jne    0x4853ad
  004853a9: 33 c9                                           xor    ecx,ecx
  004853ab: eb 08                                           jmp    0x4853b5
  004853ad: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004853b0: 2b c8                                           sub    ecx,eax
  004853b2: c1 f9 03                                        sar    ecx,0x3
  004853b5: 03 cb                                           add    ecx,ebx
  004853b7: 3b d1                                           cmp    edx,ecx
  004853b9: 73 17                                           jae    0x4853d2
  004853bb: 85 c0                                           test   eax,eax
  004853bd: 75 04                                           jne    0x4853c3
  004853bf: 33 c9                                           xor    ecx,ecx
  004853c1: eb 08                                           jmp    0x4853cb
  004853c3: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004853c6: 2b c8                                           sub    ecx,eax
  004853c8: c1 f9 03                                        sar    ecx,0x3
  004853cb: 03 cb                                           add    ecx,ebx
  004853cd: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  004853d0: 8b d1                                           mov    edx,ecx
  004853d2: 8d 04 d5 00 00 00 00                            lea    eax,[edx*8+0x0]
  004853d9: 50                                              push   eax
  004853da: e8 11 cc fb ff                                  call   0x441ff0
  004853df: 83 c4 04                                        add    esp,0x4
  004853e2: 8b f8                                           mov    edi,eax
  004853e4: 57                                              push   edi
  004853e5: 51                                              push   ecx
  004853e6: 8d 55 08                                        lea    edx,[ebp+0x8]
  004853e9: 8b cc                                           mov    ecx,esp
  004853eb: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004853ee: 52                                              push   edx
  004853ef: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004853f2: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004853f5: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004853f9: e8 d2 fd ff ff                                  call   0x4851d0
  004853fe: 51                                              push   ecx
  004853ff: 8b c4                                           mov    eax,esp
  00485401: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00485404: 50                                              push   eax
  00485405: 8b ce                                           mov    ecx,esi
  00485407: e8 44 fc ff ff                                  call   0x485050
  0048540c: 8b ce                                           mov    ecx,esi
  0048540e: e8 dd 06 00 00                                  call   0x485af0
  00485413: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00485416: 51                                              push   ecx
  00485417: 53                                              push   ebx
  00485418: 50                                              push   eax
  00485419: 8b ce                                           mov    ecx,esi
  0048541b: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0048541e: e8 ad 02 00 00                                  call   0x4856d0
  00485423: 50                                              push   eax
  00485424: 51                                              push   ecx
  00485425: 8b d4                                           mov    edx,esp
  00485427: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0048542a: 52                                              push   edx
  0048542b: 8b ce                                           mov    ecx,esi
  0048542d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00485430: e8 2b fc ff ff                                  call   0x485060
  00485435: 51                                              push   ecx
  00485436: 8d 45 08                                        lea    eax,[ebp+0x8]
  00485439: 8b cc                                           mov    ecx,esp
  0048543b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0048543e: 50                                              push   eax
  0048543f: e8 8c fd ff ff                                  call   0x4851d0
  00485444: 8b ce                                           mov    ecx,esi
  00485446: e8 a5 06 00 00                                  call   0x485af0
  0048544b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048544e: 85 c0                                           test   eax,eax
  00485450: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00485457: 74 2c                                           je     0x485485
  00485459: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0048545c: 8b f8                                           mov    edi,eax
  0048545e: 3b f9                                           cmp    edi,ecx
  00485460: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00485463: 74 11                                           je     0x485476
  00485465: 8b cf                                           mov    ecx,edi
  00485467: e8 d4 c5 04 00                                  call   0x4d1a40
  0048546c: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0048546f: 83 c7 08                                        add    edi,0x8
  00485472: 3b f8                                           cmp    edi,eax
  00485474: 75 ef                                           jne    0x485465
  00485476: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00485479: 50                                              push   eax
  0048547a: e8 e1 cb fb ff                                  call   0x442060
  0048547f: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  00485482: 83 c4 04                                        add    esp,0x4
  00485485: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00485488: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  0048548b: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0048548e: 85 c9                                           test   ecx,ecx
  00485490: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  00485493: 75 12                                           jne    0x4854a7
  00485495: 33 c0                                           xor    eax,eax
  00485497: 8b c3                                           mov    eax,ebx
  00485499: 8d 04 c7                                        lea    eax,[edi+eax*8]
  0048549c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0048549f: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004854a2: e9 a3 01 00 00                                  jmp    0x48564a
  004854a7: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004854aa: 2b c1                                           sub    eax,ecx
  004854ac: c1 f8 03                                        sar    eax,0x3
  004854af: 03 c3                                           add    eax,ebx
  004854b1: 8d 04 c7                                        lea    eax,[edi+eax*8]
  004854b4: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004854b7: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004854ba: e9 8b 01 00 00                                  jmp    0x48564a
  004854eb: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004854ee: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004854f1: 8b d0                                           mov    edx,eax
  004854f3: 2b d1                                           sub    edx,ecx
  004854f5: c1 fa 03                                        sar    edx,0x3
  004854f8: 3b d3                                           cmp    edx,ebx
  004854fa: 0f 83 bc 00 00 00                               jae    0x4855bc
  00485500: 8d 3c dd 00 00 00 00                            lea    edi,[ebx*8+0x0]
  00485507: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0048550a: 50                                              push   eax
  0048550b: 51                                              push   ecx
  0048550c: 8b cc                                           mov    ecx,esp
  0048550e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00485511: 51                                              push   ecx
  00485512: 8b ce                                           mov    ecx,esi
  00485514: e8 47 fb ff ff                                  call   0x485060
  00485519: 51                                              push   ecx
  0048551a: 8d 55 08                                        lea    edx,[ebp+0x8]
  0048551d: 8b cc                                           mov    ecx,esp
  0048551f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00485522: 52                                              push   edx
  00485523: e8 a8 fc ff ff                                  call   0x4851d0
  00485528: 8b ce                                           mov    ecx,esi
  0048552a: e8 c1 05 00 00                                  call   0x485af0
  0048552f: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00485532: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00485535: 51                                              push   ecx
  00485536: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00485539: 8b d0                                           mov    edx,eax
  0048553b: 2b d1                                           sub    edx,ecx
  0048553d: c1 fa 03                                        sar    edx,0x3
  00485540: 8b cb                                           mov    ecx,ebx
  00485542: 2b ca                                           sub    ecx,edx
  00485544: 51                                              push   ecx
  00485545: 50                                              push   eax
  00485546: 8b ce                                           mov    ecx,esi
  00485548: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0048554c: e8 7f 01 00 00                                  call   0x4856d0
  00485551: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00485554: 03 cf                                           add    ecx,edi
  00485556: 8d 55 e0                                        lea    edx,[ebp-0x20]
  00485559: 52                                              push   edx
  0048555a: 51                                              push   ecx
  0048555b: 8b c4                                           mov    eax,esp
  0048555d: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  00485560: 53                                              push   ebx
  00485561: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00485564: 50                                              push   eax
  00485565: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00485568: 51                                              push   ecx
  00485569: 8b ce                                           mov    ecx,esi
  0048556b: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00485572: e8 e9 fa ff ff                                  call   0x485060
  00485577: 8b c8                                           mov    ecx,eax
  00485579: e8 f2 01 00 00                                  call   0x485770
  0048557e: 51                                              push   ecx
  0048557f: 8d 55 08                                        lea    edx,[ebp+0x8]
  00485582: 8b cc                                           mov    ecx,esp
  00485584: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00485587: 52                                              push   edx
  00485588: e9 b0 00 00 00                                  jmp    0x48563d
  004855bc: 50                                              push   eax
  004855bd: 51                                              push   ecx
  004855be: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004855c1: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004855c4: 8b cc                                           mov    ecx,esp
  004855c6: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004855c9: 50                                              push   eax
  004855ca: e8 01 fc ff ff                                  call   0x4851d0
  004855cf: 51                                              push   ecx
  004855d0: 8b cc                                           mov    ecx,esp
  004855d2: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004855d5: 53                                              push   ebx
  004855d6: 51                                              push   ecx
  004855d7: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004855da: e8 91 01 00 00                                  call   0x485770
  004855df: 8b ce                                           mov    ecx,esi
  004855e1: e8 0a 05 00 00                                  call   0x485af0
  004855e6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004855e9: 51                                              push   ecx
  004855ea: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004855ed: 8b c4                                           mov    eax,esp
  004855ef: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004855f2: 51                                              push   ecx
  004855f3: 89 10                                           mov    DWORD PTR [eax],edx
  004855f5: 8b c4                                           mov    eax,esp
  004855f7: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004855fa: 53                                              push   ebx
  004855fb: 50                                              push   eax
  004855fc: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004855ff: e8 6c 01 00 00                                  call   0x485770
  00485604: 51                                              push   ecx
  00485605: 8d 55 08                                        lea    edx,[ebp+0x8]
  00485608: 8b cc                                           mov    ecx,esp
  0048560a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0048560d: 52                                              push   edx
  0048560e: e8 bd fb ff ff                                  call   0x4851d0
  00485613: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00485616: 50                                              push   eax
  00485617: e8 a4 05 00 00                                  call   0x485bc0
  0048561c: 83 c4 10                                        add    esp,0x10
  0048561f: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00485622: 51                                              push   ecx
  00485623: 51                                              push   ecx
  00485624: 8b d4                                           mov    edx,esp
  00485626: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00485629: 53                                              push   ebx
  0048562a: 52                                              push   edx
  0048562b: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0048562e: e8 3d 00 00 00                                  call   0x485670
  00485633: 51                                              push   ecx
  00485634: 8d 45 08                                        lea    eax,[ebp+0x8]
  00485637: 8b cc                                           mov    ecx,esp
  00485639: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0048563c: 50                                              push   eax
  0048563d: e8 8e fb ff ff                                  call   0x4851d0
  00485642: e8 49 05 00 00                                  call   0x485b90
  00485647: 83 c4 0c                                        add    esp,0xc
  0048564a: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0048564d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00485654: e8 e7 c3 04 00                                  call   0x4d1a40
  00485659: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048565c: 5f                                              pop    edi
  0048565d: 5e                                              pop    esi
  0048565e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00485665: 5b                                              pop    ebx
  00485666: 8b e5                                           mov    esp,ebp
  00485668: 5d                                              pop    ebp
  00485669: c2 0c 00                                        ret    0xc
  00485ab0: 55                                              push   ebp
  00485ab1: 8b ec                                           mov    ebp,esp
  00485ab3: 53                                              push   ebx
  00485ab4: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00485ab7: 56                                              push   esi
  00485ab8: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00485abb: 3b f3                                           cmp    esi,ebx
  00485abd: 74 25                                           je     0x485ae4
  00485abf: 57                                              push   edi
  00485ac0: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00485ac3: 56                                              push   esi
  00485ac4: 8b cf                                           mov    ecx,edi
  00485ac6: e8 7b bf 04 00                                  call   0x4d1a46
  00485acb: 66 8b 46 04                                     mov    ax,WORD PTR [esi+0x4]
  00485acf: 66 89 47 04                                     mov    WORD PTR [edi+0x4],ax
  00485ad3: 83 c6 08                                        add    esi,0x8
  00485ad6: 83 c7 08                                        add    edi,0x8
  00485ad9: 3b f3                                           cmp    esi,ebx
  00485adb: 75 e6                                           jne    0x485ac3
  00485add: 8b c7                                           mov    eax,edi
  00485adf: 5f                                              pop    edi
  00485ae0: 5e                                              pop    esi
  00485ae1: 5b                                              pop    ebx
  00485ae2: 5d                                              pop    ebp
  00485ae3: c3                                              ret
  00485ae4: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00485ae7: 5e                                              pop    esi
  00485ae8: 5b                                              pop    ebx
  00485ae9: 5d                                              pop    ebp
  00485aea: c3                                              ret
  00487090: 55                                              push   ebp
  00487091: 8b ec                                           mov    ebp,esp
  00487093: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00487096: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00487099: 56                                              push   esi
  0048709a: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0048709d: 3b ce                                           cmp    ecx,esi
  0048709f: 74 0a                                           je     0x4870ab
  004870a1: 8a 11                                           mov    dl,BYTE PTR [ecx]
  004870a3: 88 10                                           mov    BYTE PTR [eax],dl
  004870a5: 40                                              inc    eax
  004870a6: 41                                              inc    ecx
  004870a7: 3b ce                                           cmp    ecx,esi
  004870a9: 75 f6                                           jne    0x4870a1
  004870ab: 5e                                              pop    esi
  004870ac: 5d                                              pop    ebp
  004870ad: c3                                              ret
  00488820: 55                                              push   ebp
  00488821: 8b ec                                           mov    ebp,esp
  00488823: 53                                              push   ebx
  00488824: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00488827: 56                                              push   esi
  00488828: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0048882b: 3b f3                                           cmp    esi,ebx
  0048882d: 74 1d                                           je     0x48884c
  0048882f: 57                                              push   edi
  00488830: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00488833: 56                                              push   esi
  00488834: 8b cf                                           mov    ecx,edi
  00488836: e8 0b 92 04 00                                  call   0x4d1a46
  0048883b: 83 c6 04                                        add    esi,0x4
  0048883e: 83 c7 04                                        add    edi,0x4
  00488841: 3b f3                                           cmp    esi,ebx
  00488843: 75 ee                                           jne    0x488833
  00488845: 8b c7                                           mov    eax,edi
  00488847: 5f                                              pop    edi
  00488848: 5e                                              pop    esi
  00488849: 5b                                              pop    ebx
  0048884a: 5d                                              pop    ebp
  0048884b: c3                                              ret
  0048884c: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0048884f: 5e                                              pop    esi
  00488850: 5b                                              pop    ebx
  00488851: 5d                                              pop    ebp
  00488852: c3                                              ret
  00488860: 55                                              push   ebp
  00488861: 8b ec                                           mov    ebp,esp
  00488863: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00488866: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00488869: 3b ca                                           cmp    ecx,edx
  0048886b: 74 15                                           je     0x488882
  0048886d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00488870: 56                                              push   esi
  00488871: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00488873: 89 30                                           mov    DWORD PTR [eax],esi
  00488875: 83 c1 04                                        add    ecx,0x4
  00488878: 83 c0 04                                        add    eax,0x4
  0048887b: 3b ca                                           cmp    ecx,edx
  0048887d: 75 f2                                           jne    0x488871
  0048887f: 5e                                              pop    esi
  00488880: 5d                                              pop    ebp
  00488881: c3                                              ret
  00488882: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00488885: 5d                                              pop    ebp
  00488886: c3                                              ret
  004b4660: 55                                              push   ebp
  004b4661: 8b ec                                           mov    ebp,esp
  004b4663: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004b4666: 3b 4d 0c                                        cmp    ecx,DWORD PTR [ebp+0xc]
  004b4669: 0f 84 57 01 00 00                               je     0x4b47c6
  004b466f: 53                                              push   ebx
  004b4670: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004b4673: 56                                              push   esi
  004b4674: 57                                              push   edi
  004b4675: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b467a: 8b 30                                           mov    esi,DWORD PTR [eax]
  004b467c: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  004b467f: 8b f8                                           mov    edi,eax
  004b4681: 3b f7                                           cmp    esi,edi
  004b4683: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004b4686: 73 05                                           jae    0x4b468d
  004b4688: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004b468b: 8b fe                                           mov    edi,esi
  004b468d: 3b d9                                           cmp    ebx,ecx
  004b468f: 75 6d                                           jne    0x4b46fe
  004b4691: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  004b4694: 73 0b                                           jae    0x4b46a1
  004b4696: 8b cb                                           mov    ecx,ebx
  004b4698: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004b469e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004b46a1: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004b46a4: 2b c7                                           sub    eax,edi
  004b46a6: 3b c6                                           cmp    eax,esi
  004b46a8: 73 02                                           jae    0x4b46ac
  004b46aa: 8b f0                                           mov    esi,eax
  004b46ac: 85 f6                                           test   esi,esi
  004b46ae: 0f 86 f7 00 00 00                               jbe    0x4b47ab
  004b46b4: 8b cb                                           mov    ecx,ebx
  004b46b6: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004b46bc: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  004b46bf: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004b46c2: 2b d6                                           sub    edx,esi
  004b46c4: 8d 04 39                                        lea    eax,[ecx+edi*1]
  004b46c7: 2b d7                                           sub    edx,edi
  004b46c9: 52                                              push   edx
  004b46ca: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  004b46cd: 51                                              push   ecx
  004b46ce: 50                                              push   eax
  004b46cf: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004b46d5: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004b46d8: 83 c4 0c                                        add    esp,0xc
  004b46db: 6a 00                                           push   0x0
  004b46dd: 2b fe                                           sub    edi,esi
  004b46df: 57                                              push   edi
  004b46e0: 8b cb                                           mov    ecx,ebx
  004b46e2: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004b46e8: 84 c0                                           test   al,al
  004b46ea: 0f 84 b8 00 00 00                               je     0x4b47a8
  004b46f0: 57                                              push   edi
  004b46f1: 8b cb                                           mov    ecx,ebx
  004b46f3: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004b46f9: e9 aa 00 00 00                                  jmp    0x4b47a8
  004b46fe: 33 f6                                           xor    esi,esi
  004b4700: 3b fe                                           cmp    edi,esi
  004b4702: 76 65                                           jbe    0x4b4769
  004b4704: 3b f8                                           cmp    edi,eax
  004b4706: 75 61                                           jne    0x4b4769
  004b4708: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004b470b: 3b c6                                           cmp    eax,esi
  004b470d: 75 05                                           jne    0x4b4714
  004b470f: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004b4714: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004b4718: 73 4f                                           jae    0x4b4769
  004b471a: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004b471d: 3b c6                                           cmp    eax,esi
  004b471f: 74 1f                                           je     0x4b4740
  004b4721: 8d 50 ff                                        lea    edx,[eax-0x1]
  004b4724: 8a 02                                           mov    al,BYTE PTR [edx]
  004b4726: 84 c0                                           test   al,al
  004b4728: 74 0a                                           je     0x4b4734
  004b472a: 3c ff                                           cmp    al,0xff
  004b472c: 74 06                                           je     0x4b4734
  004b472e: fe c8                                           dec    al
  004b4730: 88 02                                           mov    BYTE PTR [edx],al
  004b4732: eb 0c                                           jmp    0x4b4740
  004b4734: 52                                              push   edx
  004b4735: e8 26 d9 f8 ff                                  call   0x442060
  004b473a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004b473d: 83 c4 04                                        add    esp,0x4
  004b4740: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  004b4743: 89 73 08                                        mov    DWORD PTR [ebx+0x8],esi
  004b4746: 89 73 0c                                        mov    DWORD PTR [ebx+0xc],esi
  004b4749: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004b474c: 3b c6                                           cmp    eax,esi
  004b474e: 75 05                                           jne    0x4b4755
  004b4750: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004b4755: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004b4758: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004b475b: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004b475e: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  004b4761: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004b4764: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004b4767: eb 42                                           jmp    0x4b47ab
  004b4769: 6a 01                                           push   0x1
  004b476b: 57                                              push   edi
  004b476c: 8b cb                                           mov    ecx,ebx
  004b476e: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004b4774: 84 c0                                           test   al,al
  004b4776: 74 30                                           je     0x4b47a8
  004b4778: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b477b: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  004b477e: 85 f6                                           test   esi,esi
  004b4780: 75 06                                           jne    0x4b4788
  004b4782: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004b4788: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b478b: 8b cf                                           mov    ecx,edi
  004b478d: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004b4790: 8b d1                                           mov    edx,ecx
  004b4792: c1 e9 02                                        shr    ecx,0x2
  004b4795: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004b4797: 8b ca                                           mov    ecx,edx
  004b4799: 83 e1 03                                        and    ecx,0x3
  004b479c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004b479e: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004b47a1: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004b47a4: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  004b47a8: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004b47ab: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004b47ae: 83 c1 10                                        add    ecx,0x10
  004b47b1: 83 c3 10                                        add    ebx,0x10
  004b47b4: 3b c8                                           cmp    ecx,eax
  004b47b6: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  004b47b9: 0f 85 b6 fe ff ff                               jne    0x4b4675
  004b47bf: 5f                                              pop    edi
  004b47c0: 5e                                              pop    esi
  004b47c1: 8b c3                                           mov    eax,ebx
  004b47c3: 5b                                              pop    ebx
  004b47c4: 5d                                              pop    ebp
  004b47c5: c3                                              ret
  004b47c6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b47c9: 5d                                              pop    ebp
  004b47ca: c3                                              ret
  004b5250: c7 01 50 fb 4d 00                               mov    DWORD PTR [ecx],0x4dfb50
  004b5256: e9 d5 f8 ff ff                                  jmp    0x4b4b30
  004b8e70: 55                                              push   ebp
  004b8e71: 8b ec                                           mov    ebp,esp
  004b8e73: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004b8e76: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b8e79: 89 08                                           mov    DWORD PTR [eax],ecx
  004b8e7b: 5d                                              pop    ebp
  004b8e7c: c2 04 00                                        ret    0x4
  004bb5e0: 55                                              push   ebp
  004bb5e1: 8b ec                                           mov    ebp,esp
  004bb5e3: 6a ff                                           push   0xffffffff
  004bb5e5: 68 d9 d2 4d 00                                  push   0x4dd2d9
  004bb5ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004bb5f0: 50                                              push   eax
  004bb5f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004bb5f8: 83 ec 34                                        sub    esp,0x34
  004bb5fb: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004bb5fe: 56                                              push   esi
  004bb5ff: 8b f1                                           mov    esi,ecx
  004bb601: 8a 48 21                                        mov    cl,BYTE PTR [eax+0x21]
  004bb604: 84 c9                                           test   cl,cl
  004bb606: 57                                              push   edi
  004bb607: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004bb60a: 74 57                                           je     0x4bb663
  004bb60c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  004bb60f: 6a 00                                           push   0x0
  004bb611: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004bb614: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  004bb617: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004bb61d: 83 c9 ff                                        or     ecx,0xffffffff
  004bb620: 33 c0                                           xor    eax,eax
  004bb622: bf 40 05 50 00                                  mov    edi,0x500540
  004bb627: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004bb629: f7 d1                                           not    ecx
  004bb62b: 49                                              dec    ecx
  004bb62c: 51                                              push   ecx
  004bb62d: 68 40 05 50 00                                  push   0x500540
  004bb632: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004bb635: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  004bb63b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004bb63e: 51                                              push   ecx
  004bb63f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004bb642: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004bb649: e8 32 9a f4 ff                                  call   0x405080
  004bb64e: 68 18 0a 4e 00                                  push   0x4e0a18
  004bb653: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004bb656: 52                                              push   edx
  004bb657: c7 45 c0 e0 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5e0
  004bb65e: e8 f3 66 01 00                                  call   0x4d1d56
  004bb663: 53                                              push   ebx
  004bb664: 8b d8                                           mov    ebx,eax
  004bb666: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004bb669: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004bb66c: e8 af 09 00 00                                  call   0x4bc020
  004bb671: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004bb673: 8a 42 21                                        mov    al,BYTE PTR [edx+0x21]
  004bb676: 84 c0                                           test   al,al
  004bb678: 74 05                                           je     0x4bb67f
  004bb67a: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004bb67d: eb 2b                                           jmp    0x4bb6aa
  004bb67f: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004bb682: 8a 41 21                                        mov    al,BYTE PTR [ecx+0x21]
  004bb685: 84 c0                                           test   al,al
  004bb687: 74 04                                           je     0x4bb68d
  004bb689: 8b fa                                           mov    edi,edx
  004bb68b: eb 1d                                           jmp    0x4bb6aa
  004bb68d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004bb68f: 80 78 21 00                                     cmp    BYTE PTR [eax+0x21],0x0
  004bb693: 75 0a                                           jne    0x4bb69f
  004bb695: 8b c8                                           mov    ecx,eax
  004bb697: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004bb699: 80 78 21 00                                     cmp    BYTE PTR [eax+0x21],0x0
  004bb69d: 74 f6                                           je     0x4bb695
  004bb69f: 3b cb                                           cmp    ecx,ebx
  004bb6a1: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  004bb6a4: 0f 85 8a 00 00 00                               jne    0x4bb734
  004bb6aa: 8a 4f 21                                        mov    cl,BYTE PTR [edi+0x21]
  004bb6ad: 84 c9                                           test   cl,cl
  004bb6af: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004bb6b2: 75 03                                           jne    0x4bb6b7
  004bb6b4: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004bb6b7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004bb6ba: 39 59 04                                        cmp    DWORD PTR [ecx+0x4],ebx
  004bb6bd: 75 05                                           jne    0x4bb6c4
  004bb6bf: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  004bb6c2: eb 0b                                           jmp    0x4bb6cf
  004bb6c4: 39 18                                           cmp    DWORD PTR [eax],ebx
  004bb6c6: 75 04                                           jne    0x4bb6cc
  004bb6c8: 89 38                                           mov    DWORD PTR [eax],edi
  004bb6ca: eb 03                                           jmp    0x4bb6cf
  004bb6cc: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  004bb6cf: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004bb6d2: 39 1e                                           cmp    DWORD PTR [esi],ebx
  004bb6d4: 75 24                                           jne    0x4bb6fa
  004bb6d6: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004bb6d9: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  004bb6dc: 84 d2                                           test   dl,dl
  004bb6de: 74 04                                           je     0x4bb6e4
  004bb6e0: 89 06                                           mov    DWORD PTR [esi],eax
  004bb6e2: eb 16                                           jmp    0x4bb6fa
  004bb6e4: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  004bb6e6: 80 79 21 00                                     cmp    BYTE PTR [ecx+0x21],0x0
  004bb6ea: 8b d7                                           mov    edx,edi
  004bb6ec: 75 0a                                           jne    0x4bb6f8
  004bb6ee: 8b d1                                           mov    edx,ecx
  004bb6f0: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004bb6f2: 80 79 21 00                                     cmp    BYTE PTR [ecx+0x21],0x0
  004bb6f6: 74 f6                                           je     0x4bb6ee
  004bb6f8: 89 16                                           mov    DWORD PTR [esi],edx
  004bb6fa: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  004bb6fd: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  004bb700: 39 5e 08                                        cmp    DWORD PTR [esi+0x8],ebx
  004bb703: 0f 85 89 00 00 00                               jne    0x4bb792
  004bb709: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004bb70b: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  004bb70e: 84 d2                                           test   dl,dl
  004bb710: 74 05                                           je     0x4bb717
  004bb712: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004bb715: eb 7b                                           jmp    0x4bb792
  004bb717: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004bb71a: 8a 59 21                                        mov    bl,BYTE PTR [ecx+0x21]
  004bb71d: 84 db                                           test   bl,bl
  004bb71f: 8b d7                                           mov    edx,edi
  004bb721: 75 0c                                           jne    0x4bb72f
  004bb723: 8b d1                                           mov    edx,ecx
  004bb725: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  004bb728: 8a 59 21                                        mov    bl,BYTE PTR [ecx+0x21]
  004bb72b: 84 db                                           test   bl,bl
  004bb72d: 74 f4                                           je     0x4bb723
  004bb72f: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004bb732: eb 5e                                           jmp    0x4bb792
  004bb734: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004bb737: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004bb739: 89 11                                           mov    DWORD PTR [ecx],edx
  004bb73b: 3b 4b 08                                        cmp    ecx,DWORD PTR [ebx+0x8]
  004bb73e: 75 04                                           jne    0x4bb744
  004bb740: 8b c1                                           mov    eax,ecx
  004bb742: eb 1b                                           jmp    0x4bb75f
  004bb744: 8a 57 21                                        mov    dl,BYTE PTR [edi+0x21]
  004bb747: 84 d2                                           test   dl,dl
  004bb749: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004bb74c: 75 03                                           jne    0x4bb751
  004bb74e: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004bb751: 89 38                                           mov    DWORD PTR [eax],edi
  004bb753: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  004bb756: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004bb759: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  004bb75c: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004bb75f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004bb762: 39 5a 04                                        cmp    DWORD PTR [edx+0x4],ebx
  004bb765: 75 05                                           jne    0x4bb76c
  004bb767: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004bb76a: eb 0e                                           jmp    0x4bb77a
  004bb76c: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004bb76f: 39 1a                                           cmp    DWORD PTR [edx],ebx
  004bb771: 75 04                                           jne    0x4bb777
  004bb773: 89 0a                                           mov    DWORD PTR [edx],ecx
  004bb775: eb 03                                           jmp    0x4bb77a
  004bb777: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004bb77a: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004bb77d: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  004bb780: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  004bb783: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004bb786: 8a 5e 20                                        mov    bl,BYTE PTR [esi+0x20]
  004bb789: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  004bb78c: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  004bb78f: 88 56 20                                        mov    BYTE PTR [esi+0x20],dl
  004bb792: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004bb795: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  004bb798: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004bb79b: b3 01                                           mov    bl,0x1
  004bb79d: 3a d3                                           cmp    dl,bl
  004bb79f: 0f 85 58 02 00 00                               jne    0x4bb9fd
  004bb7a5: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004bb7a8: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  004bb7ab: 0f 84 49 02 00 00                               je     0x4bb9fa
  004bb7b1: 38 5f 20                                        cmp    BYTE PTR [edi+0x20],bl
  004bb7b4: 0f 85 40 02 00 00                               jne    0x4bb9fa
  004bb7ba: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004bb7bc: 3b f9                                           cmp    edi,ecx
  004bb7be: 75 71                                           jne    0x4bb831
  004bb7c0: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004bb7c3: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  004bb7c6: 84 d2                                           test   dl,dl
  004bb7c8: 75 43                                           jne    0x4bb80d
  004bb7ca: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  004bb7cd: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004bb7d0: c6 40 20 00                                     mov    BYTE PTR [eax+0x20],0x0
  004bb7d4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb7d6: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004bb7d9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb7db: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004bb7df: 75 03                                           jne    0x4bb7e4
  004bb7e1: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004bb7e4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bb7e7: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004bb7ea: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004bb7ed: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004bb7f0: 75 05                                           jne    0x4bb7f7
  004bb7f2: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004bb7f5: eb 0e                                           jmp    0x4bb805
  004bb7f7: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bb7fa: 3b 02                                           cmp    eax,DWORD PTR [edx]
  004bb7fc: 75 04                                           jne    0x4bb802
  004bb7fe: 89 0a                                           mov    DWORD PTR [edx],ecx
  004bb800: eb 03                                           jmp    0x4bb805
  004bb802: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004bb805: 89 01                                           mov    DWORD PTR [ecx],eax
  004bb807: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004bb80a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004bb80d: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  004bb810: 84 d2                                           test   dl,dl
  004bb812: 0f 85 86 00 00 00                               jne    0x4bb89e
  004bb818: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb81a: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  004bb81d: 0f 85 93 00 00 00                               jne    0x4bb8b6
  004bb823: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb826: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  004bb829: 0f 85 87 00 00 00                               jne    0x4bb8b6
  004bb82f: eb 69                                           jmp    0x4bb89a
  004bb831: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  004bb834: 84 d2                                           test   dl,dl
  004bb836: 75 44                                           jne    0x4bb87c
  004bb838: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  004bb83b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004bb83d: c6 40 20 00                                     mov    BYTE PTR [eax+0x20],0x0
  004bb841: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb844: 89 10                                           mov    DWORD PTR [eax],edx
  004bb846: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb849: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004bb84d: 75 03                                           jne    0x4bb852
  004bb84f: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004bb852: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bb855: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004bb858: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004bb85b: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004bb85e: 75 05                                           jne    0x4bb865
  004bb860: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004bb863: eb 0f                                           jmp    0x4bb874
  004bb865: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bb868: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  004bb86b: 75 05                                           jne    0x4bb872
  004bb86d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004bb870: eb 02                                           jmp    0x4bb874
  004bb872: 89 0a                                           mov    DWORD PTR [edx],ecx
  004bb874: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004bb877: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004bb87a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004bb87c: 8a 51 21                                        mov    dl,BYTE PTR [ecx+0x21]
  004bb87f: 84 d2                                           test   dl,dl
  004bb881: 75 1b                                           jne    0x4bb89e
  004bb883: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb886: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  004bb889: 0f 85 d0 00 00 00                               jne    0x4bb95f
  004bb88f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb891: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  004bb894: 0f 85 c5 00 00 00                               jne    0x4bb95f
  004bb89a: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  004bb89e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004bb8a1: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004bb8a4: 8b f8                                           mov    edi,eax
  004bb8a6: 3b fa                                           cmp    edi,edx
  004bb8a8: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004bb8ab: 0f 85 00 ff ff ff                               jne    0x4bb7b1
  004bb8b1: e9 44 01 00 00                                  jmp    0x4bb9fa
  004bb8b6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb8b9: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  004bb8bc: 75 4a                                           jne    0x4bb908
  004bb8be: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb8c0: 88 5a 20                                        mov    BYTE PTR [edx+0x20],bl
  004bb8c3: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb8c5: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  004bb8c9: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  004bb8cc: 89 31                                           mov    DWORD PTR [ecx],esi
  004bb8ce: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  004bb8d1: 80 7e 21 00                                     cmp    BYTE PTR [esi+0x21],0x0
  004bb8d5: 75 03                                           jne    0x4bb8da
  004bb8d7: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004bb8da: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004bb8dd: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  004bb8e0: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004bb8e3: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004bb8e6: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  004bb8e9: 75 05                                           jne    0x4bb8f0
  004bb8eb: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004bb8ee: eb 0f                                           jmp    0x4bb8ff
  004bb8f0: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004bb8f3: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  004bb8f6: 75 05                                           jne    0x4bb8fd
  004bb8f8: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004bb8fb: eb 02                                           jmp    0x4bb8ff
  004bb8fd: 89 16                                           mov    DWORD PTR [esi],edx
  004bb8ff: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004bb902: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004bb905: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004bb908: 8a 50 20                                        mov    dl,BYTE PTR [eax+0x20]
  004bb90b: 88 51 20                                        mov    BYTE PTR [ecx+0x20],dl
  004bb90e: 88 58 20                                        mov    BYTE PTR [eax+0x20],bl
  004bb911: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004bb914: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  004bb917: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004bb91a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb91c: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004bb91f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb921: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004bb925: 75 03                                           jne    0x4bb92a
  004bb927: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004bb92a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bb92d: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004bb930: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004bb933: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004bb936: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004bb939: 75 0a                                           jne    0x4bb945
  004bb93b: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004bb93e: 89 01                                           mov    DWORD PTR [ecx],eax
  004bb940: e9 b2 00 00 00                                  jmp    0x4bb9f7
  004bb945: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bb948: 3b 02                                           cmp    eax,DWORD PTR [edx]
  004bb94a: 75 09                                           jne    0x4bb955
  004bb94c: 89 0a                                           mov    DWORD PTR [edx],ecx
  004bb94e: 89 01                                           mov    DWORD PTR [ecx],eax
  004bb950: e9 a2 00 00 00                                  jmp    0x4bb9f7
  004bb955: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004bb958: 89 01                                           mov    DWORD PTR [ecx],eax
  004bb95a: e9 98 00 00 00                                  jmp    0x4bb9f7
  004bb95f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bb961: 38 5a 20                                        cmp    BYTE PTR [edx+0x20],bl
  004bb964: 75 48                                           jne    0x4bb9ae
  004bb966: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb969: 88 5a 20                                        mov    BYTE PTR [edx+0x20],bl
  004bb96c: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb96f: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  004bb973: 8b 32                                           mov    esi,DWORD PTR [edx]
  004bb975: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  004bb978: 8b 32                                           mov    esi,DWORD PTR [edx]
  004bb97a: 80 7e 21 00                                     cmp    BYTE PTR [esi+0x21],0x0
  004bb97e: 75 03                                           jne    0x4bb983
  004bb980: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004bb983: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004bb986: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  004bb989: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004bb98c: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004bb98f: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  004bb992: 75 05                                           jne    0x4bb999
  004bb994: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004bb997: eb 0e                                           jmp    0x4bb9a7
  004bb999: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004bb99c: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  004bb99e: 75 04                                           jne    0x4bb9a4
  004bb9a0: 89 16                                           mov    DWORD PTR [esi],edx
  004bb9a2: eb 03                                           jmp    0x4bb9a7
  004bb9a4: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004bb9a7: 89 0a                                           mov    DWORD PTR [edx],ecx
  004bb9a9: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004bb9ac: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004bb9ae: 8a 50 20                                        mov    dl,BYTE PTR [eax+0x20]
  004bb9b1: 88 51 20                                        mov    BYTE PTR [ecx+0x20],dl
  004bb9b4: 88 58 20                                        mov    BYTE PTR [eax+0x20],bl
  004bb9b7: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004bb9b9: 88 59 20                                        mov    BYTE PTR [ecx+0x20],bl
  004bb9bc: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004bb9be: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb9c1: 89 10                                           mov    DWORD PTR [eax],edx
  004bb9c3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004bb9c6: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004bb9ca: 75 03                                           jne    0x4bb9cf
  004bb9cc: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004bb9cf: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bb9d2: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004bb9d5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004bb9d8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004bb9db: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004bb9de: 75 05                                           jne    0x4bb9e5
  004bb9e0: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004bb9e3: eb 0f                                           jmp    0x4bb9f4
  004bb9e5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bb9e8: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  004bb9eb: 75 05                                           jne    0x4bb9f2
  004bb9ed: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004bb9f0: eb 02                                           jmp    0x4bb9f4
  004bb9f2: 89 0a                                           mov    DWORD PTR [edx],ecx
  004bb9f4: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004bb9f7: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004bb9fa: 88 5f 20                                        mov    BYTE PTR [edi+0x20],bl
  004bb9fd: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004bba00: 8b 40 10                                        mov    eax,DWORD PTR [eax+0x10]
  004bba03: 33 ff                                           xor    edi,edi
  004bba05: 3b c7                                           cmp    eax,edi
  004bba07: 5b                                              pop    ebx
  004bba08: 74 1c                                           je     0x4bba26
  004bba0a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004bba0d: 8a 01                                           mov    al,BYTE PTR [ecx]
  004bba0f: 84 c0                                           test   al,al
  004bba11: 74 0a                                           je     0x4bba1d
  004bba13: 3c ff                                           cmp    al,0xff
  004bba15: 74 06                                           je     0x4bba1d
  004bba17: fe c8                                           dec    al
  004bba19: 88 01                                           mov    BYTE PTR [ecx],al
  004bba1b: eb 09                                           jmp    0x4bba26
  004bba1d: 51                                              push   ecx
  004bba1e: e8 3d 66 f8 ff                                  call   0x442060
  004bba23: 83 c4 04                                        add    esp,0x4
  004bba26: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004bba29: 50                                              push   eax
  004bba2a: 89 78 10                                        mov    DWORD PTR [eax+0x10],edi
  004bba2d: 89 78 14                                        mov    DWORD PTR [eax+0x14],edi
  004bba30: 89 78 18                                        mov    DWORD PTR [eax+0x18],edi
  004bba33: e8 28 66 f8 ff                                  call   0x442060
  004bba38: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004bba3b: 83 c4 04                                        add    esp,0x4
  004bba3e: 3b c7                                           cmp    eax,edi
  004bba40: 76 04                                           jbe    0x4bba46
  004bba42: 48                                              dec    eax
  004bba43: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004bba46: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004bba49: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004bba4c: 89 08                                           mov    DWORD PTR [eax],ecx
  004bba4e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004bba51: 5f                                              pop    edi
  004bba52: 5e                                              pop    esi
  004bba53: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004bba5a: 8b e5                                           mov    esp,ebp
  004bba5c: 5d                                              pop    ebp
  004bba5d: c2 08 00                                        ret    0x8
  004bbca0: 55                                              push   ebp
  004bbca1: 8b ec                                           mov    ebp,esp
  004bbca3: 53                                              push   ebx
  004bbca4: 56                                              push   esi
  004bbca5: 57                                              push   edi
  004bbca6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004bbca9: 8a 47 21                                        mov    al,BYTE PTR [edi+0x21]
  004bbcac: 84 c0                                           test   al,al
  004bbcae: 8b d9                                           mov    ebx,ecx
  004bbcb0: 8b f7                                           mov    esi,edi
  004bbcb2: 75 27                                           jne    0x4bbcdb
  004bbcb4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004bbcb7: 50                                              push   eax
  004bbcb8: 8b cb                                           mov    ecx,ebx
  004bbcba: e8 e1 ff ff ff                                  call   0x4bbca0
  004bbcbf: 8b 36                                           mov    esi,DWORD PTR [esi]
  004bbcc1: 8d 4f 0c                                        lea    ecx,[edi+0xc]
  004bbcc4: e8 97 fd ff ff                                  call   0x4bba60
  004bbcc9: 57                                              push   edi
  004bbcca: e8 91 63 f8 ff                                  call   0x442060
  004bbccf: 8a 46 21                                        mov    al,BYTE PTR [esi+0x21]
  004bbcd2: 83 c4 04                                        add    esp,0x4
  004bbcd5: 84 c0                                           test   al,al
  004bbcd7: 8b fe                                           mov    edi,esi
  004bbcd9: 74 d9                                           je     0x4bbcb4
  004bbcdb: 5f                                              pop    edi
  004bbcdc: 5e                                              pop    esi
  004bbcdd: 5b                                              pop    ebx
  004bbcde: 5d                                              pop    ebp
  004bbcdf: c2 04 00                                        ret    0x4
  004bc020: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004bc022: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  004bc025: 84 d2                                           test   dl,dl
  004bc027: 53                                              push   ebx
  004bc028: 75 41                                           jne    0x4bc06b
  004bc02a: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  004bc02d: 8a 5a 21                                        mov    bl,BYTE PTR [edx+0x21]
  004bc030: 84 db                                           test   bl,bl
  004bc032: 75 18                                           jne    0x4bc04c
  004bc034: 8b 02                                           mov    eax,DWORD PTR [edx]
  004bc036: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  004bc039: 84 db                                           test   bl,bl
  004bc03b: 75 0b                                           jne    0x4bc048
  004bc03d: 8b d0                                           mov    edx,eax
  004bc03f: 8b 02                                           mov    eax,DWORD PTR [edx]
  004bc041: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  004bc044: 84 db                                           test   bl,bl
  004bc046: 74 f5                                           je     0x4bc03d
  004bc048: 89 11                                           mov    DWORD PTR [ecx],edx
  004bc04a: 5b                                              pop    ebx
  004bc04b: c3                                              ret
  004bc04c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004bc04f: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  004bc052: 84 d2                                           test   dl,dl
  004bc054: 75 13                                           jne    0x4bc069
  004bc056: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bc058: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  004bc05b: 75 0c                                           jne    0x4bc069
  004bc05d: 89 01                                           mov    DWORD PTR [ecx],eax
  004bc05f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004bc062: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  004bc065: 84 d2                                           test   dl,dl
  004bc067: 74 ed                                           je     0x4bc056
  004bc069: 89 01                                           mov    DWORD PTR [ecx],eax
  004bc06b: 5b                                              pop    ebx
  004bc06c: c3                                              ret
  004bc230: 55                                              push   ebp
  004bc231: 8b ec                                           mov    ebp,esp
  004bc233: 56                                              push   esi
  004bc234: 8b f1                                           mov    esi,ecx
  004bc236: e8 25 f8 ff ff                                  call   0x4bba60
  004bc23b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004bc23f: 74 09                                           je     0x4bc24a
  004bc241: 56                                              push   esi
  004bc242: e8 19 5e f8 ff                                  call   0x442060
  004bc247: 83 c4 04                                        add    esp,0x4
  004bc24a: 8b c6                                           mov    eax,esi
  004bc24c: 5e                                              pop    esi
  004bc24d: 5d                                              pop    ebp
  004bc24e: c2 04 00                                        ret    0x4
  004c27b0: a1 9c 71 55 00                                  mov    eax,ds:0x55719c
  004c27b5: 50                                              push   eax
  004c27b6: 6a 02                                           push   0x2
  004c27b8: 68 18 71 55 00                                  push   0x557118
  004c27bd: 68 80 2e 4c 00                                  push   0x4c2e80
  004c27c2: 6a 01                                           push   0x1
  004c27c4: 68 de 1e 00 00                                  push   0x1ede
  004c27c9: 68 7c ff 50 00                                  push   0x50ff7c
  004c27ce: e8 ad d7 f9 ff                                  call   0x45ff80
  004c27d3: 8b 0d 04 65 55 00                               mov    ecx,DWORD PTR ds:0x556504
  004c27d9: 51                                              push   ecx
  004c27da: 6a 02                                           push   0x2
  004c27dc: 68 98 70 55 00                                  push   0x557098
  004c27e1: 68 70 f3 4b 00                                  push   0x4bf370
  004c27e6: 6a 02                                           push   0x2
  004c27e8: 68 d9 1e 00 00                                  push   0x1ed9
  004c27ed: 68 68 ff 50 00                                  push   0x50ff68
  004c27f2: e8 89 d7 f9 ff                                  call   0x45ff80
  004c27f7: 8b 15 e8 64 55 00                               mov    edx,DWORD PTR ds:0x5564e8
  004c27fd: 52                                              push   edx
  004c27fe: 6a 01                                           push   0x1
  004c2800: 68 98 6f 55 00                                  push   0x556f98
  004c2805: 68 90 d9 4b 00                                  push   0x4bd990
  004c280a: 6a 04                                           push   0x4
  004c280c: 68 d3 1e 00 00                                  push   0x1ed3
  004c2811: 68 58 ff 50 00                                  push   0x50ff58
  004c2816: e8 65 d7 f9 ff                                  call   0x45ff80
  004c281b: a1 a0 fd 50 00                                  mov    eax,ds:0x50fda0
  004c2820: 83 c4 54                                        add    esp,0x54
  004c2823: 50                                              push   eax
  004c2824: 6a 20                                           push   0x20
  004c2826: 68 18 6f 55 00                                  push   0x556f18
  004c282b: 68 40 e9 4b 00                                  push   0x4be940
  004c2830: 6a 08                                           push   0x8
  004c2832: 68 d6 1e 00 00                                  push   0x1ed6
  004c2837: 68 4c ff 50 00                                  push   0x50ff4c
  004c283c: e8 3f d7 f9 ff                                  call   0x45ff80
  004c2841: 8b 0d f8 64 55 00                               mov    ecx,DWORD PTR ds:0x5564f8
  004c2847: 51                                              push   ecx
  004c2848: 6a 41                                           push   0x41
  004c284a: 68 98 6e 55 00                                  push   0x556e98
  004c284f: 68 a0 e6 4b 00                                  push   0x4be6a0
  004c2854: 6a 09                                           push   0x9
  004c2856: 68 d5 1e 00 00                                  push   0x1ed5
  004c285b: 68 3c ff 50 00                                  push   0x50ff3c
  004c2860: e8 1b d7 f9 ff                                  call   0x45ff80
  004c2865: 8b 15 00 65 55 00                               mov    edx,DWORD PTR ds:0x556500
  004c286b: 52                                              push   edx
  004c286c: 68 00 01 00 00                                  push   0x100
  004c2871: 68 98 6d 55 00                                  push   0x556d98
  004c2876: 68 90 f1 4b 00                                  push   0x4bf190
  004c287b: 6a 1a                                           push   0x1a
  004c287d: 68 d8 1e 00 00                                  push   0x1ed8
  004c2882: 68 2c ff 50 00                                  push   0x50ff2c
  004c2887: e8 f4 d6 f9 ff                                  call   0x45ff80
  004c288c: a1 d8 64 55 00                                  mov    eax,ds:0x5564d8
  004c2891: 83 c4 54                                        add    esp,0x54
  004c2894: 50                                              push   eax
  004c2895: 6a 02                                           push   0x2
  004c2897: 68 18 6b 55 00                                  push   0x556b18
  004c289c: 68 10 d0 4b 00                                  push   0x4bd010
  004c28a1: 6a 1b                                           push   0x1b
  004c28a3: 68 d0 1e 00 00                                  push   0x1ed0
  004c28a8: 68 14 ff 50 00                                  push   0x50ff14
  004c28ad: e8 ce d6 f9 ff                                  call   0x45ff80
  004c28b2: 8b 0d fc 64 55 00                               mov    ecx,DWORD PTR ds:0x5564fc
  004c28b8: 51                                              push   ecx
  004c28b9: 68 01 01 00 00                                  push   0x101
  004c28be: 68 98 6a 55 00                                  push   0x556a98
  004c28c3: 68 60 ea 4b 00                                  push   0x4bea60
  004c28c8: 6a 1c                                           push   0x1c
  004c28ca: 68 d7 1e 00 00                                  push   0x1ed7
  004c28cf: 68 08 ff 50 00                                  push   0x50ff08
  004c28d4: e8 a7 d6 f9 ff                                  call   0x45ff80
  004c28d9: 8b 15 0c 65 55 00                               mov    edx,DWORD PTR ds:0x55650c
  004c28df: 52                                              push   edx
  004c28e0: 68 01 01 00 00                                  push   0x101
  004c28e5: 68 18 6a 55 00                                  push   0x556a18
  004c28ea: 68 a0 f6 4b 00                                  push   0x4bf6a0
  004c28ef: 6a 0f                                           push   0xf
  004c28f1: 68 db 1e 00 00                                  push   0x1edb
  004c28f6: 68 fc fe 50 00                                  push   0x50fefc
  004c28fb: e8 80 d6 f9 ff                                  call   0x45ff80
  004c2900: a1 e4 64 55 00                                  mov    eax,ds:0x5564e4
  004c2905: 83 c4 54                                        add    esp,0x54
  004c2908: 50                                              push   eax
  004c2909: 6a 40                                           push   0x40
  004c290b: 68 98 69 55 00                                  push   0x556998
  004c2910: 68 80 d7 4b 00                                  push   0x4bd780
  004c2915: 6a 1d                                           push   0x1d
  004c2917: 68 da 1e 00 00                                  push   0x1eda
  004c291c: 68 e8 fe 50 00                                  push   0x50fee8
  004c2921: e8 5a d6 f9 ff                                  call   0x45ff80
  004c2926: 8b 0d f4 64 55 00                               mov    ecx,DWORD PTR ds:0x5564f4
  004c292c: 51                                              push   ecx
  004c292d: 68 00 01 00 00                                  push   0x100
  004c2932: 68 18 66 55 00                                  push   0x556618
  004c2937: 68 30 e1 4b 00                                  push   0x4be130
  004c293c: 6a 0e                                           push   0xe
  004c293e: 68 d4 1e 00 00                                  push   0x1ed4
  004c2943: 68 dc fe 50 00                                  push   0x50fedc
  004c2948: e8 33 d6 f9 ff                                  call   0x45ff80
  004c294d: 8b 15 98 71 55 00                               mov    edx,DWORD PTR ds:0x557198
  004c2953: 52                                              push   edx
  004c2954: 6a 10                                           push   0x10
  004c2956: 68 98 65 55 00                                  push   0x556598
  004c295b: 68 40 2b 4c 00                                  push   0x4c2b40
  004c2960: 6a 10                                           push   0x10
  004c2962: 68 dd 1e 00 00                                  push   0x1edd
  004c2967: 68 d0 fe 50 00                                  push   0x50fed0
  004c296c: e8 0f d6 f9 ff                                  call   0x45ff80
  004c2971: a1 14 65 55 00                                  mov    eax,ds:0x556514
  004c2976: 83 c4 54                                        add    esp,0x54
  004c2979: 50                                              push   eax
  004c297a: 6a 01                                           push   0x1
  004c297c: 68 18 65 55 00                                  push   0x556518
  004c2981: 68 c0 06 4c 00                                  push   0x4c06c0
  004c2986: 6a 11                                           push   0x11
  004c2988: 68 dc 1e 00 00                                  push   0x1edc
  004c298d: 68 c0 fe 50 00                                  push   0x50fec0
  004c2992: e8 e9 d5 f9 ff                                  call   0x45ff80
  004c2997: 8b 0d ec 64 55 00                               mov    ecx,DWORD PTR ds:0x5564ec
  004c299d: 51                                              push   ecx
  004c299e: 68 00 02 00 00                                  push   0x200
  004c29a3: 68 98 66 55 00                                  push   0x556698
  004c29a8: 68 b0 df 4b 00                                  push   0x4bdfb0
  004c29ad: 6a 23                                           push   0x23
  004c29af: 68 cf 1e 00 00                                  push   0x1ecf
  004c29b4: 68 b0 fe 50 00                                  push   0x50feb0
  004c29b9: e8 c2 d5 f9 ff                                  call   0x45ff80
  004c29be: 83 c4 38                                        add    esp,0x38
  004c29c1: c3                                              ret
  004cdb40: 68 80 b2 4c 00                                  push   0x4cb280
  004cdb45: e8 16 45 fa ff                                  call   0x472060
  004cdb4a: 68 a0 da 4c 00                                  push   0x4cdaa0
  004cdb4f: 6a 01                                           push   0x1
  004cdb51: e8 ca 99 f6 ff                                  call   0x437520
  004cdb56: 68 c0 7e 4c 00                                  push   0x4c7ec0
  004cdb5b: 6a 02                                           push   0x2
  004cdb5d: e8 be 99 f6 ff                                  call   0x437520
  004cdb62: 68 b0 80 4c 00                                  push   0x4c80b0
  004cdb67: 6a 03                                           push   0x3
  004cdb69: e8 b2 99 f6 ff                                  call   0x437520
  004cdb6e: 68 40 8e 4c 00                                  push   0x4c8e40
  004cdb73: 6a 04                                           push   0x4
  004cdb75: e8 a6 99 f6 ff                                  call   0x437520
  004cdb7a: 68 20 97 4c 00                                  push   0x4c9720
  004cdb7f: 6a 05                                           push   0x5
  004cdb81: e8 9a 99 f6 ff                                  call   0x437520
  004cdb86: 68 10 98 4c 00                                  push   0x4c9810
  004cdb8b: 6a 06                                           push   0x6
  004cdb8d: e8 8e 99 f6 ff                                  call   0x437520
  004cdb92: 68 40 d6 4c 00                                  push   0x4cd640
  004cdb97: 6a 07                                           push   0x7
  004cdb99: e8 82 99 f6 ff                                  call   0x437520
  004cdb9e: 68 50 d9 4c 00                                  push   0x4cd950
  004cdba3: 6a 08                                           push   0x8
  004cdba5: e8 76 99 f6 ff                                  call   0x437520
  004cdbaa: 83 c4 44                                        add    esp,0x44
  004cdbad: 68 40 8f 4c 00                                  push   0x4c8f40
  004cdbb2: 6a 09                                           push   0x9
  004cdbb4: e8 67 99 f6 ff                                  call   0x437520
  004cdbb9: 68 b0 9a 4c 00                                  push   0x4c9ab0
  004cdbbe: 6a 0a                                           push   0xa
  004cdbc0: e8 5b 99 f6 ff                                  call   0x437520
  004cdbc5: 68 e0 d7 4c 00                                  push   0x4cd7e0
  004cdbca: 6a 0b                                           push   0xb
  004cdbcc: e8 4f 99 f6 ff                                  call   0x437520
  004cdbd1: 68 50 d9 4c 00                                  push   0x4cd950
  004cdbd6: 6a 0c                                           push   0xc
  004cdbd8: e8 43 99 f6 ff                                  call   0x437520
  004cdbdd: 68 20 82 4c 00                                  push   0x4c8220
  004cdbe2: 6a 0d                                           push   0xd
  004cdbe4: e8 37 99 f6 ff                                  call   0x437520
  004cdbe9: 6a 00                                           push   0x0
  004cdbeb: 6a 01                                           push   0x1
  004cdbed: 6a 03                                           push   0x3
  004cdbef: 68 94 58 50 00                                  push   0x505894
  004cdbf4: 68 c0 71 55 00                                  push   0x5571c0
  004cdbf9: 6a 01                                           push   0x1
  004cdbfb: e8 90 c0 fb ff                                  call   0x489c90
  004cdc00: 83 c4 40                                        add    esp,0x40
  004cdc03: 6a 00                                           push   0x0
  004cdc05: 6a 01                                           push   0x1
  004cdc07: 6a 03                                           push   0x3
  004cdc09: 68 88 58 50 00                                  push   0x505888
  004cdc0e: 68 f0 3a 56 00                                  push   0x563af0
  004cdc13: 6a 01                                           push   0x1
  004cdc15: e8 76 c0 fb ff                                  call   0x489c90
  004cdc1a: 6a 00                                           push   0x0
  004cdc1c: 6a 01                                           push   0x1
  004cdc1e: 6a 03                                           push   0x3
  004cdc20: 68 7c 58 50 00                                  push   0x50587c
  004cdc25: 68 a0 38 56 00                                  push   0x5638a0
  004cdc2a: 6a 01                                           push   0x1
  004cdc2c: e8 5f c0 fb ff                                  call   0x489c90
  004cdc31: 6a 00                                           push   0x0
  004cdc33: 6a 01                                           push   0x1
  004cdc35: 6a 03                                           push   0x3
  004cdc37: 68 70 58 50 00                                  push   0x505870
  004cdc3c: 68 50 36 56 00                                  push   0x563650
  004cdc41: 6a 01                                           push   0x1
  004cdc43: e8 48 c0 fb ff                                  call   0x489c90
  004cdc48: 83 c4 48                                        add    esp,0x48
  004cdc4b: 6a 00                                           push   0x0
  004cdc4d: 6a 01                                           push   0x1
  004cdc4f: 6a 03                                           push   0x3
  004cdc51: 68 64 58 50 00                                  push   0x505864
  004cdc56: 68 00 34 56 00                                  push   0x563400
  004cdc5b: 6a 01                                           push   0x1
  004cdc5d: e8 2e c0 fb ff                                  call   0x489c90
  004cdc62: 6a 00                                           push   0x0
  004cdc64: 6a 01                                           push   0x1
  004cdc66: 6a 03                                           push   0x3
  004cdc68: 68 58 58 50 00                                  push   0x505858
  004cdc6d: 68 b0 31 56 00                                  push   0x5631b0
  004cdc72: 6a 01                                           push   0x1
  004cdc74: e8 17 c0 fb ff                                  call   0x489c90
  004cdc79: 6a 00                                           push   0x0
  004cdc7b: 6a 01                                           push   0x1
  004cdc7d: 6a 03                                           push   0x3
  004cdc7f: 68 4c 58 50 00                                  push   0x50584c
  004cdc84: 68 60 2f 56 00                                  push   0x562f60
  004cdc89: 6a 01                                           push   0x1
  004cdc8b: e8 00 c0 fb ff                                  call   0x489c90
  004cdc90: 83 c4 48                                        add    esp,0x48
  004cdc93: 6a 00                                           push   0x0
  004cdc95: 6a 01                                           push   0x1
  004cdc97: 6a 03                                           push   0x3
  004cdc99: 68 40 58 50 00                                  push   0x505840
  004cdc9e: 68 10 2d 56 00                                  push   0x562d10
  004cdca3: 6a 01                                           push   0x1
  004cdca5: e8 e6 bf fb ff                                  call   0x489c90
  004cdcaa: 6a 00                                           push   0x0
  004cdcac: 6a 01                                           push   0x1
  004cdcae: 6a 03                                           push   0x3
  004cdcb0: 68 34 58 50 00                                  push   0x505834
  004cdcb5: 68 c0 2a 56 00                                  push   0x562ac0
  004cdcba: 6a 01                                           push   0x1
  004cdcbc: e8 cf bf fb ff                                  call   0x489c90
  004cdcc1: 6a 00                                           push   0x0
  004cdcc3: 6a 01                                           push   0x1
  004cdcc5: 6a 03                                           push   0x3
  004cdcc7: 68 28 58 50 00                                  push   0x505828
  004cdccc: 68 70 28 56 00                                  push   0x562870
  004cdcd1: 6a 01                                           push   0x1
  004cdcd3: e8 b8 bf fb ff                                  call   0x489c90
  004cdcd8: 83 c4 48                                        add    esp,0x48
  004cdcdb: 6a 00                                           push   0x0
  004cdcdd: 6a 01                                           push   0x1
  004cdcdf: 6a 03                                           push   0x3
  004cdce1: 68 1c 58 50 00                                  push   0x50581c
  004cdce6: 68 20 26 56 00                                  push   0x562620
  004cdceb: 6a 01                                           push   0x1
  004cdced: e8 9e bf fb ff                                  call   0x489c90
  004cdcf2: 6a 00                                           push   0x0
  004cdcf4: 6a 01                                           push   0x1
  004cdcf6: 6a 03                                           push   0x3
  004cdcf8: 68 10 58 50 00                                  push   0x505810
  004cdcfd: 68 d0 23 56 00                                  push   0x5623d0
  004cdd02: 6a 01                                           push   0x1
  004cdd04: e8 87 bf fb ff                                  call   0x489c90
  004cdd09: 6a 00                                           push   0x0
  004cdd0b: 6a 01                                           push   0x1
  004cdd0d: 6a 03                                           push   0x3
  004cdd0f: 68 04 58 50 00                                  push   0x505804
  004cdd14: 68 80 21 56 00                                  push   0x562180
  004cdd19: 6a 01                                           push   0x1
  004cdd1b: e8 70 bf fb ff                                  call   0x489c90
  004cdd20: 83 c4 48                                        add    esp,0x48
  004cdd23: 6a 00                                           push   0x0
  004cdd25: 6a 01                                           push   0x1
  004cdd27: 6a 03                                           push   0x3
  004cdd29: 68 f8 57 50 00                                  push   0x5057f8
  004cdd2e: 68 30 1f 56 00                                  push   0x561f30
  004cdd33: 6a 01                                           push   0x1
  004cdd35: e8 56 bf fb ff                                  call   0x489c90
  004cdd3a: 6a 00                                           push   0x0
  004cdd3c: 6a 01                                           push   0x1
  004cdd3e: 6a 03                                           push   0x3
  004cdd40: 68 ec 57 50 00                                  push   0x5057ec
  004cdd45: 68 e0 1c 56 00                                  push   0x561ce0
  004cdd4a: 6a 01                                           push   0x1
  004cdd4c: e8 3f bf fb ff                                  call   0x489c90
  004cdd51: 6a 00                                           push   0x0
  004cdd53: 6a 01                                           push   0x1
  004cdd55: 6a 03                                           push   0x3
  004cdd57: 68 e0 57 50 00                                  push   0x5057e0
  004cdd5c: 68 90 1a 56 00                                  push   0x561a90
  004cdd61: 6a 01                                           push   0x1
  004cdd63: e8 28 bf fb ff                                  call   0x489c90
  004cdd68: 83 c4 48                                        add    esp,0x48
  004cdd6b: 6a 00                                           push   0x0
  004cdd6d: 6a 01                                           push   0x1
  004cdd6f: 6a 03                                           push   0x3
  004cdd71: 68 d4 57 50 00                                  push   0x5057d4
  004cdd76: 68 40 18 56 00                                  push   0x561840
  004cdd7b: 6a 01                                           push   0x1
  004cdd7d: e8 0e bf fb ff                                  call   0x489c90
  004cdd82: 6a 00                                           push   0x0
  004cdd84: 6a 01                                           push   0x1
  004cdd86: 6a 03                                           push   0x3
  004cdd88: 68 c8 57 50 00                                  push   0x5057c8
  004cdd8d: 68 f0 15 56 00                                  push   0x5615f0
  004cdd92: 6a 01                                           push   0x1
  004cdd94: e8 f7 be fb ff                                  call   0x489c90
  004cdd99: 6a 00                                           push   0x0
  004cdd9b: 6a 01                                           push   0x1
  004cdd9d: 6a 03                                           push   0x3
  004cdd9f: 68 bc 57 50 00                                  push   0x5057bc
  004cdda4: 68 a0 13 56 00                                  push   0x5613a0
  004cdda9: 6a 01                                           push   0x1
  004cddab: e8 e0 be fb ff                                  call   0x489c90
  004cddb0: 83 c4 48                                        add    esp,0x48
  004cddb3: 6a 00                                           push   0x0
  004cddb5: 6a 01                                           push   0x1
  004cddb7: 6a 03                                           push   0x3
  004cddb9: 68 b0 57 50 00                                  push   0x5057b0
  004cddbe: 68 00 7b 55 00                                  push   0x557b00
  004cddc3: 6a 01                                           push   0x1
  004cddc5: e8 c6 be fb ff                                  call   0x489c90
  004cddca: 6a 00                                           push   0x0
  004cddcc: 6a 01                                           push   0x1
  004cddce: 6a 03                                           push   0x3
  004cddd0: 68 9c 57 50 00                                  push   0x50579c
  004cddd5: 68 b0 78 55 00                                  push   0x5578b0
  004cddda: 6a 01                                           push   0x1
  004cdddc: e8 af be fb ff                                  call   0x489c90
  004cdde1: 6a 00                                           push   0x0
  004cdde3: 6a 01                                           push   0x1
  004cdde5: 6a 03                                           push   0x3
  004cdde7: 68 cc 08 51 00                                  push   0x5108cc
  004cddec: 68 00 7b 55 00                                  push   0x557b00
  004cddf1: 6a 01                                           push   0x1
  004cddf3: e8 98 be fb ff                                  call   0x489c90
  004cddf8: 83 c4 48                                        add    esp,0x48
  004cddfb: 6a 00                                           push   0x0
  004cddfd: 6a 01                                           push   0x1
  004cddff: 6a 03                                           push   0x3
  004cde01: 68 b4 08 51 00                                  push   0x5108b4
  004cde06: 68 b0 78 55 00                                  push   0x5578b0
  004cde0b: 6a 01                                           push   0x1
  004cde0d: e8 7e be fb ff                                  call   0x489c90
  004cde12: 6a 00                                           push   0x0
  004cde14: 6a 01                                           push   0x1
  004cde16: 6a 03                                           push   0x3
  004cde18: 68 90 57 50 00                                  push   0x505790
  004cde1d: 68 40 84 55 00                                  push   0x558440
  004cde22: 6a 01                                           push   0x1
  004cde24: e8 67 be fb ff                                  call   0x489c90
  004cde29: 6a 00                                           push   0x0
  004cde2b: 6a 01                                           push   0x1
  004cde2d: 6a 03                                           push   0x3
  004cde2f: 68 80 57 50 00                                  push   0x505780
  004cde34: 68 f0 81 55 00                                  push   0x5581f0
  004cde39: 6a 01                                           push   0x1
  004cde3b: e8 50 be fb ff                                  call   0x489c90
  004cde40: 83 c4 48                                        add    esp,0x48
  004cde43: 6a 00                                           push   0x0
  004cde45: 6a 01                                           push   0x1
  004cde47: 6a 03                                           push   0x3
  004cde49: 68 70 57 50 00                                  push   0x505770
  004cde4e: 68 a0 7f 55 00                                  push   0x557fa0
  004cde53: 6a 01                                           push   0x1
  004cde55: e8 36 be fb ff                                  call   0x489c90
  004cde5a: 6a 00                                           push   0x0
  004cde5c: 6a 01                                           push   0x1
  004cde5e: 6a 03                                           push   0x3
  004cde60: 68 60 57 50 00                                  push   0x505760
  004cde65: 68 50 7d 55 00                                  push   0x557d50
  004cde6a: 6a 01                                           push   0x1
  004cde6c: e8 1f be fb ff                                  call   0x489c90
  004cde71: 6a 00                                           push   0x0
  004cde73: 6a 01                                           push   0x1
  004cde75: 6a 03                                           push   0x3
  004cde77: 68 50 57 50 00                                  push   0x505750
  004cde7c: 68 60 76 55 00                                  push   0x557660
  004cde81: 6a 01                                           push   0x1
  004cde83: e8 08 be fb ff                                  call   0x489c90
  004cde88: 83 c4 48                                        add    esp,0x48
  004cde8b: 6a 00                                           push   0x0
  004cde8d: 6a 01                                           push   0x1
  004cde8f: 6a 03                                           push   0x3
  004cde91: 68 48 57 50 00                                  push   0x505748
  004cde96: 68 c0 96 55 00                                  push   0x5596c0
  004cde9b: 6a 01                                           push   0x1
  004cde9d: e8 ee bd fb ff                                  call   0x489c90
  004cdea2: 6a 00                                           push   0x0
  004cdea4: 6a 01                                           push   0x1
  004cdea6: 6a 03                                           push   0x3
  004cdea8: 68 38 57 50 00                                  push   0x505738
  004cdead: 68 70 94 55 00                                  push   0x559470
  004cdeb2: 6a 01                                           push   0x1
  004cdeb4: e8 d7 bd fb ff                                  call   0x489c90
  004cdeb9: 6a 00                                           push   0x0
  004cdebb: 6a 01                                           push   0x1
  004cdebd: 6a 03                                           push   0x3
  004cdebf: 68 28 57 50 00                                  push   0x505728
  004cdec4: 68 20 92 55 00                                  push   0x559220
  004cdec9: 6a 01                                           push   0x1
  004cdecb: e8 c0 bd fb ff                                  call   0x489c90
  004cded0: 83 c4 48                                        add    esp,0x48
  004cded3: 6a 00                                           push   0x0
  004cded5: 6a 01                                           push   0x1
  004cded7: 6a 03                                           push   0x3
  004cded9: 68 1c 57 50 00                                  push   0x50571c
  004cdede: 68 d0 8f 55 00                                  push   0x558fd0
  004cdee3: 6a 01                                           push   0x1
  004cdee5: e8 a6 bd fb ff                                  call   0x489c90
  004cdeea: 6a 00                                           push   0x0
  004cdeec: 6a 01                                           push   0x1
  004cdeee: 6a 03                                           push   0x3
  004cdef0: 68 14 57 50 00                                  push   0x505714
  004cdef5: 68 80 8d 55 00                                  push   0x558d80
  004cdefa: 6a 01                                           push   0x1
  004cdefc: e8 8f bd fb ff                                  call   0x489c90
  004cdf01: 6a 00                                           push   0x0
  004cdf03: 6a 01                                           push   0x1
  004cdf05: 6a 03                                           push   0x3
  004cdf07: 68 0c 57 50 00                                  push   0x50570c
  004cdf0c: 68 30 8b 55 00                                  push   0x558b30
  004cdf11: 6a 01                                           push   0x1
  004cdf13: e8 78 bd fb ff                                  call   0x489c90
  004cdf18: 83 c4 48                                        add    esp,0x48
  004cdf1b: 6a 00                                           push   0x0
  004cdf1d: 6a 01                                           push   0x1
  004cdf1f: 6a 03                                           push   0x3
  004cdf21: 68 f8 56 50 00                                  push   0x5056f8
  004cdf26: 68 e0 88 55 00                                  push   0x5588e0
  004cdf2b: 6a 01                                           push   0x1
  004cdf2d: e8 5e bd fb ff                                  call   0x489c90
  004cdf32: 6a 00                                           push   0x0
  004cdf34: 6a 01                                           push   0x1
  004cdf36: 6a 03                                           push   0x3
  004cdf38: 68 ec 56 50 00                                  push   0x5056ec
  004cdf3d: 68 90 86 55 00                                  push   0x558690
  004cdf42: 6a 01                                           push   0x1
  004cdf44: e8 47 bd fb ff                                  call   0x489c90
  004cdf49: 6a 00                                           push   0x0
  004cdf4b: 6a 01                                           push   0x1
  004cdf4d: 6a 03                                           push   0x3
  004cdf4f: 68 d8 56 50 00                                  push   0x5056d8
  004cdf54: 68 b0 9d 55 00                                  push   0x559db0
  004cdf59: 6a 01                                           push   0x1
  004cdf5b: e8 30 bd fb ff                                  call   0x489c90
  004cdf60: 83 c4 48                                        add    esp,0x48
  004cdf63: 6a 00                                           push   0x0
  004cdf65: 6a 01                                           push   0x1
  004cdf67: 6a 03                                           push   0x3
  004cdf69: 68 c4 56 50 00                                  push   0x5056c4
  004cdf6e: 68 60 9b 55 00                                  push   0x559b60
  004cdf73: 6a 01                                           push   0x1
  004cdf75: e8 16 bd fb ff                                  call   0x489c90
  004cdf7a: 6a 00                                           push   0x0
  004cdf7c: 6a 01                                           push   0x1
  004cdf7e: 6a 03                                           push   0x3
  004cdf80: 68 b8 56 50 00                                  push   0x5056b8
  004cdf85: 68 50 11 56 00                                  push   0x561150
  004cdf8a: 6a 01                                           push   0x1
  004cdf8c: e8 ff bc fb ff                                  call   0x489c90
  004cdf91: 6a 00                                           push   0x0
  004cdf93: 6a 01                                           push   0x1
  004cdf95: 6a 03                                           push   0x3
  004cdf97: 68 a8 56 50 00                                  push   0x5056a8
  004cdf9c: 68 00 0f 56 00                                  push   0x560f00
  004cdfa1: 6a 01                                           push   0x1
  004cdfa3: e8 e8 bc fb ff                                  call   0x489c90
  004cdfa8: 83 c4 48                                        add    esp,0x48
  004cdfab: 6a 00                                           push   0x0
  004cdfad: 6a 01                                           push   0x1
  004cdfaf: 6a 03                                           push   0x3
  004cdfb1: 68 94 56 50 00                                  push   0x505694
  004cdfb6: 68 b0 0c 56 00                                  push   0x560cb0
  004cdfbb: 6a 01                                           push   0x1
  004cdfbd: e8 ce bc fb ff                                  call   0x489c90
  004cdfc2: 6a 00                                           push   0x0
  004cdfc4: 6a 01                                           push   0x1
  004cdfc6: 6a 03                                           push   0x3
  004cdfc8: 68 84 56 50 00                                  push   0x505684
  004cdfcd: 68 60 0a 56 00                                  push   0x560a60
  004cdfd2: 6a 01                                           push   0x1
  004cdfd4: e8 b7 bc fb ff                                  call   0x489c90
  004cdfd9: 6a 00                                           push   0x0
  004cdfdb: 6a 01                                           push   0x1
  004cdfdd: 6a 03                                           push   0x3
  004cdfdf: 68 6c 56 50 00                                  push   0x50566c
  004cdfe4: 68 10 08 56 00                                  push   0x560810
  004cdfe9: 6a 01                                           push   0x1
  004cdfeb: e8 a0 bc fb ff                                  call   0x489c90
  004cdff0: 83 c4 48                                        add    esp,0x48
  004cdff3: 6a 00                                           push   0x0
  004cdff5: 6a 01                                           push   0x1
  004cdff7: 6a 03                                           push   0x3
  004cdff9: 68 58 56 50 00                                  push   0x505658
  004cdffe: 68 c0 05 56 00                                  push   0x5605c0
  004ce003: 6a 01                                           push   0x1
  004ce005: e8 86 bc fb ff                                  call   0x489c90
  004ce00a: 6a 00                                           push   0x0
  004ce00c: 6a 01                                           push   0x1
  004ce00e: 6a 03                                           push   0x3
  004ce010: 68 44 56 50 00                                  push   0x505644
  004ce015: 68 70 03 56 00                                  push   0x560370
  004ce01a: 6a 01                                           push   0x1
  004ce01c: e8 6f bc fb ff                                  call   0x489c90
  004ce021: 6a 00                                           push   0x0
  004ce023: 6a 01                                           push   0x1
  004ce025: 6a 03                                           push   0x3
  004ce027: 68 28 56 50 00                                  push   0x505628
  004ce02c: 68 20 01 56 00                                  push   0x560120
  004ce031: 6a 01                                           push   0x1
  004ce033: e8 58 bc fb ff                                  call   0x489c90
  004ce038: 83 c4 48                                        add    esp,0x48
  004ce03b: 6a 00                                           push   0x0
  004ce03d: 6a 01                                           push   0x1
  004ce03f: 6a 03                                           push   0x3
  004ce041: 68 14 56 50 00                                  push   0x505614
  004ce046: 68 d0 fe 55 00                                  push   0x55fed0
  004ce04b: 6a 01                                           push   0x1
  004ce04d: e8 3e bc fb ff                                  call   0x489c90
  004ce052: 6a 00                                           push   0x0
  004ce054: 6a 01                                           push   0x1
  004ce056: 6a 03                                           push   0x3
  004ce058: 68 00 56 50 00                                  push   0x505600
  004ce05d: 68 80 fc 55 00                                  push   0x55fc80
  004ce062: 6a 01                                           push   0x1
  004ce064: e8 27 bc fb ff                                  call   0x489c90
  004ce069: 6a 00                                           push   0x0
  004ce06b: 6a 01                                           push   0x1
  004ce06d: 6a 03                                           push   0x3
  004ce06f: 68 e4 55 50 00                                  push   0x5055e4
  004ce074: 68 30 fa 55 00                                  push   0x55fa30
  004ce079: 6a 01                                           push   0x1
  004ce07b: e8 10 bc fb ff                                  call   0x489c90
  004ce080: 83 c4 48                                        add    esp,0x48
  004ce083: 6a 00                                           push   0x0
  004ce085: 6a 01                                           push   0x1
  004ce087: 6a 03                                           push   0x3
  004ce089: 68 d0 55 50 00                                  push   0x5055d0
  004ce08e: 68 e0 f7 55 00                                  push   0x55f7e0
  004ce093: 6a 01                                           push   0x1
  004ce095: e8 f6 bb fb ff                                  call   0x489c90
  004ce09a: 6a 00                                           push   0x0
  004ce09c: 6a 01                                           push   0x1
  004ce09e: 6a 03                                           push   0x3
  004ce0a0: 68 b8 55 50 00                                  push   0x5055b8
  004ce0a5: 68 90 f5 55 00                                  push   0x55f590
  004ce0aa: 6a 01                                           push   0x1
  004ce0ac: e8 df bb fb ff                                  call   0x489c90
  004ce0b1: 6a 00                                           push   0x0
  004ce0b3: 6a 01                                           push   0x1
  004ce0b5: 6a 03                                           push   0x3
  004ce0b7: 68 9c 55 50 00                                  push   0x50559c
  004ce0bc: 68 40 f3 55 00                                  push   0x55f340
  004ce0c1: 6a 01                                           push   0x1
  004ce0c3: e8 c8 bb fb ff                                  call   0x489c90
  004ce0c8: 83 c4 48                                        add    esp,0x48
  004ce0cb: 6a 00                                           push   0x0
  004ce0cd: 6a 01                                           push   0x1
  004ce0cf: 6a 03                                           push   0x3
  004ce0d1: 68 90 55 50 00                                  push   0x505590
  004ce0d6: 68 f0 f0 55 00                                  push   0x55f0f0
  004ce0db: 6a 01                                           push   0x1
  004ce0dd: e8 ae bb fb ff                                  call   0x489c90
  004ce0e2: 6a 00                                           push   0x0
  004ce0e4: 6a 01                                           push   0x1
  004ce0e6: 6a 03                                           push   0x3
  004ce0e8: 68 84 55 50 00                                  push   0x505584
  004ce0ed: 68 a0 ee 55 00                                  push   0x55eea0
  004ce0f2: 6a 01                                           push   0x1
  004ce0f4: e8 97 bb fb ff                                  call   0x489c90
  004ce0f9: 6a 00                                           push   0x0
  004ce0fb: 6a 01                                           push   0x1
  004ce0fd: 6a 03                                           push   0x3
  004ce0ff: 68 70 55 50 00                                  push   0x505570
  004ce104: 68 50 ec 55 00                                  push   0x55ec50
  004ce109: 6a 01                                           push   0x1
  004ce10b: e8 80 bb fb ff                                  call   0x489c90
  004ce110: 83 c4 48                                        add    esp,0x48
  004ce113: 6a 00                                           push   0x0
  004ce115: 6a 01                                           push   0x1
  004ce117: 6a 03                                           push   0x3
  004ce119: 68 64 55 50 00                                  push   0x505564
  004ce11e: 68 00 ea 55 00                                  push   0x55ea00
  004ce123: 6a 01                                           push   0x1
  004ce125: e8 66 bb fb ff                                  call   0x489c90
  004ce12a: 6a 00                                           push   0x0
  004ce12c: 6a 01                                           push   0x1
  004ce12e: 6a 03                                           push   0x3
  004ce130: 68 58 55 50 00                                  push   0x505558
  004ce135: 68 b0 e7 55 00                                  push   0x55e7b0
  004ce13a: 6a 01                                           push   0x1
  004ce13c: e8 4f bb fb ff                                  call   0x489c90
  004ce141: 6a 00                                           push   0x0
  004ce143: 6a 01                                           push   0x1
  004ce145: 6a 03                                           push   0x3
  004ce147: 68 4c 55 50 00                                  push   0x50554c
  004ce14c: 68 60 e5 55 00                                  push   0x55e560
  004ce151: 6a 01                                           push   0x1
  004ce153: e8 38 bb fb ff                                  call   0x489c90
  004ce158: 83 c4 48                                        add    esp,0x48
  004ce15b: 6a 00                                           push   0x0
  004ce15d: 6a 01                                           push   0x1
  004ce15f: 6a 03                                           push   0x3
  004ce161: 68 40 55 50 00                                  push   0x505540
  004ce166: 68 10 e3 55 00                                  push   0x55e310
  004ce16b: 6a 01                                           push   0x1
  004ce16d: e8 1e bb fb ff                                  call   0x489c90
  004ce172: 6a 00                                           push   0x0
  004ce174: 6a 01                                           push   0x1
  004ce176: 6a 03                                           push   0x3
  004ce178: 68 34 55 50 00                                  push   0x505534
  004ce17d: 68 c0 e0 55 00                                  push   0x55e0c0
  004ce182: 6a 01                                           push   0x1
  004ce184: e8 07 bb fb ff                                  call   0x489c90
  004ce189: 6a 00                                           push   0x0
  004ce18b: 6a 01                                           push   0x1
  004ce18d: 6a 03                                           push   0x3
  004ce18f: 68 28 55 50 00                                  push   0x505528
  004ce194: 68 70 de 55 00                                  push   0x55de70
  004ce199: 6a 01                                           push   0x1
  004ce19b: e8 f0 ba fb ff                                  call   0x489c90
  004ce1a0: 83 c4 48                                        add    esp,0x48
  004ce1a3: 6a 00                                           push   0x0
  004ce1a5: 6a 01                                           push   0x1
  004ce1a7: 6a 03                                           push   0x3
  004ce1a9: 68 18 55 50 00                                  push   0x505518
  004ce1ae: 68 20 dc 55 00                                  push   0x55dc20
  004ce1b3: 6a 01                                           push   0x1
  004ce1b5: e8 d6 ba fb ff                                  call   0x489c90
  004ce1ba: 6a 00                                           push   0x0
  004ce1bc: 6a 01                                           push   0x1
  004ce1be: 6a 03                                           push   0x3
  004ce1c0: 68 08 55 50 00                                  push   0x505508
  004ce1c5: 68 d0 d9 55 00                                  push   0x55d9d0
  004ce1ca: 6a 01                                           push   0x1
  004ce1cc: e8 bf ba fb ff                                  call   0x489c90
  004ce1d1: 6a 00                                           push   0x0
  004ce1d3: 6a 01                                           push   0x1
  004ce1d5: 6a 03                                           push   0x3
  004ce1d7: 68 f8 54 50 00                                  push   0x5054f8
  004ce1dc: 68 80 d7 55 00                                  push   0x55d780
  004ce1e1: 6a 01                                           push   0x1
  004ce1e3: e8 a8 ba fb ff                                  call   0x489c90
  004ce1e8: 83 c4 48                                        add    esp,0x48
  004ce1eb: 6a 00                                           push   0x0
  004ce1ed: 6a 01                                           push   0x1
  004ce1ef: 6a 03                                           push   0x3
  004ce1f1: 68 e8 54 50 00                                  push   0x5054e8
  004ce1f6: 68 30 d5 55 00                                  push   0x55d530
  004ce1fb: 6a 01                                           push   0x1
  004ce1fd: e8 8e ba fb ff                                  call   0x489c90
  004ce202: 6a 00                                           push   0x0
  004ce204: 6a 01                                           push   0x1
  004ce206: 6a 03                                           push   0x3
  004ce208: 68 d8 54 50 00                                  push   0x5054d8
  004ce20d: 68 e0 d2 55 00                                  push   0x55d2e0
  004ce212: 6a 01                                           push   0x1
  004ce214: e8 77 ba fb ff                                  call   0x489c90
  004ce219: 6a 00                                           push   0x0
  004ce21b: 6a 01                                           push   0x1
  004ce21d: 6a 03                                           push   0x3
  004ce21f: 68 c8 54 50 00                                  push   0x5054c8
  004ce224: 68 90 d0 55 00                                  push   0x55d090
  004ce229: 6a 01                                           push   0x1
  004ce22b: e8 60 ba fb ff                                  call   0x489c90
  004ce230: 83 c4 48                                        add    esp,0x48
  004ce233: 6a 00                                           push   0x0
  004ce235: 6a 01                                           push   0x1
  004ce237: 6a 03                                           push   0x3
  004ce239: 68 b8 54 50 00                                  push   0x5054b8
  004ce23e: 68 40 ce 55 00                                  push   0x55ce40
  004ce243: 6a 01                                           push   0x1
  004ce245: e8 46 ba fb ff                                  call   0x489c90
  004ce24a: 6a 00                                           push   0x0
  004ce24c: 6a 01                                           push   0x1
  004ce24e: 6a 03                                           push   0x3
  004ce250: 68 b0 54 50 00                                  push   0x5054b0
  004ce255: 68 f0 cb 55 00                                  push   0x55cbf0
  004ce25a: 6a 01                                           push   0x1
  004ce25c: e8 2f ba fb ff                                  call   0x489c90
  004ce261: 6a 00                                           push   0x0
  004ce263: 6a 01                                           push   0x1
  004ce265: 6a 03                                           push   0x3
  004ce267: 68 a8 54 50 00                                  push   0x5054a8
  004ce26c: 68 a0 c9 55 00                                  push   0x55c9a0
  004ce271: 6a 01                                           push   0x1
  004ce273: e8 18 ba fb ff                                  call   0x489c90
  004ce278: 83 c4 48                                        add    esp,0x48
  004ce27b: 6a 00                                           push   0x0
  004ce27d: 6a 01                                           push   0x1
  004ce27f: 6a 03                                           push   0x3
  004ce281: 68 98 54 50 00                                  push   0x505498
  004ce286: 68 50 c7 55 00                                  push   0x55c750
  004ce28b: 6a 01                                           push   0x1
  004ce28d: e8 fe b9 fb ff                                  call   0x489c90
  004ce292: 6a 00                                           push   0x0
  004ce294: 6a 01                                           push   0x1
  004ce296: 6a 03                                           push   0x3
  004ce298: 68 8c 54 50 00                                  push   0x50548c
  004ce29d: 68 00 c5 55 00                                  push   0x55c500
  004ce2a2: 6a 01                                           push   0x1
  004ce2a4: e8 e7 b9 fb ff                                  call   0x489c90
  004ce2a9: 6a 00                                           push   0x0
  004ce2ab: 6a 01                                           push   0x1
  004ce2ad: 6a 03                                           push   0x3
  004ce2af: 68 78 54 50 00                                  push   0x505478
  004ce2b4: 68 b0 c2 55 00                                  push   0x55c2b0
  004ce2b9: 6a 01                                           push   0x1
  004ce2bb: e8 d0 b9 fb ff                                  call   0x489c90
  004ce2c0: 83 c4 48                                        add    esp,0x48
  004ce2c3: 6a 00                                           push   0x0
  004ce2c5: 6a 01                                           push   0x1
  004ce2c7: 6a 03                                           push   0x3
  004ce2c9: 68 68 54 50 00                                  push   0x505468
  004ce2ce: 68 60 c0 55 00                                  push   0x55c060
  004ce2d3: 6a 01                                           push   0x1
  004ce2d5: e8 b6 b9 fb ff                                  call   0x489c90
  004ce2da: 6a 00                                           push   0x0
  004ce2dc: 6a 01                                           push   0x1
  004ce2de: 6a 03                                           push   0x3
  004ce2e0: 68 5c 54 50 00                                  push   0x50545c
  004ce2e5: 68 10 be 55 00                                  push   0x55be10
  004ce2ea: 6a 01                                           push   0x1
  004ce2ec: e8 9f b9 fb ff                                  call   0x489c90
  004ce2f1: 6a 00                                           push   0x0
  004ce2f3: 6a 01                                           push   0x1
  004ce2f5: 6a 03                                           push   0x3
  004ce2f7: 68 48 54 50 00                                  push   0x505448
  004ce2fc: 68 c0 bb 55 00                                  push   0x55bbc0
  004ce301: 6a 01                                           push   0x1
  004ce303: e8 88 b9 fb ff                                  call   0x489c90
  004ce308: 83 c4 48                                        add    esp,0x48
  004ce30b: 6a 00                                           push   0x0
  004ce30d: 6a 01                                           push   0x1
  004ce30f: 6a 03                                           push   0x3
  004ce311: 68 40 54 50 00                                  push   0x505440
  004ce316: 68 70 b9 55 00                                  push   0x55b970
  004ce31b: 6a 01                                           push   0x1
  004ce31d: e8 6e b9 fb ff                                  call   0x489c90
  004ce322: 6a 00                                           push   0x0
  004ce324: 6a 01                                           push   0x1
  004ce326: 6a 03                                           push   0x3
  004ce328: 68 38 54 50 00                                  push   0x505438
  004ce32d: 68 20 b7 55 00                                  push   0x55b720
  004ce332: 6a 01                                           push   0x1
  004ce334: e8 57 b9 fb ff                                  call   0x489c90
  004ce339: 6a 00                                           push   0x0
  004ce33b: 6a 01                                           push   0x1
  004ce33d: 6a 03                                           push   0x3
  004ce33f: 68 30 54 50 00                                  push   0x505430
  004ce344: 68 d0 b4 55 00                                  push   0x55b4d0
  004ce349: 6a 01                                           push   0x1
  004ce34b: e8 40 b9 fb ff                                  call   0x489c90
  004ce350: 83 c4 48                                        add    esp,0x48
  004ce353: 6a 00                                           push   0x0
  004ce355: 6a 01                                           push   0x1
  004ce357: 6a 03                                           push   0x3
  004ce359: 68 10 54 50 00                                  push   0x505410
  004ce35e: 68 30 b0 55 00                                  push   0x55b030
  004ce363: 6a 01                                           push   0x1
  004ce365: e8 26 b9 fb ff                                  call   0x489c90
  004ce36a: 6a 00                                           push   0x0
  004ce36c: 6a 01                                           push   0x1
  004ce36e: 6a 03                                           push   0x3
  004ce370: 68 fc 53 50 00                                  push   0x5053fc
  004ce375: 68 e0 ad 55 00                                  push   0x55ade0
  004ce37a: 6a 01                                           push   0x1
  004ce37c: e8 0f b9 fb ff                                  call   0x489c90
  004ce381: 6a 00                                           push   0x0
  004ce383: 6a 01                                           push   0x1
  004ce385: 6a 03                                           push   0x3
  004ce387: 68 e8 53 50 00                                  push   0x5053e8
  004ce38c: 68 90 ab 55 00                                  push   0x55ab90
  004ce391: 6a 01                                           push   0x1
  004ce393: e8 f8 b8 fb ff                                  call   0x489c90
  004ce398: 83 c4 48                                        add    esp,0x48
  004ce39b: 6a 00                                           push   0x0
  004ce39d: 6a 01                                           push   0x1
  004ce39f: 6a 03                                           push   0x3
  004ce3a1: 68 d8 53 50 00                                  push   0x5053d8
  004ce3a6: 68 40 a9 55 00                                  push   0x55a940
  004ce3ab: 6a 01                                           push   0x1
  004ce3ad: e8 de b8 fb ff                                  call   0x489c90
  004ce3b2: 6a 00                                           push   0x0
  004ce3b4: 6a 01                                           push   0x1
  004ce3b6: 6a 03                                           push   0x3
  004ce3b8: 68 cc 53 50 00                                  push   0x5053cc
  004ce3bd: 68 f0 a6 55 00                                  push   0x55a6f0
  004ce3c2: 6a 01                                           push   0x1
  004ce3c4: e8 c7 b8 fb ff                                  call   0x489c90
  004ce3c9: 6a 00                                           push   0x0
  004ce3cb: 6a 01                                           push   0x1
  004ce3cd: 6a 03                                           push   0x3
  004ce3cf: 68 b8 53 50 00                                  push   0x5053b8
  004ce3d4: 68 a0 a4 55 00                                  push   0x55a4a0
  004ce3d9: 6a 01                                           push   0x1
  004ce3db: e8 b0 b8 fb ff                                  call   0x489c90
  004ce3e0: 83 c4 48                                        add    esp,0x48
  004ce3e3: 6a 00                                           push   0x0
  004ce3e5: 6a 01                                           push   0x1
  004ce3e7: 6a 03                                           push   0x3
  004ce3e9: 68 a8 53 50 00                                  push   0x5053a8
  004ce3ee: 68 50 a2 55 00                                  push   0x55a250
  004ce3f3: 6a 01                                           push   0x1
  004ce3f5: e8 96 b8 fb ff                                  call   0x489c90
  004ce3fa: 6a 00                                           push   0x0
  004ce3fc: 6a 01                                           push   0x1
  004ce3fe: 6a 03                                           push   0x3
  004ce400: 68 98 53 50 00                                  push   0x505398
  004ce405: 68 00 a0 55 00                                  push   0x55a000
  004ce40a: 6a 01                                           push   0x1
  004ce40c: e8 7f b8 fb ff                                  call   0x489c90
  004ce411: 6a 00                                           push   0x0
  004ce413: 6a 01                                           push   0x1
  004ce415: 6a 03                                           push   0x3
  004ce417: 68 ac 08 51 00                                  push   0x5108ac
  004ce41c: 68 10 74 55 00                                  push   0x557410
  004ce421: 6a 01                                           push   0x1
  004ce423: e8 68 b8 fb ff                                  call   0x489c90
  004ce428: 83 c4 48                                        add    esp,0x48
  004ce42b: c3                                              ret
  004ce584: ff 25 48 e4 4d 00                               jmp    DWORD PTR ds:0x4de448
  004d0510: 55                                              push   ebp
  004d0511: 8b ec                                           mov    ebp,esp
  004d0513: 81 ec 20 01 00 00                               sub    esp,0x120
  004d0519: 53                                              push   ebx
  004d051a: 57                                              push   edi
  004d051b: 8d 85 e0 fe ff ff                               lea    eax,[ebp-0x120]
  004d0521: 68 34 0c 51 00                                  push   0x510c34
  004d0526: 50                                              push   eax
  004d0527: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d052d: 8b 1d f4 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0f4
  004d0533: 83 c4 08                                        add    esp,0x8
  004d0536: 6a 00                                           push   0x0
  004d0538: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d053b: 51                                              push   ecx
  004d053c: 8d 95 e0 fe ff ff                               lea    edx,[ebp-0x120]
  004d0542: 52                                              push   edx
  004d0543: ff d3                                           call   ebx
  004d0545: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004d0548: 50                                              push   eax
  004d0549: 8d 85 e0 fe ff ff                               lea    eax,[ebp-0x120]
  004d054f: 50                                              push   eax
  004d0550: 51                                              push   ecx
  004d0551: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0557: 8d 55 e0                                        lea    edx,[ebp-0x20]
  004d055a: 52                                              push   edx
  004d055b: 33 ff                                           xor    edi,edi
  004d055d: 57                                              push   edi
  004d055e: e8 bd 00 00 00                                  call   0x4d0620
  004d0563: 83 c4 08                                        add    esp,0x8
  004d0566: 85 c0                                           test   eax,eax
  004d0568: 0f 84 a7 00 00 00                               je     0x4d0615
  004d056e: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004d0571: 56                                              push   esi
  004d0572: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004d0575: 2b ce                                           sub    ecx,esi
  004d0577: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  004d057a: eb 03                                           jmp    0x4d057f
  004d057c: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004d057f: 83 ff 40                                        cmp    edi,0x40
  004d0582: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  004d0585: 73 15                                           jae    0x4d059c
  004d0587: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  004d058a: 85 d2                                           test   edx,edx
  004d058c: 74 0e                                           je     0x4d059c
  004d058e: 89 04 31                                        mov    DWORD PTR [ecx+esi*1],eax
  004d0591: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004d0594: 03 c8                                           add    ecx,eax
  004d0596: 89 0e                                           mov    DWORD PTR [esi],ecx
  004d0598: 47                                              inc    edi
  004d0599: 83 c6 04                                        add    esi,0x4
  004d059c: 81 7d ec 00 00 01 00                            cmp    DWORD PTR [ebp-0x14],0x10000
  004d05a3: c6 85 e0 fe ff ff 0d                            mov    BYTE PTR [ebp-0x120],0xd
  004d05aa: c6 85 e1 fe ff ff 0a                            mov    BYTE PTR [ebp-0x11f],0xa
  004d05b1: 74 3c                                           je     0x4d05ef
  004d05b3: 68 fe 00 00 00                                  push   0xfe
  004d05b8: 8d 95 e2 fe ff ff                               lea    edx,[ebp-0x11e]
  004d05be: 52                                              push   edx
  004d05bf: 8d 45 e0                                        lea    eax,[ebp-0x20]
  004d05c2: 50                                              push   eax
  004d05c3: e8 78 02 00 00                                  call   0x4d0840
  004d05c8: 83 c4 0c                                        add    esp,0xc
  004d05cb: 6a 00                                           push   0x0
  004d05cd: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d05d0: 51                                              push   ecx
  004d05d1: 8d 95 e0 fe ff ff                               lea    edx,[ebp-0x120]
  004d05d7: 52                                              push   edx
  004d05d8: ff d3                                           call   ebx
  004d05da: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004d05dd: 50                                              push   eax
  004d05de: 8d 85 e0 fe ff ff                               lea    eax,[ebp-0x120]
  004d05e4: 50                                              push   eax
  004d05e5: 51                                              push   ecx
  004d05e6: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d05ec: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  004d05ef: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  004d05f2: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004d05f5: 03 c2                                           add    eax,edx
  004d05f7: 51                                              push   ecx
  004d05f8: 50                                              push   eax
  004d05f9: e8 22 00 00 00                                  call   0x4d0620
  004d05fe: 83 c4 08                                        add    esp,0x8
  004d0601: 85 c0                                           test   eax,eax
  004d0603: 0f 85 73 ff ff ff                               jne    0x4d057c
  004d0609: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004d060c: 5e                                              pop    esi
  004d060d: 89 3a                                           mov    DWORD PTR [edx],edi
  004d060f: 5f                                              pop    edi
  004d0610: 5b                                              pop    ebx
  004d0611: 8b e5                                           mov    esp,ebp
  004d0613: 5d                                              pop    ebp
  004d0614: c3                                              ret
  004d0615: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004d0618: 89 38                                           mov    DWORD PTR [eax],edi
  004d061a: 5f                                              pop    edi
  004d061b: 5b                                              pop    ebx
  004d061c: 8b e5                                           mov    esp,ebp
  004d061e: 5d                                              pop    ebp
  004d061f: c3                                              ret
  004d0a70: 55                                              push   ebp
  004d0a71: 8b ec                                           mov    ebp,esp
  004d0a73: 81 ec 84 06 00 00                               sub    esp,0x684
  004d0a79: 53                                              push   ebx
  004d0a7a: 56                                              push   esi
  004d0a7b: 8b 75 1c                                        mov    esi,DWORD PTR [ebp+0x1c]
  004d0a7e: 57                                              push   edi
  004d0a7f: 56                                              push   esi
  004d0a80: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0a86: 68 84 0e 51 00                                  push   0x510e84
  004d0a8b: 50                                              push   eax
  004d0a8c: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d0a92: 8b 3d f4 e0 4d 00                               mov    edi,DWORD PTR ds:0x4de0f4
  004d0a98: 83 c4 0c                                        add    esp,0xc
  004d0a9b: 6a 00                                           push   0x0
  004d0a9d: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d0aa0: 51                                              push   ecx
  004d0aa1: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d0aa7: 52                                              push   edx
  004d0aa8: ff d7                                           call   edi
  004d0aaa: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004d0aad: 50                                              push   eax
  004d0aae: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0ab4: 50                                              push   eax
  004d0ab5: 53                                              push   ebx
  004d0ab6: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0abc: 85 f6                                           test   esi,esi
  004d0abe: 75 36                                           jne    0x4d0af6
  004d0ac0: 68 70 0e 51 00                                  push   0x510e70
  004d0ac5: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0acb: 51                                              push   ecx
  004d0acc: ff 15 24 e1 4d 00                               call   DWORD PTR ds:0x4de124
  004d0ad2: 56                                              push   esi
  004d0ad3: 8d 55 fc                                        lea    edx,[ebp-0x4]
  004d0ad6: 52                                              push   edx
  004d0ad7: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0add: 50                                              push   eax
  004d0ade: ff d7                                           call   edi
  004d0ae0: 50                                              push   eax
  004d0ae1: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0ae7: 51                                              push   ecx
  004d0ae8: 53                                              push   ebx
  004d0ae9: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0aef: 5f                                              pop    edi
  004d0af0: 5e                                              pop    esi
  004d0af1: 5b                                              pop    ebx
  004d0af2: 8b e5                                           mov    esp,ebp
  004d0af4: 5d                                              pop    ebp
  004d0af5: c3                                              ret
  004d0af6: 33 db                                           xor    ebx,ebx
  004d0af8: 66 85 f6                                        test   si,si
  004d0afb: 0f 8e 97 00 00 00                               jle    0x4d0b98
  004d0b01: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004d0b04: 8b 55 18                                        mov    edx,DWORD PTR [ebp+0x18]
  004d0b07: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004d0b0a: 0f bf f3                                        movsx  esi,bx
  004d0b0d: 8b 04 b2                                        mov    eax,DWORD PTR [edx+esi*4]
  004d0b10: 8b 14 b1                                        mov    edx,DWORD PTR [ecx+esi*4]
  004d0b13: 50                                              push   eax
  004d0b14: 52                                              push   edx
  004d0b15: 56                                              push   esi
  004d0b16: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0b1c: 68 54 0e 51 00                                  push   0x510e54
  004d0b21: 50                                              push   eax
  004d0b22: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d0b28: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004d0b2b: 8b 0c b0                                        mov    ecx,DWORD PTR [eax+esi*4]
  004d0b2e: 83 c4 14                                        add    esp,0x14
  004d0b31: 3b f9                                           cmp    edi,ecx
  004d0b33: 72 0c                                           jb     0x4d0b41
  004d0b35: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  004d0b38: 3b 3c b1                                        cmp    edi,DWORD PTR [ecx+esi*4]
  004d0b3b: 0f 86 91 00 00 00                               jbe    0x4d0bd2
  004d0b41: 81 3d 60 49 56 00 fd 00 00 c0                   cmp    DWORD PTR ds:0x564960,0xc00000fd
  004d0b4b: 75 15                                           jne    0x4d0b62
  004d0b4d: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004d0b50: 46                                              inc    esi
  004d0b51: 3b f1                                           cmp    esi,ecx
  004d0b53: 0f 83 87 00 00 00                               jae    0x4d0be0
  004d0b59: 3b 3c b0                                        cmp    edi,DWORD PTR [eax+esi*4]
  004d0b5c: 0f 86 8c 00 00 00                               jbe    0x4d0bee
  004d0b62: 6a 00                                           push   0x0
  004d0b64: 8d 55 fc                                        lea    edx,[ebp-0x4]
  004d0b67: 52                                              push   edx
  004d0b68: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0b6e: 50                                              push   eax
  004d0b6f: ff 15 f4 e0 4d 00                               call   DWORD PTR ds:0x4de0f4
  004d0b75: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004d0b78: 50                                              push   eax
  004d0b79: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0b7f: 51                                              push   ecx
  004d0b80: 52                                              push   edx
  004d0b81: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0b87: 43                                              inc    ebx
  004d0b88: 66 3b 5d 1c                                     cmp    bx,WORD PTR [ebp+0x1c]
  004d0b8c: 0f 8c 72 ff ff ff                               jl     0x4d0b04
  004d0b92: 8b 3d f4 e0 4d 00                               mov    edi,DWORD PTR ds:0x4de0f4
  004d0b98: 68 40 0e 51 00                                  push   0x510e40
  004d0b9d: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0ba3: 51                                              push   ecx
  004d0ba4: ff 15 24 e1 4d 00                               call   DWORD PTR ds:0x4de124
  004d0baa: 6a 00                                           push   0x0
  004d0bac: 8d 55 fc                                        lea    edx,[ebp-0x4]
  004d0baf: 52                                              push   edx
  004d0bb0: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0bb6: 50                                              push   eax
  004d0bb7: ff d7                                           call   edi
  004d0bb9: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004d0bbc: 50                                              push   eax
  004d0bbd: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0bc3: 51                                              push   ecx
  004d0bc4: 52                                              push   edx
  004d0bc5: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0bcb: 5f                                              pop    edi
  004d0bcc: 5e                                              pop    esi
  004d0bcd: 5b                                              pop    ebx
  004d0bce: 8b e5                                           mov    esp,ebp
  004d0bd0: 5d                                              pop    ebp
  004d0bd1: c3                                              ret
  004d0bd2: 68 3c 0e 51 00                                  push   0x510e3c
  004d0bd7: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0bdd: 50                                              push   eax
  004d0bde: eb 1a                                           jmp    0x4d0bfa
  004d0be0: 68 38 0e 51 00                                  push   0x510e38
  004d0be5: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0beb: 51                                              push   ecx
  004d0bec: eb 0c                                           jmp    0x4d0bfa
  004d0bee: 68 34 0e 51 00                                  push   0x510e34
  004d0bf3: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d0bf9: 52                                              push   edx
  004d0bfa: ff 15 94 e0 4d 00                               call   DWORD PTR ds:0x4de094
  004d0c00: 8b 35 f4 e0 4d 00                               mov    esi,DWORD PTR ds:0x4de0f4
  004d0c06: 6a 00                                           push   0x0
  004d0c08: 8d 45 fc                                        lea    eax,[ebp-0x4]
  004d0c0b: 50                                              push   eax
  004d0c0c: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0c12: 51                                              push   ecx
  004d0c13: ff d6                                           call   esi
  004d0c15: 50                                              push   eax
  004d0c16: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004d0c19: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d0c1f: 52                                              push   edx
  004d0c20: 50                                              push   eax
  004d0c21: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0c27: 68 20 0e 51 00                                  push   0x510e20
  004d0c2c: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0c32: 51                                              push   ecx
  004d0c33: ff 15 24 e1 4d 00                               call   DWORD PTR ds:0x4de124
  004d0c39: 6a 00                                           push   0x0
  004d0c3b: 8d 55 fc                                        lea    edx,[ebp-0x4]
  004d0c3e: 52                                              push   edx
  004d0c3f: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0c45: 50                                              push   eax
  004d0c46: ff d6                                           call   esi
  004d0c48: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004d0c4b: 50                                              push   eax
  004d0c4c: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0c52: 51                                              push   ecx
  004d0c53: 52                                              push   edx
  004d0c54: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0c5a: 8b 45 20                                        mov    eax,DWORD PTR [ebp+0x20]
  004d0c5d: 8b 55 18                                        mov    edx,DWORD PTR [ebp+0x18]
  004d0c60: 89 85 94 fd ff ff                               mov    DWORD PTR [ebp-0x26c],eax
  004d0c66: 33 c0                                           xor    eax,eax
  004d0c68: 0f bf cb                                        movsx  ecx,bx
  004d0c6b: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004d0c6e: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  004d0c71: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004d0c74: c7 45 20 01 00 00 00                            mov    DWORD PTR [ebp+0x20],0x1
  004d0c7b: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004d0c7e: 57                                              push   edi
  004d0c7f: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0c85: 68 14 0e 51 00                                  push   0x510e14
  004d0c8a: 51                                              push   ecx
  004d0c8b: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d0c91: 8d 95 64 fe ff ff                               lea    edx,[ebp-0x19c]
  004d0c97: 83 c4 0c                                        add    esp,0xc
  004d0c9a: 8d b5 84 fe ff ff                               lea    esi,[ebp-0x17c]
  004d0ca0: 89 55 1c                                        mov    DWORD PTR [ebp+0x1c],edx
  004d0ca3: c7 45 f0 04 00 00 00                            mov    DWORD PTR [ebp-0x10],0x4
  004d0caa: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004d0cad: 3b 38                                           cmp    edi,DWORD PTR [eax]
  004d0caf: 73 0d                                           jae    0x4d0cbe
  004d0cb1: 6a 04                                           push   0x4
  004d0cb3: 57                                              push   edi
  004d0cb4: ff 15 70 e0 4d 00                               call   DWORD PTR ds:0x4de070
  004d0cba: 85 c0                                           test   eax,eax
  004d0cbc: 74 07                                           je     0x4d0cc5
  004d0cbe: c7 45 14 01 00 00 00                            mov    DWORD PTR [ebp+0x14],0x1
  004d0cc5: 8b df                                           mov    ebx,edi
  004d0cc7: c7 45 18 04 00 00 00                            mov    DWORD PTR [ebp+0x18],0x4
  004d0cce: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004d0cd1: 85 c0                                           test   eax,eax
  004d0cd3: 74 08                                           je     0x4d0cdd
  004d0cd5: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004d0cd8: c6 01 2d                                        mov    BYTE PTR [ecx],0x2d
  004d0cdb: eb 1e                                           jmp    0x4d0cfb
  004d0cdd: 33 d2                                           xor    edx,edx
  004d0cdf: 8a 13                                           mov    dl,BYTE PTR [ebx]
  004d0ce1: 52                                              push   edx
  004d0ce2: ff 15 68 e4 4d 00                               call   DWORD PTR ds:0x4de468
  004d0ce8: 85 c0                                           test   eax,eax
  004d0cea: 74 09                                           je     0x4d0cf5
  004d0cec: 8a 03                                           mov    al,BYTE PTR [ebx]
  004d0cee: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004d0cf1: 88 01                                           mov    BYTE PTR [ecx],al
  004d0cf3: eb 06                                           jmp    0x4d0cfb
  004d0cf5: 8b 55 1c                                        mov    edx,DWORD PTR [ebp+0x1c]
  004d0cf8: c6 02 2e                                        mov    BYTE PTR [edx],0x2e
  004d0cfb: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004d0cfe: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d0d01: 43                                              inc    ebx
  004d0d02: 41                                              inc    ecx
  004d0d03: 48                                              dec    eax
  004d0d04: 89 4d 1c                                        mov    DWORD PTR [ebp+0x1c],ecx
  004d0d07: 89 45 18                                        mov    DWORD PTR [ebp+0x18],eax
  004d0d0a: 75 c2                                           jne    0x4d0cce
  004d0d0c: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004d0d0f: 85 c0                                           test   eax,eax
  004d0d11: 74 14                                           je     0x4d0d27
  004d0d13: 68 08 0e 51 00                                  push   0x510e08
  004d0d18: 56                                              push   esi
  004d0d19: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d0d1f: 83 c4 08                                        add    esp,0x8
  004d0d22: 83 c6 0a                                        add    esi,0xa
  004d0d25: eb 5f                                           jmp    0x4d0d86
  004d0d27: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004d0d2a: 3b fb                                           cmp    edi,ebx
  004d0d2c: 75 04                                           jne    0x4d0d32
  004d0d2e: c6 46 ff 3e                                     mov    BYTE PTR [esi-0x1],0x3e
  004d0d32: 8b 07                                           mov    eax,DWORD PTR [edi]
  004d0d34: 50                                              push   eax
  004d0d35: 68 00 0e 51 00                                  push   0x510e00
  004d0d3a: 56                                              push   esi
  004d0d3b: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d0d41: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004d0d44: 83 c4 0c                                        add    esp,0xc
  004d0d47: 83 c6 08                                        add    esi,0x8
  004d0d4a: 85 c0                                           test   eax,eax
  004d0d4c: 74 1a                                           je     0x4d0d68
  004d0d4e: 8b 45 20                                        mov    eax,DWORD PTR [ebp+0x20]
  004d0d51: 8b 17                                           mov    edx,DWORD PTR [edi]
  004d0d53: 0f bf c8                                        movsx  ecx,ax
  004d0d56: 40                                              inc    eax
  004d0d57: 89 94 8d 94 fd ff ff                            mov    DWORD PTR [ebp+ecx*4-0x26c],edx
  004d0d5e: 89 45 20                                        mov    DWORD PTR [ebp+0x20],eax
  004d0d61: c7 45 0c 00 00 00 00                            mov    DWORD PTR [ebp+0xc],0x0
  004d0d68: 3b fb                                           cmp    edi,ebx
  004d0d6a: 75 12                                           jne    0x4d0d7e
  004d0d6c: 8b 07                                           mov    eax,DWORD PTR [edi]
  004d0d6e: c6 06 3c                                        mov    BYTE PTR [esi],0x3c
  004d0d71: 46                                              inc    esi
  004d0d72: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004d0d75: c7 45 0c 01 00 00 00                            mov    DWORD PTR [ebp+0xc],0x1
  004d0d7c: eb 04                                           jmp    0x4d0d82
  004d0d7e: c6 06 20                                        mov    BYTE PTR [esi],0x20
  004d0d81: 46                                              inc    esi
  004d0d82: c6 06 20                                        mov    BYTE PTR [esi],0x20
  004d0d85: 46                                              inc    esi
  004d0d86: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  004d0d89: 83 c7 04                                        add    edi,0x4
  004d0d8c: 48                                              dec    eax
  004d0d8d: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004d0d90: 0f 85 14 ff ff ff                               jne    0x4d0caa
  004d0d96: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004d0d99: 8d 95 64 fe ff ff                               lea    edx,[ebp-0x19c]
  004d0d9f: 52                                              push   edx
  004d0da0: 56                                              push   esi
  004d0da1: c6 01 00                                        mov    BYTE PTR [ecx],0x0
  004d0da4: ff 15 24 e1 4d 00                               call   DWORD PTR ds:0x4de124
  004d0daa: 6a 00                                           push   0x0
  004d0dac: 8d 45 fc                                        lea    eax,[ebp-0x4]
  004d0daf: 50                                              push   eax
  004d0db0: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0db6: 51                                              push   ecx
  004d0db7: ff 15 f4 e0 4d 00                               call   DWORD PTR ds:0x4de0f4
  004d0dbd: 50                                              push   eax
  004d0dbe: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004d0dc1: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d0dc7: 52                                              push   edx
  004d0dc8: 50                                              push   eax
  004d0dc9: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0dcf: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004d0dd2: 85 c0                                           test   eax,eax
  004d0dd4: 0f 84 a4 fe ff ff                               je     0x4d0c7e
  004d0dda: 8b 35 24 e1 4d 00                               mov    esi,DWORD PTR ds:0x4de124
  004d0de0: 68 e4 0d 51 00                                  push   0x510de4
  004d0de5: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0deb: 51                                              push   ecx
  004d0dec: ff d6                                           call   esi
  004d0dee: 8b 1d f4 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0f4
  004d0df4: 6a 00                                           push   0x0
  004d0df6: 8d 55 fc                                        lea    edx,[ebp-0x4]
  004d0df9: 52                                              push   edx
  004d0dfa: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0e00: 50                                              push   eax
  004d0e01: ff d3                                           call   ebx
  004d0e03: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004d0e06: 50                                              push   eax
  004d0e07: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0e0d: 51                                              push   ecx
  004d0e0e: 57                                              push   edi
  004d0e0f: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0e15: 8b 45 20                                        mov    eax,DWORD PTR [ebp+0x20]
  004d0e18: 66 85 c0                                        test   ax,ax
  004d0e1b: 0f 8e 84 00 00 00                               jle    0x4d0ea5
  004d0e21: 0f bf d0                                        movsx  edx,ax
  004d0e24: 8d bd 94 fd ff ff                               lea    edi,[ebp-0x26c]
  004d0e2a: 89 55 1c                                        mov    DWORD PTR [ebp+0x1c],edx
  004d0e2d: 8b 37                                           mov    esi,DWORD PTR [edi]
  004d0e2f: 8d 45 f4                                        lea    eax,[ebp-0xc]
  004d0e32: 50                                              push   eax
  004d0e33: 8d 8d e4 fd ff ff                               lea    ecx,[ebp-0x21c]
  004d0e39: 51                                              push   ecx
  004d0e3a: 56                                              push   esi
  004d0e3b: e8 f0 03 00 00                                  call   0x4d1230
  004d0e40: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004d0e43: 83 c4 0c                                        add    esp,0xc
  004d0e46: 8d 95 24 fe ff ff                               lea    edx,[ebp-0x1dc]
  004d0e4c: 52                                              push   edx
  004d0e4d: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  004d0e50: 50                                              push   eax
  004d0e51: 56                                              push   esi
  004d0e52: 8d 8d e4 fd ff ff                               lea    ecx,[ebp-0x21c]
  004d0e58: 51                                              push   ecx
  004d0e59: 52                                              push   edx
  004d0e5a: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0e60: 68 b8 0d 51 00                                  push   0x510db8
  004d0e65: 50                                              push   eax
  004d0e66: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d0e6c: 83 c4 1c                                        add    esp,0x1c
  004d0e6f: 6a 00                                           push   0x0
  004d0e71: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d0e74: 51                                              push   ecx
  004d0e75: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d0e7b: 52                                              push   edx
  004d0e7c: ff d3                                           call   ebx
  004d0e7e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004d0e81: 50                                              push   eax
  004d0e82: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0e88: 50                                              push   eax
  004d0e89: 51                                              push   ecx
  004d0e8a: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0e90: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  004d0e93: 83 c7 04                                        add    edi,0x4
  004d0e96: 48                                              dec    eax
  004d0e97: 89 45 1c                                        mov    DWORD PTR [ebp+0x1c],eax
  004d0e9a: 75 91                                           jne    0x4d0e2d
  004d0e9c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004d0e9f: 8b 35 24 e1 4d 00                               mov    esi,DWORD PTR ds:0x4de124
  004d0ea5: 68 e0 31 50 00                                  push   0x5031e0
  004d0eaa: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d0eb0: 52                                              push   edx
  004d0eb1: ff d6                                           call   esi
  004d0eb3: 6a 00                                           push   0x0
  004d0eb5: 8d 45 fc                                        lea    eax,[ebp-0x4]
  004d0eb8: 50                                              push   eax
  004d0eb9: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d0ebf: 51                                              push   ecx
  004d0ec0: ff d3                                           call   ebx
  004d0ec2: 50                                              push   eax
  004d0ec3: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d0ec9: 52                                              push   edx
  004d0eca: 57                                              push   edi
  004d0ecb: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0ed1: 68 a4 0d 51 00                                  push   0x510da4
  004d0ed6: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0edc: 50                                              push   eax
  004d0edd: ff d6                                           call   esi
  004d0edf: 6a 00                                           push   0x0
  004d0ee1: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d0ee4: 51                                              push   ecx
  004d0ee5: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d0eeb: 52                                              push   edx
  004d0eec: ff d3                                           call   ebx
  004d0eee: 50                                              push   eax
  004d0eef: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d0ef5: 50                                              push   eax
  004d0ef6: 57                                              push   edi
  004d0ef7: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d0efd: 6a 06                                           push   0x6
  004d0eff: c7 45 1c 00 00 00 00                            mov    DWORD PTR [ebp+0x1c],0x0
  004d0f06: ff 15 5c e0 4d 00                               call   DWORD PTR ds:0x4de05c
  004d0f0c: 8b 35 80 e1 4d 00                               mov    esi,DWORD PTR ds:0x4de180
  004d0f12: 6a 01                                           push   0x1
  004d0f14: 6a 00                                           push   0x0
  004d0f16: ff d6                                           call   esi
  004d0f18: 50                                              push   eax
  004d0f19: ff 15 58 e0 4d 00                               call   DWORD PTR ds:0x4de058
  004d0f1f: 85 c0                                           test   eax,eax
  004d0f21: 74 07                                           je     0x4d0f2a
  004d0f23: c7 45 1c 01 00 00 00                            mov    DWORD PTR [ebp+0x1c],0x1
  004d0f2a: 33 c0                                           xor    eax,eax
  004d0f2c: b9 1d 00 00 00                                  mov    ecx,0x1d
  004d0f31: 8d bd 78 ff ff ff                               lea    edi,[ebp-0x88]
  004d0f37: f3 ab                                           rep stos DWORD PTR es:[edi],eax
  004d0f39: 8b 7d 24                                        mov    edi,DWORD PTR [ebp+0x24]
  004d0f3c: 8b 97 c4 00 00 00                               mov    edx,DWORD PTR [edi+0xc4]
  004d0f42: 8b 8f b8 00 00 00                               mov    ecx,DWORD PTR [edi+0xb8]
  004d0f48: 6a 00                                           push   0x0
  004d0f4a: b8 03 00 00 00                                  mov    eax,0x3
  004d0f4f: 89 55 9c                                        mov    DWORD PTR [ebp-0x64],edx
  004d0f52: 8b 15 54 e0 4d 00                               mov    edx,DWORD PTR ds:0x4de054
  004d0f58: 52                                              push   edx
  004d0f59: 89 45 80                                        mov    DWORD PTR [ebp-0x80],eax
  004d0f5c: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  004d0f5f: 89 45 98                                        mov    DWORD PTR [ebp-0x68],eax
  004d0f62: a1 50 e0 4d 00                                  mov    eax,ds:0x4de050
  004d0f67: 50                                              push   eax
  004d0f68: 89 8d 78 ff ff ff                               mov    DWORD PTR [ebp-0x88],ecx
  004d0f6e: 8b 8f b4 00 00 00                               mov    ecx,DWORD PTR [edi+0xb4]
  004d0f74: 6a 00                                           push   0x0
  004d0f76: 89 4d 90                                        mov    DWORD PTR [ebp-0x70],ecx
  004d0f79: 57                                              push   edi
  004d0f7a: 8d 8d 78 ff ff ff                               lea    ecx,[ebp-0x88]
  004d0f80: 51                                              push   ecx
  004d0f81: ff 15 68 e0 4d 00                               call   DWORD PTR ds:0x4de068
  004d0f87: 50                                              push   eax
  004d0f88: ff d6                                           call   esi
  004d0f8a: 50                                              push   eax
  004d0f8b: 68 4c 01 00 00                                  push   0x14c
  004d0f90: ff 15 4c e0 4d 00                               call   DWORD PTR ds:0x4de04c
  004d0f96: 85 c0                                           test   eax,eax
  004d0f98: 0f 84 74 02 00 00                               je     0x4d1212
  004d0f9e: 8b 35 5c e4 4d 00                               mov    esi,DWORD PTR ds:0x4de45c
  004d0fa4: 8b 45 90                                        mov    eax,DWORD PTR [ebp-0x70]
  004d0fa7: 85 c0                                           test   eax,eax
  004d0fa9: 0f 84 22 02 00 00                               je     0x4d11d1
  004d0faf: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  004d0fb2: 85 c0                                           test   eax,eax
  004d0fb4: 0f 84 e4 00 00 00                               je     0x4d109e
  004d0fba: 8b 8d 78 ff ff ff                               mov    ecx,DWORD PTR [ebp-0x88]
  004d0fc0: 8d 95 7c f9 ff ff                               lea    edx,[ebp-0x684]
  004d0fc6: 52                                              push   edx
  004d0fc7: 8d 45 18                                        lea    eax,[ebp+0x18]
  004d0fca: 50                                              push   eax
  004d0fcb: 51                                              push   ecx
  004d0fcc: c7 85 7c f9 ff ff 18 04 00 00                   mov    DWORD PTR [ebp-0x684],0x418
  004d0fd6: c7 85 8c f9 ff ff 00 04 00 00                   mov    DWORD PTR [ebp-0x674],0x400
  004d0fe0: c7 45 18 00 00 00 00                            mov    DWORD PTR [ebp+0x18],0x0
  004d0fe7: ff 15 80 e1 4d 00                               call   DWORD PTR ds:0x4de180
  004d0fed: 50                                              push   eax
  004d0fee: ff 15 48 e0 4d 00                               call   DWORD PTR ds:0x4de048
  004d0ff4: 85 c0                                           test   eax,eax
  004d0ff6: 74 3b                                           je     0x4d1033
  004d0ff8: 8d 95 90 f9 ff ff                               lea    edx,[ebp-0x670]
  004d0ffe: 52                                              push   edx
  004d0fff: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d1005: 68 9c 0d 51 00                                  push   0x510d9c
  004d100a: 50                                              push   eax
  004d100b: ff d6                                           call   esi
  004d100d: 83 c4 0c                                        add    esp,0xc
  004d1010: 6a 00                                           push   0x0
  004d1012: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d1015: 51                                              push   ecx
  004d1016: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d101c: 52                                              push   edx
  004d101d: ff d3                                           call   ebx
  004d101f: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004d1022: 50                                              push   eax
  004d1023: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d1029: 50                                              push   eax
  004d102a: 57                                              push   edi
  004d102b: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d1031: eb 03                                           jmp    0x4d1036
  004d1033: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004d1036: 8b 85 78 ff ff ff                               mov    eax,DWORD PTR [ebp-0x88]
  004d103c: 8d 4d f4                                        lea    ecx,[ebp-0xc]
  004d103f: 51                                              push   ecx
  004d1040: 8d 95 e4 fd ff ff                               lea    edx,[ebp-0x21c]
  004d1046: 52                                              push   edx
  004d1047: 50                                              push   eax
  004d1048: e8 e3 01 00 00                                  call   0x4d1230
  004d104d: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  004d1050: 8b 85 78 ff ff ff                               mov    eax,DWORD PTR [ebp-0x88]
  004d1056: 83 c4 0c                                        add    esp,0xc
  004d1059: 8d 8d 24 fe ff ff                               lea    ecx,[ebp-0x1dc]
  004d105f: 51                                              push   ecx
  004d1060: 52                                              push   edx
  004d1061: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  004d1064: 50                                              push   eax
  004d1065: 8d 8d e4 fd ff ff                               lea    ecx,[ebp-0x21c]
  004d106b: 51                                              push   ecx
  004d106c: 52                                              push   edx
  004d106d: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d1073: 68 74 0d 51 00                                  push   0x510d74
  004d1078: 50                                              push   eax
  004d1079: ff d6                                           call   esi
  004d107b: 83 c4 1c                                        add    esp,0x1c
  004d107e: 6a 00                                           push   0x0
  004d1080: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d1083: 51                                              push   ecx
  004d1084: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d108a: 52                                              push   edx
  004d108b: ff d3                                           call   ebx
  004d108d: 50                                              push   eax
  004d108e: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d1094: 50                                              push   eax
  004d1095: 57                                              push   edi
  004d1096: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d109c: eb 03                                           jmp    0x4d10a1
  004d109e: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004d10a1: 8b 55 90                                        mov    edx,DWORD PTR [ebp-0x70]
  004d10a4: 8b 45 94                                        mov    eax,DWORD PTR [ebp-0x6c]
  004d10a7: 83 ec 0c                                        sub    esp,0xc
  004d10aa: 8b cc                                           mov    ecx,esp
  004d10ac: 89 11                                           mov    DWORD PTR [ecx],edx
  004d10ae: 8b 55 98                                        mov    edx,DWORD PTR [ebp-0x68]
  004d10b1: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  004d10b4: 8b 45 9c                                        mov    eax,DWORD PTR [ebp-0x64]
  004d10b7: 50                                              push   eax
  004d10b8: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004d10bb: 8b 4d 84                                        mov    ecx,DWORD PTR [ebp-0x7c]
  004d10be: 8b 95 78 ff ff ff                               mov    edx,DWORD PTR [ebp-0x88]
  004d10c4: 51                                              push   ecx
  004d10c5: 52                                              push   edx
  004d10c6: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d10cc: 68 34 0d 51 00                                  push   0x510d34
  004d10d1: 50                                              push   eax
  004d10d2: ff d6                                           call   esi
  004d10d4: 83 c4 20                                        add    esp,0x20
  004d10d7: 6a 00                                           push   0x0
  004d10d9: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d10dc: 51                                              push   ecx
  004d10dd: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d10e3: 52                                              push   edx
  004d10e4: ff d3                                           call   ebx
  004d10e6: 50                                              push   eax
  004d10e7: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d10ed: 50                                              push   eax
  004d10ee: 57                                              push   edi
  004d10ef: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d10f5: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  004d10f8: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  004d10fb: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  004d10fe: 51                                              push   ecx
  004d10ff: 8b 4d ac                                        mov    ecx,DWORD PTR [ebp-0x54]
  004d1102: 52                                              push   edx
  004d1103: 50                                              push   eax
  004d1104: 51                                              push   ecx
  004d1105: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d110b: 68 14 0d 51 00                                  push   0x510d14
  004d1110: 52                                              push   edx
  004d1111: ff d6                                           call   esi
  004d1113: 83 c4 18                                        add    esp,0x18
  004d1116: 6a 00                                           push   0x0
  004d1118: 8d 45 fc                                        lea    eax,[ebp-0x4]
  004d111b: 50                                              push   eax
  004d111c: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  004d1122: 51                                              push   ecx
  004d1123: ff d3                                           call   ebx
  004d1125: 50                                              push   eax
  004d1126: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d112c: 52                                              push   edx
  004d112d: 57                                              push   edi
  004d112e: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d1134: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  004d1137: 85 c0                                           test   eax,eax
  004d1139: 0f 85 8f 00 00 00                               jne    0x4d11ce
  004d113f: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d1145: 68 04 0d 51 00                                  push   0x510d04
  004d114a: 50                                              push   eax
  004d114b: ff d6                                           call   esi
  004d114d: 83 c4 08                                        add    esp,0x8
  004d1150: 6a 00                                           push   0x0
  004d1152: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d1155: 51                                              push   ecx
  004d1156: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d115c: 52                                              push   edx
  004d115d: ff d3                                           call   ebx
  004d115f: 50                                              push   eax
  004d1160: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d1166: 50                                              push   eax
  004d1167: 57                                              push   edi
  004d1168: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d116e: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  004d1171: 8d 4d f4                                        lea    ecx,[ebp-0xc]
  004d1174: 51                                              push   ecx
  004d1175: 8d 95 e4 fd ff ff                               lea    edx,[ebp-0x21c]
  004d117b: 52                                              push   edx
  004d117c: 50                                              push   eax
  004d117d: e8 ae 00 00 00                                  call   0x4d1230
  004d1182: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  004d1185: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  004d1188: 83 c4 0c                                        add    esp,0xc
  004d118b: 8d 8d 24 fe ff ff                               lea    ecx,[ebp-0x1dc]
  004d1191: 51                                              push   ecx
  004d1192: 52                                              push   edx
  004d1193: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  004d1196: 50                                              push   eax
  004d1197: 8d 8d e4 fd ff ff                               lea    ecx,[ebp-0x21c]
  004d119d: 51                                              push   ecx
  004d119e: 52                                              push   edx
  004d119f: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d11a5: 68 dc 0c 51 00                                  push   0x510cdc
  004d11aa: 50                                              push   eax
  004d11ab: ff d6                                           call   esi
  004d11ad: 83 c4 1c                                        add    esp,0x1c
  004d11b0: 6a 00                                           push   0x0
  004d11b2: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d11b5: 51                                              push   ecx
  004d11b6: 8d 95 78 fe ff ff                               lea    edx,[ebp-0x188]
  004d11bc: 52                                              push   edx
  004d11bd: ff d3                                           call   ebx
  004d11bf: 50                                              push   eax
  004d11c0: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  004d11c6: 50                                              push   eax
  004d11c7: 57                                              push   edi
  004d11c8: ff 15 d0 e0 4d 00                               call   DWORD PTR ds:0x4de0d0
  004d11ce: 8b 7d 24                                        mov    edi,DWORD PTR [ebp+0x24]
  004d11d1: 8b 0d 54 e0 4d 00                               mov    ecx,DWORD PTR ds:0x4de054
  004d11d7: 8b 15 50 e0 4d 00                               mov    edx,DWORD PTR ds:0x4de050
  004d11dd: 6a 00                                           push   0x0
  004d11df: 51                                              push   ecx
  004d11e0: 52                                              push   edx
  004d11e1: 6a 00                                           push   0x0
  004d11e3: 57                                              push   edi
  004d11e4: 8d 85 78 ff ff ff                               lea    eax,[ebp-0x88]
  004d11ea: 50                                              push   eax
  004d11eb: ff 15 68 e0 4d 00                               call   DWORD PTR ds:0x4de068
  004d11f1: 50                                              push   eax
  004d11f2: ff 15 80 e1 4d 00                               call   DWORD PTR ds:0x4de180
  004d11f8: 50                                              push   eax
  004d11f9: 68 4c 01 00 00                                  push   0x14c
  004d11fe: ff 15 4c e0 4d 00                               call   DWORD PTR ds:0x4de04c
  004d1204: 85 c0                                           test   eax,eax
  004d1206: 0f 85 98 fd ff ff                               jne    0x4d0fa4
  004d120c: 8b 35 80 e1 4d 00                               mov    esi,DWORD PTR ds:0x4de180
  004d1212: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  004d1215: 85 c0                                           test   eax,eax
  004d1217: 0f 84 ae f9 ff ff                               je     0x4d0bcb
  004d121d: ff d6                                           call   esi
  004d121f: 50                                              push   eax
  004d1220: ff 15 44 e0 4d 00                               call   DWORD PTR ds:0x4de044
  004d1226: 5f                                              pop    edi
  004d1227: 5e                                              pop    esi
  004d1228: 5b                                              pop    ebx
  004d1229: 8b e5                                           mov    esp,ebp
  004d122b: 5d                                              pop    ebp
  004d122c: c3                                              ret
  004d1af4: ff 25 10 e2 4d 00                               jmp    DWORD PTR ds:0x4de210
  004d2508: ff 25 a4 e4 4d 00                               jmp    DWORD PTR ds:0x4de4a4
  004d252c: ff 25 7c e4 4d 00                               jmp    DWORD PTR ds:0x4de47c
  004d2550: ff 25 94 e4 4d 00                               jmp    DWORD PTR ds:0x4de494
  004d2d97: 55                                              push   ebp
  004d2d98: 8b ec                                           mov    ebp,esp
  004d2d9a: 83 ec 10                                        sub    esp,0x10
  004d2d9d: 6a 00                                           push   0x0
  004d2d9f: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004d2da2: ff 75 0c                                        push   DWORD PTR [ebp+0xc]
  004d2da5: ff 75 08                                        push   DWORD PTR [ebp+0x8]
  004d2da8: e8 0e 00 00 00                                  call   0x4d2dbb
  004d2dad: 8d 45 f0                                        lea    eax,[ebp-0x10]
  004d2db0: 68 88 0c 4f 00                                  push   0x4f0c88
  004d2db5: 50                                              push   eax
  004d2db6: e8 9b ef ff ff                                  call   0x4d1d56
  004d2dbb: 8b 44 24 04                                     mov    eax,DWORD PTR [esp+0x4]
  004d2dbf: 56                                              push   esi
  004d2dc0: 8b f1                                           mov    esi,ecx
  004d2dc2: 83 66 0c 00                                     and    DWORD PTR [esi+0xc],0x0
  004d2dc6: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004d2dc9: 8b 44 24 0c                                     mov    eax,DWORD PTR [esp+0xc]
  004d2dcd: c7 06 58 05 4e 00                               mov    DWORD PTR [esi],0x4e0558
  004d2dd3: 85 c0                                           test   eax,eax
  004d2dd5: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004d2dd8: 74 0d                                           je     0x4d2de7
  004d2dda: 80 7c 24 10 00                                  cmp    BYTE PTR [esp+0x10],0x0
  004d2ddf: 74 06                                           je     0x4d2de7
  004d2de1: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d2de3: 50                                              push   eax
  004d2de4: ff 51 04                                        call   DWORD PTR [ecx+0x4]
  004d2de7: 8b c6                                           mov    eax,esi
  004d2de9: 5e                                              pop    esi
  004d2dea: c2 0c 00                                        ret    0xc
