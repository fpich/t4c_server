; PASSE 88, Cibles directes nouvelles et fonctions internes du serveur
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 5201 distinct instructions; 98 graph entry points

  004026b0: 55                                              push   ebp
  004026b1: 8b ec                                           mov    ebp,esp
  004026b3: 51                                              push   ecx
  004026b4: 56                                              push   esi
  004026b5: 57                                              push   edi
  004026b6: 6a 34                                           push   0x34
  004026b8: 8b f9                                           mov    edi,ecx
  004026ba: e8 31 f9 03 00                                  call   0x441ff0
  004026bf: 8b f0                                           mov    esi,eax
  004026c1: 33 c0                                           xor    eax,eax
  004026c3: 83 c4 04                                        add    esp,0x4
  004026c6: 3b f0                                           cmp    esi,eax
  004026c8: 74 33                                           je     0x4026fd
  004026ca: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  004026cd: 8d 56 1c                                        lea    edx,[esi+0x1c]
  004026d0: 88 0e                                           mov    BYTE PTR [esi],cl
  004026d2: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004026d5: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004026d8: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004026db: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004026de: 52                                              push   edx
  004026df: c7 46 14 8c e5 4d 00                            mov    DWORD PTR [esi+0x14],0x4de58c
  004026e6: c7 46 18 ff ff ff ff                            mov    DWORD PTR [esi+0x18],0xffffffff
  004026ed: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004026f3: 89 37                                           mov    DWORD PTR [edi],esi
  004026f5: 8b c7                                           mov    eax,edi
  004026f7: 5f                                              pop    edi
  004026f8: 5e                                              pop    esi
  004026f9: 8b e5                                           mov    esp,ebp
  004026fb: 5d                                              pop    ebp
  004026fc: c3                                              ret
  004026fd: 89 07                                           mov    DWORD PTR [edi],eax
  004026ff: 8b c7                                           mov    eax,edi
  00402701: 5f                                              pop    edi
  00402702: 5e                                              pop    esi
  00402703: 8b e5                                           mov    esp,ebp
  00402705: 5d                                              pop    ebp
  00402706: c3                                              ret
  00403ac0: 55                                              push   ebp
  00403ac1: 8b ec                                           mov    ebp,esp
  00403ac3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00403ac6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403ac8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00403acb: 89 08                                           mov    DWORD PTR [eax],ecx
  00403acd: 5d                                              pop    ebp
  00403ace: c2 04 00                                        ret    0x4
  00403ae0: 55                                              push   ebp
  00403ae1: 8b ec                                           mov    ebp,esp
  00403ae3: 53                                              push   ebx
  00403ae4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00403ae7: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00403aea: 56                                              push   esi
  00403aeb: 8b f1                                           mov    esi,ecx
  00403aed: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00403af0: 57                                              push   edi
  00403af1: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00403af4: 57                                              push   edi
  00403af5: 51                                              push   ecx
  00403af6: 8b ce                                           mov    ecx,esi
  00403af8: e8 b3 05 00 00                                  call   0x4040b0
  00403afd: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00403b00: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00403b03: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00403b06: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00403b09: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00403b0c: 8a 48 11                                        mov    cl,BYTE PTR [eax+0x11]
  00403b0f: 84 c9                                           test   cl,cl
  00403b11: 75 3c                                           jne    0x403b4f
  00403b13: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403b15: 8a 59 11                                        mov    bl,BYTE PTR [ecx+0x11]
  00403b18: 84 db                                           test   bl,bl
  00403b1a: 75 0b                                           jne    0x403b27
  00403b1c: 8b c1                                           mov    eax,ecx
  00403b1e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403b20: 8a 59 11                                        mov    bl,BYTE PTR [ecx+0x11]
  00403b23: 84 db                                           test   bl,bl
  00403b25: 74 f5                                           je     0x403b1c
  00403b27: 89 02                                           mov    DWORD PTR [edx],eax
  00403b29: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00403b2c: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00403b2f: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00403b32: 8a 50 11                                        mov    dl,BYTE PTR [eax+0x11]
  00403b35: 84 d2                                           test   dl,dl
  00403b37: 75 0c                                           jne    0x403b45
  00403b39: 8b c8                                           mov    ecx,eax
  00403b3b: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00403b3e: 8a 50 11                                        mov    dl,BYTE PTR [eax+0x11]
  00403b41: 84 d2                                           test   dl,dl
  00403b43: 74 f4                                           je     0x403b39
  00403b45: 5f                                              pop    edi
  00403b46: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00403b49: 5e                                              pop    esi
  00403b4a: 5b                                              pop    ebx
  00403b4b: 5d                                              pop    ebp
  00403b4c: c2 04 00                                        ret    0x4
  00403b4f: 89 12                                           mov    DWORD PTR [edx],edx
  00403b51: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00403b54: 5f                                              pop    edi
  00403b55: 89 76 08                                        mov    DWORD PTR [esi+0x8],esi
  00403b58: 5e                                              pop    esi
  00403b59: 5b                                              pop    ebx
  00403b5a: 5d                                              pop    ebp
  00403b5b: c2 04 00                                        ret    0x4
  00403b70: 55                                              push   ebp
  00403b71: 8b ec                                           mov    ebp,esp
  00403b73: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00403b76: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00403b79: 89 08                                           mov    DWORD PTR [eax],ecx
  00403b7b: 5d                                              pop    ebp
  00403b7c: c2 04 00                                        ret    0x4
  00403b80: 55                                              push   ebp
  00403b81: 8b ec                                           mov    ebp,esp
  00403b83: 56                                              push   esi
  00403b84: 57                                              push   edi
  00403b85: 8b f9                                           mov    edi,ecx
  00403b87: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00403b8a: 85 c0                                           test   eax,eax
  00403b8c: 74 0d                                           je     0x403b9b
  00403b8e: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00403b91: 2b c8                                           sub    ecx,eax
  00403b93: f7 c1 e0 ff ff ff                               test   ecx,0xffffffe0
  00403b99: 75 04                                           jne    0x403b9f
  00403b9b: 33 f6                                           xor    esi,esi
  00403b9d: eb 08                                           jmp    0x403ba7
  00403b9f: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00403ba2: 2b f0                                           sub    esi,eax
  00403ba4: c1 fe 05                                        sar    esi,0x5
  00403ba7: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00403baa: 52                                              push   edx
  00403bab: 6a 01                                           push   0x1
  00403bad: 51                                              push   ecx
  00403bae: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00403bb1: 8b cc                                           mov    ecx,esp
  00403bb3: 50                                              push   eax
  00403bb4: e8 07 0b 00 00                                  call   0x4046c0
  00403bb9: 8b cf                                           mov    ecx,edi
  00403bbb: e8 d0 06 00 00                                  call   0x404290
  00403bc0: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00403bc3: c1 e6 05                                        shl    esi,0x5
  00403bc6: 03 f0                                           add    esi,eax
  00403bc8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00403bcb: 5f                                              pop    edi
  00403bcc: 89 30                                           mov    DWORD PTR [eax],esi
  00403bce: 5e                                              pop    esi
  00403bcf: 5d                                              pop    ebp
  00403bd0: c2 0c 00                                        ret    0xc
  00403c60: 55                                              push   ebp
  00403c61: 8b ec                                           mov    ebp,esp
  00403c63: 6a ff                                           push   0xffffffff
  00403c65: 68 c9 31 4d 00                                  push   0x4d31c9
  00403c6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00403c70: 50                                              push   eax
  00403c71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00403c78: 83 ec 34                                        sub    esp,0x34
  00403c7b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00403c7e: 56                                              push   esi
  00403c7f: 8b f1                                           mov    esi,ecx
  00403c81: 8a 48 11                                        mov    cl,BYTE PTR [eax+0x11]
  00403c84: 84 c9                                           test   cl,cl
  00403c86: 57                                              push   edi
  00403c87: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00403c8a: 74 57                                           je     0x403ce3
  00403c8c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00403c8f: 6a 00                                           push   0x0
  00403c91: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00403c94: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00403c97: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00403c9d: 83 c9 ff                                        or     ecx,0xffffffff
  00403ca0: 33 c0                                           xor    eax,eax
  00403ca2: bf 40 05 50 00                                  mov    edi,0x500540
  00403ca7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00403ca9: f7 d1                                           not    ecx
  00403cab: 49                                              dec    ecx
  00403cac: 51                                              push   ecx
  00403cad: 68 40 05 50 00                                  push   0x500540
  00403cb2: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00403cb5: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00403cbb: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00403cbe: 51                                              push   ecx
  00403cbf: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00403cc2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00403cc9: e8 b2 13 00 00                                  call   0x405080
  00403cce: 68 18 0a 4e 00                                  push   0x4e0a18
  00403cd3: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00403cd6: 52                                              push   edx
  00403cd7: c7 45 c0 e0 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5e0
  00403cde: e8 73 e0 0c 00                                  call   0x4d1d56
  00403ce3: 53                                              push   ebx
  00403ce4: 8b d8                                           mov    ebx,eax
  00403ce6: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00403ce9: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00403cec: e8 2f 0b 00 00                                  call   0x404820
  00403cf1: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00403cf3: 8a 42 11                                        mov    al,BYTE PTR [edx+0x11]
  00403cf6: 84 c0                                           test   al,al
  00403cf8: 74 05                                           je     0x403cff
  00403cfa: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00403cfd: eb 2b                                           jmp    0x403d2a
  00403cff: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00403d02: 8a 41 11                                        mov    al,BYTE PTR [ecx+0x11]
  00403d05: 84 c0                                           test   al,al
  00403d07: 74 04                                           je     0x403d0d
  00403d09: 8b fa                                           mov    edi,edx
  00403d0b: eb 1d                                           jmp    0x403d2a
  00403d0d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00403d0f: 80 78 11 00                                     cmp    BYTE PTR [eax+0x11],0x0
  00403d13: 75 0a                                           jne    0x403d1f
  00403d15: 8b c8                                           mov    ecx,eax
  00403d17: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00403d19: 80 78 11 00                                     cmp    BYTE PTR [eax+0x11],0x0
  00403d1d: 74 f6                                           je     0x403d15
  00403d1f: 3b cb                                           cmp    ecx,ebx
  00403d21: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  00403d24: 0f 85 8a 00 00 00                               jne    0x403db4
  00403d2a: 8a 4f 11                                        mov    cl,BYTE PTR [edi+0x11]
  00403d2d: 84 c9                                           test   cl,cl
  00403d2f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00403d32: 75 03                                           jne    0x403d37
  00403d34: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00403d37: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00403d3a: 39 59 04                                        cmp    DWORD PTR [ecx+0x4],ebx
  00403d3d: 75 05                                           jne    0x403d44
  00403d3f: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00403d42: eb 0b                                           jmp    0x403d4f
  00403d44: 39 18                                           cmp    DWORD PTR [eax],ebx
  00403d46: 75 04                                           jne    0x403d4c
  00403d48: 89 38                                           mov    DWORD PTR [eax],edi
  00403d4a: eb 03                                           jmp    0x403d4f
  00403d4c: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  00403d4f: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00403d52: 39 1e                                           cmp    DWORD PTR [esi],ebx
  00403d54: 75 24                                           jne    0x403d7a
  00403d56: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00403d59: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  00403d5c: 84 d2                                           test   dl,dl
  00403d5e: 74 04                                           je     0x403d64
  00403d60: 89 06                                           mov    DWORD PTR [esi],eax
  00403d62: eb 16                                           jmp    0x403d7a
  00403d64: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00403d66: 80 79 11 00                                     cmp    BYTE PTR [ecx+0x11],0x0
  00403d6a: 8b d7                                           mov    edx,edi
  00403d6c: 75 0a                                           jne    0x403d78
  00403d6e: 8b d1                                           mov    edx,ecx
  00403d70: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00403d72: 80 79 11 00                                     cmp    BYTE PTR [ecx+0x11],0x0
  00403d76: 74 f6                                           je     0x403d6e
  00403d78: 89 16                                           mov    DWORD PTR [esi],edx
  00403d7a: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00403d7d: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  00403d80: 39 5e 08                                        cmp    DWORD PTR [esi+0x8],ebx
  00403d83: 0f 85 89 00 00 00                               jne    0x403e12
  00403d89: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  00403d8b: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  00403d8e: 84 d2                                           test   dl,dl
  00403d90: 74 05                                           je     0x403d97
  00403d92: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00403d95: eb 7b                                           jmp    0x403e12
  00403d97: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00403d9a: 8a 59 11                                        mov    bl,BYTE PTR [ecx+0x11]
  00403d9d: 84 db                                           test   bl,bl
  00403d9f: 8b d7                                           mov    edx,edi
  00403da1: 75 0c                                           jne    0x403daf
  00403da3: 8b d1                                           mov    edx,ecx
  00403da5: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  00403da8: 8a 59 11                                        mov    bl,BYTE PTR [ecx+0x11]
  00403dab: 84 db                                           test   bl,bl
  00403dad: 74 f4                                           je     0x403da3
  00403daf: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00403db2: eb 5e                                           jmp    0x403e12
  00403db4: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00403db7: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00403db9: 89 11                                           mov    DWORD PTR [ecx],edx
  00403dbb: 3b 4b 08                                        cmp    ecx,DWORD PTR [ebx+0x8]
  00403dbe: 75 04                                           jne    0x403dc4
  00403dc0: 8b c1                                           mov    eax,ecx
  00403dc2: eb 1b                                           jmp    0x403ddf
  00403dc4: 8a 57 11                                        mov    dl,BYTE PTR [edi+0x11]
  00403dc7: 84 d2                                           test   dl,dl
  00403dc9: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00403dcc: 75 03                                           jne    0x403dd1
  00403dce: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00403dd1: 89 38                                           mov    DWORD PTR [eax],edi
  00403dd3: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00403dd6: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00403dd9: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00403ddc: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00403ddf: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00403de2: 39 5a 04                                        cmp    DWORD PTR [edx+0x4],ebx
  00403de5: 75 05                                           jne    0x403dec
  00403de7: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00403dea: eb 0e                                           jmp    0x403dfa
  00403dec: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00403def: 39 1a                                           cmp    DWORD PTR [edx],ebx
  00403df1: 75 04                                           jne    0x403df7
  00403df3: 89 0a                                           mov    DWORD PTR [edx],ecx
  00403df5: eb 03                                           jmp    0x403dfa
  00403df7: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00403dfa: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00403dfd: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00403e00: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  00403e03: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00403e06: 8a 5e 10                                        mov    bl,BYTE PTR [esi+0x10]
  00403e09: 8a 51 10                                        mov    dl,BYTE PTR [ecx+0x10]
  00403e0c: 88 59 10                                        mov    BYTE PTR [ecx+0x10],bl
  00403e0f: 88 56 10                                        mov    BYTE PTR [esi+0x10],dl
  00403e12: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00403e15: 8a 51 10                                        mov    dl,BYTE PTR [ecx+0x10]
  00403e18: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00403e1b: b3 01                                           mov    bl,0x1
  00403e1d: 3a d3                                           cmp    dl,bl
  00403e1f: 0f 85 58 02 00 00                               jne    0x40407d
  00403e25: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00403e28: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  00403e2b: 0f 84 49 02 00 00                               je     0x40407a
  00403e31: 38 5f 10                                        cmp    BYTE PTR [edi+0x10],bl
  00403e34: 0f 85 40 02 00 00                               jne    0x40407a
  00403e3a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403e3c: 3b f9                                           cmp    edi,ecx
  00403e3e: 75 71                                           jne    0x403eb1
  00403e40: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00403e43: 8a 51 10                                        mov    dl,BYTE PTR [ecx+0x10]
  00403e46: 84 d2                                           test   dl,dl
  00403e48: 75 43                                           jne    0x403e8d
  00403e4a: 88 59 10                                        mov    BYTE PTR [ecx+0x10],bl
  00403e4d: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00403e50: c6 40 10 00                                     mov    BYTE PTR [eax+0x10],0x0
  00403e54: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403e56: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00403e59: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403e5b: 80 7a 11 00                                     cmp    BYTE PTR [edx+0x11],0x0
  00403e5f: 75 03                                           jne    0x403e64
  00403e61: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00403e64: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00403e67: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00403e6a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00403e6d: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00403e70: 75 05                                           jne    0x403e77
  00403e72: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00403e75: eb 0e                                           jmp    0x403e85
  00403e77: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00403e7a: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00403e7c: 75 04                                           jne    0x403e82
  00403e7e: 89 0a                                           mov    DWORD PTR [edx],ecx
  00403e80: eb 03                                           jmp    0x403e85
  00403e82: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00403e85: 89 01                                           mov    DWORD PTR [ecx],eax
  00403e87: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00403e8a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00403e8d: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  00403e90: 84 d2                                           test   dl,dl
  00403e92: 0f 85 86 00 00 00                               jne    0x403f1e
  00403e98: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403e9a: 38 5a 10                                        cmp    BYTE PTR [edx+0x10],bl
  00403e9d: 0f 85 93 00 00 00                               jne    0x403f36
  00403ea3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00403ea6: 38 5a 10                                        cmp    BYTE PTR [edx+0x10],bl
  00403ea9: 0f 85 87 00 00 00                               jne    0x403f36
  00403eaf: eb 69                                           jmp    0x403f1a
  00403eb1: 8a 51 10                                        mov    dl,BYTE PTR [ecx+0x10]
  00403eb4: 84 d2                                           test   dl,dl
  00403eb6: 75 44                                           jne    0x403efc
  00403eb8: 88 59 10                                        mov    BYTE PTR [ecx+0x10],bl
  00403ebb: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403ebd: c6 40 10 00                                     mov    BYTE PTR [eax+0x10],0x0
  00403ec1: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00403ec4: 89 10                                           mov    DWORD PTR [eax],edx
  00403ec6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00403ec9: 80 7a 11 00                                     cmp    BYTE PTR [edx+0x11],0x0
  00403ecd: 75 03                                           jne    0x403ed2
  00403ecf: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00403ed2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00403ed5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00403ed8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00403edb: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00403ede: 75 05                                           jne    0x403ee5
  00403ee0: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00403ee3: eb 0f                                           jmp    0x403ef4
  00403ee5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00403ee8: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  00403eeb: 75 05                                           jne    0x403ef2
  00403eed: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00403ef0: eb 02                                           jmp    0x403ef4
  00403ef2: 89 0a                                           mov    DWORD PTR [edx],ecx
  00403ef4: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00403ef7: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00403efa: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403efc: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  00403eff: 84 d2                                           test   dl,dl
  00403f01: 75 1b                                           jne    0x403f1e
  00403f03: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00403f06: 38 5a 10                                        cmp    BYTE PTR [edx+0x10],bl
  00403f09: 0f 85 d0 00 00 00                               jne    0x403fdf
  00403f0f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403f11: 38 5a 10                                        cmp    BYTE PTR [edx+0x10],bl
  00403f14: 0f 85 c5 00 00 00                               jne    0x403fdf
  00403f1a: c6 41 10 00                                     mov    BYTE PTR [ecx+0x10],0x0
  00403f1e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00403f21: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00403f24: 8b f8                                           mov    edi,eax
  00403f26: 3b fa                                           cmp    edi,edx
  00403f28: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00403f2b: 0f 85 00 ff ff ff                               jne    0x403e31
  00403f31: e9 44 01 00 00                                  jmp    0x40407a
  00403f36: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00403f39: 38 5a 10                                        cmp    BYTE PTR [edx+0x10],bl
  00403f3c: 75 4a                                           jne    0x403f88
  00403f3e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403f40: 88 5a 10                                        mov    BYTE PTR [edx+0x10],bl
  00403f43: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403f45: c6 41 10 00                                     mov    BYTE PTR [ecx+0x10],0x0
  00403f49: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00403f4c: 89 31                                           mov    DWORD PTR [ecx],esi
  00403f4e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00403f51: 80 7e 11 00                                     cmp    BYTE PTR [esi+0x11],0x0
  00403f55: 75 03                                           jne    0x403f5a
  00403f57: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00403f5a: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00403f5d: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00403f60: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00403f63: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00403f66: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00403f69: 75 05                                           jne    0x403f70
  00403f6b: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00403f6e: eb 0f                                           jmp    0x403f7f
  00403f70: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00403f73: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  00403f76: 75 05                                           jne    0x403f7d
  00403f78: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00403f7b: eb 02                                           jmp    0x403f7f
  00403f7d: 89 16                                           mov    DWORD PTR [esi],edx
  00403f7f: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00403f82: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00403f85: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00403f88: 8a 50 10                                        mov    dl,BYTE PTR [eax+0x10]
  00403f8b: 88 51 10                                        mov    BYTE PTR [ecx+0x10],dl
  00403f8e: 88 58 10                                        mov    BYTE PTR [eax+0x10],bl
  00403f91: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00403f94: 88 59 10                                        mov    BYTE PTR [ecx+0x10],bl
  00403f97: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00403f9a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403f9c: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00403f9f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403fa1: 80 7a 11 00                                     cmp    BYTE PTR [edx+0x11],0x0
  00403fa5: 75 03                                           jne    0x403faa
  00403fa7: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00403faa: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00403fad: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00403fb0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00403fb3: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00403fb6: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00403fb9: 75 0a                                           jne    0x403fc5
  00403fbb: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00403fbe: 89 01                                           mov    DWORD PTR [ecx],eax
  00403fc0: e9 b2 00 00 00                                  jmp    0x404077
  00403fc5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00403fc8: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00403fca: 75 09                                           jne    0x403fd5
  00403fcc: 89 0a                                           mov    DWORD PTR [edx],ecx
  00403fce: 89 01                                           mov    DWORD PTR [ecx],eax
  00403fd0: e9 a2 00 00 00                                  jmp    0x404077
  00403fd5: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00403fd8: 89 01                                           mov    DWORD PTR [ecx],eax
  00403fda: e9 98 00 00 00                                  jmp    0x404077
  00403fdf: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00403fe1: 38 5a 10                                        cmp    BYTE PTR [edx+0x10],bl
  00403fe4: 75 48                                           jne    0x40402e
  00403fe6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00403fe9: 88 5a 10                                        mov    BYTE PTR [edx+0x10],bl
  00403fec: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00403fef: c6 41 10 00                                     mov    BYTE PTR [ecx+0x10],0x0
  00403ff3: 8b 32                                           mov    esi,DWORD PTR [edx]
  00403ff5: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00403ff8: 8b 32                                           mov    esi,DWORD PTR [edx]
  00403ffa: 80 7e 11 00                                     cmp    BYTE PTR [esi+0x11],0x0
  00403ffe: 75 03                                           jne    0x404003
  00404000: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00404003: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00404006: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00404009: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0040400c: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0040400f: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00404012: 75 05                                           jne    0x404019
  00404014: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00404017: eb 0e                                           jmp    0x404027
  00404019: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0040401c: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0040401e: 75 04                                           jne    0x404024
  00404020: 89 16                                           mov    DWORD PTR [esi],edx
  00404022: eb 03                                           jmp    0x404027
  00404024: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00404027: 89 0a                                           mov    DWORD PTR [edx],ecx
  00404029: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0040402c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0040402e: 8a 50 10                                        mov    dl,BYTE PTR [eax+0x10]
  00404031: 88 51 10                                        mov    BYTE PTR [ecx+0x10],dl
  00404034: 88 58 10                                        mov    BYTE PTR [eax+0x10],bl
  00404037: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00404039: 88 59 10                                        mov    BYTE PTR [ecx+0x10],bl
  0040403c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0040403e: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00404041: 89 10                                           mov    DWORD PTR [eax],edx
  00404043: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00404046: 80 7a 11 00                                     cmp    BYTE PTR [edx+0x11],0x0
  0040404a: 75 03                                           jne    0x40404f
  0040404c: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0040404f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00404052: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00404055: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00404058: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0040405b: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0040405e: 75 05                                           jne    0x404065
  00404060: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00404063: eb 0f                                           jmp    0x404074
  00404065: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00404068: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0040406b: 75 05                                           jne    0x404072
  0040406d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00404070: eb 02                                           jmp    0x404074
  00404072: 89 0a                                           mov    DWORD PTR [edx],ecx
  00404074: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00404077: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0040407a: 88 5f 10                                        mov    BYTE PTR [edi+0x10],bl
  0040407d: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00404080: 50                                              push   eax
  00404081: e8 da df 03 00                                  call   0x442060
  00404086: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00404089: 83 c4 04                                        add    esp,0x4
  0040408c: 85 c0                                           test   eax,eax
  0040408e: 5b                                              pop    ebx
  0040408f: 76 04                                           jbe    0x404095
  00404091: 48                                              dec    eax
  00404092: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00404095: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00404098: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040409b: 89 08                                           mov    DWORD PTR [eax],ecx
  0040409d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004040a0: 5f                                              pop    edi
  004040a1: 5e                                              pop    esi
  004040a2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004040a9: 8b e5                                           mov    esp,ebp
  004040ab: 5d                                              pop    ebp
  004040ac: c2 08 00                                        ret    0x8
  004040b0: 55                                              push   ebp
  004040b1: 8b ec                                           mov    ebp,esp
  004040b3: 6a ff                                           push   0xffffffff
  004040b5: 68 e0 31 4d 00                                  push   0x4d31e0
  004040ba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004040c0: 50                                              push   eax
  004040c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004040c8: 83 ec 0c                                        sub    esp,0xc
  004040cb: 53                                              push   ebx
  004040cc: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004040cf: 56                                              push   esi
  004040d0: 57                                              push   edi
  004040d1: 8b f9                                           mov    edi,ecx
  004040d3: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004040d6: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004040d9: 8a 43 11                                        mov    al,BYTE PTR [ebx+0x11]
  004040dc: 84 c0                                           test   al,al
  004040de: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004040e1: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  004040e4: 75 69                                           jne    0x40414f
  004040e6: 8a 4b 10                                        mov    cl,BYTE PTR [ebx+0x10]
  004040e9: 6a 14                                           push   0x14
  004040eb: 88 4d 0b                                        mov    BYTE PTR [ebp+0xb],cl
  004040ee: e8 fd de 03 00                                  call   0x441ff0
  004040f3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004040f6: 8b f0                                           mov    esi,eax
  004040f8: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  004040fb: 88 46 10                                        mov    BYTE PTR [esi+0x10],al
  004040fe: 8d 46 0c                                        lea    eax,[esi+0xc]
  00404101: 83 c4 04                                        add    esp,0x4
  00404104: 85 c0                                           test   eax,eax
  00404106: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00404109: c6 46 11 00                                     mov    BYTE PTR [esi+0x11],0x0
  0040410d: 74 05                                           je     0x404114
  0040410f: 8b 4b 0c                                        mov    ecx,DWORD PTR [ebx+0xc]
  00404112: 89 08                                           mov    DWORD PTR [eax],ecx
  00404114: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00404117: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0040411a: 89 16                                           mov    DWORD PTR [esi],edx
  0040411c: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0040411f: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00404122: 8a 41 11                                        mov    al,BYTE PTR [ecx+0x11]
  00404125: 84 c0                                           test   al,al
  00404127: 74 03                                           je     0x40412c
  00404129: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0040412c: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0040412e: 56                                              push   esi
  0040412f: 52                                              push   edx
  00404130: 8b cf                                           mov    ecx,edi
  00404132: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00404139: e8 72 ff ff ff                                  call   0x4040b0
  0040413e: 89 06                                           mov    DWORD PTR [esi],eax
  00404140: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00404143: 56                                              push   esi
  00404144: 50                                              push   eax
  00404145: 8b cf                                           mov    ecx,edi
  00404147: e8 64 ff ff ff                                  call   0x4040b0
  0040414c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0040414f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00404152: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00404155: 5f                                              pop    edi
  00404156: 5e                                              pop    esi
  00404157: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040415e: 5b                                              pop    ebx
  0040415f: 8b e5                                           mov    esp,ebp
  00404161: 5d                                              pop    ebp
  00404162: c2 08 00                                        ret    0x8
  004041a0: 55                                              push   ebp
  004041a1: 8b ec                                           mov    ebp,esp
  004041a3: 53                                              push   ebx
  004041a4: 56                                              push   esi
  004041a5: 57                                              push   edi
  004041a6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004041a9: 8a 47 11                                        mov    al,BYTE PTR [edi+0x11]
  004041ac: 84 c0                                           test   al,al
  004041ae: 8b d9                                           mov    ebx,ecx
  004041b0: 8b f7                                           mov    esi,edi
  004041b2: 75 1f                                           jne    0x4041d3
  004041b4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004041b7: 50                                              push   eax
  004041b8: 8b cb                                           mov    ecx,ebx
  004041ba: e8 e1 ff ff ff                                  call   0x4041a0
  004041bf: 8b 36                                           mov    esi,DWORD PTR [esi]
  004041c1: 57                                              push   edi
  004041c2: e8 99 de 03 00                                  call   0x442060
  004041c7: 8a 46 11                                        mov    al,BYTE PTR [esi+0x11]
  004041ca: 83 c4 04                                        add    esp,0x4
  004041cd: 84 c0                                           test   al,al
  004041cf: 8b fe                                           mov    edi,esi
  004041d1: 74 e1                                           je     0x4041b4
  004041d3: 5f                                              pop    edi
  004041d4: 5e                                              pop    esi
  004041d5: 5b                                              pop    ebx
  004041d6: 5d                                              pop    ebp
  004041d7: c2 04 00                                        ret    0x4
  004041e0: 55                                              push   ebp
  004041e1: 8b ec                                           mov    ebp,esp
  004041e3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004041e6: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004041e9: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  004041ec: 84 d2                                           test   dl,dl
  004041ee: 75 0c                                           jne    0x4041fc
  004041f0: 8b c1                                           mov    eax,ecx
  004041f2: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004041f5: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  004041f8: 84 d2                                           test   dl,dl
  004041fa: 74 f4                                           je     0x4041f0
  004041fc: 5d                                              pop    ebp
  004041fd: c3                                              ret
  00404200: 55                                              push   ebp
  00404201: 8b ec                                           mov    ebp,esp
  00404203: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00404206: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00404208: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  0040420b: 84 d2                                           test   dl,dl
  0040420d: 75 0b                                           jne    0x40421a
  0040420f: 8b c1                                           mov    eax,ecx
  00404211: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00404213: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  00404216: 84 d2                                           test   dl,dl
  00404218: 74 f5                                           je     0x40420f
  0040421a: 5d                                              pop    ebp
  0040421b: c3                                              ret
  00404220: 55                                              push   ebp
  00404221: 8b ec                                           mov    ebp,esp
  00404223: 53                                              push   ebx
  00404224: 56                                              push   esi
  00404225: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00404227: 8a 46 11                                        mov    al,BYTE PTR [esi+0x11]
  0040422a: 84 c0                                           test   al,al
  0040422c: 75 4a                                           jne    0x404278
  0040422e: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00404231: 8a 42 11                                        mov    al,BYTE PTR [edx+0x11]
  00404234: 84 c0                                           test   al,al
  00404236: 75 21                                           jne    0x404259
  00404238: 8b 02                                           mov    eax,DWORD PTR [edx]
  0040423a: 8a 58 11                                        mov    bl,BYTE PTR [eax+0x11]
  0040423d: 84 db                                           test   bl,bl
  0040423f: 75 0b                                           jne    0x40424c
  00404241: 8b d0                                           mov    edx,eax
  00404243: 8b 02                                           mov    eax,DWORD PTR [edx]
  00404245: 8a 58 11                                        mov    bl,BYTE PTR [eax+0x11]
  00404248: 84 db                                           test   bl,bl
  0040424a: 74 f5                                           je     0x404241
  0040424c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040424f: 89 11                                           mov    DWORD PTR [ecx],edx
  00404251: 89 30                                           mov    DWORD PTR [eax],esi
  00404253: 5e                                              pop    esi
  00404254: 5b                                              pop    ebx
  00404255: 5d                                              pop    ebp
  00404256: c2 08 00                                        ret    0x8
  00404259: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040425c: 8a 50 11                                        mov    dl,BYTE PTR [eax+0x11]
  0040425f: 84 d2                                           test   dl,dl
  00404261: 75 13                                           jne    0x404276
  00404263: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00404265: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  00404268: 75 0c                                           jne    0x404276
  0040426a: 89 01                                           mov    DWORD PTR [ecx],eax
  0040426c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0040426f: 8a 50 11                                        mov    dl,BYTE PTR [eax+0x11]
  00404272: 84 d2                                           test   dl,dl
  00404274: 74 ed                                           je     0x404263
  00404276: 89 01                                           mov    DWORD PTR [ecx],eax
  00404278: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040427b: 89 30                                           mov    DWORD PTR [eax],esi
  0040427d: 5e                                              pop    esi
  0040427e: 5b                                              pop    ebx
  0040427f: 5d                                              pop    ebp
  00404280: c2 08 00                                        ret    0x8
  00405080: 55                                              push   ebp
  00405081: 8b ec                                           mov    ebp,esp
  00405083: 6a ff                                           push   0xffffffff
  00405085: 68 89 32 4d 00                                  push   0x4d3289
  0040508a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00405090: 50                                              push   eax
  00405091: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00405098: 83 ec 08                                        sub    esp,0x8
  0040509b: 53                                              push   ebx
  0040509c: 56                                              push   esi
  0040509d: 57                                              push   edi
  0040509e: 8d 45 f0                                        lea    eax,[ebp-0x10]
  004050a1: 8b d9                                           mov    ebx,ecx
  004050a3: 50                                              push   eax
  004050a4: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004050a7: c7 45 f0 58 13 51 00                            mov    DWORD PTR [ebp-0x10],0x511358
  004050ae: ff 15 60 e3 4d 00                               call   DWORD PTR ds:0x4de360
  004050b4: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004050b7: 8a 06                                           mov    al,BYTE PTR [esi]
  004050b9: 33 d2                                           xor    edx,edx
  004050bb: 83 c3 0c                                        add    ebx,0xc
  004050be: 88 03                                           mov    BYTE PTR [ebx],al
  004050c0: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  004050c3: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004050c6: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004050c9: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004050cf: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004050d1: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004050d4: 8b f9                                           mov    edi,ecx
  004050d6: 3b c7                                           cmp    eax,edi
  004050d8: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004050db: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004050de: 73 05                                           jae    0x4050e5
  004050e0: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004050e3: 8b f8                                           mov    edi,eax
  004050e5: 3b de                                           cmp    ebx,esi
  004050e7: 75 6d                                           jne    0x405156
  004050e9: 3b fa                                           cmp    edi,edx
  004050eb: 8b f0                                           mov    esi,eax
  004050ed: 76 0a                                           jbe    0x4050f9
  004050ef: 8b cb                                           mov    ecx,ebx
  004050f1: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004050f7: 33 d2                                           xor    edx,edx
  004050f9: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004050fc: 2b c7                                           sub    eax,edi
  004050fe: 3b c6                                           cmp    eax,esi
  00405100: 73 02                                           jae    0x405104
  00405102: 8b f0                                           mov    esi,eax
  00405104: 3b f2                                           cmp    esi,edx
  00405106: 0f 86 ca 00 00 00                               jbe    0x4051d6
  0040510c: 8b cb                                           mov    ecx,ebx
  0040510e: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00405114: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00405117: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0040511a: 2b ce                                           sub    ecx,esi
  0040511c: 8d 04 17                                        lea    eax,[edi+edx*1]
  0040511f: 2b cf                                           sub    ecx,edi
  00405121: 51                                              push   ecx
  00405122: 8d 14 30                                        lea    edx,[eax+esi*1]
  00405125: 52                                              push   edx
  00405126: 50                                              push   eax
  00405127: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0040512d: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00405130: 83 c4 0c                                        add    esp,0xc
  00405133: 6a 00                                           push   0x0
  00405135: 2b fe                                           sub    edi,esi
  00405137: 57                                              push   edi
  00405138: 8b cb                                           mov    ecx,ebx
  0040513a: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00405140: 84 c0                                           test   al,al
  00405142: 0f 84 8e 00 00 00                               je     0x4051d6
  00405148: 57                                              push   edi
  00405149: 8b cb                                           mov    ecx,ebx
  0040514b: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00405151: e9 80 00 00 00                                  jmp    0x4051d6
  00405156: 3b fa                                           cmp    edi,edx
  00405158: 76 40                                           jbe    0x40519a
  0040515a: 3b f9                                           cmp    edi,ecx
  0040515c: 75 3c                                           jne    0x40519a
  0040515e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00405161: 3b c2                                           cmp    eax,edx
  00405163: 75 05                                           jne    0x40516a
  00405165: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040516a: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0040516e: 73 2a                                           jae    0x40519a
  00405170: 6a 01                                           push   0x1
  00405172: 8b cb                                           mov    ecx,ebx
  00405174: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0040517a: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040517d: 85 c0                                           test   eax,eax
  0040517f: 75 05                                           jne    0x405186
  00405181: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00405186: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00405189: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0040518c: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0040518f: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00405192: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00405195: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00405198: eb 3c                                           jmp    0x4051d6
  0040519a: 6a 01                                           push   0x1
  0040519c: 57                                              push   edi
  0040519d: 8b cb                                           mov    ecx,ebx
  0040519f: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004051a5: 84 c0                                           test   al,al
  004051a7: 74 2d                                           je     0x4051d6
  004051a9: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004051ac: 85 f6                                           test   esi,esi
  004051ae: 75 06                                           jne    0x4051b6
  004051b0: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004051b6: 8b cf                                           mov    ecx,edi
  004051b8: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004051bb: 8b c1                                           mov    eax,ecx
  004051bd: c1 e9 02                                        shr    ecx,0x2
  004051c0: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004051c2: 8b c8                                           mov    ecx,eax
  004051c4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004051c7: 83 e1 03                                        and    ecx,0x3
  004051ca: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004051cc: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004051cf: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004051d2: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  004051d6: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004051d9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004051dc: 5f                                              pop    edi
  004051dd: 5e                                              pop    esi
  004051de: c7 00 ec e5 4d 00                               mov    DWORD PTR [eax],0x4de5ec
  004051e4: 5b                                              pop    ebx
  004051e5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004051ec: 8b e5                                           mov    esp,ebp
  004051ee: 5d                                              pop    ebp
  004051ef: c2 04 00                                        ret    0x4
  00405420: 55                                              push   ebp
  00405421: 8b ec                                           mov    ebp,esp
  00405423: 6a ff                                           push   0xffffffff
  00405425: 68 c9 32 4d 00                                  push   0x4d32c9
  0040542a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00405430: 50                                              push   eax
  00405431: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00405438: 83 ec 08                                        sub    esp,0x8
  0040543b: 53                                              push   ebx
  0040543c: 56                                              push   esi
  0040543d: 57                                              push   edi
  0040543e: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00405441: 8b d9                                           mov    ebx,ecx
  00405443: 50                                              push   eax
  00405444: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00405447: c7 45 f0 58 13 51 00                            mov    DWORD PTR [ebp-0x10],0x511358
  0040544e: ff 15 60 e3 4d 00                               call   DWORD PTR ds:0x4de360
  00405454: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00405457: 8a 06                                           mov    al,BYTE PTR [esi]
  00405459: 33 d2                                           xor    edx,edx
  0040545b: 83 c3 0c                                        add    ebx,0xc
  0040545e: 88 03                                           mov    BYTE PTR [ebx],al
  00405460: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00405463: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00405466: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00405469: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0040546f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00405471: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00405474: 8b f9                                           mov    edi,ecx
  00405476: 3b c7                                           cmp    eax,edi
  00405478: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0040547b: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0040547e: 73 05                                           jae    0x405485
  00405480: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00405483: 8b f8                                           mov    edi,eax
  00405485: 3b de                                           cmp    ebx,esi
  00405487: 75 62                                           jne    0x4054eb
  00405489: 3b fa                                           cmp    edi,edx
  0040548b: 8b f0                                           mov    esi,eax
  0040548d: 76 0a                                           jbe    0x405499
  0040548f: 8b cb                                           mov    ecx,ebx
  00405491: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00405497: 33 d2                                           xor    edx,edx
  00405499: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0040549c: 2b c7                                           sub    eax,edi
  0040549e: 3b c6                                           cmp    eax,esi
  004054a0: 73 02                                           jae    0x4054a4
  004054a2: 8b f0                                           mov    esi,eax
  004054a4: 3b f2                                           cmp    esi,edx
  004054a6: 0f 86 be 00 00 00                               jbe    0x40556a
  004054ac: 8b cb                                           mov    ecx,ebx
  004054ae: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004054b4: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004054b7: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004054ba: 2b ce                                           sub    ecx,esi
  004054bc: 8d 04 17                                        lea    eax,[edi+edx*1]
  004054bf: 2b cf                                           sub    ecx,edi
  004054c1: 51                                              push   ecx
  004054c2: 8d 14 30                                        lea    edx,[eax+esi*1]
  004054c5: 52                                              push   edx
  004054c6: 50                                              push   eax
  004054c7: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004054cd: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004054d0: 83 c4 0c                                        add    esp,0xc
  004054d3: 6a 00                                           push   0x0
  004054d5: 2b fe                                           sub    edi,esi
  004054d7: 57                                              push   edi
  004054d8: 8b cb                                           mov    ecx,ebx
  004054da: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004054e0: 84 c0                                           test   al,al
  004054e2: 0f 84 82 00 00 00                               je     0x40556a
  004054e8: 57                                              push   edi
  004054e9: eb 77                                           jmp    0x405562
  004054eb: 3b fa                                           cmp    edi,edx
  004054ed: 76 40                                           jbe    0x40552f
  004054ef: 3b f9                                           cmp    edi,ecx
  004054f1: 75 3c                                           jne    0x40552f
  004054f3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004054f6: 3b c2                                           cmp    eax,edx
  004054f8: 75 05                                           jne    0x4054ff
  004054fa: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004054ff: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00405503: 73 2a                                           jae    0x40552f
  00405505: 6a 01                                           push   0x1
  00405507: 8b cb                                           mov    ecx,ebx
  00405509: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0040550f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00405512: 85 c0                                           test   eax,eax
  00405514: 75 05                                           jne    0x40551b
  00405516: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040551b: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0040551e: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00405521: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00405524: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00405527: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0040552a: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0040552d: eb 3b                                           jmp    0x40556a
  0040552f: 6a 01                                           push   0x1
  00405531: 57                                              push   edi
  00405532: 8b cb                                           mov    ecx,ebx
  00405534: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0040553a: 84 c0                                           test   al,al
  0040553c: 74 2c                                           je     0x40556a
  0040553e: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00405541: 85 f6                                           test   esi,esi
  00405543: 75 06                                           jne    0x40554b
  00405545: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0040554b: 8b cf                                           mov    ecx,edi
  0040554d: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00405550: 8b c1                                           mov    eax,ecx
  00405552: c1 e9 02                                        shr    ecx,0x2
  00405555: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00405557: 8b c8                                           mov    ecx,eax
  00405559: 83 e1 03                                        and    ecx,0x3
  0040555c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0040555e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00405561: 51                                              push   ecx
  00405562: 8b cb                                           mov    ecx,ebx
  00405564: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0040556a: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0040556d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00405570: 5f                                              pop    edi
  00405571: 5e                                              pop    esi
  00405572: c7 00 f8 e5 4d 00                               mov    DWORD PTR [eax],0x4de5f8
  00405578: 5b                                              pop    ebx
  00405579: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00405580: 8b e5                                           mov    esp,ebp
  00405582: 5d                                              pop    ebp
  00405583: c2 04 00                                        ret    0x4
  00405a90: 56                                              push   esi
  00405a91: 8b f1                                           mov    esi,ecx
  00405a93: e8 68 e7 02 00                                  call   0x434200
  00405a98: 8b 10                                           mov    edx,DWORD PTR [eax]
  00405a9a: 8d 4e 04                                        lea    ecx,[esi+0x4]
  00405a9d: 51                                              push   ecx
  00405a9e: 8b c8                                           mov    ecx,eax
  00405aa0: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00405aa3: 83 c6 08                                        add    esi,0x8
  00405aa6: 56                                              push   esi
  00405aa7: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00405aad: 5e                                              pop    esi
  00405aae: c3                                              ret
  00406350: 55                                              push   ebp
  00406351: 8b ec                                           mov    ebp,esp
  00406353: 53                                              push   ebx
  00406354: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00406357: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00406359: 56                                              push   esi
  0040635a: 57                                              push   edi
  0040635b: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0040635e: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00406360: 3b c1                                           cmp    eax,ecx
  00406362: 73 07                                           jae    0x40636b
  00406364: 5f                                              pop    edi
  00406365: 5e                                              pop    esi
  00406366: b0 01                                           mov    al,0x1
  00406368: 5b                                              pop    ebx
  00406369: 5d                                              pop    ebp
  0040636a: c3                                              ret
  0040636b: 0f 85 ef 00 00 00                               jne    0x406460
  00406371: 8b 4b 24                                        mov    ecx,DWORD PTR [ebx+0x24]
  00406374: 85 c9                                           test   ecx,ecx
  00406376: 74 15                                           je     0x40638d
  00406378: 8b 47 24                                        mov    eax,DWORD PTR [edi+0x24]
  0040637b: 85 c0                                           test   eax,eax
  0040637d: 75 3d                                           jne    0x4063bc
  0040637f: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00406382: 85 c0                                           test   eax,eax
  00406384: 75 36                                           jne    0x4063bc
  00406386: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040638b: eb 2f                                           jmp    0x4063bc
  0040638d: 8b 4f 24                                        mov    ecx,DWORD PTR [edi+0x24]
  00406390: 85 c9                                           test   ecx,ecx
  00406392: 74 10                                           je     0x4063a4
  00406394: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00406397: 85 c0                                           test   eax,eax
  00406399: 75 05                                           jne    0x4063a0
  0040639b: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004063a0: 51                                              push   ecx
  004063a1: 50                                              push   eax
  004063a2: eb 1a                                           jmp    0x4063be
  004063a4: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004063a7: 85 c0                                           test   eax,eax
  004063a9: 8b 15 d8 e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4d8
  004063af: 75 02                                           jne    0x4063b3
  004063b1: 8b c2                                           mov    eax,edx
  004063b3: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004063b6: 85 c9                                           test   ecx,ecx
  004063b8: 75 02                                           jne    0x4063bc
  004063ba: 8b ca                                           mov    ecx,edx
  004063bc: 50                                              push   eax
  004063bd: 51                                              push   ecx
  004063be: 8b 35 e4 e2 4d 00                               mov    esi,DWORD PTR ds:0x4de2e4
  004063c4: ff d6                                           call   esi
  004063c6: 83 c4 08                                        add    esp,0x8
  004063c9: 85 c0                                           test   eax,eax
  004063cb: 7d 07                                           jge    0x4063d4
  004063cd: 5f                                              pop    edi
  004063ce: 5e                                              pop    esi
  004063cf: b0 01                                           mov    al,0x1
  004063d1: 5b                                              pop    ebx
  004063d2: 5d                                              pop    ebp
  004063d3: c3                                              ret
  004063d4: 0f 85 86 00 00 00                               jne    0x406460
  004063da: 8b 4b 28                                        mov    ecx,DWORD PTR [ebx+0x28]
  004063dd: 85 c9                                           test   ecx,ecx
  004063df: 74 2a                                           je     0x40640b
  004063e1: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  004063e4: 85 c0                                           test   eax,eax
  004063e6: 74 15                                           je     0x4063fd
  004063e8: 50                                              push   eax
  004063e9: 51                                              push   ecx
  004063ea: ff d6                                           call   esi
  004063ec: 83 c4 08                                        add    esp,0x8
  004063ef: 33 c9                                           xor    ecx,ecx
  004063f1: 85 c0                                           test   eax,eax
  004063f3: 5f                                              pop    edi
  004063f4: 0f 9c c1                                        setl   cl
  004063f7: 5e                                              pop    esi
  004063f8: 8a c1                                           mov    al,cl
  004063fa: 5b                                              pop    ebx
  004063fb: 5d                                              pop    ebp
  004063fc: c3                                              ret
  004063fd: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  00406400: 85 c0                                           test   eax,eax
  00406402: 75 47                                           jne    0x40644b
  00406404: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00406409: eb 40                                           jmp    0x40644b
  0040640b: 8b 4f 28                                        mov    ecx,DWORD PTR [edi+0x28]
  0040640e: 85 c9                                           test   ecx,ecx
  00406410: 74 21                                           je     0x406433
  00406412: 8b 43 18                                        mov    eax,DWORD PTR [ebx+0x18]
  00406415: 85 c0                                           test   eax,eax
  00406417: 75 05                                           jne    0x40641e
  00406419: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040641e: 51                                              push   ecx
  0040641f: 50                                              push   eax
  00406420: ff d6                                           call   esi
  00406422: 83 c4 08                                        add    esp,0x8
  00406425: 33 c9                                           xor    ecx,ecx
  00406427: 85 c0                                           test   eax,eax
  00406429: 5f                                              pop    edi
  0040642a: 0f 9c c1                                        setl   cl
  0040642d: 5e                                              pop    esi
  0040642e: 8a c1                                           mov    al,cl
  00406430: 5b                                              pop    ebx
  00406431: 5d                                              pop    ebp
  00406432: c3                                              ret
  00406433: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  00406436: 85 c0                                           test   eax,eax
  00406438: 8b 15 d8 e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4d8
  0040643e: 75 02                                           jne    0x406442
  00406440: 8b c2                                           mov    eax,edx
  00406442: 8b 4b 18                                        mov    ecx,DWORD PTR [ebx+0x18]
  00406445: 85 c9                                           test   ecx,ecx
  00406447: 75 02                                           jne    0x40644b
  00406449: 8b ca                                           mov    ecx,edx
  0040644b: 50                                              push   eax
  0040644c: 51                                              push   ecx
  0040644d: ff d6                                           call   esi
  0040644f: 83 c4 08                                        add    esp,0x8
  00406452: 33 d2                                           xor    edx,edx
  00406454: 85 c0                                           test   eax,eax
  00406456: 5f                                              pop    edi
  00406457: 0f 9c c2                                        setl   dl
  0040645a: 5e                                              pop    esi
  0040645b: 8a c2                                           mov    al,dl
  0040645d: 5b                                              pop    ebx
  0040645e: 5d                                              pop    ebp
  0040645f: c3                                              ret
  00406460: 5f                                              pop    edi
  00406461: 5e                                              pop    esi
  00406462: 32 c0                                           xor    al,al
  00406464: 5b                                              pop    ebx
  00406465: 5d                                              pop    ebp
  00406466: c3                                              ret
  00406cc0: 53                                              push   ebx
  00406cc1: 56                                              push   esi
  00406cc2: 8b f1                                           mov    esi,ecx
  00406cc4: 8b 46 18                                        mov    eax,DWORD PTR [esi+0x18]
  00406cc7: 33 db                                           xor    ebx,ebx
  00406cc9: 3b c3                                           cmp    eax,ebx
  00406ccb: 74 1c                                           je     0x406ce9
  00406ccd: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00406cd0: 8a 01                                           mov    al,BYTE PTR [ecx]
  00406cd2: 3a c3                                           cmp    al,bl
  00406cd4: 74 0a                                           je     0x406ce0
  00406cd6: 3c ff                                           cmp    al,0xff
  00406cd8: 74 06                                           je     0x406ce0
  00406cda: fe c8                                           dec    al
  00406cdc: 88 01                                           mov    BYTE PTR [ecx],al
  00406cde: eb 09                                           jmp    0x406ce9
  00406ce0: 51                                              push   ecx
  00406ce1: e8 7a b3 03 00                                  call   0x442060
  00406ce6: 83 c4 04                                        add    esp,0x4
  00406ce9: 89 5e 18                                        mov    DWORD PTR [esi+0x18],ebx
  00406cec: 89 5e 1c                                        mov    DWORD PTR [esi+0x1c],ebx
  00406cef: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  00406cf2: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00406cf5: 3b c3                                           cmp    eax,ebx
  00406cf7: 74 26                                           je     0x406d1f
  00406cf9: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00406cfc: 8a 01                                           mov    al,BYTE PTR [ecx]
  00406cfe: 3a c3                                           cmp    al,bl
  00406d00: 74 14                                           je     0x406d16
  00406d02: 3c ff                                           cmp    al,0xff
  00406d04: 74 10                                           je     0x406d16
  00406d06: fe c8                                           dec    al
  00406d08: 88 01                                           mov    BYTE PTR [ecx],al
  00406d0a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00406d0d: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00406d10: 89 5e 10                                        mov    DWORD PTR [esi+0x10],ebx
  00406d13: 5e                                              pop    esi
  00406d14: 5b                                              pop    ebx
  00406d15: c3                                              ret
  00406d16: 51                                              push   ecx
  00406d17: e8 44 b3 03 00                                  call   0x442060
  00406d1c: 83 c4 04                                        add    esp,0x4
  00406d1f: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00406d22: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00406d25: 89 5e 10                                        mov    DWORD PTR [esi+0x10],ebx
  00406d28: 5e                                              pop    esi
  00406d29: 5b                                              pop    ebx
  00406d2a: c3                                              ret
  00407740: 55                                              push   ebp
  00407741: 8b ec                                           mov    ebp,esp
  00407743: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00407746: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00407749: 89 08                                           mov    DWORD PTR [eax],ecx
  0040774b: 5d                                              pop    ebp
  0040774c: c2 04 00                                        ret    0x4
  00407ab0: 55                                              push   ebp
  00407ab1: 8b ec                                           mov    ebp,esp
  00407ab3: 83 ec 08                                        sub    esp,0x8
  00407ab6: 53                                              push   ebx
  00407ab7: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00407aba: 56                                              push   esi
  00407abb: 57                                              push   edi
  00407abc: 8b 79 04                                        mov    edi,DWORD PTR [ecx+0x4]
  00407abf: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00407ac2: 8a 56 3d                                        mov    dl,BYTE PTR [esi+0x3d]
  00407ac5: 84 d2                                           test   dl,dl
  00407ac7: b0 01                                           mov    al,0x1
  00407ac9: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  00407acc: 88 45 fc                                        mov    BYTE PTR [ebp-0x4],al
  00407acf: 75 27                                           jne    0x407af8
  00407ad1: 8d 46 0c                                        lea    eax,[esi+0xc]
  00407ad4: 50                                              push   eax
  00407ad5: 53                                              push   ebx
  00407ad6: 8b fe                                           mov    edi,esi
  00407ad8: e8 73 e8 ff ff                                  call   0x406350
  00407add: 83 c4 08                                        add    esp,0x8
  00407ae0: 84 c0                                           test   al,al
  00407ae2: 88 45 fc                                        mov    BYTE PTR [ebp-0x4],al
  00407ae5: 74 04                                           je     0x407aeb
  00407ae7: 8b 36                                           mov    esi,DWORD PTR [esi]
  00407ae9: eb 03                                           jmp    0x407aee
  00407aeb: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  00407aee: 8a 4e 3d                                        mov    cl,BYTE PTR [esi+0x3d]
  00407af1: 84 c9                                           test   cl,cl
  00407af3: 74 dc                                           je     0x407ad1
  00407af5: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00407af8: 84 c0                                           test   al,al
  00407afa: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  00407afd: 74 30                                           je     0x407b2f
  00407aff: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00407b02: 3b 3a                                           cmp    edi,DWORD PTR [edx]
  00407b04: 75 21                                           jne    0x407b27
  00407b06: 53                                              push   ebx
  00407b07: 57                                              push   edi
  00407b08: 6a 01                                           push   0x1
  00407b0a: 8d 45 f8                                        lea    eax,[ebp-0x8]
  00407b0d: 50                                              push   eax
  00407b0e: e8 3d 10 00 00                                  call   0x408b50
  00407b13: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00407b15: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00407b18: 5f                                              pop    edi
  00407b19: 5e                                              pop    esi
  00407b1a: 89 08                                           mov    DWORD PTR [eax],ecx
  00407b1c: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  00407b20: 5b                                              pop    ebx
  00407b21: 8b e5                                           mov    esp,ebp
  00407b23: 5d                                              pop    ebp
  00407b24: c2 08 00                                        ret    0x8
  00407b27: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00407b2a: e8 81 17 00 00                                  call   0x4092b0
  00407b2f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00407b32: 8d 42 0c                                        lea    eax,[edx+0xc]
  00407b35: 53                                              push   ebx
  00407b36: 50                                              push   eax
  00407b37: e8 14 e8 ff ff                                  call   0x406350
  00407b3c: 83 c4 08                                        add    esp,0x8
  00407b3f: 84 c0                                           test   al,al
  00407b41: 74 26                                           je     0x407b69
  00407b43: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00407b46: 53                                              push   ebx
  00407b47: 57                                              push   edi
  00407b48: 50                                              push   eax
  00407b49: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00407b4c: 51                                              push   ecx
  00407b4d: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00407b50: e8 fb 0f 00 00                                  call   0x408b50
  00407b55: 8b 10                                           mov    edx,DWORD PTR [eax]
  00407b57: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00407b5a: 5f                                              pop    edi
  00407b5b: 5e                                              pop    esi
  00407b5c: 89 10                                           mov    DWORD PTR [eax],edx
  00407b5e: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  00407b62: 5b                                              pop    ebx
  00407b63: 8b e5                                           mov    esp,ebp
  00407b65: 5d                                              pop    ebp
  00407b66: c2 08 00                                        ret    0x8
  00407b69: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00407b6c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00407b6f: 5f                                              pop    edi
  00407b70: 5e                                              pop    esi
  00407b71: 89 08                                           mov    DWORD PTR [eax],ecx
  00407b73: c6 40 04 00                                     mov    BYTE PTR [eax+0x4],0x0
  00407b77: 5b                                              pop    ebx
  00407b78: 8b e5                                           mov    esp,ebp
  00407b7a: 5d                                              pop    ebp
  00407b7b: c2 08 00                                        ret    0x8
  00407b80: 55                                              push   ebp
  00407b81: 8b ec                                           mov    ebp,esp
  00407b83: 56                                              push   esi
  00407b84: 57                                              push   edi
  00407b85: 8b f9                                           mov    edi,ecx
  00407b87: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00407b8a: 85 c0                                           test   eax,eax
  00407b8c: 74 0d                                           je     0x407b9b
  00407b8e: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00407b91: 2b c8                                           sub    ecx,eax
  00407b93: f7 c1 fc ff ff ff                               test   ecx,0xfffffffc
  00407b99: 75 04                                           jne    0x407b9f
  00407b9b: 33 f6                                           xor    esi,esi
  00407b9d: eb 08                                           jmp    0x407ba7
  00407b9f: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00407ba2: 2b f0                                           sub    esi,eax
  00407ba4: c1 fe 02                                        sar    esi,0x2
  00407ba7: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00407baa: 52                                              push   edx
  00407bab: 6a 01                                           push   0x1
  00407bad: 51                                              push   ecx
  00407bae: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00407bb1: 8b cc                                           mov    ecx,esp
  00407bb3: 50                                              push   eax
  00407bb4: e8 27 00 00 00                                  call   0x407be0
  00407bb9: 8b cf                                           mov    ecx,edi
  00407bbb: e8 10 13 00 00                                  call   0x408ed0
  00407bc0: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00407bc3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00407bc6: 8d 14 b1                                        lea    edx,[ecx+esi*4]
  00407bc9: 5f                                              pop    edi
  00407bca: 89 10                                           mov    DWORD PTR [eax],edx
  00407bcc: 5e                                              pop    esi
  00407bcd: 5d                                              pop    ebp
  00407bce: c2 0c 00                                        ret    0xc
  00407bf0: 55                                              push   ebp
  00407bf1: 8b ec                                           mov    ebp,esp
  00407bf3: 6a ff                                           push   0xffffffff
  00407bf5: 68 0c 35 4d 00                                  push   0x4d350c
  00407bfa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00407c00: 50                                              push   eax
  00407c01: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00407c08: 83 ec 08                                        sub    esp,0x8
  00407c0b: 53                                              push   ebx
  00407c0c: 56                                              push   esi
  00407c0d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00407c10: 8b 06                                           mov    eax,DWORD PTR [esi]
  00407c12: 8b d9                                           mov    ebx,ecx
  00407c14: 89 03                                           mov    DWORD PTR [ebx],eax
  00407c16: 8a 56 04                                        mov    dl,BYTE PTR [esi+0x4]
  00407c19: 57                                              push   edi
  00407c1a: 8d 46 04                                        lea    eax,[esi+0x4]
  00407c1d: 8d 4b 04                                        lea    ecx,[ebx+0x4]
  00407c20: 33 ff                                           xor    edi,edi
  00407c22: 88 11                                           mov    BYTE PTR [ecx],dl
  00407c24: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00407c27: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00407c2a: 89 79 0c                                        mov    DWORD PTR [ecx+0xc],edi
  00407c2d: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00407c33: 8b 12                                           mov    edx,DWORD PTR [edx]
  00407c35: 52                                              push   edx
  00407c36: 57                                              push   edi
  00407c37: 50                                              push   eax
  00407c38: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00407c3b: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00407c41: 8a 46 14                                        mov    al,BYTE PTR [esi+0x14]
  00407c44: 83 c6 14                                        add    esi,0x14
  00407c47: 83 c3 14                                        add    ebx,0x14
  00407c4a: 89 7b 04                                        mov    DWORD PTR [ebx+0x4],edi
  00407c4d: 89 7b 08                                        mov    DWORD PTR [ebx+0x8],edi
  00407c50: 89 7b 0c                                        mov    DWORD PTR [ebx+0xc],edi
  00407c53: 88 03                                           mov    BYTE PTR [ebx],al
  00407c55: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00407c5a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00407c5d: 8b 00                                           mov    eax,DWORD PTR [eax]
  00407c5f: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00407c62: 8b f9                                           mov    edi,ecx
  00407c64: 3b c7                                           cmp    eax,edi
  00407c66: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00407c69: 73 05                                           jae    0x407c70
  00407c6b: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00407c6e: 8b f8                                           mov    edi,eax
  00407c70: 3b de                                           cmp    ebx,esi
  00407c72: 75 6f                                           jne    0x407ce3
  00407c74: 85 ff                                           test   edi,edi
  00407c76: 8b f0                                           mov    esi,eax
  00407c78: 76 08                                           jbe    0x407c82
  00407c7a: 8b cb                                           mov    ecx,ebx
  00407c7c: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00407c82: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00407c85: 2b c7                                           sub    eax,edi
  00407c87: 3b c6                                           cmp    eax,esi
  00407c89: 73 02                                           jae    0x407c8d
  00407c8b: 8b f0                                           mov    esi,eax
  00407c8d: 85 f6                                           test   esi,esi
  00407c8f: 76 41                                           jbe    0x407cd2
  00407c91: 8b cb                                           mov    ecx,ebx
  00407c93: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00407c99: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00407c9c: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00407c9f: 2b d6                                           sub    edx,esi
  00407ca1: 8d 04 39                                        lea    eax,[ecx+edi*1]
  00407ca4: 2b d7                                           sub    edx,edi
  00407ca6: 52                                              push   edx
  00407ca7: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00407caa: 51                                              push   ecx
  00407cab: 50                                              push   eax
  00407cac: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00407cb2: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00407cb5: 83 c4 0c                                        add    esp,0xc
  00407cb8: 6a 00                                           push   0x0
  00407cba: 2b fe                                           sub    edi,esi
  00407cbc: 57                                              push   edi
  00407cbd: 8b cb                                           mov    ecx,ebx
  00407cbf: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00407cc5: 84 c0                                           test   al,al
  00407cc7: 74 09                                           je     0x407cd2
  00407cc9: 57                                              push   edi
  00407cca: 8b cb                                           mov    ecx,ebx
  00407ccc: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00407cd2: 6a 00                                           push   0x0
  00407cd4: 6a 00                                           push   0x0
  00407cd6: 8b cb                                           mov    ecx,ebx
  00407cd8: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00407cde: e9 80 00 00 00                                  jmp    0x407d63
  00407ce3: 85 ff                                           test   edi,edi
  00407ce5: 76 40                                           jbe    0x407d27
  00407ce7: 3b f9                                           cmp    edi,ecx
  00407ce9: 75 3c                                           jne    0x407d27
  00407ceb: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00407cee: 85 c0                                           test   eax,eax
  00407cf0: 75 05                                           jne    0x407cf7
  00407cf2: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00407cf7: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00407cfb: 73 2a                                           jae    0x407d27
  00407cfd: 6a 01                                           push   0x1
  00407cff: 8b cb                                           mov    ecx,ebx
  00407d01: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00407d07: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00407d0a: 85 c0                                           test   eax,eax
  00407d0c: 75 05                                           jne    0x407d13
  00407d0e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00407d13: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00407d16: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00407d19: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00407d1c: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00407d1f: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00407d22: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00407d25: eb 3c                                           jmp    0x407d63
  00407d27: 6a 01                                           push   0x1
  00407d29: 57                                              push   edi
  00407d2a: 8b cb                                           mov    ecx,ebx
  00407d2c: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00407d32: 84 c0                                           test   al,al
  00407d34: 74 2d                                           je     0x407d63
  00407d36: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00407d39: 85 f6                                           test   esi,esi
  00407d3b: 75 06                                           jne    0x407d43
  00407d3d: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00407d43: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00407d46: 8b cf                                           mov    ecx,edi
  00407d48: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00407d4b: 8b d1                                           mov    edx,ecx
  00407d4d: c1 e9 02                                        shr    ecx,0x2
  00407d50: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00407d52: 8b ca                                           mov    ecx,edx
  00407d54: 83 e1 03                                        and    ecx,0x3
  00407d57: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00407d59: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00407d5c: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00407d5f: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  00407d63: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00407d66: 8b 51 24                                        mov    edx,DWORD PTR [ecx+0x24]
  00407d69: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00407d6c: 89 50 24                                        mov    DWORD PTR [eax+0x24],edx
  00407d6f: 8b 49 28                                        mov    ecx,DWORD PTR [ecx+0x28]
  00407d72: 5f                                              pop    edi
  00407d73: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  00407d76: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00407d79: 5e                                              pop    esi
  00407d7a: 5b                                              pop    ebx
  00407d7b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00407d82: 8b e5                                           mov    esp,ebp
  00407d84: 5d                                              pop    ebp
  00407d85: c2 04 00                                        ret    0x4
  004085b0: 55                                              push   ebp
  004085b1: 8b ec                                           mov    ebp,esp
  004085b3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004085b6: 56                                              push   esi
  004085b7: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  004085ba: 57                                              push   edi
  004085bb: 8b f8                                           mov    edi,eax
  004085bd: 8a 46 49                                        mov    al,BYTE PTR [esi+0x49]
  004085c0: 84 c0                                           test   al,al
  004085c2: 75 2e                                           jne    0x4085f2
  004085c4: 53                                              push   ebx
  004085c5: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004085c8: 8d 46 0c                                        lea    eax,[esi+0xc]
  004085cb: 53                                              push   ebx
  004085cc: 50                                              push   eax
  004085cd: e8 7e dd ff ff                                  call   0x406350
  004085d2: 83 c4 08                                        add    esp,0x8
  004085d5: 84 c0                                           test   al,al
  004085d7: 74 05                                           je     0x4085de
  004085d9: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  004085dc: eb 04                                           jmp    0x4085e2
  004085de: 8b fe                                           mov    edi,esi
  004085e0: 8b 36                                           mov    esi,DWORD PTR [esi]
  004085e2: 8a 46 49                                        mov    al,BYTE PTR [esi+0x49]
  004085e5: 84 c0                                           test   al,al
  004085e7: 74 df                                           je     0x4085c8
  004085e9: 5b                                              pop    ebx
  004085ea: 8b c7                                           mov    eax,edi
  004085ec: 5f                                              pop    edi
  004085ed: 5e                                              pop    esi
  004085ee: 5d                                              pop    ebp
  004085ef: c2 04 00                                        ret    0x4
  004085f2: 8b c7                                           mov    eax,edi
  004085f4: 5f                                              pop    edi
  004085f5: 5e                                              pop    esi
  004085f6: 5d                                              pop    ebp
  004085f7: c2 04 00                                        ret    0x4
  00408e30: 55                                              push   ebp
  00408e31: 8b ec                                           mov    ebp,esp
  00408e33: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00408e36: 56                                              push   esi
  00408e37: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  00408e3a: 57                                              push   edi
  00408e3b: 8b f8                                           mov    edi,eax
  00408e3d: 8a 46 3d                                        mov    al,BYTE PTR [esi+0x3d]
  00408e40: 84 c0                                           test   al,al
  00408e42: 75 2e                                           jne    0x408e72
  00408e44: 53                                              push   ebx
  00408e45: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00408e48: 8d 46 0c                                        lea    eax,[esi+0xc]
  00408e4b: 53                                              push   ebx
  00408e4c: 50                                              push   eax
  00408e4d: e8 fe d4 ff ff                                  call   0x406350
  00408e52: 83 c4 08                                        add    esp,0x8
  00408e55: 84 c0                                           test   al,al
  00408e57: 74 05                                           je     0x408e5e
  00408e59: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  00408e5c: eb 04                                           jmp    0x408e62
  00408e5e: 8b fe                                           mov    edi,esi
  00408e60: 8b 36                                           mov    esi,DWORD PTR [esi]
  00408e62: 8a 46 3d                                        mov    al,BYTE PTR [esi+0x3d]
  00408e65: 84 c0                                           test   al,al
  00408e67: 74 df                                           je     0x408e48
  00408e69: 5b                                              pop    ebx
  00408e6a: 8b c7                                           mov    eax,edi
  00408e6c: 5f                                              pop    edi
  00408e6d: 5e                                              pop    esi
  00408e6e: 5d                                              pop    ebp
  00408e6f: c2 04 00                                        ret    0x4
  00408e72: 8b c7                                           mov    eax,edi
  00408e74: 5f                                              pop    edi
  00408e75: 5e                                              pop    esi
  00408e76: 5d                                              pop    ebp
  00408e77: c2 04 00                                        ret    0x4
  004110f0: 55                                              push   ebp
  004110f1: 8b ec                                           mov    ebp,esp
  004110f3: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004110f6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004110f9: 89 08                                           mov    DWORD PTR [eax],ecx
  004110fb: 5d                                              pop    ebp
  004110fc: c2 04 00                                        ret    0x4
  00411100: 55                                              push   ebp
  00411101: 8b ec                                           mov    ebp,esp
  00411103: 56                                              push   esi
  00411104: 57                                              push   edi
  00411105: 8b f9                                           mov    edi,ecx
  00411107: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0041110a: 85 c0                                           test   eax,eax
  0041110c: 74 0d                                           je     0x41111b
  0041110e: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00411111: 2b c8                                           sub    ecx,eax
  00411113: f7 c1 fc ff ff ff                               test   ecx,0xfffffffc
  00411119: 75 04                                           jne    0x41111f
  0041111b: 33 f6                                           xor    esi,esi
  0041111d: eb 08                                           jmp    0x411127
  0041111f: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00411122: 2b f0                                           sub    esi,eax
  00411124: c1 fe 02                                        sar    esi,0x2
  00411127: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0041112a: 52                                              push   edx
  0041112b: 6a 01                                           push   0x1
  0041112d: 51                                              push   ecx
  0041112e: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00411131: 8b cc                                           mov    ecx,esp
  00411133: 50                                              push   eax
  00411134: e8 87 03 00 00                                  call   0x4114c0
  00411139: 8b cf                                           mov    ecx,edi
  0041113b: e8 20 00 00 00                                  call   0x411160
  00411140: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00411143: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00411146: 8d 14 b1                                        lea    edx,[ecx+esi*4]
  00411149: 5f                                              pop    edi
  0041114a: 89 10                                           mov    DWORD PTR [eax],edx
  0041114c: 5e                                              pop    esi
  0041114d: 5d                                              pop    ebp
  0041114e: c2 0c 00                                        ret    0xc
  00422c60: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00422c63: 85 d2                                           test   edx,edx
  00422c65: 75 03                                           jne    0x422c6a
  00422c67: 33 c0                                           xor    eax,eax
  00422c69: c3                                              ret
  00422c6a: 8b 41 0c                                        mov    eax,DWORD PTR [ecx+0xc]
  00422c6d: 2b c2                                           sub    eax,edx
  00422c6f: c1 f8 02                                        sar    eax,0x2
  00422c72: c3                                              ret
  00422cf0: c2 08 00                                        ret    0x8
  00422d00: c2 08 00                                        ret    0x8
  00422d10: 55                                              push   ebp
  00422d11: 8b ec                                           mov    ebp,esp
  00422d13: 8b c1                                           mov    eax,ecx
  00422d15: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00422d18: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00422d1a: 89 10                                           mov    DWORD PTR [eax],edx
  00422d1c: 5d                                              pop    ebp
  00422d1d: c2 04 00                                        ret    0x4
  00422e10: 55                                              push   ebp
  00422e11: 8b ec                                           mov    ebp,esp
  00422e13: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00422e15: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00422e18: 8d 14 88                                        lea    edx,[eax+ecx*4]
  00422e1b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422e1e: 89 10                                           mov    DWORD PTR [eax],edx
  00422e20: 5d                                              pop    ebp
  00422e21: c2 08 00                                        ret    0x8
  00422f70: 55                                              push   ebp
  00422f71: 8b ec                                           mov    ebp,esp
  00422f73: 6a ff                                           push   0xffffffff
  00422f75: 68 d9 44 4d 00                                  push   0x4d44d9
  00422f7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00422f80: 50                                              push   eax
  00422f81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00422f88: 83 ec 34                                        sub    esp,0x34
  00422f8b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00422f8e: 56                                              push   esi
  00422f8f: 8b f1                                           mov    esi,ecx
  00422f91: 8a 48 15                                        mov    cl,BYTE PTR [eax+0x15]
  00422f94: 84 c9                                           test   cl,cl
  00422f96: 57                                              push   edi
  00422f97: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00422f9a: 74 57                                           je     0x422ff3
  00422f9c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00422f9f: 6a 00                                           push   0x0
  00422fa1: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00422fa4: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00422fa7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00422fad: 83 c9 ff                                        or     ecx,0xffffffff
  00422fb0: 33 c0                                           xor    eax,eax
  00422fb2: bf 40 05 50 00                                  mov    edi,0x500540
  00422fb7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00422fb9: f7 d1                                           not    ecx
  00422fbb: 49                                              dec    ecx
  00422fbc: 51                                              push   ecx
  00422fbd: 68 40 05 50 00                                  push   0x500540
  00422fc2: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00422fc5: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00422fcb: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00422fce: 51                                              push   ecx
  00422fcf: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00422fd2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00422fd9: e8 a2 20 fe ff                                  call   0x405080
  00422fde: 68 18 0a 4e 00                                  push   0x4e0a18
  00422fe3: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00422fe6: 52                                              push   edx
  00422fe7: c7 45 c0 e0 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5e0
  00422fee: e8 63 ed 0a 00                                  call   0x4d1d56
  00422ff3: 53                                              push   ebx
  00422ff4: 8b d8                                           mov    ebx,eax
  00422ff6: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00422ff9: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00422ffc: e8 cf 10 00 00                                  call   0x4240d0
  00423001: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00423003: 8a 42 15                                        mov    al,BYTE PTR [edx+0x15]
  00423006: 84 c0                                           test   al,al
  00423008: 74 05                                           je     0x42300f
  0042300a: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0042300d: eb 2b                                           jmp    0x42303a
  0042300f: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00423012: 8a 41 15                                        mov    al,BYTE PTR [ecx+0x15]
  00423015: 84 c0                                           test   al,al
  00423017: 74 04                                           je     0x42301d
  00423019: 8b fa                                           mov    edi,edx
  0042301b: eb 1d                                           jmp    0x42303a
  0042301d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042301f: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  00423023: 75 0a                                           jne    0x42302f
  00423025: 8b c8                                           mov    ecx,eax
  00423027: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00423029: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  0042302d: 74 f6                                           je     0x423025
  0042302f: 3b cb                                           cmp    ecx,ebx
  00423031: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  00423034: 0f 85 8a 00 00 00                               jne    0x4230c4
  0042303a: 8a 4f 15                                        mov    cl,BYTE PTR [edi+0x15]
  0042303d: 84 c9                                           test   cl,cl
  0042303f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00423042: 75 03                                           jne    0x423047
  00423044: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00423047: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0042304a: 39 59 04                                        cmp    DWORD PTR [ecx+0x4],ebx
  0042304d: 75 05                                           jne    0x423054
  0042304f: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00423052: eb 0b                                           jmp    0x42305f
  00423054: 39 18                                           cmp    DWORD PTR [eax],ebx
  00423056: 75 04                                           jne    0x42305c
  00423058: 89 38                                           mov    DWORD PTR [eax],edi
  0042305a: eb 03                                           jmp    0x42305f
  0042305c: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  0042305f: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00423062: 39 1e                                           cmp    DWORD PTR [esi],ebx
  00423064: 75 24                                           jne    0x42308a
  00423066: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00423069: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  0042306c: 84 d2                                           test   dl,dl
  0042306e: 74 04                                           je     0x423074
  00423070: 89 06                                           mov    DWORD PTR [esi],eax
  00423072: eb 16                                           jmp    0x42308a
  00423074: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00423076: 80 79 15 00                                     cmp    BYTE PTR [ecx+0x15],0x0
  0042307a: 8b d7                                           mov    edx,edi
  0042307c: 75 0a                                           jne    0x423088
  0042307e: 8b d1                                           mov    edx,ecx
  00423080: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00423082: 80 79 15 00                                     cmp    BYTE PTR [ecx+0x15],0x0
  00423086: 74 f6                                           je     0x42307e
  00423088: 89 16                                           mov    DWORD PTR [esi],edx
  0042308a: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0042308d: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  00423090: 39 5e 08                                        cmp    DWORD PTR [esi+0x8],ebx
  00423093: 0f 85 89 00 00 00                               jne    0x423122
  00423099: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  0042309b: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  0042309e: 84 d2                                           test   dl,dl
  004230a0: 74 05                                           je     0x4230a7
  004230a2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004230a5: eb 7b                                           jmp    0x423122
  004230a7: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004230aa: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  004230ad: 84 db                                           test   bl,bl
  004230af: 8b d7                                           mov    edx,edi
  004230b1: 75 0c                                           jne    0x4230bf
  004230b3: 8b d1                                           mov    edx,ecx
  004230b5: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  004230b8: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  004230bb: 84 db                                           test   bl,bl
  004230bd: 74 f4                                           je     0x4230b3
  004230bf: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004230c2: eb 5e                                           jmp    0x423122
  004230c4: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004230c7: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004230c9: 89 11                                           mov    DWORD PTR [ecx],edx
  004230cb: 3b 4b 08                                        cmp    ecx,DWORD PTR [ebx+0x8]
  004230ce: 75 04                                           jne    0x4230d4
  004230d0: 8b c1                                           mov    eax,ecx
  004230d2: eb 1b                                           jmp    0x4230ef
  004230d4: 8a 57 15                                        mov    dl,BYTE PTR [edi+0x15]
  004230d7: 84 d2                                           test   dl,dl
  004230d9: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004230dc: 75 03                                           jne    0x4230e1
  004230de: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004230e1: 89 38                                           mov    DWORD PTR [eax],edi
  004230e3: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  004230e6: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004230e9: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  004230ec: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004230ef: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004230f2: 39 5a 04                                        cmp    DWORD PTR [edx+0x4],ebx
  004230f5: 75 05                                           jne    0x4230fc
  004230f7: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004230fa: eb 0e                                           jmp    0x42310a
  004230fc: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004230ff: 39 1a                                           cmp    DWORD PTR [edx],ebx
  00423101: 75 04                                           jne    0x423107
  00423103: 89 0a                                           mov    DWORD PTR [edx],ecx
  00423105: eb 03                                           jmp    0x42310a
  00423107: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0042310a: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0042310d: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00423110: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  00423113: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00423116: 8a 5e 14                                        mov    bl,BYTE PTR [esi+0x14]
  00423119: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  0042311c: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  0042311f: 88 56 14                                        mov    BYTE PTR [esi+0x14],dl
  00423122: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00423125: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  00423128: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0042312b: b3 01                                           mov    bl,0x1
  0042312d: 3a d3                                           cmp    dl,bl
  0042312f: 0f 85 58 02 00 00                               jne    0x42338d
  00423135: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00423138: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  0042313b: 0f 84 49 02 00 00                               je     0x42338a
  00423141: 38 5f 14                                        cmp    BYTE PTR [edi+0x14],bl
  00423144: 0f 85 40 02 00 00                               jne    0x42338a
  0042314a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042314c: 3b f9                                           cmp    edi,ecx
  0042314e: 75 71                                           jne    0x4231c1
  00423150: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00423153: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  00423156: 84 d2                                           test   dl,dl
  00423158: 75 43                                           jne    0x42319d
  0042315a: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  0042315d: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00423160: c6 40 14 00                                     mov    BYTE PTR [eax+0x14],0x0
  00423164: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00423166: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00423169: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042316b: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  0042316f: 75 03                                           jne    0x423174
  00423171: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00423174: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00423177: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042317a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0042317d: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00423180: 75 05                                           jne    0x423187
  00423182: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00423185: eb 0e                                           jmp    0x423195
  00423187: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042318a: 3b 02                                           cmp    eax,DWORD PTR [edx]
  0042318c: 75 04                                           jne    0x423192
  0042318e: 89 0a                                           mov    DWORD PTR [edx],ecx
  00423190: eb 03                                           jmp    0x423195
  00423192: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00423195: 89 01                                           mov    DWORD PTR [ecx],eax
  00423197: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042319a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042319d: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  004231a0: 84 d2                                           test   dl,dl
  004231a2: 0f 85 86 00 00 00                               jne    0x42322e
  004231a8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004231aa: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  004231ad: 0f 85 93 00 00 00                               jne    0x423246
  004231b3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004231b6: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  004231b9: 0f 85 87 00 00 00                               jne    0x423246
  004231bf: eb 69                                           jmp    0x42322a
  004231c1: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004231c4: 84 d2                                           test   dl,dl
  004231c6: 75 44                                           jne    0x42320c
  004231c8: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  004231cb: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004231cd: c6 40 14 00                                     mov    BYTE PTR [eax+0x14],0x0
  004231d1: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004231d4: 89 10                                           mov    DWORD PTR [eax],edx
  004231d6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004231d9: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  004231dd: 75 03                                           jne    0x4231e2
  004231df: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004231e2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004231e5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004231e8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004231eb: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004231ee: 75 05                                           jne    0x4231f5
  004231f0: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004231f3: eb 0f                                           jmp    0x423204
  004231f5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004231f8: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  004231fb: 75 05                                           jne    0x423202
  004231fd: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00423200: eb 02                                           jmp    0x423204
  00423202: 89 0a                                           mov    DWORD PTR [edx],ecx
  00423204: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00423207: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042320a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042320c: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  0042320f: 84 d2                                           test   dl,dl
  00423211: 75 1b                                           jne    0x42322e
  00423213: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00423216: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00423219: 0f 85 d0 00 00 00                               jne    0x4232ef
  0042321f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00423221: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00423224: 0f 85 c5 00 00 00                               jne    0x4232ef
  0042322a: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  0042322e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00423231: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00423234: 8b f8                                           mov    edi,eax
  00423236: 3b fa                                           cmp    edi,edx
  00423238: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042323b: 0f 85 00 ff ff ff                               jne    0x423141
  00423241: e9 44 01 00 00                                  jmp    0x42338a
  00423246: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00423249: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  0042324c: 75 4a                                           jne    0x423298
  0042324e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00423250: 88 5a 14                                        mov    BYTE PTR [edx+0x14],bl
  00423253: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00423255: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00423259: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  0042325c: 89 31                                           mov    DWORD PTR [ecx],esi
  0042325e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00423261: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  00423265: 75 03                                           jne    0x42326a
  00423267: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0042326a: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0042326d: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00423270: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00423273: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00423276: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00423279: 75 05                                           jne    0x423280
  0042327b: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0042327e: eb 0f                                           jmp    0x42328f
  00423280: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00423283: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  00423286: 75 05                                           jne    0x42328d
  00423288: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0042328b: eb 02                                           jmp    0x42328f
  0042328d: 89 16                                           mov    DWORD PTR [esi],edx
  0042328f: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00423292: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00423295: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00423298: 8a 50 14                                        mov    dl,BYTE PTR [eax+0x14]
  0042329b: 88 51 14                                        mov    BYTE PTR [ecx+0x14],dl
  0042329e: 88 58 14                                        mov    BYTE PTR [eax+0x14],bl
  004232a1: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004232a4: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  004232a7: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004232aa: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004232ac: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004232af: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004232b1: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  004232b5: 75 03                                           jne    0x4232ba
  004232b7: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004232ba: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004232bd: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004232c0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004232c3: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004232c6: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004232c9: 75 0a                                           jne    0x4232d5
  004232cb: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004232ce: 89 01                                           mov    DWORD PTR [ecx],eax
  004232d0: e9 b2 00 00 00                                  jmp    0x423387
  004232d5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004232d8: 3b 02                                           cmp    eax,DWORD PTR [edx]
  004232da: 75 09                                           jne    0x4232e5
  004232dc: 89 0a                                           mov    DWORD PTR [edx],ecx
  004232de: 89 01                                           mov    DWORD PTR [ecx],eax
  004232e0: e9 a2 00 00 00                                  jmp    0x423387
  004232e5: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004232e8: 89 01                                           mov    DWORD PTR [ecx],eax
  004232ea: e9 98 00 00 00                                  jmp    0x423387
  004232ef: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004232f1: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  004232f4: 75 48                                           jne    0x42333e
  004232f6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004232f9: 88 5a 14                                        mov    BYTE PTR [edx+0x14],bl
  004232fc: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004232ff: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00423303: 8b 32                                           mov    esi,DWORD PTR [edx]
  00423305: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00423308: 8b 32                                           mov    esi,DWORD PTR [edx]
  0042330a: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  0042330e: 75 03                                           jne    0x423313
  00423310: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00423313: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00423316: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00423319: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0042331c: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0042331f: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00423322: 75 05                                           jne    0x423329
  00423324: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00423327: eb 0e                                           jmp    0x423337
  00423329: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0042332c: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0042332e: 75 04                                           jne    0x423334
  00423330: 89 16                                           mov    DWORD PTR [esi],edx
  00423332: eb 03                                           jmp    0x423337
  00423334: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00423337: 89 0a                                           mov    DWORD PTR [edx],ecx
  00423339: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042333c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042333e: 8a 50 14                                        mov    dl,BYTE PTR [eax+0x14]
  00423341: 88 51 14                                        mov    BYTE PTR [ecx+0x14],dl
  00423344: 88 58 14                                        mov    BYTE PTR [eax+0x14],bl
  00423347: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00423349: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  0042334c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042334e: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00423351: 89 10                                           mov    DWORD PTR [eax],edx
  00423353: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00423356: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  0042335a: 75 03                                           jne    0x42335f
  0042335c: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0042335f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00423362: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00423365: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00423368: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0042336b: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0042336e: 75 05                                           jne    0x423375
  00423370: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00423373: eb 0f                                           jmp    0x423384
  00423375: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00423378: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0042337b: 75 05                                           jne    0x423382
  0042337d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00423380: eb 02                                           jmp    0x423384
  00423382: 89 0a                                           mov    DWORD PTR [edx],ecx
  00423384: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00423387: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042338a: 88 5f 14                                        mov    BYTE PTR [edi+0x14],bl
  0042338d: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00423390: 50                                              push   eax
  00423391: e8 ca ec 01 00                                  call   0x442060
  00423396: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00423399: 83 c4 04                                        add    esp,0x4
  0042339c: 85 c0                                           test   eax,eax
  0042339e: 5b                                              pop    ebx
  0042339f: 76 04                                           jbe    0x4233a5
  004233a1: 48                                              dec    eax
  004233a2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004233a5: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004233a8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004233ab: 89 08                                           mov    DWORD PTR [eax],ecx
  004233ad: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004233b0: 5f                                              pop    edi
  004233b1: 5e                                              pop    esi
  004233b2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004233b9: 8b e5                                           mov    esp,ebp
  004233bb: 5d                                              pop    ebp
  004233bc: c2 08 00                                        ret    0x8
  004233c0: 55                                              push   ebp
  004233c1: 8b ec                                           mov    ebp,esp
  004233c3: 53                                              push   ebx
  004233c4: 56                                              push   esi
  004233c5: 57                                              push   edi
  004233c6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004233c9: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  004233cc: 84 c0                                           test   al,al
  004233ce: 8b d9                                           mov    ebx,ecx
  004233d0: 8b f7                                           mov    esi,edi
  004233d2: 75 1f                                           jne    0x4233f3
  004233d4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004233d7: 50                                              push   eax
  004233d8: 8b cb                                           mov    ecx,ebx
  004233da: e8 e1 ff ff ff                                  call   0x4233c0
  004233df: 8b 36                                           mov    esi,DWORD PTR [esi]
  004233e1: 57                                              push   edi
  004233e2: e8 79 ec 01 00                                  call   0x442060
  004233e7: 8a 46 15                                        mov    al,BYTE PTR [esi+0x15]
  004233ea: 83 c4 04                                        add    esp,0x4
  004233ed: 84 c0                                           test   al,al
  004233ef: 8b fe                                           mov    edi,esi
  004233f1: 74 e1                                           je     0x4233d4
  004233f3: 5f                                              pop    edi
  004233f4: 5e                                              pop    esi
  004233f5: 5b                                              pop    ebx
  004233f6: 5d                                              pop    ebp
  004233f7: c2 04 00                                        ret    0x4
  00423c80: 55                                              push   ebp
  00423c81: 8b ec                                           mov    ebp,esp
  00423c83: 6a ff                                           push   0xffffffff
  00423c85: 68 42 45 4d 00                                  push   0x4d4542
  00423c8a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00423c90: 50                                              push   eax
  00423c91: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00423c98: 83 ec 48                                        sub    esp,0x48
  00423c9b: 53                                              push   ebx
  00423c9c: 56                                              push   esi
  00423c9d: 57                                              push   edi
  00423c9e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00423ca1: 8a 07                                           mov    al,BYTE PTR [edi]
  00423ca3: 8b f1                                           mov    esi,ecx
  00423ca5: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00423ca8: 33 db                                           xor    ebx,ebx
  00423caa: 53                                              push   ebx
  00423cab: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00423cae: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00423cb1: 88 45 d8                                        mov    BYTE PTR [ebp-0x28],al
  00423cb4: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00423cba: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00423cbf: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00423cc1: 51                                              push   ecx
  00423cc2: 53                                              push   ebx
  00423cc3: 57                                              push   edi
  00423cc4: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00423cc7: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00423ccd: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00423cd0: 3b c3                                           cmp    eax,ebx
  00423cd2: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00423cd5: 74 08                                           je     0x423cdf
  00423cd7: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  00423cda: 2b d8                                           sub    ebx,eax
  00423cdc: c1 fb 04                                        sar    ebx,0x4
  00423cdf: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00423ce2: 85 ff                                           test   edi,edi
  00423ce4: 0f 84 1f 03 00 00                               je     0x424009
  00423cea: 85 c0                                           test   eax,eax
  00423cec: 75 04                                           jne    0x423cf2
  00423cee: 33 c9                                           xor    ecx,ecx
  00423cf0: eb 08                                           jmp    0x423cfa
  00423cf2: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00423cf5: 2b c8                                           sub    ecx,eax
  00423cf7: c1 f9 04                                        sar    ecx,0x4
  00423cfa: ba ff ff ff 0f                                  mov    edx,0xfffffff
  00423cff: 2b d1                                           sub    edx,ecx
  00423d01: 3b d7                                           cmp    edx,edi
  00423d03: 73 2c                                           jae    0x423d31
  00423d05: 68 80 05 50 00                                  push   0x500580
  00423d0a: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00423d0d: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00423d13: 8d 45 c8                                        lea    eax,[ebp-0x38]
  00423d16: 50                                              push   eax
  00423d17: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00423d1a: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00423d1e: e8 fd 16 fe ff                                  call   0x405420
  00423d23: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00423d28: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00423d2b: 51                                              push   ecx
  00423d2c: e8 25 e0 0a 00                                  call   0x4d1d56
  00423d31: 85 c0                                           test   eax,eax
  00423d33: 75 04                                           jne    0x423d39
  00423d35: 33 c9                                           xor    ecx,ecx
  00423d37: eb 08                                           jmp    0x423d41
  00423d39: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00423d3c: 2b c8                                           sub    ecx,eax
  00423d3e: c1 f9 04                                        sar    ecx,0x4
  00423d41: 03 cf                                           add    ecx,edi
  00423d43: 3b d9                                           cmp    ebx,ecx
  00423d45: 0f 83 5e 01 00 00                               jae    0x423ea9
  00423d4b: 8b cb                                           mov    ecx,ebx
  00423d4d: d1 e9                                           shr    ecx,1
  00423d4f: ba ff ff ff 0f                                  mov    edx,0xfffffff
  00423d54: 2b d1                                           sub    edx,ecx
  00423d56: 3b d3                                           cmp    edx,ebx
  00423d58: 73 04                                           jae    0x423d5e
  00423d5a: 33 db                                           xor    ebx,ebx
  00423d5c: eb 02                                           jmp    0x423d60
  00423d5e: 03 d9                                           add    ebx,ecx
  00423d60: 85 c0                                           test   eax,eax
  00423d62: 75 04                                           jne    0x423d68
  00423d64: 33 c9                                           xor    ecx,ecx
  00423d66: eb 08                                           jmp    0x423d70
  00423d68: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00423d6b: 2b c8                                           sub    ecx,eax
  00423d6d: c1 f9 04                                        sar    ecx,0x4
  00423d70: 03 cf                                           add    ecx,edi
  00423d72: 3b d9                                           cmp    ebx,ecx
  00423d74: 73 12                                           jae    0x423d88
  00423d76: 85 c0                                           test   eax,eax
  00423d78: 75 04                                           jne    0x423d7e
  00423d7a: 33 db                                           xor    ebx,ebx
  00423d7c: eb 08                                           jmp    0x423d86
  00423d7e: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00423d81: 2b d8                                           sub    ebx,eax
  00423d83: c1 fb 04                                        sar    ebx,0x4
  00423d86: 03 df                                           add    ebx,edi
  00423d88: 8b c3                                           mov    eax,ebx
  00423d8a: c1 e0 04                                        shl    eax,0x4
  00423d8d: 50                                              push   eax
  00423d8e: e8 5d e2 01 00                                  call   0x441ff0
  00423d93: 83 c4 04                                        add    esp,0x4
  00423d96: 50                                              push   eax
  00423d97: 51                                              push   ecx
  00423d98: 8d 55 08                                        lea    edx,[ebp+0x8]
  00423d9b: 8b cc                                           mov    ecx,esp
  00423d9d: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00423da0: 52                                              push   edx
  00423da1: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00423da4: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00423da7: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00423dab: e8 60 ef ff ff                                  call   0x422d10
  00423db0: 51                                              push   ecx
  00423db1: 8b c4                                           mov    eax,esp
  00423db3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00423db6: 50                                              push   eax
  00423db7: 8b ce                                           mov    ecx,esi
  00423db9: e8 52 ed ff ff                                  call   0x422b10
  00423dbe: 8b ce                                           mov    ecx,esi
  00423dc0: e8 fb 0c 00 00                                  call   0x424ac0
  00423dc5: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00423dc8: 51                                              push   ecx
  00423dc9: 57                                              push   edi
  00423dca: 50                                              push   eax
  00423dcb: 8b ce                                           mov    ecx,esi
  00423dcd: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00423dd0: e8 4b 03 00 00                                  call   0x424120
  00423dd5: 50                                              push   eax
  00423dd6: 51                                              push   ecx
  00423dd7: 8b d4                                           mov    edx,esp
  00423dd9: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00423ddc: 52                                              push   edx
  00423ddd: 8b ce                                           mov    ecx,esi
  00423ddf: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00423de2: e8 39 ed ff ff                                  call   0x422b20
  00423de7: 51                                              push   ecx
  00423de8: 8d 45 08                                        lea    eax,[ebp+0x8]
  00423deb: 8b cc                                           mov    ecx,esp
  00423ded: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00423df0: 50                                              push   eax
  00423df1: e8 1a ef ff ff                                  call   0x422d10
  00423df6: 8b ce                                           mov    ecx,esi
  00423df8: e8 c3 0c 00 00                                  call   0x424ac0
  00423dfd: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00423e00: 85 c0                                           test   eax,eax
  00423e02: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00423e09: 74 2f                                           je     0x423e3a
  00423e0b: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00423e0e: 8b f8                                           mov    edi,eax
  00423e10: 3b f9                                           cmp    edi,ecx
  00423e12: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  00423e15: 74 14                                           je     0x423e2b
  00423e17: 6a 01                                           push   0x1
  00423e19: 8b cf                                           mov    ecx,edi
  00423e1b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00423e21: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00423e24: 83 c7 10                                        add    edi,0x10
  00423e27: 3b f8                                           cmp    edi,eax
  00423e29: 75 ec                                           jne    0x423e17
  00423e2b: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00423e2e: 51                                              push   ecx
  00423e2f: e8 2c e2 01 00                                  call   0x442060
  00423e34: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00423e37: 83 c4 04                                        add    esp,0x4
  00423e3a: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00423e3d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00423e40: c1 e3 04                                        shl    ebx,0x4
  00423e43: 03 da                                           add    ebx,edx
  00423e45: 85 c9                                           test   ecx,ecx
  00423e47: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00423e4a: 75 14                                           jne    0x423e60
  00423e4c: 33 c0                                           xor    eax,eax
  00423e4e: 8b c7                                           mov    eax,edi
  00423e50: c1 e0 04                                        shl    eax,0x4
  00423e53: 03 c2                                           add    eax,edx
  00423e55: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00423e58: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00423e5b: e9 a9 01 00 00                                  jmp    0x424009
  00423e60: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00423e63: 2b c1                                           sub    eax,ecx
  00423e65: c1 f8 04                                        sar    eax,0x4
  00423e68: 03 c7                                           add    eax,edi
  00423e6a: c1 e0 04                                        shl    eax,0x4
  00423e6d: 03 c2                                           add    eax,edx
  00423e6f: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00423e72: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00423e75: e9 8f 01 00 00                                  jmp    0x424009
  00423ea9: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00423eac: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00423eaf: 8b d0                                           mov    edx,eax
  00423eb1: 2b d1                                           sub    edx,ecx
  00423eb3: c1 fa 04                                        sar    edx,0x4
  00423eb6: 3b d7                                           cmp    edx,edi
  00423eb8: 0f 83 bd 00 00 00                               jae    0x423f7b
  00423ebe: 8b df                                           mov    ebx,edi
  00423ec0: c1 e3 04                                        shl    ebx,0x4
  00423ec3: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  00423ec6: 50                                              push   eax
  00423ec7: 51                                              push   ecx
  00423ec8: 8b cc                                           mov    ecx,esp
  00423eca: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423ecd: 51                                              push   ecx
  00423ece: 8b ce                                           mov    ecx,esi
  00423ed0: e8 4b ec ff ff                                  call   0x422b20
  00423ed5: 51                                              push   ecx
  00423ed6: 8d 55 08                                        lea    edx,[ebp+0x8]
  00423ed9: 8b cc                                           mov    ecx,esp
  00423edb: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423ede: 52                                              push   edx
  00423edf: e8 2c ee ff ff                                  call   0x422d10
  00423ee4: 8b ce                                           mov    ecx,esi
  00423ee6: e8 d5 0b 00 00                                  call   0x424ac0
  00423eeb: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00423eee: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00423ef1: 51                                              push   ecx
  00423ef2: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00423ef5: 8b d0                                           mov    edx,eax
  00423ef7: 2b d1                                           sub    edx,ecx
  00423ef9: c1 fa 04                                        sar    edx,0x4
  00423efc: 8b cf                                           mov    ecx,edi
  00423efe: 2b ca                                           sub    ecx,edx
  00423f00: 51                                              push   ecx
  00423f01: 50                                              push   eax
  00423f02: 8b ce                                           mov    ecx,esi
  00423f04: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00423f08: e8 13 02 00 00                                  call   0x424120
  00423f0d: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00423f10: 03 cb                                           add    ecx,ebx
  00423f12: 8d 55 d8                                        lea    edx,[ebp-0x28]
  00423f15: 52                                              push   edx
  00423f16: 51                                              push   ecx
  00423f17: 8b c4                                           mov    eax,esp
  00423f19: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  00423f1c: 57                                              push   edi
  00423f1d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00423f20: 50                                              push   eax
  00423f21: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00423f24: 51                                              push   ecx
  00423f25: 8b ce                                           mov    ecx,esi
  00423f27: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00423f2e: e8 ed eb ff ff                                  call   0x422b20
  00423f33: 8b c8                                           mov    ecx,eax
  00423f35: e8 c6 02 00 00                                  call   0x424200
  00423f3a: 51                                              push   ecx
  00423f3b: 8d 55 08                                        lea    edx,[ebp+0x8]
  00423f3e: 8b cc                                           mov    ecx,esp
  00423f40: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423f43: 52                                              push   edx
  00423f44: e9 b3 00 00 00                                  jmp    0x423ffc
  00423f7b: 50                                              push   eax
  00423f7c: 51                                              push   ecx
  00423f7d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00423f80: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00423f83: 8b cc                                           mov    ecx,esp
  00423f85: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423f88: 50                                              push   eax
  00423f89: e8 82 ed ff ff                                  call   0x422d10
  00423f8e: 51                                              push   ecx
  00423f8f: 8b cc                                           mov    ecx,esp
  00423f91: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423f94: 57                                              push   edi
  00423f95: 51                                              push   ecx
  00423f96: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00423f99: e8 62 02 00 00                                  call   0x424200
  00423f9e: 8b ce                                           mov    ecx,esi
  00423fa0: e8 1b 0b 00 00                                  call   0x424ac0
  00423fa5: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00423fa8: 51                                              push   ecx
  00423fa9: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00423fac: 8b c4                                           mov    eax,esp
  00423fae: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423fb1: 51                                              push   ecx
  00423fb2: 89 10                                           mov    DWORD PTR [eax],edx
  00423fb4: 8b c4                                           mov    eax,esp
  00423fb6: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423fb9: 57                                              push   edi
  00423fba: 50                                              push   eax
  00423fbb: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00423fbe: e8 3d 02 00 00                                  call   0x424200
  00423fc3: 51                                              push   ecx
  00423fc4: 8d 55 08                                        lea    edx,[ebp+0x8]
  00423fc7: 8b cc                                           mov    ecx,esp
  00423fc9: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423fcc: 52                                              push   edx
  00423fcd: e8 3e ed ff ff                                  call   0x422d10
  00423fd2: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00423fd5: 50                                              push   eax
  00423fd6: e8 25 0d 00 00                                  call   0x424d00
  00423fdb: 83 c4 10                                        add    esp,0x10
  00423fde: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00423fe1: 51                                              push   ecx
  00423fe2: 51                                              push   ecx
  00423fe3: 8b d4                                           mov    edx,esp
  00423fe5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423fe8: 57                                              push   edi
  00423fe9: 52                                              push   edx
  00423fea: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00423fed: e8 5e 00 00 00                                  call   0x424050
  00423ff2: 51                                              push   ecx
  00423ff3: 8d 45 08                                        lea    eax,[ebp+0x8]
  00423ff6: 8b cc                                           mov    ecx,esp
  00423ff8: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00423ffb: 50                                              push   eax
  00423ffc: e8 0f ed ff ff                                  call   0x422d10
  00424001: e8 9a 0b 00 00                                  call   0x424ba0
  00424006: 83 c4 0c                                        add    esp,0xc
  00424009: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0042400c: 85 c9                                           test   ecx,ecx
  0042400e: 74 2d                                           je     0x42403d
  00424010: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  00424013: 84 c0                                           test   al,al
  00424015: 74 1c                                           je     0x424033
  00424017: 3c ff                                           cmp    al,0xff
  00424019: 74 18                                           je     0x424033
  0042401b: fe c8                                           dec    al
  0042401d: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00424020: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00424023: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042402a: 5f                                              pop    edi
  0042402b: 5e                                              pop    esi
  0042402c: 5b                                              pop    ebx
  0042402d: 8b e5                                           mov    esp,ebp
  0042402f: 5d                                              pop    ebp
  00424030: c2 0c 00                                        ret    0xc
  00424033: 49                                              dec    ecx
  00424034: 51                                              push   ecx
  00424035: e8 26 e0 01 00                                  call   0x442060
  0042403a: 83 c4 04                                        add    esp,0x4
  0042403d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00424040: 5f                                              pop    edi
  00424041: 5e                                              pop    esi
  00424042: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00424049: 5b                                              pop    ebx
  0042404a: 8b e5                                           mov    esp,ebp
  0042404c: 5d                                              pop    ebp
  0042404d: c2 0c 00                                        ret    0xc
  004240d0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004240d2: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  004240d5: 84 d2                                           test   dl,dl
  004240d7: 53                                              push   ebx
  004240d8: 75 41                                           jne    0x42411b
  004240da: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  004240dd: 8a 5a 15                                        mov    bl,BYTE PTR [edx+0x15]
  004240e0: 84 db                                           test   bl,bl
  004240e2: 75 18                                           jne    0x4240fc
  004240e4: 8b 02                                           mov    eax,DWORD PTR [edx]
  004240e6: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004240e9: 84 db                                           test   bl,bl
  004240eb: 75 0b                                           jne    0x4240f8
  004240ed: 8b d0                                           mov    edx,eax
  004240ef: 8b 02                                           mov    eax,DWORD PTR [edx]
  004240f1: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004240f4: 84 db                                           test   bl,bl
  004240f6: 74 f5                                           je     0x4240ed
  004240f8: 89 11                                           mov    DWORD PTR [ecx],edx
  004240fa: 5b                                              pop    ebx
  004240fb: c3                                              ret
  004240fc: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004240ff: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00424102: 84 d2                                           test   dl,dl
  00424104: 75 13                                           jne    0x424119
  00424106: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00424108: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  0042410b: 75 0c                                           jne    0x424119
  0042410d: 89 01                                           mov    DWORD PTR [ecx],eax
  0042410f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00424112: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00424115: 84 d2                                           test   dl,dl
  00424117: 74 ed                                           je     0x424106
  00424119: 89 01                                           mov    DWORD PTR [ecx],eax
  0042411b: 5b                                              pop    ebx
  0042411c: c3                                              ret
  004248d0: 55                                              push   ebp
  004248d1: 8b ec                                           mov    ebp,esp
  004248d3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004248d6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004248d9: 3b ca                                           cmp    ecx,edx
  004248db: 74 15                                           je     0x4248f2
  004248dd: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004248e0: 56                                              push   esi
  004248e1: 8b 31                                           mov    esi,DWORD PTR [ecx]
  004248e3: 89 30                                           mov    DWORD PTR [eax],esi
  004248e5: 83 c1 04                                        add    ecx,0x4
  004248e8: 83 c0 04                                        add    eax,0x4
  004248eb: 3b ca                                           cmp    ecx,edx
  004248ed: 75 f2                                           jne    0x4248e1
  004248ef: 5e                                              pop    esi
  004248f0: 5d                                              pop    ebp
  004248f1: c3                                              ret
  004248f2: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004248f5: 5d                                              pop    ebp
  004248f6: c3                                              ret
  00424950: 55                                              push   ebp
  00424951: 8b ec                                           mov    ebp,esp
  00424953: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00424956: 3b 4d 0c                                        cmp    ecx,DWORD PTR [ebp+0xc]
  00424959: 0f 84 57 01 00 00                               je     0x424ab6
  0042495f: 53                                              push   ebx
  00424960: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00424963: 56                                              push   esi
  00424964: 57                                              push   edi
  00424965: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042496a: 8b 30                                           mov    esi,DWORD PTR [eax]
  0042496c: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0042496f: 8b f8                                           mov    edi,eax
  00424971: 3b f7                                           cmp    esi,edi
  00424973: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  00424976: 73 05                                           jae    0x42497d
  00424978: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0042497b: 8b fe                                           mov    edi,esi
  0042497d: 3b d9                                           cmp    ebx,ecx
  0042497f: 75 6d                                           jne    0x4249ee
  00424981: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  00424984: 73 0b                                           jae    0x424991
  00424986: 8b cb                                           mov    ecx,ebx
  00424988: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0042498e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00424991: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00424994: 2b c7                                           sub    eax,edi
  00424996: 3b c6                                           cmp    eax,esi
  00424998: 73 02                                           jae    0x42499c
  0042499a: 8b f0                                           mov    esi,eax
  0042499c: 85 f6                                           test   esi,esi
  0042499e: 0f 86 f7 00 00 00                               jbe    0x424a9b
  004249a4: 8b cb                                           mov    ecx,ebx
  004249a6: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004249ac: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  004249af: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004249b2: 2b d6                                           sub    edx,esi
  004249b4: 8d 04 39                                        lea    eax,[ecx+edi*1]
  004249b7: 2b d7                                           sub    edx,edi
  004249b9: 52                                              push   edx
  004249ba: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  004249bd: 51                                              push   ecx
  004249be: 50                                              push   eax
  004249bf: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004249c5: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004249c8: 83 c4 0c                                        add    esp,0xc
  004249cb: 6a 00                                           push   0x0
  004249cd: 2b fe                                           sub    edi,esi
  004249cf: 57                                              push   edi
  004249d0: 8b cb                                           mov    ecx,ebx
  004249d2: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004249d8: 84 c0                                           test   al,al
  004249da: 0f 84 b8 00 00 00                               je     0x424a98
  004249e0: 57                                              push   edi
  004249e1: 8b cb                                           mov    ecx,ebx
  004249e3: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004249e9: e9 aa 00 00 00                                  jmp    0x424a98
  004249ee: 33 f6                                           xor    esi,esi
  004249f0: 3b fe                                           cmp    edi,esi
  004249f2: 76 65                                           jbe    0x424a59
  004249f4: 3b f8                                           cmp    edi,eax
  004249f6: 75 61                                           jne    0x424a59
  004249f8: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004249fb: 3b c6                                           cmp    eax,esi
  004249fd: 75 05                                           jne    0x424a04
  004249ff: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00424a04: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00424a08: 73 4f                                           jae    0x424a59
  00424a0a: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00424a0d: 3b c6                                           cmp    eax,esi
  00424a0f: 74 1f                                           je     0x424a30
  00424a11: 8d 50 ff                                        lea    edx,[eax-0x1]
  00424a14: 8a 02                                           mov    al,BYTE PTR [edx]
  00424a16: 84 c0                                           test   al,al
  00424a18: 74 0a                                           je     0x424a24
  00424a1a: 3c ff                                           cmp    al,0xff
  00424a1c: 74 06                                           je     0x424a24
  00424a1e: fe c8                                           dec    al
  00424a20: 88 02                                           mov    BYTE PTR [edx],al
  00424a22: eb 0c                                           jmp    0x424a30
  00424a24: 52                                              push   edx
  00424a25: e8 36 d6 01 00                                  call   0x442060
  00424a2a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00424a2d: 83 c4 04                                        add    esp,0x4
  00424a30: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00424a33: 89 73 08                                        mov    DWORD PTR [ebx+0x8],esi
  00424a36: 89 73 0c                                        mov    DWORD PTR [ebx+0xc],esi
  00424a39: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00424a3c: 3b c6                                           cmp    eax,esi
  00424a3e: 75 05                                           jne    0x424a45
  00424a40: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00424a45: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00424a48: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00424a4b: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00424a4e: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  00424a51: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00424a54: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00424a57: eb 42                                           jmp    0x424a9b
  00424a59: 6a 01                                           push   0x1
  00424a5b: 57                                              push   edi
  00424a5c: 8b cb                                           mov    ecx,ebx
  00424a5e: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00424a64: 84 c0                                           test   al,al
  00424a66: 74 30                                           je     0x424a98
  00424a68: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00424a6b: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  00424a6e: 85 f6                                           test   esi,esi
  00424a70: 75 06                                           jne    0x424a78
  00424a72: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00424a78: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00424a7b: 8b cf                                           mov    ecx,edi
  00424a7d: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00424a80: 8b d1                                           mov    edx,ecx
  00424a82: c1 e9 02                                        shr    ecx,0x2
  00424a85: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00424a87: 8b ca                                           mov    ecx,edx
  00424a89: 83 e1 03                                        and    ecx,0x3
  00424a8c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00424a8e: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00424a91: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00424a94: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  00424a98: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00424a9b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00424a9e: 83 c1 10                                        add    ecx,0x10
  00424aa1: 83 c3 10                                        add    ebx,0x10
  00424aa4: 3b c8                                           cmp    ecx,eax
  00424aa6: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  00424aa9: 0f 85 b6 fe ff ff                               jne    0x424965
  00424aaf: 5f                                              pop    edi
  00424ab0: 5e                                              pop    esi
  00424ab1: 8b c3                                           mov    eax,ebx
  00424ab3: 5b                                              pop    ebx
  00424ab4: 5d                                              pop    ebp
  00424ab5: c3                                              ret
  00424ab6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00424ab9: 5d                                              pop    ebp
  00424aba: c3                                              ret
  004280e0: 55                                              push   ebp
  004280e1: 8b ec                                           mov    ebp,esp
  004280e3: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004280e6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004280e9: 89 08                                           mov    DWORD PTR [eax],ecx
  004280eb: 5d                                              pop    ebp
  004280ec: c2 04 00                                        ret    0x4
  004281b0: 55                                              push   ebp
  004281b1: 8b ec                                           mov    ebp,esp
  004281b3: 6a ff                                           push   0xffffffff
  004281b5: 68 b9 49 4d 00                                  push   0x4d49b9
  004281ba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004281c0: 50                                              push   eax
  004281c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004281c8: 83 ec 14                                        sub    esp,0x14
  004281cb: 53                                              push   ebx
  004281cc: 56                                              push   esi
  004281cd: 57                                              push   edi
  004281ce: 8b f9                                           mov    edi,ecx
  004281d0: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004281d3: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  004281d6: 85 c0                                           test   eax,eax
  004281d8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004281df: 74 1c                                           je     0x4281fd
  004281e1: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004281e4: 8a 01                                           mov    al,BYTE PTR [ecx]
  004281e6: 84 c0                                           test   al,al
  004281e8: 74 0a                                           je     0x4281f4
  004281ea: 3c ff                                           cmp    al,0xff
  004281ec: 74 06                                           je     0x4281f4
  004281ee: fe c8                                           dec    al
  004281f0: 88 01                                           mov    BYTE PTR [ecx],al
  004281f2: eb 09                                           jmp    0x4281fd
  004281f4: 51                                              push   ecx
  004281f5: e8 66 9e 01 00                                  call   0x442060
  004281fa: 83 c4 04                                        add    esp,0x4
  004281fd: 33 c9                                           xor    ecx,ecx
  004281ff: 89 4f 20                                        mov    DWORD PTR [edi+0x20],ecx
  00428202: 89 4f 24                                        mov    DWORD PTR [edi+0x24],ecx
  00428205: 89 4f 28                                        mov    DWORD PTR [edi+0x28],ecx
  00428208: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  0042820b: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  0042820e: 3b d1                                           cmp    edx,ecx
  00428210: 8d 77 10                                        lea    esi,[edi+0x10]
  00428213: 8b d8                                           mov    ebx,eax
  00428215: 8b 00                                           mov    eax,DWORD PTR [eax]
  00428217: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0042821a: 74 4b                                           je     0x428267
  0042821c: 8d 45 e8                                        lea    eax,[ebp-0x18]
  0042821f: 50                                              push   eax
  00428220: 8b ce                                           mov    ecx,esi
  00428222: e8 b9 f3 ff ff                                  call   0x4275e0
  00428227: 8b c8                                           mov    ecx,eax
  00428229: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042822c: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  0042822e: 75 37                                           jne    0x428267
  00428230: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00428233: 3b d9                                           cmp    ebx,ecx
  00428235: 75 30                                           jne    0x428267
  00428237: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0042823a: 52                                              push   edx
  0042823b: 8b ce                                           mov    ecx,esi
  0042823d: e8 5e 0f 00 00                                  call   0x4291a0
  00428242: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428245: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00428248: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042824b: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00428252: 89 00                                           mov    DWORD PTR [eax],eax
  00428254: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428257: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0042825a: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0042825d: 50                                              push   eax
  0042825e: 8b ce                                           mov    ecx,esi
  00428260: e8 7b f3 ff ff                                  call   0x4275e0
  00428265: eb 25                                           jmp    0x42828c
  00428267: 3b c3                                           cmp    eax,ebx
  00428269: 74 21                                           je     0x42828c
  0042826b: 6a 00                                           push   0x0
  0042826d: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00428270: 51                                              push   ecx
  00428271: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00428274: e8 67 00 00 00                                  call   0x4282e0
  00428279: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042827b: 52                                              push   edx
  0042827c: 8d 45 e0                                        lea    eax,[ebp-0x20]
  0042827f: 50                                              push   eax
  00428280: 8b ce                                           mov    ecx,esi
  00428282: e8 79 f3 ff ff                                  call   0x427600
  00428287: 39 5d f0                                        cmp    DWORD PTR [ebp-0x10],ebx
  0042828a: 75 df                                           jne    0x42826b
  0042828c: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0042828f: 51                                              push   ecx
  00428290: e8 cb 9d 01 00                                  call   0x442060
  00428295: 33 db                                           xor    ebx,ebx
  00428297: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0042829a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042829d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004282a0: 83 c4 04                                        add    esp,0x4
  004282a3: 3b c3                                           cmp    eax,ebx
  004282a5: 74 1c                                           je     0x4282c3
  004282a7: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004282aa: 8a 01                                           mov    al,BYTE PTR [ecx]
  004282ac: 84 c0                                           test   al,al
  004282ae: 74 0a                                           je     0x4282ba
  004282b0: 3c ff                                           cmp    al,0xff
  004282b2: 74 06                                           je     0x4282ba
  004282b4: fe c8                                           dec    al
  004282b6: 88 01                                           mov    BYTE PTR [ecx],al
  004282b8: eb 09                                           jmp    0x4282c3
  004282ba: 51                                              push   ecx
  004282bb: e8 a0 9d 01 00                                  call   0x442060
  004282c0: 83 c4 04                                        add    esp,0x4
  004282c3: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004282c6: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  004282c9: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  004282cc: 89 5f 0c                                        mov    DWORD PTR [edi+0xc],ebx
  004282cf: 5f                                              pop    edi
  004282d0: 5e                                              pop    esi
  004282d1: 5b                                              pop    ebx
  004282d2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004282d9: 8b e5                                           mov    esp,ebp
  004282db: 5d                                              pop    ebp
  004282dc: c3                                              ret
  004286e0: 55                                              push   ebp
  004286e1: 8b ec                                           mov    ebp,esp
  004286e3: 6a ff                                           push   0xffffffff
  004286e5: 68 f9 49 4d 00                                  push   0x4d49f9
  004286ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004286f0: 50                                              push   eax
  004286f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004286f8: 83 ec 34                                        sub    esp,0x34
  004286fb: 53                                              push   ebx
  004286fc: 56                                              push   esi
  004286fd: 57                                              push   edi
  004286fe: 8b f9                                           mov    edi,ecx
  00428700: 81 7f 08 fe ff ff 1f                            cmp    DWORD PTR [edi+0x8],0x1ffffffe
  00428707: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0042870a: 72 57                                           jb     0x428763
  0042870c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  0042870f: 6a 00                                           push   0x0
  00428711: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00428714: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00428717: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042871d: 83 c9 ff                                        or     ecx,0xffffffff
  00428720: 33 c0                                           xor    eax,eax
  00428722: bf a0 06 50 00                                  mov    edi,0x5006a0
  00428727: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00428729: f7 d1                                           not    ecx
  0042872b: 49                                              dec    ecx
  0042872c: 51                                              push   ecx
  0042872d: 68 a0 06 50 00                                  push   0x5006a0
  00428732: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00428735: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0042873b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0042873e: 51                                              push   ecx
  0042873f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00428742: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00428749: e8 32 c9 fd ff                                  call   0x405080
  0042874e: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00428753: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00428756: 52                                              push   edx
  00428757: c7 45 c0 f8 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5f8
  0042875e: e8 f3 95 0a 00                                  call   0x4d1d56
  00428763: 6a 18                                           push   0x18
  00428765: e8 86 98 01 00                                  call   0x441ff0
  0042876a: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0042876d: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00428770: 8b d8                                           mov    ebx,eax
  00428772: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00428775: c6 43 14 00                                     mov    BYTE PTR [ebx+0x14],0x0
  00428779: c6 43 15 00                                     mov    BYTE PTR [ebx+0x15],0x0
  0042877d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00428780: 89 03                                           mov    DWORD PTR [ebx],eax
  00428782: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00428785: 52                                              push   edx
  00428786: 8d 43 0c                                        lea    eax,[ebx+0xc]
  00428789: 50                                              push   eax
  0042878a: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0042878d: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00428790: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00428797: e8 f4 1c 00 00                                  call   0x42a490
  0042879c: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0042879f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004287a2: 83 c4 0c                                        add    esp,0xc
  004287a5: 42                                              inc    edx
  004287a6: 3b f0                                           cmp    esi,eax
  004287a8: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  004287ab: 75 10                                           jne    0x4287bd
  004287ad: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004287b0: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004287b3: 89 19                                           mov    DWORD PTR [ecx],ebx
  004287b5: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004287b8: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  004287bb: eb 22                                           jmp    0x4287df
  004287bd: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  004287c0: 84 c0                                           test   al,al
  004287c2: 74 0d                                           je     0x4287d1
  004287c4: 89 1e                                           mov    DWORD PTR [esi],ebx
  004287c6: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004287c9: 3b 30                                           cmp    esi,DWORD PTR [eax]
  004287cb: 75 12                                           jne    0x4287df
  004287cd: 89 18                                           mov    DWORD PTR [eax],ebx
  004287cf: eb 0e                                           jmp    0x4287df
  004287d1: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004287d4: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004287d7: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  004287da: 75 03                                           jne    0x4287df
  004287dc: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  004287df: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004287e2: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004287e5: 84 d2                                           test   dl,dl
  004287e7: 8b c3                                           mov    eax,ebx
  004287e9: 0f 85 98 01 00 00                               jne    0x428987
  004287ef: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004287f2: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004287f5: 8b 16                                           mov    edx,DWORD PTR [esi]
  004287f7: 3b ca                                           cmp    ecx,edx
  004287f9: 0f 85 c6 00 00 00                               jne    0x4288c5
  004287ff: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00428802: 80 7a 14 00                                     cmp    BYTE PTR [edx+0x14],0x0
  00428806: 75 1d                                           jne    0x428825
  00428808: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  0042880c: c6 42 14 01                                     mov    BYTE PTR [edx+0x14],0x1
  00428810: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00428813: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00428816: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  0042881a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042881d: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00428820: e9 54 01 00 00                                  jmp    0x428979
  00428825: 3b 41 08                                        cmp    eax,DWORD PTR [ecx+0x8]
  00428828: 75 3b                                           jne    0x428865
  0042882a: 8b c1                                           mov    eax,ecx
  0042882c: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042882f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428831: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00428834: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428836: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  0042883a: 75 03                                           jne    0x42883f
  0042883c: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0042883f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00428842: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00428845: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00428848: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0042884b: 75 05                                           jne    0x428852
  0042884d: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00428850: eb 0e                                           jmp    0x428860
  00428852: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00428855: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00428857: 75 04                                           jne    0x42885d
  00428859: 89 0a                                           mov    DWORD PTR [edx],ecx
  0042885b: eb 03                                           jmp    0x428860
  0042885d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00428860: 89 01                                           mov    DWORD PTR [ecx],eax
  00428862: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00428865: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00428868: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  0042886c: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042886f: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00428872: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00428876: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00428879: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0042887c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042887e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00428881: 89 31                                           mov    DWORD PTR [ecx],esi
  00428883: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00428886: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  0042888a: 75 03                                           jne    0x42888f
  0042888c: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0042888f: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00428892: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00428895: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00428898: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0042889b: 75 0b                                           jne    0x4288a8
  0042889d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004288a0: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004288a3: e9 ce 00 00 00                                  jmp    0x428976
  004288a8: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004288ab: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  004288ae: 75 0b                                           jne    0x4288bb
  004288b0: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004288b3: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004288b6: e9 bb 00 00 00                                  jmp    0x428976
  004288bb: 89 16                                           mov    DWORD PTR [esi],edx
  004288bd: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004288c0: e9 b1 00 00 00                                  jmp    0x428976
  004288c5: 80 7a 14 00                                     cmp    BYTE PTR [edx+0x14],0x0
  004288c9: 75 1d                                           jne    0x4288e8
  004288cb: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  004288cf: c6 42 14 01                                     mov    BYTE PTR [edx+0x14],0x1
  004288d3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004288d6: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004288d9: c6 42 14 00                                     mov    BYTE PTR [edx+0x14],0x0
  004288dd: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004288e0: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004288e3: e9 91 00 00 00                                  jmp    0x428979
  004288e8: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  004288ea: 75 3d                                           jne    0x428929
  004288ec: 8b c1                                           mov    eax,ecx
  004288ee: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004288f0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004288f3: 89 10                                           mov    DWORD PTR [eax],edx
  004288f5: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004288f8: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  004288fc: 75 03                                           jne    0x428901
  004288fe: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00428901: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00428904: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00428907: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0042890a: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0042890d: 75 05                                           jne    0x428914
  0042890f: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00428912: eb 0f                                           jmp    0x428923
  00428914: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00428917: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0042891a: 75 05                                           jne    0x428921
  0042891c: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0042891f: eb 02                                           jmp    0x428923
  00428921: 89 0a                                           mov    DWORD PTR [edx],ecx
  00428923: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00428926: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00428929: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042892c: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  00428930: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00428933: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00428936: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  0042893a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042893d: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00428940: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00428943: 8b 32                                           mov    esi,DWORD PTR [edx]
  00428945: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00428948: 8b 32                                           mov    esi,DWORD PTR [edx]
  0042894a: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  0042894e: 75 03                                           jne    0x428953
  00428950: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00428953: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00428956: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00428959: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  0042895c: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0042895f: 75 05                                           jne    0x428966
  00428961: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00428964: eb 0e                                           jmp    0x428974
  00428966: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00428969: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0042896b: 75 04                                           jne    0x428971
  0042896d: 89 16                                           mov    DWORD PTR [esi],edx
  0042896f: eb 03                                           jmp    0x428974
  00428971: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00428974: 89 0a                                           mov    DWORD PTR [edx],ecx
  00428976: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00428979: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042897c: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  0042897f: 84 d2                                           test   dl,dl
  00428981: 0f 84 68 fe ff ff                               je     0x4287ef
  00428987: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0042898a: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0042898d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00428990: c6 40 14 01                                     mov    BYTE PTR [eax+0x14],0x1
  00428994: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428997: 5f                                              pop    edi
  00428998: 89 18                                           mov    DWORD PTR [eax],ebx
  0042899a: 5e                                              pop    esi
  0042899b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004289a2: 5b                                              pop    ebx
  004289a3: 8b e5                                           mov    esp,ebp
  004289a5: 5d                                              pop    ebp
  004289a6: c2 10 00                                        ret    0x10
  00428c80: 55                                              push   ebp
  00428c81: 8b ec                                           mov    ebp,esp
  00428c83: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428c86: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00428c88: 8a 51 49                                        mov    dl,BYTE PTR [ecx+0x49]
  00428c8b: 84 d2                                           test   dl,dl
  00428c8d: 75 0b                                           jne    0x428c9a
  00428c8f: 8b c1                                           mov    eax,ecx
  00428c91: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00428c93: 8a 51 49                                        mov    dl,BYTE PTR [ecx+0x49]
  00428c96: 84 d2                                           test   dl,dl
  00428c98: 74 f5                                           je     0x428c8f
  00428c9a: 5d                                              pop    ebp
  00428c9b: c3                                              ret
  00428e30: 55                                              push   ebp
  00428e31: 8b ec                                           mov    ebp,esp
  00428e33: 56                                              push   esi
  00428e34: 57                                              push   edi
  00428e35: 8b f9                                           mov    edi,ecx
  00428e37: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00428e3a: 85 f6                                           test   esi,esi
  00428e3c: 74 18                                           je     0x428e56
  00428e3e: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00428e41: 2b ce                                           sub    ecx,esi
  00428e43: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  00428e48: f7 e9                                           imul   ecx
  00428e4a: c1 fa 03                                        sar    edx,0x3
  00428e4d: 8b c2                                           mov    eax,edx
  00428e4f: c1 e8 1f                                        shr    eax,0x1f
  00428e52: 03 d0                                           add    edx,eax
  00428e54: 75 04                                           jne    0x428e5a
  00428e56: 33 f6                                           xor    esi,esi
  00428e58: eb 18                                           jmp    0x428e72
  00428e5a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00428e5d: 2b ce                                           sub    ecx,esi
  00428e5f: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  00428e64: f7 e9                                           imul   ecx
  00428e66: c1 fa 03                                        sar    edx,0x3
  00428e69: 8b ca                                           mov    ecx,edx
  00428e6b: c1 e9 1f                                        shr    ecx,0x1f
  00428e6e: 03 d1                                           add    edx,ecx
  00428e70: 8b f2                                           mov    esi,edx
  00428e72: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00428e75: 52                                              push   edx
  00428e76: 6a 01                                           push   0x1
  00428e78: 51                                              push   ecx
  00428e79: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00428e7c: 8b cc                                           mov    ecx,esp
  00428e7e: 50                                              push   eax
  00428e7f: e8 2c 00 00 00                                  call   0x428eb0
  00428e84: 8b cf                                           mov    ecx,edi
  00428e86: e8 d5 08 00 00                                  call   0x429760
  00428e8b: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00428e8e: 8d 0c b6                                        lea    ecx,[esi+esi*4]
  00428e91: 8d 14 4e                                        lea    edx,[esi+ecx*2]
  00428e94: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  00428e97: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428e9a: 5f                                              pop    edi
  00428e9b: 89 08                                           mov    DWORD PTR [eax],ecx
  00428e9d: 5e                                              pop    esi
  00428e9e: 5d                                              pop    ebp
  00428e9f: c2 0c 00                                        ret    0xc
  00429230: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00429232: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00429235: 84 d2                                           test   dl,dl
  00429237: 53                                              push   ebx
  00429238: 74 07                                           je     0x429241
  0042923a: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0042923d: 89 01                                           mov    DWORD PTR [ecx],eax
  0042923f: 5b                                              pop    ebx
  00429240: c3                                              ret
  00429241: 8b 10                                           mov    edx,DWORD PTR [eax]
  00429243: 8a 5a 15                                        mov    bl,BYTE PTR [edx+0x15]
  00429246: 84 db                                           test   bl,bl
  00429248: 75 1a                                           jne    0x429264
  0042924a: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0042924d: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00429250: 84 db                                           test   bl,bl
  00429252: 75 0c                                           jne    0x429260
  00429254: 8b d0                                           mov    edx,eax
  00429256: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00429259: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  0042925c: 84 db                                           test   bl,bl
  0042925e: 74 f4                                           je     0x429254
  00429260: 89 11                                           mov    DWORD PTR [ecx],edx
  00429262: 5b                                              pop    ebx
  00429263: c3                                              ret
  00429264: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00429267: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  0042926a: 84 d2                                           test   dl,dl
  0042926c: 75 1b                                           jne    0x429289
  0042926e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00429270: 3b 10                                           cmp    edx,DWORD PTR [eax]
  00429272: 75 0c                                           jne    0x429280
  00429274: 89 01                                           mov    DWORD PTR [ecx],eax
  00429276: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00429279: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  0042927c: 84 d2                                           test   dl,dl
  0042927e: 74 ee                                           je     0x42926e
  00429280: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00429283: 84 d2                                           test   dl,dl
  00429285: 75 02                                           jne    0x429289
  00429287: 89 01                                           mov    DWORD PTR [ecx],eax
  00429289: 5b                                              pop    ebx
  0042928a: c3                                              ret
  00429710: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00429712: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00429715: 84 d2                                           test   dl,dl
  00429717: 53                                              push   ebx
  00429718: 75 41                                           jne    0x42975b
  0042971a: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0042971d: 8a 5a 49                                        mov    bl,BYTE PTR [edx+0x49]
  00429720: 84 db                                           test   bl,bl
  00429722: 75 18                                           jne    0x42973c
  00429724: 8b 02                                           mov    eax,DWORD PTR [edx]
  00429726: 8a 58 49                                        mov    bl,BYTE PTR [eax+0x49]
  00429729: 84 db                                           test   bl,bl
  0042972b: 75 0b                                           jne    0x429738
  0042972d: 8b d0                                           mov    edx,eax
  0042972f: 8b 02                                           mov    eax,DWORD PTR [edx]
  00429731: 8a 58 49                                        mov    bl,BYTE PTR [eax+0x49]
  00429734: 84 db                                           test   bl,bl
  00429736: 74 f5                                           je     0x42972d
  00429738: 89 11                                           mov    DWORD PTR [ecx],edx
  0042973a: 5b                                              pop    ebx
  0042973b: c3                                              ret
  0042973c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042973f: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00429742: 84 d2                                           test   dl,dl
  00429744: 75 13                                           jne    0x429759
  00429746: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00429748: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  0042974b: 75 0c                                           jne    0x429759
  0042974d: 89 01                                           mov    DWORD PTR [ecx],eax
  0042974f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00429752: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00429755: 84 d2                                           test   dl,dl
  00429757: 74 ed                                           je     0x429746
  00429759: 89 01                                           mov    DWORD PTR [ecx],eax
  0042975b: 5b                                              pop    ebx
  0042975c: c3                                              ret
  0042ec10: 55                                              push   ebp
  0042ec11: 8b ec                                           mov    ebp,esp
  0042ec13: 51                                              push   ecx
  0042ec14: 53                                              push   ebx
  0042ec15: 56                                              push   esi
  0042ec16: 57                                              push   edi
  0042ec17: 6a 34                                           push   0x34
  0042ec19: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0042ec1c: e8 cf 33 01 00                                  call   0x441ff0
  0042ec21: 8b 75 1c                                        mov    esi,DWORD PTR [ebp+0x1c]
  0042ec24: 8b d8                                           mov    ebx,eax
  0042ec26: 33 c0                                           xor    eax,eax
  0042ec28: 89 43 24                                        mov    DWORD PTR [ebx+0x24],eax
  0042ec2b: 89 43 28                                        mov    DWORD PTR [ebx+0x28],eax
  0042ec2e: 8d 46 0c                                        lea    eax,[esi+0xc]
  0042ec31: 50                                              push   eax
  0042ec32: 89 45 1c                                        mov    DWORD PTR [ebp+0x1c],eax
  0042ec35: e8 c6 f8 09 00                                  call   0x4ce500
  0042ec3a: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0042ec3d: 89 43 10                                        mov    DWORD PTR [ebx+0x10],eax
  0042ec40: 8d 78 0c                                        lea    edi,[eax+0xc]
  0042ec43: 8b ce                                           mov    ecx,esi
  0042ec45: 8b 75 18                                        mov    esi,DWORD PTR [ebp+0x18]
  0042ec48: 8b c1                                           mov    eax,ecx
  0042ec4a: c1 e9 02                                        shr    ecx,0x2
  0042ec4d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042ec4f: 8b c8                                           mov    ecx,eax
  0042ec51: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042ec54: 83 e1 03                                        and    ecx,0x3
  0042ec57: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042ec59: 8b cb                                           mov    ecx,ebx
  0042ec5b: 89 11                                           mov    DWORD PTR [ecx],edx
  0042ec5d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0042ec60: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0042ec63: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0042ec66: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0042ec69: 8b 55 20                                        mov    edx,DWORD PTR [ebp+0x20]
  0042ec6c: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  0042ec6f: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  0042ec72: 8b 45 24                                        mov    eax,DWORD PTR [ebp+0x24]
  0042ec75: 83 c4 08                                        add    esp,0x8
  0042ec78: 6a 00                                           push   0x0
  0042ec7a: 89 4b 14                                        mov    DWORD PTR [ebx+0x14],ecx
  0042ec7d: 8b 4d 28                                        mov    ecx,DWORD PTR [ebp+0x28]
  0042ec80: 89 53 18                                        mov    DWORD PTR [ebx+0x18],edx
  0042ec83: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0042ec86: 53                                              push   ebx
  0042ec87: c7 43 1c ff ff ff ff                            mov    DWORD PTR [ebx+0x1c],0xffffffff
  0042ec8e: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  0042ec91: 89 4b 30                                        mov    DWORD PTR [ebx+0x30],ecx
  0042ec94: 8b 42 64                                        mov    eax,DWORD PTR [edx+0x64]
  0042ec97: 6a 00                                           push   0x0
  0042ec99: 50                                              push   eax
  0042ec9a: ff 15 0c e1 4d 00                               call   DWORD PTR ds:0x4de10c
  0042eca0: 5f                                              pop    edi
  0042eca1: 5e                                              pop    esi
  0042eca2: 5b                                              pop    ebx
  0042eca3: 8b e5                                           mov    esp,ebp
  0042eca5: 5d                                              pop    ebp
  0042eca6: c2 24 00                                        ret    0x24
  004308e0: 55                                              push   ebp
  004308e1: 8b ec                                           mov    ebp,esp
  004308e3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004308e6: 8b 49 54                                        mov    ecx,DWORD PTR [ecx+0x54]
  004308e9: 50                                              push   eax
  004308ea: 51                                              push   ecx
  004308eb: ff 15 44 e1 4d 00                               call   DWORD PTR ds:0x4de144
  004308f1: 5d                                              pop    ebp
  004308f2: c2 04 00                                        ret    0x4
  00430900: 55                                              push   ebp
  00430901: 8b ec                                           mov    ebp,esp
  00430903: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00430906: 8b 49 48                                        mov    ecx,DWORD PTR [ecx+0x48]
  00430909: 50                                              push   eax
  0043090a: 51                                              push   ecx
  0043090b: ff 15 44 e1 4d 00                               call   DWORD PTR ds:0x4de144
  00430911: 5d                                              pop    ebp
  00430912: c2 04 00                                        ret    0x4
  00430920: 55                                              push   ebp
  00430921: 8b ec                                           mov    ebp,esp
  00430923: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00430926: 8b 49 44                                        mov    ecx,DWORD PTR [ecx+0x44]
  00430929: 50                                              push   eax
  0043092a: 51                                              push   ecx
  0043092b: ff 15 44 e1 4d 00                               call   DWORD PTR ds:0x4de144
  00430931: 5d                                              pop    ebp
  00430932: c2 04 00                                        ret    0x4
  00430940: 55                                              push   ebp
  00430941: 8b ec                                           mov    ebp,esp
  00430943: 53                                              push   ebx
  00430944: 8b 1d 44 e1 4d 00                               mov    ebx,DWORD PTR ds:0x4de144
  0043094a: 56                                              push   esi
  0043094b: 57                                              push   edi
  0043094c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0043094f: 8b f1                                           mov    esi,ecx
  00430951: 8b 46 4c                                        mov    eax,DWORD PTR [esi+0x4c]
  00430954: 57                                              push   edi
  00430955: 50                                              push   eax
  00430956: ff d3                                           call   ebx
  00430958: 8b 4e 50                                        mov    ecx,DWORD PTR [esi+0x50]
  0043095b: 57                                              push   edi
  0043095c: 51                                              push   ecx
  0043095d: ff d3                                           call   ebx
  0043095f: 5f                                              pop    edi
  00430960: 5e                                              pop    esi
  00430961: 5b                                              pop    ebx
  00430962: 5d                                              pop    ebp
  00430963: c2 04 00                                        ret    0x4
  00430970: 8b 41 44                                        mov    eax,DWORD PTR [ecx+0x44]
  00430973: 50                                              push   eax
  00430974: ff 15 48 e1 4d 00                               call   DWORD PTR ds:0x4de148
  0043097a: c3                                              ret
  00430980: 8b 41 48                                        mov    eax,DWORD PTR [ecx+0x48]
  00430983: 50                                              push   eax
  00430984: ff 15 48 e1 4d 00                               call   DWORD PTR ds:0x4de148
  0043098a: c3                                              ret
  00430990: 8b 41 54                                        mov    eax,DWORD PTR [ecx+0x54]
  00430993: 50                                              push   eax
  00430994: ff 15 48 e1 4d 00                               call   DWORD PTR ds:0x4de148
  0043099a: c3                                              ret
  004309a0: 8b 41 4c                                        mov    eax,DWORD PTR [ecx+0x4c]
  004309a3: 50                                              push   eax
  004309a4: ff 15 48 e1 4d 00                               call   DWORD PTR ds:0x4de148
  004309aa: c3                                              ret
  00431550: 55                                              push   ebp
  00431551: 8b ec                                           mov    ebp,esp
  00431553: 8b c1                                           mov    eax,ecx
  00431555: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00431558: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0043155a: 89 10                                           mov    DWORD PTR [eax],edx
  0043155c: 5d                                              pop    ebp
  0043155d: c2 04 00                                        ret    0x4
  00431920: 55                                              push   ebp
  00431921: 8b ec                                           mov    ebp,esp
  00431923: 6a ff                                           push   0xffffffff
  00431925: 68 49 51 4d 00                                  push   0x4d5149
  0043192a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00431930: 50                                              push   eax
  00431931: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00431938: 83 ec 48                                        sub    esp,0x48
  0043193b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0043193e: 53                                              push   ebx
  0043193f: 56                                              push   esi
  00431940: 8b f1                                           mov    esi,ecx
  00431942: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00431944: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00431947: 89 4d d8                                        mov    DWORD PTR [ebp-0x28],ecx
  0043194a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0043194d: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  00431950: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00431953: 85 c9                                           test   ecx,ecx
  00431955: 89 55 dc                                        mov    DWORD PTR [ebp-0x24],edx
  00431958: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  0043195b: 57                                              push   edi
  0043195c: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0043195f: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  00431962: 75 04                                           jne    0x431968
  00431964: 33 ff                                           xor    edi,edi
  00431966: eb 08                                           jmp    0x431970
  00431968: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  0043196b: 2b f9                                           sub    edi,ecx
  0043196d: c1 ff 04                                        sar    edi,0x4
  00431970: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00431973: 85 db                                           test   ebx,ebx
  00431975: 0f 84 ea 02 00 00                               je     0x431c65
  0043197b: 85 c9                                           test   ecx,ecx
  0043197d: 75 04                                           jne    0x431983
  0043197f: 33 c0                                           xor    eax,eax
  00431981: eb 08                                           jmp    0x43198b
  00431983: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00431986: 2b c1                                           sub    eax,ecx
  00431988: c1 f8 04                                        sar    eax,0x4
  0043198b: ba ff ff ff 0f                                  mov    edx,0xfffffff
  00431990: 2b d0                                           sub    edx,eax
  00431992: 3b d3                                           cmp    edx,ebx
  00431994: 73 2f                                           jae    0x4319c5
  00431996: 68 80 05 50 00                                  push   0x500580
  0043199b: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0043199e: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004319a4: 8d 45 c8                                        lea    eax,[ebp-0x38]
  004319a7: 50                                              push   eax
  004319a8: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004319ab: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004319b2: e8 69 3a fd ff                                  call   0x405420
  004319b7: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004319bc: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004319bf: 51                                              push   ecx
  004319c0: e8 91 03 0a 00                                  call   0x4d1d56
  004319c5: 85 c9                                           test   ecx,ecx
  004319c7: 75 04                                           jne    0x4319cd
  004319c9: 33 c0                                           xor    eax,eax
  004319cb: eb 08                                           jmp    0x4319d5
  004319cd: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004319d0: 2b c1                                           sub    eax,ecx
  004319d2: c1 f8 04                                        sar    eax,0x4
  004319d5: 03 c3                                           add    eax,ebx
  004319d7: 3b f8                                           cmp    edi,eax
  004319d9: 0f 83 42 01 00 00                               jae    0x431b21
  004319df: 8b c7                                           mov    eax,edi
  004319e1: d1 e8                                           shr    eax,1
  004319e3: ba ff ff ff 0f                                  mov    edx,0xfffffff
  004319e8: 2b d0                                           sub    edx,eax
  004319ea: 3b d7                                           cmp    edx,edi
  004319ec: 73 04                                           jae    0x4319f2
  004319ee: 33 ff                                           xor    edi,edi
  004319f0: eb 02                                           jmp    0x4319f4
  004319f2: 03 f8                                           add    edi,eax
  004319f4: 85 c9                                           test   ecx,ecx
  004319f6: 75 04                                           jne    0x4319fc
  004319f8: 33 c0                                           xor    eax,eax
  004319fa: eb 08                                           jmp    0x431a04
  004319fc: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004319ff: 2b c1                                           sub    eax,ecx
  00431a01: c1 f8 04                                        sar    eax,0x4
  00431a04: 03 c3                                           add    eax,ebx
  00431a06: 3b f8                                           cmp    edi,eax
  00431a08: 73 13                                           jae    0x431a1d
  00431a0a: 85 c9                                           test   ecx,ecx
  00431a0c: 75 04                                           jne    0x431a12
  00431a0e: 33 c0                                           xor    eax,eax
  00431a10: eb 08                                           jmp    0x431a1a
  00431a12: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00431a15: 2b c1                                           sub    eax,ecx
  00431a17: c1 f8 04                                        sar    eax,0x4
  00431a1a: 8d 3c 18                                        lea    edi,[eax+ebx*1]
  00431a1d: 8b c7                                           mov    eax,edi
  00431a1f: c1 e0 04                                        shl    eax,0x4
  00431a22: 50                                              push   eax
  00431a23: e8 c8 05 01 00                                  call   0x441ff0
  00431a28: 83 c4 04                                        add    esp,0x4
  00431a2b: 50                                              push   eax
  00431a2c: 51                                              push   ecx
  00431a2d: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00431a30: 8d 55 08                                        lea    edx,[ebp+0x8]
  00431a33: 8b cc                                           mov    ecx,esp
  00431a35: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00431a38: 52                                              push   edx
  00431a39: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00431a3c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00431a43: e8 08 fb ff ff                                  call   0x431550
  00431a48: 51                                              push   ecx
  00431a49: 8b c4                                           mov    eax,esp
  00431a4b: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00431a4e: 50                                              push   eax
  00431a4f: 8b ce                                           mov    ecx,esi
  00431a51: e8 6a f8 ff ff                                  call   0x4312c0
  00431a56: 8b ce                                           mov    ecx,esi
  00431a58: e8 d3 06 00 00                                  call   0x432130
  00431a5d: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00431a60: 51                                              push   ecx
  00431a61: 53                                              push   ebx
  00431a62: 50                                              push   eax
  00431a63: 8b ce                                           mov    ecx,esi
  00431a65: e8 96 02 00 00                                  call   0x431d00
  00431a6a: 50                                              push   eax
  00431a6b: 51                                              push   ecx
  00431a6c: 8b d4                                           mov    edx,esp
  00431a6e: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00431a71: 52                                              push   edx
  00431a72: 8b ce                                           mov    ecx,esi
  00431a74: e8 57 f8 ff ff                                  call   0x4312d0
  00431a79: 51                                              push   ecx
  00431a7a: 8d 45 08                                        lea    eax,[ebp+0x8]
  00431a7d: 8b cc                                           mov    ecx,esp
  00431a7f: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00431a82: 50                                              push   eax
  00431a83: e8 c8 fa ff ff                                  call   0x431550
  00431a88: 8b ce                                           mov    ecx,esi
  00431a8a: e8 a1 06 00 00                                  call   0x432130
  00431a8f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00431a92: 85 c0                                           test   eax,eax
  00431a94: 74 1a                                           je     0x431ab0
  00431a96: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00431a99: 3b c1                                           cmp    eax,ecx
  00431a9b: 74 07                                           je     0x431aa4
  00431a9d: 83 c0 10                                        add    eax,0x10
  00431aa0: 3b c1                                           cmp    eax,ecx
  00431aa2: 75 f9                                           jne    0x431a9d
  00431aa4: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00431aa7: 51                                              push   ecx
  00431aa8: e8 b3 05 01 00                                  call   0x442060
  00431aad: 83 c4 04                                        add    esp,0x4
  00431ab0: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00431ab3: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00431ab6: c1 e7 04                                        shl    edi,0x4
  00431ab9: 03 fa                                           add    edi,edx
  00431abb: 85 c9                                           test   ecx,ecx
  00431abd: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00431ac0: 75 22                                           jne    0x431ae4
  00431ac2: 33 c0                                           xor    eax,eax
  00431ac4: 8b c3                                           mov    eax,ebx
  00431ac6: c1 e0 04                                        shl    eax,0x4
  00431ac9: 03 c2                                           add    eax,edx
  00431acb: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00431ace: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00431ad1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00431ad4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00431adb: 5f                                              pop    edi
  00431adc: 5e                                              pop    esi
  00431add: 5b                                              pop    ebx
  00431ade: 8b e5                                           mov    esp,ebp
  00431ae0: 5d                                              pop    ebp
  00431ae1: c2 0c 00                                        ret    0xc
  00431ae4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00431ae7: 2b c1                                           sub    eax,ecx
  00431ae9: c1 f8 04                                        sar    eax,0x4
  00431aec: 03 c3                                           add    eax,ebx
  00431aee: c1 e0 04                                        shl    eax,0x4
  00431af1: 03 c2                                           add    eax,edx
  00431af3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00431af6: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00431af9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00431afc: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00431b03: 5f                                              pop    edi
  00431b04: 5e                                              pop    esi
  00431b05: 5b                                              pop    ebx
  00431b06: 8b e5                                           mov    esp,ebp
  00431b08: 5d                                              pop    ebp
  00431b09: c2 0c 00                                        ret    0xc
  00431b21: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00431b24: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00431b27: 8b d0                                           mov    edx,eax
  00431b29: 2b d1                                           sub    edx,ecx
  00431b2b: c1 fa 04                                        sar    edx,0x4
  00431b2e: 3b d3                                           cmp    edx,ebx
  00431b30: 0f 83 a1 00 00 00                               jae    0x431bd7
  00431b36: 8b fb                                           mov    edi,ebx
  00431b38: c1 e7 04                                        shl    edi,0x4
  00431b3b: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  00431b3e: 50                                              push   eax
  00431b3f: 51                                              push   ecx
  00431b40: 8b cc                                           mov    ecx,esp
  00431b42: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431b45: 51                                              push   ecx
  00431b46: 8b ce                                           mov    ecx,esi
  00431b48: e8 83 f7 ff ff                                  call   0x4312d0
  00431b4d: 51                                              push   ecx
  00431b4e: 8d 55 08                                        lea    edx,[ebp+0x8]
  00431b51: 8b cc                                           mov    ecx,esp
  00431b53: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431b56: 52                                              push   edx
  00431b57: e8 f4 f9 ff ff                                  call   0x431550
  00431b5c: 8b ce                                           mov    ecx,esi
  00431b5e: e8 cd 05 00 00                                  call   0x432130
  00431b63: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00431b66: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00431b69: 51                                              push   ecx
  00431b6a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00431b6d: 8b d0                                           mov    edx,eax
  00431b6f: 2b d1                                           sub    edx,ecx
  00431b71: c1 fa 04                                        sar    edx,0x4
  00431b74: 8b cb                                           mov    ecx,ebx
  00431b76: 2b ca                                           sub    ecx,edx
  00431b78: 51                                              push   ecx
  00431b79: 50                                              push   eax
  00431b7a: 8b ce                                           mov    ecx,esi
  00431b7c: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00431b83: e8 78 01 00 00                                  call   0x431d00
  00431b88: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00431b8b: 03 cf                                           add    ecx,edi
  00431b8d: 8d 55 d8                                        lea    edx,[ebp-0x28]
  00431b90: 52                                              push   edx
  00431b91: 51                                              push   ecx
  00431b92: 8b c4                                           mov    eax,esp
  00431b94: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431b97: 53                                              push   ebx
  00431b98: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00431b9b: 50                                              push   eax
  00431b9c: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00431b9f: 51                                              push   ecx
  00431ba0: 8b ce                                           mov    ecx,esi
  00431ba2: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00431ba9: e8 22 f7 ff ff                                  call   0x4312d0
  00431bae: 8b c8                                           mov    ecx,eax
  00431bb0: e8 9b 01 00 00                                  call   0x431d50
  00431bb5: 51                                              push   ecx
  00431bb6: 8b cc                                           mov    ecx,esp
  00431bb8: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00431bbb: e9 94 00 00 00                                  jmp    0x431c54
  00431bd7: 50                                              push   eax
  00431bd8: 51                                              push   ecx
  00431bd9: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00431bdc: 8b cc                                           mov    ecx,esp
  00431bde: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431be1: 52                                              push   edx
  00431be2: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00431be5: e8 66 f9 ff ff                                  call   0x431550
  00431bea: 51                                              push   ecx
  00431beb: 8b c4                                           mov    eax,esp
  00431bed: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431bf0: 53                                              push   ebx
  00431bf1: 50                                              push   eax
  00431bf2: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00431bf5: e8 56 01 00 00                                  call   0x431d50
  00431bfa: 8b ce                                           mov    ecx,esi
  00431bfc: e8 2f 05 00 00                                  call   0x432130
  00431c01: 51                                              push   ecx
  00431c02: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00431c05: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431c08: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00431c0b: 8b c4                                           mov    eax,esp
  00431c0d: 51                                              push   ecx
  00431c0e: 8b d4                                           mov    edx,esp
  00431c10: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431c13: 53                                              push   ebx
  00431c14: 89 08                                           mov    DWORD PTR [eax],ecx
  00431c16: 52                                              push   edx
  00431c17: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00431c1a: e8 31 01 00 00                                  call   0x431d50
  00431c1f: 51                                              push   ecx
  00431c20: 8d 45 08                                        lea    eax,[ebp+0x8]
  00431c23: 8b cc                                           mov    ecx,esp
  00431c25: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431c28: 50                                              push   eax
  00431c29: e8 22 f9 ff ff                                  call   0x431550
  00431c2e: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00431c31: 51                                              push   ecx
  00431c32: e8 89 05 00 00                                  call   0x4321c0
  00431c37: 83 c4 10                                        add    esp,0x10
  00431c3a: 8d 55 d8                                        lea    edx,[ebp-0x28]
  00431c3d: 52                                              push   edx
  00431c3e: 51                                              push   ecx
  00431c3f: 8b c4                                           mov    eax,esp
  00431c41: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431c44: 53                                              push   ebx
  00431c45: 50                                              push   eax
  00431c46: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00431c49: e8 32 00 00 00                                  call   0x431c80
  00431c4e: 51                                              push   ecx
  00431c4f: 8b cc                                           mov    ecx,esp
  00431c51: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00431c54: 8d 55 08                                        lea    edx,[ebp+0x8]
  00431c57: 52                                              push   edx
  00431c58: e8 f3 f8 ff ff                                  call   0x431550
  00431c5d: e8 1e 05 00 00                                  call   0x432180
  00431c62: 83 c4 0c                                        add    esp,0xc
  00431c65: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00431c68: 5f                                              pop    edi
  00431c69: 5e                                              pop    esi
  00431c6a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00431c71: 5b                                              pop    ebx
  00431c72: 8b e5                                           mov    esp,ebp
  00431c74: 5d                                              pop    ebp
  00431c75: c2 0c 00                                        ret    0xc
  00433a40: 55                                              push   ebp
  00433a41: 8b ec                                           mov    ebp,esp
  00433a43: 6a ff                                           push   0xffffffff
  00433a45: 68 d9 52 4d 00                                  push   0x4d52d9
  00433a4a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00433a50: 50                                              push   eax
  00433a51: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00433a58: 83 ec 30                                        sub    esp,0x30
  00433a5b: 53                                              push   ebx
  00433a5c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00433a5f: 56                                              push   esi
  00433a60: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  00433a63: 57                                              push   edi
  00433a64: 6a 0c                                           push   0xc
  00433a66: 8b f9                                           mov    edi,ecx
  00433a68: e8 83 e5 00 00                                  call   0x441ff0
  00433a6d: 83 c4 04                                        add    esp,0x4
  00433a70: 85 db                                           test   ebx,ebx
  00433a72: 8b cb                                           mov    ecx,ebx
  00433a74: 75 02                                           jne    0x433a78
  00433a76: 8b c8                                           mov    ecx,eax
  00433a78: 85 f6                                           test   esi,esi
  00433a7a: 89 08                                           mov    DWORD PTR [eax],ecx
  00433a7c: 75 02                                           jne    0x433a80
  00433a7e: 8b f0                                           mov    esi,eax
  00433a80: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  00433a83: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00433a86: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  00433a8b: 2b d1                                           sub    edx,ecx
  00433a8d: 83 fa 01                                        cmp    edx,0x1
  00433a90: 73 50                                           jae    0x433ae2
  00433a92: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  00433a95: 6a 00                                           push   0x0
  00433a97: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00433a9a: 88 45 e0                                        mov    BYTE PTR [ebp-0x20],al
  00433a9d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00433aa3: 83 c9 ff                                        or     ecx,0xffffffff
  00433aa6: 33 c0                                           xor    eax,eax
  00433aa8: bf ec 2a 50 00                                  mov    edi,0x502aec
  00433aad: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00433aaf: f7 d1                                           not    ecx
  00433ab1: 49                                              dec    ecx
  00433ab2: 51                                              push   ecx
  00433ab3: 68 ec 2a 50 00                                  push   0x502aec
  00433ab8: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00433abb: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00433ac1: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00433ac4: 51                                              push   ecx
  00433ac5: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00433ac8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00433acf: e8 4c 19 fd ff                                  call   0x405420
  00433ad4: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00433ad9: 8d 55 c4                                        lea    edx,[ebp-0x3c]
  00433adc: 52                                              push   edx
  00433add: e8 74 e2 09 00                                  call   0x4d1d56
  00433ae2: 41                                              inc    ecx
  00433ae3: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  00433ae6: 8d 48 08                                        lea    ecx,[eax+0x8]
  00433ae9: 85 c9                                           test   ecx,ecx
  00433aeb: 74 07                                           je     0x433af4
  00433aed: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00433af0: 8b 12                                           mov    edx,DWORD PTR [edx]
  00433af2: 89 11                                           mov    DWORD PTR [ecx],edx
  00433af4: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00433af7: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00433afa: 5f                                              pop    edi
  00433afb: 89 01                                           mov    DWORD PTR [ecx],eax
  00433afd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00433b00: 5e                                              pop    esi
  00433b01: 5b                                              pop    ebx
  00433b02: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00433b09: 8b e5                                           mov    esp,ebp
  00433b0b: 5d                                              pop    ebp
  00433b0c: c2 08 00                                        ret    0x8
  00433b10: 55                                              push   ebp
  00433b11: 8b ec                                           mov    ebp,esp
  00433b13: 6a ff                                           push   0xffffffff
  00433b15: 68 06 53 4d 00                                  push   0x4d5306
  00433b1a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00433b20: 50                                              push   eax
  00433b21: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00433b28: 81 ec 20 02 00 00                               sub    esp,0x220
  00433b2e: 53                                              push   ebx
  00433b2f: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00433b35: e8 56 56 02 00                                  call   0x459190
  00433b3a: 68 90 30 50 00                                  push   0x503090
  00433b3f: 33 db                                           xor    ebx,ebx
  00433b41: 68 02 00 00 80                                  push   0x80000002
  00433b46: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00433b4c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00433b4f: e8 bc 56 02 00                                  call   0x459210
  00433b54: 6a 01                                           push   0x1
  00433b56: 68 80 30 50 00                                  push   0x503080
  00433b5b: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00433b61: e8 9a 57 02 00                                  call   0x459300
  00433b66: 3b c3                                           cmp    eax,ebx
  00433b68: 0f 84 fc 00 00 00                               je     0x433c6a
  00433b6e: a0 fc 21 51 00                                  mov    al,ds:0x5121fc
  00433b73: a8 01                                           test   al,0x1
  00433b75: 0f 85 c9 00 00 00                               jne    0x433c44
  00433b7b: 0c 01                                           or     al,0x1
  00433b7d: 56                                              push   esi
  00433b7e: 8d 8d d4 fd ff ff                               lea    ecx,[ebp-0x22c]
  00433b84: a2 fc 21 51 00                                  mov    ds:0x5121fc,al
  00433b89: c7 05 c8 21 51 00 a4 ed 4d 00                   mov    DWORD PTR ds:0x5121c8,0x4deda4
  00433b93: e8 f8 55 02 00                                  call   0x459190
  00433b98: 68 90 30 50 00                                  push   0x503090
  00433b9d: 68 02 00 00 80                                  push   0x80000002
  00433ba2: 8d 8d d4 fd ff ff                               lea    ecx,[ebp-0x22c]
  00433ba8: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00433bac: e8 5f 56 02 00                                  call   0x459210
  00433bb1: 68 10 27 00 00                                  push   0x2710
  00433bb6: 68 6c 30 50 00                                  push   0x50306c
  00433bbb: 8d 8d d4 fd ff ff                               lea    ecx,[ebp-0x22c]
  00433bc1: e8 3a 57 02 00                                  call   0x459300
  00433bc6: 68 cc 21 51 00                                  push   0x5121cc
  00433bcb: a3 e8 21 51 00                                  mov    ds:0x5121e8,eax
  00433bd0: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00433bd6: a1 e8 21 51 00                                  mov    eax,ds:0x5121e8
  00433bdb: 8b f0                                           mov    esi,eax
  00433bdd: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00433be0: c1 e0 02                                        shl    eax,0x2
  00433be3: 50                                              push   eax
  00433be4: 89 1d e4 21 51 00                               mov    DWORD PTR ds:0x5121e4,ebx
  00433bea: 89 1d f0 21 51 00                               mov    DWORD PTR ds:0x5121f0,ebx
  00433bf0: e8 0b a9 09 00                                  call   0x4ce500
  00433bf5: 83 c4 04                                        add    esp,0x4
  00433bf8: 3b c3                                           cmp    eax,ebx
  00433bfa: 74 19                                           je     0x433c15
  00433bfc: 8d 56 ff                                        lea    edx,[esi-0x1]
  00433bff: 3b d3                                           cmp    edx,ebx
  00433c01: 7c 14                                           jl     0x433c17
  00433c03: 8d 48 20                                        lea    ecx,[eax+0x20]
  00433c06: 42                                              inc    edx
  00433c07: c7 01 03 00 00 00                               mov    DWORD PTR [ecx],0x3
  00433c0d: 83 c1 24                                        add    ecx,0x24
  00433c10: 4a                                              dec    edx
  00433c11: 75 f4                                           jne    0x433c07
  00433c13: eb 02                                           jmp    0x433c17
  00433c15: 33 c0                                           xor    eax,eax
  00433c17: 8d 8d d4 fd ff ff                               lea    ecx,[ebp-0x22c]
  00433c1d: a3 ec 21 51 00                                  mov    ds:0x5121ec,eax
  00433c22: 89 1d f4 21 51 00                               mov    DWORD PTR ds:0x5121f4,ebx
  00433c28: 89 1d f8 21 51 00                               mov    DWORD PTR ds:0x5121f8,ebx
  00433c2e: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00433c31: e8 6a 55 02 00                                  call   0x4591a0
  00433c36: 68 d0 41 43 00                                  push   0x4341d0
  00433c3b: e8 cb e0 09 00                                  call   0x4d1d0b
  00433c40: 83 c4 04                                        add    esp,0x4
  00433c43: 5e                                              pop    esi
  00433c44: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00433c4a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00433c51: e8 4a 55 02 00                                  call   0x4591a0
  00433c56: b8 c8 21 51 00                                  mov    eax,0x5121c8
  00433c5b: 5b                                              pop    ebx
  00433c5c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00433c5f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00433c66: 8b e5                                           mov    esp,ebp
  00433c68: 5d                                              pop    ebp
  00433c69: c3                                              ret
  00433c6a: 8a 0d fc 21 51 00                               mov    cl,BYTE PTR ds:0x5121fc
  00433c70: b0 02                                           mov    al,0x2
  00433c72: 84 c8                                           test   al,cl
  00433c74: 75 21                                           jne    0x433c97
  00433c76: 8a d1                                           mov    dl,cl
  00433c78: 0a d0                                           or     dl,al
  00433c7a: 68 c0 41 43 00                                  push   0x4341c0
  00433c7f: 88 15 fc 21 51 00                               mov    BYTE PTR ds:0x5121fc,dl
  00433c85: c7 05 c0 21 51 00 90 ed 4d 00                   mov    DWORD PTR ds:0x5121c0,0x4ded90
  00433c8f: e8 77 e0 09 00                                  call   0x4d1d0b
  00433c94: 83 c4 04                                        add    esp,0x4
  00433c97: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00433c9d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00433ca4: e8 f7 54 02 00                                  call   0x4591a0
  00433ca9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00433cac: b8 c0 21 51 00                                  mov    eax,0x5121c0
  00433cb1: 5b                                              pop    ebx
  00433cb2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00433cb9: 8b e5                                           mov    esp,ebp
  00433cbb: 5d                                              pop    ebp
  00433cbc: c3                                              ret
  00435380: 56                                              push   esi
  00435381: 68 f8 32 50 00                                  push   0x5032f8
  00435386: 6a 00                                           push   0x0
  00435388: 6a 00                                           push   0x0
  0043538a: 8b f1                                           mov    esi,ecx
  0043538c: 6a 00                                           push   0x0
  0043538e: c7 06 c8 ed 4d 00                               mov    DWORD PTR [esi],0x4dedc8
  00435394: ff 15 28 e1 4d 00                               call   DWORD PTR ds:0x4de128
  0043539a: 68 e0 32 50 00                                  push   0x5032e0
  0043539f: 6a 00                                           push   0x0
  004353a1: 6a 00                                           push   0x0
  004353a3: a3 4c 22 51 00                                  mov    ds:0x51224c,eax
  004353a8: ff 15 60 e1 4d 00                               call   DWORD PTR ds:0x4de160
  004353ae: 6a ff                                           push   0xffffffff
  004353b0: 50                                              push   eax
  004353b1: a3 50 22 51 00                                  mov    ds:0x512250,eax
  004353b6: ff 15 1c e1 4d 00                               call   DWORD PTR ds:0x4de11c
  004353bc: 68 c4 32 50 00                                  push   0x5032c4
  004353c1: 68 00 50 00 00                                  push   0x5000
  004353c6: 6a 00                                           push   0x0
  004353c8: 6a 04                                           push   0x4
  004353ca: 6a 00                                           push   0x0
  004353cc: 6a ff                                           push   0xffffffff
  004353ce: ff 15 5c e1 4d 00                               call   DWORD PTR ds:0x4de15c
  004353d4: 68 00 50 00 00                                  push   0x5000
  004353d9: 6a 00                                           push   0x0
  004353db: 6a 00                                           push   0x0
  004353dd: 6a 02                                           push   0x2
  004353df: 50                                              push   eax
  004353e0: a3 48 22 51 00                                  mov    ds:0x512248,eax
  004353e5: ff 15 58 e1 4d 00                               call   DWORD PTR ds:0x4de158
  004353eb: a3 44 22 51 00                                  mov    ds:0x512244,eax
  004353f0: c6 40 04 00                                     mov    BYTE PTR [eax+0x4],0x0
  004353f4: a1 44 22 51 00                                  mov    eax,ds:0x512244
  004353f9: c6 40 05 00                                     mov    BYTE PTR [eax+0x5],0x0
  004353fd: 8b 0d 44 22 51 00                               mov    ecx,DWORD PTR ds:0x512244
  00435403: c7 01 00 00 00 00                               mov    DWORD PTR [ecx],0x0
  00435409: 8b 15 50 22 51 00                               mov    edx,DWORD PTR ds:0x512250
  0043540f: 52                                              push   edx
  00435410: ff 15 54 e1 4d 00                               call   DWORD PTR ds:0x4de154
  00435416: 8b c6                                           mov    eax,esi
  00435418: 5e                                              pop    esi
  00435419: c3                                              ret
  00436190: 55                                              push   ebp
  00436191: 8b ec                                           mov    ebp,esp
  00436193: 6a ff                                           push   0xffffffff
  00436195: 68 f9 54 4d 00                                  push   0x4d54f9
  0043619a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004361a0: 50                                              push   eax
  004361a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004361a8: 83 ec 34                                        sub    esp,0x34
  004361ab: 53                                              push   ebx
  004361ac: 56                                              push   esi
  004361ad: 57                                              push   edi
  004361ae: 8b f9                                           mov    edi,ecx
  004361b0: 81 7f 08 fe ff ff 1f                            cmp    DWORD PTR [edi+0x8],0x1ffffffe
  004361b7: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004361ba: 72 57                                           jb     0x436213
  004361bc: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  004361bf: 6a 00                                           push   0x0
  004361c1: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004361c4: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  004361c7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004361cd: 83 c9 ff                                        or     ecx,0xffffffff
  004361d0: 33 c0                                           xor    eax,eax
  004361d2: bf a0 06 50 00                                  mov    edi,0x5006a0
  004361d7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004361d9: f7 d1                                           not    ecx
  004361db: 49                                              dec    ecx
  004361dc: 51                                              push   ecx
  004361dd: 68 a0 06 50 00                                  push   0x5006a0
  004361e2: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004361e5: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  004361eb: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004361ee: 51                                              push   ecx
  004361ef: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004361f2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004361f9: e8 82 ee fc ff                                  call   0x405080
  004361fe: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00436203: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00436206: 52                                              push   edx
  00436207: c7 45 c0 f8 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5f8
  0043620e: e8 43 bb 09 00                                  call   0x4d1d56
  00436213: 6a 18                                           push   0x18
  00436215: e8 d6 bd 00 00                                  call   0x441ff0
  0043621a: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0043621d: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00436220: 8b d8                                           mov    ebx,eax
  00436222: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00436225: c6 43 14 00                                     mov    BYTE PTR [ebx+0x14],0x0
  00436229: c6 43 15 00                                     mov    BYTE PTR [ebx+0x15],0x0
  0043622d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00436230: 89 03                                           mov    DWORD PTR [ebx],eax
  00436232: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00436235: 52                                              push   edx
  00436236: 8d 43 0c                                        lea    eax,[ebx+0xc]
  00436239: 50                                              push   eax
  0043623a: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0043623d: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00436240: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00436247: e8 04 03 00 00                                  call   0x436550
  0043624c: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0043624f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00436252: 83 c4 0c                                        add    esp,0xc
  00436255: 42                                              inc    edx
  00436256: 3b f0                                           cmp    esi,eax
  00436258: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0043625b: 75 10                                           jne    0x43626d
  0043625d: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00436260: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00436263: 89 19                                           mov    DWORD PTR [ecx],ebx
  00436265: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00436268: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  0043626b: eb 22                                           jmp    0x43628f
  0043626d: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  00436270: 84 c0                                           test   al,al
  00436272: 74 0d                                           je     0x436281
  00436274: 89 1e                                           mov    DWORD PTR [esi],ebx
  00436276: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00436279: 3b 30                                           cmp    esi,DWORD PTR [eax]
  0043627b: 75 12                                           jne    0x43628f
  0043627d: 89 18                                           mov    DWORD PTR [eax],ebx
  0043627f: eb 0e                                           jmp    0x43628f
  00436281: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00436284: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00436287: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  0043628a: 75 03                                           jne    0x43628f
  0043628c: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  0043628f: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00436292: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  00436295: 84 d2                                           test   dl,dl
  00436297: 8b c3                                           mov    eax,ebx
  00436299: 0f 85 98 01 00 00                               jne    0x436437
  0043629f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004362a2: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004362a5: 8b 16                                           mov    edx,DWORD PTR [esi]
  004362a7: 3b ca                                           cmp    ecx,edx
  004362a9: 0f 85 c6 00 00 00                               jne    0x436375
  004362af: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004362b2: 80 7a 14 00                                     cmp    BYTE PTR [edx+0x14],0x0
  004362b6: 75 1d                                           jne    0x4362d5
  004362b8: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  004362bc: c6 42 14 01                                     mov    BYTE PTR [edx+0x14],0x1
  004362c0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004362c3: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004362c6: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  004362ca: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004362cd: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004362d0: e9 54 01 00 00                                  jmp    0x436429
  004362d5: 3b 41 08                                        cmp    eax,DWORD PTR [ecx+0x8]
  004362d8: 75 3b                                           jne    0x436315
  004362da: 8b c1                                           mov    eax,ecx
  004362dc: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004362df: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004362e1: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004362e4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004362e6: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  004362ea: 75 03                                           jne    0x4362ef
  004362ec: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004362ef: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004362f2: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004362f5: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004362f8: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004362fb: 75 05                                           jne    0x436302
  004362fd: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00436300: eb 0e                                           jmp    0x436310
  00436302: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00436305: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00436307: 75 04                                           jne    0x43630d
  00436309: 89 0a                                           mov    DWORD PTR [edx],ecx
  0043630b: eb 03                                           jmp    0x436310
  0043630d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00436310: 89 01                                           mov    DWORD PTR [ecx],eax
  00436312: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00436315: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00436318: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  0043631c: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043631f: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00436322: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00436326: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00436329: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0043632c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0043632e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00436331: 89 31                                           mov    DWORD PTR [ecx],esi
  00436333: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00436336: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  0043633a: 75 03                                           jne    0x43633f
  0043633c: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0043633f: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00436342: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00436345: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00436348: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0043634b: 75 0b                                           jne    0x436358
  0043634d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00436350: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00436353: e9 ce 00 00 00                                  jmp    0x436426
  00436358: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0043635b: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  0043635e: 75 0b                                           jne    0x43636b
  00436360: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00436363: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00436366: e9 bb 00 00 00                                  jmp    0x436426
  0043636b: 89 16                                           mov    DWORD PTR [esi],edx
  0043636d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00436370: e9 b1 00 00 00                                  jmp    0x436426
  00436375: 80 7a 14 00                                     cmp    BYTE PTR [edx+0x14],0x0
  00436379: 75 1d                                           jne    0x436398
  0043637b: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  0043637f: c6 42 14 01                                     mov    BYTE PTR [edx+0x14],0x1
  00436383: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00436386: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00436389: c6 42 14 00                                     mov    BYTE PTR [edx+0x14],0x0
  0043638d: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00436390: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00436393: e9 91 00 00 00                                  jmp    0x436429
  00436398: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  0043639a: 75 3d                                           jne    0x4363d9
  0043639c: 8b c1                                           mov    eax,ecx
  0043639e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004363a0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004363a3: 89 10                                           mov    DWORD PTR [eax],edx
  004363a5: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004363a8: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  004363ac: 75 03                                           jne    0x4363b1
  004363ae: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004363b1: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004363b4: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004363b7: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004363ba: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004363bd: 75 05                                           jne    0x4363c4
  004363bf: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004363c2: eb 0f                                           jmp    0x4363d3
  004363c4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004363c7: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  004363ca: 75 05                                           jne    0x4363d1
  004363cc: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004363cf: eb 02                                           jmp    0x4363d3
  004363d1: 89 0a                                           mov    DWORD PTR [edx],ecx
  004363d3: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004363d6: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004363d9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004363dc: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  004363e0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004363e3: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004363e6: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  004363ea: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004363ed: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004363f0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004363f3: 8b 32                                           mov    esi,DWORD PTR [edx]
  004363f5: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  004363f8: 8b 32                                           mov    esi,DWORD PTR [edx]
  004363fa: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  004363fe: 75 03                                           jne    0x436403
  00436400: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00436403: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00436406: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00436409: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  0043640c: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0043640f: 75 05                                           jne    0x436416
  00436411: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00436414: eb 0e                                           jmp    0x436424
  00436416: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00436419: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0043641b: 75 04                                           jne    0x436421
  0043641d: 89 16                                           mov    DWORD PTR [esi],edx
  0043641f: eb 03                                           jmp    0x436424
  00436421: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00436424: 89 0a                                           mov    DWORD PTR [edx],ecx
  00436426: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00436429: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043642c: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  0043642f: 84 d2                                           test   dl,dl
  00436431: 0f 84 68 fe ff ff                               je     0x43629f
  00436437: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0043643a: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0043643d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00436440: c6 40 14 01                                     mov    BYTE PTR [eax+0x14],0x1
  00436444: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436447: 5f                                              pop    edi
  00436448: 89 18                                           mov    DWORD PTR [eax],ebx
  0043644a: 5e                                              pop    esi
  0043644b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00436452: 5b                                              pop    ebx
  00436453: 8b e5                                           mov    esp,ebp
  00436455: 5d                                              pop    ebp
  00436456: c2 10 00                                        ret    0x10
  004364a0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004364a2: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  004364a5: 84 d2                                           test   dl,dl
  004364a7: 53                                              push   ebx
  004364a8: 74 07                                           je     0x4364b1
  004364aa: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004364ad: 89 01                                           mov    DWORD PTR [ecx],eax
  004364af: 5b                                              pop    ebx
  004364b0: c3                                              ret
  004364b1: 8b 10                                           mov    edx,DWORD PTR [eax]
  004364b3: 8a 5a 15                                        mov    bl,BYTE PTR [edx+0x15]
  004364b6: 84 db                                           test   bl,bl
  004364b8: 75 1a                                           jne    0x4364d4
  004364ba: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004364bd: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004364c0: 84 db                                           test   bl,bl
  004364c2: 75 0c                                           jne    0x4364d0
  004364c4: 8b d0                                           mov    edx,eax
  004364c6: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004364c9: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004364cc: 84 db                                           test   bl,bl
  004364ce: 74 f4                                           je     0x4364c4
  004364d0: 89 11                                           mov    DWORD PTR [ecx],edx
  004364d2: 5b                                              pop    ebx
  004364d3: c3                                              ret
  004364d4: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004364d7: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  004364da: 84 d2                                           test   dl,dl
  004364dc: 75 1b                                           jne    0x4364f9
  004364de: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004364e0: 3b 10                                           cmp    edx,DWORD PTR [eax]
  004364e2: 75 0c                                           jne    0x4364f0
  004364e4: 89 01                                           mov    DWORD PTR [ecx],eax
  004364e6: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004364e9: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  004364ec: 84 d2                                           test   dl,dl
  004364ee: 74 ee                                           je     0x4364de
  004364f0: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  004364f3: 84 d2                                           test   dl,dl
  004364f5: 75 02                                           jne    0x4364f9
  004364f7: 89 01                                           mov    DWORD PTR [ecx],eax
  004364f9: 5b                                              pop    ebx
  004364fa: c3                                              ret
  004365e0: 55                                              push   ebp
  004365e1: 8b ec                                           mov    ebp,esp
  004365e3: 6a ff                                           push   0xffffffff
  004365e5: 68 19 55 4d 00                                  push   0x4d5519
  004365ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004365f0: 50                                              push   eax
  004365f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004365f8: 83 ec 40                                        sub    esp,0x40
  004365fb: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004365fe: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00436601: 53                                              push   ebx
  00436602: 56                                              push   esi
  00436603: 8b f1                                           mov    esi,ecx
  00436605: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00436607: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043660a: 85 c0                                           test   eax,eax
  0043660c: 57                                              push   edi
  0043660d: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00436610: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  00436613: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  00436616: 75 04                                           jne    0x43661c
  00436618: 33 db                                           xor    ebx,ebx
  0043661a: eb 08                                           jmp    0x436624
  0043661c: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  0043661f: 2b d8                                           sub    ebx,eax
  00436621: c1 fb 03                                        sar    ebx,0x3
  00436624: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00436627: 85 ff                                           test   edi,edi
  00436629: 0f 84 ea 02 00 00                               je     0x436919
  0043662f: 85 c0                                           test   eax,eax
  00436631: 75 04                                           jne    0x436637
  00436633: 33 c9                                           xor    ecx,ecx
  00436635: eb 08                                           jmp    0x43663f
  00436637: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0043663a: 2b c8                                           sub    ecx,eax
  0043663c: c1 f9 03                                        sar    ecx,0x3
  0043663f: ba ff ff ff 1f                                  mov    edx,0x1fffffff
  00436644: 2b d1                                           sub    edx,ecx
  00436646: 3b d7                                           cmp    edx,edi
  00436648: 73 2f                                           jae    0x436679
  0043664a: 68 80 05 50 00                                  push   0x500580
  0043664f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00436652: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00436658: 8d 45 d0                                        lea    eax,[ebp-0x30]
  0043665b: 50                                              push   eax
  0043665c: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  0043665f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00436666: e8 b5 ed fc ff                                  call   0x405420
  0043666b: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00436670: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  00436673: 51                                              push   ecx
  00436674: e8 dd b6 09 00                                  call   0x4d1d56
  00436679: 85 c0                                           test   eax,eax
  0043667b: 75 04                                           jne    0x436681
  0043667d: 33 c9                                           xor    ecx,ecx
  0043667f: eb 08                                           jmp    0x436689
  00436681: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00436684: 2b c8                                           sub    ecx,eax
  00436686: c1 f9 03                                        sar    ecx,0x3
  00436689: 03 cf                                           add    ecx,edi
  0043668b: 3b d9                                           cmp    ebx,ecx
  0043668d: 0f 83 3e 01 00 00                               jae    0x4367d1
  00436693: 8b cb                                           mov    ecx,ebx
  00436695: d1 e9                                           shr    ecx,1
  00436697: ba ff ff ff 1f                                  mov    edx,0x1fffffff
  0043669c: 2b d1                                           sub    edx,ecx
  0043669e: 3b d3                                           cmp    edx,ebx
  004366a0: 73 04                                           jae    0x4366a6
  004366a2: 33 db                                           xor    ebx,ebx
  004366a4: eb 02                                           jmp    0x4366a8
  004366a6: 03 d9                                           add    ebx,ecx
  004366a8: 85 c0                                           test   eax,eax
  004366aa: 75 04                                           jne    0x4366b0
  004366ac: 33 c9                                           xor    ecx,ecx
  004366ae: eb 08                                           jmp    0x4366b8
  004366b0: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004366b3: 2b c8                                           sub    ecx,eax
  004366b5: c1 f9 03                                        sar    ecx,0x3
  004366b8: 03 cf                                           add    ecx,edi
  004366ba: 3b d9                                           cmp    ebx,ecx
  004366bc: 73 13                                           jae    0x4366d1
  004366be: 85 c0                                           test   eax,eax
  004366c0: 75 04                                           jne    0x4366c6
  004366c2: 33 c9                                           xor    ecx,ecx
  004366c4: eb 08                                           jmp    0x4366ce
  004366c6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004366c9: 2b c8                                           sub    ecx,eax
  004366cb: c1 f9 03                                        sar    ecx,0x3
  004366ce: 8d 1c 39                                        lea    ebx,[ecx+edi*1]
  004366d1: 8d 04 dd 00 00 00 00                            lea    eax,[ebx*8+0x0]
  004366d8: 50                                              push   eax
  004366d9: e8 12 b9 00 00                                  call   0x441ff0
  004366de: 83 c4 04                                        add    esp,0x4
  004366e1: 50                                              push   eax
  004366e2: 51                                              push   ecx
  004366e3: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004366e6: 8d 55 08                                        lea    edx,[ebp+0x8]
  004366e9: 8b cc                                           mov    ecx,esp
  004366eb: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004366ee: 52                                              push   edx
  004366ef: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004366f2: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004366f9: e8 42 02 00 00                                  call   0x436940
  004366fe: 51                                              push   ecx
  004366ff: 8b c4                                           mov    eax,esp
  00436701: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00436704: 50                                              push   eax
  00436705: 8b ce                                           mov    ecx,esi
  00436707: e8 24 02 00 00                                  call   0x436930
  0043670c: 8b ce                                           mov    ecx,esi
  0043670e: e8 bd 02 00 00                                  call   0x4369d0
  00436713: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00436716: 51                                              push   ecx
  00436717: 57                                              push   edi
  00436718: 50                                              push   eax
  00436719: 8b ce                                           mov    ecx,esi
  0043671b: e8 50 02 00 00                                  call   0x436970
  00436720: 50                                              push   eax
  00436721: 51                                              push   ecx
  00436722: 8b d4                                           mov    edx,esp
  00436724: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00436727: 52                                              push   edx
  00436728: 8b ce                                           mov    ecx,esi
  0043672a: e8 41 fe ff ff                                  call   0x436570
  0043672f: 51                                              push   ecx
  00436730: 8d 45 08                                        lea    eax,[ebp+0x8]
  00436733: 8b cc                                           mov    ecx,esp
  00436735: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00436738: 50                                              push   eax
  00436739: e8 02 02 00 00                                  call   0x436940
  0043673e: 8b ce                                           mov    ecx,esi
  00436740: e8 8b 02 00 00                                  call   0x4369d0
  00436745: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00436748: 85 c0                                           test   eax,eax
  0043674a: 74 1a                                           je     0x436766
  0043674c: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0043674f: 3b c1                                           cmp    eax,ecx
  00436751: 74 07                                           je     0x43675a
  00436753: 83 c0 08                                        add    eax,0x8
  00436756: 3b c1                                           cmp    eax,ecx
  00436758: 75 f9                                           jne    0x436753
  0043675a: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0043675d: 51                                              push   ecx
  0043675e: e8 fd b8 00 00                                  call   0x442060
  00436763: 83 c4 04                                        add    esp,0x4
  00436766: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00436769: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0043676c: 85 c9                                           test   ecx,ecx
  0043676e: 8d 04 da                                        lea    eax,[edx+ebx*8]
  00436771: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00436774: 75 20                                           jne    0x436796
  00436776: 33 c0                                           xor    eax,eax
  00436778: 8b c7                                           mov    eax,edi
  0043677a: 8d 0c c2                                        lea    ecx,[edx+eax*8]
  0043677d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00436780: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00436783: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00436786: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043678d: 5f                                              pop    edi
  0043678e: 5e                                              pop    esi
  0043678f: 5b                                              pop    ebx
  00436790: 8b e5                                           mov    esp,ebp
  00436792: 5d                                              pop    ebp
  00436793: c2 0c 00                                        ret    0xc
  00436796: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00436799: 2b c1                                           sub    eax,ecx
  0043679b: c1 f8 03                                        sar    eax,0x3
  0043679e: 03 c7                                           add    eax,edi
  004367a0: 8d 0c c2                                        lea    ecx,[edx+eax*8]
  004367a3: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004367a6: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004367a9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004367ac: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004367b3: 5f                                              pop    edi
  004367b4: 5e                                              pop    esi
  004367b5: 5b                                              pop    ebx
  004367b6: 8b e5                                           mov    esp,ebp
  004367b8: 5d                                              pop    ebp
  004367b9: c2 0c 00                                        ret    0xc
  004367d1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004367d4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004367d7: 8b d0                                           mov    edx,eax
  004367d9: 2b d1                                           sub    edx,ecx
  004367db: c1 fa 03                                        sar    edx,0x3
  004367de: 3b d7                                           cmp    edx,edi
  004367e0: 0f 83 a5 00 00 00                               jae    0x43688b
  004367e6: 8d 1c fd 00 00 00 00                            lea    ebx,[edi*8+0x0]
  004367ed: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  004367f0: 50                                              push   eax
  004367f1: 51                                              push   ecx
  004367f2: 8b cc                                           mov    ecx,esp
  004367f4: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004367f7: 51                                              push   ecx
  004367f8: 8b ce                                           mov    ecx,esi
  004367fa: e8 71 fd ff ff                                  call   0x436570
  004367ff: 51                                              push   ecx
  00436800: 8d 55 08                                        lea    edx,[ebp+0x8]
  00436803: 8b cc                                           mov    ecx,esp
  00436805: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00436808: 52                                              push   edx
  00436809: e8 32 01 00 00                                  call   0x436940
  0043680e: 8b ce                                           mov    ecx,esi
  00436810: e8 bb 01 00 00                                  call   0x4369d0
  00436815: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00436818: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0043681b: 51                                              push   ecx
  0043681c: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043681f: 8b d0                                           mov    edx,eax
  00436821: 2b d1                                           sub    edx,ecx
  00436823: c1 fa 03                                        sar    edx,0x3
  00436826: 8b cf                                           mov    ecx,edi
  00436828: 2b ca                                           sub    ecx,edx
  0043682a: 51                                              push   ecx
  0043682b: 50                                              push   eax
  0043682c: 8b ce                                           mov    ecx,esi
  0043682e: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00436835: e8 36 01 00 00                                  call   0x436970
  0043683a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0043683d: 03 cb                                           add    ecx,ebx
  0043683f: 8d 55 e0                                        lea    edx,[ebp-0x20]
  00436842: 52                                              push   edx
  00436843: 51                                              push   ecx
  00436844: 8b c4                                           mov    eax,esp
  00436846: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00436849: 57                                              push   edi
  0043684a: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0043684d: 50                                              push   eax
  0043684e: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00436851: 51                                              push   ecx
  00436852: 8b ce                                           mov    ecx,esi
  00436854: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043685b: e8 10 fd ff ff                                  call   0x436570
  00436860: 8b c8                                           mov    ecx,eax
  00436862: e8 49 01 00 00                                  call   0x4369b0
  00436867: 51                                              push   ecx
  00436868: 8d 55 08                                        lea    edx,[ebp+0x8]
  0043686b: 8b cc                                           mov    ecx,esp
  0043686d: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00436870: 52                                              push   edx
  00436871: e9 96 00 00 00                                  jmp    0x43690c
  0043688b: 50                                              push   eax
  0043688c: 51                                              push   ecx
  0043688d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00436890: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00436893: 8b cc                                           mov    ecx,esp
  00436895: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00436898: 50                                              push   eax
  00436899: e8 a2 00 00 00                                  call   0x436940
  0043689e: 51                                              push   ecx
  0043689f: 8b cc                                           mov    ecx,esp
  004368a1: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004368a4: 57                                              push   edi
  004368a5: 51                                              push   ecx
  004368a6: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004368a9: e8 02 01 00 00                                  call   0x4369b0
  004368ae: 8b ce                                           mov    ecx,esi
  004368b0: e8 1b 01 00 00                                  call   0x4369d0
  004368b5: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004368b8: 51                                              push   ecx
  004368b9: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004368bc: 8b c4                                           mov    eax,esp
  004368be: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004368c1: 51                                              push   ecx
  004368c2: 89 10                                           mov    DWORD PTR [eax],edx
  004368c4: 8b c4                                           mov    eax,esp
  004368c6: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004368c9: 57                                              push   edi
  004368ca: 50                                              push   eax
  004368cb: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004368ce: e8 dd 00 00 00                                  call   0x4369b0
  004368d3: 51                                              push   ecx
  004368d4: 8d 55 08                                        lea    edx,[ebp+0x8]
  004368d7: 8b cc                                           mov    ecx,esp
  004368d9: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004368dc: 52                                              push   edx
  004368dd: e8 5e 00 00 00                                  call   0x436940
  004368e2: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004368e5: 50                                              push   eax
  004368e6: e8 55 01 00 00                                  call   0x436a40
  004368eb: 83 c4 10                                        add    esp,0x10
  004368ee: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004368f1: 51                                              push   ecx
  004368f2: 51                                              push   ecx
  004368f3: 8b d4                                           mov    edx,esp
  004368f5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004368f8: 57                                              push   edi
  004368f9: 52                                              push   edx
  004368fa: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004368fd: e8 4e 00 00 00                                  call   0x436950
  00436902: 51                                              push   ecx
  00436903: 8d 45 08                                        lea    eax,[ebp+0x8]
  00436906: 8b cc                                           mov    ecx,esp
  00436908: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0043690b: 50                                              push   eax
  0043690c: e8 2f 00 00 00                                  call   0x436940
  00436911: e8 fa 00 00 00                                  call   0x436a10
  00436916: 83 c4 0c                                        add    esp,0xc
  00436919: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043691c: 5f                                              pop    edi
  0043691d: 5e                                              pop    esi
  0043691e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00436925: 5b                                              pop    ebx
  00436926: 8b e5                                           mov    esp,ebp
  00436928: 5d                                              pop    ebp
  00436929: c2 0c 00                                        ret    0xc
  00436940: 55                                              push   ebp
  00436941: 8b ec                                           mov    ebp,esp
  00436943: 8b c1                                           mov    eax,ecx
  00436945: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00436948: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0043694a: 89 10                                           mov    DWORD PTR [eax],edx
  0043694c: 5d                                              pop    ebp
  0043694d: c2 04 00                                        ret    0x4
  004372c0: 55                                              push   ebp
  004372c1: 8b ec                                           mov    ebp,esp
  004372c3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004372c6: 8b c1                                           mov    eax,ecx
  004372c8: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004372cb: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004372ce: 56                                              push   esi
  004372cf: 57                                              push   edi
  004372d0: 8d 72 08                                        lea    esi,[edx+0x8]
  004372d3: 8d 78 08                                        lea    edi,[eax+0x8]
  004372d6: b9 06 00 00 00                                  mov    ecx,0x6
  004372db: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004372dd: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  004372e0: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  004372e3: 8b 4a 24                                        mov    ecx,DWORD PTR [edx+0x24]
  004372e6: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  004372e9: 8b 4a 28                                        mov    ecx,DWORD PTR [edx+0x28]
  004372ec: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  004372ef: 8b 4a 2c                                        mov    ecx,DWORD PTR [edx+0x2c]
  004372f2: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  004372f5: 8b 4a 30                                        mov    ecx,DWORD PTR [edx+0x30]
  004372f8: 89 48 30                                        mov    DWORD PTR [eax+0x30],ecx
  004372fb: 8a 4a 34                                        mov    cl,BYTE PTR [edx+0x34]
  004372fe: 88 48 34                                        mov    BYTE PTR [eax+0x34],cl
  00437301: 8b 4a 38                                        mov    ecx,DWORD PTR [edx+0x38]
  00437304: 89 48 38                                        mov    DWORD PTR [eax+0x38],ecx
  00437307: 8b 4a 3c                                        mov    ecx,DWORD PTR [edx+0x3c]
  0043730a: 89 48 3c                                        mov    DWORD PTR [eax+0x3c],ecx
  0043730d: 8b 52 40                                        mov    edx,DWORD PTR [edx+0x40]
  00437310: 5f                                              pop    edi
  00437311: 89 50 40                                        mov    DWORD PTR [eax+0x40],edx
  00437314: 5e                                              pop    esi
  00437315: 5d                                              pop    ebp
  00437316: c2 04 00                                        ret    0x4
  00437320: 55                                              push   ebp
  00437321: 8b ec                                           mov    ebp,esp
  00437323: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00437326: 8b c1                                           mov    eax,ecx
  00437328: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0043732b: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0043732e: 56                                              push   esi
  0043732f: 57                                              push   edi
  00437330: 8d 72 08                                        lea    esi,[edx+0x8]
  00437333: 8d 78 08                                        lea    edi,[eax+0x8]
  00437336: b9 06 00 00 00                                  mov    ecx,0x6
  0043733b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043733d: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  00437340: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00437343: 8b 4a 24                                        mov    ecx,DWORD PTR [edx+0x24]
  00437346: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  00437349: 8b 4a 28                                        mov    ecx,DWORD PTR [edx+0x28]
  0043734c: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  0043734f: 8b 4a 2c                                        mov    ecx,DWORD PTR [edx+0x2c]
  00437352: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  00437355: 8b 4a 30                                        mov    ecx,DWORD PTR [edx+0x30]
  00437358: 89 48 30                                        mov    DWORD PTR [eax+0x30],ecx
  0043735b: 8a 4a 34                                        mov    cl,BYTE PTR [edx+0x34]
  0043735e: 88 48 34                                        mov    BYTE PTR [eax+0x34],cl
  00437361: 8b 4a 38                                        mov    ecx,DWORD PTR [edx+0x38]
  00437364: 89 48 38                                        mov    DWORD PTR [eax+0x38],ecx
  00437367: 8b 4a 3c                                        mov    ecx,DWORD PTR [edx+0x3c]
  0043736a: 89 48 3c                                        mov    DWORD PTR [eax+0x3c],ecx
  0043736d: 8b 52 40                                        mov    edx,DWORD PTR [edx+0x40]
  00437370: 5f                                              pop    edi
  00437371: 89 50 40                                        mov    DWORD PTR [eax+0x40],edx
  00437374: 5e                                              pop    esi
  00437375: 5d                                              pop    ebp
  00437376: c2 04 00                                        ret    0x4
  004373e0: 55                                              push   ebp
  004373e1: 8b ec                                           mov    ebp,esp
  004373e3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004373e6: 8b c1                                           mov    eax,ecx
  004373e8: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004373eb: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004373ee: 56                                              push   esi
  004373ef: 57                                              push   edi
  004373f0: 8d 72 08                                        lea    esi,[edx+0x8]
  004373f3: 8d 78 08                                        lea    edi,[eax+0x8]
  004373f6: b9 06 00 00 00                                  mov    ecx,0x6
  004373fb: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004373fd: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  00437400: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00437403: 8b 4a 24                                        mov    ecx,DWORD PTR [edx+0x24]
  00437406: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  00437409: 8b 4a 28                                        mov    ecx,DWORD PTR [edx+0x28]
  0043740c: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  0043740f: 8b 4a 2c                                        mov    ecx,DWORD PTR [edx+0x2c]
  00437412: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  00437415: 8b 4a 30                                        mov    ecx,DWORD PTR [edx+0x30]
  00437418: 89 48 30                                        mov    DWORD PTR [eax+0x30],ecx
  0043741b: 8a 4a 34                                        mov    cl,BYTE PTR [edx+0x34]
  0043741e: 88 48 34                                        mov    BYTE PTR [eax+0x34],cl
  00437421: 8b 4a 38                                        mov    ecx,DWORD PTR [edx+0x38]
  00437424: 89 48 38                                        mov    DWORD PTR [eax+0x38],ecx
  00437427: 8b 4a 3c                                        mov    ecx,DWORD PTR [edx+0x3c]
  0043742a: 89 48 3c                                        mov    DWORD PTR [eax+0x3c],ecx
  0043742d: 8b 52 40                                        mov    edx,DWORD PTR [edx+0x40]
  00437430: 5f                                              pop    edi
  00437431: 89 50 40                                        mov    DWORD PTR [eax+0x40],edx
  00437434: 5e                                              pop    esi
  00437435: 5d                                              pop    ebp
  00437436: c2 04 00                                        ret    0x4
  0043c0d0: 55                                              push   ebp
  0043c0d1: 8b ec                                           mov    ebp,esp
  0043c0d3: 6a ff                                           push   0xffffffff
  0043c0d5: 68 1b 59 4d 00                                  push   0x4d591b
  0043c0da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043c0e0: 50                                              push   eax
  0043c0e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043c0e8: 83 ec 2c                                        sub    esp,0x2c
  0043c0eb: 53                                              push   ebx
  0043c0ec: 56                                              push   esi
  0043c0ed: 8b f1                                           mov    esi,ecx
  0043c0ef: 8b 06                                           mov    eax,DWORD PTR [esi]
  0043c0f1: 57                                              push   edi
  0043c0f2: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0043c0f5: 51                                              push   ecx
  0043c0f6: 8b ce                                           mov    ecx,esi
  0043c0f8: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0043c0fb: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0043c0fe: 52                                              push   edx
  0043c0ff: e8 bc 5d 03 00                                  call   0x471ec0
  0043c104: 33 ff                                           xor    edi,edi
  0043c106: 83 c4 04                                        add    esp,0x4
  0043c109: 3b c7                                           cmp    eax,edi
  0043c10b: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0043c10e: 0f 84 2b 02 00 00                               je     0x43c33f
  0043c114: 68 54 01 00 00                                  push   0x154
  0043c119: e8 d2 5e 00 00                                  call   0x441ff0
  0043c11e: 83 c4 04                                        add    esp,0x4
  0043c121: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0043c124: 3b c7                                           cmp    eax,edi
  0043c126: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0043c129: 74 09                                           je     0x43c134
  0043c12b: 8b c8                                           mov    ecx,eax
  0043c12d: e8 ce 61 ff ff                                  call   0x432300
  0043c132: 8b f8                                           mov    edi,eax
  0043c134: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043c137: 8b 07                                           mov    eax,DWORD PTR [edi]
  0043c139: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0043c13f: 51                                              push   ecx
  0043c140: 83 cb ff                                        or     ebx,0xffffffff
  0043c143: 6a 02                                           push   0x2
  0043c145: 8b cf                                           mov    ecx,edi
  0043c147: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0043c14a: ff 50 18                                        call   DWORD PTR [eax+0x18]
  0043c14d: 85 c0                                           test   eax,eax
  0043c14f: 0f 84 e0 01 00 00                               je     0x43c335
  0043c155: 8b 17                                           mov    edx,DWORD PTR [edi]
  0043c157: 83 ec 0c                                        sub    esp,0xc
  0043c15a: 8b cc                                           mov    ecx,esp
  0043c15c: 89 19                                           mov    DWORD PTR [ecx],ebx
  0043c15e: 8b c3                                           mov    eax,ebx
  0043c160: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0043c163: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0043c166: 8b cf                                           mov    ecx,edi
  0043c168: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0043c16b: ff 92 94 00 00 00                               call   DWORD PTR [edx+0x94]
  0043c171: 8b 17                                           mov    edx,DWORD PTR [edi]
  0043c173: 8b cf                                           mov    ecx,edi
  0043c175: ff 92 c4 00 00 00                               call   DWORD PTR [edx+0xc4]
  0043c17b: 85 c0                                           test   eax,eax
  0043c17d: 74 32                                           je     0x43c1b1
  0043c17f: 8b 17                                           mov    edx,DWORD PTR [edi]
  0043c181: 83 ec 0c                                        sub    esp,0xc
  0043c184: 8b cc                                           mov    ecx,esp
  0043c186: 89 19                                           mov    DWORD PTR [ecx],ebx
  0043c188: 83 c8 ff                                        or     eax,0xffffffff
  0043c18b: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0043c18e: 8b c3                                           mov    eax,ebx
  0043c190: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0043c193: 8b cf                                           mov    ecx,edi
  0043c195: ff 92 20 01 00 00                               call   DWORD PTR [edx+0x120]
  0043c19b: 8b 17                                           mov    edx,DWORD PTR [edi]
  0043c19d: 83 ec 0c                                        sub    esp,0xc
  0043c1a0: 8b cc                                           mov    ecx,esp
  0043c1a2: 89 19                                           mov    DWORD PTR [ecx],ebx
  0043c1a4: 83 c8 ff                                        or     eax,0xffffffff
  0043c1a7: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0043c1aa: 8b c3                                           mov    eax,ebx
  0043c1ac: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0043c1af: eb 64                                           jmp    0x43c215
  0043c1b1: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0043c1b4: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0043c1b7: 8b 5d dc                                        mov    ebx,DWORD PTR [ebp-0x24]
  0043c1ba: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  0043c1bd: 8b ca                                           mov    ecx,edx
  0043c1bf: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0043c1c2: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0043c1c5: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  0043c1c8: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  0043c1cb: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0043c1ce: 8d 58 19                                        lea    ebx,[eax+0x19]
  0043c1d1: 83 c0 e7                                        add    eax,0xffffffe7
  0043c1d4: 83 ec 0c                                        sub    esp,0xc
  0043c1d7: 83 c1 19                                        add    ecx,0x19
  0043c1da: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0043c1dd: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0043c1e0: 8b d4                                           mov    edx,esp
  0043c1e2: 89 1a                                           mov    DWORD PTR [edx],ebx
  0043c1e4: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0043c1e7: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0043c1ea: 83 e8 19                                        sub    eax,0x19
  0043c1ed: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0043c1f0: 8b 07                                           mov    eax,DWORD PTR [edi]
  0043c1f2: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0043c1f5: 8b cf                                           mov    ecx,edi
  0043c1f7: ff 90 20 01 00 00                               call   DWORD PTR [eax+0x120]
  0043c1fd: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0043c200: 8b 17                                           mov    edx,DWORD PTR [edi]
  0043c202: 83 ec 0c                                        sub    esp,0xc
  0043c205: 8b c4                                           mov    eax,esp
  0043c207: 89 08                                           mov    DWORD PTR [eax],ecx
  0043c209: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0043c20c: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0043c20f: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0043c212: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0043c215: 8b cf                                           mov    ecx,edi
  0043c217: ff 92 24 01 00 00                               call   DWORD PTR [edx+0x124]
  0043c21d: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0043c220: c7 45 08 00 00 00 00                            mov    DWORD PTR [ebp+0x8],0x0
  0043c227: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  0043c22a: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0043c22d: 33 c0                                           xor    eax,eax
  0043c22f: 66 8b 86 4e 01 00 00                            mov    ax,WORD PTR [esi+0x14e]
  0043c236: d1 e8                                           shr    eax,1
  0043c238: 8d 14 08                                        lea    edx,[eax+ecx*1]
  0043c23b: 2b c8                                           sub    ecx,eax
  0043c23d: 52                                              push   edx
  0043c23e: 51                                              push   ecx
  0043c23f: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0043c244: e8 57 ce 01 00                                  call   0x4590a0
  0043c249: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0043c24c: 8b d8                                           mov    ebx,eax
  0043c24e: 33 c0                                           xor    eax,eax
  0043c250: 66 8b 86 4e 01 00 00                            mov    ax,WORD PTR [esi+0x14e]
  0043c257: 8d 14 08                                        lea    edx,[eax+ecx*1]
  0043c25a: 2b c8                                           sub    ecx,eax
  0043c25c: 52                                              push   edx
  0043c25d: 51                                              push   ecx
  0043c25e: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0043c263: e8 38 ce 01 00                                  call   0x4590a0
  0043c268: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  0043c26b: 6a 00                                           push   0x0
  0043c26d: 6a 00                                           push   0x0
  0043c26f: 6a 00                                           push   0x0
  0043c271: 83 ec 0c                                        sub    esp,0xc
  0043c274: 8b cc                                           mov    ecx,esp
  0043c276: 89 19                                           mov    DWORD PTR [ecx],ebx
  0043c278: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0043c27b: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0043c27e: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0043c281: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0043c284: e8 c7 2f 07 00                                  call   0x4af250
  0043c289: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043c28c: 41                                              inc    ecx
  0043c28d: 83 f9 05                                        cmp    ecx,0x5
  0043c290: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  0043c293: 7d 06                                           jge    0x43c29b
  0043c295: 85 c0                                           test   eax,eax
  0043c297: 75 91                                           jne    0x43c22a
  0043c299: eb 08                                           jmp    0x43c2a3
  0043c29b: 85 c0                                           test   eax,eax
  0043c29d: 0f 85 92 00 00 00                               jne    0x43c335
  0043c2a3: 56                                              push   esi
  0043c2a4: 8b cf                                           mov    ecx,edi
  0043c2a6: e8 55 69 ff ff                                  call   0x432c00
  0043c2ab: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  0043c2ae: 8b 07                                           mov    eax,DWORD PTR [edi]
  0043c2b0: 83 ec 0c                                        sub    esp,0xc
  0043c2b3: 8b cc                                           mov    ecx,esp
  0043c2b5: 89 19                                           mov    DWORD PTR [ecx],ebx
  0043c2b7: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0043c2ba: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  0043c2bd: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0043c2c0: 8b cf                                           mov    ecx,edi
  0043c2c2: ff 50 20                                        call   DWORD PTR [eax+0x20]
  0043c2c5: 66 ff 86 50 01 00 00                            inc    WORD PTR [esi+0x150]
  0043c2cc: 33 c0                                           xor    eax,eax
  0043c2ce: 66 8b 86 4a 01 00 00                            mov    ax,WORD PTR [esi+0x14a]
  0043c2d5: 33 c9                                           xor    ecx,ecx
  0043c2d7: 66 8b 8e 48 01 00 00                            mov    cx,WORD PTR [esi+0x148]
  0043c2de: 50                                              push   eax
  0043c2df: 51                                              push   ecx
  0043c2e0: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0043c2e5: e8 b6 cd 01 00                                  call   0x4590a0
  0043c2ea: 8d 14 80                                        lea    edx,[eax+eax*4]
  0043c2ed: c1 e2 02                                        shl    edx,0x2
  0043c2f0: 89 96 54 01 00 00                               mov    DWORD PTR [esi+0x154],edx
  0043c2f6: e8 95 5f 03 00                                  call   0x472290
  0043c2fb: 8b 9e 54 01 00 00                               mov    ebx,DWORD PTR [esi+0x154]
  0043c301: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0043c304: 6a 01                                           push   0x1
  0043c306: 03 d8                                           add    ebx,eax
  0043c308: 57                                              push   edi
  0043c309: 89 9e 54 01 00 00                               mov    DWORD PTR [esi+0x154],ebx
  0043c30f: e8 ac 43 07 00                                  call   0x4b06c0
  0043c314: 84 c0                                           test   al,al
  0043c316: 75 27                                           jne    0x43c33f
  0043c318: 8b 07                                           mov    eax,DWORD PTR [edi]
  0043c31a: 8b cf                                           mov    ecx,edi
  0043c31c: ff 90 c4 01 00 00                               call   DWORD PTR [eax+0x1c4]
  0043c322: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043c325: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043c32c: 5f                                              pop    edi
  0043c32d: 5e                                              pop    esi
  0043c32e: 5b                                              pop    ebx
  0043c32f: 8b e5                                           mov    esp,ebp
  0043c331: 5d                                              pop    ebp
  0043c332: c2 04 00                                        ret    0x4
  0043c335: 8b 17                                           mov    edx,DWORD PTR [edi]
  0043c337: 8b cf                                           mov    ecx,edi
  0043c339: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0043c33f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043c342: 5f                                              pop    edi
  0043c343: 5e                                              pop    esi
  0043c344: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043c34b: 5b                                              pop    ebx
  0043c34c: 8b e5                                           mov    esp,ebp
  0043c34e: 5d                                              pop    ebp
  0043c34f: c2 04 00                                        ret    0x4
  0043df20: e9 1b 3b 09 00                                  jmp    0x4d1a40
  004450e0: 56                                              push   esi
  004450e1: 8b f1                                           mov    esi,ecx
  004450e3: 8d 46 04                                        lea    eax,[esi+0x4]
  004450e6: 50                                              push   eax
  004450e7: 6a 00                                           push   0x0
  004450e9: 6a 00                                           push   0x0
  004450eb: 68 d0 27 44 00                                  push   0x4427d0
  004450f0: 6a 00                                           push   0x0
  004450f2: 6a 00                                           push   0x0
  004450f4: c6 46 08 00                                     mov    BYTE PTR [esi+0x8],0x0
  004450f8: ff 15 5c e3 4d 00                               call   DWORD PTR ds:0x4de35c
  004450fe: 89 06                                           mov    DWORD PTR [esi],eax
  00445100: 83 c4 18                                        add    esp,0x18
  00445103: 8b c6                                           mov    eax,esi
  00445105: 5e                                              pop    esi
  00445106: c3                                              ret
  004487b0: a1 9c 42 51 00                                  mov    eax,ds:0x51429c
  004487b5: 68 10 51 50 00                                  push   0x505110
  004487ba: 50                                              push   eax
  004487bb: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  004487c1: 83 c4 08                                        add    esp,0x8
  004487c4: f7 d8                                           neg    eax
  004487c6: 1b c0                                           sbb    eax,eax
  004487c8: 40                                              inc    eax
  004487c9: c3                                              ret
  0044db20: 83 c1 08                                        add    ecx,0x8
  0044db23: e9 38 bc fb ff                                  jmp    0x409760
  00450be0: 6a 06                                           push   0x6
  00450be2: e8 29 11 02 00                                  call   0x471d10
  00450be7: 83 c4 04                                        add    esp,0x4
  00450bea: 85 c0                                           test   eax,eax
  00450bec: 74 32                                           je     0x450c20
  00450bee: 6a 06                                           push   0x6
  00450bf0: e8 1b 11 02 00                                  call   0x471d10
  00450bf5: 83 c4 04                                        add    esp,0x4
  00450bf8: 8b c8                                           mov    ecx,eax
  00450bfa: e8 e1 de 07 00                                  call   0x4ceae0
  00450bff: a8 04                                           test   al,0x4
  00450c01: 74 1d                                           je     0x450c20
  00450c03: 56                                              push   esi
  00450c04: be fc 46 51 00                                  mov    esi,0x5146fc
  00450c09: 8b 06                                           mov    eax,DWORD PTR [esi]
  00450c0b: 50                                              push   eax
  00450c0c: e8 7f fe ff ff                                  call   0x450a90
  00450c11: 83 c6 04                                        add    esi,0x4
  00450c14: 83 c4 04                                        add    esp,0x4
  00450c17: 81 fe 1c 4a 51 00                               cmp    esi,0x514a1c
  00450c1d: 75 ea                                           jne    0x450c09
  00450c1f: 5e                                              pop    esi
  00450c20: c3                                              ret
  00451880: a1 d8 46 51 00                                  mov    eax,ds:0x5146d8
  00451885: 56                                              push   esi
  00451886: b9 d8 46 51 00                                  mov    ecx,0x5146d8
  0045188b: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0045188e: 8b 15 d8 46 51 00                               mov    edx,DWORD PTR ds:0x5146d8
  00451894: 8b 35 28 4a 51 00                               mov    esi,DWORD PTR ds:0x514a28
  0045189a: b9 d8 46 51 00                                  mov    ecx,0x5146d8
  0045189f: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004518a2: 8b c6                                           mov    eax,esi
  004518a4: 5e                                              pop    esi
  004518a5: c3                                              ret
  004595d0: 55                                              push   ebp
  004595d1: 8b ec                                           mov    ebp,esp
  004595d3: 83 ec 08                                        sub    esp,0x8
  004595d6: 50                                              push   eax
  004595d7: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  004595da: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004595dd: 58                                              pop    eax
  004595de: e8 1d ac fd ff                                  call   0x434200
  004595e3: 8b 10                                           mov    edx,DWORD PTR [eax]
  004595e5: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004595e8: 51                                              push   ecx
  004595e9: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004595ec: 68 10 4d 51 00                                  push   0x514d10
  004595f1: 51                                              push   ecx
  004595f2: 8b c8                                           mov    ecx,eax
  004595f4: ff 12                                           call   DWORD PTR [edx]
  004595f6: 68 18 4d 51 00                                  push   0x514d18
  004595fb: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00459601: e8 fa ab fd ff                                  call   0x434200
  00459606: 8b 10                                           mov    edx,DWORD PTR [eax]
  00459608: 68 14 4d 51 00                                  push   0x514d14
  0045960d: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00459610: 51                                              push   ecx
  00459611: 8b c8                                           mov    ecx,eax
  00459613: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00459616: a0 b8 42 51 00                                  mov    al,ds:0x5142b8
  0045961b: 84 c0                                           test   al,al
  0045961d: 75 08                                           jne    0x459627
  0045961f: 6a 6f                                           push   0x6f
  00459621: ff 15 40 e3 4d 00                               call   DWORD PTR ds:0x4de340
  00459627: 8a 45 14                                        mov    al,BYTE PTR [ebp+0x14]
  0045962a: 84 c0                                           test   al,al
  0045962c: 75 33                                           jne    0x459661
  0045962e: 6a ff                                           push   0xffffffff
  00459630: ff 15 60 e4 4d 00                               call   DWORD PTR ds:0x4de460
  00459636: a0 30 4d 51 00                                  mov    al,ds:0x514d30
  0045963b: 84 c0                                           test   al,al
  0045963d: 74 22                                           je     0x459661
  0045963f: e8 bc ab fd ff                                  call   0x434200
  00459644: 8b 10                                           mov    edx,DWORD PTR [eax]
  00459646: 68 14 4d 51 00                                  push   0x514d14
  0045964b: 8b c8                                           mov    ecx,eax
  0045964d: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00459650: 68 18 4d 51 00                                  push   0x514d18
  00459655: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  0045965b: 32 c0                                           xor    al,al
  0045965d: 8b e5                                           mov    esp,ebp
  0045965f: 5d                                              pop    ebp
  00459660: c3                                              ret
  00459661: 6a 04                                           push   0x4
  00459663: e8 08 01 03 00                                  call   0x489770
  00459668: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045966b: 83 c4 04                                        add    esp,0x4
  0045966e: c6 05 30 4d 51 00 01                            mov    BYTE PTR ds:0x514d30,0x1
  00459675: a3 f4 4c 51 00                                  mov    ds:0x514cf4,eax
  0045967a: e8 11 8c 01 00                                  call   0x472290
  0045967f: 8a 4d 0c                                        mov    cl,BYTE PTR [ebp+0xc]
  00459682: 8a 55 10                                        mov    dl,BYTE PTR [ebp+0x10]
  00459685: a3 f0 4c 51 00                                  mov    ds:0x514cf0,eax
  0045968a: 88 0d f8 4c 51 00                               mov    BYTE PTR ds:0x514cf8,cl
  00459690: 88 15 f9 4c 51 00                               mov    BYTE PTR ds:0x514cf9,dl
  00459696: e8 65 ab fd ff                                  call   0x434200
  0045969b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045969d: 68 14 4d 51 00                                  push   0x514d14
  004596a2: 8b c8                                           mov    ecx,eax
  004596a4: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004596a7: 68 18 4d 51 00                                  push   0x514d18
  004596ac: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  004596b2: b0 01                                           mov    al,0x1
  004596b4: 8b e5                                           mov    esp,ebp
  004596b6: 5d                                              pop    ebp
  004596b7: c3                                              ret
  00462e40: c2 08 00                                        ret    0x8
  00463de0: 55                                              push   ebp
  00463de1: 8b ec                                           mov    ebp,esp
  00463de3: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00463de6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00463de9: 3b c8                                           cmp    ecx,eax
  00463deb: 76 04                                           jbe    0x463df1
  00463ded: 33 c0                                           xor    eax,eax
  00463def: 5d                                              pop    ebp
  00463df0: c3                                              ret
  00463df1: 2b c1                                           sub    eax,ecx
  00463df3: 5d                                              pop    ebp
  00463df4: c3                                              ret
  00471520: 8b 41 24                                        mov    eax,DWORD PTR [ecx+0x24]
  00471523: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00471526: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  0047152d: c6 41 34 08                                     mov    BYTE PTR [ecx+0x34],0x8
  00471531: c3                                              ret
  00486c30: 55                                              push   ebp
  00486c31: 8b ec                                           mov    ebp,esp
  00486c33: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00486c36: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00486c39: 89 08                                           mov    DWORD PTR [eax],ecx
  00486c3b: 5d                                              pop    ebp
  00486c3c: c2 04 00                                        ret    0x4
  00486ca0: 55                                              push   ebp
  00486ca1: 8b ec                                           mov    ebp,esp
  00486ca3: 56                                              push   esi
  00486ca4: 57                                              push   edi
  00486ca5: 8b f9                                           mov    edi,ecx
  00486ca7: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00486caa: 85 c0                                           test   eax,eax
  00486cac: 74 07                                           je     0x486cb5
  00486cae: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00486cb1: 2b c8                                           sub    ecx,eax
  00486cb3: 75 04                                           jne    0x486cb9
  00486cb5: 33 f6                                           xor    esi,esi
  00486cb7: eb 05                                           jmp    0x486cbe
  00486cb9: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00486cbc: 2b f0                                           sub    esi,eax
  00486cbe: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00486cc1: 52                                              push   edx
  00486cc2: 6a 01                                           push   0x1
  00486cc4: 51                                              push   ecx
  00486cc5: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00486cc8: 8b cc                                           mov    ecx,esp
  00486cca: 50                                              push   eax
  00486ccb: e8 60 03 00 00                                  call   0x487030
  00486cd0: 8b cf                                           mov    ecx,edi
  00486cd2: e8 19 00 00 00                                  call   0x486cf0
  00486cd7: 03 77 04                                        add    esi,DWORD PTR [edi+0x4]
  00486cda: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00486cdd: 5f                                              pop    edi
  00486cde: 89 30                                           mov    DWORD PTR [eax],esi
  00486ce0: 5e                                              pop    esi
  00486ce1: 5d                                              pop    ebp
  00486ce2: c2 0c 00                                        ret    0xc
  0048dc50: 83 c1 08                                        add    ecx,0x8
  0048dc53: e9 08 bb f7 ff                                  jmp    0x409760
  0048f1d0: 83 c1 08                                        add    ecx,0x8
  0048f1d3: e9 68 28 04 00                                  jmp    0x4d1a40
  004ce430: ff 25 d8 e3 4d 00                               jmp    DWORD PTR ds:0x4de3d8
  004ce460: ff 25 b4 e3 4d 00                               jmp    DWORD PTR ds:0x4de3b4
  004ce466: ff 25 b8 e3 4d 00                               jmp    DWORD PTR ds:0x4de3b8
  004ce46c: ff 25 e4 e3 4d 00                               jmp    DWORD PTR ds:0x4de3e4
  004ce47e: ff 25 bc e3 4d 00                               jmp    DWORD PTR ds:0x4de3bc
  004ce484: ff 25 d4 e3 4d 00                               jmp    DWORD PTR ds:0x4de3d4
  004cf850: 55                                              push   ebp
  004cf851: 8b ec                                           mov    ebp,esp
  004cf853: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004cf856: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004cf859: 3b ca                                           cmp    ecx,edx
  004cf85b: 74 15                                           je     0x4cf872
  004cf85d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004cf860: 56                                              push   esi
  004cf861: 8b 31                                           mov    esi,DWORD PTR [ecx]
  004cf863: 89 30                                           mov    DWORD PTR [eax],esi
  004cf865: 83 c1 04                                        add    ecx,0x4
  004cf868: 83 c0 04                                        add    eax,0x4
  004cf86b: 3b ca                                           cmp    ecx,edx
  004cf86d: 75 f2                                           jne    0x4cf861
  004cf86f: 5e                                              pop    esi
  004cf870: 5d                                              pop    ebp
  004cf871: c3                                              ret
  004cf872: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004cf875: 5d                                              pop    ebp
  004cf876: c3                                              ret
  004cf880: 55                                              push   ebp
  004cf881: 8b ec                                           mov    ebp,esp
  004cf883: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004cf886: 85 c9                                           test   ecx,ecx
  004cf888: 76 12                                           jbe    0x4cf89c
  004cf88a: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004cf88d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004cf890: 56                                              push   esi
  004cf891: 8b 32                                           mov    esi,DWORD PTR [edx]
  004cf893: 89 30                                           mov    DWORD PTR [eax],esi
  004cf895: 83 c0 04                                        add    eax,0x4
  004cf898: 49                                              dec    ecx
  004cf899: 75 f6                                           jne    0x4cf891
  004cf89b: 5e                                              pop    esi
  004cf89c: 5d                                              pop    ebp
  004cf89d: c3                                              ret
  004cf8a0: 56                                              push   esi
  004cf8a1: 6a 00                                           push   0x0
  004cf8a3: 8b f1                                           mov    esi,ecx
  004cf8a5: ff 15 78 e3 4d 00                               call   DWORD PTR ds:0x4de378
  004cf8ab: 50                                              push   eax
  004cf8ac: ff 15 dc e2 4d 00                               call   DWORD PTR ds:0x4de2dc
  004cf8b2: 83 c4 08                                        add    esp,0x8
  004cf8b5: 8b c6                                           mov    eax,esi
  004cf8b7: 5e                                              pop    esi
  004cf8b8: c3                                              ret
  004cf8c0: c3                                              ret
  004cf9d0: 55                                              push   ebp
  004cf9d1: 8b ec                                           mov    ebp,esp
  004cf9d3: 81 ec e0 00 00 00                               sub    esp,0xe0
  004cf9d9: 53                                              push   ebx
  004cf9da: 56                                              push   esi
  004cf9db: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004cf9de: 85 f6                                           test   esi,esi
  004cf9e0: 57                                              push   edi
  004cf9e1: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004cf9e4: 0f 84 bb 01 00 00                               je     0x4cfba5
  004cf9ea: 83 c9 ff                                        or     ecx,0xffffffff
  004cf9ed: 33 c0                                           xor    eax,eax
  004cf9ef: 8b fe                                           mov    edi,esi
  004cf9f1: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cf9f3: f7 d1                                           not    ecx
  004cf9f5: 49                                              dec    ecx
  004cf9f6: 83 f9 1e                                        cmp    ecx,0x1e
  004cf9f9: 0f 85 a6 01 00 00                               jne    0x4cfba5
  004cf9ff: 80 7e 15 2d                                     cmp    BYTE PTR [esi+0x15],0x2d
  004cfa03: 0f 85 9c 01 00 00                               jne    0x4cfba5
  004cfa09: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004cfa0c: 83 c9 ff                                        or     ecx,0xffffffff
  004cfa0f: 33 c0                                           xor    eax,eax
  004cfa11: 8b fa                                           mov    edi,edx
  004cfa13: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cfa15: f7 d1                                           not    ecx
  004cfa17: 49                                              dec    ecx
  004cfa18: 51                                              push   ecx
  004cfa19: 56                                              push   esi
  004cfa1a: 52                                              push   edx
  004cfa1b: ff 15 ac e3 4d 00                               call   DWORD PTR ds:0x4de3ac
  004cfa21: 83 c4 0c                                        add    esp,0xc
  004cfa24: 85 c0                                           test   eax,eax
  004cfa26: 0f 85 79 01 00 00                               jne    0x4cfba5
  004cfa2c: 6a 04                                           push   0x4
  004cfa2e: 8d 46 04                                        lea    eax,[esi+0x4]
  004cfa31: 50                                              push   eax
  004cfa32: 8d 8d 20 ff ff ff                               lea    ecx,[ebp-0xe0]
  004cfa38: 51                                              push   ecx
  004cfa39: ff 15 d0 e2 4d 00                               call   DWORD PTR ds:0x4de2d0
  004cfa3f: 8b 1d 14 e3 4d 00                               mov    ebx,DWORD PTR ds:0x4de314
  004cfa45: 8d 95 20 ff ff ff                               lea    edx,[ebp-0xe0]
  004cfa4b: 52                                              push   edx
  004cfa4c: c6 85 24 ff ff ff 00                            mov    BYTE PTR [ebp-0xdc],0x0
  004cfa53: ff d3                                           call   ebx
  004cfa55: 8b f8                                           mov    edi,eax
  004cfa57: 6a 02                                           push   0x2
  004cfa59: 8d 46 08                                        lea    eax,[esi+0x8]
  004cfa5c: 50                                              push   eax
  004cfa5d: 8d 8d 20 ff ff ff                               lea    ecx,[ebp-0xe0]
  004cfa63: 51                                              push   ecx
  004cfa64: ff 15 d0 e2 4d 00                               call   DWORD PTR ds:0x4de2d0
  004cfa6a: 8d 95 20 ff ff ff                               lea    edx,[ebp-0xe0]
  004cfa70: 52                                              push   edx
  004cfa71: c6 85 22 ff ff ff 00                            mov    BYTE PTR [ebp-0xde],0x0
  004cfa78: ff d3                                           call   ebx
  004cfa7a: 83 c4 20                                        add    esp,0x20
  004cfa7d: 66 85 ff                                        test   di,di
  004cfa80: 8b d8                                           mov    ebx,eax
  004cfa82: 74 38                                           je     0x4cfabc
  004cfa84: 66 85 db                                        test   bx,bx
  004cfa87: 74 33                                           je     0x4cfabc
  004cfa89: 8d 45 c0                                        lea    eax,[ebp-0x40]
  004cfa8c: 50                                              push   eax
  004cfa8d: ff 15 e4 e0 4d 00                               call   DWORD PTR ds:0x4de0e4
  004cfa93: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  004cfa96: 0f bf cf                                        movsx  ecx,di
  004cfa99: 25 ff ff 00 00                                  and    eax,0xffff
  004cfa9e: 3b c1                                           cmp    eax,ecx
  004cfaa0: 0f 8f ff 00 00 00                               jg     0x4cfba5
  004cfaa6: 75 14                                           jne    0x4cfabc
  004cfaa8: 8b 4d c2                                        mov    ecx,DWORD PTR [ebp-0x3e]
  004cfaab: 0f bf d3                                        movsx  edx,bx
  004cfaae: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004cfab4: 3b ca                                           cmp    ecx,edx
  004cfab6: 0f 8f e9 00 00 00                               jg     0x4cfba5
  004cfabc: 6a 09                                           push   0x9
  004cfabe: 8d 46 16                                        lea    eax,[esi+0x16]
  004cfac1: 50                                              push   eax
  004cfac2: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004cfac5: 51                                              push   ecx
  004cfac6: ff 15 d0 e2 4d 00                               call   DWORD PTR ds:0x4de2d0
  004cfacc: 83 c4 0c                                        add    esp,0xc
  004cfacf: 8d 55 10                                        lea    edx,[ebp+0x10]
  004cfad2: 52                                              push   edx
  004cfad3: 8d 45 b0                                        lea    eax,[ebp-0x50]
  004cfad6: 50                                              push   eax
  004cfad7: c6 45 f9 00                                     mov    BYTE PTR [ebp-0x7],0x0
  004cfadb: c7 45 10 10 00 00 00                            mov    DWORD PTR [ebp+0x10],0x10
  004cfae2: ff 15 a4 e1 4d 00                               call   DWORD PTR ds:0x4de1a4
  004cfae8: 85 c0                                           test   eax,eax
  004cfaea: 0f 84 b5 00 00 00                               je     0x4cfba5
  004cfaf0: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004cfaf3: 51                                              push   ecx
  004cfaf4: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004cfaf7: e8 24 02 00 00                                  call   0x4cfd20
  004cfafc: 85 c0                                           test   eax,eax
  004cfafe: 0f 84 a1 00 00 00                               je     0x4cfba5
  004cfb04: 33 c0                                           xor    eax,eax
  004cfb06: b9 07 00 00 00                                  mov    ecx,0x7
  004cfb0b: 8d 7d d0                                        lea    edi,[ebp-0x30]
  004cfb0e: f3 ab                                           rep stos DWORD PTR es:[edi],eax
  004cfb10: 66 ab                                           stos   WORD PTR es:[edi],ax
  004cfb12: aa                                              stos   BYTE PTR es:[edi],al
  004cfb13: 8b d6                                           mov    edx,esi
  004cfb15: 8b 02                                           mov    eax,DWORD PTR [edx]
  004cfb17: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004cfb1a: 89 45 d0                                        mov    DWORD PTR [ebp-0x30],eax
  004cfb1d: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004cfb20: 89 45 d8                                        mov    DWORD PTR [ebp-0x28],eax
  004cfb23: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004cfb26: 50                                              push   eax
  004cfb27: 89 4d d4                                        mov    DWORD PTR [ebp-0x2c],ecx
  004cfb2a: 66 8b 4a 0c                                     mov    cx,WORD PTR [edx+0xc]
  004cfb2e: 8d 55 f0                                        lea    edx,[ebp-0x10]
  004cfb31: 52                                              push   edx
  004cfb32: 66 89 4d dc                                     mov    WORD PTR [ebp-0x24],cx
  004cfb36: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004cfb39: 51                                              push   ecx
  004cfb3a: 8d 55 b0                                        lea    edx,[ebp-0x50]
  004cfb3d: 52                                              push   edx
  004cfb3e: 50                                              push   eax
  004cfb3f: 8d 85 20 ff ff ff                               lea    eax,[ebp-0xe0]
  004cfb45: 68 98 09 51 00                                  push   0x510998
  004cfb4a: 50                                              push   eax
  004cfb4b: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004cfb51: 8d 8d 20 ff ff ff                               lea    ecx,[ebp-0xe0]
  004cfb57: 51                                              push   ecx
  004cfb58: ff 15 a8 e3 4d 00                               call   DWORD PTR ds:0x4de3a8
  004cfb5e: 83 c9 ff                                        or     ecx,0xffffffff
  004cfb61: 33 c0                                           xor    eax,eax
  004cfb63: 8d bd 20 ff ff ff                               lea    edi,[ebp-0xe0]
  004cfb69: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cfb6b: f7 d1                                           not    ecx
  004cfb6d: 49                                              dec    ecx
  004cfb6e: 51                                              push   ecx
  004cfb6f: 8d 95 20 ff ff ff                               lea    edx,[ebp-0xe0]
  004cfb75: 52                                              push   edx
  004cfb76: e8 85 1e 00 00                                  call   0x4d1a00
  004cfb7b: 33 d2                                           xor    edx,edx
  004cfb7d: b9 40 42 0f 00                                  mov    ecx,0xf4240
  004cfb82: f7 f1                                           div    ecx
  004cfb84: 83 c6 0f                                        add    esi,0xf
  004cfb87: 56                                              push   esi
  004cfb88: 8b fa                                           mov    edi,edx
  004cfb8a: ff 15 d4 e2 4d 00                               call   DWORD PTR ds:0x4de2d4
  004cfb90: 83 c4 2c                                        add    esp,0x2c
  004cfb93: 33 d2                                           xor    edx,edx
  004cfb95: 3b f8                                           cmp    edi,eax
  004cfb97: 0f 94 c2                                        sete   dl
  004cfb9a: 5f                                              pop    edi
  004cfb9b: 5e                                              pop    esi
  004cfb9c: 5b                                              pop    ebx
  004cfb9d: 8b c2                                           mov    eax,edx
  004cfb9f: 8b e5                                           mov    esp,ebp
  004cfba1: 5d                                              pop    ebp
  004cfba2: c2 0c 00                                        ret    0xc
  004cfba5: 5f                                              pop    edi
  004cfba6: 5e                                              pop    esi
  004cfba7: 33 c0                                           xor    eax,eax
  004cfba9: 5b                                              pop    ebx
  004cfbaa: 8b e5                                           mov    esp,ebp
  004cfbac: 5d                                              pop    ebp
  004cfbad: c2 0c 00                                        ret    0xc
  004cfbb0: 55                                              push   ebp
  004cfbb1: 8b ec                                           mov    ebp,esp
  004cfbb3: 53                                              push   ebx
  004cfbb4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004cfbb7: 85 db                                           test   ebx,ebx
  004cfbb9: 75 08                                           jne    0x4cfbc3
  004cfbbb: 66 33 c0                                        xor    ax,ax
  004cfbbe: 5b                                              pop    ebx
  004cfbbf: 5d                                              pop    ebp
  004cfbc0: c2 04 00                                        ret    0x4
  004cfbc3: 57                                              push   edi
  004cfbc4: 83 c9 ff                                        or     ecx,0xffffffff
  004cfbc7: 33 c0                                           xor    eax,eax
  004cfbc9: 8b fb                                           mov    edi,ebx
  004cfbcb: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cfbcd: f7 d1                                           not    ecx
  004cfbcf: 49                                              dec    ecx
  004cfbd0: 83 f9 1e                                        cmp    ecx,0x1e
  004cfbd3: 5f                                              pop    edi
  004cfbd4: 74 08                                           je     0x4cfbde
  004cfbd6: 66 33 c0                                        xor    ax,ax
  004cfbd9: 5b                                              pop    ebx
  004cfbda: 5d                                              pop    ebp
  004cfbdb: c2 04 00                                        ret    0x4
  004cfbde: 33 c0                                           xor    eax,eax
  004cfbe0: 8a 43 0a                                        mov    al,BYTE PTR [ebx+0xa]
  004cfbe3: 56                                              push   esi
  004cfbe4: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004cfbe7: 50                                              push   eax
  004cfbe8: e8 53 00 00 00                                  call   0x4cfc40
  004cfbed: 33 c9                                           xor    ecx,ecx
  004cfbef: 8a 4b 0b                                        mov    cl,BYTE PTR [ebx+0xb]
  004cfbf2: 66 0f b6 f0                                     movzx  si,al
  004cfbf6: 51                                              push   ecx
  004cfbf7: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004cfbfa: c1 e6 0c                                        shl    esi,0xc
  004cfbfd: e8 3e 00 00 00                                  call   0x4cfc40
  004cfc02: 33 d2                                           xor    edx,edx
  004cfc04: 8a f0                                           mov    dh,al
  004cfc06: 33 c0                                           xor    eax,eax
  004cfc08: 8a 43 0c                                        mov    al,BYTE PTR [ebx+0xc]
  004cfc0b: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004cfc0e: 0b f2                                           or     esi,edx
  004cfc10: 50                                              push   eax
  004cfc11: e8 2a 00 00 00                                  call   0x4cfc40
  004cfc16: 66 33 c9                                        xor    cx,cx
  004cfc19: 8a c8                                           mov    cl,al
  004cfc1b: 33 d2                                           xor    edx,edx
  004cfc1d: 8a 53 0d                                        mov    dl,BYTE PTR [ebx+0xd]
  004cfc20: c1 e1 04                                        shl    ecx,0x4
  004cfc23: 0b f1                                           or     esi,ecx
  004cfc25: 52                                              push   edx
  004cfc26: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004cfc29: e8 12 00 00 00                                  call   0x4cfc40
  004cfc2e: 66 0f b6 c0                                     movzx  ax,al
  004cfc32: 0b c6                                           or     eax,esi
  004cfc34: 5e                                              pop    esi
  004cfc35: 5b                                              pop    ebx
  004cfc36: 5d                                              pop    ebp
  004cfc37: c2 04 00                                        ret    0x4
  004d1640: 8b c1                                           mov    eax,ecx
  004d1642: c7 00 9c 04 4e 00                               mov    DWORD PTR [eax],0x4e049c
  004d1648: c7 40 0c 00 00 00 00                            mov    DWORD PTR [eax+0xc],0x0
  004d164f: c3                                              ret
  004d1680: c7 01 9c 04 4e 00                               mov    DWORD PTR [ecx],0x4e049c
  004d1686: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  004d1689: 85 c9                                           test   ecx,ecx
  004d168b: 74 07                                           je     0x4d1694
  004d168d: 51                                              push   ecx
  004d168e: ff 15 3c e0 4d 00                               call   DWORD PTR ds:0x4de03c
  004d1694: c3                                              ret
  004d16f0: 55                                              push   ebp
  004d16f1: 8b ec                                           mov    ebp,esp
  004d16f3: 53                                              push   ebx
  004d16f4: 56                                              push   esi
  004d16f5: 8b f1                                           mov    esi,ecx
  004d16f7: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  004d16fa: 85 c0                                           test   eax,eax
  004d16fc: 57                                              push   edi
  004d16fd: 8d 7e 0c                                        lea    edi,[esi+0xc]
  004d1700: 74 07                                           je     0x4d1709
  004d1702: 50                                              push   eax
  004d1703: ff 15 3c e0 4d 00                               call   DWORD PTR ds:0x4de03c
  004d1709: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004d170c: 57                                              push   edi
  004d170d: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004d1710: 68 3f 00 0f 00                                  push   0xf003f
  004d1715: 6a 00                                           push   0x0
  004d1717: 57                                              push   edi
  004d1718: 53                                              push   ebx
  004d1719: ff 15 34 e0 4d 00                               call   DWORD PTR ds:0x4de034
  004d171f: 33 c9                                           xor    ecx,ecx
  004d1721: 85 c0                                           test   eax,eax
  004d1723: 0f 94 c1                                        sete   cl
  004d1726: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004d1729: 5f                                              pop    edi
  004d172a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004d172d: 5e                                              pop    esi
  004d172e: 5b                                              pop    ebx
  004d172f: 8b c1                                           mov    eax,ecx
  004d1731: 5d                                              pop    ebp
  004d1732: c2 08 00                                        ret    0x8
  004d1790: 55                                              push   ebp
  004d1791: 8b ec                                           mov    ebp,esp
  004d1793: 51                                              push   ecx
  004d1794: 56                                              push   esi
  004d1795: 8d 71 10                                        lea    esi,[ecx+0x10]
  004d1798: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  004d179b: 8d 45 fc                                        lea    eax,[ebp-0x4]
  004d179e: 50                                              push   eax
  004d179f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004d17a2: 56                                              push   esi
  004d17a3: 8d 55 08                                        lea    edx,[ebp+0x8]
  004d17a6: 52                                              push   edx
  004d17a7: 6a 00                                           push   0x0
  004d17a9: 50                                              push   eax
  004d17aa: 51                                              push   ecx
  004d17ab: c7 45 fc fa 00 00 00                            mov    DWORD PTR [ebp-0x4],0xfa
  004d17b2: c6 06 00                                        mov    BYTE PTR [esi],0x0
  004d17b5: ff 15 00 e0 4d 00                               call   DWORD PTR ds:0x4de000
  004d17bb: 85 c0                                           test   eax,eax
  004d17bd: 74 0b                                           je     0x4d17ca
  004d17bf: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004d17c2: 52                                              push   edx
  004d17c3: 56                                              push   esi
  004d17c4: ff 15 24 e1 4d 00                               call   DWORD PTR ds:0x4de124
  004d17ca: 8b c6                                           mov    eax,esi
  004d17cc: 5e                                              pop    esi
  004d17cd: 8b e5                                           mov    esp,ebp
  004d17cf: 5d                                              pop    ebp
  004d17d0: c2 08 00                                        ret    0x8
  004d1a6a: ff 25 6c e2 4d 00                               jmp    DWORD PTR ds:0x4de26c
  004d1a70: ff 25 68 e2 4d 00                               jmp    DWORD PTR ds:0x4de268
  004d1cdf: 83 3d 28 57 56 00 ff                            cmp    DWORD PTR ds:0x565728,0xffffffff
  004d1ce6: 75 0c                                           jne    0x4d1cf4
  004d1ce8: ff 74 24 04                                     push   DWORD PTR [esp+0x4]
  004d1cec: ff 15 c0 e2 4d 00                               call   DWORD PTR ds:0x4de2c0
  004d1cf2: 59                                              pop    ecx
  004d1cf3: c3                                              ret
  004d1cf4: 68 24 57 56 00                                  push   0x565724
  004d1cf9: 68 28 57 56 00                                  push   0x565728
  004d1cfe: ff 74 24 0c                                     push   DWORD PTR [esp+0xc]
  004d1d02: e8 c1 04 00 00                                  call   0x4d21c8
  004d1d07: 83 c4 0c                                        add    esp,0xc
  004d1d0a: c3                                              ret
  004d1d56: ff 25 68 e3 4d 00                               jmp    DWORD PTR ds:0x4de368
