; PASSE 90, Une generation supplementaire de CALL internes
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 1529 distinct instructions; 39 graph entry points

  004029c0: 53                                              push   ebx
  004029c1: 56                                              push   esi
  004029c2: 8b f1                                           mov    esi,ecx
  004029c4: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  004029c7: 33 db                                           xor    ebx,ebx
  004029c9: 3b c3                                           cmp    eax,ebx
  004029cb: 74 1c                                           je     0x4029e9
  004029cd: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004029d0: 8a 01                                           mov    al,BYTE PTR [ecx]
  004029d2: 3a c3                                           cmp    al,bl
  004029d4: 74 0a                                           je     0x4029e0
  004029d6: 3c ff                                           cmp    al,0xff
  004029d8: 74 06                                           je     0x4029e0
  004029da: fe c8                                           dec    al
  004029dc: 88 01                                           mov    BYTE PTR [ecx],al
  004029de: eb 09                                           jmp    0x4029e9
  004029e0: 51                                              push   ecx
  004029e1: e8 7a f6 03 00                                  call   0x442060
  004029e6: 83 c4 04                                        add    esp,0x4
  004029e9: 89 5e 14                                        mov    DWORD PTR [esi+0x14],ebx
  004029ec: 89 5e 18                                        mov    DWORD PTR [esi+0x18],ebx
  004029ef: 89 5e 1c                                        mov    DWORD PTR [esi+0x1c],ebx
  004029f2: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004029f5: 3b c3                                           cmp    eax,ebx
  004029f7: 74 26                                           je     0x402a1f
  004029f9: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004029fc: 8a 01                                           mov    al,BYTE PTR [ecx]
  004029fe: 3a c3                                           cmp    al,bl
  00402a00: 74 14                                           je     0x402a16
  00402a02: 3c ff                                           cmp    al,0xff
  00402a04: 74 10                                           je     0x402a16
  00402a06: fe c8                                           dec    al
  00402a08: 88 01                                           mov    BYTE PTR [ecx],al
  00402a0a: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00402a0d: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00402a10: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00402a13: 5e                                              pop    esi
  00402a14: 5b                                              pop    ebx
  00402a15: c3                                              ret
  00402a16: 51                                              push   ecx
  00402a17: e8 44 f6 03 00                                  call   0x442060
  00402a1c: 83 c4 04                                        add    esp,0x4
  00402a1f: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00402a22: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00402a25: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00402a28: 5e                                              pop    esi
  00402a29: 5b                                              pop    ebx
  00402a2a: c3                                              ret
  00403b60: 55                                              push   ebp
  00403b61: 8b ec                                           mov    ebp,esp
  00403b63: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00403b66: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00403b69: 89 08                                           mov    DWORD PTR [eax],ecx
  00403b6b: 5d                                              pop    ebp
  00403b6c: c2 04 00                                        ret    0x4
  004046a0: 55                                              push   ebp
  004046a1: 8b ec                                           mov    ebp,esp
  004046a3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004046a6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004046a8: c1 e2 05                                        shl    edx,0x5
  004046ab: 03 d0                                           add    edx,eax
  004046ad: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004046b0: 89 10                                           mov    DWORD PTR [eax],edx
  004046b2: 5d                                              pop    ebp
  004046b3: c2 08 00                                        ret    0x8
  004046d0: 55                                              push   ebp
  004046d1: 8b ec                                           mov    ebp,esp
  004046d3: 6a ff                                           push   0xffffffff
  004046d5: 68 3a 32 4d 00                                  push   0x4d323a
  004046da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004046e0: 50                                              push   eax
  004046e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004046e8: 83 ec 0c                                        sub    esp,0xc
  004046eb: 53                                              push   ebx
  004046ec: 56                                              push   esi
  004046ed: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004046f0: 57                                              push   edi
  004046f1: 33 db                                           xor    ebx,ebx
  004046f3: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004046f6: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004046f9: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004046fc: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  004046ff: 0f 86 e2 00 00 00                               jbe    0x4047e7
  00404705: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  00404708: 3b f3                                           cmp    esi,ebx
  0040470a: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0040470e: 74 4b                                           je     0x40475b
  00404710: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00404713: 8a 07                                           mov    al,BYTE PTR [edi]
  00404715: 53                                              push   ebx
  00404716: 8b ce                                           mov    ecx,esi
  00404718: 88 06                                           mov    BYTE PTR [esi],al
  0040471a: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00404720: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00404725: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00404727: 51                                              push   ecx
  00404728: 53                                              push   ebx
  00404729: 57                                              push   edi
  0040472a: 8b ce                                           mov    ecx,esi
  0040472c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00404732: 8a 47 10                                        mov    al,BYTE PTR [edi+0x10]
  00404735: 83 c7 10                                        add    edi,0x10
  00404738: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0040473b: 88 01                                           mov    BYTE PTR [ecx],al
  0040473d: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00404740: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00404743: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  00404746: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0040474c: 8b 02                                           mov    eax,DWORD PTR [edx]
  0040474e: 50                                              push   eax
  0040474f: 53                                              push   ebx
  00404750: 57                                              push   edi
  00404751: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00404755: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0040475b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0040475e: 49                                              dec    ecx
  0040475f: 83 c6 20                                        add    esi,0x20
  00404762: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00404765: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00404768: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0040476b: eb 8f                                           jmp    0x4046fc
  004047e7: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004047ea: 5f                                              pop    edi
  004047eb: 8b c6                                           mov    eax,esi
  004047ed: 5e                                              pop    esi
  004047ee: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004047f5: 5b                                              pop    ebx
  004047f6: 8b e5                                           mov    esp,ebp
  004047f8: 5d                                              pop    ebp
  004047f9: c2 0c 00                                        ret    0xc
  00404800: 55                                              push   ebp
  00404801: 8b ec                                           mov    ebp,esp
  00404803: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00404806: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00404808: c1 e0 05                                        shl    eax,0x5
  0040480b: 2b c8                                           sub    ecx,eax
  0040480d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00404810: 89 08                                           mov    DWORD PTR [eax],ecx
  00404812: 5d                                              pop    ebp
  00404813: c2 08 00                                        ret    0x8
  00404be0: 55                                              push   ebp
  00404be1: 8b ec                                           mov    ebp,esp
  00404be3: 6a ff                                           push   0xffffffff
  00404be5: 68 6a 32 4d 00                                  push   0x4d326a
  00404bea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00404bf0: 50                                              push   eax
  00404bf1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00404bf8: 83 ec 0c                                        sub    esp,0xc
  00404bfb: 53                                              push   ebx
  00404bfc: 56                                              push   esi
  00404bfd: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00404c00: 57                                              push   edi
  00404c01: 33 db                                           xor    ebx,ebx
  00404c03: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00404c06: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00404c09: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00404c0c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00404c0f: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  00404c12: 0f 84 e1 00 00 00                               je     0x404cf9
  00404c18: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  00404c1b: 3b f3                                           cmp    esi,ebx
  00404c1d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00404c21: 74 4b                                           je     0x404c6e
  00404c23: 8a 07                                           mov    al,BYTE PTR [edi]
  00404c25: 53                                              push   ebx
  00404c26: 8b ce                                           mov    ecx,esi
  00404c28: 88 06                                           mov    BYTE PTR [esi],al
  00404c2a: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00404c30: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00404c35: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00404c37: 51                                              push   ecx
  00404c38: 53                                              push   ebx
  00404c39: 57                                              push   edi
  00404c3a: 8b ce                                           mov    ecx,esi
  00404c3c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00404c42: 8a 47 10                                        mov    al,BYTE PTR [edi+0x10]
  00404c45: 83 c7 10                                        add    edi,0x10
  00404c48: 8d 4e 10                                        lea    ecx,[esi+0x10]
  00404c4b: 88 01                                           mov    BYTE PTR [ecx],al
  00404c4d: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00404c50: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00404c53: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  00404c56: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00404c5c: 8b 02                                           mov    eax,DWORD PTR [edx]
  00404c5e: 50                                              push   eax
  00404c5f: 53                                              push   ebx
  00404c60: 57                                              push   edi
  00404c61: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00404c65: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00404c6b: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00404c6e: 83 c6 20                                        add    esi,0x20
  00404c71: 83 c7 20                                        add    edi,0x20
  00404c74: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00404c77: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  00404c7a: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00404c7d: eb 8d                                           jmp    0x404c0c
  00404cf9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00404cfc: 5f                                              pop    edi
  00404cfd: 8b c6                                           mov    eax,esi
  00404cff: 5e                                              pop    esi
  00404d00: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00404d07: 5b                                              pop    ebx
  00404d08: 8b e5                                           mov    esp,ebp
  00404d0a: 5d                                              pop    ebp
  00404d0b: c2 0c 00                                        ret    0xc
  00404d10: 55                                              push   ebp
  00404d11: 8b ec                                           mov    ebp,esp
  00404d13: 51                                              push   ecx
  00404d14: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00404d17: 3b 55 0c                                        cmp    edx,DWORD PTR [ebp+0xc]
  00404d1a: 0f 84 e9 01 00 00                               je     0x404f09
  00404d20: 53                                              push   ebx
  00404d21: 56                                              push   esi
  00404d22: 57                                              push   edi
  00404d23: 8d 5a 14                                        lea    ebx,[edx+0x14]
  00404d26: eb 03                                           jmp    0x404d2b
  00404d28: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00404d2b: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00404d2e: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00404d33: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00404d36: 8b 00                                           mov    eax,DWORD PTR [eax]
  00404d38: 8b f9                                           mov    edi,ecx
  00404d3a: 3b c7                                           cmp    eax,edi
  00404d3c: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00404d3f: 73 05                                           jae    0x404d46
  00404d41: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00404d44: 8b f8                                           mov    edi,eax
  00404d46: 3b d6                                           cmp    edx,esi
  00404d48: 75 1c                                           jne    0x404d66
  00404d4a: 50                                              push   eax
  00404d4b: 57                                              push   edi
  00404d4c: 8b ca                                           mov    ecx,edx
  00404d4e: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404d54: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00404d57: 6a 00                                           push   0x0
  00404d59: 6a 00                                           push   0x0
  00404d5b: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404d61: e9 a7 00 00 00                                  jmp    0x404e0d
  00404d66: 85 ff                                           test   edi,edi
  00404d68: 76 64                                           jbe    0x404dce
  00404d6a: 3b f9                                           cmp    edi,ecx
  00404d6c: 75 60                                           jne    0x404dce
  00404d6e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00404d71: 85 c0                                           test   eax,eax
  00404d73: 75 05                                           jne    0x404d7a
  00404d75: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404d7a: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00404d7e: 73 4e                                           jae    0x404dce
  00404d80: 8b 43 f0                                        mov    eax,DWORD PTR [ebx-0x10]
  00404d83: 85 c0                                           test   eax,eax
  00404d85: 74 1c                                           je     0x404da3
  00404d87: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00404d8a: 8a 01                                           mov    al,BYTE PTR [ecx]
  00404d8c: 84 c0                                           test   al,al
  00404d8e: 74 0a                                           je     0x404d9a
  00404d90: 3c ff                                           cmp    al,0xff
  00404d92: 74 06                                           je     0x404d9a
  00404d94: fe c8                                           dec    al
  00404d96: 88 01                                           mov    BYTE PTR [ecx],al
  00404d98: eb 09                                           jmp    0x404da3
  00404d9a: 51                                              push   ecx
  00404d9b: e8 c0 d2 03 00                                  call   0x442060
  00404da0: 83 c4 04                                        add    esp,0x4
  00404da3: 33 c9                                           xor    ecx,ecx
  00404da5: 89 4b f0                                        mov    DWORD PTR [ebx-0x10],ecx
  00404da8: 89 4b f4                                        mov    DWORD PTR [ebx-0xc],ecx
  00404dab: 89 4b f8                                        mov    DWORD PTR [ebx-0x8],ecx
  00404dae: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00404db1: 3b c1                                           cmp    eax,ecx
  00404db3: 75 05                                           jne    0x404dba
  00404db5: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404dba: 89 43 f0                                        mov    DWORD PTR [ebx-0x10],eax
  00404dbd: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00404dc0: 89 4b f4                                        mov    DWORD PTR [ebx-0xc],ecx
  00404dc3: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00404dc6: 89 53 f8                                        mov    DWORD PTR [ebx-0x8],edx
  00404dc9: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00404dcc: eb 3f                                           jmp    0x404e0d
  00404dce: 6a 01                                           push   0x1
  00404dd0: 57                                              push   edi
  00404dd1: 8b ca                                           mov    ecx,edx
  00404dd3: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00404dd9: 84 c0                                           test   al,al
  00404ddb: 74 30                                           je     0x404e0d
  00404ddd: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00404de0: 85 f6                                           test   esi,esi
  00404de2: 75 06                                           jne    0x404dea
  00404de4: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00404dea: 8b cf                                           mov    ecx,edi
  00404dec: 8b 7b f0                                        mov    edi,DWORD PTR [ebx-0x10]
  00404def: 8b c1                                           mov    eax,ecx
  00404df1: c1 e9 02                                        shr    ecx,0x2
  00404df4: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00404df6: 8b c8                                           mov    ecx,eax
  00404df8: 83 e1 03                                        and    ecx,0x3
  00404dfb: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00404dfd: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00404e00: 51                                              push   ecx
  00404e01: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00404e04: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00404e0a: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00404e0d: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00404e13: 8b 4e 18                                        mov    ecx,DWORD PTR [esi+0x18]
  00404e16: 8b 02                                           mov    eax,DWORD PTR [edx]
  00404e18: 83 c6 10                                        add    esi,0x10
  00404e1b: 8b f9                                           mov    edi,ecx
  00404e1d: 3b c7                                           cmp    eax,edi
  00404e1f: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00404e22: 73 05                                           jae    0x404e29
  00404e24: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00404e27: 8b f8                                           mov    edi,eax
  00404e29: 8d 53 fc                                        lea    edx,[ebx-0x4]
  00404e2c: 3b d6                                           cmp    edx,esi
  00404e2e: 75 1e                                           jne    0x404e4e
  00404e30: 50                                              push   eax
  00404e31: 8d 73 fc                                        lea    esi,[ebx-0x4]
  00404e34: 57                                              push   edi
  00404e35: 8b ce                                           mov    ecx,esi
  00404e37: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404e3d: 6a 00                                           push   0x0
  00404e3f: 6a 00                                           push   0x0
  00404e41: 8b ce                                           mov    ecx,esi
  00404e43: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404e49: e9 a1 00 00 00                                  jmp    0x404eef
  00404e4e: 85 ff                                           test   edi,edi
  00404e50: 76 61                                           jbe    0x404eb3
  00404e52: 3b f9                                           cmp    edi,ecx
  00404e54: 75 5d                                           jne    0x404eb3
  00404e56: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00404e59: 85 c0                                           test   eax,eax
  00404e5b: 75 05                                           jne    0x404e62
  00404e5d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404e62: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00404e66: 73 4b                                           jae    0x404eb3
  00404e68: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00404e6a: 85 c0                                           test   eax,eax
  00404e6c: 74 1c                                           je     0x404e8a
  00404e6e: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00404e71: 8a 01                                           mov    al,BYTE PTR [ecx]
  00404e73: 84 c0                                           test   al,al
  00404e75: 74 0a                                           je     0x404e81
  00404e77: 3c ff                                           cmp    al,0xff
  00404e79: 74 06                                           je     0x404e81
  00404e7b: fe c8                                           dec    al
  00404e7d: 88 01                                           mov    BYTE PTR [ecx],al
  00404e7f: eb 09                                           jmp    0x404e8a
  00404e81: 51                                              push   ecx
  00404e82: e8 d9 d1 03 00                                  call   0x442060
  00404e87: 83 c4 04                                        add    esp,0x4
  00404e8a: 33 c9                                           xor    ecx,ecx
  00404e8c: 89 0b                                           mov    DWORD PTR [ebx],ecx
  00404e8e: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00404e91: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00404e94: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00404e97: 3b c1                                           cmp    eax,ecx
  00404e99: 75 05                                           jne    0x404ea0
  00404e9b: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404ea0: 89 03                                           mov    DWORD PTR [ebx],eax
  00404ea2: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00404ea5: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00404ea8: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00404eab: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00404eae: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00404eb1: eb 3c                                           jmp    0x404eef
  00404eb3: 6a 01                                           push   0x1
  00404eb5: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00404eb8: 57                                              push   edi
  00404eb9: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00404ebf: 84 c0                                           test   al,al
  00404ec1: 74 2c                                           je     0x404eef
  00404ec3: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00404ec6: 85 f6                                           test   esi,esi
  00404ec8: 75 06                                           jne    0x404ed0
  00404eca: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00404ed0: 8b cf                                           mov    ecx,edi
  00404ed2: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  00404ed4: 8b c1                                           mov    eax,ecx
  00404ed6: c1 e9 02                                        shr    ecx,0x2
  00404ed9: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00404edb: 8b c8                                           mov    ecx,eax
  00404edd: 83 e1 03                                        and    ecx,0x3
  00404ee0: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00404ee2: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00404ee5: 51                                              push   ecx
  00404ee6: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00404ee9: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00404eef: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00404ef2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00404ef5: 83 c0 20                                        add    eax,0x20
  00404ef8: 83 c3 20                                        add    ebx,0x20
  00404efb: 3b c1                                           cmp    eax,ecx
  00404efd: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00404f00: 0f 85 22 fe ff ff                               jne    0x404d28
  00404f06: 5f                                              pop    edi
  00404f07: 5e                                              pop    esi
  00404f08: 5b                                              pop    ebx
  00404f09: 8b e5                                           mov    esp,ebp
  00404f0b: 5d                                              pop    ebp
  00404f0c: c3                                              ret
  00404f10: 55                                              push   ebp
  00404f11: 8b ec                                           mov    ebp,esp
  00404f13: 83 ec 08                                        sub    esp,0x8
  00404f16: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00404f19: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  00404f1c: 0f 84 35 01 00 00                               je     0x405057
  00404f22: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00404f25: 53                                              push   ebx
  00404f26: 56                                              push   esi
  00404f27: 57                                              push   edi
  00404f28: 8d 79 14                                        lea    edi,[ecx+0x14]
  00404f2b: 8d 70 14                                        lea    esi,[eax+0x14]
  00404f2e: eb 03                                           jmp    0x404f33
  00404f30: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00404f33: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00404f39: 8b 12                                           mov    edx,DWORD PTR [edx]
  00404f3b: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00404f3e: 52                                              push   edx
  00404f3f: 83 e8 20                                        sub    eax,0x20
  00404f42: 6a 00                                           push   0x0
  00404f44: 83 e9 20                                        sub    ecx,0x20
  00404f47: 83 ee 20                                        sub    esi,0x20
  00404f4a: 83 ef 20                                        sub    edi,0x20
  00404f4d: 50                                              push   eax
  00404f4e: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00404f51: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  00404f54: 89 4d 14                                        mov    DWORD PTR [ebp+0x14],ecx
  00404f57: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00404f5a: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00404f60: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00404f65: 8b 00                                           mov    eax,DWORD PTR [eax]
  00404f67: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00404f6a: 3b c3                                           cmp    eax,ebx
  00404f6c: 73 02                                           jae    0x404f70
  00404f6e: 8b d8                                           mov    ebx,eax
  00404f70: 8d 4e fc                                        lea    ecx,[esi-0x4]
  00404f73: 8d 57 fc                                        lea    edx,[edi-0x4]
  00404f76: 3b d1                                           cmp    edx,ecx
  00404f78: 75 1d                                           jne    0x404f97
  00404f7a: 50                                              push   eax
  00404f7b: 8d 4f fc                                        lea    ecx,[edi-0x4]
  00404f7e: 53                                              push   ebx
  00404f7f: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404f85: 6a 00                                           push   0x0
  00404f87: 6a 00                                           push   0x0
  00404f89: 8d 4f fc                                        lea    ecx,[edi-0x4]
  00404f8c: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404f92: e9 a5 00 00 00                                  jmp    0x40503c
  00404f97: 85 db                                           test   ebx,ebx
  00404f99: 76 60                                           jbe    0x404ffb
  00404f9b: 3b 5e 04                                        cmp    ebx,DWORD PTR [esi+0x4]
  00404f9e: 75 5b                                           jne    0x404ffb
  00404fa0: 8b 06                                           mov    eax,DWORD PTR [esi]
  00404fa2: 85 c0                                           test   eax,eax
  00404fa4: 75 05                                           jne    0x404fab
  00404fa6: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404fab: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00404faf: 73 4a                                           jae    0x404ffb
  00404fb1: 8b 07                                           mov    eax,DWORD PTR [edi]
  00404fb3: 85 c0                                           test   eax,eax
  00404fb5: 74 1c                                           je     0x404fd3
  00404fb7: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00404fba: 8a 01                                           mov    al,BYTE PTR [ecx]
  00404fbc: 84 c0                                           test   al,al
  00404fbe: 74 0a                                           je     0x404fca
  00404fc0: 3c ff                                           cmp    al,0xff
  00404fc2: 74 06                                           je     0x404fca
  00404fc4: fe c8                                           dec    al
  00404fc6: 88 01                                           mov    BYTE PTR [ecx],al
  00404fc8: eb 09                                           jmp    0x404fd3
  00404fca: 51                                              push   ecx
  00404fcb: e8 90 d0 03 00                                  call   0x442060
  00404fd0: 83 c4 04                                        add    esp,0x4
  00404fd3: 33 c9                                           xor    ecx,ecx
  00404fd5: 89 0f                                           mov    DWORD PTR [edi],ecx
  00404fd7: 89 4f 04                                        mov    DWORD PTR [edi+0x4],ecx
  00404fda: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  00404fdd: 8b 06                                           mov    eax,DWORD PTR [esi]
  00404fdf: 3b c1                                           cmp    eax,ecx
  00404fe1: 75 05                                           jne    0x404fe8
  00404fe3: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404fe8: 89 07                                           mov    DWORD PTR [edi],eax
  00404fea: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00404fed: 89 4f 04                                        mov    DWORD PTR [edi+0x4],ecx
  00404ff0: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00404ff3: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  00404ff6: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00404ff9: eb 41                                           jmp    0x40503c
  00404ffb: 6a 01                                           push   0x1
  00404ffd: 8d 4f fc                                        lea    ecx,[edi-0x4]
  00405000: 53                                              push   ebx
  00405001: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00405007: 84 c0                                           test   al,al
  00405009: 74 31                                           je     0x40503c
  0040500b: 8b 36                                           mov    esi,DWORD PTR [esi]
  0040500d: 85 f6                                           test   esi,esi
  0040500f: 75 06                                           jne    0x405017
  00405011: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00405017: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00405019: 8b cb                                           mov    ecx,ebx
  0040501b: 8b c1                                           mov    eax,ecx
  0040501d: c1 e9 02                                        shr    ecx,0x2
  00405020: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00405022: 8b c8                                           mov    ecx,eax
  00405024: 83 e1 03                                        and    ecx,0x3
  00405027: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00405029: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0040502c: 53                                              push   ebx
  0040502d: 83 c1 fc                                        add    ecx,0xfffffffc
  00405030: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00405036: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  00405039: 8b 7d fc                                        mov    edi,DWORD PTR [ebp-0x4]
  0040503c: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0040503f: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  00405042: 0f 85 e8 fe ff ff                               jne    0x404f30
  00405048: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040504b: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0040504e: 5f                                              pop    edi
  0040504f: 5e                                              pop    esi
  00405050: 89 08                                           mov    DWORD PTR [eax],ecx
  00405052: 5b                                              pop    ebx
  00405053: 8b e5                                           mov    esp,ebp
  00405055: 5d                                              pop    ebp
  00405056: c3                                              ret
  00405057: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040505a: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0040505d: 89 10                                           mov    DWORD PTR [eax],edx
  0040505f: 8b e5                                           mov    esp,ebp
  00405061: 5d                                              pop    ebp
  00405062: c3                                              ret
  00409220: 55                                              push   ebp
  00409221: 8b ec                                           mov    ebp,esp
  00409223: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00409226: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00409229: 89 08                                           mov    DWORD PTR [eax],ecx
  0040922b: 5d                                              pop    ebp
  0040922c: c2 04 00                                        ret    0x4
  00409230: 55                                              push   ebp
  00409231: 8b ec                                           mov    ebp,esp
  00409233: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00409235: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00409238: 8d 14 88                                        lea    edx,[eax+ecx*4]
  0040923b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040923e: 89 10                                           mov    DWORD PTR [eax],edx
  00409240: 5d                                              pop    ebp
  00409241: c2 08 00                                        ret    0x8
  00409310: 55                                              push   ebp
  00409311: 8b ec                                           mov    ebp,esp
  00409313: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00409316: 85 c0                                           test   eax,eax
  00409318: 76 1c                                           jbe    0x409336
  0040931a: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0040931d: 8b c8                                           mov    ecx,eax
  0040931f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00409322: 56                                              push   esi
  00409323: 85 c0                                           test   eax,eax
  00409325: 74 04                                           je     0x40932b
  00409327: 8b 32                                           mov    esi,DWORD PTR [edx]
  00409329: 89 30                                           mov    DWORD PTR [eax],esi
  0040932b: 83 c0 04                                        add    eax,0x4
  0040932e: 49                                              dec    ecx
  0040932f: 75 f2                                           jne    0x409323
  00409331: 5e                                              pop    esi
  00409332: 5d                                              pop    ebp
  00409333: c2 0c 00                                        ret    0xc
  00409336: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00409339: 5d                                              pop    ebp
  0040933a: c2 0c 00                                        ret    0xc
  00409340: 55                                              push   ebp
  00409341: 8b ec                                           mov    ebp,esp
  00409343: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00409346: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00409348: 8d 14 85 00 00 00 00                            lea    edx,[eax*4+0x0]
  0040934f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00409352: 2b ca                                           sub    ecx,edx
  00409354: 89 08                                           mov    DWORD PTR [eax],ecx
  00409356: 5d                                              pop    ebp
  00409357: c2 08 00                                        ret    0x8
  00409360: 55                                              push   ebp
  00409361: 8b ec                                           mov    ebp,esp
  00409363: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00409366: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00409369: 3b ca                                           cmp    ecx,edx
  0040936b: 74 1b                                           je     0x409388
  0040936d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00409370: 56                                              push   esi
  00409371: 85 c0                                           test   eax,eax
  00409373: 74 04                                           je     0x409379
  00409375: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00409377: 89 30                                           mov    DWORD PTR [eax],esi
  00409379: 83 c1 04                                        add    ecx,0x4
  0040937c: 83 c0 04                                        add    eax,0x4
  0040937f: 3b ca                                           cmp    ecx,edx
  00409381: 75 ee                                           jne    0x409371
  00409383: 5e                                              pop    esi
  00409384: 5d                                              pop    ebp
  00409385: c2 0c 00                                        ret    0xc
  00409388: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0040938b: 5d                                              pop    ebp
  0040938c: c2 0c 00                                        ret    0xc
  00409390: 55                                              push   ebp
  00409391: 8b ec                                           mov    ebp,esp
  00409393: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00409396: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00409399: 3b c1                                           cmp    eax,ecx
  0040939b: 74 10                                           je     0x4093ad
  0040939d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004093a0: 56                                              push   esi
  004093a1: 8b 32                                           mov    esi,DWORD PTR [edx]
  004093a3: 89 30                                           mov    DWORD PTR [eax],esi
  004093a5: 83 c0 04                                        add    eax,0x4
  004093a8: 3b c1                                           cmp    eax,ecx
  004093aa: 75 f5                                           jne    0x4093a1
  004093ac: 5e                                              pop    esi
  004093ad: 5d                                              pop    ebp
  004093ae: c3                                              ret
  004093b0: 55                                              push   ebp
  004093b1: 8b ec                                           mov    ebp,esp
  004093b3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004093b6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004093b9: 3b d0                                           cmp    edx,eax
  004093bb: 74 1b                                           je     0x4093d8
  004093bd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004093c0: 56                                              push   esi
  004093c1: 8b 70 fc                                        mov    esi,DWORD PTR [eax-0x4]
  004093c4: 83 e8 04                                        sub    eax,0x4
  004093c7: 83 e9 04                                        sub    ecx,0x4
  004093ca: 3b c2                                           cmp    eax,edx
  004093cc: 89 31                                           mov    DWORD PTR [ecx],esi
  004093ce: 75 f1                                           jne    0x4093c1
  004093d0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004093d3: 89 08                                           mov    DWORD PTR [eax],ecx
  004093d5: 5e                                              pop    esi
  004093d6: 5d                                              pop    ebp
  004093d7: c3                                              ret
  004093d8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004093db: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004093de: 89 08                                           mov    DWORD PTR [eax],ecx
  004093e0: 5d                                              pop    ebp
  004093e1: c3                                              ret
  004094c0: 55                                              push   ebp
  004094c1: 8b ec                                           mov    ebp,esp
  004094c3: 6a ff                                           push   0xffffffff
  004094c5: 68 0d 36 4d 00                                  push   0x4d360d
  004094ca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004094d0: 50                                              push   eax
  004094d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004094d8: 83 ec 08                                        sub    esp,0x8
  004094db: 53                                              push   ebx
  004094dc: 57                                              push   edi
  004094dd: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004094e0: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004094e3: 33 db                                           xor    ebx,ebx
  004094e5: 3b fb                                           cmp    edi,ebx
  004094e7: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004094ea: 0f 84 13 01 00 00                               je     0x409603
  004094f0: 56                                              push   esi
  004094f1: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004094f4: 8b 06                                           mov    eax,DWORD PTR [esi]
  004094f6: 89 07                                           mov    DWORD PTR [edi],eax
  004094f8: 8a 56 04                                        mov    dl,BYTE PTR [esi+0x4]
  004094fb: 8d 46 04                                        lea    eax,[esi+0x4]
  004094fe: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00409501: 88 11                                           mov    BYTE PTR [ecx],dl
  00409503: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00409506: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00409509: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  0040950c: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00409512: 8b 12                                           mov    edx,DWORD PTR [edx]
  00409514: 52                                              push   edx
  00409515: 53                                              push   ebx
  00409516: 50                                              push   eax
  00409517: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0040951d: 8a 46 14                                        mov    al,BYTE PTR [esi+0x14]
  00409520: 83 c6 14                                        add    esi,0x14
  00409523: 8d 5f 14                                        lea    ebx,[edi+0x14]
  00409526: 88 03                                           mov    BYTE PTR [ebx],al
  00409528: 33 c0                                           xor    eax,eax
  0040952a: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0040952d: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00409530: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  00409533: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00409538: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0040953b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0040953d: 8b f9                                           mov    edi,ecx
  0040953f: 3b c7                                           cmp    eax,edi
  00409541: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00409545: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00409548: 73 05                                           jae    0x40954f
  0040954a: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0040954d: 8b f8                                           mov    edi,eax
  0040954f: 3b de                                           cmp    ebx,esi
  00409551: 75 18                                           jne    0x40956b
  00409553: 50                                              push   eax
  00409554: 57                                              push   edi
  00409555: 8b cb                                           mov    ecx,ebx
  00409557: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0040955d: 6a 00                                           push   0x0
  0040955f: 6a 00                                           push   0x0
  00409561: 8b cb                                           mov    ecx,ebx
  00409563: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00409569: eb 7f                                           jmp    0x4095ea
  0040956b: 85 ff                                           test   edi,edi
  0040956d: 76 40                                           jbe    0x4095af
  0040956f: 3b f9                                           cmp    edi,ecx
  00409571: 75 3c                                           jne    0x4095af
  00409573: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00409576: 85 c0                                           test   eax,eax
  00409578: 75 05                                           jne    0x40957f
  0040957a: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040957f: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00409583: 73 2a                                           jae    0x4095af
  00409585: 6a 01                                           push   0x1
  00409587: 8b cb                                           mov    ecx,ebx
  00409589: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0040958f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00409592: 85 c0                                           test   eax,eax
  00409594: 75 05                                           jne    0x40959b
  00409596: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040959b: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0040959e: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004095a1: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004095a4: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004095a7: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004095aa: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004095ad: eb 3b                                           jmp    0x4095ea
  004095af: 6a 01                                           push   0x1
  004095b1: 57                                              push   edi
  004095b2: 8b cb                                           mov    ecx,ebx
  004095b4: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004095ba: 84 c0                                           test   al,al
  004095bc: 74 2c                                           je     0x4095ea
  004095be: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004095c1: 85 f6                                           test   esi,esi
  004095c3: 75 06                                           jne    0x4095cb
  004095c5: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004095cb: 8b cf                                           mov    ecx,edi
  004095cd: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004095d0: 8b c1                                           mov    eax,ecx
  004095d2: c1 e9 02                                        shr    ecx,0x2
  004095d5: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004095d7: 8b c8                                           mov    ecx,eax
  004095d9: 83 e1 03                                        and    ecx,0x3
  004095dc: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004095de: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  004095e1: 51                                              push   ecx
  004095e2: 8b cb                                           mov    ecx,ebx
  004095e4: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004095ea: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004095ed: 8b 50 24                                        mov    edx,DWORD PTR [eax+0x24]
  004095f0: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004095f3: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  004095f6: 8b 50 28                                        mov    edx,DWORD PTR [eax+0x28]
  004095f9: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  004095fc: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  004095ff: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  00409602: 5e                                              pop    esi
  00409603: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00409606: 5f                                              pop    edi
  00409607: 5b                                              pop    ebx
  00409608: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040960f: 8b e5                                           mov    esp,ebp
  00409611: 5d                                              pop    ebp
  00409612: c3                                              ret
  004114b0: 55                                              push   ebp
  004114b1: 8b ec                                           mov    ebp,esp
  004114b3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004114b6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004114b9: 89 08                                           mov    DWORD PTR [eax],ecx
  004114bb: 5d                                              pop    ebp
  004114bc: c2 04 00                                        ret    0x4
  004114d0: 55                                              push   ebp
  004114d1: 8b ec                                           mov    ebp,esp
  004114d3: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004114d5: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004114d8: 8d 14 88                                        lea    edx,[eax+ecx*4]
  004114db: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004114de: 89 10                                           mov    DWORD PTR [eax],edx
  004114e0: 5d                                              pop    ebp
  004114e1: c2 08 00                                        ret    0x8
  004114f0: 55                                              push   ebp
  004114f1: 8b ec                                           mov    ebp,esp
  004114f3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004114f6: 85 c0                                           test   eax,eax
  004114f8: 76 1c                                           jbe    0x411516
  004114fa: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004114fd: 8b c8                                           mov    ecx,eax
  004114ff: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00411502: 56                                              push   esi
  00411503: 85 c0                                           test   eax,eax
  00411505: 74 04                                           je     0x41150b
  00411507: 8b 32                                           mov    esi,DWORD PTR [edx]
  00411509: 89 30                                           mov    DWORD PTR [eax],esi
  0041150b: 83 c0 04                                        add    eax,0x4
  0041150e: 49                                              dec    ecx
  0041150f: 75 f2                                           jne    0x411503
  00411511: 5e                                              pop    esi
  00411512: 5d                                              pop    ebp
  00411513: c2 0c 00                                        ret    0xc
  00411516: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00411519: 5d                                              pop    ebp
  0041151a: c2 0c 00                                        ret    0xc
  00411520: 55                                              push   ebp
  00411521: 8b ec                                           mov    ebp,esp
  00411523: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00411526: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00411528: 8d 14 85 00 00 00 00                            lea    edx,[eax*4+0x0]
  0041152f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00411532: 2b ca                                           sub    ecx,edx
  00411534: 89 08                                           mov    DWORD PTR [eax],ecx
  00411536: 5d                                              pop    ebp
  00411537: c2 08 00                                        ret    0x8
  00411610: 55                                              push   ebp
  00411611: 8b ec                                           mov    ebp,esp
  00411613: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00411616: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00411619: 3b ca                                           cmp    ecx,edx
  0041161b: 74 1b                                           je     0x411638
  0041161d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00411620: 56                                              push   esi
  00411621: 85 c0                                           test   eax,eax
  00411623: 74 04                                           je     0x411629
  00411625: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00411627: 89 30                                           mov    DWORD PTR [eax],esi
  00411629: 83 c1 04                                        add    ecx,0x4
  0041162c: 83 c0 04                                        add    eax,0x4
  0041162f: 3b ca                                           cmp    ecx,edx
  00411631: 75 ee                                           jne    0x411621
  00411633: 5e                                              pop    esi
  00411634: 5d                                              pop    ebp
  00411635: c2 0c 00                                        ret    0xc
  00411638: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0041163b: 5d                                              pop    ebp
  0041163c: c2 0c 00                                        ret    0xc
  00411640: 55                                              push   ebp
  00411641: 8b ec                                           mov    ebp,esp
  00411643: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00411646: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00411649: 3b c1                                           cmp    eax,ecx
  0041164b: 74 10                                           je     0x41165d
  0041164d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00411650: 56                                              push   esi
  00411651: 8b 32                                           mov    esi,DWORD PTR [edx]
  00411653: 89 30                                           mov    DWORD PTR [eax],esi
  00411655: 83 c0 04                                        add    eax,0x4
  00411658: 3b c1                                           cmp    eax,ecx
  0041165a: 75 f5                                           jne    0x411651
  0041165c: 5e                                              pop    esi
  0041165d: 5d                                              pop    ebp
  0041165e: c3                                              ret
  00411660: 55                                              push   ebp
  00411661: 8b ec                                           mov    ebp,esp
  00411663: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00411666: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00411669: 3b d0                                           cmp    edx,eax
  0041166b: 74 1b                                           je     0x411688
  0041166d: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00411670: 56                                              push   esi
  00411671: 8b 70 fc                                        mov    esi,DWORD PTR [eax-0x4]
  00411674: 83 e8 04                                        sub    eax,0x4
  00411677: 83 e9 04                                        sub    ecx,0x4
  0041167a: 3b c2                                           cmp    eax,edx
  0041167c: 89 31                                           mov    DWORD PTR [ecx],esi
  0041167e: 75 f1                                           jne    0x411671
  00411680: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00411683: 89 08                                           mov    DWORD PTR [eax],ecx
  00411685: 5e                                              pop    esi
  00411686: 5d                                              pop    ebp
  00411687: c3                                              ret
  00411688: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041168b: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0041168e: 89 08                                           mov    DWORD PTR [eax],ecx
  00411690: 5d                                              pop    ebp
  00411691: c3                                              ret
  00429290: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00429292: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00429295: 84 d2                                           test   dl,dl
  00429297: 53                                              push   ebx
  00429298: 75 41                                           jne    0x4292db
  0042929a: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0042929d: 8a 5a 15                                        mov    bl,BYTE PTR [edx+0x15]
  004292a0: 84 db                                           test   bl,bl
  004292a2: 75 18                                           jne    0x4292bc
  004292a4: 8b 02                                           mov    eax,DWORD PTR [edx]
  004292a6: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004292a9: 84 db                                           test   bl,bl
  004292ab: 75 0b                                           jne    0x4292b8
  004292ad: 8b d0                                           mov    edx,eax
  004292af: 8b 02                                           mov    eax,DWORD PTR [edx]
  004292b1: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004292b4: 84 db                                           test   bl,bl
  004292b6: 74 f5                                           je     0x4292ad
  004292b8: 89 11                                           mov    DWORD PTR [ecx],edx
  004292ba: 5b                                              pop    ebx
  004292bb: c3                                              ret
  004292bc: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004292bf: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  004292c2: 84 d2                                           test   dl,dl
  004292c4: 75 13                                           jne    0x4292d9
  004292c6: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004292c8: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  004292cb: 75 0c                                           jne    0x4292d9
  004292cd: 89 01                                           mov    DWORD PTR [ecx],eax
  004292cf: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004292d2: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  004292d5: 84 d2                                           test   dl,dl
  004292d7: 74 ed                                           je     0x4292c6
  004292d9: 89 01                                           mov    DWORD PTR [ecx],eax
  004292db: 5b                                              pop    ebx
  004292dc: c3                                              ret
  00429c80: 55                                              push   ebp
  00429c81: 8b ec                                           mov    ebp,esp
  00429c83: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00429c86: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00429c89: 89 08                                           mov    DWORD PTR [eax],ecx
  00429c8b: 5d                                              pop    ebp
  00429c8c: c2 04 00                                        ret    0x4
  00429c90: 55                                              push   ebp
  00429c91: 8b ec                                           mov    ebp,esp
  00429c93: 53                                              push   ebx
  00429c94: 56                                              push   esi
  00429c95: 57                                              push   edi
  00429c96: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00429c99: 8a 47 01                                        mov    al,BYTE PTR [edi+0x1]
  00429c9c: 8b f1                                           mov    esi,ecx
  00429c9e: 8a 0f                                           mov    cl,BYTE PTR [edi]
  00429ca0: 6a 18                                           push   0x18
  00429ca2: 88 0e                                           mov    BYTE PTR [esi],cl
  00429ca4: 88 46 01                                        mov    BYTE PTR [esi+0x1],al
  00429ca7: e8 44 83 01 00                                  call   0x441ff0
  00429cac: 33 c9                                           xor    ecx,ecx
  00429cae: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00429cb1: 88 48 15                                        mov    BYTE PTR [eax+0x15],cl
  00429cb4: b2 01                                           mov    dl,0x1
  00429cb6: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  00429cb9: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00429cbc: 88 50 15                                        mov    BYTE PTR [eax+0x15],dl
  00429cbf: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429cc2: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00429cc5: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429cc8: 89 00                                           mov    DWORD PTR [eax],eax
  00429cca: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429ccd: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00429cd0: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00429cd3: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00429cd6: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00429cd9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00429cdc: 83 c4 04                                        add    esp,0x4
  00429cdf: 53                                              push   ebx
  00429ce0: 51                                              push   ecx
  00429ce1: 8b ce                                           mov    ecx,esi
  00429ce3: e8 b8 f3 ff ff                                  call   0x4290a0
  00429ce8: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00429ceb: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00429cee: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429cf1: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00429cf4: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00429cf7: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  00429cfa: 84 d2                                           test   dl,dl
  00429cfc: 75 3e                                           jne    0x429d3c
  00429cfe: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00429d00: 8a 5a 15                                        mov    bl,BYTE PTR [edx+0x15]
  00429d03: 84 db                                           test   bl,bl
  00429d05: 75 0b                                           jne    0x429d12
  00429d07: 8b ca                                           mov    ecx,edx
  00429d09: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00429d0b: 8a 5a 15                                        mov    bl,BYTE PTR [edx+0x15]
  00429d0e: 84 db                                           test   bl,bl
  00429d10: 74 f5                                           je     0x429d07
  00429d12: 89 08                                           mov    DWORD PTR [eax],ecx
  00429d14: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00429d17: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00429d1a: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00429d1d: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00429d20: 84 db                                           test   bl,bl
  00429d22: 75 0c                                           jne    0x429d30
  00429d24: 8b c8                                           mov    ecx,eax
  00429d26: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00429d29: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00429d2c: 84 db                                           test   bl,bl
  00429d2e: 74 f4                                           je     0x429d24
  00429d30: 5f                                              pop    edi
  00429d31: 8b c6                                           mov    eax,esi
  00429d33: 5e                                              pop    esi
  00429d34: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00429d37: 5b                                              pop    ebx
  00429d38: 5d                                              pop    ebp
  00429d39: c2 04 00                                        ret    0x4
  00429d3c: 89 00                                           mov    DWORD PTR [eax],eax
  00429d3e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429d41: 5f                                              pop    edi
  00429d42: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00429d45: 8b c6                                           mov    eax,esi
  00429d47: 5e                                              pop    esi
  00429d48: 5b                                              pop    ebx
  00429d49: 5d                                              pop    ebp
  00429d4a: c2 04 00                                        ret    0x4
  00429d50: 55                                              push   ebp
  00429d51: 8b ec                                           mov    ebp,esp
  00429d53: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00429d56: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00429d58: 8d 14 80                                        lea    edx,[eax+eax*4]
  00429d5b: 8d 04 50                                        lea    eax,[eax+edx*2]
  00429d5e: 8d 14 81                                        lea    edx,[ecx+eax*4]
  00429d61: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00429d64: 89 10                                           mov    DWORD PTR [eax],edx
  00429d66: 5d                                              pop    ebp
  00429d67: c2 08 00                                        ret    0x8
  0042a1c0: 55                                              push   ebp
  0042a1c1: 8b ec                                           mov    ebp,esp
  0042a1c3: 6a ff                                           push   0xffffffff
  0042a1c5: 68 69 4b 4d 00                                  push   0x4d4b69
  0042a1ca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042a1d0: 50                                              push   eax
  0042a1d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042a1d8: 83 ec 14                                        sub    esp,0x14
  0042a1db: 53                                              push   ebx
  0042a1dc: 56                                              push   esi
  0042a1dd: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0042a1e0: 57                                              push   edi
  0042a1e1: 33 db                                           xor    ebx,ebx
  0042a1e3: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0042a1e6: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  0042a1e9: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0042a1ec: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  0042a1ef: 0f 86 65 01 00 00                               jbe    0x42a35a
  0042a1f5: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  0042a1f8: 3b f3                                           cmp    esi,ebx
  0042a1fa: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0042a1fe: 0f 84 89 00 00 00                               je     0x42a28d
  0042a204: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0042a207: 8a 07                                           mov    al,BYTE PTR [edi]
  0042a209: 53                                              push   ebx
  0042a20a: 8b ce                                           mov    ecx,esi
  0042a20c: 88 06                                           mov    BYTE PTR [esi],al
  0042a20e: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042a214: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042a219: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042a21b: 51                                              push   ecx
  0042a21c: 53                                              push   ebx
  0042a21d: 57                                              push   edi
  0042a21e: 8b ce                                           mov    ecx,esi
  0042a220: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042a226: 8a 57 11                                        mov    dl,BYTE PTR [edi+0x11]
  0042a229: 8a 47 10                                        mov    al,BYTE PTR [edi+0x10]
  0042a22c: 83 c7 10                                        add    edi,0x10
  0042a22f: 88 55 e8                                        mov    BYTE PTR [ebp-0x18],dl
  0042a232: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  0042a235: 88 45 ef                                        mov    BYTE PTR [ebp-0x11],al
  0042a238: 52                                              push   edx
  0042a239: 8d 45 ef                                        lea    eax,[ebp-0x11]
  0042a23c: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0042a23f: 50                                              push   eax
  0042a240: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0042a244: e8 37 01 00 00                                  call   0x42a380
  0042a249: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0042a24c: e8 9f fe ff ff                                  call   0x42a0f0
  0042a251: 57                                              push   edi
  0042a252: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0042a255: e8 26 eb ff ff                                  call   0x428d80
  0042a25a: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0042a25d: 8d 41 1c                                        lea    eax,[ecx+0x1c]
  0042a260: 8a 00                                           mov    al,BYTE PTR [eax]
  0042a262: 8d 7e 1c                                        lea    edi,[esi+0x1c]
  0042a265: 53                                              push   ebx
  0042a266: 8b cf                                           mov    ecx,edi
  0042a268: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0042a26c: 88 07                                           mov    BYTE PTR [edi],al
  0042a26e: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042a274: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0042a27a: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042a27c: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0042a27f: 50                                              push   eax
  0042a280: 8d 41 1c                                        lea    eax,[ecx+0x1c]
  0042a283: 53                                              push   ebx
  0042a284: 50                                              push   eax
  0042a285: 8b cf                                           mov    ecx,edi
  0042a287: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042a28d: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042a290: 49                                              dec    ecx
  0042a291: 83 c6 2c                                        add    esi,0x2c
  0042a294: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0042a297: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0042a29a: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0042a29d: e9 4a ff ff ff                                  jmp    0x42a1ec
  0042a35a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042a35d: 5f                                              pop    edi
  0042a35e: 8b c6                                           mov    eax,esi
  0042a360: 5e                                              pop    esi
  0042a361: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042a368: 5b                                              pop    ebx
  0042a369: 8b e5                                           mov    esp,ebp
  0042a36b: 5d                                              pop    ebp
  0042a36c: c2 0c 00                                        ret    0xc
  0042a3a0: 55                                              push   ebp
  0042a3a1: 8b ec                                           mov    ebp,esp
  0042a3a3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042a3a6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0042a3a8: 8d 14 80                                        lea    edx,[eax+eax*4]
  0042a3ab: 8d 04 50                                        lea    eax,[eax+edx*2]
  0042a3ae: c1 e0 02                                        shl    eax,0x2
  0042a3b1: 2b c8                                           sub    ecx,eax
  0042a3b3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a3b6: 89 08                                           mov    DWORD PTR [eax],ecx
  0042a3b8: 5d                                              pop    ebp
  0042a3b9: c2 08 00                                        ret    0x8
  0042a4b0: 55                                              push   ebp
  0042a4b1: 8b ec                                           mov    ebp,esp
  0042a4b3: 6a ff                                           push   0xffffffff
  0042a4b5: 68 b9 4b 4d 00                                  push   0x4d4bb9
  0042a4ba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042a4c0: 50                                              push   eax
  0042a4c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042a4c8: 83 ec 14                                        sub    esp,0x14
  0042a4cb: 53                                              push   ebx
  0042a4cc: 56                                              push   esi
  0042a4cd: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0042a4d0: 57                                              push   edi
  0042a4d1: 33 db                                           xor    ebx,ebx
  0042a4d3: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0042a4d6: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  0042a4d9: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0042a4dc: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042a4df: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  0042a4e2: 0f 84 61 01 00 00                               je     0x42a649
  0042a4e8: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  0042a4eb: 3b f3                                           cmp    esi,ebx
  0042a4ed: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0042a4f1: 0f 84 86 00 00 00                               je     0x42a57d
  0042a4f7: 8a 07                                           mov    al,BYTE PTR [edi]
  0042a4f9: 53                                              push   ebx
  0042a4fa: 8b ce                                           mov    ecx,esi
  0042a4fc: 88 06                                           mov    BYTE PTR [esi],al
  0042a4fe: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042a504: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042a509: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042a50b: 51                                              push   ecx
  0042a50c: 53                                              push   ebx
  0042a50d: 57                                              push   edi
  0042a50e: 8b ce                                           mov    ecx,esi
  0042a510: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042a516: 8a 57 11                                        mov    dl,BYTE PTR [edi+0x11]
  0042a519: 8a 47 10                                        mov    al,BYTE PTR [edi+0x10]
  0042a51c: 88 55 e8                                        mov    BYTE PTR [ebp-0x18],dl
  0042a51f: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  0042a522: 88 45 ef                                        mov    BYTE PTR [ebp-0x11],al
  0042a525: 52                                              push   edx
  0042a526: 8d 45 ef                                        lea    eax,[ebp-0x11]
  0042a529: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0042a52c: 50                                              push   eax
  0042a52d: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0042a531: e8 4a fe ff ff                                  call   0x42a380
  0042a536: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0042a539: e8 b2 fb ff ff                                  call   0x42a0f0
  0042a53e: 8d 47 10                                        lea    eax,[edi+0x10]
  0042a541: 50                                              push   eax
  0042a542: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0042a545: e8 36 e8 ff ff                                  call   0x428d80
  0042a54a: 8d 47 1c                                        lea    eax,[edi+0x1c]
  0042a54d: 8a 00                                           mov    al,BYTE PTR [eax]
  0042a54f: 8d 7e 1c                                        lea    edi,[esi+0x1c]
  0042a552: 53                                              push   ebx
  0042a553: 8b cf                                           mov    ecx,edi
  0042a555: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0042a559: 88 07                                           mov    BYTE PTR [edi],al
  0042a55b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042a561: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0042a567: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042a569: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a56c: 52                                              push   edx
  0042a56d: 53                                              push   ebx
  0042a56e: 83 c0 1c                                        add    eax,0x1c
  0042a571: 50                                              push   eax
  0042a572: 8b cf                                           mov    ecx,edi
  0042a574: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042a57a: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042a57d: 83 c6 2c                                        add    esi,0x2c
  0042a580: 83 c7 2c                                        add    edi,0x2c
  0042a583: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0042a586: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0042a589: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0042a58c: e9 4b ff ff ff                                  jmp    0x42a4dc
  0042a649: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042a64c: 5f                                              pop    edi
  0042a64d: 8b c6                                           mov    eax,esi
  0042a64f: 5e                                              pop    esi
  0042a650: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042a657: 5b                                              pop    ebx
  0042a658: 8b e5                                           mov    esp,ebp
  0042a65a: 5d                                              pop    ebp
  0042a65b: c2 0c 00                                        ret    0xc
  0042a660: 55                                              push   ebp
  0042a661: 8b ec                                           mov    ebp,esp
  0042a663: 83 ec 10                                        sub    esp,0x10
  0042a666: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042a669: 53                                              push   ebx
  0042a66a: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042a66d: 3b d8                                           cmp    ebx,eax
  0042a66f: 0f 84 bc 01 00 00                               je     0x42a831
  0042a675: 56                                              push   esi
  0042a676: 57                                              push   edi
  0042a677: 83 c3 14                                        add    ebx,0x14
  0042a67a: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0042a67d: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0042a680: 8d 42 10                                        lea    eax,[edx+0x10]
  0042a683: 3b c8                                           cmp    ecx,eax
  0042a685: 8d 7b fc                                        lea    edi,[ebx-0x4]
  0042a688: 74 7e                                           je     0x42a708
  0042a68a: 8b 33                                           mov    esi,DWORD PTR [ebx]
  0042a68c: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0042a68f: 85 c9                                           test   ecx,ecx
  0042a691: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042a693: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0042a696: 74 33                                           je     0x42a6cb
  0042a698: 8b c8                                           mov    ecx,eax
  0042a69a: 3b c1                                           cmp    eax,ecx
  0042a69c: 75 2d                                           jne    0x42a6cb
  0042a69e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042a6a1: 50                                              push   eax
  0042a6a2: 8b cf                                           mov    ecx,edi
  0042a6a4: e8 f7 ea ff ff                                  call   0x4291a0
  0042a6a9: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0042a6ab: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042a6ae: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0042a6b0: c7 43 04 00 00 00 00                            mov    DWORD PTR [ebx+0x4],0x0
  0042a6b7: 89 00                                           mov    DWORD PTR [eax],eax
  0042a6b9: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0042a6bb: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0042a6be: 51                                              push   ecx
  0042a6bf: 8b cf                                           mov    ecx,edi
  0042a6c1: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0042a6c4: e8 17 cf ff ff                                  call   0x4275e0
  0042a6c9: eb 2a                                           jmp    0x42a6f5
  0042a6cb: 3b c6                                           cmp    eax,esi
  0042a6cd: 74 23                                           je     0x42a6f2
  0042a6cf: 6a 00                                           push   0x0
  0042a6d1: 8d 55 f4                                        lea    edx,[ebp-0xc]
  0042a6d4: 52                                              push   edx
  0042a6d5: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0042a6d8: e8 03 dc ff ff                                  call   0x4282e0
  0042a6dd: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042a6df: 50                                              push   eax
  0042a6e0: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0042a6e3: 51                                              push   ecx
  0042a6e4: 8b cf                                           mov    ecx,edi
  0042a6e6: e8 15 cf ff ff                                  call   0x427600
  0042a6eb: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0042a6ee: 3b c6                                           cmp    eax,esi
  0042a6f0: 75 dd                                           jne    0x42a6cf
  0042a6f2: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0042a6f5: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0042a6f8: 8a 4a 10                                        mov    cl,BYTE PTR [edx+0x10]
  0042a6fb: 8d 42 10                                        lea    eax,[edx+0x10]
  0042a6fe: 88 0f                                           mov    BYTE PTR [edi],cl
  0042a700: 50                                              push   eax
  0042a701: 8b cf                                           mov    ecx,edi
  0042a703: e8 78 e6 ff ff                                  call   0x428d80
  0042a708: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0042a70b: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042a710: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042a712: 8d 72 1c                                        lea    esi,[edx+0x1c]
  0042a715: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0042a718: 8b fa                                           mov    edi,edx
  0042a71a: 3b c7                                           cmp    eax,edi
  0042a71c: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0042a71f: 73 05                                           jae    0x42a726
  0042a721: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0042a724: 8b f8                                           mov    edi,eax
  0042a726: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  0042a729: 3b ce                                           cmp    ecx,esi
  0042a72b: 75 6f                                           jne    0x42a79c
  0042a72d: 8b f0                                           mov    esi,eax
  0042a72f: 39 7b 10                                        cmp    DWORD PTR [ebx+0x10],edi
  0042a732: 73 06                                           jae    0x42a73a
  0042a734: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0042a73a: 8b 43 10                                        mov    eax,DWORD PTR [ebx+0x10]
  0042a73d: 2b c7                                           sub    eax,edi
  0042a73f: 3b c6                                           cmp    eax,esi
  0042a741: 73 02                                           jae    0x42a745
  0042a743: 8b f0                                           mov    esi,eax
  0042a745: 85 f6                                           test   esi,esi
  0042a747: 76 44                                           jbe    0x42a78d
  0042a749: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  0042a74c: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0042a752: 8b 53 10                                        mov    edx,DWORD PTR [ebx+0x10]
  0042a755: 8b 4b 0c                                        mov    ecx,DWORD PTR [ebx+0xc]
  0042a758: 2b d6                                           sub    edx,esi
  0042a75a: 8d 04 39                                        lea    eax,[ecx+edi*1]
  0042a75d: 2b d7                                           sub    edx,edi
  0042a75f: 52                                              push   edx
  0042a760: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  0042a763: 51                                              push   ecx
  0042a764: 50                                              push   eax
  0042a765: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0042a76b: 8b 7b 10                                        mov    edi,DWORD PTR [ebx+0x10]
  0042a76e: 83 c4 0c                                        add    esp,0xc
  0042a771: 6a 00                                           push   0x0
  0042a773: 2b fe                                           sub    edi,esi
  0042a775: 57                                              push   edi
  0042a776: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  0042a779: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042a77f: 84 c0                                           test   al,al
  0042a781: 74 0a                                           je     0x42a78d
  0042a783: 57                                              push   edi
  0042a784: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  0042a787: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042a78d: 6a 00                                           push   0x0
  0042a78f: 6a 00                                           push   0x0
  0042a791: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  0042a794: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0042a79a: eb 7c                                           jmp    0x42a818
  0042a79c: 85 ff                                           test   edi,edi
  0042a79e: 76 3e                                           jbe    0x42a7de
  0042a7a0: 3b fa                                           cmp    edi,edx
  0042a7a2: 75 3a                                           jne    0x42a7de
  0042a7a4: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042a7a7: 85 c0                                           test   eax,eax
  0042a7a9: 75 05                                           jne    0x42a7b0
  0042a7ab: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042a7b0: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0042a7b4: 73 28                                           jae    0x42a7de
  0042a7b6: 6a 01                                           push   0x1
  0042a7b8: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042a7be: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042a7c1: 85 c0                                           test   eax,eax
  0042a7c3: 75 05                                           jne    0x42a7ca
  0042a7c5: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042a7ca: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0042a7cd: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0042a7d0: 89 53 10                                        mov    DWORD PTR [ebx+0x10],edx
  0042a7d3: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0042a7d6: 89 4b 14                                        mov    DWORD PTR [ebx+0x14],ecx
  0042a7d9: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0042a7dc: eb 3a                                           jmp    0x42a818
  0042a7de: 6a 01                                           push   0x1
  0042a7e0: 57                                              push   edi
  0042a7e1: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042a7e7: 84 c0                                           test   al,al
  0042a7e9: 74 2d                                           je     0x42a818
  0042a7eb: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0042a7ee: 85 f6                                           test   esi,esi
  0042a7f0: 75 06                                           jne    0x42a7f8
  0042a7f2: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0042a7f8: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0042a7fb: 8b cf                                           mov    ecx,edi
  0042a7fd: 8b 7b 0c                                        mov    edi,DWORD PTR [ebx+0xc]
  0042a800: 8b d1                                           mov    edx,ecx
  0042a802: c1 e9 02                                        shr    ecx,0x2
  0042a805: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042a807: 8b ca                                           mov    ecx,edx
  0042a809: 83 e1 03                                        and    ecx,0x3
  0042a80c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042a80e: 50                                              push   eax
  0042a80f: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  0042a812: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042a818: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a81b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042a81e: 83 c0 2c                                        add    eax,0x2c
  0042a821: 83 c3 2c                                        add    ebx,0x2c
  0042a824: 3b c1                                           cmp    eax,ecx
  0042a826: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0042a829: 0f 85 4b fe ff ff                               jne    0x42a67a
  0042a82f: 5f                                              pop    edi
  0042a830: 5e                                              pop    esi
  0042a831: 5b                                              pop    ebx
  0042a832: 8b e5                                           mov    esp,ebp
  0042a834: 5d                                              pop    ebp
  0042a835: c3                                              ret
  0042a840: 55                                              push   ebp
  0042a841: 8b ec                                           mov    ebp,esp
  0042a843: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042a846: 53                                              push   ebx
  0042a847: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  0042a84a: 3b c3                                           cmp    eax,ebx
  0042a84c: 74 68                                           je     0x42a8b6
  0042a84e: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0042a851: 56                                              push   esi
  0042a852: 57                                              push   edi
  0042a853: 8d 70 10                                        lea    esi,[eax+0x10]
  0042a856: 8d 7b 10                                        lea    edi,[ebx+0x10]
  0042a859: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0042a85c: 83 ef 2c                                        sub    edi,0x2c
  0042a85f: 83 ea 2c                                        sub    edx,0x2c
  0042a862: 83 ee 2c                                        sub    esi,0x2c
  0042a865: 83 eb 2c                                        sub    ebx,0x2c
  0042a868: 3b f7                                           cmp    esi,edi
  0042a86a: 89 55 14                                        mov    DWORD PTR [ebp+0x14],edx
  0042a86d: 74 1e                                           je     0x42a88d
  0042a86f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042a872: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042a874: 50                                              push   eax
  0042a875: 51                                              push   ecx
  0042a876: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0042a879: 51                                              push   ecx
  0042a87a: 8b ce                                           mov    ecx,esi
  0042a87c: e8 6f dd ff ff                                  call   0x4285f0
  0042a881: 8a 17                                           mov    dl,BYTE PTR [edi]
  0042a883: 57                                              push   edi
  0042a884: 8b ce                                           mov    ecx,esi
  0042a886: 88 16                                           mov    BYTE PTR [esi],dl
  0042a888: e8 f3 e4 ff ff                                  call   0x428d80
  0042a88d: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042a892: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042a894: 51                                              push   ecx
  0042a895: 6a 00                                           push   0x0
  0042a897: 8d 57 0c                                        lea    edx,[edi+0xc]
  0042a89a: 52                                              push   edx
  0042a89b: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  0042a89e: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042a8a4: 3b 5d 0c                                        cmp    ebx,DWORD PTR [ebp+0xc]
  0042a8a7: 75 b0                                           jne    0x42a859
  0042a8a9: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a8ac: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0042a8af: 5f                                              pop    edi
  0042a8b0: 5e                                              pop    esi
  0042a8b1: 89 08                                           mov    DWORD PTR [eax],ecx
  0042a8b3: 5b                                              pop    ebx
  0042a8b4: 5d                                              pop    ebp
  0042a8b5: c3                                              ret
  0042a8b6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a8b9: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0042a8bc: 89 10                                           mov    DWORD PTR [eax],edx
  0042a8be: 5b                                              pop    ebx
  0042a8bf: 5d                                              pop    ebp
  0042a8c0: c3                                              ret
  00486c20: 55                                              push   ebp
  00486c21: 8b ec                                           mov    ebp,esp
  00486c23: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00486c26: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00486c29: 89 08                                           mov    DWORD PTR [eax],ecx
  00486c2b: 5d                                              pop    ebp
  00486c2c: c2 04 00                                        ret    0x4
  00486c80: 55                                              push   ebp
  00486c81: 8b ec                                           mov    ebp,esp
  00486c83: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00486c85: 03 4d 0c                                        add    ecx,DWORD PTR [ebp+0xc]
  00486c88: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00486c8b: 89 08                                           mov    DWORD PTR [eax],ecx
  00486c8d: 5d                                              pop    ebp
  00486c8e: c2 08 00                                        ret    0x8
  00487000: 55                                              push   ebp
  00487001: 8b ec                                           mov    ebp,esp
  00487003: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00487006: 85 c0                                           test   eax,eax
  00487008: 76 1a                                           jbe    0x487024
  0048700a: 56                                              push   esi
  0048700b: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0048700e: 8b c8                                           mov    ecx,eax
  00487010: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00487013: 85 c0                                           test   eax,eax
  00487015: 74 04                                           je     0x48701b
  00487017: 8a 16                                           mov    dl,BYTE PTR [esi]
  00487019: 88 10                                           mov    BYTE PTR [eax],dl
  0048701b: 40                                              inc    eax
  0048701c: 49                                              dec    ecx
  0048701d: 75 f4                                           jne    0x487013
  0048701f: 5e                                              pop    esi
  00487020: 5d                                              pop    ebp
  00487021: c2 0c 00                                        ret    0xc
  00487024: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00487027: 5d                                              pop    ebp
  00487028: c2 0c 00                                        ret    0xc
  00487040: 55                                              push   ebp
  00487041: 8b ec                                           mov    ebp,esp
  00487043: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00487045: 2b 4d 0c                                        sub    ecx,DWORD PTR [ebp+0xc]
  00487048: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048704b: 89 08                                           mov    DWORD PTR [eax],ecx
  0048704d: 5d                                              pop    ebp
  0048704e: c2 08 00                                        ret    0x8
  00487060: 55                                              push   ebp
  00487061: 8b ec                                           mov    ebp,esp
  00487063: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00487066: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00487069: 56                                              push   esi
  0048706a: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0048706d: 3b ce                                           cmp    ecx,esi
  0048706f: 74 0e                                           je     0x48707f
  00487071: 85 c0                                           test   eax,eax
  00487073: 74 04                                           je     0x487079
  00487075: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00487077: 88 10                                           mov    BYTE PTR [eax],dl
  00487079: 40                                              inc    eax
  0048707a: 41                                              inc    ecx
  0048707b: 3b ce                                           cmp    ecx,esi
  0048707d: 75 f2                                           jne    0x487071
  0048707f: 5e                                              pop    esi
  00487080: 5d                                              pop    ebp
  00487081: c2 0c 00                                        ret    0xc
  004870b0: 55                                              push   ebp
  004870b1: 8b ec                                           mov    ebp,esp
  004870b3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004870b6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004870b9: 3b c1                                           cmp    eax,ecx
  004870bb: 74 0e                                           je     0x4870cb
  004870bd: 56                                              push   esi
  004870be: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004870c1: 8a 16                                           mov    dl,BYTE PTR [esi]
  004870c3: 88 10                                           mov    BYTE PTR [eax],dl
  004870c5: 40                                              inc    eax
  004870c6: 3b c1                                           cmp    eax,ecx
  004870c8: 75 f7                                           jne    0x4870c1
  004870ca: 5e                                              pop    esi
  004870cb: 5d                                              pop    ebp
  004870cc: c3                                              ret
  004870d0: 55                                              push   ebp
  004870d1: 8b ec                                           mov    ebp,esp
  004870d3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004870d6: 56                                              push   esi
  004870d7: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004870da: 3b f0                                           cmp    esi,eax
  004870dc: 74 16                                           je     0x4870f4
  004870de: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004870e1: 8a 50 ff                                        mov    dl,BYTE PTR [eax-0x1]
  004870e4: 48                                              dec    eax
  004870e5: 49                                              dec    ecx
  004870e6: 3b c6                                           cmp    eax,esi
  004870e8: 88 11                                           mov    BYTE PTR [ecx],dl
  004870ea: 75 f5                                           jne    0x4870e1
  004870ec: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004870ef: 89 08                                           mov    DWORD PTR [eax],ecx
  004870f1: 5e                                              pop    esi
  004870f2: 5d                                              pop    ebp
  004870f3: c3                                              ret
  004870f4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004870f7: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004870fa: 89 08                                           mov    DWORD PTR [eax],ecx
  004870fc: 5e                                              pop    esi
  004870fd: 5d                                              pop    ebp
  004870fe: c3                                              ret
