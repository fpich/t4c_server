; PASSE 100, Dernière génération de cibles directes et bilan des tables indirectes
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 6464 distinct instructions; 128 graph entry points

  00427a50: 55                                              push   ebp
  00427a51: 8b ec                                           mov    ebp,esp
  00427a53: 6a ff                                           push   0xffffffff
  00427a55: 68 86 49 4d 00                                  push   0x4d4986
  00427a5a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00427a60: 50                                              push   eax
  00427a61: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00427a68: 83 ec 48                                        sub    esp,0x48
  00427a6b: 53                                              push   ebx
  00427a6c: 56                                              push   esi
  00427a6d: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00427a70: 8a 46 49                                        mov    al,BYTE PTR [esi+0x49]
  00427a73: 84 c0                                           test   al,al
  00427a75: 8b d9                                           mov    ebx,ecx
  00427a77: 57                                              push   edi
  00427a78: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  00427a7b: 74 57                                           je     0x427ad4
  00427a7d: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00427a80: 6a 00                                           push   0x0
  00427a82: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00427a85: 88 45 c8                                        mov    BYTE PTR [ebp-0x38],al
  00427a88: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00427a8e: 83 c9 ff                                        or     ecx,0xffffffff
  00427a91: 33 c0                                           xor    eax,eax
  00427a93: bf 40 05 50 00                                  mov    edi,0x500540
  00427a98: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00427a9a: f7 d1                                           not    ecx
  00427a9c: 49                                              dec    ecx
  00427a9d: 51                                              push   ecx
  00427a9e: 68 40 05 50 00                                  push   0x500540
  00427aa3: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00427aa6: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00427aac: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00427aaf: 51                                              push   ecx
  00427ab0: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00427ab3: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00427aba: e8 c1 d5 fd ff                                  call   0x405080
  00427abf: 68 18 0a 4e 00                                  push   0x4e0a18
  00427ac4: 8d 55 ac                                        lea    edx,[ebp-0x54]
  00427ac7: 52                                              push   edx
  00427ac8: c7 45 ac e0 e5 4d 00                            mov    DWORD PTR [ebp-0x54],0x4de5e0
  00427acf: e8 82 a2 0a 00                                  call   0x4d1d56
  00427ad4: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00427ad7: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00427ada: e8 31 1c 00 00                                  call   0x429710
  00427adf: 8b 16                                           mov    edx,DWORD PTR [esi]
  00427ae1: 8a 42 49                                        mov    al,BYTE PTR [edx+0x49]
  00427ae4: 84 c0                                           test   al,al
  00427ae6: 74 05                                           je     0x427aed
  00427ae8: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  00427aeb: eb 2b                                           jmp    0x427b18
  00427aed: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00427af0: 8a 41 49                                        mov    al,BYTE PTR [ecx+0x49]
  00427af3: 84 c0                                           test   al,al
  00427af5: 74 04                                           je     0x427afb
  00427af7: 8b fa                                           mov    edi,edx
  00427af9: eb 1d                                           jmp    0x427b18
  00427afb: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00427afd: 80 78 49 00                                     cmp    BYTE PTR [eax+0x49],0x0
  00427b01: 75 0a                                           jne    0x427b0d
  00427b03: 8b c8                                           mov    ecx,eax
  00427b05: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00427b07: 80 78 49 00                                     cmp    BYTE PTR [eax+0x49],0x0
  00427b0b: 74 f6                                           je     0x427b03
  00427b0d: 3b ce                                           cmp    ecx,esi
  00427b0f: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  00427b12: 0f 85 88 00 00 00                               jne    0x427ba0
  00427b18: 8a 4f 49                                        mov    cl,BYTE PTR [edi+0x49]
  00427b1b: 84 c9                                           test   cl,cl
  00427b1d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00427b20: 75 03                                           jne    0x427b25
  00427b22: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00427b25: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00427b28: 39 71 04                                        cmp    DWORD PTR [ecx+0x4],esi
  00427b2b: 75 05                                           jne    0x427b32
  00427b2d: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00427b30: eb 0b                                           jmp    0x427b3d
  00427b32: 39 30                                           cmp    DWORD PTR [eax],esi
  00427b34: 75 04                                           jne    0x427b3a
  00427b36: 89 38                                           mov    DWORD PTR [eax],edi
  00427b38: eb 03                                           jmp    0x427b3d
  00427b3a: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  00427b3d: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  00427b40: 39 33                                           cmp    DWORD PTR [ebx],esi
  00427b42: 75 24                                           jne    0x427b68
  00427b44: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00427b47: 8a 51 49                                        mov    dl,BYTE PTR [ecx+0x49]
  00427b4a: 84 d2                                           test   dl,dl
  00427b4c: 74 04                                           je     0x427b52
  00427b4e: 89 03                                           mov    DWORD PTR [ebx],eax
  00427b50: eb 16                                           jmp    0x427b68
  00427b52: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00427b54: 80 79 49 00                                     cmp    BYTE PTR [ecx+0x49],0x0
  00427b58: 8b d7                                           mov    edx,edi
  00427b5a: 75 0a                                           jne    0x427b66
  00427b5c: 8b d1                                           mov    edx,ecx
  00427b5e: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00427b60: 80 79 49 00                                     cmp    BYTE PTR [ecx+0x49],0x0
  00427b64: 74 f6                                           je     0x427b5c
  00427b66: 89 13                                           mov    DWORD PTR [ebx],edx
  00427b68: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00427b6b: 8b 5a 04                                        mov    ebx,DWORD PTR [edx+0x4]
  00427b6e: 39 73 08                                        cmp    DWORD PTR [ebx+0x8],esi
  00427b71: 0f 85 81 00 00 00                               jne    0x427bf8
  00427b77: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00427b79: 8a 51 49                                        mov    dl,BYTE PTR [ecx+0x49]
  00427b7c: 84 d2                                           test   dl,dl
  00427b7e: 74 05                                           je     0x427b85
  00427b80: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00427b83: eb 73                                           jmp    0x427bf8
  00427b85: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00427b88: 80 79 49 00                                     cmp    BYTE PTR [ecx+0x49],0x0
  00427b8c: 8b d7                                           mov    edx,edi
  00427b8e: 75 0b                                           jne    0x427b9b
  00427b90: 8b d1                                           mov    edx,ecx
  00427b92: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  00427b95: 80 79 49 00                                     cmp    BYTE PTR [ecx+0x49],0x0
  00427b99: 74 f5                                           je     0x427b90
  00427b9b: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00427b9e: eb 58                                           jmp    0x427bf8
  00427ba0: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427ba3: 8b 16                                           mov    edx,DWORD PTR [esi]
  00427ba5: 89 11                                           mov    DWORD PTR [ecx],edx
  00427ba7: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  00427baa: 75 04                                           jne    0x427bb0
  00427bac: 8b c1                                           mov    eax,ecx
  00427bae: eb 1b                                           jmp    0x427bcb
  00427bb0: 8a 57 49                                        mov    dl,BYTE PTR [edi+0x49]
  00427bb3: 84 d2                                           test   dl,dl
  00427bb5: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00427bb8: 75 03                                           jne    0x427bbd
  00427bba: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00427bbd: 89 38                                           mov    DWORD PTR [eax],edi
  00427bbf: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00427bc2: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00427bc5: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00427bc8: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427bcb: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00427bce: 39 72 04                                        cmp    DWORD PTR [edx+0x4],esi
  00427bd1: 75 05                                           jne    0x427bd8
  00427bd3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427bd6: eb 0e                                           jmp    0x427be6
  00427bd8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00427bdb: 39 32                                           cmp    DWORD PTR [edx],esi
  00427bdd: 75 04                                           jne    0x427be3
  00427bdf: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427be1: eb 03                                           jmp    0x427be6
  00427be3: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427be6: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00427be9: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427bec: 8a 5e 48                                        mov    bl,BYTE PTR [esi+0x48]
  00427bef: 8a 51 48                                        mov    dl,BYTE PTR [ecx+0x48]
  00427bf2: 88 59 48                                        mov    BYTE PTR [ecx+0x48],bl
  00427bf5: 88 56 48                                        mov    BYTE PTR [esi+0x48],dl
  00427bf8: 80 7e 48 01                                     cmp    BYTE PTR [esi+0x48],0x1
  00427bfc: 0f 85 7a 02 00 00                               jne    0x427e7c
  00427c02: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00427c05: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00427c08: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  00427c0b: 0f 84 67 02 00 00                               je     0x427e78
  00427c11: 80 7f 48 01                                     cmp    BYTE PTR [edi+0x48],0x1
  00427c15: 0f 85 5d 02 00 00                               jne    0x427e78
  00427c1b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00427c1d: 3b f9                                           cmp    edi,ecx
  00427c1f: 75 78                                           jne    0x427c99
  00427c21: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00427c24: 8a 51 48                                        mov    dl,BYTE PTR [ecx+0x48]
  00427c27: 84 d2                                           test   dl,dl
  00427c29: 75 48                                           jne    0x427c73
  00427c2b: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  00427c2f: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00427c32: c6 40 48 00                                     mov    BYTE PTR [eax+0x48],0x0
  00427c36: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427c38: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00427c3b: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427c3d: 8a 5a 49                                        mov    bl,BYTE PTR [edx+0x49]
  00427c40: 84 db                                           test   bl,bl
  00427c42: 75 03                                           jne    0x427c47
  00427c44: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00427c47: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427c4a: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427c4d: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00427c50: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00427c53: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00427c56: 75 05                                           jne    0x427c5d
  00427c58: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427c5b: eb 0e                                           jmp    0x427c6b
  00427c5d: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427c60: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00427c62: 75 04                                           jne    0x427c68
  00427c64: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427c66: eb 03                                           jmp    0x427c6b
  00427c68: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427c6b: 89 01                                           mov    DWORD PTR [ecx],eax
  00427c6d: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00427c70: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00427c73: 8a 51 49                                        mov    dl,BYTE PTR [ecx+0x49]
  00427c76: 84 d2                                           test   dl,dl
  00427c78: 0f 85 8f 00 00 00                               jne    0x427d0d
  00427c7e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427c80: 80 7a 48 01                                     cmp    BYTE PTR [edx+0x48],0x1
  00427c84: 0f 85 9e 00 00 00                               jne    0x427d28
  00427c8a: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427c8d: 80 7a 48 01                                     cmp    BYTE PTR [edx+0x48],0x1
  00427c91: 0f 85 91 00 00 00                               jne    0x427d28
  00427c97: eb 70                                           jmp    0x427d09
  00427c99: 8a 51 48                                        mov    dl,BYTE PTR [ecx+0x48]
  00427c9c: 84 d2                                           test   dl,dl
  00427c9e: 75 49                                           jne    0x427ce9
  00427ca0: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  00427ca4: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00427ca6: c6 40 48 00                                     mov    BYTE PTR [eax+0x48],0x0
  00427caa: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427cad: 89 10                                           mov    DWORD PTR [eax],edx
  00427caf: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427cb2: 8a 5a 49                                        mov    bl,BYTE PTR [edx+0x49]
  00427cb5: 84 db                                           test   bl,bl
  00427cb7: 75 03                                           jne    0x427cbc
  00427cb9: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00427cbc: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427cbf: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427cc2: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00427cc5: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00427cc8: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00427ccb: 75 05                                           jne    0x427cd2
  00427ccd: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427cd0: eb 0f                                           jmp    0x427ce1
  00427cd2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427cd5: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  00427cd8: 75 05                                           jne    0x427cdf
  00427cda: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427cdd: eb 02                                           jmp    0x427ce1
  00427cdf: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427ce1: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00427ce4: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00427ce7: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00427ce9: 8a 51 49                                        mov    dl,BYTE PTR [ecx+0x49]
  00427cec: 84 d2                                           test   dl,dl
  00427cee: 75 1d                                           jne    0x427d0d
  00427cf0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427cf3: 80 7a 48 01                                     cmp    BYTE PTR [edx+0x48],0x1
  00427cf7: 0f 85 da 00 00 00                               jne    0x427dd7
  00427cfd: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427cff: 80 7a 48 01                                     cmp    BYTE PTR [edx+0x48],0x1
  00427d03: 0f 85 ce 00 00 00                               jne    0x427dd7
  00427d09: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  00427d0d: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00427d10: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00427d13: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00427d16: 8b f8                                           mov    edi,eax
  00427d18: 3b f9                                           cmp    edi,ecx
  00427d1a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00427d1d: 0f 85 ee fe ff ff                               jne    0x427c11
  00427d23: e9 50 01 00 00                                  jmp    0x427e78
  00427d28: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427d2b: 80 7a 48 01                                     cmp    BYTE PTR [edx+0x48],0x1
  00427d2f: 75 4c                                           jne    0x427d7d
  00427d31: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427d33: c6 42 48 01                                     mov    BYTE PTR [edx+0x48],0x1
  00427d37: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427d39: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  00427d3d: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00427d40: 89 31                                           mov    DWORD PTR [ecx],esi
  00427d42: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00427d45: 8a 5e 49                                        mov    bl,BYTE PTR [esi+0x49]
  00427d48: 84 db                                           test   bl,bl
  00427d4a: 75 03                                           jne    0x427d4f
  00427d4c: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00427d4f: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00427d52: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00427d55: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00427d58: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00427d5b: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00427d5e: 75 05                                           jne    0x427d65
  00427d60: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00427d63: eb 0f                                           jmp    0x427d74
  00427d65: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00427d68: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  00427d6b: 75 05                                           jne    0x427d72
  00427d6d: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00427d70: eb 02                                           jmp    0x427d74
  00427d72: 89 16                                           mov    DWORD PTR [esi],edx
  00427d74: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427d77: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427d7a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00427d7d: 8a 50 48                                        mov    dl,BYTE PTR [eax+0x48]
  00427d80: 88 51 48                                        mov    BYTE PTR [ecx+0x48],dl
  00427d83: c6 40 48 01                                     mov    BYTE PTR [eax+0x48],0x1
  00427d87: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00427d8a: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  00427d8e: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00427d91: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427d93: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00427d96: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427d98: 8a 5a 49                                        mov    bl,BYTE PTR [edx+0x49]
  00427d9b: 84 db                                           test   bl,bl
  00427d9d: 75 03                                           jne    0x427da2
  00427d9f: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00427da2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427da5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427da8: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00427dab: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00427dae: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00427db1: 75 0a                                           jne    0x427dbd
  00427db3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427db6: 89 01                                           mov    DWORD PTR [ecx],eax
  00427db8: e9 b8 00 00 00                                  jmp    0x427e75
  00427dbd: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427dc0: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00427dc2: 75 09                                           jne    0x427dcd
  00427dc4: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427dc6: 89 01                                           mov    DWORD PTR [ecx],eax
  00427dc8: e9 a8 00 00 00                                  jmp    0x427e75
  00427dcd: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427dd0: 89 01                                           mov    DWORD PTR [ecx],eax
  00427dd2: e9 9e 00 00 00                                  jmp    0x427e75
  00427dd7: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427dd9: 80 7a 48 01                                     cmp    BYTE PTR [edx+0x48],0x1
  00427ddd: 75 4a                                           jne    0x427e29
  00427ddf: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427de2: c6 42 48 01                                     mov    BYTE PTR [edx+0x48],0x1
  00427de6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427de9: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  00427ded: 8b 32                                           mov    esi,DWORD PTR [edx]
  00427def: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00427df2: 8b 32                                           mov    esi,DWORD PTR [edx]
  00427df4: 8a 5e 49                                        mov    bl,BYTE PTR [esi+0x49]
  00427df7: 84 db                                           test   bl,bl
  00427df9: 75 03                                           jne    0x427dfe
  00427dfb: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00427dfe: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00427e01: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00427e04: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00427e07: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00427e0a: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00427e0d: 75 05                                           jne    0x427e14
  00427e0f: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00427e12: eb 0e                                           jmp    0x427e22
  00427e14: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00427e17: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  00427e19: 75 04                                           jne    0x427e1f
  00427e1b: 89 16                                           mov    DWORD PTR [esi],edx
  00427e1d: eb 03                                           jmp    0x427e22
  00427e1f: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00427e22: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427e24: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427e27: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00427e29: 8a 50 48                                        mov    dl,BYTE PTR [eax+0x48]
  00427e2c: 88 51 48                                        mov    BYTE PTR [ecx+0x48],dl
  00427e2f: c6 40 48 01                                     mov    BYTE PTR [eax+0x48],0x1
  00427e33: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00427e35: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  00427e39: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00427e3b: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427e3e: 89 10                                           mov    DWORD PTR [eax],edx
  00427e40: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427e43: 8a 5a 49                                        mov    bl,BYTE PTR [edx+0x49]
  00427e46: 84 db                                           test   bl,bl
  00427e48: 75 03                                           jne    0x427e4d
  00427e4a: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00427e4d: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427e50: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427e53: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00427e56: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00427e59: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00427e5c: 75 05                                           jne    0x427e63
  00427e5e: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427e61: eb 0f                                           jmp    0x427e72
  00427e63: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427e66: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  00427e69: 75 05                                           jne    0x427e70
  00427e6b: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427e6e: eb 02                                           jmp    0x427e72
  00427e70: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427e72: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00427e75: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00427e78: c6 47 48 01                                     mov    BYTE PTR [edi+0x48],0x1
  00427e7c: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00427e7f: 8d 78 0c                                        lea    edi,[eax+0xc]
  00427e82: 89 7d e4                                        mov    DWORD PTR [ebp-0x1c],edi
  00427e85: 8d 5f 10                                        lea    ebx,[edi+0x10]
  00427e88: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00427e8f: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  00427e92: 6a 01                                           push   0x1
  00427e94: 8d 4b 1c                                        lea    ecx,[ebx+0x1c]
  00427e97: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00427e9b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00427ea1: 8b 4b 14                                        mov    ecx,DWORD PTR [ebx+0x14]
  00427ea4: 8d 73 10                                        lea    esi,[ebx+0x10]
  00427ea7: 51                                              push   ecx
  00427ea8: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00427eab: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00427eaf: e8 2c 0b 00 00                                  call   0x4289e0
  00427eb4: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  00427eb7: 52                                              push   edx
  00427eb8: 8d 45 dc                                        lea    eax,[ebp-0x24]
  00427ebb: 50                                              push   eax
  00427ebc: 8b ce                                           mov    ecx,esi
  00427ebe: e8 1d f7 ff ff                                  call   0x4275e0
  00427ec3: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00427ec5: 51                                              push   ecx
  00427ec6: 8d 55 d8                                        lea    edx,[ebp-0x28]
  00427ec9: 52                                              push   edx
  00427eca: 8b ce                                           mov    ecx,esi
  00427ecc: e8 1f 07 00 00                                  call   0x4285f0
  00427ed1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00427ed4: 6a 01                                           push   0x1
  00427ed6: 50                                              push   eax
  00427ed7: 8d 4e 01                                        lea    ecx,[esi+0x1]
  00427eda: e8 31 13 00 00                                  call   0x429210
  00427edf: 33 c0                                           xor    eax,eax
  00427ee1: 6a 01                                           push   0x1
  00427ee3: 8b cb                                           mov    ecx,ebx
  00427ee5: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00427ee8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00427eeb: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00427eef: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00427ef5: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00427ef8: 85 c0                                           test   eax,eax
  00427efa: 74 1c                                           je     0x427f18
  00427efc: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00427eff: 8a 01                                           mov    al,BYTE PTR [ecx]
  00427f01: 84 c0                                           test   al,al
  00427f03: 74 0a                                           je     0x427f0f
  00427f05: 3c ff                                           cmp    al,0xff
  00427f07: 74 06                                           je     0x427f0f
  00427f09: fe c8                                           dec    al
  00427f0b: 88 01                                           mov    BYTE PTR [ecx],al
  00427f0d: eb 09                                           jmp    0x427f18
  00427f0f: 51                                              push   ecx
  00427f10: e8 4b a1 01 00                                  call   0x442060
  00427f15: 83 c4 04                                        add    esp,0x4
  00427f18: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00427f1b: 33 f6                                           xor    esi,esi
  00427f1d: 50                                              push   eax
  00427f1e: 89 77 04                                        mov    DWORD PTR [edi+0x4],esi
  00427f21: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  00427f24: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00427f27: e8 34 a1 01 00                                  call   0x442060
  00427f2c: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00427f2f: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00427f32: 83 c4 04                                        add    esp,0x4
  00427f35: 3b c6                                           cmp    eax,esi
  00427f37: 76 04                                           jbe    0x427f3d
  00427f39: 48                                              dec    eax
  00427f3a: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00427f3d: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00427f40: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00427f43: 5f                                              pop    edi
  00427f44: 89 08                                           mov    DWORD PTR [eax],ecx
  00427f46: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00427f49: 5e                                              pop    esi
  00427f4a: 5b                                              pop    ebx
  00427f4b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00427f52: 8b e5                                           mov    esp,ebp
  00427f54: 5d                                              pop    ebp
  00427f55: c2 08 00                                        ret    0x8
  00428350: 55                                              push   ebp
  00428351: 8b ec                                           mov    ebp,esp
  00428353: 6a ff                                           push   0xffffffff
  00428355: 68 e2 49 4d 00                                  push   0x4d49e2
  0042835a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00428360: 50                                              push   eax
  00428361: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00428368: 83 ec 0c                                        sub    esp,0xc
  0042836b: 53                                              push   ebx
  0042836c: 56                                              push   esi
  0042836d: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  00428370: 33 db                                           xor    ebx,ebx
  00428372: 8d 71 10                                        lea    esi,[ecx+0x10]
  00428375: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00428378: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0042837b: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0042837e: 3b c3                                           cmp    eax,ebx
  00428380: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00428384: 74 1c                                           je     0x4283a2
  00428386: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00428389: 8a 01                                           mov    al,BYTE PTR [ecx]
  0042838b: 3a c3                                           cmp    al,bl
  0042838d: 74 0a                                           je     0x428399
  0042838f: 3c ff                                           cmp    al,0xff
  00428391: 74 06                                           je     0x428399
  00428393: fe c8                                           dec    al
  00428395: 88 01                                           mov    BYTE PTR [ecx],al
  00428397: eb 09                                           jmp    0x4283a2
  00428399: 51                                              push   ecx
  0042839a: e8 c1 9c 01 00                                  call   0x442060
  0042839f: 83 c4 04                                        add    esp,0x4
  004283a2: 57                                              push   edi
  004283a3: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  004283a6: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  004283a9: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  004283ac: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  004283af: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004283b1: 8d 7e 10                                        lea    edi,[esi+0x10]
  004283b4: 50                                              push   eax
  004283b5: 51                                              push   ecx
  004283b6: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004283b9: 50                                              push   eax
  004283ba: 8b cf                                           mov    ecx,edi
  004283bc: e8 2f 02 00 00                                  call   0x4285f0
  004283c1: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004283c4: 51                                              push   ecx
  004283c5: e8 96 9c 01 00                                  call   0x442060
  004283ca: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  004283cd: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  004283d0: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004283d3: 83 c4 04                                        add    esp,0x4
  004283d6: 3b c3                                           cmp    eax,ebx
  004283d8: 5f                                              pop    edi
  004283d9: 74 1c                                           je     0x4283f7
  004283db: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004283de: 8a 01                                           mov    al,BYTE PTR [ecx]
  004283e0: 3a c3                                           cmp    al,bl
  004283e2: 74 0a                                           je     0x4283ee
  004283e4: 3c ff                                           cmp    al,0xff
  004283e6: 74 06                                           je     0x4283ee
  004283e8: fe c8                                           dec    al
  004283ea: 88 01                                           mov    BYTE PTR [ecx],al
  004283ec: eb 09                                           jmp    0x4283f7
  004283ee: 51                                              push   ecx
  004283ef: e8 6c 9c 01 00                                  call   0x442060
  004283f4: 83 c4 04                                        add    esp,0x4
  004283f7: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  004283fa: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004283fd: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00428400: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00428403: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428406: 3b c3                                           cmp    eax,ebx
  00428408: 74 1c                                           je     0x428426
  0042840a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0042840d: 8a 01                                           mov    al,BYTE PTR [ecx]
  0042840f: 3a c3                                           cmp    al,bl
  00428411: 74 0a                                           je     0x42841d
  00428413: 3c ff                                           cmp    al,0xff
  00428415: 74 06                                           je     0x42841d
  00428417: fe c8                                           dec    al
  00428419: 88 01                                           mov    BYTE PTR [ecx],al
  0042841b: eb 09                                           jmp    0x428426
  0042841d: 51                                              push   ecx
  0042841e: e8 3d 9c 01 00                                  call   0x442060
  00428423: 83 c4 04                                        add    esp,0x4
  00428426: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00428429: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0042842c: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042842f: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00428432: 5e                                              pop    esi
  00428433: 5b                                              pop    ebx
  00428434: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042843b: 8b e5                                           mov    esp,ebp
  0042843d: 5d                                              pop    ebp
  0042843e: c3                                              ret
  004292e0: 55                                              push   ebp
  004292e1: 8b ec                                           mov    ebp,esp
  004292e3: 53                                              push   ebx
  004292e4: 56                                              push   esi
  004292e5: 57                                              push   edi
  004292e6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004292e9: 8a 47 49                                        mov    al,BYTE PTR [edi+0x49]
  004292ec: 84 c0                                           test   al,al
  004292ee: 8b d9                                           mov    ebx,ecx
  004292f0: 8b f7                                           mov    esi,edi
  004292f2: 75 27                                           jne    0x42931b
  004292f4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004292f7: 50                                              push   eax
  004292f8: 8b cb                                           mov    ecx,ebx
  004292fa: e8 e1 ff ff ff                                  call   0x4292e0
  004292ff: 8b 36                                           mov    esi,DWORD PTR [esi]
  00429301: 8d 4f 0c                                        lea    ecx,[edi+0xc]
  00429304: e8 47 f0 ff ff                                  call   0x428350
  00429309: 57                                              push   edi
  0042930a: e8 51 8d 01 00                                  call   0x442060
  0042930f: 8a 46 49                                        mov    al,BYTE PTR [esi+0x49]
  00429312: 83 c4 04                                        add    esp,0x4
  00429315: 84 c0                                           test   al,al
  00429317: 8b fe                                           mov    edi,esi
  00429319: 74 d9                                           je     0x4292f4
  0042931b: 5f                                              pop    edi
  0042931c: 5e                                              pop    esi
  0042931d: 5b                                              pop    ebx
  0042931e: 5d                                              pop    ebp
  0042931f: c2 04 00                                        ret    0x4
  0045fb50: 55                                              push   ebp
  0045fb51: 8b ec                                           mov    ebp,esp
  0045fb53: 6a ff                                           push   0xffffffff
  0045fb55: 68 ba 78 4d 00                                  push   0x4d78ba
  0045fb5a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045fb60: 50                                              push   eax
  0045fb61: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045fb68: 83 ec 40                                        sub    esp,0x40
  0045fb6b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045fb6e: 53                                              push   ebx
  0045fb6f: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  0045fb72: 56                                              push   esi
  0045fb73: 57                                              push   edi
  0045fb74: 8b f9                                           mov    edi,ecx
  0045fb76: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0045fb79: 6a 1c                                           push   0x1c
  0045fb7b: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0045fb7e: e8 6d 24 fe ff                                  call   0x441ff0
  0045fb83: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0045fb86: 8b f0                                           mov    esi,eax
  0045fb88: 83 c4 04                                        add    esp,0x4
  0045fb8b: 85 c9                                           test   ecx,ecx
  0045fb8d: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  0045fb90: 8b c1                                           mov    eax,ecx
  0045fb92: 75 02                                           jne    0x45fb96
  0045fb94: 8b c6                                           mov    eax,esi
  0045fb96: 85 db                                           test   ebx,ebx
  0045fb98: 89 06                                           mov    DWORD PTR [esi],eax
  0045fb9a: 8b c3                                           mov    eax,ebx
  0045fb9c: 75 02                                           jne    0x45fba0
  0045fb9e: 8b c6                                           mov    eax,esi
  0045fba0: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0045fba3: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0045fba6: ba cc cc cc 0c                                  mov    edx,0xccccccc
  0045fbab: 2b d0                                           sub    edx,eax
  0045fbad: 83 fa 01                                        cmp    edx,0x1
  0045fbb0: 73 50                                           jae    0x45fc02
  0045fbb2: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0045fbb5: 6a 00                                           push   0x0
  0045fbb7: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045fbba: 88 45 d0                                        mov    BYTE PTR [ebp-0x30],al
  0045fbbd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045fbc3: 83 c9 ff                                        or     ecx,0xffffffff
  0045fbc6: 33 c0                                           xor    eax,eax
  0045fbc8: bf ec 2a 50 00                                  mov    edi,0x502aec
  0045fbcd: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0045fbcf: f7 d1                                           not    ecx
  0045fbd1: 49                                              dec    ecx
  0045fbd2: 51                                              push   ecx
  0045fbd3: 68 ec 2a 50 00                                  push   0x502aec
  0045fbd8: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045fbdb: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0045fbe1: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045fbe4: 51                                              push   ecx
  0045fbe5: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  0045fbe8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045fbef: e8 2c 58 fa ff                                  call   0x405420
  0045fbf4: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0045fbf9: 8d 55 b4                                        lea    edx,[ebp-0x4c]
  0045fbfc: 52                                              push   edx
  0045fbfd: e8 54 21 07 00                                  call   0x4d1d56
  0045fc02: 40                                              inc    eax
  0045fc03: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  0045fc06: 8d 7e 08                                        lea    edi,[esi+0x8]
  0045fc09: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0045fc10: 89 7d e4                                        mov    DWORD PTR [ebp-0x1c],edi
  0045fc13: 89 7d e0                                        mov    DWORD PTR [ebp-0x20],edi
  0045fc16: 85 ff                                           test   edi,edi
  0045fc18: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045fc1c: 74 15                                           je     0x45fc33
  0045fc1e: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0045fc21: 53                                              push   ebx
  0045fc22: 8b cf                                           mov    ecx,edi
  0045fc24: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  0045fc2a: 8b 43 10                                        mov    eax,DWORD PTR [ebx+0x10]
  0045fc2d: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0045fc30: 89 47 10                                        mov    DWORD PTR [edi+0x10],eax
  0045fc33: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  0045fc36: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0045fc39: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045fc3c: 5f                                              pop    edi
  0045fc3d: 89 32                                           mov    DWORD PTR [edx],esi
  0045fc3f: 5e                                              pop    esi
  0045fc40: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045fc47: 5b                                              pop    ebx
  0045fc48: 8b e5                                           mov    esp,ebp
  0045fc4a: 5d                                              pop    ebp
  0045fc4b: c2 08 00                                        ret    0x8
  0045fc70: 55                                              push   ebp
  0045fc71: 8b ec                                           mov    ebp,esp
  0045fc73: 6a ff                                           push   0xffffffff
  0045fc75: 68 d9 78 4d 00                                  push   0x4d78d9
  0045fc7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045fc80: 50                                              push   eax
  0045fc81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045fc88: 83 ec 30                                        sub    esp,0x30
  0045fc8b: 53                                              push   ebx
  0045fc8c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045fc8f: 56                                              push   esi
  0045fc90: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0045fc93: 57                                              push   edi
  0045fc94: 6a 14                                           push   0x14
  0045fc96: 8b f9                                           mov    edi,ecx
  0045fc98: e8 53 23 fe ff                                  call   0x441ff0
  0045fc9d: 83 c4 04                                        add    esp,0x4
  0045fca0: 85 db                                           test   ebx,ebx
  0045fca2: 8b cb                                           mov    ecx,ebx
  0045fca4: 75 02                                           jne    0x45fca8
  0045fca6: 8b c8                                           mov    ecx,eax
  0045fca8: 85 f6                                           test   esi,esi
  0045fcaa: 89 08                                           mov    DWORD PTR [eax],ecx
  0045fcac: 75 02                                           jne    0x45fcb0
  0045fcae: 8b f0                                           mov    esi,eax
  0045fcb0: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  0045fcb3: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0045fcb6: ba 55 55 55 15                                  mov    edx,0x15555555
  0045fcbb: 2b d1                                           sub    edx,ecx
  0045fcbd: 83 fa 01                                        cmp    edx,0x1
  0045fcc0: 73 50                                           jae    0x45fd12
  0045fcc2: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0045fcc5: 6a 00                                           push   0x0
  0045fcc7: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045fcca: 88 45 e0                                        mov    BYTE PTR [ebp-0x20],al
  0045fccd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045fcd3: 83 c9 ff                                        or     ecx,0xffffffff
  0045fcd6: 33 c0                                           xor    eax,eax
  0045fcd8: bf ec 2a 50 00                                  mov    edi,0x502aec
  0045fcdd: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0045fcdf: f7 d1                                           not    ecx
  0045fce1: 49                                              dec    ecx
  0045fce2: 51                                              push   ecx
  0045fce3: 68 ec 2a 50 00                                  push   0x502aec
  0045fce8: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045fceb: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0045fcf1: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045fcf4: 51                                              push   ecx
  0045fcf5: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0045fcf8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045fcff: e8 1c 57 fa ff                                  call   0x405420
  0045fd04: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0045fd09: 8d 55 c4                                        lea    edx,[ebp-0x3c]
  0045fd0c: 52                                              push   edx
  0045fd0d: e8 44 20 07 00                                  call   0x4d1d56
  0045fd12: 41                                              inc    ecx
  0045fd13: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  0045fd16: 8d 48 08                                        lea    ecx,[eax+0x8]
  0045fd19: 85 c9                                           test   ecx,ecx
  0045fd1b: 74 13                                           je     0x45fd30
  0045fd1d: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0045fd20: 8b 32                                           mov    esi,DWORD PTR [edx]
  0045fd22: 89 31                                           mov    DWORD PTR [ecx],esi
  0045fd24: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  0045fd27: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  0045fd2a: 8b 52 08                                        mov    edx,DWORD PTR [edx+0x8]
  0045fd2d: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0045fd30: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0045fd33: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0045fd36: 5f                                              pop    edi
  0045fd37: 89 01                                           mov    DWORD PTR [ecx],eax
  0045fd39: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045fd3c: 5e                                              pop    esi
  0045fd3d: 5b                                              pop    ebx
  0045fd3e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045fd45: 8b e5                                           mov    esp,ebp
  0045fd47: 5d                                              pop    ebp
  0045fd48: c2 08 00                                        ret    0x8
  0045fd50: 55                                              push   ebp
  0045fd51: 8b ec                                           mov    ebp,esp
  0045fd53: 6a ff                                           push   0xffffffff
  0045fd55: 68 f9 78 4d 00                                  push   0x4d78f9
  0045fd5a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045fd60: 50                                              push   eax
  0045fd61: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045fd68: 83 ec 30                                        sub    esp,0x30
  0045fd6b: 53                                              push   ebx
  0045fd6c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045fd6f: 56                                              push   esi
  0045fd70: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0045fd73: 57                                              push   edi
  0045fd74: 6a 14                                           push   0x14
  0045fd76: 8b f9                                           mov    edi,ecx
  0045fd78: e8 73 22 fe ff                                  call   0x441ff0
  0045fd7d: 83 c4 04                                        add    esp,0x4
  0045fd80: 85 db                                           test   ebx,ebx
  0045fd82: 8b cb                                           mov    ecx,ebx
  0045fd84: 75 02                                           jne    0x45fd88
  0045fd86: 8b c8                                           mov    ecx,eax
  0045fd88: 85 f6                                           test   esi,esi
  0045fd8a: 89 08                                           mov    DWORD PTR [eax],ecx
  0045fd8c: 75 02                                           jne    0x45fd90
  0045fd8e: 8b f0                                           mov    esi,eax
  0045fd90: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  0045fd93: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0045fd96: ba 55 55 55 15                                  mov    edx,0x15555555
  0045fd9b: 2b d1                                           sub    edx,ecx
  0045fd9d: 83 fa 01                                        cmp    edx,0x1
  0045fda0: 73 50                                           jae    0x45fdf2
  0045fda2: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0045fda5: 6a 00                                           push   0x0
  0045fda7: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045fdaa: 88 45 e0                                        mov    BYTE PTR [ebp-0x20],al
  0045fdad: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045fdb3: 83 c9 ff                                        or     ecx,0xffffffff
  0045fdb6: 33 c0                                           xor    eax,eax
  0045fdb8: bf ec 2a 50 00                                  mov    edi,0x502aec
  0045fdbd: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0045fdbf: f7 d1                                           not    ecx
  0045fdc1: 49                                              dec    ecx
  0045fdc2: 51                                              push   ecx
  0045fdc3: 68 ec 2a 50 00                                  push   0x502aec
  0045fdc8: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045fdcb: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0045fdd1: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045fdd4: 51                                              push   ecx
  0045fdd5: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0045fdd8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045fddf: e8 3c 56 fa ff                                  call   0x405420
  0045fde4: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0045fde9: 8d 55 c4                                        lea    edx,[ebp-0x3c]
  0045fdec: 52                                              push   edx
  0045fded: e8 64 1f 07 00                                  call   0x4d1d56
  0045fdf2: 41                                              inc    ecx
  0045fdf3: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  0045fdf6: 8d 48 08                                        lea    ecx,[eax+0x8]
  0045fdf9: 85 c9                                           test   ecx,ecx
  0045fdfb: 74 13                                           je     0x45fe10
  0045fdfd: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0045fe00: 8b 32                                           mov    esi,DWORD PTR [edx]
  0045fe02: 89 31                                           mov    DWORD PTR [ecx],esi
  0045fe04: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  0045fe07: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  0045fe0a: 8b 52 08                                        mov    edx,DWORD PTR [edx+0x8]
  0045fe0d: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0045fe10: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0045fe13: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0045fe16: 5f                                              pop    edi
  0045fe17: 89 01                                           mov    DWORD PTR [ecx],eax
  0045fe19: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045fe1c: 5e                                              pop    esi
  0045fe1d: 5b                                              pop    ebx
  0045fe1e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045fe25: 8b e5                                           mov    esp,ebp
  0045fe27: 5d                                              pop    ebp
  0045fe28: c2 08 00                                        ret    0x8
  0045fe30: 55                                              push   ebp
  0045fe31: 8b ec                                           mov    ebp,esp
  0045fe33: 6a ff                                           push   0xffffffff
  0045fe35: 68 19 79 4d 00                                  push   0x4d7919
  0045fe3a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045fe40: 50                                              push   eax
  0045fe41: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045fe48: 83 ec 30                                        sub    esp,0x30
  0045fe4b: 53                                              push   ebx
  0045fe4c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045fe4f: 56                                              push   esi
  0045fe50: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0045fe53: 57                                              push   edi
  0045fe54: 6a 14                                           push   0x14
  0045fe56: 8b f9                                           mov    edi,ecx
  0045fe58: e8 93 21 fe ff                                  call   0x441ff0
  0045fe5d: 83 c4 04                                        add    esp,0x4
  0045fe60: 85 db                                           test   ebx,ebx
  0045fe62: 8b cb                                           mov    ecx,ebx
  0045fe64: 75 02                                           jne    0x45fe68
  0045fe66: 8b c8                                           mov    ecx,eax
  0045fe68: 85 f6                                           test   esi,esi
  0045fe6a: 89 08                                           mov    DWORD PTR [eax],ecx
  0045fe6c: 75 02                                           jne    0x45fe70
  0045fe6e: 8b f0                                           mov    esi,eax
  0045fe70: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  0045fe73: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0045fe76: ba 55 55 55 15                                  mov    edx,0x15555555
  0045fe7b: 2b d1                                           sub    edx,ecx
  0045fe7d: 83 fa 01                                        cmp    edx,0x1
  0045fe80: 73 50                                           jae    0x45fed2
  0045fe82: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0045fe85: 6a 00                                           push   0x0
  0045fe87: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045fe8a: 88 45 e0                                        mov    BYTE PTR [ebp-0x20],al
  0045fe8d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045fe93: 83 c9 ff                                        or     ecx,0xffffffff
  0045fe96: 33 c0                                           xor    eax,eax
  0045fe98: bf ec 2a 50 00                                  mov    edi,0x502aec
  0045fe9d: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0045fe9f: f7 d1                                           not    ecx
  0045fea1: 49                                              dec    ecx
  0045fea2: 51                                              push   ecx
  0045fea3: 68 ec 2a 50 00                                  push   0x502aec
  0045fea8: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045feab: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0045feb1: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045feb4: 51                                              push   ecx
  0045feb5: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0045feb8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045febf: e8 5c 55 fa ff                                  call   0x405420
  0045fec4: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0045fec9: 8d 55 c4                                        lea    edx,[ebp-0x3c]
  0045fecc: 52                                              push   edx
  0045fecd: e8 84 1e 07 00                                  call   0x4d1d56
  0045fed2: 41                                              inc    ecx
  0045fed3: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  0045fed6: 8d 48 08                                        lea    ecx,[eax+0x8]
  0045fed9: 85 c9                                           test   ecx,ecx
  0045fedb: 74 13                                           je     0x45fef0
  0045fedd: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0045fee0: 8b 32                                           mov    esi,DWORD PTR [edx]
  0045fee2: 89 31                                           mov    DWORD PTR [ecx],esi
  0045fee4: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  0045fee7: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  0045feea: 8b 52 08                                        mov    edx,DWORD PTR [edx+0x8]
  0045feed: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0045fef0: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0045fef3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0045fef6: 5f                                              pop    edi
  0045fef7: 89 01                                           mov    DWORD PTR [ecx],eax
  0045fef9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045fefc: 5e                                              pop    esi
  0045fefd: 5b                                              pop    ebx
  0045fefe: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045ff05: 8b e5                                           mov    esp,ebp
  0045ff07: 5d                                              pop    ebp
  0045ff08: c2 08 00                                        ret    0x8
  00491ae0: 55                                              push   ebp
  00491ae1: 8b ec                                           mov    ebp,esp
  00491ae3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00491ae6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00491ae9: 89 08                                           mov    DWORD PTR [eax],ecx
  00491aeb: 5d                                              pop    ebp
  00491aec: c2 04 00                                        ret    0x4
  00491af0: 55                                              push   ebp
  00491af1: 8b ec                                           mov    ebp,esp
  00491af3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00491af6: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  00491afd: 2b d0                                           sub    edx,eax
  00491aff: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00491b01: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  00491b04: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00491b07: 89 08                                           mov    DWORD PTR [eax],ecx
  00491b09: 5d                                              pop    ebp
  00491b0a: c2 08 00                                        ret    0x8
  00491b10: 55                                              push   ebp
  00491b11: 8b ec                                           mov    ebp,esp
  00491b13: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00491b16: 85 c0                                           test   eax,eax
  00491b18: 76 27                                           jbe    0x491b41
  00491b1a: 53                                              push   ebx
  00491b1b: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00491b1e: 56                                              push   esi
  00491b1f: 8b d0                                           mov    edx,eax
  00491b21: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00491b24: 57                                              push   edi
  00491b25: 85 c0                                           test   eax,eax
  00491b27: 74 0b                                           je     0x491b34
  00491b29: b9 07 00 00 00                                  mov    ecx,0x7
  00491b2e: 8b f3                                           mov    esi,ebx
  00491b30: 8b f8                                           mov    edi,eax
  00491b32: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00491b34: 83 c0 1c                                        add    eax,0x1c
  00491b37: 4a                                              dec    edx
  00491b38: 75 eb                                           jne    0x491b25
  00491b3a: 5f                                              pop    edi
  00491b3b: 5e                                              pop    esi
  00491b3c: 5b                                              pop    ebx
  00491b3d: 5d                                              pop    ebp
  00491b3e: c2 0c 00                                        ret    0xc
  00491b41: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00491b44: 5d                                              pop    ebp
  00491b45: c2 0c 00                                        ret    0xc
  00491b50: 55                                              push   ebp
  00491b51: 8b ec                                           mov    ebp,esp
  00491b53: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00491b56: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00491b58: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  00491b5f: 2b d0                                           sub    edx,eax
  00491b61: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00491b64: c1 e2 02                                        shl    edx,0x2
  00491b67: 2b ca                                           sub    ecx,edx
  00491b69: 89 08                                           mov    DWORD PTR [eax],ecx
  00491b6b: 5d                                              pop    ebp
  00491b6c: c2 08 00                                        ret    0x8
  00491b70: 55                                              push   ebp
  00491b71: 8b ec                                           mov    ebp,esp
  00491b73: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00491b76: 53                                              push   ebx
  00491b77: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00491b7a: 3b d3                                           cmp    edx,ebx
  00491b7c: 74 25                                           je     0x491ba3
  00491b7e: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00491b81: 56                                              push   esi
  00491b82: 57                                              push   edi
  00491b83: 85 c0                                           test   eax,eax
  00491b85: 74 0b                                           je     0x491b92
  00491b87: b9 07 00 00 00                                  mov    ecx,0x7
  00491b8c: 8b f2                                           mov    esi,edx
  00491b8e: 8b f8                                           mov    edi,eax
  00491b90: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00491b92: 83 c2 1c                                        add    edx,0x1c
  00491b95: 83 c0 1c                                        add    eax,0x1c
  00491b98: 3b d3                                           cmp    edx,ebx
  00491b9a: 75 e7                                           jne    0x491b83
  00491b9c: 5f                                              pop    edi
  00491b9d: 5e                                              pop    esi
  00491b9e: 5b                                              pop    ebx
  00491b9f: 5d                                              pop    ebp
  00491ba0: c2 0c 00                                        ret    0xc
  00491ba3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00491ba6: 5b                                              pop    ebx
  00491ba7: 5d                                              pop    ebp
  00491ba8: c2 0c 00                                        ret    0xc
  00491bb0: 55                                              push   ebp
  00491bb1: 8b ec                                           mov    ebp,esp
  00491bb3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00491bb6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00491bb9: 3b c2                                           cmp    eax,edx
  00491bbb: 74 1b                                           je     0x491bd8
  00491bbd: 53                                              push   ebx
  00491bbe: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00491bc1: 56                                              push   esi
  00491bc2: 57                                              push   edi
  00491bc3: 8b f8                                           mov    edi,eax
  00491bc5: 83 c0 1c                                        add    eax,0x1c
  00491bc8: 3b c2                                           cmp    eax,edx
  00491bca: b9 07 00 00 00                                  mov    ecx,0x7
  00491bcf: 8b f3                                           mov    esi,ebx
  00491bd1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00491bd3: 75 ee                                           jne    0x491bc3
  00491bd5: 5f                                              pop    edi
  00491bd6: 5e                                              pop    esi
  00491bd7: 5b                                              pop    ebx
  00491bd8: 5d                                              pop    ebp
  00491bd9: c3                                              ret
  00491be0: 55                                              push   ebp
  00491be1: 8b ec                                           mov    ebp,esp
  00491be3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00491be6: 53                                              push   ebx
  00491be7: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00491bea: 3b d8                                           cmp    ebx,eax
  00491bec: 74 24                                           je     0x491c12
  00491bee: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00491bf1: 56                                              push   esi
  00491bf2: 57                                              push   edi
  00491bf3: 83 e8 1c                                        sub    eax,0x1c
  00491bf6: 83 ea 1c                                        sub    edx,0x1c
  00491bf9: 3b c3                                           cmp    eax,ebx
  00491bfb: b9 07 00 00 00                                  mov    ecx,0x7
  00491c00: 8b f0                                           mov    esi,eax
  00491c02: 8b fa                                           mov    edi,edx
  00491c04: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00491c06: 75 eb                                           jne    0x491bf3
  00491c08: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00491c0b: 5f                                              pop    edi
  00491c0c: 5e                                              pop    esi
  00491c0d: 89 10                                           mov    DWORD PTR [eax],edx
  00491c0f: 5b                                              pop    ebx
  00491c10: 5d                                              pop    ebp
  00491c11: c3                                              ret
  00491c12: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00491c15: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00491c18: 89 08                                           mov    DWORD PTR [eax],ecx
  00491c1a: 5b                                              pop    ebx
  00491c1b: 5d                                              pop    ebp
  00491c1c: c3                                              ret
  00492930: 55                                              push   ebp
  00492931: 8b ec                                           mov    ebp,esp
  00492933: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00492936: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00492939: 89 08                                           mov    DWORD PTR [eax],ecx
  0049293b: 5d                                              pop    ebp
  0049293c: c2 04 00                                        ret    0x4
  00492940: 55                                              push   ebp
  00492941: 8b ec                                           mov    ebp,esp
  00492943: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00492945: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00492948: 8d 14 c8                                        lea    edx,[eax+ecx*8]
  0049294b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049294e: 89 10                                           mov    DWORD PTR [eax],edx
  00492950: 5d                                              pop    ebp
  00492951: c2 08 00                                        ret    0x8
  00492dd0: 55                                              push   ebp
  00492dd1: 8b ec                                           mov    ebp,esp
  00492dd3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00492dd6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00492dd9: 89 08                                           mov    DWORD PTR [eax],ecx
  00492ddb: 5d                                              pop    ebp
  00492ddc: c2 04 00                                        ret    0x4
  00492de0: 55                                              push   ebp
  00492de1: 8b ec                                           mov    ebp,esp
  00492de3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00492de6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00492de8: 8d 04 80                                        lea    eax,[eax+eax*4]
  00492deb: 8d 14 81                                        lea    edx,[ecx+eax*4]
  00492dee: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00492df1: 89 10                                           mov    DWORD PTR [eax],edx
  00492df3: 5d                                              pop    ebp
  00492df4: c2 08 00                                        ret    0x8
  00492e10: 55                                              push   ebp
  00492e11: 8b ec                                           mov    ebp,esp
  00492e13: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00492e16: 85 c0                                           test   eax,eax
  00492e18: 76 22                                           jbe    0x492e3c
  00492e1a: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00492e1d: 8b d0                                           mov    edx,eax
  00492e1f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00492e22: 56                                              push   esi
  00492e23: 85 c0                                           test   eax,eax
  00492e25: 74 0a                                           je     0x492e31
  00492e27: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00492e29: 89 30                                           mov    DWORD PTR [eax],esi
  00492e2b: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00492e2e: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  00492e31: 83 c0 08                                        add    eax,0x8
  00492e34: 4a                                              dec    edx
  00492e35: 75 ec                                           jne    0x492e23
  00492e37: 5e                                              pop    esi
  00492e38: 5d                                              pop    ebp
  00492e39: c2 0c 00                                        ret    0xc
  00492e3c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00492e3f: 5d                                              pop    ebp
  00492e40: c2 0c 00                                        ret    0xc
  00492e50: 55                                              push   ebp
  00492e51: 8b ec                                           mov    ebp,esp
  00492e53: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00492e56: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00492e58: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  00492e5f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00492e62: 2b ca                                           sub    ecx,edx
  00492e64: 89 08                                           mov    DWORD PTR [eax],ecx
  00492e66: 5d                                              pop    ebp
  00492e67: c2 08 00                                        ret    0x8
  00492e70: 55                                              push   ebp
  00492e71: 8b ec                                           mov    ebp,esp
  00492e73: 6a ff                                           push   0xffffffff
  00492e75: 68 81 aa 4d 00                                  push   0x4daa81
  00492e7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00492e80: 50                                              push   eax
  00492e81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00492e88: 83 ec 08                                        sub    esp,0x8
  00492e8b: 53                                              push   ebx
  00492e8c: 56                                              push   esi
  00492e8d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00492e90: 57                                              push   edi
  00492e91: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00492e94: 33 db                                           xor    ebx,ebx
  00492e96: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00492e99: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00492e9c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00492e9f: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  00492ea2: 0f 86 9c 00 00 00                               jbe    0x492f44
  00492ea8: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  00492eab: 3b f3                                           cmp    esi,ebx
  00492ead: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00492eb1: 74 31                                           je     0x492ee4
  00492eb3: 8a 07                                           mov    al,BYTE PTR [edi]
  00492eb5: 88 06                                           mov    BYTE PTR [esi],al
  00492eb7: 66 8b 4f 02                                     mov    cx,WORD PTR [edi+0x2]
  00492ebb: 66 89 4e 02                                     mov    WORD PTR [esi+0x2],cx
  00492ebf: 8a 57 04                                        mov    dl,BYTE PTR [edi+0x4]
  00492ec2: 8d 47 04                                        lea    eax,[edi+0x4]
  00492ec5: 8d 4e 04                                        lea    ecx,[esi+0x4]
  00492ec8: 88 11                                           mov    BYTE PTR [ecx],dl
  00492eca: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00492ecd: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00492ed0: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  00492ed3: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00492ed9: 8b 12                                           mov    edx,DWORD PTR [edx]
  00492edb: 52                                              push   edx
  00492edc: 53                                              push   ebx
  00492edd: 50                                              push   eax
  00492ede: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00492ee4: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00492ee7: 49                                              dec    ecx
  00492ee8: 83 c6 14                                        add    esi,0x14
  00492eeb: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00492eee: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00492ef1: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00492ef4: eb a9                                           jmp    0x492e9f
  00492f44: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00492f47: 5f                                              pop    edi
  00492f48: 8b c6                                           mov    eax,esi
  00492f4a: 5e                                              pop    esi
  00492f4b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00492f52: 5b                                              pop    ebx
  00492f53: 8b e5                                           mov    esp,ebp
  00492f55: 5d                                              pop    ebp
  00492f56: c2 0c 00                                        ret    0xc
  00492f60: 55                                              push   ebp
  00492f61: 8b ec                                           mov    ebp,esp
  00492f63: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00492f66: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00492f68: 8d 04 80                                        lea    eax,[eax+eax*4]
  00492f6b: c1 e0 02                                        shl    eax,0x2
  00492f6e: 2b c8                                           sub    ecx,eax
  00492f70: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00492f73: 89 08                                           mov    DWORD PTR [eax],ecx
  00492f75: 5d                                              pop    ebp
  00492f76: c2 08 00                                        ret    0x8
  00492f80: 55                                              push   ebp
  00492f81: 8b ec                                           mov    ebp,esp
  00492f83: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00492f86: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00492f89: 3b ca                                           cmp    ecx,edx
  00492f8b: 74 21                                           je     0x492fae
  00492f8d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00492f90: 56                                              push   esi
  00492f91: 85 c0                                           test   eax,eax
  00492f93: 74 0a                                           je     0x492f9f
  00492f95: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00492f97: 89 30                                           mov    DWORD PTR [eax],esi
  00492f99: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00492f9c: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  00492f9f: 83 c1 08                                        add    ecx,0x8
  00492fa2: 83 c0 08                                        add    eax,0x8
  00492fa5: 3b ca                                           cmp    ecx,edx
  00492fa7: 75 e8                                           jne    0x492f91
  00492fa9: 5e                                              pop    esi
  00492faa: 5d                                              pop    ebp
  00492fab: c2 0c 00                                        ret    0xc
  00492fae: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00492fb1: 5d                                              pop    ebp
  00492fb2: c2 0c 00                                        ret    0xc
  00492fc0: 55                                              push   ebp
  00492fc1: 8b ec                                           mov    ebp,esp
  00492fc3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00492fc6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00492fc9: 3b c2                                           cmp    eax,edx
  00492fcb: 74 16                                           je     0x492fe3
  00492fcd: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00492fd0: 56                                              push   esi
  00492fd1: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00492fd3: 89 30                                           mov    DWORD PTR [eax],esi
  00492fd5: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00492fd8: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  00492fdb: 83 c0 08                                        add    eax,0x8
  00492fde: 3b c2                                           cmp    eax,edx
  00492fe0: 75 ef                                           jne    0x492fd1
  00492fe2: 5e                                              pop    esi
  00492fe3: 5d                                              pop    ebp
  00492fe4: c3                                              ret
  00492ff0: 55                                              push   ebp
  00492ff1: 8b ec                                           mov    ebp,esp
  00492ff3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00492ff6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00492ff9: 3b d0                                           cmp    edx,eax
  00492ffb: 74 21                                           je     0x49301e
  00492ffd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00493000: 56                                              push   esi
  00493001: 8b 70 f8                                        mov    esi,DWORD PTR [eax-0x8]
  00493004: 83 e8 08                                        sub    eax,0x8
  00493007: 83 e9 08                                        sub    ecx,0x8
  0049300a: 3b c2                                           cmp    eax,edx
  0049300c: 89 31                                           mov    DWORD PTR [ecx],esi
  0049300e: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  00493011: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  00493014: 75 eb                                           jne    0x493001
  00493016: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00493019: 89 08                                           mov    DWORD PTR [eax],ecx
  0049301b: 5e                                              pop    esi
  0049301c: 5d                                              pop    ebp
  0049301d: c3                                              ret
  0049301e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00493021: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00493024: 89 08                                           mov    DWORD PTR [eax],ecx
  00493026: 5d                                              pop    ebp
  00493027: c3                                              ret
  00493030: 55                                              push   ebp
  00493031: 8b ec                                           mov    ebp,esp
  00493033: 6a ff                                           push   0xffffffff
  00493035: 68 a1 aa 4d 00                                  push   0x4daaa1
  0049303a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00493040: 50                                              push   eax
  00493041: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00493048: 83 ec 08                                        sub    esp,0x8
  0049304b: 53                                              push   ebx
  0049304c: 56                                              push   esi
  0049304d: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00493050: 57                                              push   edi
  00493051: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00493054: 33 db                                           xor    ebx,ebx
  00493056: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00493059: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049305c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0049305f: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  00493062: 0f 84 98 00 00 00                               je     0x493100
  00493068: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0049306b: 3b f3                                           cmp    esi,ebx
  0049306d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00493071: 74 31                                           je     0x4930a4
  00493073: 8a 07                                           mov    al,BYTE PTR [edi]
  00493075: 88 06                                           mov    BYTE PTR [esi],al
  00493077: 66 8b 4f 02                                     mov    cx,WORD PTR [edi+0x2]
  0049307b: 66 89 4e 02                                     mov    WORD PTR [esi+0x2],cx
  0049307f: 8a 57 04                                        mov    dl,BYTE PTR [edi+0x4]
  00493082: 8d 47 04                                        lea    eax,[edi+0x4]
  00493085: 8d 4e 04                                        lea    ecx,[esi+0x4]
  00493088: 88 11                                           mov    BYTE PTR [ecx],dl
  0049308a: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0049308d: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00493090: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  00493093: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00493099: 8b 12                                           mov    edx,DWORD PTR [edx]
  0049309b: 52                                              push   edx
  0049309c: 53                                              push   ebx
  0049309d: 50                                              push   eax
  0049309e: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004930a4: 83 c6 14                                        add    esi,0x14
  004930a7: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004930aa: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004930ad: 83 c7 14                                        add    edi,0x14
  004930b0: eb ad                                           jmp    0x49305f
  00493100: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00493103: 5f                                              pop    edi
  00493104: 8b c6                                           mov    eax,esi
  00493106: 5e                                              pop    esi
  00493107: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049310e: 5b                                              pop    ebx
  0049310f: 8b e5                                           mov    esp,ebp
  00493111: 5d                                              pop    ebp
  00493112: c2 0c 00                                        ret    0xc
  00493120: 55                                              push   ebp
  00493121: 8b ec                                           mov    ebp,esp
  00493123: 51                                              push   ecx
  00493124: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00493127: 56                                              push   esi
  00493128: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0049312b: 3b f0                                           cmp    esi,eax
  0049312d: 0f 84 5f 01 00 00                               je     0x493292
  00493133: 53                                              push   ebx
  00493134: 57                                              push   edi
  00493135: 8d 5e 08                                        lea    ebx,[esi+0x8]
  00493138: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049313b: 8a 08                                           mov    cl,BYTE PTR [eax]
  0049313d: 88 0e                                           mov    BYTE PTR [esi],cl
  0049313f: 66 8b 50 02                                     mov    dx,WORD PTR [eax+0x2]
  00493143: 66 89 53 fa                                     mov    WORD PTR [ebx-0x6],dx
  00493147: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0049314d: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0049314f: 8d 70 04                                        lea    esi,[eax+0x4]
  00493152: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00493155: 8b f8                                           mov    edi,eax
  00493157: 3b cf                                           cmp    ecx,edi
  00493159: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0049315c: 73 05                                           jae    0x493163
  0049315e: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00493161: 8b f9                                           mov    edi,ecx
  00493163: 8d 53 fc                                        lea    edx,[ebx-0x4]
  00493166: 3b d6                                           cmp    edx,esi
  00493168: 75 6f                                           jne    0x4931d9
  0049316a: 39 7b 04                                        cmp    DWORD PTR [ebx+0x4],edi
  0049316d: 8b f1                                           mov    esi,ecx
  0049316f: 73 09                                           jae    0x49317a
  00493171: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00493174: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0049317a: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049317d: 2b c7                                           sub    eax,edi
  0049317f: 3b c6                                           cmp    eax,esi
  00493181: 73 02                                           jae    0x493185
  00493183: 8b f0                                           mov    esi,eax
  00493185: 85 f6                                           test   esi,esi
  00493187: 0f 86 ec 00 00 00                               jbe    0x493279
  0049318d: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00493190: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00493196: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00493199: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0049319b: 2b ce                                           sub    ecx,esi
  0049319d: 03 c7                                           add    eax,edi
  0049319f: 2b cf                                           sub    ecx,edi
  004931a1: 51                                              push   ecx
  004931a2: 8d 14 30                                        lea    edx,[eax+esi*1]
  004931a5: 52                                              push   edx
  004931a6: 50                                              push   eax
  004931a7: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004931ad: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004931b0: 83 c4 0c                                        add    esp,0xc
  004931b3: 2b fe                                           sub    edi,esi
  004931b5: 6a 00                                           push   0x0
  004931b7: 8d 73 fc                                        lea    esi,[ebx-0x4]
  004931ba: 57                                              push   edi
  004931bb: 8b ce                                           mov    ecx,esi
  004931bd: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004931c3: 84 c0                                           test   al,al
  004931c5: 0f 84 ae 00 00 00                               je     0x493279
  004931cb: 57                                              push   edi
  004931cc: 8b ce                                           mov    ecx,esi
  004931ce: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004931d4: e9 a0 00 00 00                                  jmp    0x493279
  004931d9: 85 ff                                           test   edi,edi
  004931db: 76 61                                           jbe    0x49323e
  004931dd: 3b f8                                           cmp    edi,eax
  004931df: 75 5d                                           jne    0x49323e
  004931e1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004931e4: 85 c0                                           test   eax,eax
  004931e6: 75 05                                           jne    0x4931ed
  004931e8: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004931ed: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004931f1: 73 4b                                           jae    0x49323e
  004931f3: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004931f5: 85 c0                                           test   eax,eax
  004931f7: 74 1c                                           je     0x493215
  004931f9: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004931fc: 8a 01                                           mov    al,BYTE PTR [ecx]
  004931fe: 84 c0                                           test   al,al
  00493200: 74 0a                                           je     0x49320c
  00493202: 3c ff                                           cmp    al,0xff
  00493204: 74 06                                           je     0x49320c
  00493206: fe c8                                           dec    al
  00493208: 88 01                                           mov    BYTE PTR [ecx],al
  0049320a: eb 09                                           jmp    0x493215
  0049320c: 51                                              push   ecx
  0049320d: e8 4e ee fa ff                                  call   0x442060
  00493212: 83 c4 04                                        add    esp,0x4
  00493215: 33 c9                                           xor    ecx,ecx
  00493217: 89 0b                                           mov    DWORD PTR [ebx],ecx
  00493219: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  0049321c: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0049321f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00493222: 3b c1                                           cmp    eax,ecx
  00493224: 75 05                                           jne    0x49322b
  00493226: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049322b: 89 03                                           mov    DWORD PTR [ebx],eax
  0049322d: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00493230: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00493233: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00493236: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00493239: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0049323c: eb 3b                                           jmp    0x493279
  0049323e: 6a 01                                           push   0x1
  00493240: 57                                              push   edi
  00493241: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00493244: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0049324a: 84 c0                                           test   al,al
  0049324c: 74 2b                                           je     0x493279
  0049324e: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00493251: 85 f6                                           test   esi,esi
  00493253: 75 06                                           jne    0x49325b
  00493255: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0049325b: 8b cf                                           mov    ecx,edi
  0049325d: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  0049325f: 8b c1                                           mov    eax,ecx
  00493261: c1 e9 02                                        shr    ecx,0x2
  00493264: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00493266: 8b c8                                           mov    ecx,eax
  00493268: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0049326b: 83 e1 03                                        and    ecx,0x3
  0049326e: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00493270: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  00493272: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00493275: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  00493279: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0049327c: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049327f: 83 c6 14                                        add    esi,0x14
  00493282: 83 c3 14                                        add    ebx,0x14
  00493285: 3b f0                                           cmp    esi,eax
  00493287: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0049328a: 0f 85 a8 fe ff ff                               jne    0x493138
  00493290: 5f                                              pop    edi
  00493291: 5b                                              pop    ebx
  00493292: 5e                                              pop    esi
  00493293: 8b e5                                           mov    esp,ebp
  00493295: 5d                                              pop    ebp
  00493296: c3                                              ret
  004932a0: 55                                              push   ebp
  004932a1: 8b ec                                           mov    ebp,esp
  004932a3: 83 ec 08                                        sub    esp,0x8
  004932a6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004932a9: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  004932ac: 0f 84 2c 01 00 00                               je     0x4933de
  004932b2: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004932b5: 53                                              push   ebx
  004932b6: 56                                              push   esi
  004932b7: 57                                              push   edi
  004932b8: 8d 59 08                                        lea    ebx,[ecx+0x8]
  004932bb: 8d 70 08                                        lea    esi,[eax+0x8]
  004932be: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004932c1: 8a 50 ec                                        mov    dl,BYTE PTR [eax-0x14]
  004932c4: 83 e8 14                                        sub    eax,0x14
  004932c7: 83 e9 14                                        sub    ecx,0x14
  004932ca: 83 ee 14                                        sub    esi,0x14
  004932cd: 88 11                                           mov    BYTE PTR [ecx],dl
  004932cf: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004932d2: 66 8b 46 fa                                     mov    ax,WORD PTR [esi-0x6]
  004932d6: 83 eb 14                                        sub    ebx,0x14
  004932d9: 66 89 43 fa                                     mov    WORD PTR [ebx-0x6],ax
  004932dd: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004932e0: 89 4d 14                                        mov    DWORD PTR [ebp+0x14],ecx
  004932e3: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004932e9: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004932eb: 3b c7                                           cmp    eax,edi
  004932ed: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004932f0: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004932f3: 73 05                                           jae    0x4932fa
  004932f5: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004932f8: 8b f8                                           mov    edi,eax
  004932fa: 8d 56 fc                                        lea    edx,[esi-0x4]
  004932fd: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00493300: 3b ca                                           cmp    ecx,edx
  00493302: 75 1d                                           jne    0x493321
  00493304: 50                                              push   eax
  00493305: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00493308: 57                                              push   edi
  00493309: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0049330f: 6a 00                                           push   0x0
  00493311: 6a 00                                           push   0x0
  00493313: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00493316: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0049331c: e9 a2 00 00 00                                  jmp    0x4933c3
  00493321: 85 ff                                           test   edi,edi
  00493323: 76 60                                           jbe    0x493385
  00493325: 3b 7e 04                                        cmp    edi,DWORD PTR [esi+0x4]
  00493328: 75 5b                                           jne    0x493385
  0049332a: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049332c: 85 c0                                           test   eax,eax
  0049332e: 75 05                                           jne    0x493335
  00493330: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00493335: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00493339: 73 4a                                           jae    0x493385
  0049333b: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0049333d: 85 c0                                           test   eax,eax
  0049333f: 74 1c                                           je     0x49335d
  00493341: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00493344: 8a 01                                           mov    al,BYTE PTR [ecx]
  00493346: 84 c0                                           test   al,al
  00493348: 74 0a                                           je     0x493354
  0049334a: 3c ff                                           cmp    al,0xff
  0049334c: 74 06                                           je     0x493354
  0049334e: fe c8                                           dec    al
  00493350: 88 01                                           mov    BYTE PTR [ecx],al
  00493352: eb 09                                           jmp    0x49335d
  00493354: 51                                              push   ecx
  00493355: e8 06 ed fa ff                                  call   0x442060
  0049335a: 83 c4 04                                        add    esp,0x4
  0049335d: 33 c9                                           xor    ecx,ecx
  0049335f: 89 0b                                           mov    DWORD PTR [ebx],ecx
  00493361: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00493364: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00493367: 8b 06                                           mov    eax,DWORD PTR [esi]
  00493369: 3b c1                                           cmp    eax,ecx
  0049336b: 75 05                                           jne    0x493372
  0049336d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00493372: 89 03                                           mov    DWORD PTR [ebx],eax
  00493374: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00493377: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0049337a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049337d: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00493380: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00493383: eb 3e                                           jmp    0x4933c3
  00493385: 6a 01                                           push   0x1
  00493387: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049338a: 57                                              push   edi
  0049338b: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00493391: 84 c0                                           test   al,al
  00493393: 74 2e                                           je     0x4933c3
  00493395: 8b 36                                           mov    esi,DWORD PTR [esi]
  00493397: 85 f6                                           test   esi,esi
  00493399: 75 06                                           jne    0x4933a1
  0049339b: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004933a1: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004933a4: 8b cf                                           mov    ecx,edi
  004933a6: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004933a8: 8b d1                                           mov    edx,ecx
  004933aa: c1 e9 02                                        shr    ecx,0x2
  004933ad: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004933af: 8b ca                                           mov    ecx,edx
  004933b1: 83 e1 03                                        and    ecx,0x3
  004933b4: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004933b6: 50                                              push   eax
  004933b7: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004933ba: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004933c0: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  004933c3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004933c6: 3b 45 0c                                        cmp    eax,DWORD PTR [ebp+0xc]
  004933c9: 0f 85 ef fe ff ff                               jne    0x4932be
  004933cf: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004933d2: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004933d5: 5f                                              pop    edi
  004933d6: 5e                                              pop    esi
  004933d7: 89 08                                           mov    DWORD PTR [eax],ecx
  004933d9: 5b                                              pop    ebx
  004933da: 8b e5                                           mov    esp,ebp
  004933dc: 5d                                              pop    ebp
  004933dd: c3                                              ret
  004933de: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004933e1: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004933e4: 89 10                                           mov    DWORD PTR [eax],edx
  004933e6: 8b e5                                           mov    esp,ebp
  004933e8: 5d                                              pop    ebp
  004933e9: c3                                              ret
  00495ba0: 55                                              push   ebp
  00495ba1: 8b ec                                           mov    ebp,esp
  00495ba3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00495ba6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00495ba9: 89 08                                           mov    DWORD PTR [eax],ecx
  00495bab: 5d                                              pop    ebp
  00495bac: c2 04 00                                        ret    0x4
  00495bb0: 55                                              push   ebp
  00495bb1: 8b ec                                           mov    ebp,esp
  00495bb3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00495bb6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00495bb8: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00495bbb: 8d 14 81                                        lea    edx,[ecx+eax*4]
  00495bbe: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00495bc1: 89 10                                           mov    DWORD PTR [eax],edx
  00495bc3: 5d                                              pop    ebp
  00495bc4: c2 08 00                                        ret    0x8
  00496330: 55                                              push   ebp
  00496331: 8b ec                                           mov    ebp,esp
  00496333: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00496336: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00496339: 89 08                                           mov    DWORD PTR [eax],ecx
  0049633b: 5d                                              pop    ebp
  0049633c: c2 04 00                                        ret    0x4
  00496340: 55                                              push   ebp
  00496341: 8b ec                                           mov    ebp,esp
  00496343: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00496346: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00496348: 8d 04 40                                        lea    eax,[eax+eax*2]
  0049634b: 8d 14 81                                        lea    edx,[ecx+eax*4]
  0049634e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00496351: 89 10                                           mov    DWORD PTR [eax],edx
  00496353: 5d                                              pop    ebp
  00496354: c2 08 00                                        ret    0x8
  00496ac0: 55                                              push   ebp
  00496ac1: 8b ec                                           mov    ebp,esp
  00496ac3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00496ac6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00496ac9: 89 08                                           mov    DWORD PTR [eax],ecx
  00496acb: 5d                                              pop    ebp
  00496acc: c2 04 00                                        ret    0x4
  00496ad0: 55                                              push   ebp
  00496ad1: 8b ec                                           mov    ebp,esp
  00496ad3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00496ad6: 8b d0                                           mov    edx,eax
  00496ad8: c1 e2 05                                        shl    edx,0x5
  00496adb: 03 d0                                           add    edx,eax
  00496add: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00496adf: 8d 0c d0                                        lea    ecx,[eax+edx*8]
  00496ae2: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00496ae5: 89 08                                           mov    DWORD PTR [eax],ecx
  00496ae7: 5d                                              pop    ebp
  00496ae8: c2 08 00                                        ret    0x8
  00496af0: c2 08 00                                        ret    0x8
  004972e0: 55                                              push   ebp
  004972e1: 8b ec                                           mov    ebp,esp
  004972e3: 53                                              push   ebx
  004972e4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004972e7: 8a 03                                           mov    al,BYTE PTR [ebx]
  004972e9: 56                                              push   esi
  004972ea: 8b f1                                           mov    esi,ecx
  004972ec: 57                                              push   edi
  004972ed: 88 06                                           mov    BYTE PTR [esi],al
  004972ef: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004972f2: 33 ff                                           xor    edi,edi
  004972f4: 3b c7                                           cmp    eax,edi
  004972f6: 75 04                                           jne    0x4972fc
  004972f8: 33 d2                                           xor    edx,edx
  004972fa: eb 16                                           jmp    0x497312
  004972fc: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004972ff: 2b c8                                           sub    ecx,eax
  00497301: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00497306: f7 e9                                           imul   ecx
  00497308: c1 fa 03                                        sar    edx,0x3
  0049730b: 8b c2                                           mov    eax,edx
  0049730d: c1 e8 1f                                        shr    eax,0x1f
  00497310: 03 d0                                           add    edx,eax
  00497312: 3b d7                                           cmp    edx,edi
  00497314: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00497317: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  0049731a: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049731d: 74 2d                                           je     0x49734c
  0049731f: 8d 3c d2                                        lea    edi,[edx+edx*8]
  00497322: c1 e7 02                                        shl    edi,0x2
  00497325: 57                                              push   edi
  00497326: e8 c5 ac fa ff                                  call   0x441ff0
  0049732b: 83 c4 04                                        add    esp,0x4
  0049732e: 03 f8                                           add    edi,eax
  00497330: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00497333: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00497336: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00497339: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049733c: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  0049733f: 50                                              push   eax
  00497340: 51                                              push   ecx
  00497341: 53                                              push   ebx
  00497342: 8b ce                                           mov    ecx,esi
  00497344: e8 d7 15 00 00                                  call   0x498920
  00497349: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049734c: 5f                                              pop    edi
  0049734d: 8b c6                                           mov    eax,esi
  0049734f: 5e                                              pop    esi
  00497350: 5b                                              pop    ebx
  00497351: 5d                                              pop    ebp
  00497352: c2 04 00                                        ret    0x4
  00497360: 55                                              push   ebp
  00497361: 8b ec                                           mov    ebp,esp
  00497363: 6a ff                                           push   0xffffffff
  00497365: 68 31 ad 4d 00                                  push   0x4dad31
  0049736a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00497370: 50                                              push   eax
  00497371: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00497378: 83 ec 08                                        sub    esp,0x8
  0049737b: 53                                              push   ebx
  0049737c: 56                                              push   esi
  0049737d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00497380: 57                                              push   edi
  00497381: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00497384: 33 db                                           xor    ebx,ebx
  00497386: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00497389: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049738c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0049738f: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  00497392: 0f 86 a8 00 00 00                               jbe    0x497440
  00497398: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049739b: 3b f3                                           cmp    esi,ebx
  0049739d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004973a1: 74 3d                                           je     0x4973e0
  004973a3: 8a 07                                           mov    al,BYTE PTR [edi]
  004973a5: 88 06                                           mov    BYTE PTR [esi],al
  004973a7: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  004973aa: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004973ad: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004973b0: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004973b5: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004973b7: 51                                              push   ecx
  004973b8: 53                                              push   ebx
  004973b9: 57                                              push   edi
  004973ba: 8b ce                                           mov    ecx,esi
  004973bc: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004973c2: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  004973c5: 89 56 10                                        mov    DWORD PTR [esi+0x10],edx
  004973c8: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  004973cb: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004973ce: 8b 4f 18                                        mov    ecx,DWORD PTR [edi+0x18]
  004973d1: 89 4e 18                                        mov    DWORD PTR [esi+0x18],ecx
  004973d4: 8b 57 1c                                        mov    edx,DWORD PTR [edi+0x1c]
  004973d7: 89 56 1c                                        mov    DWORD PTR [esi+0x1c],edx
  004973da: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  004973dd: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004973e0: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004973e3: 49                                              dec    ecx
  004973e4: 83 c6 24                                        add    esi,0x24
  004973e7: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004973ea: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004973ed: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004973f0: eb 9d                                           jmp    0x49738f
  00497440: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00497443: 5f                                              pop    edi
  00497444: 8b c6                                           mov    eax,esi
  00497446: 5e                                              pop    esi
  00497447: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049744e: 5b                                              pop    ebx
  0049744f: 8b e5                                           mov    esp,ebp
  00497451: 5d                                              pop    ebp
  00497452: c2 0c 00                                        ret    0xc
  00497460: 55                                              push   ebp
  00497461: 8b ec                                           mov    ebp,esp
  00497463: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00497466: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00497468: 8d 04 c0                                        lea    eax,[eax+eax*8]
  0049746b: c1 e0 02                                        shl    eax,0x2
  0049746e: 2b c8                                           sub    ecx,eax
  00497470: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00497473: 89 08                                           mov    DWORD PTR [eax],ecx
  00497475: 5d                                              pop    ebp
  00497476: c2 08 00                                        ret    0x8
  00497480: 55                                              push   ebp
  00497481: 8b ec                                           mov    ebp,esp
  00497483: 56                                              push   esi
  00497484: 57                                              push   edi
  00497485: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00497488: 8a 07                                           mov    al,BYTE PTR [edi]
  0049748a: 8b f1                                           mov    esi,ecx
  0049748c: 88 06                                           mov    BYTE PTR [esi],al
  0049748e: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00497491: 33 d2                                           xor    edx,edx
  00497493: 3b ca                                           cmp    ecx,edx
  00497495: 75 04                                           jne    0x49749b
  00497497: 33 c0                                           xor    eax,eax
  00497499: eb 08                                           jmp    0x4974a3
  0049749b: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0049749e: 2b c1                                           sub    eax,ecx
  004974a0: c1 f8 04                                        sar    eax,0x4
  004974a3: 3b c2                                           cmp    eax,edx
  004974a5: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004974a8: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004974ab: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004974ae: 74 36                                           je     0x4974e6
  004974b0: c1 e0 04                                        shl    eax,0x4
  004974b3: 53                                              push   ebx
  004974b4: 8b d8                                           mov    ebx,eax
  004974b6: 53                                              push   ebx
  004974b7: e8 34 ab fa ff                                  call   0x441ff0
  004974bc: 83 c4 04                                        add    esp,0x4
  004974bf: 03 d8                                           add    ebx,eax
  004974c1: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004974c4: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004974c7: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004974ca: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004974cd: 8b 7f 04                                        mov    edi,DWORD PTR [edi+0x4]
  004974d0: 50                                              push   eax
  004974d1: 51                                              push   ecx
  004974d2: 57                                              push   edi
  004974d3: 8b ce                                           mov    ecx,esi
  004974d5: e8 46 15 00 00                                  call   0x498a20
  004974da: 5b                                              pop    ebx
  004974db: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004974de: 5f                                              pop    edi
  004974df: 8b c6                                           mov    eax,esi
  004974e1: 5e                                              pop    esi
  004974e2: 5d                                              pop    ebp
  004974e3: c2 04 00                                        ret    0x4
  004974e6: 5f                                              pop    edi
  004974e7: 8b c6                                           mov    eax,esi
  004974e9: 5e                                              pop    esi
  004974ea: 5d                                              pop    ebp
  004974eb: c2 04 00                                        ret    0x4
  00497560: 55                                              push   ebp
  00497561: 8b ec                                           mov    ebp,esp
  00497563: 53                                              push   ebx
  00497564: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00497567: 8a 03                                           mov    al,BYTE PTR [ebx]
  00497569: 56                                              push   esi
  0049756a: 8b f1                                           mov    esi,ecx
  0049756c: 57                                              push   edi
  0049756d: 88 06                                           mov    BYTE PTR [esi],al
  0049756f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00497572: 33 ff                                           xor    edi,edi
  00497574: 3b c7                                           cmp    eax,edi
  00497576: 75 04                                           jne    0x49757c
  00497578: 33 d2                                           xor    edx,edx
  0049757a: eb 15                                           jmp    0x497591
  0049757c: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049757f: 2b c8                                           sub    ecx,eax
  00497581: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00497586: f7 e9                                           imul   ecx
  00497588: d1 fa                                           sar    edx,1
  0049758a: 8b c2                                           mov    eax,edx
  0049758c: c1 e8 1f                                        shr    eax,0x1f
  0049758f: 03 d0                                           add    edx,eax
  00497591: 3b d7                                           cmp    edx,edi
  00497593: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00497596: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  00497599: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049759c: 74 2d                                           je     0x4975cb
  0049759e: 8d 3c 52                                        lea    edi,[edx+edx*2]
  004975a1: c1 e7 02                                        shl    edi,0x2
  004975a4: 57                                              push   edi
  004975a5: e8 46 aa fa ff                                  call   0x441ff0
  004975aa: 83 c4 04                                        add    esp,0x4
  004975ad: 03 f8                                           add    edi,eax
  004975af: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004975b2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004975b5: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004975b8: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004975bb: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004975be: 50                                              push   eax
  004975bf: 51                                              push   ecx
  004975c0: 53                                              push   ebx
  004975c1: 8b ce                                           mov    ecx,esi
  004975c3: e8 a8 14 00 00                                  call   0x498a70
  004975c8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004975cb: 5f                                              pop    edi
  004975cc: 8b c6                                           mov    eax,esi
  004975ce: 5e                                              pop    esi
  004975cf: 5b                                              pop    ebx
  004975d0: 5d                                              pop    ebp
  004975d1: c2 04 00                                        ret    0x4
  004975e0: 55                                              push   ebp
  004975e1: 8b ec                                           mov    ebp,esp
  004975e3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004975e6: 85 c0                                           test   eax,eax
  004975e8: 76 30                                           jbe    0x49761a
  004975ea: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004975ed: 53                                              push   ebx
  004975ee: 56                                              push   esi
  004975ef: 8b c8                                           mov    ecx,eax
  004975f1: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004975f4: 57                                              push   edi
  004975f5: 85 c0                                           test   eax,eax
  004975f7: 74 14                                           je     0x49760d
  004975f9: 8b f2                                           mov    esi,edx
  004975fb: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  004975fd: 8b f8                                           mov    edi,eax
  004975ff: 89 1f                                           mov    DWORD PTR [edi],ebx
  00497601: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00497604: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00497607: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  0049760a: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  0049760d: 83 c0 0c                                        add    eax,0xc
  00497610: 49                                              dec    ecx
  00497611: 75 e2                                           jne    0x4975f5
  00497613: 5f                                              pop    edi
  00497614: 5e                                              pop    esi
  00497615: 5b                                              pop    ebx
  00497616: 5d                                              pop    ebp
  00497617: c2 0c 00                                        ret    0xc
  0049761a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049761d: 5d                                              pop    ebp
  0049761e: c2 0c 00                                        ret    0xc
  00497630: 55                                              push   ebp
  00497631: 8b ec                                           mov    ebp,esp
  00497633: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00497636: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00497638: 8d 04 40                                        lea    eax,[eax+eax*2]
  0049763b: c1 e0 02                                        shl    eax,0x2
  0049763e: 2b c8                                           sub    ecx,eax
  00497640: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00497643: 89 08                                           mov    DWORD PTR [eax],ecx
  00497645: 5d                                              pop    ebp
  00497646: c2 08 00                                        ret    0x8
  00497650: 55                                              push   ebp
  00497651: 8b ec                                           mov    ebp,esp
  00497653: 6a ff                                           push   0xffffffff
  00497655: 68 7e ad 4d 00                                  push   0x4dad7e
  0049765a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00497660: 50                                              push   eax
  00497661: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00497668: 83 ec 08                                        sub    esp,0x8
  0049766b: 53                                              push   ebx
  0049766c: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  0049766f: 56                                              push   esi
  00497670: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00497673: 57                                              push   edi
  00497674: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00497677: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049767a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049767d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00497684: 85 ff                                           test   edi,edi
  00497686: 0f 86 54 01 00 00                               jbe    0x4977e0
  0049768c: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049768f: 85 f6                                           test   esi,esi
  00497691: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00497695: 74 08                                           je     0x49769f
  00497697: 53                                              push   ebx
  00497698: 8b ce                                           mov    ecx,esi
  0049769a: e8 61 01 00 00                                  call   0x497800
  0049769f: 4f                                              dec    edi
  004976a0: 81 c6 08 01 00 00                               add    esi,0x108
  004976a6: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004976aa: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004976ad: eb d5                                           jmp    0x497684
  004977e0: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004977e3: 5f                                              pop    edi
  004977e4: 8b c6                                           mov    eax,esi
  004977e6: 5e                                              pop    esi
  004977e7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004977ee: 5b                                              pop    ebx
  004977ef: 8b e5                                           mov    esp,ebp
  004977f1: 5d                                              pop    ebp
  004977f2: c2 0c 00                                        ret    0xc
  00497bd0: 55                                              push   ebp
  00497bd1: 8b ec                                           mov    ebp,esp
  00497bd3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00497bd6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00497bd8: 8b d0                                           mov    edx,eax
  00497bda: c1 e2 05                                        shl    edx,0x5
  00497bdd: 03 d0                                           add    edx,eax
  00497bdf: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00497be2: c1 e2 03                                        shl    edx,0x3
  00497be5: 2b ca                                           sub    ecx,edx
  00497be7: 89 08                                           mov    DWORD PTR [eax],ecx
  00497be9: 5d                                              pop    ebp
  00497bea: c2 08 00                                        ret    0x8
  00497ca0: 55                                              push   ebp
  00497ca1: 8b ec                                           mov    ebp,esp
  00497ca3: 6a ff                                           push   0xffffffff
  00497ca5: 68 e1 ad 4d 00                                  push   0x4dade1
  00497caa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00497cb0: 50                                              push   eax
  00497cb1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00497cb8: 83 ec 08                                        sub    esp,0x8
  00497cbb: 53                                              push   ebx
  00497cbc: 56                                              push   esi
  00497cbd: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00497cc0: 57                                              push   edi
  00497cc1: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00497cc4: 33 db                                           xor    ebx,ebx
  00497cc6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00497cc9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00497ccc: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00497ccf: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  00497cd2: 0f 84 a4 00 00 00                               je     0x497d7c
  00497cd8: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00497cdb: 3b f3                                           cmp    esi,ebx
  00497cdd: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00497ce1: 74 3d                                           je     0x497d20
  00497ce3: 8a 07                                           mov    al,BYTE PTR [edi]
  00497ce5: 88 06                                           mov    BYTE PTR [esi],al
  00497ce7: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00497cea: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00497ced: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00497cf0: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00497cf5: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00497cf7: 51                                              push   ecx
  00497cf8: 53                                              push   ebx
  00497cf9: 57                                              push   edi
  00497cfa: 8b ce                                           mov    ecx,esi
  00497cfc: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00497d02: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  00497d05: 89 56 10                                        mov    DWORD PTR [esi+0x10],edx
  00497d08: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  00497d0b: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  00497d0e: 8b 4f 18                                        mov    ecx,DWORD PTR [edi+0x18]
  00497d11: 89 4e 18                                        mov    DWORD PTR [esi+0x18],ecx
  00497d14: 8b 57 1c                                        mov    edx,DWORD PTR [edi+0x1c]
  00497d17: 89 56 1c                                        mov    DWORD PTR [esi+0x1c],edx
  00497d1a: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00497d1d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00497d20: 83 c6 24                                        add    esi,0x24
  00497d23: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00497d26: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  00497d29: 83 c7 24                                        add    edi,0x24
  00497d2c: eb a1                                           jmp    0x497ccf
  00497d7c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00497d7f: 5f                                              pop    edi
  00497d80: 8b c6                                           mov    eax,esi
  00497d82: 5e                                              pop    esi
  00497d83: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00497d8a: 5b                                              pop    ebx
  00497d8b: 8b e5                                           mov    esp,ebp
  00497d8d: 5d                                              pop    ebp
  00497d8e: c2 0c 00                                        ret    0xc
  00497da0: 55                                              push   ebp
  00497da1: 8b ec                                           mov    ebp,esp
  00497da3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00497da6: 53                                              push   ebx
  00497da7: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00497daa: 3b d8                                           cmp    ebx,eax
  00497dac: 0f 84 6c 01 00 00                               je     0x497f1e
  00497db2: 56                                              push   esi
  00497db3: 57                                              push   edi
  00497db4: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00497db9: 8b 30                                           mov    esi,DWORD PTR [eax]
  00497dbb: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00497dbe: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00497dc1: 8b f9                                           mov    edi,ecx
  00497dc3: 3b f7                                           cmp    esi,edi
  00497dc5: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00497dc8: 73 05                                           jae    0x497dcf
  00497dca: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00497dcd: 8b fe                                           mov    edi,esi
  00497dcf: 3b d8                                           cmp    ebx,eax
  00497dd1: 75 6d                                           jne    0x497e40
  00497dd3: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  00497dd6: 73 0b                                           jae    0x497de3
  00497dd8: 8b cb                                           mov    ecx,ebx
  00497dda: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00497de0: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00497de3: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00497de6: 2b cf                                           sub    ecx,edi
  00497de8: 3b ce                                           cmp    ecx,esi
  00497dea: 73 02                                           jae    0x497dee
  00497dec: 8b f1                                           mov    esi,ecx
  00497dee: 85 f6                                           test   esi,esi
  00497df0: 0f 86 fa 00 00 00                               jbe    0x497ef0
  00497df6: 8b cb                                           mov    ecx,ebx
  00497df8: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00497dfe: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00497e01: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00497e04: 2b d6                                           sub    edx,esi
  00497e06: 8d 04 39                                        lea    eax,[ecx+edi*1]
  00497e09: 2b d7                                           sub    edx,edi
  00497e0b: 52                                              push   edx
  00497e0c: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00497e0f: 51                                              push   ecx
  00497e10: 50                                              push   eax
  00497e11: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00497e17: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00497e1a: 83 c4 0c                                        add    esp,0xc
  00497e1d: 6a 00                                           push   0x0
  00497e1f: 2b fe                                           sub    edi,esi
  00497e21: 57                                              push   edi
  00497e22: 8b cb                                           mov    ecx,ebx
  00497e24: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00497e2a: 84 c0                                           test   al,al
  00497e2c: 0f 84 bb 00 00 00                               je     0x497eed
  00497e32: 57                                              push   edi
  00497e33: 8b cb                                           mov    ecx,ebx
  00497e35: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00497e3b: e9 ad 00 00 00                                  jmp    0x497eed
  00497e40: 33 f6                                           xor    esi,esi
  00497e42: 3b fe                                           cmp    edi,esi
  00497e44: 76 68                                           jbe    0x497eae
  00497e46: 3b f9                                           cmp    edi,ecx
  00497e48: 75 64                                           jne    0x497eae
  00497e4a: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00497e4d: 3b ce                                           cmp    ecx,esi
  00497e4f: 75 06                                           jne    0x497e57
  00497e51: 8b 0d d8 e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4d8
  00497e57: 80 79 ff fe                                     cmp    BYTE PTR [ecx-0x1],0xfe
  00497e5b: 73 51                                           jae    0x497eae
  00497e5d: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00497e60: 3b ce                                           cmp    ecx,esi
  00497e62: 74 20                                           je     0x497e84
  00497e64: 8d 51 ff                                        lea    edx,[ecx-0x1]
  00497e67: 8a 0a                                           mov    cl,BYTE PTR [edx]
  00497e69: 84 c9                                           test   cl,cl
  00497e6b: 74 0b                                           je     0x497e78
  00497e6d: 80 f9 ff                                        cmp    cl,0xff
  00497e70: 74 06                                           je     0x497e78
  00497e72: fe c9                                           dec    cl
  00497e74: 88 0a                                           mov    BYTE PTR [edx],cl
  00497e76: eb 0c                                           jmp    0x497e84
  00497e78: 52                                              push   edx
  00497e79: e8 e2 a1 fa ff                                  call   0x442060
  00497e7e: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00497e81: 83 c4 04                                        add    esp,0x4
  00497e84: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00497e87: 89 73 08                                        mov    DWORD PTR [ebx+0x8],esi
  00497e8a: 89 73 0c                                        mov    DWORD PTR [ebx+0xc],esi
  00497e8d: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00497e90: 3b ce                                           cmp    ecx,esi
  00497e92: 75 06                                           jne    0x497e9a
  00497e94: 8b 0d d8 e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4d8
  00497e9a: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00497e9d: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  00497ea0: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00497ea3: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  00497ea6: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00497ea9: fe 41 ff                                        inc    BYTE PTR [ecx-0x1]
  00497eac: eb 42                                           jmp    0x497ef0
  00497eae: 6a 01                                           push   0x1
  00497eb0: 57                                              push   edi
  00497eb1: 8b cb                                           mov    ecx,ebx
  00497eb3: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00497eb9: 84 c0                                           test   al,al
  00497ebb: 74 30                                           je     0x497eed
  00497ebd: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00497ec0: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  00497ec3: 85 f6                                           test   esi,esi
  00497ec5: 75 06                                           jne    0x497ecd
  00497ec7: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00497ecd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00497ed0: 8b cf                                           mov    ecx,edi
  00497ed2: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00497ed5: 8b d1                                           mov    edx,ecx
  00497ed7: c1 e9 02                                        shr    ecx,0x2
  00497eda: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00497edc: 8b ca                                           mov    ecx,edx
  00497ede: 83 e1 03                                        and    ecx,0x3
  00497ee1: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00497ee3: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00497ee6: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00497ee9: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  00497eed: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00497ef0: 8b 50 10                                        mov    edx,DWORD PTR [eax+0x10]
  00497ef3: 89 53 10                                        mov    DWORD PTR [ebx+0x10],edx
  00497ef6: 8b 48 14                                        mov    ecx,DWORD PTR [eax+0x14]
  00497ef9: 89 4b 14                                        mov    DWORD PTR [ebx+0x14],ecx
  00497efc: 8b 50 18                                        mov    edx,DWORD PTR [eax+0x18]
  00497eff: 89 53 18                                        mov    DWORD PTR [ebx+0x18],edx
  00497f02: 8b 48 1c                                        mov    ecx,DWORD PTR [eax+0x1c]
  00497f05: 89 4b 1c                                        mov    DWORD PTR [ebx+0x1c],ecx
  00497f08: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00497f0b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00497f0e: 89 53 20                                        mov    DWORD PTR [ebx+0x20],edx
  00497f11: 83 c3 24                                        add    ebx,0x24
  00497f14: 3b d8                                           cmp    ebx,eax
  00497f16: 0f 85 98 fe ff ff                               jne    0x497db4
  00497f1c: 5f                                              pop    edi
  00497f1d: 5e                                              pop    esi
  00497f1e: 5b                                              pop    ebx
  00497f1f: 5d                                              pop    ebp
  00497f20: c3                                              ret
  00497f30: 55                                              push   ebp
  00497f31: 8b ec                                           mov    ebp,esp
  00497f33: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00497f36: 56                                              push   esi
  00497f37: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00497f3a: 3b c6                                           cmp    eax,esi
  00497f3c: 0f 84 f9 00 00 00                               je     0x49803b
  00497f42: 53                                              push   ebx
  00497f43: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  00497f46: 57                                              push   edi
  00497f47: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00497f4c: 8b 4e e4                                        mov    ecx,DWORD PTR [esi-0x1c]
  00497f4f: 8b 00                                           mov    eax,DWORD PTR [eax]
  00497f51: 83 ee 24                                        sub    esi,0x24
  00497f54: 8b f9                                           mov    edi,ecx
  00497f56: 83 eb 24                                        sub    ebx,0x24
  00497f59: 3b c7                                           cmp    eax,edi
  00497f5b: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  00497f5e: 89 7d 14                                        mov    DWORD PTR [ebp+0x14],edi
  00497f61: 73 05                                           jae    0x497f68
  00497f63: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  00497f66: 8b f8                                           mov    edi,eax
  00497f68: 3b de                                           cmp    ebx,esi
  00497f6a: 75 1b                                           jne    0x497f87
  00497f6c: 50                                              push   eax
  00497f6d: 57                                              push   edi
  00497f6e: 8b cb                                           mov    ecx,ebx
  00497f70: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00497f76: 6a 00                                           push   0x0
  00497f78: 6a 00                                           push   0x0
  00497f7a: 8b cb                                           mov    ecx,ebx
  00497f7c: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00497f82: e9 83 00 00 00                                  jmp    0x49800a
  00497f87: 85 ff                                           test   edi,edi
  00497f89: 76 40                                           jbe    0x497fcb
  00497f8b: 3b f9                                           cmp    edi,ecx
  00497f8d: 75 3c                                           jne    0x497fcb
  00497f8f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00497f92: 85 c0                                           test   eax,eax
  00497f94: 75 05                                           jne    0x497f9b
  00497f96: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00497f9b: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00497f9f: 73 2a                                           jae    0x497fcb
  00497fa1: 6a 01                                           push   0x1
  00497fa3: 8b cb                                           mov    ecx,ebx
  00497fa5: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00497fab: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00497fae: 85 c0                                           test   eax,eax
  00497fb0: 75 05                                           jne    0x497fb7
  00497fb2: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00497fb7: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00497fba: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00497fbd: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00497fc0: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00497fc3: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00497fc6: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00497fc9: eb 3f                                           jmp    0x49800a
  00497fcb: 6a 01                                           push   0x1
  00497fcd: 57                                              push   edi
  00497fce: 8b cb                                           mov    ecx,ebx
  00497fd0: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00497fd6: 84 c0                                           test   al,al
  00497fd8: 74 30                                           je     0x49800a
  00497fda: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00497fdd: 85 f6                                           test   esi,esi
  00497fdf: 75 06                                           jne    0x497fe7
  00497fe1: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00497fe7: 8b cf                                           mov    ecx,edi
  00497fe9: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00497fec: 8b c1                                           mov    eax,ecx
  00497fee: c1 e9 02                                        shr    ecx,0x2
  00497ff1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00497ff3: 8b c8                                           mov    ecx,eax
  00497ff5: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  00497ff8: 83 e1 03                                        and    ecx,0x3
  00497ffb: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00497ffd: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00498000: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00498003: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00498006: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  0049800a: 8b 56 10                                        mov    edx,DWORD PTR [esi+0x10]
  0049800d: 89 53 10                                        mov    DWORD PTR [ebx+0x10],edx
  00498010: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  00498013: 89 43 14                                        mov    DWORD PTR [ebx+0x14],eax
  00498016: 8b 4e 18                                        mov    ecx,DWORD PTR [esi+0x18]
  00498019: 89 4b 18                                        mov    DWORD PTR [ebx+0x18],ecx
  0049801c: 8b 56 1c                                        mov    edx,DWORD PTR [esi+0x1c]
  0049801f: 89 53 1c                                        mov    DWORD PTR [ebx+0x1c],edx
  00498022: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00498025: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  00498028: 3b 75 0c                                        cmp    esi,DWORD PTR [ebp+0xc]
  0049802b: 0f 85 16 ff ff ff                               jne    0x497f47
  00498031: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00498034: 5f                                              pop    edi
  00498035: 89 18                                           mov    DWORD PTR [eax],ebx
  00498037: 5b                                              pop    ebx
  00498038: 5e                                              pop    esi
  00498039: 5d                                              pop    ebp
  0049803a: c3                                              ret
  0049803b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049803e: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00498041: 89 08                                           mov    DWORD PTR [eax],ecx
  00498043: 5e                                              pop    esi
  00498044: 5d                                              pop    ebp
  00498045: c3                                              ret
  00498130: 55                                              push   ebp
  00498131: 8b ec                                           mov    ebp,esp
  00498133: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00498136: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00498139: 3b ca                                           cmp    ecx,edx
  0049813b: 74 2f                                           je     0x49816c
  0049813d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00498140: 53                                              push   ebx
  00498141: 56                                              push   esi
  00498142: 57                                              push   edi
  00498143: 85 c0                                           test   eax,eax
  00498145: 74 14                                           je     0x49815b
  00498147: 8b f1                                           mov    esi,ecx
  00498149: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0049814b: 8b f8                                           mov    edi,eax
  0049814d: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049814f: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00498152: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00498155: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  00498158: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  0049815b: 83 c1 0c                                        add    ecx,0xc
  0049815e: 83 c0 0c                                        add    eax,0xc
  00498161: 3b ca                                           cmp    ecx,edx
  00498163: 75 de                                           jne    0x498143
  00498165: 5f                                              pop    edi
  00498166: 5e                                              pop    esi
  00498167: 5b                                              pop    ebx
  00498168: 5d                                              pop    ebp
  00498169: c2 0c 00                                        ret    0xc
  0049816c: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049816f: 5d                                              pop    ebp
  00498170: c2 0c 00                                        ret    0xc
  00498180: 55                                              push   ebp
  00498181: 8b ec                                           mov    ebp,esp
  00498183: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00498186: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00498189: 3b c1                                           cmp    eax,ecx
  0049818b: 74 24                                           je     0x4981b1
  0049818d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00498190: 53                                              push   ebx
  00498191: 56                                              push   esi
  00498192: 57                                              push   edi
  00498193: 8b f2                                           mov    esi,edx
  00498195: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00498197: 8b f8                                           mov    edi,eax
  00498199: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049819b: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  0049819e: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  004981a1: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  004981a4: 83 c0 0c                                        add    eax,0xc
  004981a7: 3b c1                                           cmp    eax,ecx
  004981a9: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  004981ac: 75 e5                                           jne    0x498193
  004981ae: 5f                                              pop    edi
  004981af: 5e                                              pop    esi
  004981b0: 5b                                              pop    ebx
  004981b1: 5d                                              pop    ebp
  004981b2: c3                                              ret
  004981c0: 55                                              push   ebp
  004981c1: 8b ec                                           mov    ebp,esp
  004981c3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004981c6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004981c9: 3b d0                                           cmp    edx,eax
  004981cb: 74 2e                                           je     0x4981fb
  004981cd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004981d0: 53                                              push   ebx
  004981d1: 56                                              push   esi
  004981d2: 57                                              push   edi
  004981d3: 83 e8 0c                                        sub    eax,0xc
  004981d6: 83 e9 0c                                        sub    ecx,0xc
  004981d9: 3b c2                                           cmp    eax,edx
  004981db: 8b f0                                           mov    esi,eax
  004981dd: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  004981df: 8b f9                                           mov    edi,ecx
  004981e1: 89 1f                                           mov    DWORD PTR [edi],ebx
  004981e3: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  004981e6: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  004981e9: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  004981ec: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  004981ef: 75 e2                                           jne    0x4981d3
  004981f1: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004981f4: 5f                                              pop    edi
  004981f5: 5e                                              pop    esi
  004981f6: 89 08                                           mov    DWORD PTR [eax],ecx
  004981f8: 5b                                              pop    ebx
  004981f9: 5d                                              pop    ebp
  004981fa: c3                                              ret
  004981fb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004981fe: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00498201: 89 08                                           mov    DWORD PTR [eax],ecx
  00498203: 5d                                              pop    ebp
  00498204: c3                                              ret
  00498210: 55                                              push   ebp
  00498211: 8b ec                                           mov    ebp,esp
  00498213: 6a ff                                           push   0xffffffff
  00498215: 68 2e ae 4d 00                                  push   0x4dae2e
  0049821a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00498220: 50                                              push   eax
  00498221: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00498228: 83 ec 08                                        sub    esp,0x8
  0049822b: 53                                              push   ebx
  0049822c: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0049822f: 56                                              push   esi
  00498230: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00498233: 57                                              push   edi
  00498234: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00498237: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049823a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049823d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00498244: 3b fb                                           cmp    edi,ebx
  00498246: 0f 84 51 01 00 00                               je     0x49839d
  0049824c: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  0049824f: 85 f6                                           test   esi,esi
  00498251: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00498255: 74 08                                           je     0x49825f
  00498257: 57                                              push   edi
  00498258: 8b ce                                           mov    ecx,esi
  0049825a: e8 a1 f5 ff ff                                  call   0x497800
  0049825f: 81 c6 08 01 00 00                               add    esi,0x108
  00498265: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00498269: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049826c: 81 c7 08 01 00 00                               add    edi,0x108
  00498272: eb d0                                           jmp    0x498244
  0049839d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004983a0: 5f                                              pop    edi
  004983a1: 8b c6                                           mov    eax,esi
  004983a3: 5e                                              pop    esi
  004983a4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004983ab: 5b                                              pop    ebx
  004983ac: 8b e5                                           mov    esp,ebp
  004983ae: 5d                                              pop    ebp
  004983af: c2 0c 00                                        ret    0xc
  004983c0: 55                                              push   ebp
  004983c1: 8b ec                                           mov    ebp,esp
  004983c3: 83 ec 08                                        sub    esp,0x8
  004983c6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004983c9: 3b 45 0c                                        cmp    eax,DWORD PTR [ebp+0xc]
  004983cc: 0f 84 d0 02 00 00                               je     0x4986a2
  004983d2: 53                                              push   ebx
  004983d3: 56                                              push   esi
  004983d4: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004983d7: 57                                              push   edi
  004983d8: 8d 58 4c                                        lea    ebx,[eax+0x4c]
  004983db: eb 03                                           jmp    0x4983e0
  004983dd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004983e0: 8a 0e                                           mov    cl,BYTE PTR [esi]
  004983e2: 88 08                                           mov    BYTE PTR [eax],cl
  004983e4: 8d 46 04                                        lea    eax,[esi+0x4]
  004983e7: 50                                              push   eax
  004983e8: 8d 4b b8                                        lea    ecx,[ebx-0x48]
  004983eb: e8 50 07 00 00                                  call   0x498b40
  004983f0: 8d 46 14                                        lea    eax,[esi+0x14]
  004983f3: 50                                              push   eax
  004983f4: 8d 4b c8                                        lea    ecx,[ebx-0x38]
  004983f7: e8 14 0b 00 00                                  call   0x498f10
  004983fc: 8d 46 24                                        lea    eax,[esi+0x24]
  004983ff: 50                                              push   eax
  00498400: 8d 4b d8                                        lea    ecx,[ebx-0x28]
  00498403: e8 c8 0c 00 00                                  call   0x4990d0
  00498408: 8b 56 34                                        mov    edx,DWORD PTR [esi+0x34]
  0049840b: 89 53 e8                                        mov    DWORD PTR [ebx-0x18],edx
  0049840e: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00498413: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00498415: 51                                              push   ecx
  00498416: 6a 00                                           push   0x0
  00498418: 8d 46 38                                        lea    eax,[esi+0x38]
  0049841b: 50                                              push   eax
  0049841c: 8d 4b ec                                        lea    ecx,[ebx-0x14]
  0049841f: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00498425: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0049842b: 8b 02                                           mov    eax,DWORD PTR [edx]
  0049842d: 8d 4e 48                                        lea    ecx,[esi+0x48]
  00498430: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00498433: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00498436: 8b f9                                           mov    edi,ecx
  00498438: 3b c7                                           cmp    eax,edi
  0049843a: 89 7d f8                                        mov    DWORD PTR [ebp-0x8],edi
  0049843d: 73 05                                           jae    0x498444
  0049843f: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00498442: 8b f8                                           mov    edi,eax
  00498444: 8d 53 fc                                        lea    edx,[ebx-0x4]
  00498447: 3b 55 fc                                        cmp    edx,DWORD PTR [ebp-0x4]
  0049844a: 75 1d                                           jne    0x498469
  0049844c: 50                                              push   eax
  0049844d: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00498450: 57                                              push   edi
  00498451: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00498457: 6a 00                                           push   0x0
  00498459: 6a 00                                           push   0x0
  0049845b: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049845e: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00498464: e9 8b 00 00 00                                  jmp    0x4984f4
  00498469: 85 ff                                           test   edi,edi
  0049846b: 76 46                                           jbe    0x4984b3
  0049846d: 3b f9                                           cmp    edi,ecx
  0049846f: 75 42                                           jne    0x4984b3
  00498471: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00498474: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00498477: 85 c0                                           test   eax,eax
  00498479: 75 05                                           jne    0x498480
  0049847b: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00498480: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00498484: 73 2d                                           jae    0x4984b3
  00498486: 6a 01                                           push   0x1
  00498488: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049848b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00498491: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00498494: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00498497: 85 c0                                           test   eax,eax
  00498499: 75 05                                           jne    0x4984a0
  0049849b: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004984a0: 89 03                                           mov    DWORD PTR [ebx],eax
  004984a2: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004984a5: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  004984a8: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  004984ab: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004984ae: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004984b1: eb 41                                           jmp    0x4984f4
  004984b3: 6a 01                                           push   0x1
  004984b5: 57                                              push   edi
  004984b6: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004984b9: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004984bf: 84 c0                                           test   al,al
  004984c1: 74 31                                           je     0x4984f4
  004984c3: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004984c6: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  004984c9: 85 f6                                           test   esi,esi
  004984cb: 75 06                                           jne    0x4984d3
  004984cd: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004984d3: 8b cf                                           mov    ecx,edi
  004984d5: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004984d7: 8b c1                                           mov    eax,ecx
  004984d9: c1 e9 02                                        shr    ecx,0x2
  004984dc: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004984de: 8b c8                                           mov    ecx,eax
  004984e0: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004984e3: 83 e1 03                                        and    ecx,0x3
  004984e6: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004984e8: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004984ea: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004984ed: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004984f0: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  004984f4: 8b 56 58                                        mov    edx,DWORD PTR [esi+0x58]
  004984f7: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004984fa: 8b 46 5c                                        mov    eax,DWORD PTR [esi+0x5c]
  004984fd: 89 43 10                                        mov    DWORD PTR [ebx+0x10],eax
  00498500: 8b 4e 60                                        mov    ecx,DWORD PTR [esi+0x60]
  00498503: 89 4b 14                                        mov    DWORD PTR [ebx+0x14],ecx
  00498506: 8b 56 64                                        mov    edx,DWORD PTR [esi+0x64]
  00498509: 89 53 18                                        mov    DWORD PTR [ebx+0x18],edx
  0049850c: 8b 46 68                                        mov    eax,DWORD PTR [esi+0x68]
  0049850f: 89 43 1c                                        mov    DWORD PTR [ebx+0x1c],eax
  00498512: 8b 4e 6c                                        mov    ecx,DWORD PTR [esi+0x6c]
  00498515: 89 4b 20                                        mov    DWORD PTR [ebx+0x20],ecx
  00498518: 8b 56 70                                        mov    edx,DWORD PTR [esi+0x70]
  0049851b: 89 53 24                                        mov    DWORD PTR [ebx+0x24],edx
  0049851e: 8b 46 74                                        mov    eax,DWORD PTR [esi+0x74]
  00498521: 89 43 28                                        mov    DWORD PTR [ebx+0x28],eax
  00498524: 8b 4e 78                                        mov    ecx,DWORD PTR [esi+0x78]
  00498527: 89 4b 2c                                        mov    DWORD PTR [ebx+0x2c],ecx
  0049852a: 8b 56 7c                                        mov    edx,DWORD PTR [esi+0x7c]
  0049852d: 89 53 30                                        mov    DWORD PTR [ebx+0x30],edx
  00498530: 8b 86 80 00 00 00                               mov    eax,DWORD PTR [esi+0x80]
  00498536: 89 43 34                                        mov    DWORD PTR [ebx+0x34],eax
  00498539: 8b 8e 84 00 00 00                               mov    ecx,DWORD PTR [esi+0x84]
  0049853f: 89 4b 38                                        mov    DWORD PTR [ebx+0x38],ecx
  00498542: 8b 96 88 00 00 00                               mov    edx,DWORD PTR [esi+0x88]
  00498548: 89 53 3c                                        mov    DWORD PTR [ebx+0x3c],edx
  0049854b: 8b 86 8c 00 00 00                               mov    eax,DWORD PTR [esi+0x8c]
  00498551: 89 43 40                                        mov    DWORD PTR [ebx+0x40],eax
  00498554: 8b 8e 90 00 00 00                               mov    ecx,DWORD PTR [esi+0x90]
  0049855a: 89 4b 44                                        mov    DWORD PTR [ebx+0x44],ecx
  0049855d: 8b 96 94 00 00 00                               mov    edx,DWORD PTR [esi+0x94]
  00498563: 89 53 48                                        mov    DWORD PTR [ebx+0x48],edx
  00498566: 8b 86 98 00 00 00                               mov    eax,DWORD PTR [esi+0x98]
  0049856c: 89 43 4c                                        mov    DWORD PTR [ebx+0x4c],eax
  0049856f: 8b 8e 9c 00 00 00                               mov    ecx,DWORD PTR [esi+0x9c]
  00498575: 89 4b 50                                        mov    DWORD PTR [ebx+0x50],ecx
  00498578: 8b 96 a0 00 00 00                               mov    edx,DWORD PTR [esi+0xa0]
  0049857e: 89 53 54                                        mov    DWORD PTR [ebx+0x54],edx
  00498581: 8b 86 a4 00 00 00                               mov    eax,DWORD PTR [esi+0xa4]
  00498587: 89 43 58                                        mov    DWORD PTR [ebx+0x58],eax
  0049858a: 8b 8e a8 00 00 00                               mov    ecx,DWORD PTR [esi+0xa8]
  00498590: 89 4b 5c                                        mov    DWORD PTR [ebx+0x5c],ecx
  00498593: 8b 96 ac 00 00 00                               mov    edx,DWORD PTR [esi+0xac]
  00498599: 89 53 60                                        mov    DWORD PTR [ebx+0x60],edx
  0049859c: 8b 86 b0 00 00 00                               mov    eax,DWORD PTR [esi+0xb0]
  004985a2: 89 43 64                                        mov    DWORD PTR [ebx+0x64],eax
  004985a5: 8b 8e b4 00 00 00                               mov    ecx,DWORD PTR [esi+0xb4]
  004985ab: 89 4b 68                                        mov    DWORD PTR [ebx+0x68],ecx
  004985ae: 8b 96 b8 00 00 00                               mov    edx,DWORD PTR [esi+0xb8]
  004985b4: 89 53 6c                                        mov    DWORD PTR [ebx+0x6c],edx
  004985b7: 8b 86 bc 00 00 00                               mov    eax,DWORD PTR [esi+0xbc]
  004985bd: 89 43 70                                        mov    DWORD PTR [ebx+0x70],eax
  004985c0: 8b 8e c0 00 00 00                               mov    ecx,DWORD PTR [esi+0xc0]
  004985c6: 89 4b 74                                        mov    DWORD PTR [ebx+0x74],ecx
  004985c9: 8b 96 c4 00 00 00                               mov    edx,DWORD PTR [esi+0xc4]
  004985cf: 89 53 78                                        mov    DWORD PTR [ebx+0x78],edx
  004985d2: 8b 86 c8 00 00 00                               mov    eax,DWORD PTR [esi+0xc8]
  004985d8: 89 43 7c                                        mov    DWORD PTR [ebx+0x7c],eax
  004985db: 8b 8e cc 00 00 00                               mov    ecx,DWORD PTR [esi+0xcc]
  004985e1: 89 8b 80 00 00 00                               mov    DWORD PTR [ebx+0x80],ecx
  004985e7: 8b 96 d0 00 00 00                               mov    edx,DWORD PTR [esi+0xd0]
  004985ed: 89 93 84 00 00 00                               mov    DWORD PTR [ebx+0x84],edx
  004985f3: 8b 86 d4 00 00 00                               mov    eax,DWORD PTR [esi+0xd4]
  004985f9: 89 83 88 00 00 00                               mov    DWORD PTR [ebx+0x88],eax
  004985ff: 8b 8e d8 00 00 00                               mov    ecx,DWORD PTR [esi+0xd8]
  00498605: 89 8b 8c 00 00 00                               mov    DWORD PTR [ebx+0x8c],ecx
  0049860b: 8b 96 dc 00 00 00                               mov    edx,DWORD PTR [esi+0xdc]
  00498611: 89 93 90 00 00 00                               mov    DWORD PTR [ebx+0x90],edx
  00498617: 8b 86 e0 00 00 00                               mov    eax,DWORD PTR [esi+0xe0]
  0049861d: 89 83 94 00 00 00                               mov    DWORD PTR [ebx+0x94],eax
  00498623: 8b 8e e4 00 00 00                               mov    ecx,DWORD PTR [esi+0xe4]
  00498629: 89 8b 98 00 00 00                               mov    DWORD PTR [ebx+0x98],ecx
  0049862f: 8b 96 e8 00 00 00                               mov    edx,DWORD PTR [esi+0xe8]
  00498635: 89 93 9c 00 00 00                               mov    DWORD PTR [ebx+0x9c],edx
  0049863b: 8b 86 ec 00 00 00                               mov    eax,DWORD PTR [esi+0xec]
  00498641: 89 83 a0 00 00 00                               mov    DWORD PTR [ebx+0xa0],eax
  00498647: 8b 8e f0 00 00 00                               mov    ecx,DWORD PTR [esi+0xf0]
  0049864d: 89 8b a4 00 00 00                               mov    DWORD PTR [ebx+0xa4],ecx
  00498653: 8b 96 f4 00 00 00                               mov    edx,DWORD PTR [esi+0xf4]
  00498659: 89 93 a8 00 00 00                               mov    DWORD PTR [ebx+0xa8],edx
  0049865f: 8b 86 f8 00 00 00                               mov    eax,DWORD PTR [esi+0xf8]
  00498665: 89 83 ac 00 00 00                               mov    DWORD PTR [ebx+0xac],eax
  0049866b: 8b 8e fc 00 00 00                               mov    ecx,DWORD PTR [esi+0xfc]
  00498671: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00498674: 89 8b b0 00 00 00                               mov    DWORD PTR [ebx+0xb0],ecx
  0049867a: 8a 96 00 01 00 00                               mov    dl,BYTE PTR [esi+0x100]
  00498680: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00498683: 05 08 01 00 00                                  add    eax,0x108
  00498688: 88 93 b4 00 00 00                               mov    BYTE PTR [ebx+0xb4],dl
  0049868e: 81 c3 08 01 00 00                               add    ebx,0x108
  00498694: 3b c1                                           cmp    eax,ecx
  00498696: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00498699: 0f 85 3e fd ff ff                               jne    0x4983dd
  0049869f: 5f                                              pop    edi
  004986a0: 5e                                              pop    esi
  004986a1: 5b                                              pop    ebx
  004986a2: 8b e5                                           mov    esp,ebp
  004986a4: 5d                                              pop    ebp
  004986a5: c3                                              ret
  004986b0: 55                                              push   ebp
  004986b1: 8b ec                                           mov    ebp,esp
  004986b3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004986b6: 53                                              push   ebx
  004986b7: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004986ba: 3b c3                                           cmp    eax,ebx
  004986bc: 0f 84 46 02 00 00                               je     0x498908
  004986c2: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004986c5: 56                                              push   esi
  004986c6: 57                                              push   edi
  004986c7: 8d 78 14                                        lea    edi,[eax+0x14]
  004986ca: 8d 73 14                                        lea    esi,[ebx+0x14]
  004986cd: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004986d0: 8a 8b f8 fe ff ff                               mov    cl,BYTE PTR [ebx-0x108]
  004986d6: 81 eb 08 01 00 00                               sub    ebx,0x108
  004986dc: 2d 08 01 00 00                                  sub    eax,0x108
  004986e1: 81 ee 08 01 00 00                               sub    esi,0x108
  004986e7: 8d 56 f0                                        lea    edx,[esi-0x10]
  004986ea: 81 ef 08 01 00 00                               sub    edi,0x108
  004986f0: 88 08                                           mov    BYTE PTR [eax],cl
  004986f2: 52                                              push   edx
  004986f3: 8d 4f f0                                        lea    ecx,[edi-0x10]
  004986f6: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  004986f9: e8 42 04 00 00                                  call   0x498b40
  004986fe: 56                                              push   esi
  004986ff: 8b cf                                           mov    ecx,edi
  00498701: e8 0a 08 00 00                                  call   0x498f10
  00498706: 8d 46 10                                        lea    eax,[esi+0x10]
  00498709: 50                                              push   eax
  0049870a: 8d 4f 10                                        lea    ecx,[edi+0x10]
  0049870d: e8 be 09 00 00                                  call   0x4990d0
  00498712: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00498715: 89 4f 20                                        mov    DWORD PTR [edi+0x20],ecx
  00498718: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0049871e: 8b 02                                           mov    eax,DWORD PTR [edx]
  00498720: 50                                              push   eax
  00498721: 6a 00                                           push   0x0
  00498723: 8d 4e 24                                        lea    ecx,[esi+0x24]
  00498726: 51                                              push   ecx
  00498727: 8d 4f 24                                        lea    ecx,[edi+0x24]
  0049872a: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00498730: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00498736: 8b 02                                           mov    eax,DWORD PTR [edx]
  00498738: 50                                              push   eax
  00498739: 6a 00                                           push   0x0
  0049873b: 8d 4e 34                                        lea    ecx,[esi+0x34]
  0049873e: 51                                              push   ecx
  0049873f: 8d 4f 34                                        lea    ecx,[edi+0x34]
  00498742: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00498748: 8b 56 44                                        mov    edx,DWORD PTR [esi+0x44]
  0049874b: 89 57 44                                        mov    DWORD PTR [edi+0x44],edx
  0049874e: 8b 46 48                                        mov    eax,DWORD PTR [esi+0x48]
  00498751: 89 47 48                                        mov    DWORD PTR [edi+0x48],eax
  00498754: 8b 4e 4c                                        mov    ecx,DWORD PTR [esi+0x4c]
  00498757: 89 4f 4c                                        mov    DWORD PTR [edi+0x4c],ecx
  0049875a: 8b 56 50                                        mov    edx,DWORD PTR [esi+0x50]
  0049875d: 89 57 50                                        mov    DWORD PTR [edi+0x50],edx
  00498760: 8b 46 54                                        mov    eax,DWORD PTR [esi+0x54]
  00498763: 89 47 54                                        mov    DWORD PTR [edi+0x54],eax
  00498766: 8b 4e 58                                        mov    ecx,DWORD PTR [esi+0x58]
  00498769: 89 4f 58                                        mov    DWORD PTR [edi+0x58],ecx
  0049876c: 8b 56 5c                                        mov    edx,DWORD PTR [esi+0x5c]
  0049876f: 89 57 5c                                        mov    DWORD PTR [edi+0x5c],edx
  00498772: 8b 46 60                                        mov    eax,DWORD PTR [esi+0x60]
  00498775: 89 47 60                                        mov    DWORD PTR [edi+0x60],eax
  00498778: 8b 4e 64                                        mov    ecx,DWORD PTR [esi+0x64]
  0049877b: 89 4f 64                                        mov    DWORD PTR [edi+0x64],ecx
  0049877e: 8b 56 68                                        mov    edx,DWORD PTR [esi+0x68]
  00498781: 89 57 68                                        mov    DWORD PTR [edi+0x68],edx
  00498784: 8b 46 6c                                        mov    eax,DWORD PTR [esi+0x6c]
  00498787: 89 47 6c                                        mov    DWORD PTR [edi+0x6c],eax
  0049878a: 8b 4e 70                                        mov    ecx,DWORD PTR [esi+0x70]
  0049878d: 89 4f 70                                        mov    DWORD PTR [edi+0x70],ecx
  00498790: 8b 56 74                                        mov    edx,DWORD PTR [esi+0x74]
  00498793: 89 57 74                                        mov    DWORD PTR [edi+0x74],edx
  00498796: 8b 46 78                                        mov    eax,DWORD PTR [esi+0x78]
  00498799: 89 47 78                                        mov    DWORD PTR [edi+0x78],eax
  0049879c: 8b 4e 7c                                        mov    ecx,DWORD PTR [esi+0x7c]
  0049879f: 89 4f 7c                                        mov    DWORD PTR [edi+0x7c],ecx
  004987a2: 8b 96 80 00 00 00                               mov    edx,DWORD PTR [esi+0x80]
  004987a8: 89 97 80 00 00 00                               mov    DWORD PTR [edi+0x80],edx
  004987ae: 8b 86 84 00 00 00                               mov    eax,DWORD PTR [esi+0x84]
  004987b4: 89 87 84 00 00 00                               mov    DWORD PTR [edi+0x84],eax
  004987ba: 8b 8e 88 00 00 00                               mov    ecx,DWORD PTR [esi+0x88]
  004987c0: 89 8f 88 00 00 00                               mov    DWORD PTR [edi+0x88],ecx
  004987c6: 8b 96 8c 00 00 00                               mov    edx,DWORD PTR [esi+0x8c]
  004987cc: 89 97 8c 00 00 00                               mov    DWORD PTR [edi+0x8c],edx
  004987d2: 8b 86 90 00 00 00                               mov    eax,DWORD PTR [esi+0x90]
  004987d8: 89 87 90 00 00 00                               mov    DWORD PTR [edi+0x90],eax
  004987de: 8b 8e 94 00 00 00                               mov    ecx,DWORD PTR [esi+0x94]
  004987e4: 89 8f 94 00 00 00                               mov    DWORD PTR [edi+0x94],ecx
  004987ea: 8b 96 98 00 00 00                               mov    edx,DWORD PTR [esi+0x98]
  004987f0: 89 97 98 00 00 00                               mov    DWORD PTR [edi+0x98],edx
  004987f6: 8b 86 9c 00 00 00                               mov    eax,DWORD PTR [esi+0x9c]
  004987fc: 89 87 9c 00 00 00                               mov    DWORD PTR [edi+0x9c],eax
  00498802: 8b 8e a0 00 00 00                               mov    ecx,DWORD PTR [esi+0xa0]
  00498808: 89 8f a0 00 00 00                               mov    DWORD PTR [edi+0xa0],ecx
  0049880e: 8b 96 a4 00 00 00                               mov    edx,DWORD PTR [esi+0xa4]
  00498814: 89 97 a4 00 00 00                               mov    DWORD PTR [edi+0xa4],edx
  0049881a: 8b 86 a8 00 00 00                               mov    eax,DWORD PTR [esi+0xa8]
  00498820: 89 87 a8 00 00 00                               mov    DWORD PTR [edi+0xa8],eax
  00498826: 8b 8e ac 00 00 00                               mov    ecx,DWORD PTR [esi+0xac]
  0049882c: 89 8f ac 00 00 00                               mov    DWORD PTR [edi+0xac],ecx
  00498832: 8b 96 b0 00 00 00                               mov    edx,DWORD PTR [esi+0xb0]
  00498838: 89 97 b0 00 00 00                               mov    DWORD PTR [edi+0xb0],edx
  0049883e: 8b 86 b4 00 00 00                               mov    eax,DWORD PTR [esi+0xb4]
  00498844: 89 87 b4 00 00 00                               mov    DWORD PTR [edi+0xb4],eax
  0049884a: 8b 8e b8 00 00 00                               mov    ecx,DWORD PTR [esi+0xb8]
  00498850: 89 8f b8 00 00 00                               mov    DWORD PTR [edi+0xb8],ecx
  00498856: 8b 96 bc 00 00 00                               mov    edx,DWORD PTR [esi+0xbc]
  0049885c: 89 97 bc 00 00 00                               mov    DWORD PTR [edi+0xbc],edx
  00498862: 8b 86 c0 00 00 00                               mov    eax,DWORD PTR [esi+0xc0]
  00498868: 89 87 c0 00 00 00                               mov    DWORD PTR [edi+0xc0],eax
  0049886e: 8b 8e c4 00 00 00                               mov    ecx,DWORD PTR [esi+0xc4]
  00498874: 89 8f c4 00 00 00                               mov    DWORD PTR [edi+0xc4],ecx
  0049887a: 8b 96 c8 00 00 00                               mov    edx,DWORD PTR [esi+0xc8]
  00498880: 89 97 c8 00 00 00                               mov    DWORD PTR [edi+0xc8],edx
  00498886: 8b 86 cc 00 00 00                               mov    eax,DWORD PTR [esi+0xcc]
  0049888c: 89 87 cc 00 00 00                               mov    DWORD PTR [edi+0xcc],eax
  00498892: 8b 8e d0 00 00 00                               mov    ecx,DWORD PTR [esi+0xd0]
  00498898: 89 8f d0 00 00 00                               mov    DWORD PTR [edi+0xd0],ecx
  0049889e: 8b 96 d4 00 00 00                               mov    edx,DWORD PTR [esi+0xd4]
  004988a4: 89 97 d4 00 00 00                               mov    DWORD PTR [edi+0xd4],edx
  004988aa: 8b 86 d8 00 00 00                               mov    eax,DWORD PTR [esi+0xd8]
  004988b0: 89 87 d8 00 00 00                               mov    DWORD PTR [edi+0xd8],eax
  004988b6: 8b 8e dc 00 00 00                               mov    ecx,DWORD PTR [esi+0xdc]
  004988bc: 89 8f dc 00 00 00                               mov    DWORD PTR [edi+0xdc],ecx
  004988c2: 8b 96 e0 00 00 00                               mov    edx,DWORD PTR [esi+0xe0]
  004988c8: 89 97 e0 00 00 00                               mov    DWORD PTR [edi+0xe0],edx
  004988ce: 8b 86 e4 00 00 00                               mov    eax,DWORD PTR [esi+0xe4]
  004988d4: 89 87 e4 00 00 00                               mov    DWORD PTR [edi+0xe4],eax
  004988da: 8b 8e e8 00 00 00                               mov    ecx,DWORD PTR [esi+0xe8]
  004988e0: 3b 5d 0c                                        cmp    ebx,DWORD PTR [ebp+0xc]
  004988e3: 89 8f e8 00 00 00                               mov    DWORD PTR [edi+0xe8],ecx
  004988e9: 8a 96 ec 00 00 00                               mov    dl,BYTE PTR [esi+0xec]
  004988ef: 88 97 ec 00 00 00                               mov    BYTE PTR [edi+0xec],dl
  004988f5: 0f 85 d2 fd ff ff                               jne    0x4986cd
  004988fb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004988fe: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00498901: 5f                                              pop    edi
  00498902: 5e                                              pop    esi
  00498903: 89 08                                           mov    DWORD PTR [eax],ecx
  00498905: 5b                                              pop    ebx
  00498906: 5d                                              pop    ebp
  00498907: c3                                              ret
  00498908: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049890b: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0049890e: 89 10                                           mov    DWORD PTR [eax],edx
  00498910: 5b                                              pop    ebx
  00498911: 5d                                              pop    ebp
  00498912: c3                                              ret
  00498ac0: 55                                              push   ebp
  00498ac1: 8b ec                                           mov    ebp,esp
  00498ac3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00498ac6: 85 c0                                           test   eax,eax
  00498ac8: 74 0d                                           je     0x498ad7
  00498aca: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00498acd: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00498acf: 89 10                                           mov    DWORD PTR [eax],edx
  00498ad1: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00498ad4: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00498ad7: 5d                                              pop    ebp
  00498ad8: c3                                              ret
  00498ae0: 55                                              push   ebp
  00498ae1: 8b ec                                           mov    ebp,esp
  00498ae3: 56                                              push   esi
  00498ae4: 8b f1                                           mov    esi,ecx
  00498ae6: e8 a5 b6 ff ff                                  call   0x494190
  00498aeb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00498aef: 74 09                                           je     0x498afa
  00498af1: 56                                              push   esi
  00498af2: e8 69 95 fa ff                                  call   0x442060
  00498af7: 83 c4 04                                        add    esp,0x4
  00498afa: 8b c6                                           mov    eax,esi
  00498afc: 5e                                              pop    esi
  00498afd: 5d                                              pop    ebp
  00498afe: c2 04 00                                        ret    0x4
  00498b10: 55                                              push   ebp
  00498b11: 8b ec                                           mov    ebp,esp
  00498b13: 56                                              push   esi
  00498b14: 8b f1                                           mov    esi,ecx
  00498b16: e8 95 b5 ff ff                                  call   0x4940b0
  00498b1b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00498b1f: 74 09                                           je     0x498b2a
  00498b21: 56                                              push   esi
  00498b22: e8 39 95 fa ff                                  call   0x442060
  00498b27: 83 c4 04                                        add    esp,0x4
  00498b2a: 8b c6                                           mov    eax,esi
  00498b2c: 5e                                              pop    esi
  00498b2d: 5d                                              pop    ebp
  00498b2e: c2 04 00                                        ret    0x4
  0049a450: 55                                              push   ebp
  0049a451: 8b ec                                           mov    ebp,esp
  0049a453: 51                                              push   ecx
  0049a454: 53                                              push   ebx
  0049a455: 56                                              push   esi
  0049a456: 57                                              push   edi
  0049a457: 8b f9                                           mov    edi,ecx
  0049a459: 8b 47 38                                        mov    eax,DWORD PTR [edi+0x38]
  0049a45c: 33 db                                           xor    ebx,ebx
  0049a45e: 3b c3                                           cmp    eax,ebx
  0049a460: 74 1c                                           je     0x49a47e
  0049a462: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0049a465: 8a 01                                           mov    al,BYTE PTR [ecx]
  0049a467: 84 c0                                           test   al,al
  0049a469: 74 0a                                           je     0x49a475
  0049a46b: 3c ff                                           cmp    al,0xff
  0049a46d: 74 06                                           je     0x49a475
  0049a46f: fe c8                                           dec    al
  0049a471: 88 01                                           mov    BYTE PTR [ecx],al
  0049a473: eb 09                                           jmp    0x49a47e
  0049a475: 51                                              push   ecx
  0049a476: e8 e5 7b fa ff                                  call   0x442060
  0049a47b: 83 c4 04                                        add    esp,0x4
  0049a47e: 89 5f 38                                        mov    DWORD PTR [edi+0x38],ebx
  0049a481: 89 5f 3c                                        mov    DWORD PTR [edi+0x3c],ebx
  0049a484: 89 5f 40                                        mov    DWORD PTR [edi+0x40],ebx
  0049a487: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  0049a48a: 3b c3                                           cmp    eax,ebx
  0049a48c: 74 0c                                           je     0x49a49a
  0049a48e: 50                                              push   eax
  0049a48f: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0049a492: e8 c9 7b fa ff                                  call   0x442060
  0049a497: 83 c4 04                                        add    esp,0x4
  0049a49a: 89 5f 14                                        mov    DWORD PTR [edi+0x14],ebx
  0049a49d: 89 5f 18                                        mov    DWORD PTR [edi+0x18],ebx
  0049a4a0: 89 5f 1c                                        mov    DWORD PTR [edi+0x1c],ebx
  0049a4a3: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  0049a4a6: 3b f3                                           cmp    esi,ebx
  0049a4a8: 74 24                                           je     0x49a4ce
  0049a4aa: 8b 5f 08                                        mov    ebx,DWORD PTR [edi+0x8]
  0049a4ad: 3b f3                                           cmp    esi,ebx
  0049a4af: 74 0f                                           je     0x49a4c0
  0049a4b1: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049a4b3: 6a 00                                           push   0x0
  0049a4b5: 8b ce                                           mov    ecx,esi
  0049a4b7: ff 10                                           call   DWORD PTR [eax]
  0049a4b9: 83 c6 28                                        add    esi,0x28
  0049a4bc: 3b f3                                           cmp    esi,ebx
  0049a4be: 75 f1                                           jne    0x49a4b1
  0049a4c0: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0049a4c3: 51                                              push   ecx
  0049a4c4: e8 97 7b fa ff                                  call   0x442060
  0049a4c9: 83 c4 04                                        add    esp,0x4
  0049a4cc: 33 db                                           xor    ebx,ebx
  0049a4ce: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  0049a4d1: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  0049a4d4: 89 5f 0c                                        mov    DWORD PTR [edi+0xc],ebx
  0049a4d7: 5f                                              pop    edi
  0049a4d8: 5e                                              pop    esi
  0049a4d9: 5b                                              pop    ebx
  0049a4da: 8b e5                                           mov    esp,ebp
  0049a4dc: 5d                                              pop    ebp
  0049a4dd: c3                                              ret
  0049b320: 55                                              push   ebp
  0049b321: 8b ec                                           mov    ebp,esp
  0049b323: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0049b326: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049b329: 89 08                                           mov    DWORD PTR [eax],ecx
  0049b32b: 5d                                              pop    ebp
  0049b32c: c2 04 00                                        ret    0x4
  0049b330: 55                                              push   ebp
  0049b331: 8b ec                                           mov    ebp,esp
  0049b333: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049b336: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0049b338: 8d 04 80                                        lea    eax,[eax+eax*4]
  0049b33b: 8d 14 c1                                        lea    edx,[ecx+eax*8]
  0049b33e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049b341: 89 10                                           mov    DWORD PTR [eax],edx
  0049b343: 5d                                              pop    ebp
  0049b344: c2 08 00                                        ret    0x8
  0049b720: 55                                              push   ebp
  0049b721: 8b ec                                           mov    ebp,esp
  0049b723: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0049b726: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049b729: 89 08                                           mov    DWORD PTR [eax],ecx
  0049b72b: 5d                                              pop    ebp
  0049b72c: c2 04 00                                        ret    0x4
  0049b730: 55                                              push   ebp
  0049b731: 8b ec                                           mov    ebp,esp
  0049b733: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049b736: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0049b738: 8d 04 40                                        lea    eax,[eax+eax*2]
  0049b73b: 8d 14 81                                        lea    edx,[ecx+eax*4]
  0049b73e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049b741: 89 10                                           mov    DWORD PTR [eax],edx
  0049b743: 5d                                              pop    ebp
  0049b744: c2 08 00                                        ret    0x8
  0049bc40: 55                                              push   ebp
  0049bc41: 8b ec                                           mov    ebp,esp
  0049bc43: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0049bc46: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049bc49: 89 08                                           mov    DWORD PTR [eax],ecx
  0049bc4b: 5d                                              pop    ebp
  0049bc4c: c2 04 00                                        ret    0x4
  0049bc50: 55                                              push   ebp
  0049bc51: 8b ec                                           mov    ebp,esp
  0049bc53: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049bc56: 8b d0                                           mov    edx,eax
  0049bc58: c1 e2 04                                        shl    edx,0x4
  0049bc5b: 03 d0                                           add    edx,eax
  0049bc5d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0049bc5f: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  0049bc62: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049bc65: 89 08                                           mov    DWORD PTR [eax],ecx
  0049bc67: 5d                                              pop    ebp
  0049bc68: c2 08 00                                        ret    0x8
  0049bcc0: 55                                              push   ebp
  0049bcc1: 8b ec                                           mov    ebp,esp
  0049bcc3: 8b c1                                           mov    eax,ecx
  0049bcc5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049bcc8: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0049bccb: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0049bcce: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0049bcd1: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  0049bcd4: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  0049bcd7: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  0049bcda: 8b 51 10                                        mov    edx,DWORD PTR [ecx+0x10]
  0049bcdd: 89 50 10                                        mov    DWORD PTR [eax+0x10],edx
  0049bce0: 8a 49 14                                        mov    cl,BYTE PTR [ecx+0x14]
  0049bce3: 88 48 14                                        mov    BYTE PTR [eax+0x14],cl
  0049bce6: c7 00 28 f9 4d 00                               mov    DWORD PTR [eax],0x4df928
  0049bcec: 5d                                              pop    ebp
  0049bced: c2 04 00                                        ret    0x4
  0049bd20: 55                                              push   ebp
  0049bd21: 8b ec                                           mov    ebp,esp
  0049bd23: 53                                              push   ebx
  0049bd24: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0049bd27: 8a 03                                           mov    al,BYTE PTR [ebx]
  0049bd29: 56                                              push   esi
  0049bd2a: 8b f1                                           mov    esi,ecx
  0049bd2c: 57                                              push   edi
  0049bd2d: 88 06                                           mov    BYTE PTR [esi],al
  0049bd2f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049bd32: 33 ff                                           xor    edi,edi
  0049bd34: 3b c7                                           cmp    eax,edi
  0049bd36: 75 04                                           jne    0x49bd3c
  0049bd38: 33 d2                                           xor    edx,edx
  0049bd3a: eb 16                                           jmp    0x49bd52
  0049bd3c: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049bd3f: 2b c8                                           sub    ecx,eax
  0049bd41: b8 67 66 66 66                                  mov    eax,0x66666667
  0049bd46: f7 e9                                           imul   ecx
  0049bd48: c1 fa 04                                        sar    edx,0x4
  0049bd4b: 8b c2                                           mov    eax,edx
  0049bd4d: c1 e8 1f                                        shr    eax,0x1f
  0049bd50: 03 d0                                           add    edx,eax
  0049bd52: 3b d7                                           cmp    edx,edi
  0049bd54: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049bd57: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  0049bd5a: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049bd5d: 74 2d                                           je     0x49bd8c
  0049bd5f: 8d 3c 92                                        lea    edi,[edx+edx*4]
  0049bd62: c1 e7 03                                        shl    edi,0x3
  0049bd65: 57                                              push   edi
  0049bd66: e8 85 62 fa ff                                  call   0x441ff0
  0049bd6b: 83 c4 04                                        add    esp,0x4
  0049bd6e: 03 f8                                           add    edi,eax
  0049bd70: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0049bd73: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049bd76: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049bd79: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049bd7c: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  0049bd7f: 50                                              push   eax
  0049bd80: 51                                              push   ecx
  0049bd81: 53                                              push   ebx
  0049bd82: 8b ce                                           mov    ecx,esi
  0049bd84: e8 37 0f 00 00                                  call   0x49ccc0
  0049bd89: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049bd8c: 5f                                              pop    edi
  0049bd8d: 8b c6                                           mov    eax,esi
  0049bd8f: 5e                                              pop    esi
  0049bd90: 5b                                              pop    ebx
  0049bd91: 5d                                              pop    ebp
  0049bd92: c2 04 00                                        ret    0x4
  0049bda0: 55                                              push   ebp
  0049bda1: 8b ec                                           mov    ebp,esp
  0049bda3: 6a ff                                           push   0xffffffff
  0049bda5: 68 39 b0 4d 00                                  push   0x4db039
  0049bdaa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049bdb0: 50                                              push   eax
  0049bdb1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049bdb8: 83 ec 08                                        sub    esp,0x8
  0049bdbb: 53                                              push   ebx
  0049bdbc: 56                                              push   esi
  0049bdbd: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0049bdc0: 57                                              push   edi
  0049bdc1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0049bdc4: 33 db                                           xor    ebx,ebx
  0049bdc6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049bdc9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049bdcc: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0049bdcf: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  0049bdd2: 0f 86 91 00 00 00                               jbe    0x49be69
  0049bdd8: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049bddb: 3b f3                                           cmp    esi,ebx
  0049bddd: 74 53                                           je     0x49be32
  0049bddf: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0049bde2: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0049bde5: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0049bde8: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0049bdeb: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  0049bdee: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0049bdf1: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  0049bdf4: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  0049bdf7: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  0049bdfa: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  0049bdfd: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  0049be03: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  0049be06: 8d 47 18                                        lea    eax,[edi+0x18]
  0049be09: 8d 4e 18                                        lea    ecx,[esi+0x18]
  0049be0c: 88 11                                           mov    BYTE PTR [ecx],dl
  0049be0e: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0049be11: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0049be14: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  0049be17: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0049be1d: 8b 12                                           mov    edx,DWORD PTR [edx]
  0049be1f: 52                                              push   edx
  0049be20: 53                                              push   ebx
  0049be21: 50                                              push   eax
  0049be22: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0049be26: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0049be2c: c7 06 08 f9 4d 00                               mov    DWORD PTR [esi],0x4df908
  0049be32: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049be35: 49                                              dec    ecx
  0049be36: 83 c6 28                                        add    esi,0x28
  0049be39: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0049be3c: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0049be3f: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0049be42: eb 8b                                           jmp    0x49bdcf
  0049be69: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049be6c: 5f                                              pop    edi
  0049be6d: 8b c6                                           mov    eax,esi
  0049be6f: 5e                                              pop    esi
  0049be70: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049be77: 5b                                              pop    ebx
  0049be78: 8b e5                                           mov    esp,ebp
  0049be7a: 5d                                              pop    ebp
  0049be7b: c2 0c 00                                        ret    0xc
  0049be80: 55                                              push   ebp
  0049be81: 8b ec                                           mov    ebp,esp
  0049be83: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049be86: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0049be88: 8d 04 80                                        lea    eax,[eax+eax*4]
  0049be8b: c1 e0 03                                        shl    eax,0x3
  0049be8e: 2b c8                                           sub    ecx,eax
  0049be90: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049be93: 89 08                                           mov    DWORD PTR [eax],ecx
  0049be95: 5d                                              pop    ebp
  0049be96: c2 08 00                                        ret    0x8
  0049bea0: 55                                              push   ebp
  0049bea1: 8b ec                                           mov    ebp,esp
  0049bea3: 53                                              push   ebx
  0049bea4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0049bea7: 8a 03                                           mov    al,BYTE PTR [ebx]
  0049bea9: 56                                              push   esi
  0049beaa: 8b f1                                           mov    esi,ecx
  0049beac: 57                                              push   edi
  0049bead: 88 06                                           mov    BYTE PTR [esi],al
  0049beaf: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049beb2: 33 ff                                           xor    edi,edi
  0049beb4: 3b c7                                           cmp    eax,edi
  0049beb6: 75 04                                           jne    0x49bebc
  0049beb8: 33 d2                                           xor    edx,edx
  0049beba: eb 15                                           jmp    0x49bed1
  0049bebc: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049bebf: 2b c8                                           sub    ecx,eax
  0049bec1: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049bec6: f7 e9                                           imul   ecx
  0049bec8: d1 fa                                           sar    edx,1
  0049beca: 8b c2                                           mov    eax,edx
  0049becc: c1 e8 1f                                        shr    eax,0x1f
  0049becf: 03 d0                                           add    edx,eax
  0049bed1: 3b d7                                           cmp    edx,edi
  0049bed3: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049bed6: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  0049bed9: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049bedc: 74 2d                                           je     0x49bf0b
  0049bede: 8d 3c 52                                        lea    edi,[edx+edx*2]
  0049bee1: c1 e7 02                                        shl    edi,0x2
  0049bee4: 57                                              push   edi
  0049bee5: e8 06 61 fa ff                                  call   0x441ff0
  0049beea: 83 c4 04                                        add    esp,0x4
  0049beed: 03 f8                                           add    edi,eax
  0049beef: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0049bef2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049bef5: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049bef8: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049befb: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  0049befe: 50                                              push   eax
  0049beff: 51                                              push   ecx
  0049bf00: 53                                              push   ebx
  0049bf01: 8b ce                                           mov    ecx,esi
  0049bf03: e8 98 0e 00 00                                  call   0x49cda0
  0049bf08: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049bf0b: 5f                                              pop    edi
  0049bf0c: 8b c6                                           mov    eax,esi
  0049bf0e: 5e                                              pop    esi
  0049bf0f: 5b                                              pop    ebx
  0049bf10: 5d                                              pop    ebp
  0049bf11: c2 04 00                                        ret    0x4
  0049bf20: 55                                              push   ebp
  0049bf21: 8b ec                                           mov    ebp,esp
  0049bf23: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049bf26: 85 c0                                           test   eax,eax
  0049bf28: 76 30                                           jbe    0x49bf5a
  0049bf2a: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0049bf2d: 53                                              push   ebx
  0049bf2e: 56                                              push   esi
  0049bf2f: 8b c8                                           mov    ecx,eax
  0049bf31: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049bf34: 57                                              push   edi
  0049bf35: 85 c0                                           test   eax,eax
  0049bf37: 74 14                                           je     0x49bf4d
  0049bf39: 8b f2                                           mov    esi,edx
  0049bf3b: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0049bf3d: 8b f8                                           mov    edi,eax
  0049bf3f: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049bf41: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  0049bf44: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  0049bf47: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  0049bf4a: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  0049bf4d: 83 c0 0c                                        add    eax,0xc
  0049bf50: 49                                              dec    ecx
  0049bf51: 75 e2                                           jne    0x49bf35
  0049bf53: 5f                                              pop    edi
  0049bf54: 5e                                              pop    esi
  0049bf55: 5b                                              pop    ebx
  0049bf56: 5d                                              pop    ebp
  0049bf57: c2 0c 00                                        ret    0xc
  0049bf5a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049bf5d: 5d                                              pop    ebp
  0049bf5e: c2 0c 00                                        ret    0xc
  0049bf70: 55                                              push   ebp
  0049bf71: 8b ec                                           mov    ebp,esp
  0049bf73: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049bf76: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0049bf78: 8d 04 40                                        lea    eax,[eax+eax*2]
  0049bf7b: c1 e0 02                                        shl    eax,0x2
  0049bf7e: 2b c8                                           sub    ecx,eax
  0049bf80: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049bf83: 89 08                                           mov    DWORD PTR [eax],ecx
  0049bf85: 5d                                              pop    ebp
  0049bf86: c2 08 00                                        ret    0x8
  0049bf90: 55                                              push   ebp
  0049bf91: 8b ec                                           mov    ebp,esp
  0049bf93: 6a ff                                           push   0xffffffff
  0049bf95: 68 87 b0 4d 00                                  push   0x4db087
  0049bf9a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049bfa0: 50                                              push   eax
  0049bfa1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049bfa8: 83 ec 08                                        sub    esp,0x8
  0049bfab: 53                                              push   ebx
  0049bfac: 56                                              push   esi
  0049bfad: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0049bfb0: 57                                              push   edi
  0049bfb1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0049bfb4: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049bfb7: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049bfba: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0049bfc1: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049bfc4: 85 c0                                           test   eax,eax
  0049bfc6: 0f 86 8a 01 00 00                               jbe    0x49c156
  0049bfcc: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049bfcf: 85 f6                                           test   esi,esi
  0049bfd1: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0049bfd5: 0f 84 b0 00 00 00                               je     0x49c08b
  0049bfdb: 8a 07                                           mov    al,BYTE PTR [edi]
  0049bfdd: 88 06                                           mov    BYTE PTR [esi],al
  0049bfdf: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0049bfe2: 85 c0                                           test   eax,eax
  0049bfe4: 75 04                                           jne    0x49bfea
  0049bfe6: 33 d2                                           xor    edx,edx
  0049bfe8: eb 16                                           jmp    0x49c000
  0049bfea: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0049bfed: 2b c8                                           sub    ecx,eax
  0049bfef: b8 67 66 66 66                                  mov    eax,0x66666667
  0049bff4: f7 e9                                           imul   ecx
  0049bff6: c1 fa 04                                        sar    edx,0x4
  0049bff9: 8b c2                                           mov    eax,edx
  0049bffb: c1 e8 1f                                        shr    eax,0x1f
  0049bffe: 03 d0                                           add    edx,eax
  0049c000: 52                                              push   edx
  0049c001: 8b ce                                           mov    ecx,esi
  0049c003: e8 98 ec ff ff                                  call   0x49aca0
  0049c008: 84 c0                                           test   al,al
  0049c00a: 74 16                                           je     0x49c022
  0049c00c: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049c00f: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0049c012: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0049c015: 52                                              push   edx
  0049c016: 50                                              push   eax
  0049c017: 51                                              push   ecx
  0049c018: 8b ce                                           mov    ecx,esi
  0049c01a: e8 a1 0c 00 00                                  call   0x49ccc0
  0049c01f: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049c022: 8a 47 10                                        mov    al,BYTE PTR [edi+0x10]
  0049c025: 8d 5f 10                                        lea    ebx,[edi+0x10]
  0049c028: 8b cb                                           mov    ecx,ebx
  0049c02a: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0049c02e: 88 46 10                                        mov    BYTE PTR [esi+0x10],al
  0049c031: e8 3a 01 00 00                                  call   0x49c170
  0049c036: 50                                              push   eax
  0049c037: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0049c03a: e8 71 ed ff ff                                  call   0x49adb0
  0049c03f: 84 c0                                           test   al,al
  0049c041: 74 19                                           je     0x49c05c
  0049c043: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049c046: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0049c049: 8b 56 14                                        mov    edx,DWORD PTR [esi+0x14]
  0049c04c: 8d 5e 10                                        lea    ebx,[esi+0x10]
  0049c04f: 52                                              push   edx
  0049c050: 50                                              push   eax
  0049c051: 51                                              push   ecx
  0049c052: 8b cb                                           mov    ecx,ebx
  0049c054: e8 47 0d 00 00                                  call   0x49cda0
  0049c059: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049c05c: 8a 47 20                                        mov    al,BYTE PTR [edi+0x20]
  0049c05f: 88 46 20                                        mov    BYTE PTR [esi+0x20],al
  0049c062: 8b 4f 24                                        mov    ecx,DWORD PTR [edi+0x24]
  0049c065: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  0049c068: 8b 57 28                                        mov    edx,DWORD PTR [edi+0x28]
  0049c06b: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  0049c06e: 8b 47 2c                                        mov    eax,DWORD PTR [edi+0x2c]
  0049c071: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0049c074: 8b 4f 30                                        mov    ecx,DWORD PTR [edi+0x30]
  0049c077: 8d 57 34                                        lea    edx,[edi+0x34]
  0049c07a: 89 4e 30                                        mov    DWORD PTR [esi+0x30],ecx
  0049c07d: 52                                              push   edx
  0049c07e: 8d 4e 34                                        lea    ecx,[esi+0x34]
  0049c081: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0049c085: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  0049c08b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049c08e: 49                                              dec    ecx
  0049c08f: 83 c6 44                                        add    esi,0x44
  0049c092: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0049c096: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0049c099: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0049c09c: e9 20 ff ff ff                                  jmp    0x49bfc1
  0049c156: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049c159: 5f                                              pop    edi
  0049c15a: 8b c6                                           mov    eax,esi
  0049c15c: 5e                                              pop    esi
  0049c15d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049c164: 5b                                              pop    ebx
  0049c165: 8b e5                                           mov    esp,ebp
  0049c167: 5d                                              pop    ebp
  0049c168: c2 0c 00                                        ret    0xc
  0049c1b0: 55                                              push   ebp
  0049c1b1: 8b ec                                           mov    ebp,esp
  0049c1b3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049c1b6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0049c1b8: 8b d0                                           mov    edx,eax
  0049c1ba: c1 e2 04                                        shl    edx,0x4
  0049c1bd: 03 d0                                           add    edx,eax
  0049c1bf: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049c1c2: c1 e2 02                                        shl    edx,0x2
  0049c1c5: 2b ca                                           sub    ecx,edx
  0049c1c7: 89 08                                           mov    DWORD PTR [eax],ecx
  0049c1c9: 5d                                              pop    ebp
  0049c1ca: c2 08 00                                        ret    0x8
  0049c1d0: 55                                              push   ebp
  0049c1d1: 8b ec                                           mov    ebp,esp
  0049c1d3: 6a ff                                           push   0xffffffff
  0049c1d5: 68 b9 b0 4d 00                                  push   0x4db0b9
  0049c1da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049c1e0: 50                                              push   eax
  0049c1e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049c1e8: 83 ec 08                                        sub    esp,0x8
  0049c1eb: 53                                              push   ebx
  0049c1ec: 56                                              push   esi
  0049c1ed: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0049c1f0: 57                                              push   edi
  0049c1f1: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0049c1f4: 33 db                                           xor    ebx,ebx
  0049c1f6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049c1f9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049c1fc: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0049c1ff: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  0049c202: 0f 84 8d 00 00 00                               je     0x49c295
  0049c208: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0049c20b: 3b f3                                           cmp    esi,ebx
  0049c20d: 74 53                                           je     0x49c262
  0049c20f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0049c212: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0049c215: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0049c218: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0049c21b: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  0049c21e: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0049c221: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  0049c224: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  0049c227: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  0049c22a: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  0049c22d: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  0049c233: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  0049c236: 8d 47 18                                        lea    eax,[edi+0x18]
  0049c239: 8d 4e 18                                        lea    ecx,[esi+0x18]
  0049c23c: 88 11                                           mov    BYTE PTR [ecx],dl
  0049c23e: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0049c241: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0049c244: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  0049c247: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0049c24d: 8b 12                                           mov    edx,DWORD PTR [edx]
  0049c24f: 52                                              push   edx
  0049c250: 53                                              push   ebx
  0049c251: 50                                              push   eax
  0049c252: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0049c256: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0049c25c: c7 06 08 f9 4d 00                               mov    DWORD PTR [esi],0x4df908
  0049c262: 83 c6 28                                        add    esi,0x28
  0049c265: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0049c268: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049c26b: 83 c7 28                                        add    edi,0x28
  0049c26e: eb 8f                                           jmp    0x49c1ff
  0049c295: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049c298: 5f                                              pop    edi
  0049c299: 8b c6                                           mov    eax,esi
  0049c29b: 5e                                              pop    esi
  0049c29c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049c2a3: 5b                                              pop    ebx
  0049c2a4: 8b e5                                           mov    esp,ebp
  0049c2a6: 5d                                              pop    ebp
  0049c2a7: c2 0c 00                                        ret    0xc
  0049c2b0: 55                                              push   ebp
  0049c2b1: 8b ec                                           mov    ebp,esp
  0049c2b3: 51                                              push   ecx
  0049c2b4: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049c2b7: 53                                              push   ebx
  0049c2b8: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0049c2bb: 3b d8                                           cmp    ebx,eax
  0049c2bd: 0f 84 62 01 00 00                               je     0x49c425
  0049c2c3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049c2c6: 56                                              push   esi
  0049c2c7: 8d 50 18                                        lea    edx,[eax+0x18]
  0049c2ca: 57                                              push   edi
  0049c2cb: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049c2ce: 83 c3 1c                                        add    ebx,0x1c
  0049c2d1: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0049c2d7: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0049c2da: 8b 39                                           mov    edi,DWORD PTR [ecx]
  0049c2dc: 8b f0                                           mov    esi,eax
  0049c2de: 3b fe                                           cmp    edi,esi
  0049c2e0: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  0049c2e3: 73 05                                           jae    0x49c2ea
  0049c2e5: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0049c2e8: 8b f7                                           mov    esi,edi
  0049c2ea: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049c2ed: 3b ca                                           cmp    ecx,edx
  0049c2ef: 75 71                                           jne    0x49c362
  0049c2f1: 39 73 04                                        cmp    DWORD PTR [ebx+0x4],esi
  0049c2f4: 73 0c                                           jae    0x49c302
  0049c2f6: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049c2f9: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0049c2ff: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0049c302: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049c305: 2b c6                                           sub    eax,esi
  0049c307: 3b c7                                           cmp    eax,edi
  0049c309: 73 02                                           jae    0x49c30d
  0049c30b: 8b f8                                           mov    edi,eax
  0049c30d: 85 ff                                           test   edi,edi
  0049c30f: 0f 86 f7 00 00 00                               jbe    0x49c40c
  0049c315: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049c318: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0049c31e: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049c321: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0049c323: 2b cf                                           sub    ecx,edi
  0049c325: 8d 04 16                                        lea    eax,[esi+edx*1]
  0049c328: 2b ce                                           sub    ecx,esi
  0049c32a: 51                                              push   ecx
  0049c32b: 8d 14 38                                        lea    edx,[eax+edi*1]
  0049c32e: 52                                              push   edx
  0049c32f: 50                                              push   eax
  0049c330: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0049c336: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049c339: 83 c4 0c                                        add    esp,0xc
  0049c33c: 2b f7                                           sub    esi,edi
  0049c33e: 6a 00                                           push   0x0
  0049c340: 8d 7b fc                                        lea    edi,[ebx-0x4]
  0049c343: 56                                              push   esi
  0049c344: 8b cf                                           mov    ecx,edi
  0049c346: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0049c34c: 84 c0                                           test   al,al
  0049c34e: 0f 84 b5 00 00 00                               je     0x49c409
  0049c354: 56                                              push   esi
  0049c355: 8b cf                                           mov    ecx,edi
  0049c357: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0049c35d: e9 a7 00 00 00                                  jmp    0x49c409
  0049c362: 33 ff                                           xor    edi,edi
  0049c364: 3b f7                                           cmp    esi,edi
  0049c366: 76 62                                           jbe    0x49c3ca
  0049c368: 3b f0                                           cmp    esi,eax
  0049c36a: 75 5e                                           jne    0x49c3ca
  0049c36c: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0049c36f: 3b c7                                           cmp    eax,edi
  0049c371: 75 05                                           jne    0x49c378
  0049c373: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049c378: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0049c37c: 73 4c                                           jae    0x49c3ca
  0049c37e: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0049c380: 3b c7                                           cmp    eax,edi
  0049c382: 74 1f                                           je     0x49c3a3
  0049c384: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0049c387: 8a 01                                           mov    al,BYTE PTR [ecx]
  0049c389: 84 c0                                           test   al,al
  0049c38b: 74 0a                                           je     0x49c397
  0049c38d: 3c ff                                           cmp    al,0xff
  0049c38f: 74 06                                           je     0x49c397
  0049c391: fe c8                                           dec    al
  0049c393: 88 01                                           mov    BYTE PTR [ecx],al
  0049c395: eb 0c                                           jmp    0x49c3a3
  0049c397: 51                                              push   ecx
  0049c398: e8 c3 5c fa ff                                  call   0x442060
  0049c39d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0049c3a0: 83 c4 04                                        add    esp,0x4
  0049c3a3: 89 3b                                           mov    DWORD PTR [ebx],edi
  0049c3a5: 89 7b 04                                        mov    DWORD PTR [ebx+0x4],edi
  0049c3a8: 89 7b 08                                        mov    DWORD PTR [ebx+0x8],edi
  0049c3ab: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0049c3ae: 3b c7                                           cmp    eax,edi
  0049c3b0: 75 05                                           jne    0x49c3b7
  0049c3b2: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049c3b7: 89 03                                           mov    DWORD PTR [ebx],eax
  0049c3b9: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  0049c3bc: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  0049c3bf: 8b 4a 0c                                        mov    ecx,DWORD PTR [edx+0xc]
  0049c3c2: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0049c3c5: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0049c3c8: eb 42                                           jmp    0x49c40c
  0049c3ca: 6a 01                                           push   0x1
  0049c3cc: 56                                              push   esi
  0049c3cd: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049c3d0: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0049c3d6: 84 c0                                           test   al,al
  0049c3d8: 74 2f                                           je     0x49c409
  0049c3da: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0049c3dd: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0049c3e0: 85 c0                                           test   eax,eax
  0049c3e2: 75 05                                           jne    0x49c3e9
  0049c3e4: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049c3e9: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  0049c3eb: 8b ce                                           mov    ecx,esi
  0049c3ed: 8b f0                                           mov    esi,eax
  0049c3ef: 8b c1                                           mov    eax,ecx
  0049c3f1: c1 e9 02                                        shr    ecx,0x2
  0049c3f4: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0049c3f6: 8b c8                                           mov    ecx,eax
  0049c3f8: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0049c3fb: 83 e1 03                                        and    ecx,0x3
  0049c3fe: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0049c400: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  0049c402: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049c405: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0049c409: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0049c40c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049c40f: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049c412: 83 c0 28                                        add    eax,0x28
  0049c415: 83 c3 28                                        add    ebx,0x28
  0049c418: 3b c1                                           cmp    eax,ecx
  0049c41a: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0049c41d: 0f 85 ae fe ff ff                               jne    0x49c2d1
  0049c423: 5f                                              pop    edi
  0049c424: 5e                                              pop    esi
  0049c425: 5b                                              pop    ebx
  0049c426: 8b e5                                           mov    esp,ebp
  0049c428: 5d                                              pop    ebp
  0049c429: c3                                              ret
  0049c430: 55                                              push   ebp
  0049c431: 8b ec                                           mov    ebp,esp
  0049c433: 83 ec 08                                        sub    esp,0x8
  0049c436: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049c439: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  0049c43c: 0f 84 5d 01 00 00                               je     0x49c59f
  0049c442: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0049c445: 53                                              push   ebx
  0049c446: 56                                              push   esi
  0049c447: 57                                              push   edi
  0049c448: 83 c0 1c                                        add    eax,0x1c
  0049c44b: 8d 59 20                                        lea    ebx,[ecx+0x20]
  0049c44e: eb 03                                           jmp    0x49c453
  0049c450: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0049c453: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0049c456: 8b 75 14                                        mov    esi,DWORD PTR [ebp+0x14]
  0049c459: b9 28 00 00 00                                  mov    ecx,0x28
  0049c45e: 2b d1                                           sub    edx,ecx
  0049c460: 2b f1                                           sub    esi,ecx
  0049c462: 2b c1                                           sub    eax,ecx
  0049c464: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  0049c467: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049c46a: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0049c470: 89 75 14                                        mov    DWORD PTR [ebp+0x14],esi
  0049c473: 8b 32                                           mov    esi,DWORD PTR [edx]
  0049c475: 2b d9                                           sub    ebx,ecx
  0049c477: 3b f7                                           cmp    esi,edi
  0049c479: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0049c47c: 89 7d f8                                        mov    DWORD PTR [ebp-0x8],edi
  0049c47f: 73 05                                           jae    0x49c486
  0049c481: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  0049c484: 8b fe                                           mov    edi,esi
  0049c486: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  0049c489: 8d 50 fc                                        lea    edx,[eax-0x4]
  0049c48c: 3b ca                                           cmp    ecx,edx
  0049c48e: 75 6f                                           jne    0x49c4ff
  0049c490: 39 3b                                           cmp    DWORD PTR [ebx],edi
  0049c492: 73 09                                           jae    0x49c49d
  0049c494: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  0049c497: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0049c49d: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0049c49f: 2b c7                                           sub    eax,edi
  0049c4a1: 3b c6                                           cmp    eax,esi
  0049c4a3: 73 02                                           jae    0x49c4a7
  0049c4a5: 8b f0                                           mov    esi,eax
  0049c4a7: 85 f6                                           test   esi,esi
  0049c4a9: 76 42                                           jbe    0x49c4ed
  0049c4ab: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  0049c4ae: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0049c4b4: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  0049c4b6: 8b 43 fc                                        mov    eax,DWORD PTR [ebx-0x4]
  0049c4b9: 2b ce                                           sub    ecx,esi
  0049c4bb: 03 c7                                           add    eax,edi
  0049c4bd: 2b cf                                           sub    ecx,edi
  0049c4bf: 51                                              push   ecx
  0049c4c0: 8d 14 30                                        lea    edx,[eax+esi*1]
  0049c4c3: 52                                              push   edx
  0049c4c4: 50                                              push   eax
  0049c4c5: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0049c4cb: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  0049c4cd: 83 c4 0c                                        add    esp,0xc
  0049c4d0: 2b fe                                           sub    edi,esi
  0049c4d2: 6a 00                                           push   0x0
  0049c4d4: 8d 73 f8                                        lea    esi,[ebx-0x8]
  0049c4d7: 57                                              push   edi
  0049c4d8: 8b ce                                           mov    ecx,esi
  0049c4da: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0049c4e0: 84 c0                                           test   al,al
  0049c4e2: 74 09                                           je     0x49c4ed
  0049c4e4: 57                                              push   edi
  0049c4e5: 8b ce                                           mov    ecx,esi
  0049c4e7: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0049c4ed: 6a 00                                           push   0x0
  0049c4ef: 6a 00                                           push   0x0
  0049c4f1: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  0049c4f4: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0049c4fa: e9 85 00 00 00                                  jmp    0x49c584
  0049c4ff: 85 ff                                           test   edi,edi
  0049c501: 76 42                                           jbe    0x49c545
  0049c503: 3b 78 04                                        cmp    edi,DWORD PTR [eax+0x4]
  0049c506: 75 3d                                           jne    0x49c545
  0049c508: 8b 00                                           mov    eax,DWORD PTR [eax]
  0049c50a: 85 c0                                           test   eax,eax
  0049c50c: 75 05                                           jne    0x49c513
  0049c50e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049c513: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0049c517: 73 2c                                           jae    0x49c545
  0049c519: 6a 01                                           push   0x1
  0049c51b: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  0049c51e: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0049c524: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0049c527: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0049c529: 85 c0                                           test   eax,eax
  0049c52b: 75 05                                           jne    0x49c532
  0049c52d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049c532: 89 43 fc                                        mov    DWORD PTR [ebx-0x4],eax
  0049c535: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0049c538: 89 13                                           mov    DWORD PTR [ebx],edx
  0049c53a: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0049c53d: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  0049c540: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0049c543: eb 3f                                           jmp    0x49c584
  0049c545: 6a 01                                           push   0x1
  0049c547: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  0049c54a: 57                                              push   edi
  0049c54b: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0049c551: 84 c0                                           test   al,al
  0049c553: 74 2f                                           je     0x49c584
  0049c555: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0049c558: 8b 32                                           mov    esi,DWORD PTR [edx]
  0049c55a: 85 f6                                           test   esi,esi
  0049c55c: 75 06                                           jne    0x49c564
  0049c55e: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0049c564: 8b cf                                           mov    ecx,edi
  0049c566: 8b 7b fc                                        mov    edi,DWORD PTR [ebx-0x4]
  0049c569: 8b c1                                           mov    eax,ecx
  0049c56b: c1 e9 02                                        shr    ecx,0x2
  0049c56e: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0049c570: 8b c8                                           mov    ecx,eax
  0049c572: 83 e1 03                                        and    ecx,0x3
  0049c575: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0049c577: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0049c57a: 51                                              push   ecx
  0049c57b: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  0049c57e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0049c584: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0049c587: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  0049c58a: 0f 85 c0 fe ff ff                               jne    0x49c450
  0049c590: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049c593: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0049c596: 5f                                              pop    edi
  0049c597: 5e                                              pop    esi
  0049c598: 89 08                                           mov    DWORD PTR [eax],ecx
  0049c59a: 5b                                              pop    ebx
  0049c59b: 8b e5                                           mov    esp,ebp
  0049c59d: 5d                                              pop    ebp
  0049c59e: c3                                              ret
  0049c59f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049c5a2: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0049c5a5: 89 10                                           mov    DWORD PTR [eax],edx
  0049c5a7: 8b e5                                           mov    esp,ebp
  0049c5a9: 5d                                              pop    ebp
  0049c5aa: c3                                              ret
  0049c5b0: 55                                              push   ebp
  0049c5b1: 8b ec                                           mov    ebp,esp
  0049c5b3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049c5b6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0049c5b9: 3b ca                                           cmp    ecx,edx
  0049c5bb: 74 2f                                           je     0x49c5ec
  0049c5bd: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049c5c0: 53                                              push   ebx
  0049c5c1: 56                                              push   esi
  0049c5c2: 57                                              push   edi
  0049c5c3: 85 c0                                           test   eax,eax
  0049c5c5: 74 14                                           je     0x49c5db
  0049c5c7: 8b f1                                           mov    esi,ecx
  0049c5c9: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0049c5cb: 8b f8                                           mov    edi,eax
  0049c5cd: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049c5cf: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  0049c5d2: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  0049c5d5: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  0049c5d8: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  0049c5db: 83 c1 0c                                        add    ecx,0xc
  0049c5de: 83 c0 0c                                        add    eax,0xc
  0049c5e1: 3b ca                                           cmp    ecx,edx
  0049c5e3: 75 de                                           jne    0x49c5c3
  0049c5e5: 5f                                              pop    edi
  0049c5e6: 5e                                              pop    esi
  0049c5e7: 5b                                              pop    ebx
  0049c5e8: 5d                                              pop    ebp
  0049c5e9: c2 0c 00                                        ret    0xc
  0049c5ec: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049c5ef: 5d                                              pop    ebp
  0049c5f0: c2 0c 00                                        ret    0xc
  0049c600: 55                                              push   ebp
  0049c601: 8b ec                                           mov    ebp,esp
  0049c603: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049c606: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049c609: 3b c1                                           cmp    eax,ecx
  0049c60b: 74 24                                           je     0x49c631
  0049c60d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0049c610: 53                                              push   ebx
  0049c611: 56                                              push   esi
  0049c612: 57                                              push   edi
  0049c613: 8b f2                                           mov    esi,edx
  0049c615: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0049c617: 8b f8                                           mov    edi,eax
  0049c619: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049c61b: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  0049c61e: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  0049c621: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  0049c624: 83 c0 0c                                        add    eax,0xc
  0049c627: 3b c1                                           cmp    eax,ecx
  0049c629: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  0049c62c: 75 e5                                           jne    0x49c613
  0049c62e: 5f                                              pop    edi
  0049c62f: 5e                                              pop    esi
  0049c630: 5b                                              pop    ebx
  0049c631: 5d                                              pop    ebp
  0049c632: c3                                              ret
  0049c640: 55                                              push   ebp
  0049c641: 8b ec                                           mov    ebp,esp
  0049c643: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0049c646: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049c649: 3b d0                                           cmp    edx,eax
  0049c64b: 74 2e                                           je     0x49c67b
  0049c64d: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0049c650: 53                                              push   ebx
  0049c651: 56                                              push   esi
  0049c652: 57                                              push   edi
  0049c653: 83 e8 0c                                        sub    eax,0xc
  0049c656: 83 e9 0c                                        sub    ecx,0xc
  0049c659: 3b c2                                           cmp    eax,edx
  0049c65b: 8b f0                                           mov    esi,eax
  0049c65d: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0049c65f: 8b f9                                           mov    edi,ecx
  0049c661: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049c663: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  0049c666: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  0049c669: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  0049c66c: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  0049c66f: 75 e2                                           jne    0x49c653
  0049c671: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049c674: 5f                                              pop    edi
  0049c675: 5e                                              pop    esi
  0049c676: 89 08                                           mov    DWORD PTR [eax],ecx
  0049c678: 5b                                              pop    ebx
  0049c679: 5d                                              pop    ebp
  0049c67a: c3                                              ret
  0049c67b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049c67e: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0049c681: 89 08                                           mov    DWORD PTR [eax],ecx
  0049c683: 5d                                              pop    ebp
  0049c684: c3                                              ret
  0049c690: 55                                              push   ebp
  0049c691: 8b ec                                           mov    ebp,esp
  0049c693: 6a ff                                           push   0xffffffff
  0049c695: 68 07 b1 4d 00                                  push   0x4db107
  0049c69a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049c6a0: 50                                              push   eax
  0049c6a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049c6a8: 83 ec 08                                        sub    esp,0x8
  0049c6ab: 53                                              push   ebx
  0049c6ac: 56                                              push   esi
  0049c6ad: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0049c6b0: 57                                              push   edi
  0049c6b1: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0049c6b4: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049c6b7: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049c6ba: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0049c6c1: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  0049c6c4: 0f 84 7e 01 00 00                               je     0x49c848
  0049c6ca: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0049c6cd: 85 f6                                           test   esi,esi
  0049c6cf: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0049c6d3: 0f 84 ac 00 00 00                               je     0x49c785
  0049c6d9: 8a 07                                           mov    al,BYTE PTR [edi]
  0049c6db: 88 06                                           mov    BYTE PTR [esi],al
  0049c6dd: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0049c6e0: 85 c0                                           test   eax,eax
  0049c6e2: 75 04                                           jne    0x49c6e8
  0049c6e4: 33 d2                                           xor    edx,edx
  0049c6e6: eb 16                                           jmp    0x49c6fe
  0049c6e8: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0049c6eb: 2b c8                                           sub    ecx,eax
  0049c6ed: b8 67 66 66 66                                  mov    eax,0x66666667
  0049c6f2: f7 e9                                           imul   ecx
  0049c6f4: c1 fa 04                                        sar    edx,0x4
  0049c6f7: 8b c2                                           mov    eax,edx
  0049c6f9: c1 e8 1f                                        shr    eax,0x1f
  0049c6fc: 03 d0                                           add    edx,eax
  0049c6fe: 52                                              push   edx
  0049c6ff: 8b ce                                           mov    ecx,esi
  0049c701: e8 9a e5 ff ff                                  call   0x49aca0
  0049c706: 84 c0                                           test   al,al
  0049c708: 74 16                                           je     0x49c720
  0049c70a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049c70d: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0049c710: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0049c713: 52                                              push   edx
  0049c714: 50                                              push   eax
  0049c715: 51                                              push   ecx
  0049c716: 8b ce                                           mov    ecx,esi
  0049c718: e8 a3 05 00 00                                  call   0x49ccc0
  0049c71d: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049c720: 8a 47 10                                        mov    al,BYTE PTR [edi+0x10]
  0049c723: 8d 4f 10                                        lea    ecx,[edi+0x10]
  0049c726: 8d 5e 10                                        lea    ebx,[esi+0x10]
  0049c729: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0049c72d: 88 03                                           mov    BYTE PTR [ebx],al
  0049c72f: e8 3c fa ff ff                                  call   0x49c170
  0049c734: 50                                              push   eax
  0049c735: 8b cb                                           mov    ecx,ebx
  0049c737: e8 74 e6 ff ff                                  call   0x49adb0
  0049c73c: 84 c0                                           test   al,al
  0049c73e: 74 16                                           je     0x49c756
  0049c740: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0049c743: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  0049c746: 8b 4f 14                                        mov    ecx,DWORD PTR [edi+0x14]
  0049c749: 52                                              push   edx
  0049c74a: 50                                              push   eax
  0049c74b: 51                                              push   ecx
  0049c74c: 8b cb                                           mov    ecx,ebx
  0049c74e: e8 4d 06 00 00                                  call   0x49cda0
  0049c753: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049c756: 8a 47 20                                        mov    al,BYTE PTR [edi+0x20]
  0049c759: 88 46 20                                        mov    BYTE PTR [esi+0x20],al
  0049c75c: 8b 4f 24                                        mov    ecx,DWORD PTR [edi+0x24]
  0049c75f: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  0049c762: 8b 57 28                                        mov    edx,DWORD PTR [edi+0x28]
  0049c765: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  0049c768: 8b 47 2c                                        mov    eax,DWORD PTR [edi+0x2c]
  0049c76b: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0049c76e: 8b 4f 30                                        mov    ecx,DWORD PTR [edi+0x30]
  0049c771: 8d 57 34                                        lea    edx,[edi+0x34]
  0049c774: 89 4e 30                                        mov    DWORD PTR [esi+0x30],ecx
  0049c777: 52                                              push   edx
  0049c778: 8d 4e 34                                        lea    ecx,[esi+0x34]
  0049c77b: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0049c77f: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  0049c785: 83 c6 44                                        add    esi,0x44
  0049c788: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0049c78c: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049c78f: 83 c7 44                                        add    edi,0x44
  0049c792: e9 2a ff ff ff                                  jmp    0x49c6c1
  0049c848: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049c84b: 5f                                              pop    edi
  0049c84c: 8b c6                                           mov    eax,esi
  0049c84e: 5e                                              pop    esi
  0049c84f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049c856: 5b                                              pop    ebx
  0049c857: 8b e5                                           mov    esp,ebp
  0049c859: 5d                                              pop    ebp
  0049c85a: c2 0c 00                                        ret    0xc
  0049c860: 55                                              push   ebp
  0049c861: 8b ec                                           mov    ebp,esp
  0049c863: 51                                              push   ecx
  0049c864: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049c867: 53                                              push   ebx
  0049c868: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0049c86b: 3b d8                                           cmp    ebx,eax
  0049c86d: 0f 84 31 02 00 00                               je     0x49caa4
  0049c873: 56                                              push   esi
  0049c874: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0049c877: 57                                              push   edi
  0049c878: 3b de                                           cmp    ebx,esi
  0049c87a: 0f 84 2e 01 00 00                               je     0x49c9ae
  0049c880: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049c883: 33 ff                                           xor    edi,edi
  0049c885: 3b c7                                           cmp    eax,edi
  0049c887: 74 18                                           je     0x49c8a1
  0049c889: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049c88c: 2b c8                                           sub    ecx,eax
  0049c88e: b8 67 66 66 66                                  mov    eax,0x66666667
  0049c893: f7 e9                                           imul   ecx
  0049c895: c1 fa 04                                        sar    edx,0x4
  0049c898: 8b c2                                           mov    eax,edx
  0049c89a: c1 e8 1f                                        shr    eax,0x1f
  0049c89d: 03 d0                                           add    edx,eax
  0049c89f: 75 2d                                           jne    0x49c8ce
  0049c8a1: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049c8a4: 3b c7                                           cmp    eax,edi
  0049c8a6: 74 18                                           je     0x49c8c0
  0049c8a8: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049c8ab: 51                                              push   ecx
  0049c8ac: 50                                              push   eax
  0049c8ad: 8b cb                                           mov    ecx,ebx
  0049c8af: e8 2c 02 00 00                                  call   0x49cae0
  0049c8b4: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0049c8b7: 52                                              push   edx
  0049c8b8: e8 a3 57 fa ff                                  call   0x442060
  0049c8bd: 83 c4 04                                        add    esp,0x4
  0049c8c0: 89 7b 04                                        mov    DWORD PTR [ebx+0x4],edi
  0049c8c3: 89 7b 08                                        mov    DWORD PTR [ebx+0x8],edi
  0049c8c6: 89 7b 0c                                        mov    DWORD PTR [ebx+0xc],edi
  0049c8c9: e9 e0 00 00 00                                  jmp    0x49c9ae
  0049c8ce: 8b cb                                           mov    ecx,ebx
  0049c8d0: e8 db 01 00 00                                  call   0x49cab0
  0049c8d5: 8b ce                                           mov    ecx,esi
  0049c8d7: 8b f8                                           mov    edi,eax
  0049c8d9: e8 d2 01 00 00                                  call   0x49cab0
  0049c8de: 3b c7                                           cmp    eax,edi
  0049c8e0: 77 38                                           ja     0x49c91a
  0049c8e2: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0049c8e5: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049c8e8: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049c8eb: 52                                              push   edx
  0049c8ec: 50                                              push   eax
  0049c8ed: 51                                              push   ecx
  0049c8ee: e8 3d 07 00 00                                  call   0x49d030
  0049c8f3: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049c8f6: 83 c4 0c                                        add    esp,0xc
  0049c8f9: 51                                              push   ecx
  0049c8fa: 50                                              push   eax
  0049c8fb: 8b cb                                           mov    ecx,ebx
  0049c8fd: e8 de 01 00 00                                  call   0x49cae0
  0049c902: 8b ce                                           mov    ecx,esi
  0049c904: e8 a7 01 00 00                                  call   0x49cab0
  0049c909: 8d 14 80                                        lea    edx,[eax+eax*4]
  0049c90c: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049c90f: 8d 0c d0                                        lea    ecx,[eax+edx*8]
  0049c912: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0049c915: e9 94 00 00 00                                  jmp    0x49c9ae
  0049c91a: 8b cb                                           mov    ecx,ebx
  0049c91c: e8 ef 01 00 00                                  call   0x49cb10
  0049c921: 8b ce                                           mov    ecx,esi
  0049c923: 8b f8                                           mov    edi,eax
  0049c925: e8 86 01 00 00                                  call   0x49cab0
  0049c92a: 3b c7                                           cmp    eax,edi
  0049c92c: 77 3c                                           ja     0x49c96a
  0049c92e: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049c931: 8b cb                                           mov    ecx,ebx
  0049c933: 89 55 08                                        mov    DWORD PTR [ebp+0x8],edx
  0049c936: e8 75 01 00 00                                  call   0x49cab0
  0049c93b: 50                                              push   eax
  0049c93c: 8d 45 fc                                        lea    eax,[ebp-0x4]
  0049c93f: 50                                              push   eax
  0049c940: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0049c943: e8 c8 06 00 00                                  call   0x49d010
  0049c948: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049c94b: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0049c94e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049c951: 51                                              push   ecx
  0049c952: 52                                              push   edx
  0049c953: 50                                              push   eax
  0049c954: e8 d7 06 00 00                                  call   0x49d030
  0049c959: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049c95c: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049c95f: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0049c962: 83 c4 0c                                        add    esp,0xc
  0049c965: 51                                              push   ecx
  0049c966: 50                                              push   eax
  0049c967: 52                                              push   edx
  0049c968: eb 3a                                           jmp    0x49c9a4
  0049c96a: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0049c96d: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049c970: 50                                              push   eax
  0049c971: 51                                              push   ecx
  0049c972: 8b cb                                           mov    ecx,ebx
  0049c974: e8 67 01 00 00                                  call   0x49cae0
  0049c979: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0049c97c: 52                                              push   edx
  0049c97d: e8 de 56 fa ff                                  call   0x442060
  0049c982: 83 c4 04                                        add    esp,0x4
  0049c985: 8b ce                                           mov    ecx,esi
  0049c987: e8 24 01 00 00                                  call   0x49cab0
  0049c98c: 50                                              push   eax
  0049c98d: 8b cb                                           mov    ecx,ebx
  0049c98f: e8 0c e3 ff ff                                  call   0x49aca0
  0049c994: 84 c0                                           test   al,al
  0049c996: 74 16                                           je     0x49c9ae
  0049c998: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0049c99b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049c99e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049c9a1: 52                                              push   edx
  0049c9a2: 50                                              push   eax
  0049c9a3: 51                                              push   ecx
  0049c9a4: 8b cb                                           mov    ecx,ebx
  0049c9a6: e8 15 03 00 00                                  call   0x49ccc0
  0049c9ab: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049c9ae: 8d 46 10                                        lea    eax,[esi+0x10]
  0049c9b1: 50                                              push   eax
  0049c9b2: 8d 4b 10                                        lea    ecx,[ebx+0x10]
  0049c9b5: e8 36 04 00 00                                  call   0x49cdf0
  0049c9ba: 8a 46 20                                        mov    al,BYTE PTR [esi+0x20]
  0049c9bd: 88 43 20                                        mov    BYTE PTR [ebx+0x20],al
  0049c9c0: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  0049c9c3: 89 4b 24                                        mov    DWORD PTR [ebx+0x24],ecx
  0049c9c6: 8b 56 28                                        mov    edx,DWORD PTR [esi+0x28]
  0049c9c9: 89 53 28                                        mov    DWORD PTR [ebx+0x28],edx
  0049c9cc: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  0049c9cf: 89 43 2c                                        mov    DWORD PTR [ebx+0x2c],eax
  0049c9d2: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  0049c9d5: 89 4b 30                                        mov    DWORD PTR [ebx+0x30],ecx
  0049c9d8: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0049c9de: 8b 46 3c                                        mov    eax,DWORD PTR [esi+0x3c]
  0049c9e1: 8b 12                                           mov    edx,DWORD PTR [edx]
  0049c9e3: 3b d0                                           cmp    edx,eax
  0049c9e5: 8d 7e 34                                        lea    edi,[esi+0x34]
  0049c9e8: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0049c9eb: 73 05                                           jae    0x49c9f2
  0049c9ed: 89 55 08                                        mov    DWORD PTR [ebp+0x8],edx
  0049c9f0: 8b c2                                           mov    eax,edx
  0049c9f2: 8d 4b 34                                        lea    ecx,[ebx+0x34]
  0049c9f5: 3b cf                                           cmp    ecx,edi
  0049c9f7: 75 1a                                           jne    0x49ca13
  0049c9f9: 52                                              push   edx
  0049c9fa: 50                                              push   eax
  0049c9fb: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0049ca01: 6a 00                                           push   0x0
  0049ca03: 6a 00                                           push   0x0
  0049ca05: 8d 4b 34                                        lea    ecx,[ebx+0x34]
  0049ca08: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0049ca0e: e9 81 00 00 00                                  jmp    0x49ca94
  0049ca13: 85 c0                                           test   eax,eax
  0049ca15: 76 40                                           jbe    0x49ca57
  0049ca17: 3b 47 08                                        cmp    eax,DWORD PTR [edi+0x8]
  0049ca1a: 75 3b                                           jne    0x49ca57
  0049ca1c: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0049ca1f: 85 d2                                           test   edx,edx
  0049ca21: 75 06                                           jne    0x49ca29
  0049ca23: 8b 15 d8 e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4d8
  0049ca29: 80 7a ff fe                                     cmp    BYTE PTR [edx-0x1],0xfe
  0049ca2d: 73 28                                           jae    0x49ca57
  0049ca2f: 6a 01                                           push   0x1
  0049ca31: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0049ca37: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0049ca3a: 85 c0                                           test   eax,eax
  0049ca3c: 75 05                                           jne    0x49ca43
  0049ca3e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049ca43: 89 43 38                                        mov    DWORD PTR [ebx+0x38],eax
  0049ca46: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0049ca49: 89 4b 3c                                        mov    DWORD PTR [ebx+0x3c],ecx
  0049ca4c: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  0049ca4f: 89 53 40                                        mov    DWORD PTR [ebx+0x40],edx
  0049ca52: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0049ca55: eb 3d                                           jmp    0x49ca94
  0049ca57: 6a 01                                           push   0x1
  0049ca59: 50                                              push   eax
  0049ca5a: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0049ca60: 84 c0                                           test   al,al
  0049ca62: 74 30                                           je     0x49ca94
  0049ca64: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  0049ca67: 85 f6                                           test   esi,esi
  0049ca69: 75 06                                           jne    0x49ca71
  0049ca6b: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0049ca71: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049ca74: 8b 7b 38                                        mov    edi,DWORD PTR [ebx+0x38]
  0049ca77: 8b c1                                           mov    eax,ecx
  0049ca79: c1 e9 02                                        shr    ecx,0x2
  0049ca7c: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0049ca7e: 8b c8                                           mov    ecx,eax
  0049ca80: 83 e1 03                                        and    ecx,0x3
  0049ca83: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0049ca85: 8b c8                                           mov    ecx,eax
  0049ca87: 51                                              push   ecx
  0049ca88: 8d 4b 34                                        lea    ecx,[ebx+0x34]
  0049ca8b: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0049ca91: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0049ca94: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049ca97: 83 c3 44                                        add    ebx,0x44
  0049ca9a: 3b d8                                           cmp    ebx,eax
  0049ca9c: 0f 85 d6 fd ff ff                               jne    0x49c878
  0049caa2: 5f                                              pop    edi
  0049caa3: 5e                                              pop    esi
  0049caa4: 5b                                              pop    ebx
  0049caa5: 8b e5                                           mov    esp,ebp
  0049caa7: 5d                                              pop    ebp
  0049caa8: c3                                              ret
  0049cb40: 55                                              push   ebp
  0049cb41: 8b ec                                           mov    ebp,esp
  0049cb43: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049cb46: 57                                              push   edi
  0049cb47: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0049cb4a: 3b c7                                           cmp    eax,edi
  0049cb4c: 0f 84 5e 01 00 00                               je     0x49ccb0
  0049cb52: 53                                              push   ebx
  0049cb53: 56                                              push   esi
  0049cb54: 8b 75 14                                        mov    esi,DWORD PTR [ebp+0x14]
  0049cb57: 83 ef 44                                        sub    edi,0x44
  0049cb5a: 83 ee 44                                        sub    esi,0x44
  0049cb5d: 3b f7                                           cmp    esi,edi
  0049cb5f: 0f 84 f7 00 00 00                               je     0x49cc5c
  0049cb65: 8b cf                                           mov    ecx,edi
  0049cb67: e8 44 ff ff ff                                  call   0x49cab0
  0049cb6c: 85 c0                                           test   eax,eax
  0049cb6e: 75 0c                                           jne    0x49cb7c
  0049cb70: 8b ce                                           mov    ecx,esi
  0049cb72: e8 79 e1 ff ff                                  call   0x49acf0
  0049cb77: e9 e0 00 00 00                                  jmp    0x49cc5c
  0049cb7c: 8b cf                                           mov    ecx,edi
  0049cb7e: e8 2d ff ff ff                                  call   0x49cab0
  0049cb83: 8b ce                                           mov    ecx,esi
  0049cb85: 8b d8                                           mov    ebx,eax
  0049cb87: e8 24 ff ff ff                                  call   0x49cab0
  0049cb8c: 3b d8                                           cmp    ebx,eax
  0049cb8e: 77 38                                           ja     0x49cbc8
  0049cb90: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049cb93: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0049cb96: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0049cb99: 52                                              push   edx
  0049cb9a: 50                                              push   eax
  0049cb9b: 51                                              push   ecx
  0049cb9c: e8 8f 04 00 00                                  call   0x49d030
  0049cba1: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049cba4: 83 c4 0c                                        add    esp,0xc
  0049cba7: 51                                              push   ecx
  0049cba8: 50                                              push   eax
  0049cba9: 8b ce                                           mov    ecx,esi
  0049cbab: e8 30 ff ff ff                                  call   0x49cae0
  0049cbb0: 8b cf                                           mov    ecx,edi
  0049cbb2: e8 f9 fe ff ff                                  call   0x49cab0
  0049cbb7: 8d 14 80                                        lea    edx,[eax+eax*4]
  0049cbba: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049cbbd: 8d 0c d0                                        lea    ecx,[eax+edx*8]
  0049cbc0: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0049cbc3: e9 94 00 00 00                                  jmp    0x49cc5c
  0049cbc8: 8b cf                                           mov    ecx,edi
  0049cbca: e8 e1 fe ff ff                                  call   0x49cab0
  0049cbcf: 8b ce                                           mov    ecx,esi
  0049cbd1: 8b d8                                           mov    ebx,eax
  0049cbd3: e8 38 ff ff ff                                  call   0x49cb10
  0049cbd8: 3b d8                                           cmp    ebx,eax
  0049cbda: 77 3c                                           ja     0x49cc18
  0049cbdc: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0049cbdf: 8b ce                                           mov    ecx,esi
  0049cbe1: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049cbe4: e8 c7 fe ff ff                                  call   0x49cab0
  0049cbe9: 50                                              push   eax
  0049cbea: 8d 45 14                                        lea    eax,[ebp+0x14]
  0049cbed: 50                                              push   eax
  0049cbee: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0049cbf1: e8 1a 04 00 00                                  call   0x49d010
  0049cbf6: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049cbf9: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0049cbfc: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0049cbff: 51                                              push   ecx
  0049cc00: 52                                              push   edx
  0049cc01: 50                                              push   eax
  0049cc02: e8 29 04 00 00                                  call   0x49d030
  0049cc07: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049cc0a: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0049cc0d: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0049cc10: 83 c4 0c                                        add    esp,0xc
  0049cc13: 51                                              push   ecx
  0049cc14: 50                                              push   eax
  0049cc15: 52                                              push   edx
  0049cc16: eb 3a                                           jmp    0x49cc52
  0049cc18: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049cc1b: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049cc1e: 50                                              push   eax
  0049cc1f: 51                                              push   ecx
  0049cc20: 8b ce                                           mov    ecx,esi
  0049cc22: e8 b9 fe ff ff                                  call   0x49cae0
  0049cc27: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049cc2a: 52                                              push   edx
  0049cc2b: e8 30 54 fa ff                                  call   0x442060
  0049cc30: 83 c4 04                                        add    esp,0x4
  0049cc33: 8b cf                                           mov    ecx,edi
  0049cc35: e8 76 fe ff ff                                  call   0x49cab0
  0049cc3a: 50                                              push   eax
  0049cc3b: 8b ce                                           mov    ecx,esi
  0049cc3d: e8 5e e0 ff ff                                  call   0x49aca0
  0049cc42: 84 c0                                           test   al,al
  0049cc44: 74 16                                           je     0x49cc5c
  0049cc46: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049cc49: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0049cc4c: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0049cc4f: 52                                              push   edx
  0049cc50: 50                                              push   eax
  0049cc51: 51                                              push   ecx
  0049cc52: 8b ce                                           mov    ecx,esi
  0049cc54: e8 67 00 00 00                                  call   0x49ccc0
  0049cc59: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049cc5c: 8d 47 10                                        lea    eax,[edi+0x10]
  0049cc5f: 50                                              push   eax
  0049cc60: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0049cc63: e8 88 01 00 00                                  call   0x49cdf0
  0049cc68: 8a 4f 20                                        mov    cl,BYTE PTR [edi+0x20]
  0049cc6b: 88 4e 20                                        mov    BYTE PTR [esi+0x20],cl
  0049cc6e: 8b 57 24                                        mov    edx,DWORD PTR [edi+0x24]
  0049cc71: 89 56 24                                        mov    DWORD PTR [esi+0x24],edx
  0049cc74: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  0049cc77: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0049cc7a: 8b 4f 2c                                        mov    ecx,DWORD PTR [edi+0x2c]
  0049cc7d: 89 4e 2c                                        mov    DWORD PTR [esi+0x2c],ecx
  0049cc80: 8b 57 30                                        mov    edx,DWORD PTR [edi+0x30]
  0049cc83: 89 56 30                                        mov    DWORD PTR [esi+0x30],edx
  0049cc86: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0049cc8b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0049cc8d: 51                                              push   ecx
  0049cc8e: 6a 00                                           push   0x0
  0049cc90: 8d 57 34                                        lea    edx,[edi+0x34]
  0049cc93: 52                                              push   edx
  0049cc94: 8d 4e 34                                        lea    ecx,[esi+0x34]
  0049cc97: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0049cc9d: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  0049cca0: 0f 85 b1 fe ff ff                               jne    0x49cb57
  0049cca6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049cca9: 89 30                                           mov    DWORD PTR [eax],esi
  0049ccab: 5e                                              pop    esi
  0049ccac: 5b                                              pop    ebx
  0049ccad: 5f                                              pop    edi
  0049ccae: 5d                                              pop    ebp
  0049ccaf: c3                                              ret
  0049ccb0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049ccb3: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0049ccb6: 89 08                                           mov    DWORD PTR [eax],ecx
  0049ccb8: 5f                                              pop    edi
  0049ccb9: 5d                                              pop    ebp
  0049ccba: c3                                              ret
  004a08e0: 55                                              push   ebp
  004a08e1: 8b ec                                           mov    ebp,esp
  004a08e3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004a08e6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a08e9: 89 08                                           mov    DWORD PTR [eax],ecx
  004a08eb: 5d                                              pop    ebp
  004a08ec: c2 04 00                                        ret    0x4
  004a08f0: 55                                              push   ebp
  004a08f1: 8b ec                                           mov    ebp,esp
  004a08f3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a08f6: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004a08fd: 2b d0                                           sub    edx,eax
  004a08ff: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004a0901: 8d 0c d0                                        lea    ecx,[eax+edx*8]
  004a0904: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a0907: 89 08                                           mov    DWORD PTR [eax],ecx
  004a0909: 5d                                              pop    ebp
  004a090a: c2 08 00                                        ret    0x8
  004a0d50: 55                                              push   ebp
  004a0d51: 8b ec                                           mov    ebp,esp
  004a0d53: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004a0d56: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a0d59: 89 08                                           mov    DWORD PTR [eax],ecx
  004a0d5b: 5d                                              pop    ebp
  004a0d5c: c2 04 00                                        ret    0x4
  004a0d60: 55                                              push   ebp
  004a0d61: 8b ec                                           mov    ebp,esp
  004a0d63: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a0d66: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a0d68: 8d 04 c0                                        lea    eax,[eax+eax*8]
  004a0d6b: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004a0d6e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a0d71: 89 10                                           mov    DWORD PTR [eax],edx
  004a0d73: 5d                                              pop    ebp
  004a0d74: c2 08 00                                        ret    0x8
  004a1510: 55                                              push   ebp
  004a1511: 8b ec                                           mov    ebp,esp
  004a1513: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004a1516: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a1519: 89 08                                           mov    DWORD PTR [eax],ecx
  004a151b: 5d                                              pop    ebp
  004a151c: c2 04 00                                        ret    0x4
  004a1520: 55                                              push   ebp
  004a1521: 8b ec                                           mov    ebp,esp
  004a1523: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a1526: 8b d0                                           mov    edx,eax
  004a1528: c1 e2 04                                        shl    edx,0x4
  004a152b: 03 d0                                           add    edx,eax
  004a152d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004a152f: c1 e2 04                                        shl    edx,0x4
  004a1532: 03 d0                                           add    edx,eax
  004a1534: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a1537: 89 10                                           mov    DWORD PTR [eax],edx
  004a1539: 5d                                              pop    ebp
  004a153a: c2 08 00                                        ret    0x8
  004a19c0: 55                                              push   ebp
  004a19c1: 8b ec                                           mov    ebp,esp
  004a19c3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004a19c6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a19c9: 89 08                                           mov    DWORD PTR [eax],ecx
  004a19cb: 5d                                              pop    ebp
  004a19cc: c2 04 00                                        ret    0x4
  004a19d0: 55                                              push   ebp
  004a19d1: 8b ec                                           mov    ebp,esp
  004a19d3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a19d6: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004a19dd: 2b d0                                           sub    edx,eax
  004a19df: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004a19e1: 8d 0c d0                                        lea    ecx,[eax+edx*8]
  004a19e4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a19e7: 89 08                                           mov    DWORD PTR [eax],ecx
  004a19e9: 5d                                              pop    ebp
  004a19ea: c2 08 00                                        ret    0x8
  004a1ba0: 55                                              push   ebp
  004a1ba1: 8b ec                                           mov    ebp,esp
  004a1ba3: 53                                              push   ebx
  004a1ba4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a1ba7: 8a 03                                           mov    al,BYTE PTR [ebx]
  004a1ba9: 56                                              push   esi
  004a1baa: 8b f1                                           mov    esi,ecx
  004a1bac: 57                                              push   edi
  004a1bad: 88 06                                           mov    BYTE PTR [esi],al
  004a1baf: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a1bb2: 33 ff                                           xor    edi,edi
  004a1bb4: 3b c7                                           cmp    eax,edi
  004a1bb6: 75 04                                           jne    0x4a1bbc
  004a1bb8: 33 d2                                           xor    edx,edx
  004a1bba: eb 16                                           jmp    0x4a1bd2
  004a1bbc: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a1bbf: 2b c8                                           sub    ecx,eax
  004a1bc1: b8 67 66 66 66                                  mov    eax,0x66666667
  004a1bc6: f7 e9                                           imul   ecx
  004a1bc8: c1 fa 04                                        sar    edx,0x4
  004a1bcb: 8b c2                                           mov    eax,edx
  004a1bcd: c1 e8 1f                                        shr    eax,0x1f
  004a1bd0: 03 d0                                           add    edx,eax
  004a1bd2: 3b d7                                           cmp    edx,edi
  004a1bd4: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a1bd7: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a1bda: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a1bdd: 74 2d                                           je     0x4a1c0c
  004a1bdf: 8d 3c 92                                        lea    edi,[edx+edx*4]
  004a1be2: c1 e7 03                                        shl    edi,0x3
  004a1be5: 57                                              push   edi
  004a1be6: e8 05 04 fa ff                                  call   0x441ff0
  004a1beb: 83 c4 04                                        add    esp,0x4
  004a1bee: 03 f8                                           add    edi,eax
  004a1bf0: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a1bf3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1bf6: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a1bf9: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a1bfc: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004a1bff: 50                                              push   eax
  004a1c00: 51                                              push   ecx
  004a1c01: 53                                              push   ebx
  004a1c02: 8b ce                                           mov    ecx,esi
  004a1c04: e8 57 24 00 00                                  call   0x4a4060
  004a1c09: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1c0c: 5f                                              pop    edi
  004a1c0d: 8b c6                                           mov    eax,esi
  004a1c0f: 5e                                              pop    esi
  004a1c10: 5b                                              pop    ebx
  004a1c11: 5d                                              pop    ebp
  004a1c12: c2 04 00                                        ret    0x4
  004a1da0: 55                                              push   ebp
  004a1da1: 8b ec                                           mov    ebp,esp
  004a1da3: 53                                              push   ebx
  004a1da4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a1da7: 8a 03                                           mov    al,BYTE PTR [ebx]
  004a1da9: 56                                              push   esi
  004a1daa: 8b f1                                           mov    esi,ecx
  004a1dac: 57                                              push   edi
  004a1dad: 88 06                                           mov    BYTE PTR [esi],al
  004a1daf: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a1db2: 33 ff                                           xor    edi,edi
  004a1db4: 3b c7                                           cmp    eax,edi
  004a1db6: 75 04                                           jne    0x4a1dbc
  004a1db8: 33 d2                                           xor    edx,edx
  004a1dba: eb 18                                           jmp    0x4a1dd4
  004a1dbc: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a1dbf: 2b c8                                           sub    ecx,eax
  004a1dc1: b8 93 24 49 92                                  mov    eax,0x92492493
  004a1dc6: f7 e9                                           imul   ecx
  004a1dc8: 03 d1                                           add    edx,ecx
  004a1dca: c1 fa 05                                        sar    edx,0x5
  004a1dcd: 8b c2                                           mov    eax,edx
  004a1dcf: c1 e8 1f                                        shr    eax,0x1f
  004a1dd2: 03 d0                                           add    edx,eax
  004a1dd4: 3b d7                                           cmp    edx,edi
  004a1dd6: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a1dd9: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a1ddc: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a1ddf: 74 33                                           je     0x4a1e14
  004a1de1: 8d 3c d5 00 00 00 00                            lea    edi,[edx*8+0x0]
  004a1de8: 2b fa                                           sub    edi,edx
  004a1dea: c1 e7 03                                        shl    edi,0x3
  004a1ded: 57                                              push   edi
  004a1dee: e8 fd 01 fa ff                                  call   0x441ff0
  004a1df3: 83 c4 04                                        add    esp,0x4
  004a1df6: 03 f8                                           add    edi,eax
  004a1df8: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a1dfb: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1dfe: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a1e01: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a1e04: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004a1e07: 50                                              push   eax
  004a1e08: 51                                              push   ecx
  004a1e09: 53                                              push   ebx
  004a1e0a: 8b ce                                           mov    ecx,esi
  004a1e0c: e8 5f 23 00 00                                  call   0x4a4170
  004a1e11: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1e14: 5f                                              pop    edi
  004a1e15: 8b c6                                           mov    eax,esi
  004a1e17: 5e                                              pop    esi
  004a1e18: 5b                                              pop    ebx
  004a1e19: 5d                                              pop    ebp
  004a1e1a: c2 04 00                                        ret    0x4
  004a1e20: 55                                              push   ebp
  004a1e21: 8b ec                                           mov    ebp,esp
  004a1e23: 6a ff                                           push   0xffffffff
  004a1e25: 68 49 b7 4d 00                                  push   0x4db749
  004a1e2a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a1e30: 50                                              push   eax
  004a1e31: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a1e38: 83 ec 08                                        sub    esp,0x8
  004a1e3b: 53                                              push   ebx
  004a1e3c: 56                                              push   esi
  004a1e3d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a1e40: 57                                              push   edi
  004a1e41: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a1e44: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a1e47: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a1e4a: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a1e51: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a1e54: 85 c0                                           test   eax,eax
  004a1e56: 0f 86 ae 00 00 00                               jbe    0x4a1f0a
  004a1e5c: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a1e5f: 85 f6                                           test   esi,esi
  004a1e61: 74 6f                                           je     0x4a1ed2
  004a1e63: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a1e66: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a1e69: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a1e6c: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a1e6f: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a1e72: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a1e75: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a1e78: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a1e7b: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a1e7e: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a1e81: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a1e87: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  004a1e8a: 89 56 18                                        mov    DWORD PTR [esi+0x18],edx
  004a1e8d: 8b 47 1c                                        mov    eax,DWORD PTR [edi+0x1c]
  004a1e90: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004a1e93: 8a 47 20                                        mov    al,BYTE PTR [edi+0x20]
  004a1e96: 8d 5e 20                                        lea    ebx,[esi+0x20]
  004a1e99: 6a 00                                           push   0x0
  004a1e9b: 8b cb                                           mov    ecx,ebx
  004a1e9d: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a1ea1: 88 03                                           mov    BYTE PTR [ebx],al
  004a1ea3: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a1ea9: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a1eaf: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a1eb1: 52                                              push   edx
  004a1eb2: 6a 00                                           push   0x0
  004a1eb4: 8d 47 20                                        lea    eax,[edi+0x20]
  004a1eb7: 50                                              push   eax
  004a1eb8: 8b cb                                           mov    ecx,ebx
  004a1eba: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a1ec0: 8b 47 30                                        mov    eax,DWORD PTR [edi+0x30]
  004a1ec3: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004a1ec6: 8b 4f 34                                        mov    ecx,DWORD PTR [edi+0x34]
  004a1ec9: 89 4e 34                                        mov    DWORD PTR [esi+0x34],ecx
  004a1ecc: c7 06 88 f9 4d 00                               mov    DWORD PTR [esi],0x4df988
  004a1ed2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a1ed5: 49                                              dec    ecx
  004a1ed6: 83 c6 38                                        add    esi,0x38
  004a1ed9: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a1edd: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a1ee0: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a1ee3: e9 69 ff ff ff                                  jmp    0x4a1e51
  004a1f0a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a1f0d: 5f                                              pop    edi
  004a1f0e: 8b c6                                           mov    eax,esi
  004a1f10: 5e                                              pop    esi
  004a1f11: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a1f18: 5b                                              pop    ebx
  004a1f19: 8b e5                                           mov    esp,ebp
  004a1f1b: 5d                                              pop    ebp
  004a1f1c: c2 0c 00                                        ret    0xc
  004a1f20: 55                                              push   ebp
  004a1f21: 8b ec                                           mov    ebp,esp
  004a1f23: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a1f26: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a1f28: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004a1f2f: 2b d0                                           sub    edx,eax
  004a1f31: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a1f34: c1 e2 03                                        shl    edx,0x3
  004a1f37: 2b ca                                           sub    ecx,edx
  004a1f39: 89 08                                           mov    DWORD PTR [eax],ecx
  004a1f3b: 5d                                              pop    ebp
  004a1f3c: c2 08 00                                        ret    0x8
  004a1f40: 55                                              push   ebp
  004a1f41: 8b ec                                           mov    ebp,esp
  004a1f43: 53                                              push   ebx
  004a1f44: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a1f47: 8a 03                                           mov    al,BYTE PTR [ebx]
  004a1f49: 56                                              push   esi
  004a1f4a: 8b f1                                           mov    esi,ecx
  004a1f4c: 57                                              push   edi
  004a1f4d: 88 06                                           mov    BYTE PTR [esi],al
  004a1f4f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a1f52: 33 ff                                           xor    edi,edi
  004a1f54: 3b c7                                           cmp    eax,edi
  004a1f56: 75 04                                           jne    0x4a1f5c
  004a1f58: 33 d2                                           xor    edx,edx
  004a1f5a: eb 16                                           jmp    0x4a1f72
  004a1f5c: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a1f5f: 2b c8                                           sub    ecx,eax
  004a1f61: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a1f66: f7 e9                                           imul   ecx
  004a1f68: c1 fa 03                                        sar    edx,0x3
  004a1f6b: 8b c2                                           mov    eax,edx
  004a1f6d: c1 e8 1f                                        shr    eax,0x1f
  004a1f70: 03 d0                                           add    edx,eax
  004a1f72: 3b d7                                           cmp    edx,edi
  004a1f74: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a1f77: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a1f7a: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a1f7d: 74 2d                                           je     0x4a1fac
  004a1f7f: 8d 3c d2                                        lea    edi,[edx+edx*8]
  004a1f82: c1 e7 02                                        shl    edi,0x2
  004a1f85: 57                                              push   edi
  004a1f86: e8 65 00 fa ff                                  call   0x441ff0
  004a1f8b: 83 c4 04                                        add    esp,0x4
  004a1f8e: 03 f8                                           add    edi,eax
  004a1f90: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a1f93: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1f96: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a1f99: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a1f9c: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004a1f9f: 50                                              push   eax
  004a1fa0: 51                                              push   ecx
  004a1fa1: 53                                              push   ebx
  004a1fa2: 8b ce                                           mov    ecx,esi
  004a1fa4: e8 c7 22 00 00                                  call   0x4a4270
  004a1fa9: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1fac: 5f                                              pop    edi
  004a1fad: 8b c6                                           mov    eax,esi
  004a1faf: 5e                                              pop    esi
  004a1fb0: 5b                                              pop    ebx
  004a1fb1: 5d                                              pop    ebp
  004a1fb2: c2 04 00                                        ret    0x4
  004a1fc0: 55                                              push   ebp
  004a1fc1: 8b ec                                           mov    ebp,esp
  004a1fc3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a1fc6: 85 c0                                           test   eax,eax
  004a1fc8: 76 54                                           jbe    0x4a201e
  004a1fca: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004a1fcd: 56                                              push   esi
  004a1fce: 8b f0                                           mov    esi,eax
  004a1fd0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a1fd3: 85 c0                                           test   eax,eax
  004a1fd5: 74 3c                                           je     0x4a2013
  004a1fd7: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004a1fda: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004a1fdd: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004a1fe0: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004a1fe3: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  004a1fe6: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004a1fe9: 8b 51 10                                        mov    edx,DWORD PTR [ecx+0x10]
  004a1fec: 89 50 10                                        mov    DWORD PTR [eax+0x10],edx
  004a1fef: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004a1ff2: c7 00 28 f9 4d 00                               mov    DWORD PTR [eax],0x4df928
  004a1ff8: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  004a1ffb: 8b 51 18                                        mov    edx,DWORD PTR [ecx+0x18]
  004a1ffe: 89 50 18                                        mov    DWORD PTR [eax+0x18],edx
  004a2001: 8b 51 1c                                        mov    edx,DWORD PTR [ecx+0x1c]
  004a2004: 89 50 1c                                        mov    DWORD PTR [eax+0x1c],edx
  004a2007: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004a200a: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  004a200d: c7 00 a8 f9 4d 00                               mov    DWORD PTR [eax],0x4df9a8
  004a2013: 83 c0 24                                        add    eax,0x24
  004a2016: 4e                                              dec    esi
  004a2017: 75 ba                                           jne    0x4a1fd3
  004a2019: 5e                                              pop    esi
  004a201a: 5d                                              pop    ebp
  004a201b: c2 0c 00                                        ret    0xc
  004a201e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a2021: 5d                                              pop    ebp
  004a2022: c2 0c 00                                        ret    0xc
  004a2030: 55                                              push   ebp
  004a2031: 8b ec                                           mov    ebp,esp
  004a2033: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a2036: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a2038: 8d 04 c0                                        lea    eax,[eax+eax*8]
  004a203b: c1 e0 02                                        shl    eax,0x2
  004a203e: 2b c8                                           sub    ecx,eax
  004a2040: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a2043: 89 08                                           mov    DWORD PTR [eax],ecx
  004a2045: 5d                                              pop    ebp
  004a2046: c2 08 00                                        ret    0x8
  004a2050: 55                                              push   ebp
  004a2051: 8b ec                                           mov    ebp,esp
  004a2053: 6a ff                                           push   0xffffffff
  004a2055: 68 e3 b7 4d 00                                  push   0x4db7e3
  004a205a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a2060: 50                                              push   eax
  004a2061: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a2068: 83 ec 08                                        sub    esp,0x8
  004a206b: 53                                              push   ebx
  004a206c: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004a206f: 56                                              push   esi
  004a2070: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a2073: 57                                              push   edi
  004a2074: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004a2077: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a207a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a207d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a2084: 85 ff                                           test   edi,edi
  004a2086: 0f 86 a4 01 00 00                               jbe    0x4a2230
  004a208c: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a208f: 85 f6                                           test   esi,esi
  004a2091: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004a2095: 74 08                                           je     0x4a209f
  004a2097: 53                                              push   ebx
  004a2098: 8b ce                                           mov    ecx,esi
  004a209a: e8 b1 01 00 00                                  call   0x4a2250
  004a209f: 4f                                              dec    edi
  004a20a0: 81 c6 10 01 00 00                               add    esi,0x110
  004a20a6: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a20aa: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a20ad: eb d5                                           jmp    0x4a2084
  004a2230: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a2233: 5f                                              pop    edi
  004a2234: 8b c6                                           mov    eax,esi
  004a2236: 5e                                              pop    esi
  004a2237: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a223e: 5b                                              pop    ebx
  004a223f: 8b e5                                           mov    esp,ebp
  004a2241: 5d                                              pop    ebp
  004a2242: c2 0c 00                                        ret    0xc
  004a2670: 55                                              push   ebp
  004a2671: 8b ec                                           mov    ebp,esp
  004a2673: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a2676: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a2678: 8b d0                                           mov    edx,eax
  004a267a: c1 e2 04                                        shl    edx,0x4
  004a267d: 03 d0                                           add    edx,eax
  004a267f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a2682: c1 e2 04                                        shl    edx,0x4
  004a2685: 2b ca                                           sub    ecx,edx
  004a2687: 89 08                                           mov    DWORD PTR [eax],ecx
  004a2689: 5d                                              pop    ebp
  004a268a: c2 08 00                                        ret    0x8
  004a2690: 55                                              push   ebp
  004a2691: 8b ec                                           mov    ebp,esp
  004a2693: 6a ff                                           push   0xffffffff
  004a2695: 68 89 b8 4d 00                                  push   0x4db889
  004a269a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a26a0: 50                                              push   eax
  004a26a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a26a8: 83 ec 08                                        sub    esp,0x8
  004a26ab: 53                                              push   ebx
  004a26ac: 56                                              push   esi
  004a26ad: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a26b0: 57                                              push   edi
  004a26b1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a26b4: 33 db                                           xor    ebx,ebx
  004a26b6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a26b9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a26bc: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004a26bf: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  004a26c2: 0f 86 b0 00 00 00                               jbe    0x4a2778
  004a26c8: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a26cb: 3b f3                                           cmp    esi,ebx
  004a26cd: 74 6f                                           je     0x4a273e
  004a26cf: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a26d2: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a26d5: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a26d8: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a26db: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a26de: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a26e1: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a26e4: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a26e7: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a26ea: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a26ed: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a26f3: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  004a26f6: 88 56 18                                        mov    BYTE PTR [esi+0x18],dl
  004a26f9: 8d 47 1c                                        lea    eax,[edi+0x1c]
  004a26fc: 8b 10                                           mov    edx,DWORD PTR [eax]
  004a26fe: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  004a2701: 89 11                                           mov    DWORD PTR [ecx],edx
  004a2703: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004a2706: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004a2709: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004a270c: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004a270f: 8a 57 28                                        mov    dl,BYTE PTR [edi+0x28]
  004a2712: 8d 47 28                                        lea    eax,[edi+0x28]
  004a2715: 8d 4e 28                                        lea    ecx,[esi+0x28]
  004a2718: 88 11                                           mov    BYTE PTR [ecx],dl
  004a271a: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004a271d: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004a2720: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004a2723: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a2729: 8b 12                                           mov    edx,DWORD PTR [edx]
  004a272b: 52                                              push   edx
  004a272c: 53                                              push   ebx
  004a272d: 50                                              push   eax
  004a272e: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a2732: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a2738: c7 06 c8 f9 4d 00                               mov    DWORD PTR [esi],0x4df9c8
  004a273e: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a2741: 49                                              dec    ecx
  004a2742: 83 c6 38                                        add    esi,0x38
  004a2745: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004a2748: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a274b: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a274e: e9 6c ff ff ff                                  jmp    0x4a26bf
  004a2778: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a277b: 5f                                              pop    edi
  004a277c: 8b c6                                           mov    eax,esi
  004a277e: 5e                                              pop    esi
  004a277f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a2786: 5b                                              pop    ebx
  004a2787: 8b e5                                           mov    esp,ebp
  004a2789: 5d                                              pop    ebp
  004a278a: c2 0c 00                                        ret    0xc
  004a2790: 55                                              push   ebp
  004a2791: 8b ec                                           mov    ebp,esp
  004a2793: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a2796: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a2798: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004a279f: 2b d0                                           sub    edx,eax
  004a27a1: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a27a4: c1 e2 03                                        shl    edx,0x3
  004a27a7: 2b ca                                           sub    ecx,edx
  004a27a9: 89 08                                           mov    DWORD PTR [eax],ecx
  004a27ab: 5d                                              pop    ebp
  004a27ac: c2 08 00                                        ret    0x8
  004a2fe0: 55                                              push   ebp
  004a2fe1: 8b ec                                           mov    ebp,esp
  004a2fe3: 6a ff                                           push   0xffffffff
  004a2fe5: 68 19 b9 4d 00                                  push   0x4db919
  004a2fea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a2ff0: 50                                              push   eax
  004a2ff1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a2ff8: 83 ec 08                                        sub    esp,0x8
  004a2ffb: 53                                              push   ebx
  004a2ffc: 56                                              push   esi
  004a2ffd: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a3000: 57                                              push   edi
  004a3001: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004a3004: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a3007: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a300a: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a3011: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  004a3014: 0f 84 aa 00 00 00                               je     0x4a30c4
  004a301a: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a301d: 85 f6                                           test   esi,esi
  004a301f: 74 6f                                           je     0x4a3090
  004a3021: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a3024: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a3027: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a302a: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a302d: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a3030: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a3033: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a3036: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a3039: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a303c: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a303f: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a3045: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  004a3048: 89 56 18                                        mov    DWORD PTR [esi+0x18],edx
  004a304b: 8b 47 1c                                        mov    eax,DWORD PTR [edi+0x1c]
  004a304e: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004a3051: 8a 47 20                                        mov    al,BYTE PTR [edi+0x20]
  004a3054: 8d 5e 20                                        lea    ebx,[esi+0x20]
  004a3057: 6a 00                                           push   0x0
  004a3059: 8b cb                                           mov    ecx,ebx
  004a305b: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a305f: 88 03                                           mov    BYTE PTR [ebx],al
  004a3061: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a3067: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a306d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a306f: 52                                              push   edx
  004a3070: 6a 00                                           push   0x0
  004a3072: 8d 47 20                                        lea    eax,[edi+0x20]
  004a3075: 50                                              push   eax
  004a3076: 8b cb                                           mov    ecx,ebx
  004a3078: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a307e: 8b 47 30                                        mov    eax,DWORD PTR [edi+0x30]
  004a3081: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004a3084: 8b 4f 34                                        mov    ecx,DWORD PTR [edi+0x34]
  004a3087: 89 4e 34                                        mov    DWORD PTR [esi+0x34],ecx
  004a308a: c7 06 88 f9 4d 00                               mov    DWORD PTR [esi],0x4df988
  004a3090: 83 c6 38                                        add    esi,0x38
  004a3093: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a3097: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a309a: 83 c7 38                                        add    edi,0x38
  004a309d: e9 6f ff ff ff                                  jmp    0x4a3011
  004a30c4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a30c7: 5f                                              pop    edi
  004a30c8: 8b c6                                           mov    eax,esi
  004a30ca: 5e                                              pop    esi
  004a30cb: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a30d2: 5b                                              pop    ebx
  004a30d3: 8b e5                                           mov    esp,ebp
  004a30d5: 5d                                              pop    ebp
  004a30d6: c2 0c 00                                        ret    0xc
  004a30e0: 55                                              push   ebp
  004a30e1: 8b ec                                           mov    ebp,esp
  004a30e3: 51                                              push   ecx
  004a30e4: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a30e7: 53                                              push   ebx
  004a30e8: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a30eb: 3b d8                                           cmp    ebx,eax
  004a30ed: 0f 84 6e 01 00 00                               je     0x4a3261
  004a30f3: 56                                              push   esi
  004a30f4: 57                                              push   edi
  004a30f5: 83 c3 24                                        add    ebx,0x24
  004a30f8: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a30fb: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  004a30fe: 89 43 f8                                        mov    DWORD PTR [ebx-0x8],eax
  004a3101: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a3107: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004a3109: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  004a310c: 83 c6 20                                        add    esi,0x20
  004a310f: 8b f9                                           mov    edi,ecx
  004a3111: 3b c7                                           cmp    eax,edi
  004a3113: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a3116: 73 05                                           jae    0x4a311d
  004a3118: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004a311b: 8b f8                                           mov    edi,eax
  004a311d: 8d 53 fc                                        lea    edx,[ebx-0x4]
  004a3120: 3b d6                                           cmp    edx,esi
  004a3122: 75 6f                                           jne    0x4a3193
  004a3124: 8b f0                                           mov    esi,eax
  004a3126: 39 7b 04                                        cmp    DWORD PTR [ebx+0x4],edi
  004a3129: 73 09                                           jae    0x4a3134
  004a312b: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a312e: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004a3134: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a3137: 2b c7                                           sub    eax,edi
  004a3139: 3b c6                                           cmp    eax,esi
  004a313b: 73 02                                           jae    0x4a313f
  004a313d: 8b f0                                           mov    esi,eax
  004a313f: 85 f6                                           test   esi,esi
  004a3141: 0f 86 ec 00 00 00                               jbe    0x4a3233
  004a3147: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a314a: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004a3150: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a3153: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a3155: 2b ce                                           sub    ecx,esi
  004a3157: 03 c7                                           add    eax,edi
  004a3159: 2b cf                                           sub    ecx,edi
  004a315b: 51                                              push   ecx
  004a315c: 8d 14 30                                        lea    edx,[eax+esi*1]
  004a315f: 52                                              push   edx
  004a3160: 50                                              push   eax
  004a3161: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004a3167: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004a316a: 83 c4 0c                                        add    esp,0xc
  004a316d: 2b fe                                           sub    edi,esi
  004a316f: 6a 00                                           push   0x0
  004a3171: 8d 73 fc                                        lea    esi,[ebx-0x4]
  004a3174: 57                                              push   edi
  004a3175: 8b ce                                           mov    ecx,esi
  004a3177: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a317d: 84 c0                                           test   al,al
  004a317f: 0f 84 ae 00 00 00                               je     0x4a3233
  004a3185: 57                                              push   edi
  004a3186: 8b ce                                           mov    ecx,esi
  004a3188: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004a318e: e9 a0 00 00 00                                  jmp    0x4a3233
  004a3193: 85 ff                                           test   edi,edi
  004a3195: 76 61                                           jbe    0x4a31f8
  004a3197: 3b f9                                           cmp    edi,ecx
  004a3199: 75 5d                                           jne    0x4a31f8
  004a319b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a319e: 85 c0                                           test   eax,eax
  004a31a0: 75 05                                           jne    0x4a31a7
  004a31a2: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a31a7: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004a31ab: 73 4b                                           jae    0x4a31f8
  004a31ad: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a31af: 85 c0                                           test   eax,eax
  004a31b1: 74 1c                                           je     0x4a31cf
  004a31b3: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a31b6: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a31b8: 84 c0                                           test   al,al
  004a31ba: 74 0a                                           je     0x4a31c6
  004a31bc: 3c ff                                           cmp    al,0xff
  004a31be: 74 06                                           je     0x4a31c6
  004a31c0: fe c8                                           dec    al
  004a31c2: 88 01                                           mov    BYTE PTR [ecx],al
  004a31c4: eb 09                                           jmp    0x4a31cf
  004a31c6: 51                                              push   ecx
  004a31c7: e8 94 ee f9 ff                                  call   0x442060
  004a31cc: 83 c4 04                                        add    esp,0x4
  004a31cf: 33 c9                                           xor    ecx,ecx
  004a31d1: 89 0b                                           mov    DWORD PTR [ebx],ecx
  004a31d3: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a31d6: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004a31d9: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a31dc: 3b c1                                           cmp    eax,ecx
  004a31de: 75 05                                           jne    0x4a31e5
  004a31e0: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a31e5: 89 03                                           mov    DWORD PTR [ebx],eax
  004a31e7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a31ea: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a31ed: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a31f0: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004a31f3: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004a31f6: eb 3b                                           jmp    0x4a3233
  004a31f8: 6a 01                                           push   0x1
  004a31fa: 57                                              push   edi
  004a31fb: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a31fe: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a3204: 84 c0                                           test   al,al
  004a3206: 74 2b                                           je     0x4a3233
  004a3208: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004a320b: 85 f6                                           test   esi,esi
  004a320d: 75 06                                           jne    0x4a3215
  004a320f: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004a3215: 8b cf                                           mov    ecx,edi
  004a3217: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a3219: 8b c1                                           mov    eax,ecx
  004a321b: c1 e9 02                                        shr    ecx,0x2
  004a321e: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004a3220: 8b c8                                           mov    ecx,eax
  004a3222: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a3225: 83 e1 03                                        and    ecx,0x3
  004a3228: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004a322a: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004a322c: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004a322f: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  004a3233: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a3236: 8b 50 30                                        mov    edx,DWORD PTR [eax+0x30]
  004a3239: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004a323c: 8b 48 34                                        mov    ecx,DWORD PTR [eax+0x34]
  004a323f: 89 4b 10                                        mov    DWORD PTR [ebx+0x10],ecx
  004a3242: 8b 50 18                                        mov    edx,DWORD PTR [eax+0x18]
  004a3245: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a3248: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a324b: 83 c0 38                                        add    eax,0x38
  004a324e: 89 53 f4                                        mov    DWORD PTR [ebx-0xc],edx
  004a3251: 83 c3 38                                        add    ebx,0x38
  004a3254: 3b c1                                           cmp    eax,ecx
  004a3256: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004a3259: 0f 85 99 fe ff ff                               jne    0x4a30f8
  004a325f: 5f                                              pop    edi
  004a3260: 5e                                              pop    esi
  004a3261: 5b                                              pop    ebx
  004a3262: 8b e5                                           mov    esp,ebp
  004a3264: 5d                                              pop    ebp
  004a3265: c3                                              ret
  004a3270: 55                                              push   ebp
  004a3271: 8b ec                                           mov    ebp,esp
  004a3273: 83 ec 08                                        sub    esp,0x8
  004a3276: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a3279: 56                                              push   esi
  004a327a: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a327d: 3b c6                                           cmp    eax,esi
  004a327f: 0f 84 18 01 00 00                               je     0x4a339d
  004a3285: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004a3288: 53                                              push   ebx
  004a3289: 57                                              push   edi
  004a328a: 8d 58 24                                        lea    ebx,[eax+0x24]
  004a328d: 83 c6 24                                        add    esi,0x24
  004a3290: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a3293: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  004a3296: b8 38 00 00 00                                  mov    eax,0x38
  004a329b: 2b f0                                           sub    esi,eax
  004a329d: 8b 4e f8                                        mov    ecx,DWORD PTR [esi-0x8]
  004a32a0: 2b d0                                           sub    edx,eax
  004a32a2: 2b d8                                           sub    ebx,eax
  004a32a4: 2b f8                                           sub    edi,eax
  004a32a6: 89 4b f8                                        mov    DWORD PTR [ebx-0x8],ecx
  004a32a9: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a32ac: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a32b2: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a32b4: 89 7d 14                                        mov    DWORD PTR [ebp+0x14],edi
  004a32b7: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004a32ba: 3b c7                                           cmp    eax,edi
  004a32bc: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004a32bf: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a32c2: 73 05                                           jae    0x4a32c9
  004a32c4: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004a32c7: 8b f8                                           mov    edi,eax
  004a32c9: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004a32cc: 8d 53 fc                                        lea    edx,[ebx-0x4]
  004a32cf: 3b d1                                           cmp    edx,ecx
  004a32d1: 75 1d                                           jne    0x4a32f0
  004a32d3: 50                                              push   eax
  004a32d4: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a32d7: 57                                              push   edi
  004a32d8: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004a32de: 6a 00                                           push   0x0
  004a32e0: 6a 00                                           push   0x0
  004a32e2: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a32e5: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004a32eb: e9 80 00 00 00                                  jmp    0x4a3370
  004a32f0: 85 ff                                           test   edi,edi
  004a32f2: 76 3f                                           jbe    0x4a3333
  004a32f4: 3b 7e 04                                        cmp    edi,DWORD PTR [esi+0x4]
  004a32f7: 75 3a                                           jne    0x4a3333
  004a32f9: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a32fb: 85 c0                                           test   eax,eax
  004a32fd: 75 05                                           jne    0x4a3304
  004a32ff: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a3304: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004a3308: 73 29                                           jae    0x4a3333
  004a330a: 6a 01                                           push   0x1
  004a330c: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a330f: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a3315: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a3317: 85 c0                                           test   eax,eax
  004a3319: 75 05                                           jne    0x4a3320
  004a331b: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a3320: 89 03                                           mov    DWORD PTR [ebx],eax
  004a3322: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a3325: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a3328: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a332b: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004a332e: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004a3331: eb 3d                                           jmp    0x4a3370
  004a3333: 6a 01                                           push   0x1
  004a3335: 57                                              push   edi
  004a3336: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a3339: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a333f: 84 c0                                           test   al,al
  004a3341: 74 2d                                           je     0x4a3370
  004a3343: 8b 36                                           mov    esi,DWORD PTR [esi]
  004a3345: 85 f6                                           test   esi,esi
  004a3347: 75 06                                           jne    0x4a334f
  004a3349: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004a334f: 8b cf                                           mov    ecx,edi
  004a3351: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a3353: 8b c1                                           mov    eax,ecx
  004a3355: c1 e9 02                                        shr    ecx,0x2
  004a3358: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004a335a: 8b c8                                           mov    ecx,eax
  004a335c: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a335f: 83 e1 03                                        and    ecx,0x3
  004a3362: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004a3364: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004a3366: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  004a3369: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004a336c: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  004a3370: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a3373: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004a3376: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004a3379: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004a337c: 89 43 10                                        mov    DWORD PTR [ebx+0x10],eax
  004a337f: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  004a3382: 8b 4e f4                                        mov    ecx,DWORD PTR [esi-0xc]
  004a3385: 89 4b f4                                        mov    DWORD PTR [ebx-0xc],ecx
  004a3388: 0f 85 02 ff ff ff                               jne    0x4a3290
  004a338e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a3391: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a3394: 5f                                              pop    edi
  004a3395: 5b                                              pop    ebx
  004a3396: 89 08                                           mov    DWORD PTR [eax],ecx
  004a3398: 5e                                              pop    esi
  004a3399: 8b e5                                           mov    esp,ebp
  004a339b: 5d                                              pop    ebp
  004a339c: c3                                              ret
  004a339d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a33a0: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004a33a3: 89 10                                           mov    DWORD PTR [eax],edx
  004a33a5: 5e                                              pop    esi
  004a33a6: 8b e5                                           mov    esp,ebp
  004a33a8: 5d                                              pop    ebp
  004a33a9: c3                                              ret
  004a33b0: 55                                              push   ebp
  004a33b1: 8b ec                                           mov    ebp,esp
  004a33b3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a33b6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a33b9: 56                                              push   esi
  004a33ba: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004a33bd: 3b ce                                           cmp    ecx,esi
  004a33bf: 74 4a                                           je     0x4a340b
  004a33c1: 85 c0                                           test   eax,eax
  004a33c3: 74 3c                                           je     0x4a3401
  004a33c5: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004a33c8: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004a33cb: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004a33ce: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004a33d1: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  004a33d4: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004a33d7: 8b 51 10                                        mov    edx,DWORD PTR [ecx+0x10]
  004a33da: 89 50 10                                        mov    DWORD PTR [eax+0x10],edx
  004a33dd: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004a33e0: c7 00 28 f9 4d 00                               mov    DWORD PTR [eax],0x4df928
  004a33e6: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  004a33e9: 8b 51 18                                        mov    edx,DWORD PTR [ecx+0x18]
  004a33ec: 89 50 18                                        mov    DWORD PTR [eax+0x18],edx
  004a33ef: 8b 51 1c                                        mov    edx,DWORD PTR [ecx+0x1c]
  004a33f2: 89 50 1c                                        mov    DWORD PTR [eax+0x1c],edx
  004a33f5: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004a33f8: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  004a33fb: c7 00 a8 f9 4d 00                               mov    DWORD PTR [eax],0x4df9a8
  004a3401: 83 c1 24                                        add    ecx,0x24
  004a3404: 83 c0 24                                        add    eax,0x24
  004a3407: 3b ce                                           cmp    ecx,esi
  004a3409: 75 b6                                           jne    0x4a33c1
  004a340b: 5e                                              pop    esi
  004a340c: 5d                                              pop    ebp
  004a340d: c2 0c 00                                        ret    0xc
  004a3410: 55                                              push   ebp
  004a3411: 8b ec                                           mov    ebp,esp
  004a3413: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a3416: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004a3419: 3b c2                                           cmp    eax,edx
  004a341b: 74 1e                                           je     0x4a343b
  004a341d: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004a3420: 56                                              push   esi
  004a3421: 8b 71 18                                        mov    esi,DWORD PTR [ecx+0x18]
  004a3424: 89 70 18                                        mov    DWORD PTR [eax+0x18],esi
  004a3427: 8b 71 1c                                        mov    esi,DWORD PTR [ecx+0x1c]
  004a342a: 89 70 1c                                        mov    DWORD PTR [eax+0x1c],esi
  004a342d: 8b 71 20                                        mov    esi,DWORD PTR [ecx+0x20]
  004a3430: 89 70 20                                        mov    DWORD PTR [eax+0x20],esi
  004a3433: 83 c0 24                                        add    eax,0x24
  004a3436: 3b c2                                           cmp    eax,edx
  004a3438: 75 e7                                           jne    0x4a3421
  004a343a: 5e                                              pop    esi
  004a343b: 5d                                              pop    ebp
  004a343c: c3                                              ret
  004a3440: 55                                              push   ebp
  004a3441: 8b ec                                           mov    ebp,esp
  004a3443: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004a3446: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a3449: 3b d0                                           cmp    edx,eax
  004a344b: 74 28                                           je     0x4a3475
  004a344d: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a3450: 56                                              push   esi
  004a3451: 8b 70 f4                                        mov    esi,DWORD PTR [eax-0xc]
  004a3454: 83 e8 24                                        sub    eax,0x24
  004a3457: 83 e9 24                                        sub    ecx,0x24
  004a345a: 3b c2                                           cmp    eax,edx
  004a345c: 89 71 18                                        mov    DWORD PTR [ecx+0x18],esi
  004a345f: 8b 70 1c                                        mov    esi,DWORD PTR [eax+0x1c]
  004a3462: 89 71 1c                                        mov    DWORD PTR [ecx+0x1c],esi
  004a3465: 8b 70 20                                        mov    esi,DWORD PTR [eax+0x20]
  004a3468: 89 71 20                                        mov    DWORD PTR [ecx+0x20],esi
  004a346b: 75 e4                                           jne    0x4a3451
  004a346d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a3470: 89 08                                           mov    DWORD PTR [eax],ecx
  004a3472: 5e                                              pop    esi
  004a3473: 5d                                              pop    ebp
  004a3474: c3                                              ret
  004a3475: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a3478: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a347b: 89 08                                           mov    DWORD PTR [eax],ecx
  004a347d: 5d                                              pop    ebp
  004a347e: c3                                              ret
  004a3480: 55                                              push   ebp
  004a3481: 8b ec                                           mov    ebp,esp
  004a3483: 6a ff                                           push   0xffffffff
  004a3485: 68 b3 b9 4d 00                                  push   0x4db9b3
  004a348a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a3490: 50                                              push   eax
  004a3491: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a3498: 83 ec 08                                        sub    esp,0x8
  004a349b: 53                                              push   ebx
  004a349c: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004a349f: 56                                              push   esi
  004a34a0: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a34a3: 57                                              push   edi
  004a34a4: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004a34a7: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a34aa: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a34ad: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a34b4: 3b fb                                           cmp    edi,ebx
  004a34b6: 0f 84 a9 01 00 00                               je     0x4a3665
  004a34bc: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  004a34bf: 85 f6                                           test   esi,esi
  004a34c1: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004a34c5: 74 08                                           je     0x4a34cf
  004a34c7: 57                                              push   edi
  004a34c8: 8b ce                                           mov    ecx,esi
  004a34ca: e8 81 ed ff ff                                  call   0x4a2250
  004a34cf: 81 c6 10 01 00 00                               add    esi,0x110
  004a34d5: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a34d9: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a34dc: 81 c7 10 01 00 00                               add    edi,0x110
  004a34e2: eb d0                                           jmp    0x4a34b4
  004a3665: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a3668: 5f                                              pop    edi
  004a3669: 8b c6                                           mov    eax,esi
  004a366b: 5e                                              pop    esi
  004a366c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a3673: 5b                                              pop    ebx
  004a3674: 8b e5                                           mov    esp,ebp
  004a3676: 5d                                              pop    ebp
  004a3677: c2 0c 00                                        ret    0xc
  004a3680: 55                                              push   ebp
  004a3681: 8b ec                                           mov    ebp,esp
  004a3683: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a3686: 56                                              push   esi
  004a3687: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a368a: 3b f0                                           cmp    esi,eax
  004a368c: 0f 84 05 03 00 00                               je     0x4a3997
  004a3692: 53                                              push   ebx
  004a3693: 57                                              push   edi
  004a3694: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a3697: 3b f7                                           cmp    esi,edi
  004a3699: 0f 84 f5 00 00 00                               je     0x4a3794
  004a369f: 8b cf                                           mov    ecx,edi
  004a36a1: e8 fa 02 00 00                                  call   0x4a39a0
  004a36a6: 85 c0                                           test   eax,eax
  004a36a8: 8b ce                                           mov    ecx,esi
  004a36aa: 75 0a                                           jne    0x4a36b6
  004a36ac: e8 ef c5 ff ff                                  call   0x49fca0
  004a36b1: e9 de 00 00 00                                  jmp    0x4a3794
  004a36b6: e8 e5 02 00 00                                  call   0x4a39a0
  004a36bb: 8b cf                                           mov    ecx,edi
  004a36bd: 8b d8                                           mov    ebx,eax
  004a36bf: e8 dc 02 00 00                                  call   0x4a39a0
  004a36c4: 3b c3                                           cmp    eax,ebx
  004a36c6: 77 38                                           ja     0x4a3700
  004a36c8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a36cb: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004a36ce: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004a36d1: 52                                              push   edx
  004a36d2: 50                                              push   eax
  004a36d3: 51                                              push   ecx
  004a36d4: e8 a7 17 00 00                                  call   0x4a4e80
  004a36d9: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a36dc: 83 c4 0c                                        add    esp,0xc
  004a36df: 51                                              push   ecx
  004a36e0: 50                                              push   eax
  004a36e1: 8b ce                                           mov    ecx,esi
  004a36e3: e8 e8 02 00 00                                  call   0x4a39d0
  004a36e8: 8b cf                                           mov    ecx,edi
  004a36ea: e8 b1 02 00 00                                  call   0x4a39a0
  004a36ef: 8d 14 80                                        lea    edx,[eax+eax*4]
  004a36f2: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a36f5: 8d 0c d0                                        lea    ecx,[eax+edx*8]
  004a36f8: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a36fb: e9 94 00 00 00                                  jmp    0x4a3794
  004a3700: 8b ce                                           mov    ecx,esi
  004a3702: e8 f9 02 00 00                                  call   0x4a3a00
  004a3707: 8b cf                                           mov    ecx,edi
  004a3709: 8b d8                                           mov    ebx,eax
  004a370b: e8 90 02 00 00                                  call   0x4a39a0
  004a3710: 3b c3                                           cmp    eax,ebx
  004a3712: 77 3c                                           ja     0x4a3750
  004a3714: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004a3717: 8b ce                                           mov    ecx,esi
  004a3719: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a371c: e8 7f 02 00 00                                  call   0x4a39a0
  004a3721: 50                                              push   eax
  004a3722: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a3725: 50                                              push   eax
  004a3726: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004a3729: e8 32 17 00 00                                  call   0x4a4e60
  004a372e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a3731: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a3734: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a3737: 51                                              push   ecx
  004a3738: 52                                              push   edx
  004a3739: 50                                              push   eax
  004a373a: e8 41 17 00 00                                  call   0x4a4e80
  004a373f: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a3742: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004a3745: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a3748: 83 c4 0c                                        add    esp,0xc
  004a374b: 51                                              push   ecx
  004a374c: 50                                              push   eax
  004a374d: 52                                              push   edx
  004a374e: eb 3a                                           jmp    0x4a378a
  004a3750: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a3753: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a3756: 50                                              push   eax
  004a3757: 51                                              push   ecx
  004a3758: 8b ce                                           mov    ecx,esi
  004a375a: e8 71 02 00 00                                  call   0x4a39d0
  004a375f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a3762: 52                                              push   edx
  004a3763: e8 f8 e8 f9 ff                                  call   0x442060
  004a3768: 83 c4 04                                        add    esp,0x4
  004a376b: 8b cf                                           mov    ecx,edi
  004a376d: e8 2e 02 00 00                                  call   0x4a39a0
  004a3772: 50                                              push   eax
  004a3773: 8b ce                                           mov    ecx,esi
  004a3775: e8 d6 c4 ff ff                                  call   0x49fc50
  004a377a: 84 c0                                           test   al,al
  004a377c: 74 16                                           je     0x4a3794
  004a377e: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a3781: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004a3784: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004a3787: 52                                              push   edx
  004a3788: 50                                              push   eax
  004a3789: 51                                              push   ecx
  004a378a: 8b ce                                           mov    ecx,esi
  004a378c: e8 cf 08 00 00                                  call   0x4a4060
  004a3791: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a3794: 8d 47 10                                        lea    eax,[edi+0x10]
  004a3797: 50                                              push   eax
  004a3798: 8d 4e 10                                        lea    ecx,[esi+0x10]
  004a379b: e8 30 10 00 00                                  call   0x4a47d0
  004a37a0: 8d 47 20                                        lea    eax,[edi+0x20]
  004a37a3: 50                                              push   eax
  004a37a4: 8d 4e 20                                        lea    ecx,[esi+0x20]
  004a37a7: e8 34 14 00 00                                  call   0x4a4be0
  004a37ac: 8a 47 30                                        mov    al,BYTE PTR [edi+0x30]
  004a37af: 88 46 30                                        mov    BYTE PTR [esi+0x30],al
  004a37b2: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a37b8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a37ba: 52                                              push   edx
  004a37bb: 6a 00                                           push   0x0
  004a37bd: 8d 47 34                                        lea    eax,[edi+0x34]
  004a37c0: 50                                              push   eax
  004a37c1: 8d 4e 34                                        lea    ecx,[esi+0x34]
  004a37c4: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a37ca: 8b 47 44                                        mov    eax,DWORD PTR [edi+0x44]
  004a37cd: 89 46 44                                        mov    DWORD PTR [esi+0x44],eax
  004a37d0: 8b 4f 48                                        mov    ecx,DWORD PTR [edi+0x48]
  004a37d3: 89 4e 48                                        mov    DWORD PTR [esi+0x48],ecx
  004a37d6: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a37dc: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a37de: 50                                              push   eax
  004a37df: 6a 00                                           push   0x0
  004a37e1: 8d 47 4c                                        lea    eax,[edi+0x4c]
  004a37e4: 50                                              push   eax
  004a37e5: 8d 4e 4c                                        lea    ecx,[esi+0x4c]
  004a37e8: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a37ee: 8b 4f 5c                                        mov    ecx,DWORD PTR [edi+0x5c]
  004a37f1: 89 4e 5c                                        mov    DWORD PTR [esi+0x5c],ecx
  004a37f4: 8b 57 60                                        mov    edx,DWORD PTR [edi+0x60]
  004a37f7: 89 56 60                                        mov    DWORD PTR [esi+0x60],edx
  004a37fa: 8b 47 64                                        mov    eax,DWORD PTR [edi+0x64]
  004a37fd: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004a3800: 8b 4f 68                                        mov    ecx,DWORD PTR [edi+0x68]
  004a3803: 89 4e 68                                        mov    DWORD PTR [esi+0x68],ecx
  004a3806: 8b 57 6c                                        mov    edx,DWORD PTR [edi+0x6c]
  004a3809: 89 56 6c                                        mov    DWORD PTR [esi+0x6c],edx
  004a380c: 8b 47 70                                        mov    eax,DWORD PTR [edi+0x70]
  004a380f: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004a3812: 8b 4f 74                                        mov    ecx,DWORD PTR [edi+0x74]
  004a3815: 89 4e 74                                        mov    DWORD PTR [esi+0x74],ecx
  004a3818: 8b 57 78                                        mov    edx,DWORD PTR [edi+0x78]
  004a381b: 89 56 78                                        mov    DWORD PTR [esi+0x78],edx
  004a381e: 8b 47 7c                                        mov    eax,DWORD PTR [edi+0x7c]
  004a3821: 89 46 7c                                        mov    DWORD PTR [esi+0x7c],eax
  004a3824: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a382a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a382c: 52                                              push   edx
  004a382d: 6a 00                                           push   0x0
  004a382f: 8d 87 80 00 00 00                               lea    eax,[edi+0x80]
  004a3835: 50                                              push   eax
  004a3836: 8d 8e 80 00 00 00                               lea    ecx,[esi+0x80]
  004a383c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3842: 8b 87 90 00 00 00                               mov    eax,DWORD PTR [edi+0x90]
  004a3848: 89 86 90 00 00 00                               mov    DWORD PTR [esi+0x90],eax
  004a384e: 8b 8f 94 00 00 00                               mov    ecx,DWORD PTR [edi+0x94]
  004a3854: 89 8e 94 00 00 00                               mov    DWORD PTR [esi+0x94],ecx
  004a385a: 8b 97 98 00 00 00                               mov    edx,DWORD PTR [edi+0x98]
  004a3860: 89 96 98 00 00 00                               mov    DWORD PTR [esi+0x98],edx
  004a3866: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a386b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004a386d: 51                                              push   ecx
  004a386e: 6a 00                                           push   0x0
  004a3870: 8d 87 9c 00 00 00                               lea    eax,[edi+0x9c]
  004a3876: 50                                              push   eax
  004a3877: 8d 8e 9c 00 00 00                               lea    ecx,[esi+0x9c]
  004a387d: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3883: 8b 97 ac 00 00 00                               mov    edx,DWORD PTR [edi+0xac]
  004a3889: 89 96 ac 00 00 00                               mov    DWORD PTR [esi+0xac],edx
  004a388f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a3894: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004a3896: 51                                              push   ecx
  004a3897: 6a 00                                           push   0x0
  004a3899: 8d 87 b0 00 00 00                               lea    eax,[edi+0xb0]
  004a389f: 50                                              push   eax
  004a38a0: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  004a38a6: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a38ac: 8b 97 c0 00 00 00                               mov    edx,DWORD PTR [edi+0xc0]
  004a38b2: 89 96 c0 00 00 00                               mov    DWORD PTR [esi+0xc0],edx
  004a38b8: 8b 87 c4 00 00 00                               mov    eax,DWORD PTR [edi+0xc4]
  004a38be: 89 86 c4 00 00 00                               mov    DWORD PTR [esi+0xc4],eax
  004a38c4: 8b 8f c8 00 00 00                               mov    ecx,DWORD PTR [edi+0xc8]
  004a38ca: 89 8e c8 00 00 00                               mov    DWORD PTR [esi+0xc8],ecx
  004a38d0: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a38d6: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a38d8: 50                                              push   eax
  004a38d9: 6a 00                                           push   0x0
  004a38db: 8d 87 cc 00 00 00                               lea    eax,[edi+0xcc]
  004a38e1: 50                                              push   eax
  004a38e2: 8d 8e cc 00 00 00                               lea    ecx,[esi+0xcc]
  004a38e8: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a38ee: 8b 8f dc 00 00 00                               mov    ecx,DWORD PTR [edi+0xdc]
  004a38f4: 89 8e dc 00 00 00                               mov    DWORD PTR [esi+0xdc],ecx
  004a38fa: 8b 97 e0 00 00 00                               mov    edx,DWORD PTR [edi+0xe0]
  004a3900: 89 96 e0 00 00 00                               mov    DWORD PTR [esi+0xe0],edx
  004a3906: 8b 87 e4 00 00 00                               mov    eax,DWORD PTR [edi+0xe4]
  004a390c: 89 86 e4 00 00 00                               mov    DWORD PTR [esi+0xe4],eax
  004a3912: 8b 8f e8 00 00 00                               mov    ecx,DWORD PTR [edi+0xe8]
  004a3918: 89 8e e8 00 00 00                               mov    DWORD PTR [esi+0xe8],ecx
  004a391e: 8b 97 ec 00 00 00                               mov    edx,DWORD PTR [edi+0xec]
  004a3924: 89 96 ec 00 00 00                               mov    DWORD PTR [esi+0xec],edx
  004a392a: 8b 87 f0 00 00 00                               mov    eax,DWORD PTR [edi+0xf0]
  004a3930: 89 86 f0 00 00 00                               mov    DWORD PTR [esi+0xf0],eax
  004a3936: 8a 8f f4 00 00 00                               mov    cl,BYTE PTR [edi+0xf4]
  004a393c: 88 8e f4 00 00 00                               mov    BYTE PTR [esi+0xf4],cl
  004a3942: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a3948: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a394a: 50                                              push   eax
  004a394b: 6a 00                                           push   0x0
  004a394d: 8d 87 f8 00 00 00                               lea    eax,[edi+0xf8]
  004a3953: 50                                              push   eax
  004a3954: 8d 8e f8 00 00 00                               lea    ecx,[esi+0xf8]
  004a395a: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3960: 8a 8f 08 01 00 00                               mov    cl,BYTE PTR [edi+0x108]
  004a3966: 88 8e 08 01 00 00                               mov    BYTE PTR [esi+0x108],cl
  004a396c: 8a 97 09 01 00 00                               mov    dl,BYTE PTR [edi+0x109]
  004a3972: 88 96 09 01 00 00                               mov    BYTE PTR [esi+0x109],dl
  004a3978: 8a 87 0a 01 00 00                               mov    al,BYTE PTR [edi+0x10a]
  004a397e: 88 86 0a 01 00 00                               mov    BYTE PTR [esi+0x10a],al
  004a3984: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a3987: 81 c6 10 01 00 00                               add    esi,0x110
  004a398d: 3b f0                                           cmp    esi,eax
  004a398f: 0f 85 02 fd ff ff                               jne    0x4a3697
  004a3995: 5f                                              pop    edi
  004a3996: 5b                                              pop    ebx
  004a3997: 5e                                              pop    esi
  004a3998: 5d                                              pop    ebp
  004a3999: c3                                              ret
  004a3a30: 55                                              push   ebp
  004a3a31: 8b ec                                           mov    ebp,esp
  004a3a33: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a3a36: 53                                              push   ebx
  004a3a37: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004a3a3a: 3b c3                                           cmp    eax,ebx
  004a3a3c: 0f 84 12 02 00 00                               je     0x4a3c54
  004a3a42: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004a3a45: 56                                              push   esi
  004a3a46: 57                                              push   edi
  004a3a47: 8d 78 20                                        lea    edi,[eax+0x20]
  004a3a4a: 8d 73 20                                        lea    esi,[ebx+0x20]
  004a3a4d: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a3a50: 81 eb 10 01 00 00                               sub    ebx,0x110
  004a3a56: 81 e9 10 01 00 00                               sub    ecx,0x110
  004a3a5c: 53                                              push   ebx
  004a3a5d: 81 ee 10 01 00 00                               sub    esi,0x110
  004a3a63: 89 4d 14                                        mov    DWORD PTR [ebp+0x14],ecx
  004a3a66: 81 ef 10 01 00 00                               sub    edi,0x110
  004a3a6c: e8 8f 08 00 00                                  call   0x4a4300
  004a3a71: 8d 4e f0                                        lea    ecx,[esi-0x10]
  004a3a74: 51                                              push   ecx
  004a3a75: 8d 4f f0                                        lea    ecx,[edi-0x10]
  004a3a78: e8 53 0d 00 00                                  call   0x4a47d0
  004a3a7d: 56                                              push   esi
  004a3a7e: 8b cf                                           mov    ecx,edi
  004a3a80: e8 5b 11 00 00                                  call   0x4a4be0
  004a3a85: 8a 56 10                                        mov    dl,BYTE PTR [esi+0x10]
  004a3a88: 88 57 10                                        mov    BYTE PTR [edi+0x10],dl
  004a3a8b: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a3a90: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004a3a92: 51                                              push   ecx
  004a3a93: 6a 00                                           push   0x0
  004a3a95: 8d 56 14                                        lea    edx,[esi+0x14]
  004a3a98: 52                                              push   edx
  004a3a99: 8d 4f 14                                        lea    ecx,[edi+0x14]
  004a3a9c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3aa2: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004a3aa5: 89 47 24                                        mov    DWORD PTR [edi+0x24],eax
  004a3aa8: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  004a3aab: 89 4f 28                                        mov    DWORD PTR [edi+0x28],ecx
  004a3aae: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a3ab4: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a3ab6: 50                                              push   eax
  004a3ab7: 6a 00                                           push   0x0
  004a3ab9: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  004a3abc: 51                                              push   ecx
  004a3abd: 8d 4f 2c                                        lea    ecx,[edi+0x2c]
  004a3ac0: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3ac6: 8b 56 3c                                        mov    edx,DWORD PTR [esi+0x3c]
  004a3ac9: 89 57 3c                                        mov    DWORD PTR [edi+0x3c],edx
  004a3acc: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  004a3acf: 89 47 40                                        mov    DWORD PTR [edi+0x40],eax
  004a3ad2: 8b 4e 44                                        mov    ecx,DWORD PTR [esi+0x44]
  004a3ad5: 89 4f 44                                        mov    DWORD PTR [edi+0x44],ecx
  004a3ad8: 8b 56 48                                        mov    edx,DWORD PTR [esi+0x48]
  004a3adb: 89 57 48                                        mov    DWORD PTR [edi+0x48],edx
  004a3ade: 8b 46 4c                                        mov    eax,DWORD PTR [esi+0x4c]
  004a3ae1: 89 47 4c                                        mov    DWORD PTR [edi+0x4c],eax
  004a3ae4: 8b 4e 50                                        mov    ecx,DWORD PTR [esi+0x50]
  004a3ae7: 89 4f 50                                        mov    DWORD PTR [edi+0x50],ecx
  004a3aea: 8b 56 54                                        mov    edx,DWORD PTR [esi+0x54]
  004a3aed: 89 57 54                                        mov    DWORD PTR [edi+0x54],edx
  004a3af0: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  004a3af3: 89 47 58                                        mov    DWORD PTR [edi+0x58],eax
  004a3af6: 8b 4e 5c                                        mov    ecx,DWORD PTR [esi+0x5c]
  004a3af9: 89 4f 5c                                        mov    DWORD PTR [edi+0x5c],ecx
  004a3afc: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a3b02: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a3b04: 50                                              push   eax
  004a3b05: 6a 00                                           push   0x0
  004a3b07: 8d 4e 60                                        lea    ecx,[esi+0x60]
  004a3b0a: 51                                              push   ecx
  004a3b0b: 8d 4f 60                                        lea    ecx,[edi+0x60]
  004a3b0e: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3b14: 8b 56 70                                        mov    edx,DWORD PTR [esi+0x70]
  004a3b17: 89 57 70                                        mov    DWORD PTR [edi+0x70],edx
  004a3b1a: 8b 46 74                                        mov    eax,DWORD PTR [esi+0x74]
  004a3b1d: 89 47 74                                        mov    DWORD PTR [edi+0x74],eax
  004a3b20: 8b 4e 78                                        mov    ecx,DWORD PTR [esi+0x78]
  004a3b23: 89 4f 78                                        mov    DWORD PTR [edi+0x78],ecx
  004a3b26: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a3b2c: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a3b2e: 50                                              push   eax
  004a3b2f: 6a 00                                           push   0x0
  004a3b31: 8d 4e 7c                                        lea    ecx,[esi+0x7c]
  004a3b34: 51                                              push   ecx
  004a3b35: 8d 4f 7c                                        lea    ecx,[edi+0x7c]
  004a3b38: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3b3e: 8b 96 8c 00 00 00                               mov    edx,DWORD PTR [esi+0x8c]
  004a3b44: 89 97 8c 00 00 00                               mov    DWORD PTR [edi+0x8c],edx
  004a3b4a: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a3b4f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004a3b51: 51                                              push   ecx
  004a3b52: 6a 00                                           push   0x0
  004a3b54: 8d 96 90 00 00 00                               lea    edx,[esi+0x90]
  004a3b5a: 52                                              push   edx
  004a3b5b: 8d 8f 90 00 00 00                               lea    ecx,[edi+0x90]
  004a3b61: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3b67: 8b 86 a0 00 00 00                               mov    eax,DWORD PTR [esi+0xa0]
  004a3b6d: 89 87 a0 00 00 00                               mov    DWORD PTR [edi+0xa0],eax
  004a3b73: 8b 8e a4 00 00 00                               mov    ecx,DWORD PTR [esi+0xa4]
  004a3b79: 89 8f a4 00 00 00                               mov    DWORD PTR [edi+0xa4],ecx
  004a3b7f: 8b 96 a8 00 00 00                               mov    edx,DWORD PTR [esi+0xa8]
  004a3b85: 89 97 a8 00 00 00                               mov    DWORD PTR [edi+0xa8],edx
  004a3b8b: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a3b90: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004a3b92: 51                                              push   ecx
  004a3b93: 6a 00                                           push   0x0
  004a3b95: 8d 96 ac 00 00 00                               lea    edx,[esi+0xac]
  004a3b9b: 52                                              push   edx
  004a3b9c: 8d 8f ac 00 00 00                               lea    ecx,[edi+0xac]
  004a3ba2: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3ba8: 8b 86 bc 00 00 00                               mov    eax,DWORD PTR [esi+0xbc]
  004a3bae: 89 87 bc 00 00 00                               mov    DWORD PTR [edi+0xbc],eax
  004a3bb4: 8b 8e c0 00 00 00                               mov    ecx,DWORD PTR [esi+0xc0]
  004a3bba: 89 8f c0 00 00 00                               mov    DWORD PTR [edi+0xc0],ecx
  004a3bc0: 8b 96 c4 00 00 00                               mov    edx,DWORD PTR [esi+0xc4]
  004a3bc6: 89 97 c4 00 00 00                               mov    DWORD PTR [edi+0xc4],edx
  004a3bcc: 8b 86 c8 00 00 00                               mov    eax,DWORD PTR [esi+0xc8]
  004a3bd2: 89 87 c8 00 00 00                               mov    DWORD PTR [edi+0xc8],eax
  004a3bd8: 8b 8e cc 00 00 00                               mov    ecx,DWORD PTR [esi+0xcc]
  004a3bde: 89 8f cc 00 00 00                               mov    DWORD PTR [edi+0xcc],ecx
  004a3be4: 8b 96 d0 00 00 00                               mov    edx,DWORD PTR [esi+0xd0]
  004a3bea: 89 97 d0 00 00 00                               mov    DWORD PTR [edi+0xd0],edx
  004a3bf0: 8a 86 d4 00 00 00                               mov    al,BYTE PTR [esi+0xd4]
  004a3bf6: 88 87 d4 00 00 00                               mov    BYTE PTR [edi+0xd4],al
  004a3bfc: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a3c02: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a3c04: 52                                              push   edx
  004a3c05: 6a 00                                           push   0x0
  004a3c07: 8d 86 d8 00 00 00                               lea    eax,[esi+0xd8]
  004a3c0d: 50                                              push   eax
  004a3c0e: 8d 8f d8 00 00 00                               lea    ecx,[edi+0xd8]
  004a3c14: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3c1a: 8a 8e e8 00 00 00                               mov    cl,BYTE PTR [esi+0xe8]
  004a3c20: 88 8f e8 00 00 00                               mov    BYTE PTR [edi+0xe8],cl
  004a3c26: 8a 96 e9 00 00 00                               mov    dl,BYTE PTR [esi+0xe9]
  004a3c2c: 88 97 e9 00 00 00                               mov    BYTE PTR [edi+0xe9],dl
  004a3c32: 8a 86 ea 00 00 00                               mov    al,BYTE PTR [esi+0xea]
  004a3c38: 88 87 ea 00 00 00                               mov    BYTE PTR [edi+0xea],al
  004a3c3e: 3b 5d 0c                                        cmp    ebx,DWORD PTR [ebp+0xc]
  004a3c41: 0f 85 06 fe ff ff                               jne    0x4a3a4d
  004a3c47: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a3c4a: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a3c4d: 5f                                              pop    edi
  004a3c4e: 5e                                              pop    esi
  004a3c4f: 89 08                                           mov    DWORD PTR [eax],ecx
  004a3c51: 5b                                              pop    ebx
  004a3c52: 5d                                              pop    ebp
  004a3c53: c3                                              ret
  004a3c54: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a3c57: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004a3c5a: 89 10                                           mov    DWORD PTR [eax],edx
  004a3c5c: 5b                                              pop    ebx
  004a3c5d: 5d                                              pop    ebp
  004a3c5e: c3                                              ret
  004a3c60: 55                                              push   ebp
  004a3c61: 8b ec                                           mov    ebp,esp
  004a3c63: 6a ff                                           push   0xffffffff
  004a3c65: 68 d9 b9 4d 00                                  push   0x4db9d9
  004a3c6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a3c70: 50                                              push   eax
  004a3c71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a3c78: 83 ec 08                                        sub    esp,0x8
  004a3c7b: 53                                              push   ebx
  004a3c7c: 56                                              push   esi
  004a3c7d: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a3c80: 57                                              push   edi
  004a3c81: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004a3c84: 33 db                                           xor    ebx,ebx
  004a3c86: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a3c89: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a3c8c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004a3c8f: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  004a3c92: 0f 84 ac 00 00 00                               je     0x4a3d44
  004a3c98: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a3c9b: 3b f3                                           cmp    esi,ebx
  004a3c9d: 74 6f                                           je     0x4a3d0e
  004a3c9f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a3ca2: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a3ca5: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a3ca8: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a3cab: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a3cae: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a3cb1: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a3cb4: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a3cb7: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a3cba: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a3cbd: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a3cc3: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  004a3cc6: 88 56 18                                        mov    BYTE PTR [esi+0x18],dl
  004a3cc9: 8d 47 1c                                        lea    eax,[edi+0x1c]
  004a3ccc: 8b 10                                           mov    edx,DWORD PTR [eax]
  004a3cce: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  004a3cd1: 89 11                                           mov    DWORD PTR [ecx],edx
  004a3cd3: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004a3cd6: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004a3cd9: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004a3cdc: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004a3cdf: 8a 57 28                                        mov    dl,BYTE PTR [edi+0x28]
  004a3ce2: 8d 47 28                                        lea    eax,[edi+0x28]
  004a3ce5: 8d 4e 28                                        lea    ecx,[esi+0x28]
  004a3ce8: 88 11                                           mov    BYTE PTR [ecx],dl
  004a3cea: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004a3ced: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004a3cf0: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004a3cf3: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a3cf9: 8b 12                                           mov    edx,DWORD PTR [edx]
  004a3cfb: 52                                              push   edx
  004a3cfc: 53                                              push   ebx
  004a3cfd: 50                                              push   eax
  004a3cfe: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a3d02: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a3d08: c7 06 c8 f9 4d 00                               mov    DWORD PTR [esi],0x4df9c8
  004a3d0e: 83 c6 38                                        add    esi,0x38
  004a3d11: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004a3d14: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a3d17: 83 c7 38                                        add    edi,0x38
  004a3d1a: e9 70 ff ff ff                                  jmp    0x4a3c8f
  004a3d44: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a3d47: 5f                                              pop    edi
  004a3d48: 8b c6                                           mov    eax,esi
  004a3d4a: 5e                                              pop    esi
  004a3d4b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a3d52: 5b                                              pop    ebx
  004a3d53: 8b e5                                           mov    esp,ebp
  004a3d55: 5d                                              pop    ebp
  004a3d56: c2 0c 00                                        ret    0xc
  004a3d60: 55                                              push   ebp
  004a3d61: 8b ec                                           mov    ebp,esp
  004a3d63: 83 ec 08                                        sub    esp,0x8
  004a3d66: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a3d69: 53                                              push   ebx
  004a3d6a: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a3d6d: 3b d8                                           cmp    ebx,eax
  004a3d6f: 0f 84 7c 01 00 00                               je     0x4a3ef1
  004a3d75: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a3d78: 56                                              push   esi
  004a3d79: 8d 48 1c                                        lea    ecx,[eax+0x1c]
  004a3d7c: 8d 50 28                                        lea    edx,[eax+0x28]
  004a3d7f: 57                                              push   edi
  004a3d80: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004a3d83: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a3d86: 83 c3 2c                                        add    ebx,0x2c
  004a3d89: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004a3d8c: 8b 31                                           mov    esi,DWORD PTR [ecx]
  004a3d8e: 8d 43 f0                                        lea    eax,[ebx-0x10]
  004a3d91: 89 30                                           mov    DWORD PTR [eax],esi
  004a3d93: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004a3d96: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  004a3d99: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004a3d9c: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  004a3d9f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a3da4: 8b 30                                           mov    esi,DWORD PTR [eax]
  004a3da6: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004a3da9: 8b f8                                           mov    edi,eax
  004a3dab: 3b f7                                           cmp    esi,edi
  004a3dad: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a3db0: 73 05                                           jae    0x4a3db7
  004a3db2: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  004a3db5: 8b fe                                           mov    edi,esi
  004a3db7: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a3dba: 3b ca                                           cmp    ecx,edx
  004a3dbc: 75 71                                           jne    0x4a3e2f
  004a3dbe: 39 7b 04                                        cmp    DWORD PTR [ebx+0x4],edi
  004a3dc1: 73 0c                                           jae    0x4a3dcf
  004a3dc3: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a3dc6: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004a3dcc: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a3dcf: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a3dd2: 2b c7                                           sub    eax,edi
  004a3dd4: 3b c6                                           cmp    eax,esi
  004a3dd6: 73 02                                           jae    0x4a3dda
  004a3dd8: 8b f0                                           mov    esi,eax
  004a3dda: 85 f6                                           test   esi,esi
  004a3ddc: 0f 86 f6 00 00 00                               jbe    0x4a3ed8
  004a3de2: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a3de5: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004a3deb: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a3dee: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004a3df0: 2b ce                                           sub    ecx,esi
  004a3df2: 8d 04 3a                                        lea    eax,[edx+edi*1]
  004a3df5: 2b cf                                           sub    ecx,edi
  004a3df7: 51                                              push   ecx
  004a3df8: 8d 14 30                                        lea    edx,[eax+esi*1]
  004a3dfb: 52                                              push   edx
  004a3dfc: 50                                              push   eax
  004a3dfd: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004a3e03: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004a3e06: 83 c4 0c                                        add    esp,0xc
  004a3e09: 2b fe                                           sub    edi,esi
  004a3e0b: 6a 00                                           push   0x0
  004a3e0d: 8d 73 fc                                        lea    esi,[ebx-0x4]
  004a3e10: 57                                              push   edi
  004a3e11: 8b ce                                           mov    ecx,esi
  004a3e13: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a3e19: 84 c0                                           test   al,al
  004a3e1b: 0f 84 b4 00 00 00                               je     0x4a3ed5
  004a3e21: 57                                              push   edi
  004a3e22: 8b ce                                           mov    ecx,esi
  004a3e24: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004a3e2a: e9 a6 00 00 00                                  jmp    0x4a3ed5
  004a3e2f: 33 f6                                           xor    esi,esi
  004a3e31: 3b fe                                           cmp    edi,esi
  004a3e33: 76 62                                           jbe    0x4a3e97
  004a3e35: 3b f8                                           cmp    edi,eax
  004a3e37: 75 5e                                           jne    0x4a3e97
  004a3e39: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004a3e3c: 3b c6                                           cmp    eax,esi
  004a3e3e: 75 05                                           jne    0x4a3e45
  004a3e40: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a3e45: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004a3e49: 73 4c                                           jae    0x4a3e97
  004a3e4b: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a3e4d: 3b c6                                           cmp    eax,esi
  004a3e4f: 74 1f                                           je     0x4a3e70
  004a3e51: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a3e54: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a3e56: 84 c0                                           test   al,al
  004a3e58: 74 0a                                           je     0x4a3e64
  004a3e5a: 3c ff                                           cmp    al,0xff
  004a3e5c: 74 06                                           je     0x4a3e64
  004a3e5e: fe c8                                           dec    al
  004a3e60: 88 01                                           mov    BYTE PTR [ecx],al
  004a3e62: eb 0c                                           jmp    0x4a3e70
  004a3e64: 51                                              push   ecx
  004a3e65: e8 f6 e1 f9 ff                                  call   0x442060
  004a3e6a: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a3e6d: 83 c4 04                                        add    esp,0x4
  004a3e70: 89 33                                           mov    DWORD PTR [ebx],esi
  004a3e72: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  004a3e75: 89 73 08                                        mov    DWORD PTR [ebx+0x8],esi
  004a3e78: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004a3e7b: 3b c6                                           cmp    eax,esi
  004a3e7d: 75 05                                           jne    0x4a3e84
  004a3e7f: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a3e84: 89 03                                           mov    DWORD PTR [ebx],eax
  004a3e86: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  004a3e89: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a3e8c: 8b 4a 0c                                        mov    ecx,DWORD PTR [edx+0xc]
  004a3e8f: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004a3e92: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004a3e95: eb 41                                           jmp    0x4a3ed8
  004a3e97: 6a 01                                           push   0x1
  004a3e99: 57                                              push   edi
  004a3e9a: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a3e9d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a3ea3: 84 c0                                           test   al,al
  004a3ea5: 74 2e                                           je     0x4a3ed5
  004a3ea7: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a3eaa: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  004a3ead: 85 f6                                           test   esi,esi
  004a3eaf: 75 06                                           jne    0x4a3eb7
  004a3eb1: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004a3eb7: 8b cf                                           mov    ecx,edi
  004a3eb9: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a3ebb: 8b c1                                           mov    eax,ecx
  004a3ebd: c1 e9 02                                        shr    ecx,0x2
  004a3ec0: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004a3ec2: 8b c8                                           mov    ecx,eax
  004a3ec4: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a3ec7: 83 e1 03                                        and    ecx,0x3
  004a3eca: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004a3ecc: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004a3ece: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004a3ed1: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  004a3ed5: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a3ed8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a3edb: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a3ede: 83 c0 38                                        add    eax,0x38
  004a3ee1: 83 c3 38                                        add    ebx,0x38
  004a3ee4: 3b c1                                           cmp    eax,ecx
  004a3ee6: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004a3ee9: 0f 85 9a fe ff ff                               jne    0x4a3d89
  004a3eef: 5f                                              pop    edi
  004a3ef0: 5e                                              pop    esi
  004a3ef1: 5b                                              pop    ebx
  004a3ef2: 8b e5                                           mov    esp,ebp
  004a3ef4: 5d                                              pop    ebp
  004a3ef5: c3                                              ret
  004a3f00: 55                                              push   ebp
  004a3f01: 8b ec                                           mov    ebp,esp
  004a3f03: 83 ec 08                                        sub    esp,0x8
  004a3f06: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a3f09: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  004a3f0c: 0f 84 34 01 00 00                               je     0x4a4046
  004a3f12: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a3f15: 53                                              push   ebx
  004a3f16: 56                                              push   esi
  004a3f17: 57                                              push   edi
  004a3f18: 8d 59 2c                                        lea    ebx,[ecx+0x2c]
  004a3f1b: 8d 70 2c                                        lea    esi,[eax+0x2c]
  004a3f1e: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  004a3f21: 83 e8 38                                        sub    eax,0x38
  004a3f24: 83 ee 38                                        sub    esi,0x38
  004a3f27: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004a3f2a: 83 eb 38                                        sub    ebx,0x38
  004a3f2d: 8d 56 f0                                        lea    edx,[esi-0x10]
  004a3f30: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004a3f32: 8d 43 f0                                        lea    eax,[ebx-0x10]
  004a3f35: 89 08                                           mov    DWORD PTR [eax],ecx
  004a3f37: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004a3f3a: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004a3f3d: 8b 52 08                                        mov    edx,DWORD PTR [edx+0x8]
  004a3f40: 83 ef 38                                        sub    edi,0x38
  004a3f43: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004a3f46: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a3f4b: 8b 00                                           mov    eax,DWORD PTR [eax]
  004a3f4d: 89 7d 14                                        mov    DWORD PTR [ebp+0x14],edi
  004a3f50: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004a3f53: 3b c7                                           cmp    eax,edi
  004a3f55: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004a3f58: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a3f5b: 73 05                                           jae    0x4a3f62
  004a3f5d: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004a3f60: 8b f8                                           mov    edi,eax
  004a3f62: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004a3f65: 8d 53 fc                                        lea    edx,[ebx-0x4]
  004a3f68: 3b d1                                           cmp    edx,ecx
  004a3f6a: 75 1d                                           jne    0x4a3f89
  004a3f6c: 50                                              push   eax
  004a3f6d: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a3f70: 57                                              push   edi
  004a3f71: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004a3f77: 6a 00                                           push   0x0
  004a3f79: 6a 00                                           push   0x0
  004a3f7b: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a3f7e: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004a3f84: e9 a2 00 00 00                                  jmp    0x4a402b
  004a3f89: 85 ff                                           test   edi,edi
  004a3f8b: 76 60                                           jbe    0x4a3fed
  004a3f8d: 3b 7e 04                                        cmp    edi,DWORD PTR [esi+0x4]
  004a3f90: 75 5b                                           jne    0x4a3fed
  004a3f92: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a3f94: 85 c0                                           test   eax,eax
  004a3f96: 75 05                                           jne    0x4a3f9d
  004a3f98: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a3f9d: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004a3fa1: 73 4a                                           jae    0x4a3fed
  004a3fa3: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a3fa5: 85 c0                                           test   eax,eax
  004a3fa7: 74 1c                                           je     0x4a3fc5
  004a3fa9: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a3fac: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a3fae: 84 c0                                           test   al,al
  004a3fb0: 74 0a                                           je     0x4a3fbc
  004a3fb2: 3c ff                                           cmp    al,0xff
  004a3fb4: 74 06                                           je     0x4a3fbc
  004a3fb6: fe c8                                           dec    al
  004a3fb8: 88 01                                           mov    BYTE PTR [ecx],al
  004a3fba: eb 09                                           jmp    0x4a3fc5
  004a3fbc: 51                                              push   ecx
  004a3fbd: e8 9e e0 f9 ff                                  call   0x442060
  004a3fc2: 83 c4 04                                        add    esp,0x4
  004a3fc5: 33 c9                                           xor    ecx,ecx
  004a3fc7: 89 0b                                           mov    DWORD PTR [ebx],ecx
  004a3fc9: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a3fcc: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004a3fcf: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a3fd1: 3b c1                                           cmp    eax,ecx
  004a3fd3: 75 05                                           jne    0x4a3fda
  004a3fd5: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a3fda: 89 03                                           mov    DWORD PTR [ebx],eax
  004a3fdc: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a3fdf: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a3fe2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a3fe5: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004a3fe8: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004a3feb: eb 3e                                           jmp    0x4a402b
  004a3fed: 6a 01                                           push   0x1
  004a3fef: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a3ff2: 57                                              push   edi
  004a3ff3: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a3ff9: 84 c0                                           test   al,al
  004a3ffb: 74 2e                                           je     0x4a402b
  004a3ffd: 8b 36                                           mov    esi,DWORD PTR [esi]
  004a3fff: 85 f6                                           test   esi,esi
  004a4001: 75 06                                           jne    0x4a4009
  004a4003: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004a4009: 8b cf                                           mov    ecx,edi
  004a400b: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a400d: 8b c1                                           mov    eax,ecx
  004a400f: c1 e9 02                                        shr    ecx,0x2
  004a4012: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004a4014: 8b c8                                           mov    ecx,eax
  004a4016: 83 e1 03                                        and    ecx,0x3
  004a4019: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004a401b: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a401e: 51                                              push   ecx
  004a401f: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a4022: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004a4028: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  004a402b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a402e: 3b 45 0c                                        cmp    eax,DWORD PTR [ebp+0xc]
  004a4031: 0f 85 e7 fe ff ff                               jne    0x4a3f1e
  004a4037: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a403a: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004a403d: 5f                                              pop    edi
  004a403e: 5e                                              pop    esi
  004a403f: 89 10                                           mov    DWORD PTR [eax],edx
  004a4041: 5b                                              pop    ebx
  004a4042: 8b e5                                           mov    esp,ebp
  004a4044: 5d                                              pop    ebp
  004a4045: c3                                              ret
  004a4046: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a4049: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a404c: 89 08                                           mov    DWORD PTR [eax],ecx
  004a404e: 8b e5                                           mov    esp,ebp
  004a4050: 5d                                              pop    ebp
  004a4051: c3                                              ret
  004a42d0: 55                                              push   ebp
  004a42d1: 8b ec                                           mov    ebp,esp
  004a42d3: 56                                              push   esi
  004a42d4: 8b f1                                           mov    esi,ecx
  004a42d6: e8 95 a1 ff ff                                  call   0x49e470
  004a42db: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004a42df: 74 09                                           je     0x4a42ea
  004a42e1: 56                                              push   esi
  004a42e2: e8 79 dd f9 ff                                  call   0x442060
  004a42e7: 83 c4 04                                        add    esp,0x4
  004a42ea: 8b c6                                           mov    eax,esi
  004a42ec: 5e                                              pop    esi
  004a42ed: 5d                                              pop    ebp
  004a42ee: c2 04 00                                        ret    0x4
  004aa900: 55                                              push   ebp
  004aa901: 8b ec                                           mov    ebp,esp
  004aa903: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004aa906: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aa909: 89 08                                           mov    DWORD PTR [eax],ecx
  004aa90b: 5d                                              pop    ebp
  004aa90c: c2 04 00                                        ret    0x4
  004aa910: 55                                              push   ebp
  004aa911: 8b ec                                           mov    ebp,esp
  004aa913: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004aa916: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004aa91d: 2b d0                                           sub    edx,eax
  004aa91f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004aa921: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  004aa924: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aa927: 89 08                                           mov    DWORD PTR [eax],ecx
  004aa929: 5d                                              pop    ebp
  004aa92a: c2 08 00                                        ret    0x8
  004ab3b0: 55                                              push   ebp
  004ab3b1: 8b ec                                           mov    ebp,esp
  004ab3b3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ab3b6: 85 c0                                           test   eax,eax
  004ab3b8: 76 48                                           jbe    0x4ab402
  004ab3ba: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004ab3bd: 56                                              push   esi
  004ab3be: 8b f0                                           mov    esi,eax
  004ab3c0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ab3c3: 85 c0                                           test   eax,eax
  004ab3c5: 74 30                                           je     0x4ab3f7
  004ab3c7: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004ab3ca: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004ab3cd: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004ab3d0: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004ab3d3: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  004ab3d6: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004ab3d9: 8b 51 10                                        mov    edx,DWORD PTR [ecx+0x10]
  004ab3dc: 89 50 10                                        mov    DWORD PTR [eax+0x10],edx
  004ab3df: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004ab3e2: c7 00 28 f9 4d 00                               mov    DWORD PTR [eax],0x4df928
  004ab3e8: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  004ab3eb: 8b 51 18                                        mov    edx,DWORD PTR [ecx+0x18]
  004ab3ee: 89 50 18                                        mov    DWORD PTR [eax+0x18],edx
  004ab3f1: c7 00 48 fa 4d 00                               mov    DWORD PTR [eax],0x4dfa48
  004ab3f7: 83 c0 1c                                        add    eax,0x1c
  004ab3fa: 4e                                              dec    esi
  004ab3fb: 75 c6                                           jne    0x4ab3c3
  004ab3fd: 5e                                              pop    esi
  004ab3fe: 5d                                              pop    ebp
  004ab3ff: c2 0c 00                                        ret    0xc
  004ab402: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ab405: 5d                                              pop    ebp
  004ab406: c2 0c 00                                        ret    0xc
  004ab410: 55                                              push   ebp
  004ab411: 8b ec                                           mov    ebp,esp
  004ab413: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ab416: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004ab418: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004ab41f: 2b d0                                           sub    edx,eax
  004ab421: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ab424: c1 e2 02                                        shl    edx,0x2
  004ab427: 2b ca                                           sub    ecx,edx
  004ab429: 89 08                                           mov    DWORD PTR [eax],ecx
  004ab42b: 5d                                              pop    ebp
  004ab42c: c2 08 00                                        ret    0x8
  004ac350: 55                                              push   ebp
  004ac351: 8b ec                                           mov    ebp,esp
  004ac353: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ac356: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004ac359: 56                                              push   esi
  004ac35a: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004ac35d: 3b ce                                           cmp    ecx,esi
  004ac35f: 74 3e                                           je     0x4ac39f
  004ac361: 85 c0                                           test   eax,eax
  004ac363: 74 30                                           je     0x4ac395
  004ac365: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004ac368: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004ac36b: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004ac36e: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004ac371: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  004ac374: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004ac377: 8b 51 10                                        mov    edx,DWORD PTR [ecx+0x10]
  004ac37a: 89 50 10                                        mov    DWORD PTR [eax+0x10],edx
  004ac37d: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004ac380: c7 00 28 f9 4d 00                               mov    DWORD PTR [eax],0x4df928
  004ac386: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  004ac389: 8b 51 18                                        mov    edx,DWORD PTR [ecx+0x18]
  004ac38c: 89 50 18                                        mov    DWORD PTR [eax+0x18],edx
  004ac38f: c7 00 48 fa 4d 00                               mov    DWORD PTR [eax],0x4dfa48
  004ac395: 83 c1 1c                                        add    ecx,0x1c
  004ac398: 83 c0 1c                                        add    eax,0x1c
  004ac39b: 3b ce                                           cmp    ecx,esi
  004ac39d: 75 c2                                           jne    0x4ac361
  004ac39f: 5e                                              pop    esi
  004ac3a0: 5d                                              pop    ebp
  004ac3a1: c2 0c 00                                        ret    0xc
  004ac3b0: 55                                              push   ebp
  004ac3b1: 8b ec                                           mov    ebp,esp
  004ac3b3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ac3b6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004ac3b9: 3b c1                                           cmp    eax,ecx
  004ac3bb: 74 12                                           je     0x4ac3cf
  004ac3bd: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004ac3c0: 56                                              push   esi
  004ac3c1: 8b 72 18                                        mov    esi,DWORD PTR [edx+0x18]
  004ac3c4: 89 70 18                                        mov    DWORD PTR [eax+0x18],esi
  004ac3c7: 83 c0 1c                                        add    eax,0x1c
  004ac3ca: 3b c1                                           cmp    eax,ecx
  004ac3cc: 75 f3                                           jne    0x4ac3c1
  004ac3ce: 5e                                              pop    esi
  004ac3cf: 5d                                              pop    ebp
  004ac3d0: c3                                              ret
  004ac3e0: 55                                              push   ebp
  004ac3e1: 8b ec                                           mov    ebp,esp
  004ac3e3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004ac3e6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004ac3e9: 3b d0                                           cmp    edx,eax
  004ac3eb: 74 1c                                           je     0x4ac409
  004ac3ed: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004ac3f0: 56                                              push   esi
  004ac3f1: 8b 70 fc                                        mov    esi,DWORD PTR [eax-0x4]
  004ac3f4: 83 e8 1c                                        sub    eax,0x1c
  004ac3f7: 83 e9 1c                                        sub    ecx,0x1c
  004ac3fa: 3b c2                                           cmp    eax,edx
  004ac3fc: 89 71 18                                        mov    DWORD PTR [ecx+0x18],esi
  004ac3ff: 75 f0                                           jne    0x4ac3f1
  004ac401: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ac404: 89 08                                           mov    DWORD PTR [eax],ecx
  004ac406: 5e                                              pop    esi
  004ac407: 5d                                              pop    ebp
  004ac408: c3                                              ret
  004ac409: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ac40c: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004ac40f: 89 08                                           mov    DWORD PTR [eax],ecx
  004ac411: 5d                                              pop    ebp
  004ac412: c3                                              ret
  004ae700: 55                                              push   ebp
  004ae701: 8b ec                                           mov    ebp,esp
  004ae703: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004ae706: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ae709: 89 08                                           mov    DWORD PTR [eax],ecx
  004ae70b: 5d                                              pop    ebp
  004ae70c: c2 04 00                                        ret    0x4
  004ae710: 55                                              push   ebp
  004ae711: 8b ec                                           mov    ebp,esp
  004ae713: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ae716: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004ae71d: 2b d0                                           sub    edx,eax
  004ae71f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004ae721: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  004ae724: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ae727: 89 08                                           mov    DWORD PTR [eax],ecx
  004ae729: 5d                                              pop    ebp
  004ae72a: c2 08 00                                        ret    0x8
  004ae730: 55                                              push   ebp
  004ae731: 8b ec                                           mov    ebp,esp
  004ae733: 6a ff                                           push   0xffffffff
  004ae735: 68 51 c6 4d 00                                  push   0x4dc651
  004ae73a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004ae740: 50                                              push   eax
  004ae741: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004ae748: 83 ec 08                                        sub    esp,0x8
  004ae74b: 53                                              push   ebx
  004ae74c: 56                                              push   esi
  004ae74d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004ae750: 57                                              push   edi
  004ae751: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004ae754: 33 db                                           xor    ebx,ebx
  004ae756: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004ae759: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004ae75c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004ae75f: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  004ae762: 0f 86 b2 00 00 00                               jbe    0x4ae81a
  004ae768: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004ae76b: 3b f3                                           cmp    esi,ebx
  004ae76d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004ae771: 74 47                                           je     0x4ae7ba
  004ae773: 8a 07                                           mov    al,BYTE PTR [edi]
  004ae775: 88 06                                           mov    BYTE PTR [esi],al
  004ae777: 66 8b 4f 02                                     mov    cx,WORD PTR [edi+0x2]
  004ae77b: 66 89 4e 02                                     mov    WORD PTR [esi+0x2],cx
  004ae77f: 8a 57 04                                        mov    dl,BYTE PTR [edi+0x4]
  004ae782: 8d 47 04                                        lea    eax,[edi+0x4]
  004ae785: 8d 4e 04                                        lea    ecx,[esi+0x4]
  004ae788: 88 11                                           mov    BYTE PTR [ecx],dl
  004ae78a: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004ae78d: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004ae790: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004ae793: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004ae799: 8b 12                                           mov    edx,DWORD PTR [edx]
  004ae79b: 52                                              push   edx
  004ae79c: 53                                              push   ebx
  004ae79d: 50                                              push   eax
  004ae79e: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ae7a4: 66 8b 47 14                                     mov    ax,WORD PTR [edi+0x14]
  004ae7a8: 66 89 46 14                                     mov    WORD PTR [esi+0x14],ax
  004ae7ac: 66 8b 4f 16                                     mov    cx,WORD PTR [edi+0x16]
  004ae7b0: 66 89 4e 16                                     mov    WORD PTR [esi+0x16],cx
  004ae7b4: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  004ae7b7: 89 56 18                                        mov    DWORD PTR [esi+0x18],edx
  004ae7ba: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004ae7bd: 49                                              dec    ecx
  004ae7be: 83 c6 1c                                        add    esi,0x1c
  004ae7c1: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004ae7c4: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004ae7c7: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004ae7ca: eb 93                                           jmp    0x4ae75f
  004ae81a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ae81d: 5f                                              pop    edi
  004ae81e: 8b c6                                           mov    eax,esi
  004ae820: 5e                                              pop    esi
  004ae821: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ae828: 5b                                              pop    ebx
  004ae829: 8b e5                                           mov    esp,ebp
  004ae82b: 5d                                              pop    ebp
  004ae82c: c2 0c 00                                        ret    0xc
  004ae830: 55                                              push   ebp
  004ae831: 8b ec                                           mov    ebp,esp
  004ae833: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ae836: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004ae838: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004ae83f: 2b d0                                           sub    edx,eax
  004ae841: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ae844: c1 e2 02                                        shl    edx,0x2
  004ae847: 2b ca                                           sub    ecx,edx
  004ae849: 89 08                                           mov    DWORD PTR [eax],ecx
  004ae84b: 5d                                              pop    ebp
  004ae84c: c2 08 00                                        ret    0x8
  004ae850: 55                                              push   ebp
  004ae851: 8b ec                                           mov    ebp,esp
  004ae853: 6a ff                                           push   0xffffffff
  004ae855: 68 71 c6 4d 00                                  push   0x4dc671
  004ae85a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004ae860: 50                                              push   eax
  004ae861: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004ae868: 83 ec 08                                        sub    esp,0x8
  004ae86b: 53                                              push   ebx
  004ae86c: 56                                              push   esi
  004ae86d: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004ae870: 57                                              push   edi
  004ae871: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004ae874: 33 db                                           xor    ebx,ebx
  004ae876: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004ae879: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004ae87c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004ae87f: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  004ae882: 0f 84 ae 00 00 00                               je     0x4ae936
  004ae888: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004ae88b: 3b f3                                           cmp    esi,ebx
  004ae88d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004ae891: 74 47                                           je     0x4ae8da
  004ae893: 8a 07                                           mov    al,BYTE PTR [edi]
  004ae895: 88 06                                           mov    BYTE PTR [esi],al
  004ae897: 66 8b 4f 02                                     mov    cx,WORD PTR [edi+0x2]
  004ae89b: 66 89 4e 02                                     mov    WORD PTR [esi+0x2],cx
  004ae89f: 8a 57 04                                        mov    dl,BYTE PTR [edi+0x4]
  004ae8a2: 8d 47 04                                        lea    eax,[edi+0x4]
  004ae8a5: 8d 4e 04                                        lea    ecx,[esi+0x4]
  004ae8a8: 88 11                                           mov    BYTE PTR [ecx],dl
  004ae8aa: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004ae8ad: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004ae8b0: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004ae8b3: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004ae8b9: 8b 12                                           mov    edx,DWORD PTR [edx]
  004ae8bb: 52                                              push   edx
  004ae8bc: 53                                              push   ebx
  004ae8bd: 50                                              push   eax
  004ae8be: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ae8c4: 66 8b 47 14                                     mov    ax,WORD PTR [edi+0x14]
  004ae8c8: 66 89 46 14                                     mov    WORD PTR [esi+0x14],ax
  004ae8cc: 66 8b 4f 16                                     mov    cx,WORD PTR [edi+0x16]
  004ae8d0: 66 89 4e 16                                     mov    WORD PTR [esi+0x16],cx
  004ae8d4: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  004ae8d7: 89 56 18                                        mov    DWORD PTR [esi+0x18],edx
  004ae8da: 83 c6 1c                                        add    esi,0x1c
  004ae8dd: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004ae8e0: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004ae8e3: 83 c7 1c                                        add    edi,0x1c
  004ae8e6: eb 97                                           jmp    0x4ae87f
  004ae936: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ae939: 5f                                              pop    edi
  004ae93a: 8b c6                                           mov    eax,esi
  004ae93c: 5e                                              pop    esi
  004ae93d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ae944: 5b                                              pop    ebx
  004ae945: 8b e5                                           mov    esp,ebp
  004ae947: 5d                                              pop    ebp
  004ae948: c2 0c 00                                        ret    0xc
  004ae950: 55                                              push   ebp
  004ae951: 8b ec                                           mov    ebp,esp
  004ae953: 51                                              push   ecx
  004ae954: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ae957: 3b 45 0c                                        cmp    eax,DWORD PTR [ebp+0xc]
  004ae95a: 0f 84 79 01 00 00                               je     0x4aead9
  004ae960: 53                                              push   ebx
  004ae961: 56                                              push   esi
  004ae962: 57                                              push   edi
  004ae963: 8d 58 08                                        lea    ebx,[eax+0x8]
  004ae966: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004ae969: 8a 0e                                           mov    cl,BYTE PTR [esi]
  004ae96b: 88 08                                           mov    BYTE PTR [eax],cl
  004ae96d: 66 8b 56 02                                     mov    dx,WORD PTR [esi+0x2]
  004ae971: 66 89 53 fa                                     mov    WORD PTR [ebx-0x6],dx
  004ae975: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ae97a: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  004ae97d: 8b 00                                           mov    eax,DWORD PTR [eax]
  004ae97f: 83 c6 04                                        add    esi,0x4
  004ae982: 8b f9                                           mov    edi,ecx
  004ae984: 3b c7                                           cmp    eax,edi
  004ae986: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004ae989: 73 05                                           jae    0x4ae990
  004ae98b: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004ae98e: 8b f8                                           mov    edi,eax
  004ae990: 8d 53 fc                                        lea    edx,[ebx-0x4]
  004ae993: 3b d6                                           cmp    edx,esi
  004ae995: 75 6f                                           jne    0x4aea06
  004ae997: 8b f0                                           mov    esi,eax
  004ae999: 39 7b 04                                        cmp    DWORD PTR [ebx+0x4],edi
  004ae99c: 73 09                                           jae    0x4ae9a7
  004ae99e: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004ae9a1: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004ae9a7: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ae9aa: 2b c7                                           sub    eax,edi
  004ae9ac: 3b c6                                           cmp    eax,esi
  004ae9ae: 73 02                                           jae    0x4ae9b2
  004ae9b0: 8b f0                                           mov    esi,eax
  004ae9b2: 85 f6                                           test   esi,esi
  004ae9b4: 0f 86 ec 00 00 00                               jbe    0x4aeaa6
  004ae9ba: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004ae9bd: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004ae9c3: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004ae9c6: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004ae9c8: 2b ce                                           sub    ecx,esi
  004ae9ca: 03 c7                                           add    eax,edi
  004ae9cc: 2b cf                                           sub    ecx,edi
  004ae9ce: 51                                              push   ecx
  004ae9cf: 8d 14 30                                        lea    edx,[eax+esi*1]
  004ae9d2: 52                                              push   edx
  004ae9d3: 50                                              push   eax
  004ae9d4: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004ae9da: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004ae9dd: 83 c4 0c                                        add    esp,0xc
  004ae9e0: 2b fe                                           sub    edi,esi
  004ae9e2: 6a 00                                           push   0x0
  004ae9e4: 8d 73 fc                                        lea    esi,[ebx-0x4]
  004ae9e7: 57                                              push   edi
  004ae9e8: 8b ce                                           mov    ecx,esi
  004ae9ea: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004ae9f0: 84 c0                                           test   al,al
  004ae9f2: 0f 84 ae 00 00 00                               je     0x4aeaa6
  004ae9f8: 57                                              push   edi
  004ae9f9: 8b ce                                           mov    ecx,esi
  004ae9fb: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004aea01: e9 a0 00 00 00                                  jmp    0x4aeaa6
  004aea06: 85 ff                                           test   edi,edi
  004aea08: 76 61                                           jbe    0x4aea6b
  004aea0a: 3b f9                                           cmp    edi,ecx
  004aea0c: 75 5d                                           jne    0x4aea6b
  004aea0e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004aea11: 85 c0                                           test   eax,eax
  004aea13: 75 05                                           jne    0x4aea1a
  004aea15: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004aea1a: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004aea1e: 73 4b                                           jae    0x4aea6b
  004aea20: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004aea22: 85 c0                                           test   eax,eax
  004aea24: 74 1c                                           je     0x4aea42
  004aea26: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004aea29: 8a 01                                           mov    al,BYTE PTR [ecx]
  004aea2b: 84 c0                                           test   al,al
  004aea2d: 74 0a                                           je     0x4aea39
  004aea2f: 3c ff                                           cmp    al,0xff
  004aea31: 74 06                                           je     0x4aea39
  004aea33: fe c8                                           dec    al
  004aea35: 88 01                                           mov    BYTE PTR [ecx],al
  004aea37: eb 09                                           jmp    0x4aea42
  004aea39: 51                                              push   ecx
  004aea3a: e8 21 36 f9 ff                                  call   0x442060
  004aea3f: 83 c4 04                                        add    esp,0x4
  004aea42: 33 c9                                           xor    ecx,ecx
  004aea44: 89 0b                                           mov    DWORD PTR [ebx],ecx
  004aea46: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004aea49: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004aea4c: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004aea4f: 3b c1                                           cmp    eax,ecx
  004aea51: 75 05                                           jne    0x4aea58
  004aea53: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004aea58: 89 03                                           mov    DWORD PTR [ebx],eax
  004aea5a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004aea5d: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004aea60: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004aea63: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004aea66: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004aea69: eb 3b                                           jmp    0x4aeaa6
  004aea6b: 6a 01                                           push   0x1
  004aea6d: 57                                              push   edi
  004aea6e: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004aea71: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004aea77: 84 c0                                           test   al,al
  004aea79: 74 2b                                           je     0x4aeaa6
  004aea7b: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004aea7e: 85 f6                                           test   esi,esi
  004aea80: 75 06                                           jne    0x4aea88
  004aea82: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004aea88: 8b cf                                           mov    ecx,edi
  004aea8a: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004aea8c: 8b c1                                           mov    eax,ecx
  004aea8e: c1 e9 02                                        shr    ecx,0x2
  004aea91: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004aea93: 8b c8                                           mov    ecx,eax
  004aea95: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004aea98: 83 e1 03                                        and    ecx,0x3
  004aea9b: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004aea9d: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004aea9f: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004aeaa2: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  004aeaa6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004aeaa9: 66 8b 50 14                                     mov    dx,WORD PTR [eax+0x14]
  004aeaad: 66 89 53 0c                                     mov    WORD PTR [ebx+0xc],dx
  004aeab1: 66 8b 48 16                                     mov    cx,WORD PTR [eax+0x16]
  004aeab5: 66 89 4b 0e                                     mov    WORD PTR [ebx+0xe],cx
  004aeab9: 8b 50 18                                        mov    edx,DWORD PTR [eax+0x18]
  004aeabc: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aeabf: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004aeac2: 83 c0 1c                                        add    eax,0x1c
  004aeac5: 89 53 10                                        mov    DWORD PTR [ebx+0x10],edx
  004aeac8: 83 c3 1c                                        add    ebx,0x1c
  004aeacb: 3b c1                                           cmp    eax,ecx
  004aeacd: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004aead0: 0f 85 90 fe ff ff                               jne    0x4ae966
  004aead6: 5f                                              pop    edi
  004aead7: 5e                                              pop    esi
  004aead8: 5b                                              pop    ebx
  004aead9: 8b e5                                           mov    esp,ebp
  004aeadb: 5d                                              pop    ebp
  004aeadc: c3                                              ret
  004aeae0: 55                                              push   ebp
  004aeae1: 8b ec                                           mov    ebp,esp
  004aeae3: 83 ec 08                                        sub    esp,0x8
  004aeae6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004aeae9: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  004aeaec: 0f 84 25 01 00 00                               je     0x4aec17
  004aeaf2: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004aeaf5: 53                                              push   ebx
  004aeaf6: 56                                              push   esi
  004aeaf7: 57                                              push   edi
  004aeaf8: 8d 59 08                                        lea    ebx,[ecx+0x8]
  004aeafb: 8d 70 08                                        lea    esi,[eax+0x8]
  004aeafe: eb 03                                           jmp    0x4aeb03
  004aeb00: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004aeb03: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004aeb06: 8a 50 e4                                        mov    dl,BYTE PTR [eax-0x1c]
  004aeb09: 83 e8 1c                                        sub    eax,0x1c
  004aeb0c: 83 e9 1c                                        sub    ecx,0x1c
  004aeb0f: 83 ee 1c                                        sub    esi,0x1c
  004aeb12: 88 11                                           mov    BYTE PTR [ecx],dl
  004aeb14: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004aeb17: 66 8b 46 fa                                     mov    ax,WORD PTR [esi-0x6]
  004aeb1b: 83 eb 1c                                        sub    ebx,0x1c
  004aeb1e: 66 89 43 fa                                     mov    WORD PTR [ebx-0x6],ax
  004aeb22: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004aeb25: 89 4d 14                                        mov    DWORD PTR [ebp+0x14],ecx
  004aeb28: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004aeb2e: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004aeb30: 3b c7                                           cmp    eax,edi
  004aeb32: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004aeb35: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004aeb38: 73 05                                           jae    0x4aeb3f
  004aeb3a: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004aeb3d: 8b f8                                           mov    edi,eax
  004aeb3f: 8d 56 fc                                        lea    edx,[esi-0x4]
  004aeb42: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004aeb45: 3b ca                                           cmp    ecx,edx
  004aeb47: 75 1d                                           jne    0x4aeb66
  004aeb49: 50                                              push   eax
  004aeb4a: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004aeb4d: 57                                              push   edi
  004aeb4e: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004aeb54: 6a 00                                           push   0x0
  004aeb56: 6a 00                                           push   0x0
  004aeb58: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004aeb5b: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004aeb61: e9 80 00 00 00                                  jmp    0x4aebe6
  004aeb66: 85 ff                                           test   edi,edi
  004aeb68: 76 3f                                           jbe    0x4aeba9
  004aeb6a: 3b 7e 04                                        cmp    edi,DWORD PTR [esi+0x4]
  004aeb6d: 75 3a                                           jne    0x4aeba9
  004aeb6f: 8b 06                                           mov    eax,DWORD PTR [esi]
  004aeb71: 85 c0                                           test   eax,eax
  004aeb73: 75 05                                           jne    0x4aeb7a
  004aeb75: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004aeb7a: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004aeb7e: 73 29                                           jae    0x4aeba9
  004aeb80: 6a 01                                           push   0x1
  004aeb82: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004aeb85: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004aeb8b: 8b 06                                           mov    eax,DWORD PTR [esi]
  004aeb8d: 85 c0                                           test   eax,eax
  004aeb8f: 75 05                                           jne    0x4aeb96
  004aeb91: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004aeb96: 89 03                                           mov    DWORD PTR [ebx],eax
  004aeb98: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004aeb9b: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  004aeb9e: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004aeba1: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004aeba4: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004aeba7: eb 3d                                           jmp    0x4aebe6
  004aeba9: 6a 01                                           push   0x1
  004aebab: 57                                              push   edi
  004aebac: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004aebaf: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004aebb5: 84 c0                                           test   al,al
  004aebb7: 74 2d                                           je     0x4aebe6
  004aebb9: 8b 36                                           mov    esi,DWORD PTR [esi]
  004aebbb: 85 f6                                           test   esi,esi
  004aebbd: 75 06                                           jne    0x4aebc5
  004aebbf: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004aebc5: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004aebc8: 8b cf                                           mov    ecx,edi
  004aebca: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004aebcc: 8b d1                                           mov    edx,ecx
  004aebce: c1 e9 02                                        shr    ecx,0x2
  004aebd1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004aebd3: 8b ca                                           mov    ecx,edx
  004aebd5: 83 e1 03                                        and    ecx,0x3
  004aebd8: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004aebda: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004aebdc: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  004aebdf: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004aebe2: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  004aebe6: 66 8b 56 0c                                     mov    dx,WORD PTR [esi+0xc]
  004aebea: 66 89 53 0c                                     mov    WORD PTR [ebx+0xc],dx
  004aebee: 66 8b 46 0e                                     mov    ax,WORD PTR [esi+0xe]
  004aebf2: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004aebf5: 66 89 43 0e                                     mov    WORD PTR [ebx+0xe],ax
  004aebf9: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  004aebfc: 8b 4e 10                                        mov    ecx,DWORD PTR [esi+0x10]
  004aebff: 89 4b 10                                        mov    DWORD PTR [ebx+0x10],ecx
  004aec02: 0f 85 f8 fe ff ff                               jne    0x4aeb00
  004aec08: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aec0b: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004aec0e: 5f                                              pop    edi
  004aec0f: 5e                                              pop    esi
  004aec10: 89 08                                           mov    DWORD PTR [eax],ecx
  004aec12: 5b                                              pop    ebx
  004aec13: 8b e5                                           mov    esp,ebp
  004aec15: 5d                                              pop    ebp
  004aec16: c3                                              ret
  004aec17: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aec1a: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004aec1d: 89 10                                           mov    DWORD PTR [eax],edx
  004aec1f: 8b e5                                           mov    esp,ebp
  004aec21: 5d                                              pop    ebp
  004aec22: c3                                              ret
  004b8790: 55                                              push   ebp
  004b8791: 8b ec                                           mov    ebp,esp
  004b8793: 6a ff                                           push   0xffffffff
  004b8795: 68 c8 ce 4d 00                                  push   0x4dcec8
  004b879a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b87a0: 50                                              push   eax
  004b87a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b87a8: 51                                              push   ecx
  004b87a9: 56                                              push   esi
  004b87aa: 8d 45 08                                        lea    eax,[ebp+0x8]
  004b87ad: 50                                              push   eax
  004b87ae: 51                                              push   ecx
  004b87af: 8d 71 38                                        lea    esi,[ecx+0x38]
  004b87b2: 54                                              push   esp
  004b87b3: 8b ce                                           mov    ecx,esi
  004b87b5: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b87bc: e8 cf 01 00 00                                  call   0x4b8990
  004b87c1: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004b87c4: 51                                              push   ecx
  004b87c5: 8b ce                                           mov    ecx,esi
  004b87c7: e8 d4 01 00 00                                  call   0x4b89a0
  004b87cc: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b87cf: 85 c0                                           test   eax,eax
  004b87d1: 5e                                              pop    esi
  004b87d2: 74 2a                                           je     0x4b87fe
  004b87d4: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b87d7: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b87d9: 84 c0                                           test   al,al
  004b87db: 74 18                                           je     0x4b87f5
  004b87dd: 3c ff                                           cmp    al,0xff
  004b87df: 74 14                                           je     0x4b87f5
  004b87e1: fe c8                                           dec    al
  004b87e3: 88 01                                           mov    BYTE PTR [ecx],al
  004b87e5: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b87e8: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b87ef: 8b e5                                           mov    esp,ebp
  004b87f1: 5d                                              pop    ebp
  004b87f2: c2 14 00                                        ret    0x14
  004b87f5: 51                                              push   ecx
  004b87f6: e8 65 98 f8 ff                                  call   0x442060
  004b87fb: 83 c4 04                                        add    esp,0x4
  004b87fe: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b8801: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b8808: 8b e5                                           mov    esp,ebp
  004b880a: 5d                                              pop    ebp
  004b880b: c2 14 00                                        ret    0x14
