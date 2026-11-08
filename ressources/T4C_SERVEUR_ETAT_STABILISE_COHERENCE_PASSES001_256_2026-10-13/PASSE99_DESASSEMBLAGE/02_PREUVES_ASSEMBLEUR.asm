; PASSE 99, Propagation d’une nouvelle génération d’appels directs
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 9393 distinct instructions; 69 graph entry points

  00428bd0: 55                                              push   ebp
  00428bd1: 8b ec                                           mov    ebp,esp
  00428bd3: 53                                              push   ebx
  00428bd4: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00428bd7: 56                                              push   esi
  00428bd8: 8b f1                                           mov    esi,ecx
  00428bda: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00428bdd: 85 c0                                           test   eax,eax
  00428bdf: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00428be2: 57                                              push   edi
  00428be3: 74 67                                           je     0x428c4c
  00428be5: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428be8: 3b 08                                           cmp    ecx,DWORD PTR [eax]
  00428bea: 75 60                                           jne    0x428c4c
  00428bec: 3b d8                                           cmp    ebx,eax
  00428bee: 75 5c                                           jne    0x428c4c
  00428bf0: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  00428bf3: 8a 43 49                                        mov    al,BYTE PTR [ebx+0x49]
  00428bf6: 84 c0                                           test   al,al
  00428bf8: 8b fb                                           mov    edi,ebx
  00428bfa: 75 27                                           jne    0x428c23
  00428bfc: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00428bff: 50                                              push   eax
  00428c00: 8b ce                                           mov    ecx,esi
  00428c02: e8 d9 06 00 00                                  call   0x4292e0
  00428c07: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00428c09: 8d 4b 0c                                        lea    ecx,[ebx+0xc]
  00428c0c: e8 3f f7 ff ff                                  call   0x428350
  00428c11: 53                                              push   ebx
  00428c12: e8 49 94 01 00                                  call   0x442060
  00428c17: 8a 47 49                                        mov    al,BYTE PTR [edi+0x49]
  00428c1a: 83 c4 04                                        add    esp,0x4
  00428c1d: 84 c0                                           test   al,al
  00428c1f: 8b df                                           mov    ebx,edi
  00428c21: 74 d9                                           je     0x428bfc
  00428c23: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428c26: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00428c29: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428c2c: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00428c33: 89 00                                           mov    DWORD PTR [eax],eax
  00428c35: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428c38: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00428c3b: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00428c3e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428c40: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428c43: 5f                                              pop    edi
  00428c44: 5e                                              pop    esi
  00428c45: 89 10                                           mov    DWORD PTR [eax],edx
  00428c47: 5b                                              pop    ebx
  00428c48: 5d                                              pop    ebp
  00428c49: c2 0c 00                                        ret    0xc
  00428c4c: 3b cb                                           cmp    ecx,ebx
  00428c4e: 74 1d                                           je     0x428c6d
  00428c50: 8b f9                                           mov    edi,ecx
  00428c52: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00428c55: e8 b6 0a 00 00                                  call   0x429710
  00428c5a: 57                                              push   edi
  00428c5b: 8d 45 10                                        lea    eax,[ebp+0x10]
  00428c5e: 50                                              push   eax
  00428c5f: 8b ce                                           mov    ecx,esi
  00428c61: e8 ea ed ff ff                                  call   0x427a50
  00428c66: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00428c69: 3b cb                                           cmp    ecx,ebx
  00428c6b: 75 e3                                           jne    0x428c50
  00428c6d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428c70: 5f                                              pop    edi
  00428c71: 5e                                              pop    esi
  00428c72: 89 08                                           mov    DWORD PTR [eax],ecx
  00428c74: 5b                                              pop    ebx
  00428c75: 5d                                              pop    ebp
  00428c76: c2 0c 00                                        ret    0xc
  0042ad10: 55                                              push   ebp
  0042ad11: 8b ec                                           mov    ebp,esp
  0042ad13: 51                                              push   ecx
  0042ad14: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  0042ad17: 56                                              push   esi
  0042ad18: 8b f1                                           mov    esi,ecx
  0042ad1a: 6a 0c                                           push   0xc
  0042ad1c: 88 46 04                                        mov    BYTE PTR [esi+0x4],al
  0042ad1f: e8 cc 72 01 00                                  call   0x441ff0
  0042ad24: 89 00                                           mov    DWORD PTR [eax],eax
  0042ad26: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042ad29: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0042ad2c: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  0042ad33: 83 c4 04                                        add    esp,0x4
  0042ad36: c7 06 f4 e8 4d 00                               mov    DWORD PTR [esi],0x4de8f4
  0042ad3c: 8b c6                                           mov    eax,esi
  0042ad3e: 5e                                              pop    esi
  0042ad3f: 8b e5                                           mov    esp,ebp
  0042ad41: 5d                                              pop    ebp
  0042ad42: c3                                              ret
  0042ddc0: 55                                              push   ebp
  0042ddc1: 8b ec                                           mov    ebp,esp
  0042ddc3: 53                                              push   ebx
  0042ddc4: 56                                              push   esi
  0042ddc5: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042ddc8: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042ddcb: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0042ddcd: 57                                              push   edi
  0042ddce: 8b f9                                           mov    edi,ecx
  0042ddd0: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  0042ddd2: 89 08                                           mov    DWORD PTR [eax],ecx
  0042ddd4: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042ddd6: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042ddd9: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0042dddc: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0042dddf: 33 d2                                           xor    edx,edx
  0042dde1: 3b c2                                           cmp    eax,edx
  0042dde3: 74 1e                                           je     0x42de03
  0042dde5: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0042dde8: 8a 01                                           mov    al,BYTE PTR [ecx]
  0042ddea: 84 c0                                           test   al,al
  0042ddec: 74 0a                                           je     0x42ddf8
  0042ddee: 3c ff                                           cmp    al,0xff
  0042ddf0: 74 06                                           je     0x42ddf8
  0042ddf2: fe c8                                           dec    al
  0042ddf4: 88 01                                           mov    BYTE PTR [ecx],al
  0042ddf6: eb 0b                                           jmp    0x42de03
  0042ddf8: 51                                              push   ecx
  0042ddf9: e8 62 42 01 00                                  call   0x442060
  0042ddfe: 83 c4 04                                        add    esp,0x4
  0042de01: 33 d2                                           xor    edx,edx
  0042de03: 56                                              push   esi
  0042de04: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0042de07: 89 56 10                                        mov    DWORD PTR [esi+0x10],edx
  0042de0a: 89 56 14                                        mov    DWORD PTR [esi+0x14],edx
  0042de0d: e8 4e 42 01 00                                  call   0x442060
  0042de12: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0042de15: 83 c4 04                                        add    esp,0x4
  0042de18: 48                                              dec    eax
  0042de19: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  0042de1c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042de1f: 5f                                              pop    edi
  0042de20: 5e                                              pop    esi
  0042de21: 89 18                                           mov    DWORD PTR [eax],ebx
  0042de23: 5b                                              pop    ebx
  0042de24: 5d                                              pop    ebp
  0042de25: c2 08 00                                        ret    0x8
  0042df10: 55                                              push   ebp
  0042df11: 8b ec                                           mov    ebp,esp
  0042df13: 6a ff                                           push   0xffffffff
  0042df15: 68 20 4f 4d 00                                  push   0x4d4f20
  0042df1a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042df20: 50                                              push   eax
  0042df21: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042df28: 83 ec 0c                                        sub    esp,0xc
  0042df2b: 53                                              push   ebx
  0042df2c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042df2f: 56                                              push   esi
  0042df30: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042df33: 57                                              push   edi
  0042df34: 8b f9                                           mov    edi,ecx
  0042df36: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0042df39: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  0042df3c: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0042df3f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0042df46: 3b 75 10                                        cmp    esi,DWORD PTR [ebp+0x10]
  0042df49: 74 54                                           je     0x42df9f
  0042df4b: 8d 46 08                                        lea    eax,[esi+0x8]
  0042df4e: 50                                              push   eax
  0042df4f: 53                                              push   ebx
  0042df50: 8b cf                                           mov    ecx,edi
  0042df52: e8 d9 fb ff ff                                  call   0x42db30
  0042df57: 8b 36                                           mov    esi,DWORD PTR [esi]
  0042df59: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  0042df5c: eb e8                                           jmp    0x42df46
  0042df9f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042dfa2: 5f                                              pop    edi
  0042dfa3: 5e                                              pop    esi
  0042dfa4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042dfab: 5b                                              pop    ebx
  0042dfac: 8b e5                                           mov    esp,ebp
  0042dfae: 5d                                              pop    ebp
  0042dfaf: c2 10 00                                        ret    0x10
  0043c580: 56                                              push   esi
  0043c581: 8b f1                                           mov    esi,ecx
  0043c583: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043c586: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  0043c589: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0043c58c: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  0043c58f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043c592: 3b c1                                           cmp    eax,ecx
  0043c594: 74 3d                                           je     0x43c5d3
  0043c596: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043c599: 74 34                                           je     0x43c5cf
  0043c59b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043c59d: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043c5a0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0043c5a3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043c5a6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043c5a9: 8b 10                                           mov    edx,DWORD PTR [eax]
  0043c5ab: 89 11                                           mov    DWORD PTR [ecx],edx
  0043c5ad: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0043c5b0: 83 f8 01                                        cmp    eax,0x1
  0043c5b3: 75 0b                                           jne    0x43c5c0
  0043c5b5: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043c5b8: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043c5bb: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0043c5be: eb 67                                           jmp    0x43c627
  0043c5c0: 83 f8 02                                        cmp    eax,0x2
  0043c5c3: 75 62                                           jne    0x43c627
  0043c5c5: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0043c5c8: 8b 02                                           mov    eax,DWORD PTR [edx]
  0043c5ca: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0043c5cd: eb 58                                           jmp    0x43c627
  0043c5cf: 3b c1                                           cmp    eax,ecx
  0043c5d1: 75 23                                           jne    0x43c5f6
  0043c5d3: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043c5d6: 74 23                                           je     0x43c5fb
  0043c5d8: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043c5db: 33 c9                                           xor    ecx,ecx
  0043c5dd: 89 0a                                           mov    DWORD PTR [edx],ecx
  0043c5df: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043c5e2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043c5e5: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  0043c5e8: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043c5eb: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0043c5ef: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0043c5f2: 75 33                                           jne    0x43c627
  0043c5f4: eb 2e                                           jmp    0x43c624
  0043c5f6: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043c5f9: 75 1e                                           jne    0x43c619
  0043c5fb: 3b c1                                           cmp    eax,ecx
  0043c5fd: 74 1a                                           je     0x43c619
  0043c5ff: 8b 00                                           mov    eax,DWORD PTR [eax]
  0043c601: 33 c9                                           xor    ecx,ecx
  0043c603: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0043c606: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0043c609: 8b 02                                           mov    eax,DWORD PTR [edx]
  0043c60b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0043c60e: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0043c611: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  0043c615: 75 10                                           jne    0x43c627
  0043c617: eb 0b                                           jmp    0x43c624
  0043c619: 33 c9                                           xor    ecx,ecx
  0043c61b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0043c61e: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  0043c621: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  0043c624: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  0043c627: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  0043c62a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0043c62d: 51                                              push   ecx
  0043c62e: e8 2d 5a 00 00                                  call   0x442060
  0043c633: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0043c636: 52                                              push   edx
  0043c637: e8 24 5a 00 00                                  call   0x442060
  0043c63c: 83 c4 08                                        add    esp,0x8
  0043c63f: 5e                                              pop    esi
  0043c640: c3                                              ret
  0045f490: 55                                              push   ebp
  0045f491: 8b ec                                           mov    ebp,esp
  0045f493: 56                                              push   esi
  0045f494: 8b f1                                           mov    esi,ecx
  0045f496: e8 55 00 00 00                                  call   0x45f4f0
  0045f49b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0045f49f: 74 09                                           je     0x45f4aa
  0045f4a1: 56                                              push   esi
  0045f4a2: e8 b9 2b fe ff                                  call   0x442060
  0045f4a7: 83 c4 04                                        add    esp,0x4
  0045f4aa: 8b c6                                           mov    eax,esi
  0045f4ac: 5e                                              pop    esi
  0045f4ad: 5d                                              pop    ebp
  0045f4ae: c2 04 00                                        ret    0x4
  0045f860: 55                                              push   ebp
  0045f861: 8b ec                                           mov    ebp,esp
  0045f863: 6a ff                                           push   0xffffffff
  0045f865: 68 60 78 4d 00                                  push   0x4d7860
  0045f86a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045f870: 50                                              push   eax
  0045f871: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045f878: 83 ec 0c                                        sub    esp,0xc
  0045f87b: 53                                              push   ebx
  0045f87c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045f87f: 56                                              push   esi
  0045f880: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0045f883: 57                                              push   edi
  0045f884: 8b f9                                           mov    edi,ecx
  0045f886: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0045f889: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  0045f88c: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0045f88f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045f896: 3b 75 10                                        cmp    esi,DWORD PTR [ebp+0x10]
  0045f899: 0f 84 83 00 00 00                               je     0x45f922
  0045f89f: 8d 46 08                                        lea    eax,[esi+0x8]
  0045f8a2: 50                                              push   eax
  0045f8a3: 53                                              push   ebx
  0045f8a4: 8b cf                                           mov    ecx,edi
  0045f8a6: e8 a5 02 00 00                                  call   0x45fb50
  0045f8ab: 8b 36                                           mov    esi,DWORD PTR [esi]
  0045f8ad: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  0045f8b0: eb e4                                           jmp    0x45f896
  0045f922: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045f925: 5f                                              pop    edi
  0045f926: 5e                                              pop    esi
  0045f927: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045f92e: 5b                                              pop    ebx
  0045f92f: 8b e5                                           mov    esp,ebp
  0045f931: 5d                                              pop    ebp
  0045f932: c2 10 00                                        ret    0x10
  0045f940: 55                                              push   ebp
  0045f941: 8b ec                                           mov    ebp,esp
  0045f943: 6a ff                                           push   0xffffffff
  0045f945: 68 70 78 4d 00                                  push   0x4d7870
  0045f94a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045f950: 50                                              push   eax
  0045f951: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045f958: 83 ec 0c                                        sub    esp,0xc
  0045f95b: 53                                              push   ebx
  0045f95c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045f95f: 56                                              push   esi
  0045f960: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0045f963: 57                                              push   edi
  0045f964: 8b f9                                           mov    edi,ecx
  0045f966: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0045f969: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  0045f96c: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0045f96f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045f976: 3b 75 10                                        cmp    esi,DWORD PTR [ebp+0x10]
  0045f979: 74 54                                           je     0x45f9cf
  0045f97b: 8d 46 08                                        lea    eax,[esi+0x8]
  0045f97e: 50                                              push   eax
  0045f97f: 53                                              push   ebx
  0045f980: 8b cf                                           mov    ecx,edi
  0045f982: e8 e9 02 00 00                                  call   0x45fc70
  0045f987: 8b 36                                           mov    esi,DWORD PTR [esi]
  0045f989: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  0045f98c: eb e8                                           jmp    0x45f976
  0045f9cf: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045f9d2: 5f                                              pop    edi
  0045f9d3: 5e                                              pop    esi
  0045f9d4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045f9db: 5b                                              pop    ebx
  0045f9dc: 8b e5                                           mov    esp,ebp
  0045f9de: 5d                                              pop    ebp
  0045f9df: c2 10 00                                        ret    0x10
  0045f9f0: 55                                              push   ebp
  0045f9f1: 8b ec                                           mov    ebp,esp
  0045f9f3: 6a ff                                           push   0xffffffff
  0045f9f5: 68 80 78 4d 00                                  push   0x4d7880
  0045f9fa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045fa00: 50                                              push   eax
  0045fa01: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045fa08: 83 ec 0c                                        sub    esp,0xc
  0045fa0b: 53                                              push   ebx
  0045fa0c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045fa0f: 56                                              push   esi
  0045fa10: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0045fa13: 57                                              push   edi
  0045fa14: 8b f9                                           mov    edi,ecx
  0045fa16: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0045fa19: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  0045fa1c: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0045fa1f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045fa26: 3b 75 10                                        cmp    esi,DWORD PTR [ebp+0x10]
  0045fa29: 74 54                                           je     0x45fa7f
  0045fa2b: 8d 46 08                                        lea    eax,[esi+0x8]
  0045fa2e: 50                                              push   eax
  0045fa2f: 53                                              push   ebx
  0045fa30: 8b cf                                           mov    ecx,edi
  0045fa32: e8 19 03 00 00                                  call   0x45fd50
  0045fa37: 8b 36                                           mov    esi,DWORD PTR [esi]
  0045fa39: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  0045fa3c: eb e8                                           jmp    0x45fa26
  0045fa7f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045fa82: 5f                                              pop    edi
  0045fa83: 5e                                              pop    esi
  0045fa84: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045fa8b: 5b                                              pop    ebx
  0045fa8c: 8b e5                                           mov    esp,ebp
  0045fa8e: 5d                                              pop    ebp
  0045fa8f: c2 10 00                                        ret    0x10
  0045faa0: 55                                              push   ebp
  0045faa1: 8b ec                                           mov    ebp,esp
  0045faa3: 6a ff                                           push   0xffffffff
  0045faa5: 68 90 78 4d 00                                  push   0x4d7890
  0045faaa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045fab0: 50                                              push   eax
  0045fab1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045fab8: 83 ec 0c                                        sub    esp,0xc
  0045fabb: 53                                              push   ebx
  0045fabc: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045fabf: 56                                              push   esi
  0045fac0: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0045fac3: 57                                              push   edi
  0045fac4: 8b f9                                           mov    edi,ecx
  0045fac6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0045fac9: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  0045facc: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0045facf: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045fad6: 3b 75 10                                        cmp    esi,DWORD PTR [ebp+0x10]
  0045fad9: 74 54                                           je     0x45fb2f
  0045fadb: 8d 46 08                                        lea    eax,[esi+0x8]
  0045fade: 50                                              push   eax
  0045fadf: 53                                              push   ebx
  0045fae0: 8b cf                                           mov    ecx,edi
  0045fae2: e8 49 03 00 00                                  call   0x45fe30
  0045fae7: 8b 36                                           mov    esi,DWORD PTR [esi]
  0045fae9: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  0045faec: eb e8                                           jmp    0x45fad6
  0045fb2f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045fb32: 5f                                              pop    edi
  0045fb33: 5e                                              pop    esi
  0045fb34: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045fb3b: 5b                                              pop    ebx
  0045fb3c: 8b e5                                           mov    esp,ebp
  0045fb3e: 5d                                              pop    ebp
  0045fb3f: c2 10 00                                        ret    0x10
  004916d0: 55                                              push   ebp
  004916d1: 8b ec                                           mov    ebp,esp
  004916d3: 8b c1                                           mov    eax,ecx
  004916d5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004916d8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004916da: 89 10                                           mov    DWORD PTR [eax],edx
  004916dc: 5d                                              pop    ebp
  004916dd: c2 04 00                                        ret    0x4
  004916e0: 55                                              push   ebp
  004916e1: 8b ec                                           mov    ebp,esp
  004916e3: 6a ff                                           push   0xffffffff
  004916e5: 68 a9 a9 4d 00                                  push   0x4da9a9
  004916ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004916f0: 50                                              push   eax
  004916f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004916f8: 83 ec 54                                        sub    esp,0x54
  004916fb: 53                                              push   ebx
  004916fc: 56                                              push   esi
  004916fd: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00491700: 57                                              push   edi
  00491701: 8b d9                                           mov    ebx,ecx
  00491703: b9 07 00 00 00                                  mov    ecx,0x7
  00491708: 8d 7d bc                                        lea    edi,[ebp-0x44]
  0049170b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0049170d: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00491710: 85 c9                                           test   ecx,ecx
  00491712: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00491715: 75 07                                           jne    0x49171e
  00491717: 33 f6                                           xor    esi,esi
  00491719: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049171c: eb 1d                                           jmp    0x49173b
  0049171e: 8b 73 0c                                        mov    esi,DWORD PTR [ebx+0xc]
  00491721: 2b f1                                           sub    esi,ecx
  00491723: b8 93 24 49 92                                  mov    eax,0x92492493
  00491728: f7 ee                                           imul   esi
  0049172a: 03 d6                                           add    edx,esi
  0049172c: c1 fa 04                                        sar    edx,0x4
  0049172f: 8b c2                                           mov    eax,edx
  00491731: c1 e8 1f                                        shr    eax,0x1f
  00491734: 03 d0                                           add    edx,eax
  00491736: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  00491739: 8b f2                                           mov    esi,edx
  0049173b: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0049173e: 85 ff                                           test   edi,edi
  00491740: 0f 84 7e 03 00 00                               je     0x491ac4
  00491746: 85 c9                                           test   ecx,ecx
  00491748: 75 04                                           jne    0x49174e
  0049174a: 33 d2                                           xor    edx,edx
  0049174c: eb 1b                                           jmp    0x491769
  0049174e: 8b 73 08                                        mov    esi,DWORD PTR [ebx+0x8]
  00491751: 2b f1                                           sub    esi,ecx
  00491753: b8 93 24 49 92                                  mov    eax,0x92492493
  00491758: f7 ee                                           imul   esi
  0049175a: 03 d6                                           add    edx,esi
  0049175c: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0049175f: c1 fa 04                                        sar    edx,0x4
  00491762: 8b c2                                           mov    eax,edx
  00491764: c1 e8 1f                                        shr    eax,0x1f
  00491767: 03 d0                                           add    edx,eax
  00491769: b8 49 92 24 09                                  mov    eax,0x9249249
  0049176e: 2b c2                                           sub    eax,edx
  00491770: 3b c7                                           cmp    eax,edi
  00491772: 73 2f                                           jae    0x4917a3
  00491774: 68 80 05 50 00                                  push   0x500580
  00491779: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0049177c: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00491782: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00491785: 51                                              push   ecx
  00491786: 8d 4d a0                                        lea    ecx,[ebp-0x60]
  00491789: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00491790: e8 8b 3c f7 ff                                  call   0x405420
  00491795: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0049179a: 8d 55 a0                                        lea    edx,[ebp-0x60]
  0049179d: 52                                              push   edx
  0049179e: e8 b3 05 04 00                                  call   0x4d1d56
  004917a3: 85 c9                                           test   ecx,ecx
  004917a5: 75 04                                           jne    0x4917ab
  004917a7: 33 d2                                           xor    edx,edx
  004917a9: eb 1b                                           jmp    0x4917c6
  004917ab: 8b 73 08                                        mov    esi,DWORD PTR [ebx+0x8]
  004917ae: 2b f1                                           sub    esi,ecx
  004917b0: b8 93 24 49 92                                  mov    eax,0x92492493
  004917b5: f7 ee                                           imul   esi
  004917b7: 03 d6                                           add    edx,esi
  004917b9: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004917bc: c1 fa 04                                        sar    edx,0x4
  004917bf: 8b c2                                           mov    eax,edx
  004917c1: c1 e8 1f                                        shr    eax,0x1f
  004917c4: 03 d0                                           add    edx,eax
  004917c6: 03 d7                                           add    edx,edi
  004917c8: 3b f2                                           cmp    esi,edx
  004917ca: 0f 83 7c 01 00 00                               jae    0x49194c
  004917d0: 8b c6                                           mov    eax,esi
  004917d2: d1 e8                                           shr    eax,1
  004917d4: ba 49 92 24 09                                  mov    edx,0x9249249
  004917d9: 2b d0                                           sub    edx,eax
  004917db: 3b d6                                           cmp    edx,esi
  004917dd: 73 0c                                           jae    0x4917eb
  004917df: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004917e6: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004917e9: eb 05                                           jmp    0x4917f0
  004917eb: 03 f0                                           add    esi,eax
  004917ed: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004917f0: 85 c9                                           test   ecx,ecx
  004917f2: 75 04                                           jne    0x4917f8
  004917f4: 33 d2                                           xor    edx,edx
  004917f6: eb 1b                                           jmp    0x491813
  004917f8: 8b 73 08                                        mov    esi,DWORD PTR [ebx+0x8]
  004917fb: 2b f1                                           sub    esi,ecx
  004917fd: b8 93 24 49 92                                  mov    eax,0x92492493
  00491802: f7 ee                                           imul   esi
  00491804: 03 d6                                           add    edx,esi
  00491806: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00491809: c1 fa 04                                        sar    edx,0x4
  0049180c: 8b c2                                           mov    eax,edx
  0049180e: c1 e8 1f                                        shr    eax,0x1f
  00491811: 03 d0                                           add    edx,eax
  00491813: 03 d7                                           add    edx,edi
  00491815: 3b f2                                           cmp    esi,edx
  00491817: 73 27                                           jae    0x491840
  00491819: 85 c9                                           test   ecx,ecx
  0049181b: 75 04                                           jne    0x491821
  0049181d: 33 d2                                           xor    edx,edx
  0049181f: eb 18                                           jmp    0x491839
  00491821: 8b 73 08                                        mov    esi,DWORD PTR [ebx+0x8]
  00491824: 2b f1                                           sub    esi,ecx
  00491826: b8 93 24 49 92                                  mov    eax,0x92492493
  0049182b: f7 ee                                           imul   esi
  0049182d: 03 d6                                           add    edx,esi
  0049182f: c1 fa 04                                        sar    edx,0x4
  00491832: 8b ca                                           mov    ecx,edx
  00491834: c1 e9 1f                                        shr    ecx,0x1f
  00491837: 03 d1                                           add    edx,ecx
  00491839: 03 d7                                           add    edx,edi
  0049183b: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049183e: 8b f2                                           mov    esi,edx
  00491840: 8d 14 f5 00 00 00 00                            lea    edx,[esi*8+0x0]
  00491847: 2b d6                                           sub    edx,esi
  00491849: c1 e2 02                                        shl    edx,0x2
  0049184c: 52                                              push   edx
  0049184d: e8 9e 07 fb ff                                  call   0x441ff0
  00491852: 83 c4 04                                        add    esp,0x4
  00491855: 50                                              push   eax
  00491856: 51                                              push   ecx
  00491857: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0049185a: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0049185d: 8d 45 08                                        lea    eax,[ebp+0x8]
  00491860: 8b cc                                           mov    ecx,esp
  00491862: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00491865: 50                                              push   eax
  00491866: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0049186d: e8 5e fe ff ff                                  call   0x4916d0
  00491872: 51                                              push   ecx
  00491873: 8b cc                                           mov    ecx,esp
  00491875: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00491878: 51                                              push   ecx
  00491879: 8b cb                                           mov    ecx,ebx
  0049187b: e8 60 02 00 00                                  call   0x491ae0
  00491880: 8b cb                                           mov    ecx,ebx
  00491882: e8 e9 02 00 00                                  call   0x491b70
  00491887: 8d 55 bc                                        lea    edx,[ebp-0x44]
  0049188a: 52                                              push   edx
  0049188b: 57                                              push   edi
  0049188c: 50                                              push   eax
  0049188d: 8b cb                                           mov    ecx,ebx
  0049188f: e8 7c 02 00 00                                  call   0x491b10
  00491894: 50                                              push   eax
  00491895: 51                                              push   ecx
  00491896: 8b c4                                           mov    eax,esp
  00491898: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0049189b: 50                                              push   eax
  0049189c: 8b cb                                           mov    ecx,ebx
  0049189e: e8 9d fd ff ff                                  call   0x491640
  004918a3: 51                                              push   ecx
  004918a4: 8d 55 08                                        lea    edx,[ebp+0x8]
  004918a7: 8b cc                                           mov    ecx,esp
  004918a9: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004918ac: 52                                              push   edx
  004918ad: e8 1e fe ff ff                                  call   0x4916d0
  004918b2: 8b cb                                           mov    ecx,ebx
  004918b4: e8 b7 02 00 00                                  call   0x491b70
  004918b9: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004918bc: 85 c0                                           test   eax,eax
  004918be: 74 1a                                           je     0x4918da
  004918c0: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004918c3: 3b c1                                           cmp    eax,ecx
  004918c5: 74 07                                           je     0x4918ce
  004918c7: 83 c0 1c                                        add    eax,0x1c
  004918ca: 3b c1                                           cmp    eax,ecx
  004918cc: 75 f9                                           jne    0x4918c7
  004918ce: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004918d1: 50                                              push   eax
  004918d2: e8 89 07 fb ff                                  call   0x442060
  004918d7: 83 c4 04                                        add    esp,0x4
  004918da: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004918dd: 8d 0c f5 00 00 00 00                            lea    ecx,[esi*8+0x0]
  004918e4: 2b ce                                           sub    ecx,esi
  004918e6: 85 c0                                           test   eax,eax
  004918e8: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004918eb: 8d 14 8e                                        lea    edx,[esi+ecx*4]
  004918ee: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004918f1: 75 04                                           jne    0x4918f7
  004918f3: 33 d2                                           xor    edx,edx
  004918f5: eb 18                                           jmp    0x49190f
  004918f7: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004918fa: 2b c8                                           sub    ecx,eax
  004918fc: b8 93 24 49 92                                  mov    eax,0x92492493
  00491901: f7 e9                                           imul   ecx
  00491903: 03 d1                                           add    edx,ecx
  00491905: c1 fa 04                                        sar    edx,0x4
  00491908: 8b c2                                           mov    eax,edx
  0049190a: c1 e8 1f                                        shr    eax,0x1f
  0049190d: 03 d0                                           add    edx,eax
  0049190f: 8d 04 3a                                        lea    eax,[edx+edi*1]
  00491912: 8d 0c c5 00 00 00 00                            lea    ecx,[eax*8+0x0]
  00491919: 2b c8                                           sub    ecx,eax
  0049191b: 8d 14 8e                                        lea    edx,[esi+ecx*4]
  0049191e: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00491921: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00491924: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00491927: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049192e: 5f                                              pop    edi
  0049192f: 5e                                              pop    esi
  00491930: 5b                                              pop    ebx
  00491931: 8b e5                                           mov    esp,ebp
  00491933: 5d                                              pop    ebp
  00491934: c2 0c 00                                        ret    0xc
  0049194c: 8b 73 08                                        mov    esi,DWORD PTR [ebx+0x8]
  0049194f: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00491952: 8b ce                                           mov    ecx,esi
  00491954: 2b ca                                           sub    ecx,edx
  00491956: b8 93 24 49 92                                  mov    eax,0x92492493
  0049195b: f7 e9                                           imul   ecx
  0049195d: 03 d1                                           add    edx,ecx
  0049195f: c1 fa 04                                        sar    edx,0x4
  00491962: 8b ca                                           mov    ecx,edx
  00491964: c1 e9 1f                                        shr    ecx,0x1f
  00491967: 03 d1                                           add    edx,ecx
  00491969: 3b d7                                           cmp    edx,edi
  0049196b: 0f 83 c5 00 00 00                               jae    0x491a36
  00491971: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00491974: 8d 34 fd 00 00 00 00                            lea    esi,[edi*8+0x0]
  0049197b: 2b f7                                           sub    esi,edi
  0049197d: c1 e6 02                                        shl    esi,0x2
  00491980: 8d 04 16                                        lea    eax,[esi+edx*1]
  00491983: 50                                              push   eax
  00491984: 51                                              push   ecx
  00491985: 8b cc                                           mov    ecx,esp
  00491987: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049198a: 51                                              push   ecx
  0049198b: 8b cb                                           mov    ecx,ebx
  0049198d: e8 ae fc ff ff                                  call   0x491640
  00491992: 51                                              push   ecx
  00491993: 8d 55 08                                        lea    edx,[ebp+0x8]
  00491996: 8b cc                                           mov    ecx,esp
  00491998: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049199b: 52                                              push   edx
  0049199c: e8 2f fd ff ff                                  call   0x4916d0
  004919a1: 8b cb                                           mov    ecx,ebx
  004919a3: e8 c8 01 00 00                                  call   0x491b70
  004919a8: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004919ab: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004919ae: 2b ca                                           sub    ecx,edx
  004919b0: 8d 45 bc                                        lea    eax,[ebp-0x44]
  004919b3: 50                                              push   eax
  004919b4: b8 93 24 49 92                                  mov    eax,0x92492493
  004919b9: f7 e9                                           imul   ecx
  004919bb: 03 d1                                           add    edx,ecx
  004919bd: c1 fa 04                                        sar    edx,0x4
  004919c0: 8b ca                                           mov    ecx,edx
  004919c2: c1 e9 1f                                        shr    ecx,0x1f
  004919c5: 03 d1                                           add    edx,ecx
  004919c7: 8b c7                                           mov    eax,edi
  004919c9: 2b c2                                           sub    eax,edx
  004919cb: 50                                              push   eax
  004919cc: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004919cf: 50                                              push   eax
  004919d0: 8b cb                                           mov    ecx,ebx
  004919d2: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  004919d9: e8 32 01 00 00                                  call   0x491b10
  004919de: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004919e1: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004919e4: 51                                              push   ecx
  004919e5: 51                                              push   ecx
  004919e6: 8b d4                                           mov    edx,esp
  004919e8: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004919eb: 03 c6                                           add    eax,esi
  004919ed: 57                                              push   edi
  004919ee: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004919f1: 52                                              push   edx
  004919f2: 8d 45 10                                        lea    eax,[ebp+0x10]
  004919f5: 50                                              push   eax
  004919f6: 8b cb                                           mov    ecx,ebx
  004919f8: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004919ff: e8 3c fc ff ff                                  call   0x491640
  00491a04: 8b c8                                           mov    ecx,eax
  00491a06: e8 45 01 00 00                                  call   0x491b50
  00491a0b: 51                                              push   ecx
  00491a0c: 8b cc                                           mov    ecx,esp
  00491a0e: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00491a11: e9 9d 00 00 00                                  jmp    0x491ab3
  00491a36: 56                                              push   esi
  00491a37: 51                                              push   ecx
  00491a38: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00491a3b: 8b cc                                           mov    ecx,esp
  00491a3d: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00491a40: 52                                              push   edx
  00491a41: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  00491a44: e8 87 fc ff ff                                  call   0x4916d0
  00491a49: 51                                              push   ecx
  00491a4a: 8b c4                                           mov    eax,esp
  00491a4c: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00491a4f: 57                                              push   edi
  00491a50: 50                                              push   eax
  00491a51: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00491a54: e8 f7 00 00 00                                  call   0x491b50
  00491a59: 8b cb                                           mov    ecx,ebx
  00491a5b: e8 10 01 00 00                                  call   0x491b70
  00491a60: 51                                              push   ecx
  00491a61: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00491a64: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00491a67: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00491a6a: 8b c4                                           mov    eax,esp
  00491a6c: 51                                              push   ecx
  00491a6d: 8b d4                                           mov    edx,esp
  00491a6f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00491a72: 57                                              push   edi
  00491a73: 89 08                                           mov    DWORD PTR [eax],ecx
  00491a75: 52                                              push   edx
  00491a76: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00491a79: e8 d2 00 00 00                                  call   0x491b50
  00491a7e: 51                                              push   ecx
  00491a7f: 8d 45 08                                        lea    eax,[ebp+0x8]
  00491a82: 8b cc                                           mov    ecx,esp
  00491a84: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00491a87: 50                                              push   eax
  00491a88: e8 43 fc ff ff                                  call   0x4916d0
  00491a8d: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00491a90: 51                                              push   ecx
  00491a91: e8 4a 01 00 00                                  call   0x491be0
  00491a96: 83 c4 10                                        add    esp,0x10
  00491a99: 8d 55 bc                                        lea    edx,[ebp-0x44]
  00491a9c: 52                                              push   edx
  00491a9d: 51                                              push   ecx
  00491a9e: 8b c4                                           mov    eax,esp
  00491aa0: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00491aa3: 57                                              push   edi
  00491aa4: 50                                              push   eax
  00491aa5: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00491aa8: e8 43 00 00 00                                  call   0x491af0
  00491aad: 51                                              push   ecx
  00491aae: 8b cc                                           mov    ecx,esp
  00491ab0: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00491ab3: 8d 55 08                                        lea    edx,[ebp+0x8]
  00491ab6: 52                                              push   edx
  00491ab7: e8 14 fc ff ff                                  call   0x4916d0
  00491abc: e8 ef 00 00 00                                  call   0x491bb0
  00491ac1: 83 c4 0c                                        add    esp,0xc
  00491ac4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00491ac7: 5f                                              pop    edi
  00491ac8: 5e                                              pop    esi
  00491ac9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00491ad0: 5b                                              pop    ebx
  00491ad1: 8b e5                                           mov    esp,ebp
  00491ad3: 5d                                              pop    ebp
  00491ad4: c2 0c 00                                        ret    0xc
  00492550: 55                                              push   ebp
  00492551: 8b ec                                           mov    ebp,esp
  00492553: 8b c1                                           mov    eax,ecx
  00492555: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00492558: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049255a: 89 10                                           mov    DWORD PTR [eax],edx
  0049255c: 5d                                              pop    ebp
  0049255d: c2 04 00                                        ret    0x4
  004925e0: 55                                              push   ebp
  004925e1: 8b ec                                           mov    ebp,esp
  004925e3: 6a ff                                           push   0xffffffff
  004925e5: 68 39 aa 4d 00                                  push   0x4daa39
  004925ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004925f0: 50                                              push   eax
  004925f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004925f8: 83 ec 40                                        sub    esp,0x40
  004925fb: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004925fe: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00492601: 53                                              push   ebx
  00492602: 56                                              push   esi
  00492603: 8b f1                                           mov    esi,ecx
  00492605: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00492607: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049260a: 85 c0                                           test   eax,eax
  0049260c: 57                                              push   edi
  0049260d: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00492610: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  00492613: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  00492616: 75 04                                           jne    0x49261c
  00492618: 33 db                                           xor    ebx,ebx
  0049261a: eb 08                                           jmp    0x492624
  0049261c: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  0049261f: 2b d8                                           sub    ebx,eax
  00492621: c1 fb 03                                        sar    ebx,0x3
  00492624: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00492627: 85 ff                                           test   edi,edi
  00492629: 0f 84 ea 02 00 00                               je     0x492919
  0049262f: 85 c0                                           test   eax,eax
  00492631: 75 04                                           jne    0x492637
  00492633: 33 c9                                           xor    ecx,ecx
  00492635: eb 08                                           jmp    0x49263f
  00492637: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049263a: 2b c8                                           sub    ecx,eax
  0049263c: c1 f9 03                                        sar    ecx,0x3
  0049263f: ba ff ff ff 1f                                  mov    edx,0x1fffffff
  00492644: 2b d1                                           sub    edx,ecx
  00492646: 3b d7                                           cmp    edx,edi
  00492648: 73 2f                                           jae    0x492679
  0049264a: 68 80 05 50 00                                  push   0x500580
  0049264f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00492652: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00492658: 8d 45 d0                                        lea    eax,[ebp-0x30]
  0049265b: 50                                              push   eax
  0049265c: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  0049265f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00492666: e8 b5 2d f7 ff                                  call   0x405420
  0049266b: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00492670: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  00492673: 51                                              push   ecx
  00492674: e8 dd f6 03 00                                  call   0x4d1d56
  00492679: 85 c0                                           test   eax,eax
  0049267b: 75 04                                           jne    0x492681
  0049267d: 33 c9                                           xor    ecx,ecx
  0049267f: eb 08                                           jmp    0x492689
  00492681: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00492684: 2b c8                                           sub    ecx,eax
  00492686: c1 f9 03                                        sar    ecx,0x3
  00492689: 03 cf                                           add    ecx,edi
  0049268b: 3b d9                                           cmp    ebx,ecx
  0049268d: 0f 83 3e 01 00 00                               jae    0x4927d1
  00492693: 8b cb                                           mov    ecx,ebx
  00492695: d1 e9                                           shr    ecx,1
  00492697: ba ff ff ff 1f                                  mov    edx,0x1fffffff
  0049269c: 2b d1                                           sub    edx,ecx
  0049269e: 3b d3                                           cmp    edx,ebx
  004926a0: 73 04                                           jae    0x4926a6
  004926a2: 33 db                                           xor    ebx,ebx
  004926a4: eb 02                                           jmp    0x4926a8
  004926a6: 03 d9                                           add    ebx,ecx
  004926a8: 85 c0                                           test   eax,eax
  004926aa: 75 04                                           jne    0x4926b0
  004926ac: 33 c9                                           xor    ecx,ecx
  004926ae: eb 08                                           jmp    0x4926b8
  004926b0: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004926b3: 2b c8                                           sub    ecx,eax
  004926b5: c1 f9 03                                        sar    ecx,0x3
  004926b8: 03 cf                                           add    ecx,edi
  004926ba: 3b d9                                           cmp    ebx,ecx
  004926bc: 73 13                                           jae    0x4926d1
  004926be: 85 c0                                           test   eax,eax
  004926c0: 75 04                                           jne    0x4926c6
  004926c2: 33 c9                                           xor    ecx,ecx
  004926c4: eb 08                                           jmp    0x4926ce
  004926c6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004926c9: 2b c8                                           sub    ecx,eax
  004926cb: c1 f9 03                                        sar    ecx,0x3
  004926ce: 8d 1c 39                                        lea    ebx,[ecx+edi*1]
  004926d1: 8d 04 dd 00 00 00 00                            lea    eax,[ebx*8+0x0]
  004926d8: 50                                              push   eax
  004926d9: e8 12 f9 fa ff                                  call   0x441ff0
  004926de: 83 c4 04                                        add    esp,0x4
  004926e1: 50                                              push   eax
  004926e2: 51                                              push   ecx
  004926e3: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004926e6: 8d 55 08                                        lea    edx,[ebp+0x8]
  004926e9: 8b cc                                           mov    ecx,esp
  004926eb: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004926ee: 52                                              push   edx
  004926ef: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004926f2: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004926f9: e8 52 fe ff ff                                  call   0x492550
  004926fe: 51                                              push   ecx
  004926ff: 8b c4                                           mov    eax,esp
  00492701: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00492704: 50                                              push   eax
  00492705: 8b ce                                           mov    ecx,esi
  00492707: e8 24 02 00 00                                  call   0x492930
  0049270c: 8b ce                                           mov    ecx,esi
  0049270e: e8 6d 08 00 00                                  call   0x492f80
  00492713: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00492716: 51                                              push   ecx
  00492717: 57                                              push   edi
  00492718: 50                                              push   eax
  00492719: 8b ce                                           mov    ecx,esi
  0049271b: e8 f0 06 00 00                                  call   0x492e10
  00492720: 50                                              push   eax
  00492721: 51                                              push   ecx
  00492722: 8b d4                                           mov    edx,esp
  00492724: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00492727: 52                                              push   edx
  00492728: 8b ce                                           mov    ecx,esi
  0049272a: e8 b1 fd ff ff                                  call   0x4924e0
  0049272f: 51                                              push   ecx
  00492730: 8d 45 08                                        lea    eax,[ebp+0x8]
  00492733: 8b cc                                           mov    ecx,esp
  00492735: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00492738: 50                                              push   eax
  00492739: e8 12 fe ff ff                                  call   0x492550
  0049273e: 8b ce                                           mov    ecx,esi
  00492740: e8 3b 08 00 00                                  call   0x492f80
  00492745: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00492748: 85 c0                                           test   eax,eax
  0049274a: 74 1a                                           je     0x492766
  0049274c: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049274f: 3b c1                                           cmp    eax,ecx
  00492751: 74 07                                           je     0x49275a
  00492753: 83 c0 08                                        add    eax,0x8
  00492756: 3b c1                                           cmp    eax,ecx
  00492758: 75 f9                                           jne    0x492753
  0049275a: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049275d: 51                                              push   ecx
  0049275e: e8 fd f8 fa ff                                  call   0x442060
  00492763: 83 c4 04                                        add    esp,0x4
  00492766: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00492769: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049276c: 85 c9                                           test   ecx,ecx
  0049276e: 8d 04 da                                        lea    eax,[edx+ebx*8]
  00492771: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00492774: 75 20                                           jne    0x492796
  00492776: 33 c0                                           xor    eax,eax
  00492778: 8b c7                                           mov    eax,edi
  0049277a: 8d 0c c2                                        lea    ecx,[edx+eax*8]
  0049277d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00492780: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00492783: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00492786: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049278d: 5f                                              pop    edi
  0049278e: 5e                                              pop    esi
  0049278f: 5b                                              pop    ebx
  00492790: 8b e5                                           mov    esp,ebp
  00492792: 5d                                              pop    ebp
  00492793: c2 0c 00                                        ret    0xc
  00492796: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00492799: 2b c1                                           sub    eax,ecx
  0049279b: c1 f8 03                                        sar    eax,0x3
  0049279e: 03 c7                                           add    eax,edi
  004927a0: 8d 0c c2                                        lea    ecx,[edx+eax*8]
  004927a3: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004927a6: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004927a9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004927ac: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004927b3: 5f                                              pop    edi
  004927b4: 5e                                              pop    esi
  004927b5: 5b                                              pop    ebx
  004927b6: 8b e5                                           mov    esp,ebp
  004927b8: 5d                                              pop    ebp
  004927b9: c2 0c 00                                        ret    0xc
  004927d1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004927d4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004927d7: 8b d0                                           mov    edx,eax
  004927d9: 2b d1                                           sub    edx,ecx
  004927db: c1 fa 03                                        sar    edx,0x3
  004927de: 3b d7                                           cmp    edx,edi
  004927e0: 0f 83 a5 00 00 00                               jae    0x49288b
  004927e6: 8d 1c fd 00 00 00 00                            lea    ebx,[edi*8+0x0]
  004927ed: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  004927f0: 50                                              push   eax
  004927f1: 51                                              push   ecx
  004927f2: 8b cc                                           mov    ecx,esp
  004927f4: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004927f7: 51                                              push   ecx
  004927f8: 8b ce                                           mov    ecx,esi
  004927fa: e8 e1 fc ff ff                                  call   0x4924e0
  004927ff: 51                                              push   ecx
  00492800: 8d 55 08                                        lea    edx,[ebp+0x8]
  00492803: 8b cc                                           mov    ecx,esp
  00492805: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492808: 52                                              push   edx
  00492809: e8 42 fd ff ff                                  call   0x492550
  0049280e: 8b ce                                           mov    ecx,esi
  00492810: e8 6b 07 00 00                                  call   0x492f80
  00492815: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00492818: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0049281b: 51                                              push   ecx
  0049281c: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049281f: 8b d0                                           mov    edx,eax
  00492821: 2b d1                                           sub    edx,ecx
  00492823: c1 fa 03                                        sar    edx,0x3
  00492826: 8b cf                                           mov    ecx,edi
  00492828: 2b ca                                           sub    ecx,edx
  0049282a: 51                                              push   ecx
  0049282b: 50                                              push   eax
  0049282c: 8b ce                                           mov    ecx,esi
  0049282e: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00492835: e8 d6 05 00 00                                  call   0x492e10
  0049283a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049283d: 03 cb                                           add    ecx,ebx
  0049283f: 8d 55 e0                                        lea    edx,[ebp-0x20]
  00492842: 52                                              push   edx
  00492843: 51                                              push   ecx
  00492844: 8b c4                                           mov    eax,esp
  00492846: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492849: 57                                              push   edi
  0049284a: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0049284d: 50                                              push   eax
  0049284e: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00492851: 51                                              push   ecx
  00492852: 8b ce                                           mov    ecx,esi
  00492854: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0049285b: e8 80 fc ff ff                                  call   0x4924e0
  00492860: 8b c8                                           mov    ecx,eax
  00492862: e8 e9 05 00 00                                  call   0x492e50
  00492867: 51                                              push   ecx
  00492868: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049286b: 8b cc                                           mov    ecx,esp
  0049286d: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00492870: 52                                              push   edx
  00492871: e9 96 00 00 00                                  jmp    0x49290c
  0049288b: 50                                              push   eax
  0049288c: 51                                              push   ecx
  0049288d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00492890: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00492893: 8b cc                                           mov    ecx,esp
  00492895: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492898: 50                                              push   eax
  00492899: e8 b2 fc ff ff                                  call   0x492550
  0049289e: 51                                              push   ecx
  0049289f: 8b cc                                           mov    ecx,esp
  004928a1: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004928a4: 57                                              push   edi
  004928a5: 51                                              push   ecx
  004928a6: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004928a9: e8 a2 05 00 00                                  call   0x492e50
  004928ae: 8b ce                                           mov    ecx,esi
  004928b0: e8 cb 06 00 00                                  call   0x492f80
  004928b5: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004928b8: 51                                              push   ecx
  004928b9: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004928bc: 8b c4                                           mov    eax,esp
  004928be: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004928c1: 51                                              push   ecx
  004928c2: 89 10                                           mov    DWORD PTR [eax],edx
  004928c4: 8b c4                                           mov    eax,esp
  004928c6: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004928c9: 57                                              push   edi
  004928ca: 50                                              push   eax
  004928cb: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004928ce: e8 7d 05 00 00                                  call   0x492e50
  004928d3: 51                                              push   ecx
  004928d4: 8d 55 08                                        lea    edx,[ebp+0x8]
  004928d7: 8b cc                                           mov    ecx,esp
  004928d9: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004928dc: 52                                              push   edx
  004928dd: e8 6e fc ff ff                                  call   0x492550
  004928e2: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004928e5: 50                                              push   eax
  004928e6: e8 05 07 00 00                                  call   0x492ff0
  004928eb: 83 c4 10                                        add    esp,0x10
  004928ee: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004928f1: 51                                              push   ecx
  004928f2: 51                                              push   ecx
  004928f3: 8b d4                                           mov    edx,esp
  004928f5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004928f8: 57                                              push   edi
  004928f9: 52                                              push   edx
  004928fa: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004928fd: e8 3e 00 00 00                                  call   0x492940
  00492902: 51                                              push   ecx
  00492903: 8d 45 08                                        lea    eax,[ebp+0x8]
  00492906: 8b cc                                           mov    ecx,esp
  00492908: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049290b: 50                                              push   eax
  0049290c: e8 3f fc ff ff                                  call   0x492550
  00492911: e8 aa 06 00 00                                  call   0x492fc0
  00492916: 83 c4 0c                                        add    esp,0xc
  00492919: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049291c: 5f                                              pop    edi
  0049291d: 5e                                              pop    esi
  0049291e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00492925: 5b                                              pop    ebx
  00492926: 8b e5                                           mov    esp,ebp
  00492928: 5d                                              pop    ebp
  00492929: c2 0c 00                                        ret    0xc
  00492960: 55                                              push   ebp
  00492961: 8b ec                                           mov    ebp,esp
  00492963: 6a ff                                           push   0xffffffff
  00492965: 68 61 aa 4d 00                                  push   0x4daa61
  0049296a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00492970: 50                                              push   eax
  00492971: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00492978: 83 ec 4c                                        sub    esp,0x4c
  0049297b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049297e: 66 8b 50 02                                     mov    dx,WORD PTR [eax+0x2]
  00492982: 53                                              push   ebx
  00492983: 56                                              push   esi
  00492984: 8b f1                                           mov    esi,ecx
  00492986: 8a 08                                           mov    cl,BYTE PTR [eax]
  00492988: 57                                              push   edi
  00492989: 83 c0 04                                        add    eax,0x4
  0049298c: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049298f: 88 4d c4                                        mov    BYTE PTR [ebp-0x3c],cl
  00492992: 50                                              push   eax
  00492993: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00492996: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00492999: 66 89 55 c6                                     mov    WORD PTR [ebp-0x3a],dx
  0049299d: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004929a3: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004929a6: 33 ff                                           xor    edi,edi
  004929a8: 3b cf                                           cmp    ecx,edi
  004929aa: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004929ad: 74 1b                                           je     0x4929ca
  004929af: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004929b2: 2b d1                                           sub    edx,ecx
  004929b4: b8 67 66 66 66                                  mov    eax,0x66666667
  004929b9: f7 ea                                           imul   edx
  004929bb: c1 fa 03                                        sar    edx,0x3
  004929be: 8b c2                                           mov    eax,edx
  004929c0: c1 e8 1f                                        shr    eax,0x1f
  004929c3: 03 d0                                           add    edx,eax
  004929c5: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004929c8: 8b fa                                           mov    edi,edx
  004929ca: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004929cd: 85 db                                           test   ebx,ebx
  004929cf: 0f 84 a7 03 00 00                               je     0x492d7c
  004929d5: 85 c9                                           test   ecx,ecx
  004929d7: 75 04                                           jne    0x4929dd
  004929d9: 33 d2                                           xor    edx,edx
  004929db: eb 16                                           jmp    0x4929f3
  004929dd: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004929e0: 2b d1                                           sub    edx,ecx
  004929e2: b8 67 66 66 66                                  mov    eax,0x66666667
  004929e7: f7 ea                                           imul   edx
  004929e9: c1 fa 03                                        sar    edx,0x3
  004929ec: 8b c2                                           mov    eax,edx
  004929ee: c1 e8 1f                                        shr    eax,0x1f
  004929f1: 03 d0                                           add    edx,eax
  004929f3: b8 cc cc cc 0c                                  mov    eax,0xccccccc
  004929f8: 2b c2                                           sub    eax,edx
  004929fa: 3b c3                                           cmp    eax,ebx
  004929fc: 73 2c                                           jae    0x492a2a
  004929fe: 68 80 05 50 00                                  push   0x500580
  00492a03: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00492a06: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00492a0c: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00492a0f: 51                                              push   ecx
  00492a10: 8d 4d a8                                        lea    ecx,[ebp-0x58]
  00492a13: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00492a17: e8 04 2a f7 ff                                  call   0x405420
  00492a1c: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00492a21: 8d 55 a8                                        lea    edx,[ebp-0x58]
  00492a24: 52                                              push   edx
  00492a25: e8 2c f3 03 00                                  call   0x4d1d56
  00492a2a: 85 c9                                           test   ecx,ecx
  00492a2c: 75 04                                           jne    0x492a32
  00492a2e: 33 d2                                           xor    edx,edx
  00492a30: eb 16                                           jmp    0x492a48
  00492a32: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00492a35: 2b d1                                           sub    edx,ecx
  00492a37: b8 67 66 66 66                                  mov    eax,0x66666667
  00492a3c: f7 ea                                           imul   edx
  00492a3e: c1 fa 03                                        sar    edx,0x3
  00492a41: 8b c2                                           mov    eax,edx
  00492a43: c1 e8 1f                                        shr    eax,0x1f
  00492a46: 03 d0                                           add    edx,eax
  00492a48: 03 d3                                           add    edx,ebx
  00492a4a: 3b fa                                           cmp    edi,edx
  00492a4c: 0f 83 a0 01 00 00                               jae    0x492bf2
  00492a52: 8b c7                                           mov    eax,edi
  00492a54: d1 e8                                           shr    eax,1
  00492a56: ba cc cc cc 0c                                  mov    edx,0xccccccc
  00492a5b: 2b d0                                           sub    edx,eax
  00492a5d: 3b d7                                           cmp    edx,edi
  00492a5f: 73 0c                                           jae    0x492a6d
  00492a61: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  00492a68: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00492a6b: eb 05                                           jmp    0x492a72
  00492a6d: 03 f8                                           add    edi,eax
  00492a6f: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  00492a72: 85 c9                                           test   ecx,ecx
  00492a74: 75 04                                           jne    0x492a7a
  00492a76: 33 d2                                           xor    edx,edx
  00492a78: eb 16                                           jmp    0x492a90
  00492a7a: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00492a7d: 2b d1                                           sub    edx,ecx
  00492a7f: b8 67 66 66 66                                  mov    eax,0x66666667
  00492a84: f7 ea                                           imul   edx
  00492a86: c1 fa 03                                        sar    edx,0x3
  00492a89: 8b c2                                           mov    eax,edx
  00492a8b: c1 e8 1f                                        shr    eax,0x1f
  00492a8e: 03 d0                                           add    edx,eax
  00492a90: 03 d3                                           add    edx,ebx
  00492a92: 3b fa                                           cmp    edi,edx
  00492a94: 73 25                                           jae    0x492abb
  00492a96: 85 c9                                           test   ecx,ecx
  00492a98: 75 04                                           jne    0x492a9e
  00492a9a: 33 d2                                           xor    edx,edx
  00492a9c: eb 16                                           jmp    0x492ab4
  00492a9e: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00492aa1: 2b d1                                           sub    edx,ecx
  00492aa3: b8 67 66 66 66                                  mov    eax,0x66666667
  00492aa8: f7 ea                                           imul   edx
  00492aaa: c1 fa 03                                        sar    edx,0x3
  00492aad: 8b ca                                           mov    ecx,edx
  00492aaf: c1 e9 1f                                        shr    ecx,0x1f
  00492ab2: 03 d1                                           add    edx,ecx
  00492ab4: 03 d3                                           add    edx,ebx
  00492ab6: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  00492ab9: 8b fa                                           mov    edi,edx
  00492abb: 8d 14 bf                                        lea    edx,[edi+edi*4]
  00492abe: c1 e2 02                                        shl    edx,0x2
  00492ac1: 52                                              push   edx
  00492ac2: e8 29 f5 fa ff                                  call   0x441ff0
  00492ac7: 8b f8                                           mov    edi,eax
  00492ac9: 83 c4 04                                        add    esp,0x4
  00492acc: 57                                              push   edi
  00492acd: 51                                              push   ecx
  00492ace: 8d 45 08                                        lea    eax,[ebp+0x8]
  00492ad1: 8b cc                                           mov    ecx,esp
  00492ad3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00492ad6: 50                                              push   eax
  00492ad7: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  00492ada: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  00492add: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00492ae1: e8 1a 03 00 00                                  call   0x492e00
  00492ae6: 51                                              push   ecx
  00492ae7: 8b cc                                           mov    ecx,esp
  00492ae9: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00492aec: 51                                              push   ecx
  00492aed: 8b ce                                           mov    ecx,esi
  00492aef: e8 dc 02 00 00                                  call   0x492dd0
  00492af4: 8b ce                                           mov    ecx,esi
  00492af6: e8 35 05 00 00                                  call   0x493030
  00492afb: 8d 55 c4                                        lea    edx,[ebp-0x3c]
  00492afe: 52                                              push   edx
  00492aff: 53                                              push   ebx
  00492b00: 50                                              push   eax
  00492b01: 8b ce                                           mov    ecx,esi
  00492b03: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00492b06: e8 65 03 00 00                                  call   0x492e70
  00492b0b: 50                                              push   eax
  00492b0c: 51                                              push   ecx
  00492b0d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00492b10: 8b c4                                           mov    eax,esp
  00492b12: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00492b15: 50                                              push   eax
  00492b16: 8b ce                                           mov    ecx,esi
  00492b18: e8 43 fa ff ff                                  call   0x492560
  00492b1d: 51                                              push   ecx
  00492b1e: 8d 55 08                                        lea    edx,[ebp+0x8]
  00492b21: 8b cc                                           mov    ecx,esp
  00492b23: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00492b26: 52                                              push   edx
  00492b27: e8 d4 02 00 00                                  call   0x492e00
  00492b2c: 8b ce                                           mov    ecx,esi
  00492b2e: e8 fd 04 00 00                                  call   0x493030
  00492b33: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00492b36: 85 c0                                           test   eax,eax
  00492b38: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00492b3f: 74 30                                           je     0x492b71
  00492b41: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00492b44: 8b f8                                           mov    edi,eax
  00492b46: 3b f9                                           cmp    edi,ecx
  00492b48: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00492b4b: 74 15                                           je     0x492b62
  00492b4d: 6a 01                                           push   0x1
  00492b4f: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00492b52: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00492b58: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00492b5b: 83 c7 14                                        add    edi,0x14
  00492b5e: 3b f8                                           cmp    edi,eax
  00492b60: 75 eb                                           jne    0x492b4d
  00492b62: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00492b65: 50                                              push   eax
  00492b66: e8 f5 f4 fa ff                                  call   0x442060
  00492b6b: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  00492b6e: 83 c4 04                                        add    esp,0x4
  00492b71: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00492b74: 8d 0c 80                                        lea    ecx,[eax+eax*4]
  00492b77: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00492b7a: 85 c0                                           test   eax,eax
  00492b7c: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  00492b7f: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  00492b82: 75 15                                           jne    0x492b99
  00492b84: 33 d2                                           xor    edx,edx
  00492b86: 03 da                                           add    ebx,edx
  00492b88: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  00492b8b: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  00492b8e: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00492b91: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00492b94: e9 e3 01 00 00                                  jmp    0x492d7c
  00492b99: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00492b9c: 2b c8                                           sub    ecx,eax
  00492b9e: b8 67 66 66 66                                  mov    eax,0x66666667
  00492ba3: f7 e9                                           imul   ecx
  00492ba5: c1 fa 03                                        sar    edx,0x3
  00492ba8: 8b c2                                           mov    eax,edx
  00492baa: c1 e8 1f                                        shr    eax,0x1f
  00492bad: 03 d0                                           add    edx,eax
  00492baf: 03 da                                           add    ebx,edx
  00492bb1: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  00492bb4: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  00492bb7: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00492bba: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00492bbd: e9 ba 01 00 00                                  jmp    0x492d7c
  00492bf2: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  00492bf5: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00492bf8: 8b cf                                           mov    ecx,edi
  00492bfa: 2b ca                                           sub    ecx,edx
  00492bfc: b8 67 66 66 66                                  mov    eax,0x66666667
  00492c01: f7 e9                                           imul   ecx
  00492c03: c1 fa 03                                        sar    edx,0x3
  00492c06: 8b c2                                           mov    eax,edx
  00492c08: c1 e8 1f                                        shr    eax,0x1f
  00492c0b: 03 d0                                           add    edx,eax
  00492c0d: 3b d3                                           cmp    edx,ebx
  00492c0f: 0f 83 d9 00 00 00                               jae    0x492cee
  00492c15: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00492c18: 8d 3c 9b                                        lea    edi,[ebx+ebx*4]
  00492c1b: c1 e7 02                                        shl    edi,0x2
  00492c1e: 8d 14 0f                                        lea    edx,[edi+ecx*1]
  00492c21: 52                                              push   edx
  00492c22: 51                                              push   ecx
  00492c23: 8b c4                                           mov    eax,esp
  00492c25: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492c28: 50                                              push   eax
  00492c29: 8b ce                                           mov    ecx,esi
  00492c2b: e8 30 f9 ff ff                                  call   0x492560
  00492c30: 51                                              push   ecx
  00492c31: 8d 55 08                                        lea    edx,[ebp+0x8]
  00492c34: 8b cc                                           mov    ecx,esp
  00492c36: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492c39: 52                                              push   edx
  00492c3a: e8 c1 01 00 00                                  call   0x492e00
  00492c3f: 8b ce                                           mov    ecx,esi
  00492c41: e8 ea 03 00 00                                  call   0x493030
  00492c46: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00492c49: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00492c4c: 2b ca                                           sub    ecx,edx
  00492c4e: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  00492c51: 50                                              push   eax
  00492c52: b8 67 66 66 66                                  mov    eax,0x66666667
  00492c57: f7 e9                                           imul   ecx
  00492c59: c1 fa 03                                        sar    edx,0x3
  00492c5c: 8b ca                                           mov    ecx,edx
  00492c5e: c1 e9 1f                                        shr    ecx,0x1f
  00492c61: 03 d1                                           add    edx,ecx
  00492c63: 8b c3                                           mov    eax,ebx
  00492c65: 2b c2                                           sub    eax,edx
  00492c67: 50                                              push   eax
  00492c68: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00492c6b: 50                                              push   eax
  00492c6c: 8b ce                                           mov    ecx,esi
  00492c6e: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00492c72: e8 f9 01 00 00                                  call   0x492e70
  00492c77: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00492c7a: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00492c7d: 51                                              push   ecx
  00492c7e: 51                                              push   ecx
  00492c7f: 8b d4                                           mov    edx,esp
  00492c81: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  00492c84: 03 c7                                           add    eax,edi
  00492c86: 53                                              push   ebx
  00492c87: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00492c8a: 52                                              push   edx
  00492c8b: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00492c8e: 50                                              push   eax
  00492c8f: 8b ce                                           mov    ecx,esi
  00492c91: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00492c98: e8 c3 f8 ff ff                                  call   0x492560
  00492c9d: 8b c8                                           mov    ecx,eax
  00492c9f: e8 bc 02 00 00                                  call   0x492f60
  00492ca4: 51                                              push   ecx
  00492ca5: 8d 55 08                                        lea    edx,[ebp+0x8]
  00492ca8: 8b cc                                           mov    ecx,esp
  00492caa: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492cad: 52                                              push   edx
  00492cae: e9 bc 00 00 00                                  jmp    0x492d6f
  00492cee: 57                                              push   edi
  00492cef: 51                                              push   ecx
  00492cf0: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00492cf3: 8b cc                                           mov    ecx,esp
  00492cf5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492cf8: 50                                              push   eax
  00492cf9: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  00492cfc: e8 ff 00 00 00                                  call   0x492e00
  00492d01: 51                                              push   ecx
  00492d02: 8b cc                                           mov    ecx,esp
  00492d04: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492d07: 53                                              push   ebx
  00492d08: 51                                              push   ecx
  00492d09: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00492d0c: e8 4f 02 00 00                                  call   0x492f60
  00492d11: 8b ce                                           mov    ecx,esi
  00492d13: e8 18 03 00 00                                  call   0x493030
  00492d18: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00492d1b: 51                                              push   ecx
  00492d1c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00492d1f: 8b c4                                           mov    eax,esp
  00492d21: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492d24: 51                                              push   ecx
  00492d25: 89 10                                           mov    DWORD PTR [eax],edx
  00492d27: 8b c4                                           mov    eax,esp
  00492d29: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492d2c: 53                                              push   ebx
  00492d2d: 50                                              push   eax
  00492d2e: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00492d31: e8 2a 02 00 00                                  call   0x492f60
  00492d36: 51                                              push   ecx
  00492d37: 8d 55 08                                        lea    edx,[ebp+0x8]
  00492d3a: 8b cc                                           mov    ecx,esp
  00492d3c: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492d3f: 52                                              push   edx
  00492d40: e8 bb 00 00 00                                  call   0x492e00
  00492d45: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00492d48: 50                                              push   eax
  00492d49: e8 52 05 00 00                                  call   0x4932a0
  00492d4e: 83 c4 10                                        add    esp,0x10
  00492d51: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00492d54: 51                                              push   ecx
  00492d55: 51                                              push   ecx
  00492d56: 8b d4                                           mov    edx,esp
  00492d58: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492d5b: 53                                              push   ebx
  00492d5c: 52                                              push   edx
  00492d5d: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00492d60: e8 7b 00 00 00                                  call   0x492de0
  00492d65: 51                                              push   ecx
  00492d66: 8d 45 08                                        lea    eax,[ebp+0x8]
  00492d69: 8b cc                                           mov    ecx,esp
  00492d6b: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00492d6e: 50                                              push   eax
  00492d6f: e8 8c 00 00 00                                  call   0x492e00
  00492d74: e8 a7 03 00 00                                  call   0x493120
  00492d79: 83 c4 0c                                        add    esp,0xc
  00492d7c: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  00492d7f: 85 c0                                           test   eax,eax
  00492d81: 74 2d                                           je     0x492db0
  00492d83: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00492d86: 8a 01                                           mov    al,BYTE PTR [ecx]
  00492d88: 84 c0                                           test   al,al
  00492d8a: 74 1b                                           je     0x492da7
  00492d8c: 3c ff                                           cmp    al,0xff
  00492d8e: 74 17                                           je     0x492da7
  00492d90: fe c8                                           dec    al
  00492d92: 88 01                                           mov    BYTE PTR [ecx],al
  00492d94: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00492d97: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00492d9e: 5f                                              pop    edi
  00492d9f: 5e                                              pop    esi
  00492da0: 5b                                              pop    ebx
  00492da1: 8b e5                                           mov    esp,ebp
  00492da3: 5d                                              pop    ebp
  00492da4: c2 0c 00                                        ret    0xc
  00492da7: 51                                              push   ecx
  00492da8: e8 b3 f2 fa ff                                  call   0x442060
  00492dad: 83 c4 04                                        add    esp,0x4
  00492db0: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00492db3: 5f                                              pop    edi
  00492db4: 5e                                              pop    esi
  00492db5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00492dbc: 5b                                              pop    ebx
  00492dbd: 8b e5                                           mov    esp,ebp
  00492dbf: 5d                                              pop    ebp
  00492dc0: c2 0c 00                                        ret    0xc
  00492e00: 55                                              push   ebp
  00492e01: 8b ec                                           mov    ebp,esp
  00492e03: 8b c1                                           mov    eax,ecx
  00492e05: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00492e08: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00492e0a: 89 10                                           mov    DWORD PTR [eax],edx
  00492e0c: 5d                                              pop    ebp
  00492e0d: c2 04 00                                        ret    0x4
  00494190: 56                                              push   esi
  00494191: 8b f1                                           mov    esi,ecx
  00494193: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00494196: 85 c0                                           test   eax,eax
  00494198: 74 1c                                           je     0x4941b6
  0049419a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0049419d: 8a 01                                           mov    al,BYTE PTR [ecx]
  0049419f: 84 c0                                           test   al,al
  004941a1: 74 0a                                           je     0x4941ad
  004941a3: 3c ff                                           cmp    al,0xff
  004941a5: 74 06                                           je     0x4941ad
  004941a7: fe c8                                           dec    al
  004941a9: 88 01                                           mov    BYTE PTR [ecx],al
  004941ab: eb 09                                           jmp    0x4941b6
  004941ad: 51                                              push   ecx
  004941ae: e8 ad de fa ff                                  call   0x442060
  004941b3: 83 c4 04                                        add    esp,0x4
  004941b6: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004941bd: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004941c4: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004941cb: 5e                                              pop    esi
  004941cc: c3                                              ret
  00495410: 55                                              push   ebp
  00495411: 8b ec                                           mov    ebp,esp
  00495413: 8b c1                                           mov    eax,ecx
  00495415: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00495418: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049541a: 89 10                                           mov    DWORD PTR [eax],edx
  0049541c: 5d                                              pop    ebp
  0049541d: c2 04 00                                        ret    0x4
  004955d0: 55                                              push   ebp
  004955d1: 8b ec                                           mov    ebp,esp
  004955d3: 8b c1                                           mov    eax,ecx
  004955d5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004955d8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004955da: 89 10                                           mov    DWORD PTR [eax],edx
  004955dc: 5d                                              pop    ebp
  004955dd: c2 04 00                                        ret    0x4
  00495660: 55                                              push   ebp
  00495661: 8b ec                                           mov    ebp,esp
  00495663: 8b c1                                           mov    eax,ecx
  00495665: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00495668: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049566a: 89 10                                           mov    DWORD PTR [eax],edx
  0049566c: 5d                                              pop    ebp
  0049566d: c2 04 00                                        ret    0x4
  00495730: 55                                              push   ebp
  00495731: 8b ec                                           mov    ebp,esp
  00495733: 6a ff                                           push   0xffffffff
  00495735: 68 21 ac 4d 00                                  push   0x4dac21
  0049573a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00495740: 50                                              push   eax
  00495741: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00495748: 83 ec 5c                                        sub    esp,0x5c
  0049574b: 53                                              push   ebx
  0049574c: 56                                              push   esi
  0049574d: 57                                              push   edi
  0049574e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00495751: 8b f1                                           mov    esi,ecx
  00495753: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00495756: 57                                              push   edi
  00495757: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  0049575a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049575d: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  00495763: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  00495766: 8b 4f 14                                        mov    ecx,DWORD PTR [edi+0x14]
  00495769: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  0049576c: 89 45 a8                                        mov    DWORD PTR [ebp-0x58],eax
  0049576f: 8b 47 1c                                        mov    eax,DWORD PTR [edi+0x1c]
  00495772: 89 4d ac                                        mov    DWORD PTR [ebp-0x54],ecx
  00495775: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00495778: 89 55 b0                                        mov    DWORD PTR [ebp-0x50],edx
  0049577b: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0049577e: 89 4d b8                                        mov    DWORD PTR [ebp-0x48],ecx
  00495781: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00495784: 33 ff                                           xor    edi,edi
  00495786: 3b cf                                           cmp    ecx,edi
  00495788: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0049578b: 74 1b                                           je     0x4957a8
  0049578d: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00495790: 2b d1                                           sub    edx,ecx
  00495792: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00495797: f7 ea                                           imul   edx
  00495799: c1 fa 03                                        sar    edx,0x3
  0049579c: 8b c2                                           mov    eax,edx
  0049579e: c1 e8 1f                                        shr    eax,0x1f
  004957a1: 03 d0                                           add    edx,eax
  004957a3: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004957a6: 8b fa                                           mov    edi,edx
  004957a8: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004957ab: 85 db                                           test   ebx,ebx
  004957ad: 0f 84 9f 03 00 00                               je     0x495b52
  004957b3: 85 c9                                           test   ecx,ecx
  004957b5: 75 04                                           jne    0x4957bb
  004957b7: 33 d2                                           xor    edx,edx
  004957b9: eb 16                                           jmp    0x4957d1
  004957bb: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004957be: 2b d1                                           sub    edx,ecx
  004957c0: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004957c5: f7 ea                                           imul   edx
  004957c7: c1 fa 03                                        sar    edx,0x3
  004957ca: 8b c2                                           mov    eax,edx
  004957cc: c1 e8 1f                                        shr    eax,0x1f
  004957cf: 03 d0                                           add    edx,eax
  004957d1: b8 c7 71 1c 07                                  mov    eax,0x71c71c7
  004957d6: 2b c2                                           sub    eax,edx
  004957d8: 3b c3                                           cmp    eax,ebx
  004957da: 73 2c                                           jae    0x495808
  004957dc: 68 80 05 50 00                                  push   0x500580
  004957e1: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004957e4: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004957ea: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004957ed: 51                                              push   ecx
  004957ee: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004957f1: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004957f5: e8 26 fc f6 ff                                  call   0x405420
  004957fa: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004957ff: 8d 55 bc                                        lea    edx,[ebp-0x44]
  00495802: 52                                              push   edx
  00495803: e8 4e c5 03 00                                  call   0x4d1d56
  00495808: 85 c9                                           test   ecx,ecx
  0049580a: 75 04                                           jne    0x495810
  0049580c: 33 d2                                           xor    edx,edx
  0049580e: eb 16                                           jmp    0x495826
  00495810: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00495813: 2b d1                                           sub    edx,ecx
  00495815: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  0049581a: f7 ea                                           imul   edx
  0049581c: c1 fa 03                                        sar    edx,0x3
  0049581f: 8b c2                                           mov    eax,edx
  00495821: c1 e8 1f                                        shr    eax,0x1f
  00495824: 03 d0                                           add    edx,eax
  00495826: 03 d3                                           add    edx,ebx
  00495828: 3b fa                                           cmp    edi,edx
  0049582a: 0f 83 9e 01 00 00                               jae    0x4959ce
  00495830: 8b c7                                           mov    eax,edi
  00495832: d1 e8                                           shr    eax,1
  00495834: ba c7 71 1c 07                                  mov    edx,0x71c71c7
  00495839: 2b d0                                           sub    edx,eax
  0049583b: 3b d7                                           cmp    edx,edi
  0049583d: 73 0c                                           jae    0x49584b
  0049583f: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  00495846: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00495849: eb 05                                           jmp    0x495850
  0049584b: 03 f8                                           add    edi,eax
  0049584d: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  00495850: 85 c9                                           test   ecx,ecx
  00495852: 75 04                                           jne    0x495858
  00495854: 33 d2                                           xor    edx,edx
  00495856: eb 16                                           jmp    0x49586e
  00495858: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049585b: 2b d1                                           sub    edx,ecx
  0049585d: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00495862: f7 ea                                           imul   edx
  00495864: c1 fa 03                                        sar    edx,0x3
  00495867: 8b c2                                           mov    eax,edx
  00495869: c1 e8 1f                                        shr    eax,0x1f
  0049586c: 03 d0                                           add    edx,eax
  0049586e: 03 d3                                           add    edx,ebx
  00495870: 3b fa                                           cmp    edi,edx
  00495872: 73 25                                           jae    0x495899
  00495874: 85 c9                                           test   ecx,ecx
  00495876: 75 04                                           jne    0x49587c
  00495878: 33 d2                                           xor    edx,edx
  0049587a: eb 16                                           jmp    0x495892
  0049587c: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049587f: 2b d1                                           sub    edx,ecx
  00495881: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00495886: f7 ea                                           imul   edx
  00495888: c1 fa 03                                        sar    edx,0x3
  0049588b: 8b ca                                           mov    ecx,edx
  0049588d: c1 e9 1f                                        shr    ecx,0x1f
  00495890: 03 d1                                           add    edx,ecx
  00495892: 03 d3                                           add    edx,ebx
  00495894: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  00495897: 8b fa                                           mov    edi,edx
  00495899: 8d 14 ff                                        lea    edx,[edi+edi*8]
  0049589c: c1 e2 02                                        shl    edx,0x2
  0049589f: 52                                              push   edx
  004958a0: e8 4b c7 fa ff                                  call   0x441ff0
  004958a5: 8b f8                                           mov    edi,eax
  004958a7: 83 c4 04                                        add    esp,0x4
  004958aa: 57                                              push   edi
  004958ab: 51                                              push   ecx
  004958ac: 8d 45 08                                        lea    eax,[ebp+0x8]
  004958af: 8b cc                                           mov    ecx,esp
  004958b1: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004958b4: 50                                              push   eax
  004958b5: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004958b8: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004958bb: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004958bf: e8 4c fb ff ff                                  call   0x495410
  004958c4: 51                                              push   ecx
  004958c5: 8b cc                                           mov    ecx,esp
  004958c7: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004958ca: 51                                              push   ecx
  004958cb: 8b ce                                           mov    ecx,esi
  004958cd: e8 ce 02 00 00                                  call   0x495ba0
  004958d2: 8b ce                                           mov    ecx,esi
  004958d4: e8 c7 23 00 00                                  call   0x497ca0
  004958d9: 8d 55 98                                        lea    edx,[ebp-0x68]
  004958dc: 52                                              push   edx
  004958dd: 53                                              push   ebx
  004958de: 50                                              push   eax
  004958df: 8b ce                                           mov    ecx,esi
  004958e1: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004958e4: e8 77 1a 00 00                                  call   0x497360
  004958e9: 50                                              push   eax
  004958ea: 51                                              push   ecx
  004958eb: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004958ee: 8b c4                                           mov    eax,esp
  004958f0: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004958f3: 50                                              push   eax
  004958f4: 8b ce                                           mov    ecx,esi
  004958f6: e8 15 f9 ff ff                                  call   0x495210
  004958fb: 51                                              push   ecx
  004958fc: 8d 55 08                                        lea    edx,[ebp+0x8]
  004958ff: 8b cc                                           mov    ecx,esp
  00495901: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00495904: 52                                              push   edx
  00495905: e8 06 fb ff ff                                  call   0x495410
  0049590a: 8b ce                                           mov    ecx,esi
  0049590c: e8 8f 23 00 00                                  call   0x497ca0
  00495911: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00495914: 85 c0                                           test   eax,eax
  00495916: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0049591d: 74 2f                                           je     0x49594e
  0049591f: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00495922: 8b f8                                           mov    edi,eax
  00495924: 3b f9                                           cmp    edi,ecx
  00495926: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00495929: 74 14                                           je     0x49593f
  0049592b: 6a 01                                           push   0x1
  0049592d: 8b cf                                           mov    ecx,edi
  0049592f: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00495935: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00495938: 83 c7 24                                        add    edi,0x24
  0049593b: 3b f8                                           cmp    edi,eax
  0049593d: 75 ec                                           jne    0x49592b
  0049593f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00495942: 50                                              push   eax
  00495943: e8 18 c7 fa ff                                  call   0x442060
  00495948: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  0049594b: 83 c4 04                                        add    esp,0x4
  0049594e: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00495951: 8d 0c c0                                        lea    ecx,[eax+eax*8]
  00495954: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00495957: 85 c0                                           test   eax,eax
  00495959: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049595c: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0049595f: 75 15                                           jne    0x495976
  00495961: 33 d2                                           xor    edx,edx
  00495963: 03 da                                           add    ebx,edx
  00495965: 8d 0c db                                        lea    ecx,[ebx+ebx*8]
  00495968: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049596b: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0049596e: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00495971: e9 dc 01 00 00                                  jmp    0x495b52
  00495976: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00495979: 2b c8                                           sub    ecx,eax
  0049597b: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00495980: f7 e9                                           imul   ecx
  00495982: c1 fa 03                                        sar    edx,0x3
  00495985: 8b c2                                           mov    eax,edx
  00495987: c1 e8 1f                                        shr    eax,0x1f
  0049598a: 03 d0                                           add    edx,eax
  0049598c: 03 da                                           add    ebx,edx
  0049598e: 8d 0c db                                        lea    ecx,[ebx+ebx*8]
  00495991: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  00495994: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00495997: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049599a: e9 b3 01 00 00                                  jmp    0x495b52
  004959ce: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004959d1: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004959d4: 8b cf                                           mov    ecx,edi
  004959d6: 2b ca                                           sub    ecx,edx
  004959d8: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004959dd: f7 e9                                           imul   ecx
  004959df: c1 fa 03                                        sar    edx,0x3
  004959e2: 8b c2                                           mov    eax,edx
  004959e4: c1 e8 1f                                        shr    eax,0x1f
  004959e7: 03 d0                                           add    edx,eax
  004959e9: 3b d3                                           cmp    edx,ebx
  004959eb: 0f 83 d3 00 00 00                               jae    0x495ac4
  004959f1: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004959f4: 8d 3c db                                        lea    edi,[ebx+ebx*8]
  004959f7: c1 e7 02                                        shl    edi,0x2
  004959fa: 8d 14 0f                                        lea    edx,[edi+ecx*1]
  004959fd: 52                                              push   edx
  004959fe: 51                                              push   ecx
  004959ff: 8b c4                                           mov    eax,esp
  00495a01: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495a04: 50                                              push   eax
  00495a05: 8b ce                                           mov    ecx,esi
  00495a07: e8 04 f8 ff ff                                  call   0x495210
  00495a0c: 51                                              push   ecx
  00495a0d: 8d 55 08                                        lea    edx,[ebp+0x8]
  00495a10: 8b cc                                           mov    ecx,esp
  00495a12: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495a15: 52                                              push   edx
  00495a16: e8 f5 f9 ff ff                                  call   0x495410
  00495a1b: 8b ce                                           mov    ecx,esi
  00495a1d: e8 7e 22 00 00                                  call   0x497ca0
  00495a22: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00495a25: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00495a28: 2b ca                                           sub    ecx,edx
  00495a2a: 8d 45 98                                        lea    eax,[ebp-0x68]
  00495a2d: 50                                              push   eax
  00495a2e: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00495a33: f7 e9                                           imul   ecx
  00495a35: c1 fa 03                                        sar    edx,0x3
  00495a38: 8b ca                                           mov    ecx,edx
  00495a3a: c1 e9 1f                                        shr    ecx,0x1f
  00495a3d: 03 d1                                           add    edx,ecx
  00495a3f: 8b c3                                           mov    eax,ebx
  00495a41: 2b c2                                           sub    eax,edx
  00495a43: 50                                              push   eax
  00495a44: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495a47: 50                                              push   eax
  00495a48: 8b ce                                           mov    ecx,esi
  00495a4a: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00495a4e: e8 0d 19 00 00                                  call   0x497360
  00495a53: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495a56: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  00495a59: 51                                              push   ecx
  00495a5a: 51                                              push   ecx
  00495a5b: 8b d4                                           mov    edx,esp
  00495a5d: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  00495a60: 03 c7                                           add    eax,edi
  00495a62: 53                                              push   ebx
  00495a63: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00495a66: 52                                              push   edx
  00495a67: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00495a6a: 50                                              push   eax
  00495a6b: 8b ce                                           mov    ecx,esi
  00495a6d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00495a74: e8 97 f7 ff ff                                  call   0x495210
  00495a79: 8b c8                                           mov    ecx,eax
  00495a7b: e8 e0 19 00 00                                  call   0x497460
  00495a80: 51                                              push   ecx
  00495a81: 8d 55 08                                        lea    edx,[ebp+0x8]
  00495a84: 8b cc                                           mov    ecx,esp
  00495a86: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495a89: 52                                              push   edx
  00495a8a: e9 b6 00 00 00                                  jmp    0x495b45
  00495ac4: 57                                              push   edi
  00495ac5: 51                                              push   ecx
  00495ac6: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00495ac9: 8b cc                                           mov    ecx,esp
  00495acb: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495ace: 50                                              push   eax
  00495acf: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  00495ad2: e8 39 f9 ff ff                                  call   0x495410
  00495ad7: 51                                              push   ecx
  00495ad8: 8b cc                                           mov    ecx,esp
  00495ada: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495add: 53                                              push   ebx
  00495ade: 51                                              push   ecx
  00495adf: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00495ae2: e8 79 19 00 00                                  call   0x497460
  00495ae7: 8b ce                                           mov    ecx,esi
  00495ae9: e8 b2 21 00 00                                  call   0x497ca0
  00495aee: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00495af1: 51                                              push   ecx
  00495af2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00495af5: 8b c4                                           mov    eax,esp
  00495af7: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495afa: 51                                              push   ecx
  00495afb: 89 10                                           mov    DWORD PTR [eax],edx
  00495afd: 8b c4                                           mov    eax,esp
  00495aff: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495b02: 53                                              push   ebx
  00495b03: 50                                              push   eax
  00495b04: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00495b07: e8 54 19 00 00                                  call   0x497460
  00495b0c: 51                                              push   ecx
  00495b0d: 8d 55 08                                        lea    edx,[ebp+0x8]
  00495b10: 8b cc                                           mov    ecx,esp
  00495b12: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495b15: 52                                              push   edx
  00495b16: e8 f5 f8 ff ff                                  call   0x495410
  00495b1b: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00495b1e: 50                                              push   eax
  00495b1f: e8 0c 24 00 00                                  call   0x497f30
  00495b24: 83 c4 10                                        add    esp,0x10
  00495b27: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  00495b2a: 51                                              push   ecx
  00495b2b: 51                                              push   ecx
  00495b2c: 8b d4                                           mov    edx,esp
  00495b2e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495b31: 53                                              push   ebx
  00495b32: 52                                              push   edx
  00495b33: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00495b36: e8 75 00 00 00                                  call   0x495bb0
  00495b3b: 51                                              push   ecx
  00495b3c: 8d 45 08                                        lea    eax,[ebp+0x8]
  00495b3f: 8b cc                                           mov    ecx,esp
  00495b41: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495b44: 50                                              push   eax
  00495b45: e8 c6 f8 ff ff                                  call   0x495410
  00495b4a: e8 51 22 00 00                                  call   0x497da0
  00495b4f: 83 c4 0c                                        add    esp,0xc
  00495b52: 8b 4d 9c                                        mov    ecx,DWORD PTR [ebp-0x64]
  00495b55: 85 c9                                           test   ecx,ecx
  00495b57: 74 2d                                           je     0x495b86
  00495b59: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  00495b5c: 84 c0                                           test   al,al
  00495b5e: 74 1c                                           je     0x495b7c
  00495b60: 3c ff                                           cmp    al,0xff
  00495b62: 74 18                                           je     0x495b7c
  00495b64: fe c8                                           dec    al
  00495b66: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00495b69: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00495b6c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00495b73: 5f                                              pop    edi
  00495b74: 5e                                              pop    esi
  00495b75: 5b                                              pop    ebx
  00495b76: 8b e5                                           mov    esp,ebp
  00495b78: 5d                                              pop    ebp
  00495b79: c2 0c 00                                        ret    0xc
  00495b7c: 49                                              dec    ecx
  00495b7d: 51                                              push   ecx
  00495b7e: e8 dd c4 fa ff                                  call   0x442060
  00495b83: 83 c4 04                                        add    esp,0x4
  00495b86: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00495b89: 5f                                              pop    edi
  00495b8a: 5e                                              pop    esi
  00495b8b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00495b92: 5b                                              pop    ebx
  00495b93: 8b e5                                           mov    esp,ebp
  00495b95: 5d                                              pop    ebp
  00495b96: c2 0c 00                                        ret    0xc
  00495f60: 55                                              push   ebp
  00495f61: 8b ec                                           mov    ebp,esp
  00495f63: 6a ff                                           push   0xffffffff
  00495f65: 68 59 ac 4d 00                                  push   0x4dac59
  00495f6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00495f70: 50                                              push   eax
  00495f71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00495f78: 83 ec 44                                        sub    esp,0x44
  00495f7b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00495f7e: 53                                              push   ebx
  00495f7f: 56                                              push   esi
  00495f80: 8b f1                                           mov    esi,ecx
  00495f82: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00495f84: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00495f87: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00495f8a: 89 4d dc                                        mov    DWORD PTR [ebp-0x24],ecx
  00495f8d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00495f90: 85 c9                                           test   ecx,ecx
  00495f92: 57                                              push   edi
  00495f93: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00495f96: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  00495f99: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  00495f9c: 75 04                                           jne    0x495fa2
  00495f9e: 33 ff                                           xor    edi,edi
  00495fa0: eb 17                                           jmp    0x495fb9
  00495fa2: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00495fa5: 2b d1                                           sub    edx,ecx
  00495fa7: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00495fac: f7 ea                                           imul   edx
  00495fae: d1 fa                                           sar    edx,1
  00495fb0: 8b c2                                           mov    eax,edx
  00495fb2: c1 e8 1f                                        shr    eax,0x1f
  00495fb5: 03 d0                                           add    edx,eax
  00495fb7: 8b fa                                           mov    edi,edx
  00495fb9: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00495fbc: 85 db                                           test   ebx,ebx
  00495fbe: 0f 84 53 03 00 00                               je     0x496317
  00495fc4: 85 c9                                           test   ecx,ecx
  00495fc6: 75 04                                           jne    0x495fcc
  00495fc8: 33 d2                                           xor    edx,edx
  00495fca: eb 15                                           jmp    0x495fe1
  00495fcc: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00495fcf: 2b d1                                           sub    edx,ecx
  00495fd1: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00495fd6: f7 ea                                           imul   edx
  00495fd8: d1 fa                                           sar    edx,1
  00495fda: 8b c2                                           mov    eax,edx
  00495fdc: c1 e8 1f                                        shr    eax,0x1f
  00495fdf: 03 d0                                           add    edx,eax
  00495fe1: b8 55 55 55 15                                  mov    eax,0x15555555
  00495fe6: 2b c2                                           sub    eax,edx
  00495fe8: 3b c3                                           cmp    eax,ebx
  00495fea: 73 2f                                           jae    0x49601b
  00495fec: 68 80 05 50 00                                  push   0x500580
  00495ff1: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00495ff4: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00495ffa: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00495ffd: 51                                              push   ecx
  00495ffe: 8d 4d b0                                        lea    ecx,[ebp-0x50]
  00496001: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00496008: e8 13 f4 f6 ff                                  call   0x405420
  0049600d: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00496012: 8d 55 b0                                        lea    edx,[ebp-0x50]
  00496015: 52                                              push   edx
  00496016: e8 3b bd 03 00                                  call   0x4d1d56
  0049601b: 85 c9                                           test   ecx,ecx
  0049601d: 75 04                                           jne    0x496023
  0049601f: 33 d2                                           xor    edx,edx
  00496021: eb 15                                           jmp    0x496038
  00496023: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00496026: 2b d1                                           sub    edx,ecx
  00496028: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049602d: f7 ea                                           imul   edx
  0049602f: d1 fa                                           sar    edx,1
  00496031: 8b c2                                           mov    eax,edx
  00496033: c1 e8 1f                                        shr    eax,0x1f
  00496036: 03 d0                                           add    edx,eax
  00496038: 03 d3                                           add    edx,ebx
  0049603a: 3b fa                                           cmp    edi,edx
  0049603c: 0f 83 6f 01 00 00                               jae    0x4961b1
  00496042: 8b c7                                           mov    eax,edi
  00496044: d1 e8                                           shr    eax,1
  00496046: ba 55 55 55 15                                  mov    edx,0x15555555
  0049604b: 2b d0                                           sub    edx,eax
  0049604d: 3b d7                                           cmp    edx,edi
  0049604f: 73 04                                           jae    0x496055
  00496051: 33 ff                                           xor    edi,edi
  00496053: eb 02                                           jmp    0x496057
  00496055: 03 f8                                           add    edi,eax
  00496057: 85 c9                                           test   ecx,ecx
  00496059: 75 04                                           jne    0x49605f
  0049605b: 33 d2                                           xor    edx,edx
  0049605d: eb 15                                           jmp    0x496074
  0049605f: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00496062: 2b d1                                           sub    edx,ecx
  00496064: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00496069: f7 ea                                           imul   edx
  0049606b: d1 fa                                           sar    edx,1
  0049606d: 8b c2                                           mov    eax,edx
  0049606f: c1 e8 1f                                        shr    eax,0x1f
  00496072: 03 d0                                           add    edx,eax
  00496074: 03 d3                                           add    edx,ebx
  00496076: 3b fa                                           cmp    edi,edx
  00496078: 73 20                                           jae    0x49609a
  0049607a: 85 c9                                           test   ecx,ecx
  0049607c: 75 04                                           jne    0x496082
  0049607e: 33 d2                                           xor    edx,edx
  00496080: eb 15                                           jmp    0x496097
  00496082: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00496085: 2b d1                                           sub    edx,ecx
  00496087: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049608c: f7 ea                                           imul   edx
  0049608e: d1 fa                                           sar    edx,1
  00496090: 8b ca                                           mov    ecx,edx
  00496092: c1 e9 1f                                        shr    ecx,0x1f
  00496095: 03 d1                                           add    edx,ecx
  00496097: 8d 3c 1a                                        lea    edi,[edx+ebx*1]
  0049609a: 8d 14 7f                                        lea    edx,[edi+edi*2]
  0049609d: c1 e2 02                                        shl    edx,0x2
  004960a0: 52                                              push   edx
  004960a1: e8 4a bf fa ff                                  call   0x441ff0
  004960a6: 83 c4 04                                        add    esp,0x4
  004960a9: 50                                              push   eax
  004960aa: 51                                              push   ecx
  004960ab: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004960ae: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004960b1: 8d 45 08                                        lea    eax,[ebp+0x8]
  004960b4: 8b cc                                           mov    ecx,esp
  004960b6: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004960b9: 50                                              push   eax
  004960ba: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004960c1: e8 0a f5 ff ff                                  call   0x4955d0
  004960c6: 51                                              push   ecx
  004960c7: 8b cc                                           mov    ecx,esp
  004960c9: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004960cc: 51                                              push   ecx
  004960cd: 8b ce                                           mov    ecx,esi
  004960cf: e8 5c 02 00 00                                  call   0x496330
  004960d4: 8b ce                                           mov    ecx,esi
  004960d6: e8 55 20 00 00                                  call   0x498130
  004960db: 8d 55 dc                                        lea    edx,[ebp-0x24]
  004960de: 52                                              push   edx
  004960df: 53                                              push   ebx
  004960e0: 50                                              push   eax
  004960e1: 8b ce                                           mov    ecx,esi
  004960e3: e8 f8 14 00 00                                  call   0x4975e0
  004960e8: 50                                              push   eax
  004960e9: 51                                              push   ecx
  004960ea: 8b c4                                           mov    eax,esp
  004960ec: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004960ef: 50                                              push   eax
  004960f0: 8b ce                                           mov    ecx,esi
  004960f2: e8 f9 f1 ff ff                                  call   0x4952f0
  004960f7: 51                                              push   ecx
  004960f8: 8d 55 08                                        lea    edx,[ebp+0x8]
  004960fb: 8b cc                                           mov    ecx,esp
  004960fd: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00496100: 52                                              push   edx
  00496101: e8 ca f4 ff ff                                  call   0x4955d0
  00496106: 8b ce                                           mov    ecx,esi
  00496108: e8 23 20 00 00                                  call   0x498130
  0049610d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00496110: 85 c0                                           test   eax,eax
  00496112: 74 1a                                           je     0x49612e
  00496114: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00496117: 3b c1                                           cmp    eax,ecx
  00496119: 74 07                                           je     0x496122
  0049611b: 83 c0 0c                                        add    eax,0xc
  0049611e: 3b c1                                           cmp    eax,ecx
  00496120: 75 f9                                           jne    0x49611b
  00496122: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00496125: 50                                              push   eax
  00496126: e8 35 bf fa ff                                  call   0x442060
  0049612b: 83 c4 04                                        add    esp,0x4
  0049612e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00496131: 85 c0                                           test   eax,eax
  00496133: 8d 0c 7f                                        lea    ecx,[edi+edi*2]
  00496136: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00496139: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049613c: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0049613f: 75 24                                           jne    0x496165
  00496141: 33 d2                                           xor    edx,edx
  00496143: 8d 04 1a                                        lea    eax,[edx+ebx*1]
  00496146: 8d 0c 40                                        lea    ecx,[eax+eax*2]
  00496149: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049614c: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0049614f: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00496152: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00496155: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049615c: 5f                                              pop    edi
  0049615d: 5e                                              pop    esi
  0049615e: 5b                                              pop    ebx
  0049615f: 8b e5                                           mov    esp,ebp
  00496161: 5d                                              pop    ebp
  00496162: c2 0c 00                                        ret    0xc
  00496165: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00496168: 2b c8                                           sub    ecx,eax
  0049616a: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049616f: f7 e9                                           imul   ecx
  00496171: d1 fa                                           sar    edx,1
  00496173: 8b c2                                           mov    eax,edx
  00496175: c1 e8 1f                                        shr    eax,0x1f
  00496178: 03 d0                                           add    edx,eax
  0049617a: 8d 04 1a                                        lea    eax,[edx+ebx*1]
  0049617d: 8d 0c 40                                        lea    ecx,[eax+eax*2]
  00496180: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  00496183: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00496186: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00496189: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049618c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00496193: 5f                                              pop    edi
  00496194: 5e                                              pop    esi
  00496195: 5b                                              pop    ebx
  00496196: 8b e5                                           mov    esp,ebp
  00496198: 5d                                              pop    ebp
  00496199: c2 0c 00                                        ret    0xc
  004961b1: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004961b4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004961b7: 8b cf                                           mov    ecx,edi
  004961b9: 2b ca                                           sub    ecx,edx
  004961bb: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  004961c0: f7 e9                                           imul   ecx
  004961c2: d1 fa                                           sar    edx,1
  004961c4: 8b ca                                           mov    ecx,edx
  004961c6: c1 e9 1f                                        shr    ecx,0x1f
  004961c9: 03 d1                                           add    edx,ecx
  004961cb: 3b d3                                           cmp    edx,ebx
  004961cd: 0f 83 b6 00 00 00                               jae    0x496289
  004961d3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004961d6: 8d 3c 5b                                        lea    edi,[ebx+ebx*2]
  004961d9: c1 e7 02                                        shl    edi,0x2
  004961dc: 8d 04 17                                        lea    eax,[edi+edx*1]
  004961df: 50                                              push   eax
  004961e0: 51                                              push   ecx
  004961e1: 8b cc                                           mov    ecx,esp
  004961e3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004961e6: 51                                              push   ecx
  004961e7: 8b ce                                           mov    ecx,esi
  004961e9: e8 02 f1 ff ff                                  call   0x4952f0
  004961ee: 51                                              push   ecx
  004961ef: 8d 55 08                                        lea    edx,[ebp+0x8]
  004961f2: 8b cc                                           mov    ecx,esp
  004961f4: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004961f7: 52                                              push   edx
  004961f8: e8 d3 f3 ff ff                                  call   0x4955d0
  004961fd: 8b ce                                           mov    ecx,esi
  004961ff: e8 2c 1f 00 00                                  call   0x498130
  00496204: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00496207: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049620a: 2b ca                                           sub    ecx,edx
  0049620c: 8d 45 dc                                        lea    eax,[ebp-0x24]
  0049620f: 50                                              push   eax
  00496210: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00496215: f7 e9                                           imul   ecx
  00496217: d1 fa                                           sar    edx,1
  00496219: 8b ca                                           mov    ecx,edx
  0049621b: c1 e9 1f                                        shr    ecx,0x1f
  0049621e: 03 d1                                           add    edx,ecx
  00496220: 8b c3                                           mov    eax,ebx
  00496222: 2b c2                                           sub    eax,edx
  00496224: 50                                              push   eax
  00496225: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00496228: 50                                              push   eax
  00496229: 8b ce                                           mov    ecx,esi
  0049622b: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00496232: e8 a9 13 00 00                                  call   0x4975e0
  00496237: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049623a: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0049623d: 51                                              push   ecx
  0049623e: 51                                              push   ecx
  0049623f: 8b d4                                           mov    edx,esp
  00496241: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496244: 03 c7                                           add    eax,edi
  00496246: 53                                              push   ebx
  00496247: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049624a: 52                                              push   edx
  0049624b: 8d 45 10                                        lea    eax,[ebp+0x10]
  0049624e: 50                                              push   eax
  0049624f: 8b ce                                           mov    ecx,esi
  00496251: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00496258: e8 93 f0 ff ff                                  call   0x4952f0
  0049625d: 8b c8                                           mov    ecx,eax
  0049625f: e8 cc 13 00 00                                  call   0x497630
  00496264: 51                                              push   ecx
  00496265: 8b cc                                           mov    ecx,esp
  00496267: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0049626a: e9 97 00 00 00                                  jmp    0x496306
  00496289: 57                                              push   edi
  0049628a: 51                                              push   ecx
  0049628b: 8d 55 0c                                        lea    edx,[ebp+0xc]
  0049628e: 8b cc                                           mov    ecx,esp
  00496290: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496293: 52                                              push   edx
  00496294: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  00496297: e8 34 f3 ff ff                                  call   0x4955d0
  0049629c: 51                                              push   ecx
  0049629d: 8b c4                                           mov    eax,esp
  0049629f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004962a2: 53                                              push   ebx
  004962a3: 50                                              push   eax
  004962a4: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004962a7: e8 84 13 00 00                                  call   0x497630
  004962ac: 8b ce                                           mov    ecx,esi
  004962ae: e8 7d 1e 00 00                                  call   0x498130
  004962b3: 51                                              push   ecx
  004962b4: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004962b7: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004962ba: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004962bd: 8b c4                                           mov    eax,esp
  004962bf: 51                                              push   ecx
  004962c0: 8b d4                                           mov    edx,esp
  004962c2: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004962c5: 53                                              push   ebx
  004962c6: 89 08                                           mov    DWORD PTR [eax],ecx
  004962c8: 52                                              push   edx
  004962c9: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004962cc: e8 5f 13 00 00                                  call   0x497630
  004962d1: 51                                              push   ecx
  004962d2: 8d 45 08                                        lea    eax,[ebp+0x8]
  004962d5: 8b cc                                           mov    ecx,esp
  004962d7: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004962da: 50                                              push   eax
  004962db: e8 f0 f2 ff ff                                  call   0x4955d0
  004962e0: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004962e3: 51                                              push   ecx
  004962e4: e8 d7 1e 00 00                                  call   0x4981c0
  004962e9: 83 c4 10                                        add    esp,0x10
  004962ec: 8d 55 dc                                        lea    edx,[ebp-0x24]
  004962ef: 52                                              push   edx
  004962f0: 51                                              push   ecx
  004962f1: 8b c4                                           mov    eax,esp
  004962f3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004962f6: 53                                              push   ebx
  004962f7: 50                                              push   eax
  004962f8: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004962fb: e8 40 00 00 00                                  call   0x496340
  00496300: 51                                              push   ecx
  00496301: 8b cc                                           mov    ecx,esp
  00496303: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496306: 8d 55 08                                        lea    edx,[ebp+0x8]
  00496309: 52                                              push   edx
  0049630a: e8 c1 f2 ff ff                                  call   0x4955d0
  0049630f: e8 6c 1e 00 00                                  call   0x498180
  00496314: 83 c4 0c                                        add    esp,0xc
  00496317: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049631a: 5f                                              pop    edi
  0049631b: 5e                                              pop    esi
  0049631c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00496323: 5b                                              pop    ebx
  00496324: 8b e5                                           mov    esp,ebp
  00496326: 5d                                              pop    ebp
  00496327: c2 0c 00                                        ret    0xc
  00496360: 55                                              push   ebp
  00496361: 8b ec                                           mov    ebp,esp
  00496363: 6a ff                                           push   0xffffffff
  00496365: 68 ca ac 4d 00                                  push   0x4dacca
  0049636a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00496370: 50                                              push   eax
  00496371: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00496378: 81 ec 40 01 00 00                               sub    esp,0x140
  0049637e: 53                                              push   ebx
  0049637f: 56                                              push   esi
  00496380: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00496383: 8a 06                                           mov    al,BYTE PTR [esi]
  00496385: 57                                              push   edi
  00496386: 8b f9                                           mov    edi,ecx
  00496388: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0049638b: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049638e: 51                                              push   ecx
  0049638f: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00496395: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00496398: 88 85 e0 fe ff ff                               mov    BYTE PTR [ebp-0x120],al
  0049639e: e8 3d 0f 00 00                                  call   0x4972e0
  004963a3: 8d 56 14                                        lea    edx,[esi+0x14]
  004963a6: 52                                              push   edx
  004963a7: 8d 8d f4 fe ff ff                               lea    ecx,[ebp-0x10c]
  004963ad: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004963b4: e8 c7 10 00 00                                  call   0x497480
  004963b9: 8d 46 24                                        lea    eax,[esi+0x24]
  004963bc: 50                                              push   eax
  004963bd: 8d 8d 04 ff ff ff                               lea    ecx,[ebp-0xfc]
  004963c3: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004963c7: e8 94 11 00 00                                  call   0x497560
  004963cc: 8b 4e 34                                        mov    ecx,DWORD PTR [esi+0x34]
  004963cf: 8d 56 38                                        lea    edx,[esi+0x38]
  004963d2: 89 8d 14 ff ff ff                               mov    DWORD PTR [ebp-0xec],ecx
  004963d8: 52                                              push   edx
  004963d9: 8d 8d 18 ff ff ff                               lea    ecx,[ebp-0xe8]
  004963df: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004963e3: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004963e9: 8d 46 48                                        lea    eax,[esi+0x48]
  004963ec: 50                                              push   eax
  004963ed: 8d 8d 28 ff ff ff                               lea    ecx,[ebp-0xd8]
  004963f3: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004963f7: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004963fd: 8b 4e 58                                        mov    ecx,DWORD PTR [esi+0x58]
  00496400: 8b 56 5c                                        mov    edx,DWORD PTR [esi+0x5c]
  00496403: 8b 46 60                                        mov    eax,DWORD PTR [esi+0x60]
  00496406: 89 8d 38 ff ff ff                               mov    DWORD PTR [ebp-0xc8],ecx
  0049640c: 8b 4e 64                                        mov    ecx,DWORD PTR [esi+0x64]
  0049640f: 89 95 3c ff ff ff                               mov    DWORD PTR [ebp-0xc4],edx
  00496415: 8b 56 68                                        mov    edx,DWORD PTR [esi+0x68]
  00496418: 89 85 40 ff ff ff                               mov    DWORD PTR [ebp-0xc0],eax
  0049641e: 8b 46 6c                                        mov    eax,DWORD PTR [esi+0x6c]
  00496421: 89 8d 44 ff ff ff                               mov    DWORD PTR [ebp-0xbc],ecx
  00496427: 8b 4e 70                                        mov    ecx,DWORD PTR [esi+0x70]
  0049642a: 89 95 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],edx
  00496430: 8b 56 74                                        mov    edx,DWORD PTR [esi+0x74]
  00496433: 89 85 4c ff ff ff                               mov    DWORD PTR [ebp-0xb4],eax
  00496439: 8b 46 78                                        mov    eax,DWORD PTR [esi+0x78]
  0049643c: 89 8d 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],ecx
  00496442: 8b 4e 7c                                        mov    ecx,DWORD PTR [esi+0x7c]
  00496445: 89 95 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],edx
  0049644b: 8b 96 80 00 00 00                               mov    edx,DWORD PTR [esi+0x80]
  00496451: 89 85 58 ff ff ff                               mov    DWORD PTR [ebp-0xa8],eax
  00496457: 8b 86 84 00 00 00                               mov    eax,DWORD PTR [esi+0x84]
  0049645d: 89 8d 5c ff ff ff                               mov    DWORD PTR [ebp-0xa4],ecx
  00496463: 8b 8e 88 00 00 00                               mov    ecx,DWORD PTR [esi+0x88]
  00496469: 89 95 60 ff ff ff                               mov    DWORD PTR [ebp-0xa0],edx
  0049646f: 8b 96 8c 00 00 00                               mov    edx,DWORD PTR [esi+0x8c]
  00496475: 89 85 64 ff ff ff                               mov    DWORD PTR [ebp-0x9c],eax
  0049647b: 8b 86 90 00 00 00                               mov    eax,DWORD PTR [esi+0x90]
  00496481: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  00496487: 8b 8e 94 00 00 00                               mov    ecx,DWORD PTR [esi+0x94]
  0049648d: 89 95 6c ff ff ff                               mov    DWORD PTR [ebp-0x94],edx
  00496493: 8b 96 98 00 00 00                               mov    edx,DWORD PTR [esi+0x98]
  00496499: 89 85 70 ff ff ff                               mov    DWORD PTR [ebp-0x90],eax
  0049649f: 8b 86 9c 00 00 00                               mov    eax,DWORD PTR [esi+0x9c]
  004964a5: 89 8d 74 ff ff ff                               mov    DWORD PTR [ebp-0x8c],ecx
  004964ab: 8b 8e a0 00 00 00                               mov    ecx,DWORD PTR [esi+0xa0]
  004964b1: 89 95 78 ff ff ff                               mov    DWORD PTR [ebp-0x88],edx
  004964b7: 8b 96 a4 00 00 00                               mov    edx,DWORD PTR [esi+0xa4]
  004964bd: 89 85 7c ff ff ff                               mov    DWORD PTR [ebp-0x84],eax
  004964c3: 8b 86 a8 00 00 00                               mov    eax,DWORD PTR [esi+0xa8]
  004964c9: 89 4d 80                                        mov    DWORD PTR [ebp-0x80],ecx
  004964cc: 89 55 84                                        mov    DWORD PTR [ebp-0x7c],edx
  004964cf: 89 45 88                                        mov    DWORD PTR [ebp-0x78],eax
  004964d2: 8b 8e ac 00 00 00                               mov    ecx,DWORD PTR [esi+0xac]
  004964d8: 8b 96 b0 00 00 00                               mov    edx,DWORD PTR [esi+0xb0]
  004964de: 8b 86 b4 00 00 00                               mov    eax,DWORD PTR [esi+0xb4]
  004964e4: 89 4d 8c                                        mov    DWORD PTR [ebp-0x74],ecx
  004964e7: 8b 8e b8 00 00 00                               mov    ecx,DWORD PTR [esi+0xb8]
  004964ed: 89 55 90                                        mov    DWORD PTR [ebp-0x70],edx
  004964f0: 8b 96 bc 00 00 00                               mov    edx,DWORD PTR [esi+0xbc]
  004964f6: 89 45 94                                        mov    DWORD PTR [ebp-0x6c],eax
  004964f9: 8b 86 c0 00 00 00                               mov    eax,DWORD PTR [esi+0xc0]
  004964ff: 89 4d 98                                        mov    DWORD PTR [ebp-0x68],ecx
  00496502: 8b 8e c4 00 00 00                               mov    ecx,DWORD PTR [esi+0xc4]
  00496508: 89 55 9c                                        mov    DWORD PTR [ebp-0x64],edx
  0049650b: 8b 96 c8 00 00 00                               mov    edx,DWORD PTR [esi+0xc8]
  00496511: 89 45 a0                                        mov    DWORD PTR [ebp-0x60],eax
  00496514: 8b 86 cc 00 00 00                               mov    eax,DWORD PTR [esi+0xcc]
  0049651a: 89 4d a4                                        mov    DWORD PTR [ebp-0x5c],ecx
  0049651d: 8b 8e d0 00 00 00                               mov    ecx,DWORD PTR [esi+0xd0]
  00496523: 89 55 a8                                        mov    DWORD PTR [ebp-0x58],edx
  00496526: 8b 96 d4 00 00 00                               mov    edx,DWORD PTR [esi+0xd4]
  0049652c: 89 45 ac                                        mov    DWORD PTR [ebp-0x54],eax
  0049652f: 8b 86 d8 00 00 00                               mov    eax,DWORD PTR [esi+0xd8]
  00496535: 89 4d b0                                        mov    DWORD PTR [ebp-0x50],ecx
  00496538: 8b 8e dc 00 00 00                               mov    ecx,DWORD PTR [esi+0xdc]
  0049653e: 89 55 b4                                        mov    DWORD PTR [ebp-0x4c],edx
  00496541: 8b 96 e0 00 00 00                               mov    edx,DWORD PTR [esi+0xe0]
  00496547: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0049654a: 8b 86 e4 00 00 00                               mov    eax,DWORD PTR [esi+0xe4]
  00496550: 89 4d bc                                        mov    DWORD PTR [ebp-0x44],ecx
  00496553: 8b 8e e8 00 00 00                               mov    ecx,DWORD PTR [esi+0xe8]
  00496559: 89 55 c0                                        mov    DWORD PTR [ebp-0x40],edx
  0049655c: 8b 96 ec 00 00 00                               mov    edx,DWORD PTR [esi+0xec]
  00496562: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  00496565: 8b 86 f0 00 00 00                               mov    eax,DWORD PTR [esi+0xf0]
  0049656b: 89 4d c8                                        mov    DWORD PTR [ebp-0x38],ecx
  0049656e: 8b 8e f4 00 00 00                               mov    ecx,DWORD PTR [esi+0xf4]
  00496574: 89 55 cc                                        mov    DWORD PTR [ebp-0x34],edx
  00496577: 8b 96 f8 00 00 00                               mov    edx,DWORD PTR [esi+0xf8]
  0049657d: 89 45 d0                                        mov    DWORD PTR [ebp-0x30],eax
  00496580: 8b 86 fc 00 00 00                               mov    eax,DWORD PTR [esi+0xfc]
  00496586: 89 4d d4                                        mov    DWORD PTR [ebp-0x2c],ecx
  00496589: 8a 8e 00 01 00 00                               mov    cl,BYTE PTR [esi+0x100]
  0049658f: 89 55 d8                                        mov    DWORD PTR [ebp-0x28],edx
  00496592: 89 45 dc                                        mov    DWORD PTR [ebp-0x24],eax
  00496595: 88 4d e0                                        mov    BYTE PTR [ebp-0x20],cl
  00496598: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0049659b: 85 c9                                           test   ecx,ecx
  0049659d: c7 45 fc 04 00 00 00                            mov    DWORD PTR [ebp-0x4],0x4
  004965a4: 75 04                                           jne    0x4965aa
  004965a6: 33 f6                                           xor    esi,esi
  004965a8: eb 1b                                           jmp    0x4965c5
  004965aa: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004965ad: 2b d1                                           sub    edx,ecx
  004965af: b8 e1 83 0f 3e                                  mov    eax,0x3e0f83e1
  004965b4: f7 ea                                           imul   edx
  004965b6: c1 fa 06                                        sar    edx,0x6
  004965b9: 8b c2                                           mov    eax,edx
  004965bb: c1 e8 1f                                        shr    eax,0x1f
  004965be: 03 d0                                           add    edx,eax
  004965c0: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004965c3: 8b f2                                           mov    esi,edx
  004965c5: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004965c8: 33 d2                                           xor    edx,edx
  004965ca: 3b da                                           cmp    ebx,edx
  004965cc: 0f 84 bc 03 00 00                               je     0x49698e
  004965d2: 3b ca                                           cmp    ecx,edx
  004965d4: 74 16                                           je     0x4965ec
  004965d6: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  004965d9: 2b d1                                           sub    edx,ecx
  004965db: b8 e1 83 0f 3e                                  mov    eax,0x3e0f83e1
  004965e0: f7 ea                                           imul   edx
  004965e2: c1 fa 06                                        sar    edx,0x6
  004965e5: 8b c2                                           mov    eax,edx
  004965e7: c1 e8 1f                                        shr    eax,0x1f
  004965ea: 03 d0                                           add    edx,eax
  004965ec: b8 0f 3e f8 00                                  mov    eax,0xf83e0f
  004965f1: 2b c2                                           sub    eax,edx
  004965f3: 3b c3                                           cmp    eax,ebx
  004965f5: 73 38                                           jae    0x49662f
  004965f7: 68 80 05 50 00                                  push   0x500580
  004965fc: 8d 8d d0 fe ff ff                               lea    ecx,[ebp-0x130]
  00496602: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00496608: 8d 8d d0 fe ff ff                               lea    ecx,[ebp-0x130]
  0049660e: 51                                              push   ecx
  0049660f: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  00496615: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00496619: e8 02 ee f6 ff                                  call   0x405420
  0049661e: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00496623: 8d 95 b4 fe ff ff                               lea    edx,[ebp-0x14c]
  00496629: 52                                              push   edx
  0049662a: e8 27 b7 03 00                                  call   0x4d1d56
  0049662f: 85 c9                                           test   ecx,ecx
  00496631: 75 04                                           jne    0x496637
  00496633: 33 d2                                           xor    edx,edx
  00496635: eb 16                                           jmp    0x49664d
  00496637: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0049663a: 2b d1                                           sub    edx,ecx
  0049663c: b8 e1 83 0f 3e                                  mov    eax,0x3e0f83e1
  00496641: f7 ea                                           imul   edx
  00496643: c1 fa 06                                        sar    edx,0x6
  00496646: 8b c2                                           mov    eax,edx
  00496648: c1 e8 1f                                        shr    eax,0x1f
  0049664b: 03 d0                                           add    edx,eax
  0049664d: 03 d3                                           add    edx,ebx
  0049664f: 3b f2                                           cmp    esi,edx
  00496651: 0f 83 a0 01 00 00                               jae    0x4967f7
  00496657: 8b c6                                           mov    eax,esi
  00496659: d1 e8                                           shr    eax,1
  0049665b: ba 0f 3e f8 00                                  mov    edx,0xf83e0f
  00496660: 2b d0                                           sub    edx,eax
  00496662: 3b d6                                           cmp    edx,esi
  00496664: 73 0c                                           jae    0x496672
  00496666: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  0049666d: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00496670: eb 05                                           jmp    0x496677
  00496672: 03 f0                                           add    esi,eax
  00496674: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  00496677: 85 c9                                           test   ecx,ecx
  00496679: 75 04                                           jne    0x49667f
  0049667b: 33 d2                                           xor    edx,edx
  0049667d: eb 16                                           jmp    0x496695
  0049667f: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00496682: 2b d1                                           sub    edx,ecx
  00496684: b8 e1 83 0f 3e                                  mov    eax,0x3e0f83e1
  00496689: f7 ea                                           imul   edx
  0049668b: c1 fa 06                                        sar    edx,0x6
  0049668e: 8b c2                                           mov    eax,edx
  00496690: c1 e8 1f                                        shr    eax,0x1f
  00496693: 03 d0                                           add    edx,eax
  00496695: 03 d3                                           add    edx,ebx
  00496697: 3b f2                                           cmp    esi,edx
  00496699: 73 25                                           jae    0x4966c0
  0049669b: 85 c9                                           test   ecx,ecx
  0049669d: 75 04                                           jne    0x4966a3
  0049669f: 33 d2                                           xor    edx,edx
  004966a1: eb 16                                           jmp    0x4966b9
  004966a3: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  004966a6: 2b d1                                           sub    edx,ecx
  004966a8: b8 e1 83 0f 3e                                  mov    eax,0x3e0f83e1
  004966ad: f7 ea                                           imul   edx
  004966af: c1 fa 06                                        sar    edx,0x6
  004966b2: 8b ca                                           mov    ecx,edx
  004966b4: c1 e9 1f                                        shr    ecx,0x1f
  004966b7: 03 d1                                           add    edx,ecx
  004966b9: 03 d3                                           add    edx,ebx
  004966bb: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004966be: 8b f2                                           mov    esi,edx
  004966c0: 8b d6                                           mov    edx,esi
  004966c2: c1 e2 05                                        shl    edx,0x5
  004966c5: 03 d6                                           add    edx,esi
  004966c7: c1 e2 03                                        shl    edx,0x3
  004966ca: 52                                              push   edx
  004966cb: e8 20 b9 fa ff                                  call   0x441ff0
  004966d0: 8b f0                                           mov    esi,eax
  004966d2: 83 c4 04                                        add    esp,0x4
  004966d5: 56                                              push   esi
  004966d6: 51                                              push   ecx
  004966d7: 8d 45 08                                        lea    eax,[ebp+0x8]
  004966da: 8b cc                                           mov    ecx,esp
  004966dc: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004966df: 50                                              push   eax
  004966e0: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  004966e3: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  004966e6: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004966ea: e8 71 ef ff ff                                  call   0x495660
  004966ef: 51                                              push   ecx
  004966f0: 8b cc                                           mov    ecx,esp
  004966f2: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004966f5: 51                                              push   ecx
  004966f6: 8b cf                                           mov    ecx,edi
  004966f8: e8 c3 03 00 00                                  call   0x496ac0
  004966fd: 8b cf                                           mov    ecx,edi
  004966ff: e8 0c 1b 00 00                                  call   0x498210
  00496704: 8d 95 e0 fe ff ff                               lea    edx,[ebp-0x120]
  0049670a: 52                                              push   edx
  0049670b: 53                                              push   ebx
  0049670c: 50                                              push   eax
  0049670d: 8b cf                                           mov    ecx,edi
  0049670f: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00496712: e8 39 0f 00 00                                  call   0x497650
  00496717: 50                                              push   eax
  00496718: 51                                              push   ecx
  00496719: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0049671c: 8b c4                                           mov    eax,esp
  0049671e: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00496721: 50                                              push   eax
  00496722: 8b cf                                           mov    ecx,edi
  00496724: e8 d7 eb ff ff                                  call   0x495300
  00496729: 51                                              push   ecx
  0049672a: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049672d: 8b cc                                           mov    ecx,esp
  0049672f: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00496732: 52                                              push   edx
  00496733: e8 28 ef ff ff                                  call   0x495660
  00496738: 8b cf                                           mov    ecx,edi
  0049673a: e8 d1 1a 00 00                                  call   0x498210
  0049673f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00496742: 85 c0                                           test   eax,eax
  00496744: c7 45 fc 04 00 00 00                            mov    DWORD PTR [ebp-0x4],0x4
  0049674b: 74 31                                           je     0x49677e
  0049674d: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00496750: 8b f0                                           mov    esi,eax
  00496752: 3b f1                                           cmp    esi,ecx
  00496754: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00496757: 74 16                                           je     0x49676f
  00496759: 6a 00                                           push   0x0
  0049675b: 8b ce                                           mov    ecx,esi
  0049675d: e8 ae 23 00 00                                  call   0x498b10
  00496762: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00496765: 81 c6 08 01 00 00                               add    esi,0x108
  0049676b: 3b f0                                           cmp    esi,eax
  0049676d: 75 ea                                           jne    0x496759
  0049676f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00496772: 50                                              push   eax
  00496773: e8 e8 b8 fa ff                                  call   0x442060
  00496778: 8b 75 e8                                        mov    esi,DWORD PTR [ebp-0x18]
  0049677b: 83 c4 04                                        add    esp,0x4
  0049677e: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00496781: 8b c8                                           mov    ecx,eax
  00496783: c1 e1 05                                        shl    ecx,0x5
  00496786: 03 c8                                           add    ecx,eax
  00496788: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0049678b: 85 c0                                           test   eax,eax
  0049678d: 8d 14 ce                                        lea    edx,[esi+ecx*8]
  00496790: 89 57 0c                                        mov    DWORD PTR [edi+0xc],edx
  00496793: 75 04                                           jne    0x496799
  00496795: 33 d2                                           xor    edx,edx
  00496797: eb 16                                           jmp    0x4967af
  00496799: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0049679c: 2b c8                                           sub    ecx,eax
  0049679e: b8 e1 83 0f 3e                                  mov    eax,0x3e0f83e1
  004967a3: f7 e9                                           imul   ecx
  004967a5: c1 fa 06                                        sar    edx,0x6
  004967a8: 8b c2                                           mov    eax,edx
  004967aa: c1 e8 1f                                        shr    eax,0x1f
  004967ad: 03 d0                                           add    edx,eax
  004967af: 03 da                                           add    ebx,edx
  004967b1: 8b cb                                           mov    ecx,ebx
  004967b3: c1 e1 05                                        shl    ecx,0x5
  004967b6: 03 cb                                           add    ecx,ebx
  004967b8: 8d 14 ce                                        lea    edx,[esi+ecx*8]
  004967bb: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  004967be: 89 77 04                                        mov    DWORD PTR [edi+0x4],esi
  004967c1: e9 c6 01 00 00                                  jmp    0x49698c
  004967f7: 8b 77 08                                        mov    esi,DWORD PTR [edi+0x8]
  004967fa: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004967fd: 8b ce                                           mov    ecx,esi
  004967ff: 2b ca                                           sub    ecx,edx
  00496801: b8 e1 83 0f 3e                                  mov    eax,0x3e0f83e1
  00496806: f7 e9                                           imul   ecx
  00496808: c1 fa 06                                        sar    edx,0x6
  0049680b: 8b c2                                           mov    eax,edx
  0049680d: c1 e8 1f                                        shr    eax,0x1f
  00496810: 03 d0                                           add    edx,eax
  00496812: 3b d3                                           cmp    edx,ebx
  00496814: 0f 83 e1 00 00 00                               jae    0x4968fb
  0049681a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049681d: 8b f3                                           mov    esi,ebx
  0049681f: c1 e6 05                                        shl    esi,0x5
  00496822: 03 f3                                           add    esi,ebx
  00496824: c1 e6 03                                        shl    esi,0x3
  00496827: 8d 14 0e                                        lea    edx,[esi+ecx*1]
  0049682a: 52                                              push   edx
  0049682b: 51                                              push   ecx
  0049682c: 8b c4                                           mov    eax,esp
  0049682e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496831: 50                                              push   eax
  00496832: 8b cf                                           mov    ecx,edi
  00496834: e8 c7 ea ff ff                                  call   0x495300
  00496839: 51                                              push   ecx
  0049683a: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049683d: 8b cc                                           mov    ecx,esp
  0049683f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496842: 52                                              push   edx
  00496843: e8 18 ee ff ff                                  call   0x495660
  00496848: 8b cf                                           mov    ecx,edi
  0049684a: e8 c1 19 00 00                                  call   0x498210
  0049684f: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00496852: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00496855: 2b ca                                           sub    ecx,edx
  00496857: 8d 85 e0 fe ff ff                               lea    eax,[ebp-0x120]
  0049685d: 50                                              push   eax
  0049685e: b8 e1 83 0f 3e                                  mov    eax,0x3e0f83e1
  00496863: f7 e9                                           imul   ecx
  00496865: c1 fa 06                                        sar    edx,0x6
  00496868: 8b ca                                           mov    ecx,edx
  0049686a: c1 e9 1f                                        shr    ecx,0x1f
  0049686d: 03 d1                                           add    edx,ecx
  0049686f: 8b c3                                           mov    eax,ebx
  00496871: 2b c2                                           sub    eax,edx
  00496873: 50                                              push   eax
  00496874: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00496877: 50                                              push   eax
  00496878: 8b cf                                           mov    ecx,edi
  0049687a: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0049687e: e8 cd 0d 00 00                                  call   0x497650
  00496883: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00496886: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  0049688c: 51                                              push   ecx
  0049688d: 51                                              push   ecx
  0049688e: 8b d4                                           mov    edx,esp
  00496890: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  00496893: 03 c6                                           add    eax,esi
  00496895: 53                                              push   ebx
  00496896: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  00496899: 52                                              push   edx
  0049689a: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0049689d: 50                                              push   eax
  0049689e: 8b cf                                           mov    ecx,edi
  004968a0: c7 45 fc 04 00 00 00                            mov    DWORD PTR [ebp-0x4],0x4
  004968a7: e8 54 ea ff ff                                  call   0x495300
  004968ac: 8b c8                                           mov    ecx,eax
  004968ae: e8 1d 13 00 00                                  call   0x497bd0
  004968b3: 51                                              push   ecx
  004968b4: 8d 55 08                                        lea    edx,[ebp+0x8]
  004968b7: 8b cc                                           mov    ecx,esp
  004968b9: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004968bc: 52                                              push   edx
  004968bd: e9 bd 00 00 00                                  jmp    0x49697f
  004968fb: 56                                              push   esi
  004968fc: 51                                              push   ecx
  004968fd: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00496900: 8b cc                                           mov    ecx,esp
  00496902: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496905: 50                                              push   eax
  00496906: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  00496909: e8 52 ed ff ff                                  call   0x495660
  0049690e: 51                                              push   ecx
  0049690f: 8b cc                                           mov    ecx,esp
  00496911: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496914: 53                                              push   ebx
  00496915: 51                                              push   ecx
  00496916: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00496919: e8 b2 12 00 00                                  call   0x497bd0
  0049691e: 8b cf                                           mov    ecx,edi
  00496920: e8 eb 18 00 00                                  call   0x498210
  00496925: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00496928: 51                                              push   ecx
  00496929: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  0049692c: 8b c4                                           mov    eax,esp
  0049692e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496931: 51                                              push   ecx
  00496932: 89 10                                           mov    DWORD PTR [eax],edx
  00496934: 8b c4                                           mov    eax,esp
  00496936: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00496939: 53                                              push   ebx
  0049693a: 50                                              push   eax
  0049693b: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0049693e: e8 8d 12 00 00                                  call   0x497bd0
  00496943: 51                                              push   ecx
  00496944: 8d 55 08                                        lea    edx,[ebp+0x8]
  00496947: 8b cc                                           mov    ecx,esp
  00496949: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049694c: 52                                              push   edx
  0049694d: e8 0e ed ff ff                                  call   0x495660
  00496952: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00496955: 50                                              push   eax
  00496956: e8 55 1d 00 00                                  call   0x4986b0
  0049695b: 83 c4 10                                        add    esp,0x10
  0049695e: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  00496964: 51                                              push   ecx
  00496965: 51                                              push   ecx
  00496966: 8b d4                                           mov    edx,esp
  00496968: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049696b: 53                                              push   ebx
  0049696c: 52                                              push   edx
  0049696d: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00496970: e8 5b 01 00 00                                  call   0x496ad0
  00496975: 51                                              push   ecx
  00496976: 8d 45 08                                        lea    eax,[ebp+0x8]
  00496979: 8b cc                                           mov    ecx,esp
  0049697b: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049697e: 50                                              push   eax
  0049697f: e8 dc ec ff ff                                  call   0x495660
  00496984: e8 37 1a 00 00                                  call   0x4983c0
  00496989: 83 c4 0c                                        add    esp,0xc
  0049698c: 33 d2                                           xor    edx,edx
  0049698e: 8b 85 2c ff ff ff                               mov    eax,DWORD PTR [ebp-0xd4]
  00496994: 3b c2                                           cmp    eax,edx
  00496996: c7 45 fc 0b 00 00 00                            mov    DWORD PTR [ebp-0x4],0xb
  0049699d: 74 1e                                           je     0x4969bd
  0049699f: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004969a2: 8a 01                                           mov    al,BYTE PTR [ecx]
  004969a4: 84 c0                                           test   al,al
  004969a6: 74 0a                                           je     0x4969b2
  004969a8: 3c ff                                           cmp    al,0xff
  004969aa: 74 06                                           je     0x4969b2
  004969ac: fe c8                                           dec    al
  004969ae: 88 01                                           mov    BYTE PTR [ecx],al
  004969b0: eb 0b                                           jmp    0x4969bd
  004969b2: 51                                              push   ecx
  004969b3: e8 a8 b6 fa ff                                  call   0x442060
  004969b8: 83 c4 04                                        add    esp,0x4
  004969bb: 33 d2                                           xor    edx,edx
  004969bd: 8b 85 1c ff ff ff                               mov    eax,DWORD PTR [ebp-0xe4]
  004969c3: 3b c2                                           cmp    eax,edx
  004969c5: 89 95 2c ff ff ff                               mov    DWORD PTR [ebp-0xd4],edx
  004969cb: 89 95 30 ff ff ff                               mov    DWORD PTR [ebp-0xd0],edx
  004969d1: 89 95 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],edx
  004969d7: 74 1e                                           je     0x4969f7
  004969d9: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004969dc: 8a 01                                           mov    al,BYTE PTR [ecx]
  004969de: 84 c0                                           test   al,al
  004969e0: 74 0a                                           je     0x4969ec
  004969e2: 3c ff                                           cmp    al,0xff
  004969e4: 74 06                                           je     0x4969ec
  004969e6: fe c8                                           dec    al
  004969e8: 88 01                                           mov    BYTE PTR [ecx],al
  004969ea: eb 0b                                           jmp    0x4969f7
  004969ec: 51                                              push   ecx
  004969ed: e8 6e b6 fa ff                                  call   0x442060
  004969f2: 83 c4 04                                        add    esp,0x4
  004969f5: 33 d2                                           xor    edx,edx
  004969f7: 8b 85 08 ff ff ff                               mov    eax,DWORD PTR [ebp-0xf8]
  004969fd: 3b c2                                           cmp    eax,edx
  004969ff: 89 95 1c ff ff ff                               mov    DWORD PTR [ebp-0xe4],edx
  00496a05: 89 95 20 ff ff ff                               mov    DWORD PTR [ebp-0xe0],edx
  00496a0b: 89 95 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edx
  00496a11: 74 24                                           je     0x496a37
  00496a13: 8b 8d 0c ff ff ff                               mov    ecx,DWORD PTR [ebp-0xf4]
  00496a19: 51                                              push   ecx
  00496a1a: 50                                              push   eax
  00496a1b: 8d 8d 04 ff ff ff                               lea    ecx,[ebp-0xfc]
  00496a21: e8 ca 00 00 00                                  call   0x496af0
  00496a26: 8b 95 08 ff ff ff                               mov    edx,DWORD PTR [ebp-0xf8]
  00496a2c: 52                                              push   edx
  00496a2d: e8 2e b6 fa ff                                  call   0x442060
  00496a32: 83 c4 04                                        add    esp,0x4
  00496a35: 33 d2                                           xor    edx,edx
  00496a37: 8b 85 f8 fe ff ff                               mov    eax,DWORD PTR [ebp-0x108]
  00496a3d: 3b c2                                           cmp    eax,edx
  00496a3f: 89 95 08 ff ff ff                               mov    DWORD PTR [ebp-0xf8],edx
  00496a45: 89 95 0c ff ff ff                               mov    DWORD PTR [ebp-0xf4],edx
  00496a4b: 89 95 10 ff ff ff                               mov    DWORD PTR [ebp-0xf0],edx
  00496a51: 74 0b                                           je     0x496a5e
  00496a53: 50                                              push   eax
  00496a54: e8 07 b6 fa ff                                  call   0x442060
  00496a59: 83 c4 04                                        add    esp,0x4
  00496a5c: 33 d2                                           xor    edx,edx
  00496a5e: 8b 85 e8 fe ff ff                               mov    eax,DWORD PTR [ebp-0x118]
  00496a64: 3b c2                                           cmp    eax,edx
  00496a66: 89 95 f8 fe ff ff                               mov    DWORD PTR [ebp-0x108],edx
  00496a6c: 89 95 fc fe ff ff                               mov    DWORD PTR [ebp-0x104],edx
  00496a72: 89 95 00 ff ff ff                               mov    DWORD PTR [ebp-0x100],edx
  00496a78: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00496a7f: 74 2b                                           je     0x496aac
  00496a81: 8b bd ec fe ff ff                               mov    edi,DWORD PTR [ebp-0x114]
  00496a87: 3b c7                                           cmp    eax,edi
  00496a89: 8b f0                                           mov    esi,eax
  00496a8b: 74 16                                           je     0x496aa3
  00496a8d: 6a 00                                           push   0x0
  00496a8f: 8b ce                                           mov    ecx,esi
  00496a91: e8 4a 20 00 00                                  call   0x498ae0
  00496a96: 83 c6 24                                        add    esi,0x24
  00496a99: 3b f7                                           cmp    esi,edi
  00496a9b: 75 f0                                           jne    0x496a8d
  00496a9d: 8b 85 e8 fe ff ff                               mov    eax,DWORD PTR [ebp-0x118]
  00496aa3: 50                                              push   eax
  00496aa4: e8 b7 b5 fa ff                                  call   0x442060
  00496aa9: 83 c4 04                                        add    esp,0x4
  00496aac: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00496aaf: 5f                                              pop    edi
  00496ab0: 5e                                              pop    esi
  00496ab1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00496ab8: 5b                                              pop    ebx
  00496ab9: 8b e5                                           mov    esp,ebp
  00496abb: 5d                                              pop    ebp
  00496abc: c2 0c 00                                        ret    0xc
  00496fd0: 55                                              push   ebp
  00496fd1: 8b ec                                           mov    ebp,esp
  00496fd3: 6a ff                                           push   0xffffffff
  00496fd5: 68 09 ad 4d 00                                  push   0x4dad09
  00496fda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00496fe0: 50                                              push   eax
  00496fe1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00496fe8: 83 ec 34                                        sub    esp,0x34
  00496feb: 53                                              push   ebx
  00496fec: 56                                              push   esi
  00496fed: 57                                              push   edi
  00496fee: 8b f9                                           mov    edi,ecx
  00496ff0: 81 7f 08 fe ff ff 1f                            cmp    DWORD PTR [edi+0x8],0x1ffffffe
  00496ff7: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00496ffa: 72 57                                           jb     0x497053
  00496ffc: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00496fff: 6a 00                                           push   0x0
  00497001: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00497004: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00497007: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0049700d: 83 c9 ff                                        or     ecx,0xffffffff
  00497010: 33 c0                                           xor    eax,eax
  00497012: bf a0 06 50 00                                  mov    edi,0x5006a0
  00497017: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00497019: f7 d1                                           not    ecx
  0049701b: 49                                              dec    ecx
  0049701c: 51                                              push   ecx
  0049701d: 68 a0 06 50 00                                  push   0x5006a0
  00497022: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00497025: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0049702b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0049702e: 51                                              push   ecx
  0049702f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00497032: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00497039: e8 42 e0 f6 ff                                  call   0x405080
  0049703e: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00497043: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00497046: 52                                              push   edx
  00497047: c7 45 c0 f8 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5f8
  0049704e: e8 03 ad 03 00                                  call   0x4d1d56
  00497053: 6a 18                                           push   0x18
  00497055: e8 96 af fa ff                                  call   0x441ff0
  0049705a: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0049705d: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00497060: 8b d8                                           mov    ebx,eax
  00497062: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00497065: c6 43 14 00                                     mov    BYTE PTR [ebx+0x14],0x0
  00497069: c6 43 15 00                                     mov    BYTE PTR [ebx+0x15],0x0
  0049706d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00497070: 89 03                                           mov    DWORD PTR [ebx],eax
  00497072: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00497075: 52                                              push   edx
  00497076: 8d 43 0c                                        lea    eax,[ebx+0xc]
  00497079: 50                                              push   eax
  0049707a: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0049707d: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00497080: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00497087: e8 34 1a 00 00                                  call   0x498ac0
  0049708c: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0049708f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00497092: 83 c4 0c                                        add    esp,0xc
  00497095: 42                                              inc    edx
  00497096: 3b f0                                           cmp    esi,eax
  00497098: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0049709b: 75 10                                           jne    0x4970ad
  0049709d: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004970a0: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004970a3: 89 19                                           mov    DWORD PTR [ecx],ebx
  004970a5: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004970a8: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  004970ab: eb 22                                           jmp    0x4970cf
  004970ad: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  004970b0: 84 c0                                           test   al,al
  004970b2: 74 0d                                           je     0x4970c1
  004970b4: 89 1e                                           mov    DWORD PTR [esi],ebx
  004970b6: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004970b9: 3b 30                                           cmp    esi,DWORD PTR [eax]
  004970bb: 75 12                                           jne    0x4970cf
  004970bd: 89 18                                           mov    DWORD PTR [eax],ebx
  004970bf: eb 0e                                           jmp    0x4970cf
  004970c1: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004970c4: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004970c7: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  004970ca: 75 03                                           jne    0x4970cf
  004970cc: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  004970cf: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004970d2: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004970d5: 84 d2                                           test   dl,dl
  004970d7: 8b c3                                           mov    eax,ebx
  004970d9: 0f 85 98 01 00 00                               jne    0x497277
  004970df: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004970e2: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004970e5: 8b 16                                           mov    edx,DWORD PTR [esi]
  004970e7: 3b ca                                           cmp    ecx,edx
  004970e9: 0f 85 c6 00 00 00                               jne    0x4971b5
  004970ef: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004970f2: 80 7a 14 00                                     cmp    BYTE PTR [edx+0x14],0x0
  004970f6: 75 1d                                           jne    0x497115
  004970f8: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  004970fc: c6 42 14 01                                     mov    BYTE PTR [edx+0x14],0x1
  00497100: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00497103: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00497106: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  0049710a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0049710d: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00497110: e9 54 01 00 00                                  jmp    0x497269
  00497115: 3b 41 08                                        cmp    eax,DWORD PTR [ecx+0x8]
  00497118: 75 3b                                           jne    0x497155
  0049711a: 8b c1                                           mov    eax,ecx
  0049711c: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0049711f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00497121: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00497124: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00497126: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  0049712a: 75 03                                           jne    0x49712f
  0049712c: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0049712f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00497132: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00497135: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00497138: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0049713b: 75 05                                           jne    0x497142
  0049713d: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00497140: eb 0e                                           jmp    0x497150
  00497142: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00497145: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00497147: 75 04                                           jne    0x49714d
  00497149: 89 0a                                           mov    DWORD PTR [edx],ecx
  0049714b: eb 03                                           jmp    0x497150
  0049714d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00497150: 89 01                                           mov    DWORD PTR [ecx],eax
  00497152: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00497155: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00497158: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  0049715c: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0049715f: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00497162: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00497166: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00497169: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0049716c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049716e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00497171: 89 31                                           mov    DWORD PTR [ecx],esi
  00497173: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00497176: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  0049717a: 75 03                                           jne    0x49717f
  0049717c: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0049717f: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00497182: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00497185: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00497188: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0049718b: 75 0b                                           jne    0x497198
  0049718d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00497190: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00497193: e9 ce 00 00 00                                  jmp    0x497266
  00497198: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0049719b: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  0049719e: 75 0b                                           jne    0x4971ab
  004971a0: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004971a3: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004971a6: e9 bb 00 00 00                                  jmp    0x497266
  004971ab: 89 16                                           mov    DWORD PTR [esi],edx
  004971ad: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004971b0: e9 b1 00 00 00                                  jmp    0x497266
  004971b5: 80 7a 14 00                                     cmp    BYTE PTR [edx+0x14],0x0
  004971b9: 75 1d                                           jne    0x4971d8
  004971bb: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  004971bf: c6 42 14 01                                     mov    BYTE PTR [edx+0x14],0x1
  004971c3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004971c6: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004971c9: c6 42 14 00                                     mov    BYTE PTR [edx+0x14],0x0
  004971cd: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004971d0: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004971d3: e9 91 00 00 00                                  jmp    0x497269
  004971d8: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  004971da: 75 3d                                           jne    0x497219
  004971dc: 8b c1                                           mov    eax,ecx
  004971de: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004971e0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004971e3: 89 10                                           mov    DWORD PTR [eax],edx
  004971e5: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004971e8: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  004971ec: 75 03                                           jne    0x4971f1
  004971ee: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004971f1: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004971f4: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004971f7: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004971fa: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004971fd: 75 05                                           jne    0x497204
  004971ff: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00497202: eb 0f                                           jmp    0x497213
  00497204: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00497207: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0049720a: 75 05                                           jne    0x497211
  0049720c: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0049720f: eb 02                                           jmp    0x497213
  00497211: 89 0a                                           mov    DWORD PTR [edx],ecx
  00497213: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00497216: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00497219: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0049721c: c6 41 14 01                                     mov    BYTE PTR [ecx+0x14],0x1
  00497220: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00497223: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00497226: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  0049722a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0049722d: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00497230: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00497233: 8b 32                                           mov    esi,DWORD PTR [edx]
  00497235: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00497238: 8b 32                                           mov    esi,DWORD PTR [edx]
  0049723a: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  0049723e: 75 03                                           jne    0x497243
  00497240: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00497243: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00497246: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00497249: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  0049724c: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0049724f: 75 05                                           jne    0x497256
  00497251: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00497254: eb 0e                                           jmp    0x497264
  00497256: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00497259: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0049725b: 75 04                                           jne    0x497261
  0049725d: 89 16                                           mov    DWORD PTR [esi],edx
  0049725f: eb 03                                           jmp    0x497264
  00497261: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00497264: 89 0a                                           mov    DWORD PTR [edx],ecx
  00497266: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00497269: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0049726c: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  0049726f: 84 d2                                           test   dl,dl
  00497271: 0f 84 68 fe ff ff                               je     0x4970df
  00497277: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0049727a: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0049727d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00497280: c6 40 14 01                                     mov    BYTE PTR [eax+0x14],0x1
  00497284: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00497287: 5f                                              pop    edi
  00497288: 89 18                                           mov    DWORD PTR [eax],ebx
  0049728a: 5e                                              pop    esi
  0049728b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00497292: 5b                                              pop    ebx
  00497293: 8b e5                                           mov    esp,ebp
  00497295: 5d                                              pop    ebp
  00497296: c2 10 00                                        ret    0x10
  00497bf0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00497bf2: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00497bf5: 84 d2                                           test   dl,dl
  00497bf7: 53                                              push   ebx
  00497bf8: 74 07                                           je     0x497c01
  00497bfa: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00497bfd: 89 01                                           mov    DWORD PTR [ecx],eax
  00497bff: 5b                                              pop    ebx
  00497c00: c3                                              ret
  00497c01: 8b 10                                           mov    edx,DWORD PTR [eax]
  00497c03: 8a 5a 15                                        mov    bl,BYTE PTR [edx+0x15]
  00497c06: 84 db                                           test   bl,bl
  00497c08: 75 1a                                           jne    0x497c24
  00497c0a: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00497c0d: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00497c10: 84 db                                           test   bl,bl
  00497c12: 75 0c                                           jne    0x497c20
  00497c14: 8b d0                                           mov    edx,eax
  00497c16: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00497c19: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00497c1c: 84 db                                           test   bl,bl
  00497c1e: 74 f4                                           je     0x497c14
  00497c20: 89 11                                           mov    DWORD PTR [ecx],edx
  00497c22: 5b                                              pop    ebx
  00497c23: c3                                              ret
  00497c24: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00497c27: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00497c2a: 84 d2                                           test   dl,dl
  00497c2c: 75 1b                                           jne    0x497c49
  00497c2e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00497c30: 3b 10                                           cmp    edx,DWORD PTR [eax]
  00497c32: 75 0c                                           jne    0x497c40
  00497c34: 89 01                                           mov    DWORD PTR [ecx],eax
  00497c36: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00497c39: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00497c3c: 84 d2                                           test   dl,dl
  00497c3e: 74 ee                                           je     0x497c2e
  00497c40: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00497c43: 84 d2                                           test   dl,dl
  00497c45: 75 02                                           jne    0x497c49
  00497c47: 89 01                                           mov    DWORD PTR [ecx],eax
  00497c49: 5b                                              pop    ebx
  00497c4a: c3                                              ret
  004992e0: 55                                              push   ebp
  004992e1: 8b ec                                           mov    ebp,esp
  004992e3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004992e9: 6a ff                                           push   0xffffffff
  004992eb: 68 69 ae 4d 00                                  push   0x4dae69
  004992f0: 50                                              push   eax
  004992f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004992f8: 53                                              push   ebx
  004992f9: 56                                              push   esi
  004992fa: 8b f1                                           mov    esi,ecx
  004992fc: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004992ff: 8a 55 08                                        mov    dl,BYTE PTR [ebp+0x8]
  00499302: 89 06                                           mov    DWORD PTR [esi],eax
  00499304: 33 db                                           xor    ebx,ebx
  00499306: 8d 4e 04                                        lea    ecx,[esi+0x4]
  00499309: 88 11                                           mov    BYTE PTR [ecx],dl
  0049930b: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0049930e: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00499311: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  00499314: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00499319: 8b 10                                           mov    edx,DWORD PTR [eax]
  0049931b: 52                                              push   edx
  0049931c: 53                                              push   ebx
  0049931d: 8d 45 08                                        lea    eax,[ebp+0x8]
  00499320: 50                                              push   eax
  00499321: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00499324: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0049932a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049932d: 3b cb                                           cmp    ecx,ebx
  0049932f: 74 2e                                           je     0x49935f
  00499331: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  00499334: 3a c3                                           cmp    al,bl
  00499336: 74 1d                                           je     0x499355
  00499338: 3c ff                                           cmp    al,0xff
  0049933a: 74 19                                           je     0x499355
  0049933c: fe c8                                           dec    al
  0049933e: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00499341: 8b c6                                           mov    eax,esi
  00499343: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00499346: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049934d: 5e                                              pop    esi
  0049934e: 5b                                              pop    ebx
  0049934f: 8b e5                                           mov    esp,ebp
  00499351: 5d                                              pop    ebp
  00499352: c2 14 00                                        ret    0x14
  00499355: 49                                              dec    ecx
  00499356: 51                                              push   ecx
  00499357: e8 04 8d fa ff                                  call   0x442060
  0049935c: 83 c4 04                                        add    esp,0x4
  0049935f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00499362: 8b c6                                           mov    eax,esi
  00499364: 5e                                              pop    esi
  00499365: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049936c: 5b                                              pop    ebx
  0049936d: 8b e5                                           mov    esp,ebp
  0049936f: 5d                                              pop    ebp
  00499370: c2 14 00                                        ret    0x14
  0049ad30: 55                                              push   ebp
  0049ad31: 8b ec                                           mov    ebp,esp
  0049ad33: 8b c1                                           mov    eax,ecx
  0049ad35: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049ad38: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049ad3a: 89 10                                           mov    DWORD PTR [eax],edx
  0049ad3c: 5d                                              pop    ebp
  0049ad3d: c2 04 00                                        ret    0x4
  0049ae40: 55                                              push   ebp
  0049ae41: 8b ec                                           mov    ebp,esp
  0049ae43: 8b c1                                           mov    eax,ecx
  0049ae45: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049ae48: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049ae4a: 89 10                                           mov    DWORD PTR [eax],edx
  0049ae4c: 5d                                              pop    ebp
  0049ae4d: c2 04 00                                        ret    0x4
  0049aed0: 55                                              push   ebp
  0049aed1: 8b ec                                           mov    ebp,esp
  0049aed3: 8b c1                                           mov    eax,ecx
  0049aed5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049aed8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049aeda: 89 10                                           mov    DWORD PTR [eax],edx
  0049aedc: 5d                                              pop    ebp
  0049aedd: c2 04 00                                        ret    0x4
  0049aee0: 55                                              push   ebp
  0049aee1: 8b ec                                           mov    ebp,esp
  0049aee3: 6a ff                                           push   0xffffffff
  0049aee5: 68 a9 af 4d 00                                  push   0x4dafa9
  0049aeea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049aef0: 50                                              push   eax
  0049aef1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049aef8: 83 ec 60                                        sub    esp,0x60
  0049aefb: 53                                              push   ebx
  0049aefc: 56                                              push   esi
  0049aefd: 57                                              push   edi
  0049aefe: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0049af01: 8b f1                                           mov    esi,ecx
  0049af03: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049af06: 57                                              push   edi
  0049af07: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  0049af0a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049af0d: e8 ae 0d 00 00                                  call   0x49bcc0
  0049af12: 83 c7 18                                        add    edi,0x18
  0049af15: 57                                              push   edi
  0049af16: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  0049af19: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0049af20: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  0049af26: c7 45 94 08 f9 4d 00                            mov    DWORD PTR [ebp-0x6c],0x4df908
  0049af2d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049af30: 85 c9                                           test   ecx,ecx
  0049af32: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0049af39: 75 04                                           jne    0x49af3f
  0049af3b: 33 ff                                           xor    edi,edi
  0049af3d: eb 1b                                           jmp    0x49af5a
  0049af3f: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0049af42: 2b d1                                           sub    edx,ecx
  0049af44: b8 67 66 66 66                                  mov    eax,0x66666667
  0049af49: f7 ea                                           imul   edx
  0049af4b: c1 fa 04                                        sar    edx,0x4
  0049af4e: 8b c2                                           mov    eax,edx
  0049af50: c1 e8 1f                                        shr    eax,0x1f
  0049af53: 03 d0                                           add    edx,eax
  0049af55: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049af58: 8b fa                                           mov    edi,edx
  0049af5a: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0049af5d: 85 db                                           test   ebx,ebx
  0049af5f: 0f 84 95 03 00 00                               je     0x49b2fa
  0049af65: 85 c9                                           test   ecx,ecx
  0049af67: 75 04                                           jne    0x49af6d
  0049af69: 33 d2                                           xor    edx,edx
  0049af6b: eb 16                                           jmp    0x49af83
  0049af6d: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049af70: 2b d1                                           sub    edx,ecx
  0049af72: b8 67 66 66 66                                  mov    eax,0x66666667
  0049af77: f7 ea                                           imul   edx
  0049af79: c1 fa 04                                        sar    edx,0x4
  0049af7c: 8b c2                                           mov    eax,edx
  0049af7e: c1 e8 1f                                        shr    eax,0x1f
  0049af81: 03 d0                                           add    edx,eax
  0049af83: b8 66 66 66 06                                  mov    eax,0x6666666
  0049af88: 2b c2                                           sub    eax,edx
  0049af8a: 3b c3                                           cmp    eax,ebx
  0049af8c: 73 2c                                           jae    0x49afba
  0049af8e: 68 80 05 50 00                                  push   0x500580
  0049af93: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0049af96: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  0049af9c: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0049af9f: 51                                              push   ecx
  0049afa0: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0049afa3: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0049afa7: e8 74 a4 f6 ff                                  call   0x405420
  0049afac: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0049afb1: 8d 55 bc                                        lea    edx,[ebp-0x44]
  0049afb4: 52                                              push   edx
  0049afb5: e8 9c 6d 03 00                                  call   0x4d1d56
  0049afba: 85 c9                                           test   ecx,ecx
  0049afbc: 75 04                                           jne    0x49afc2
  0049afbe: 33 d2                                           xor    edx,edx
  0049afc0: eb 16                                           jmp    0x49afd8
  0049afc2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049afc5: 2b d1                                           sub    edx,ecx
  0049afc7: b8 67 66 66 66                                  mov    eax,0x66666667
  0049afcc: f7 ea                                           imul   edx
  0049afce: c1 fa 04                                        sar    edx,0x4
  0049afd1: 8b c2                                           mov    eax,edx
  0049afd3: c1 e8 1f                                        shr    eax,0x1f
  0049afd6: 03 d0                                           add    edx,eax
  0049afd8: 03 d3                                           add    edx,ebx
  0049afda: 3b fa                                           cmp    edi,edx
  0049afdc: 0f 83 9a 01 00 00                               jae    0x49b17c
  0049afe2: 8b c7                                           mov    eax,edi
  0049afe4: d1 e8                                           shr    eax,1
  0049afe6: ba 66 66 66 06                                  mov    edx,0x6666666
  0049afeb: 2b d0                                           sub    edx,eax
  0049afed: 3b d7                                           cmp    edx,edi
  0049afef: 73 0c                                           jae    0x49affd
  0049aff1: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  0049aff8: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0049affb: eb 05                                           jmp    0x49b002
  0049affd: 03 f8                                           add    edi,eax
  0049afff: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  0049b002: 85 c9                                           test   ecx,ecx
  0049b004: 75 04                                           jne    0x49b00a
  0049b006: 33 d2                                           xor    edx,edx
  0049b008: eb 16                                           jmp    0x49b020
  0049b00a: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b00d: 2b d1                                           sub    edx,ecx
  0049b00f: b8 67 66 66 66                                  mov    eax,0x66666667
  0049b014: f7 ea                                           imul   edx
  0049b016: c1 fa 04                                        sar    edx,0x4
  0049b019: 8b c2                                           mov    eax,edx
  0049b01b: c1 e8 1f                                        shr    eax,0x1f
  0049b01e: 03 d0                                           add    edx,eax
  0049b020: 03 d3                                           add    edx,ebx
  0049b022: 3b fa                                           cmp    edi,edx
  0049b024: 73 25                                           jae    0x49b04b
  0049b026: 85 c9                                           test   ecx,ecx
  0049b028: 75 04                                           jne    0x49b02e
  0049b02a: 33 d2                                           xor    edx,edx
  0049b02c: eb 16                                           jmp    0x49b044
  0049b02e: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b031: 2b d1                                           sub    edx,ecx
  0049b033: b8 67 66 66 66                                  mov    eax,0x66666667
  0049b038: f7 ea                                           imul   edx
  0049b03a: c1 fa 04                                        sar    edx,0x4
  0049b03d: 8b ca                                           mov    ecx,edx
  0049b03f: c1 e9 1f                                        shr    ecx,0x1f
  0049b042: 03 d1                                           add    edx,ecx
  0049b044: 03 d3                                           add    edx,ebx
  0049b046: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049b049: 8b fa                                           mov    edi,edx
  0049b04b: 8d 14 bf                                        lea    edx,[edi+edi*4]
  0049b04e: c1 e2 03                                        shl    edx,0x3
  0049b051: 52                                              push   edx
  0049b052: e8 99 6f fa ff                                  call   0x441ff0
  0049b057: 8b f8                                           mov    edi,eax
  0049b059: 83 c4 04                                        add    esp,0x4
  0049b05c: 57                                              push   edi
  0049b05d: 51                                              push   ecx
  0049b05e: 8d 45 08                                        lea    eax,[ebp+0x8]
  0049b061: 8b cc                                           mov    ecx,esp
  0049b063: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0049b066: 50                                              push   eax
  0049b067: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0049b06a: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0049b06d: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0049b071: e8 ba fc ff ff                                  call   0x49ad30
  0049b076: 51                                              push   ecx
  0049b077: 8b cc                                           mov    ecx,esp
  0049b079: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0049b07c: 51                                              push   ecx
  0049b07d: 8b ce                                           mov    ecx,esi
  0049b07f: e8 9c 02 00 00                                  call   0x49b320
  0049b084: 8b ce                                           mov    ecx,esi
  0049b086: e8 45 11 00 00                                  call   0x49c1d0
  0049b08b: 8d 55 94                                        lea    edx,[ebp-0x6c]
  0049b08e: 52                                              push   edx
  0049b08f: 53                                              push   ebx
  0049b090: 50                                              push   eax
  0049b091: 8b ce                                           mov    ecx,esi
  0049b093: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0049b096: e8 05 0d 00 00                                  call   0x49bda0
  0049b09b: 50                                              push   eax
  0049b09c: 51                                              push   ecx
  0049b09d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0049b0a0: 8b c4                                           mov    eax,esp
  0049b0a2: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0049b0a5: 50                                              push   eax
  0049b0a6: 8b ce                                           mov    ecx,esi
  0049b0a8: e8 f3 fa ff ff                                  call   0x49aba0
  0049b0ad: 51                                              push   ecx
  0049b0ae: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049b0b1: 8b cc                                           mov    ecx,esp
  0049b0b3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0049b0b6: 52                                              push   edx
  0049b0b7: e8 74 fc ff ff                                  call   0x49ad30
  0049b0bc: 8b ce                                           mov    ecx,esi
  0049b0be: e8 0d 11 00 00                                  call   0x49c1d0
  0049b0c3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b0c6: 85 c0                                           test   eax,eax
  0049b0c8: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0049b0cf: 74 2d                                           je     0x49b0fe
  0049b0d1: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049b0d4: 8b f8                                           mov    edi,eax
  0049b0d6: 3b f9                                           cmp    edi,ecx
  0049b0d8: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0049b0db: 74 12                                           je     0x49b0ef
  0049b0dd: 8b 07                                           mov    eax,DWORD PTR [edi]
  0049b0df: 6a 00                                           push   0x0
  0049b0e1: 8b cf                                           mov    ecx,edi
  0049b0e3: ff 10                                           call   DWORD PTR [eax]
  0049b0e5: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049b0e8: 83 c7 28                                        add    edi,0x28
  0049b0eb: 3b f8                                           cmp    edi,eax
  0049b0ed: 75 ee                                           jne    0x49b0dd
  0049b0ef: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b0f2: 50                                              push   eax
  0049b0f3: e8 68 6f fa ff                                  call   0x442060
  0049b0f8: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  0049b0fb: 83 c4 04                                        add    esp,0x4
  0049b0fe: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049b101: 8d 0c 80                                        lea    ecx,[eax+eax*4]
  0049b104: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b107: 85 c0                                           test   eax,eax
  0049b109: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  0049b10c: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0049b10f: 75 15                                           jne    0x49b126
  0049b111: 33 d2                                           xor    edx,edx
  0049b113: 03 da                                           add    ebx,edx
  0049b115: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  0049b118: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  0049b11b: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0049b11e: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049b121: e9 d4 01 00 00                                  jmp    0x49b2fa
  0049b126: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049b129: 2b c8                                           sub    ecx,eax
  0049b12b: b8 67 66 66 66                                  mov    eax,0x66666667
  0049b130: f7 e9                                           imul   ecx
  0049b132: c1 fa 04                                        sar    edx,0x4
  0049b135: 8b c2                                           mov    eax,edx
  0049b137: c1 e8 1f                                        shr    eax,0x1f
  0049b13a: 03 d0                                           add    edx,eax
  0049b13c: 03 da                                           add    ebx,edx
  0049b13e: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  0049b141: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  0049b144: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0049b147: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049b14a: e9 ab 01 00 00                                  jmp    0x49b2fa
  0049b17c: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  0049b17f: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0049b182: 8b cf                                           mov    ecx,edi
  0049b184: 2b ca                                           sub    ecx,edx
  0049b186: b8 67 66 66 66                                  mov    eax,0x66666667
  0049b18b: f7 e9                                           imul   ecx
  0049b18d: c1 fa 04                                        sar    edx,0x4
  0049b190: 8b ca                                           mov    ecx,edx
  0049b192: c1 e9 1f                                        shr    ecx,0x1f
  0049b195: 03 d1                                           add    edx,ecx
  0049b197: 3b d3                                           cmp    edx,ebx
  0049b199: 0f 83 cd 00 00 00                               jae    0x49b26c
  0049b19f: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0049b1a2: 8d 3c 9b                                        lea    edi,[ebx+ebx*4]
  0049b1a5: c1 e7 03                                        shl    edi,0x3
  0049b1a8: 8d 04 17                                        lea    eax,[edi+edx*1]
  0049b1ab: 50                                              push   eax
  0049b1ac: 51                                              push   ecx
  0049b1ad: 8b cc                                           mov    ecx,esp
  0049b1af: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b1b2: 51                                              push   ecx
  0049b1b3: 8b ce                                           mov    ecx,esi
  0049b1b5: e8 e6 f9 ff ff                                  call   0x49aba0
  0049b1ba: 51                                              push   ecx
  0049b1bb: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049b1be: 8b cc                                           mov    ecx,esp
  0049b1c0: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b1c3: 52                                              push   edx
  0049b1c4: e8 67 fb ff ff                                  call   0x49ad30
  0049b1c9: 8b ce                                           mov    ecx,esi
  0049b1cb: e8 00 10 00 00                                  call   0x49c1d0
  0049b1d0: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0049b1d3: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049b1d6: 2b ca                                           sub    ecx,edx
  0049b1d8: 8d 45 94                                        lea    eax,[ebp-0x6c]
  0049b1db: 50                                              push   eax
  0049b1dc: b8 67 66 66 66                                  mov    eax,0x66666667
  0049b1e1: f7 e9                                           imul   ecx
  0049b1e3: c1 fa 04                                        sar    edx,0x4
  0049b1e6: 8b ca                                           mov    ecx,edx
  0049b1e8: c1 e9 1f                                        shr    ecx,0x1f
  0049b1eb: 03 d1                                           add    edx,ecx
  0049b1ed: 8b c3                                           mov    eax,ebx
  0049b1ef: 2b c2                                           sub    eax,edx
  0049b1f1: 50                                              push   eax
  0049b1f2: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049b1f5: 50                                              push   eax
  0049b1f6: 8b ce                                           mov    ecx,esi
  0049b1f8: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0049b1fc: e8 9f 0b 00 00                                  call   0x49bda0
  0049b201: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049b204: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  0049b207: 51                                              push   ecx
  0049b208: 51                                              push   ecx
  0049b209: 8b d4                                           mov    edx,esp
  0049b20b: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  0049b20e: 03 c7                                           add    eax,edi
  0049b210: 53                                              push   ebx
  0049b211: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049b214: 52                                              push   edx
  0049b215: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0049b218: 50                                              push   eax
  0049b219: 8b ce                                           mov    ecx,esi
  0049b21b: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0049b222: e8 79 f9 ff ff                                  call   0x49aba0
  0049b227: 8b c8                                           mov    ecx,eax
  0049b229: e8 52 0c 00 00                                  call   0x49be80
  0049b22e: 51                                              push   ecx
  0049b22f: 8b cc                                           mov    ecx,esp
  0049b231: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b234: e9 b0 00 00 00                                  jmp    0x49b2e9
  0049b26c: 57                                              push   edi
  0049b26d: 51                                              push   ecx
  0049b26e: 8d 55 0c                                        lea    edx,[ebp+0xc]
  0049b271: 8b cc                                           mov    ecx,esp
  0049b273: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b276: 52                                              push   edx
  0049b277: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0049b27a: e8 b1 fa ff ff                                  call   0x49ad30
  0049b27f: 51                                              push   ecx
  0049b280: 8b c4                                           mov    eax,esp
  0049b282: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b285: 53                                              push   ebx
  0049b286: 50                                              push   eax
  0049b287: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0049b28a: e8 f1 0b 00 00                                  call   0x49be80
  0049b28f: 8b ce                                           mov    ecx,esi
  0049b291: e8 3a 0f 00 00                                  call   0x49c1d0
  0049b296: 51                                              push   ecx
  0049b297: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049b29a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b29d: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049b2a0: 8b c4                                           mov    eax,esp
  0049b2a2: 51                                              push   ecx
  0049b2a3: 8b d4                                           mov    edx,esp
  0049b2a5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b2a8: 53                                              push   ebx
  0049b2a9: 89 08                                           mov    DWORD PTR [eax],ecx
  0049b2ab: 52                                              push   edx
  0049b2ac: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0049b2af: e8 cc 0b 00 00                                  call   0x49be80
  0049b2b4: 51                                              push   ecx
  0049b2b5: 8d 45 08                                        lea    eax,[ebp+0x8]
  0049b2b8: 8b cc                                           mov    ecx,esp
  0049b2ba: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b2bd: 50                                              push   eax
  0049b2be: e8 6d fa ff ff                                  call   0x49ad30
  0049b2c3: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0049b2c6: 51                                              push   ecx
  0049b2c7: e8 64 11 00 00                                  call   0x49c430
  0049b2cc: 83 c4 10                                        add    esp,0x10
  0049b2cf: 8d 55 94                                        lea    edx,[ebp-0x6c]
  0049b2d2: 52                                              push   edx
  0049b2d3: 51                                              push   ecx
  0049b2d4: 8b c4                                           mov    eax,esp
  0049b2d6: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b2d9: 53                                              push   ebx
  0049b2da: 50                                              push   eax
  0049b2db: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0049b2de: e8 4d 00 00 00                                  call   0x49b330
  0049b2e3: 51                                              push   ecx
  0049b2e4: 8b cc                                           mov    ecx,esp
  0049b2e6: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b2e9: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049b2ec: 52                                              push   edx
  0049b2ed: e8 3e fa ff ff                                  call   0x49ad30
  0049b2f2: e8 b9 0f 00 00                                  call   0x49c2b0
  0049b2f7: 83 c4 0c                                        add    esp,0xc
  0049b2fa: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  0049b2fd: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0049b304: e8 37 1f 00 00                                  call   0x49d240
  0049b309: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049b30c: 5f                                              pop    edi
  0049b30d: 5e                                              pop    esi
  0049b30e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049b315: 5b                                              pop    ebx
  0049b316: 8b e5                                           mov    esp,ebp
  0049b318: 5d                                              pop    ebp
  0049b319: c2 0c 00                                        ret    0xc
  0049b350: 55                                              push   ebp
  0049b351: 8b ec                                           mov    ebp,esp
  0049b353: 6a ff                                           push   0xffffffff
  0049b355: 68 c9 af 4d 00                                  push   0x4dafc9
  0049b35a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049b360: 50                                              push   eax
  0049b361: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049b368: 83 ec 44                                        sub    esp,0x44
  0049b36b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049b36e: 53                                              push   ebx
  0049b36f: 56                                              push   esi
  0049b370: 8b f1                                           mov    esi,ecx
  0049b372: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0049b374: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0049b377: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0049b37a: 89 4d dc                                        mov    DWORD PTR [ebp-0x24],ecx
  0049b37d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049b380: 85 c9                                           test   ecx,ecx
  0049b382: 57                                              push   edi
  0049b383: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049b386: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  0049b389: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0049b38c: 75 04                                           jne    0x49b392
  0049b38e: 33 ff                                           xor    edi,edi
  0049b390: eb 17                                           jmp    0x49b3a9
  0049b392: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0049b395: 2b d1                                           sub    edx,ecx
  0049b397: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049b39c: f7 ea                                           imul   edx
  0049b39e: d1 fa                                           sar    edx,1
  0049b3a0: 8b c2                                           mov    eax,edx
  0049b3a2: c1 e8 1f                                        shr    eax,0x1f
  0049b3a5: 03 d0                                           add    edx,eax
  0049b3a7: 8b fa                                           mov    edi,edx
  0049b3a9: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0049b3ac: 85 db                                           test   ebx,ebx
  0049b3ae: 0f 84 53 03 00 00                               je     0x49b707
  0049b3b4: 85 c9                                           test   ecx,ecx
  0049b3b6: 75 04                                           jne    0x49b3bc
  0049b3b8: 33 d2                                           xor    edx,edx
  0049b3ba: eb 15                                           jmp    0x49b3d1
  0049b3bc: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b3bf: 2b d1                                           sub    edx,ecx
  0049b3c1: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049b3c6: f7 ea                                           imul   edx
  0049b3c8: d1 fa                                           sar    edx,1
  0049b3ca: 8b c2                                           mov    eax,edx
  0049b3cc: c1 e8 1f                                        shr    eax,0x1f
  0049b3cf: 03 d0                                           add    edx,eax
  0049b3d1: b8 55 55 55 15                                  mov    eax,0x15555555
  0049b3d6: 2b c2                                           sub    eax,edx
  0049b3d8: 3b c3                                           cmp    eax,ebx
  0049b3da: 73 2f                                           jae    0x49b40b
  0049b3dc: 68 80 05 50 00                                  push   0x500580
  0049b3e1: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  0049b3e4: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  0049b3ea: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  0049b3ed: 51                                              push   ecx
  0049b3ee: 8d 4d b0                                        lea    ecx,[ebp-0x50]
  0049b3f1: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0049b3f8: e8 23 a0 f6 ff                                  call   0x405420
  0049b3fd: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0049b402: 8d 55 b0                                        lea    edx,[ebp-0x50]
  0049b405: 52                                              push   edx
  0049b406: e8 4b 69 03 00                                  call   0x4d1d56
  0049b40b: 85 c9                                           test   ecx,ecx
  0049b40d: 75 04                                           jne    0x49b413
  0049b40f: 33 d2                                           xor    edx,edx
  0049b411: eb 15                                           jmp    0x49b428
  0049b413: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b416: 2b d1                                           sub    edx,ecx
  0049b418: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049b41d: f7 ea                                           imul   edx
  0049b41f: d1 fa                                           sar    edx,1
  0049b421: 8b c2                                           mov    eax,edx
  0049b423: c1 e8 1f                                        shr    eax,0x1f
  0049b426: 03 d0                                           add    edx,eax
  0049b428: 03 d3                                           add    edx,ebx
  0049b42a: 3b fa                                           cmp    edi,edx
  0049b42c: 0f 83 6f 01 00 00                               jae    0x49b5a1
  0049b432: 8b c7                                           mov    eax,edi
  0049b434: d1 e8                                           shr    eax,1
  0049b436: ba 55 55 55 15                                  mov    edx,0x15555555
  0049b43b: 2b d0                                           sub    edx,eax
  0049b43d: 3b d7                                           cmp    edx,edi
  0049b43f: 73 04                                           jae    0x49b445
  0049b441: 33 ff                                           xor    edi,edi
  0049b443: eb 02                                           jmp    0x49b447
  0049b445: 03 f8                                           add    edi,eax
  0049b447: 85 c9                                           test   ecx,ecx
  0049b449: 75 04                                           jne    0x49b44f
  0049b44b: 33 d2                                           xor    edx,edx
  0049b44d: eb 15                                           jmp    0x49b464
  0049b44f: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b452: 2b d1                                           sub    edx,ecx
  0049b454: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049b459: f7 ea                                           imul   edx
  0049b45b: d1 fa                                           sar    edx,1
  0049b45d: 8b c2                                           mov    eax,edx
  0049b45f: c1 e8 1f                                        shr    eax,0x1f
  0049b462: 03 d0                                           add    edx,eax
  0049b464: 03 d3                                           add    edx,ebx
  0049b466: 3b fa                                           cmp    edi,edx
  0049b468: 73 20                                           jae    0x49b48a
  0049b46a: 85 c9                                           test   ecx,ecx
  0049b46c: 75 04                                           jne    0x49b472
  0049b46e: 33 d2                                           xor    edx,edx
  0049b470: eb 15                                           jmp    0x49b487
  0049b472: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b475: 2b d1                                           sub    edx,ecx
  0049b477: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049b47c: f7 ea                                           imul   edx
  0049b47e: d1 fa                                           sar    edx,1
  0049b480: 8b ca                                           mov    ecx,edx
  0049b482: c1 e9 1f                                        shr    ecx,0x1f
  0049b485: 03 d1                                           add    edx,ecx
  0049b487: 8d 3c 1a                                        lea    edi,[edx+ebx*1]
  0049b48a: 8d 14 7f                                        lea    edx,[edi+edi*2]
  0049b48d: c1 e2 02                                        shl    edx,0x2
  0049b490: 52                                              push   edx
  0049b491: e8 5a 6b fa ff                                  call   0x441ff0
  0049b496: 83 c4 04                                        add    esp,0x4
  0049b499: 50                                              push   eax
  0049b49a: 51                                              push   ecx
  0049b49b: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0049b49e: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0049b4a1: 8d 45 08                                        lea    eax,[ebp+0x8]
  0049b4a4: 8b cc                                           mov    ecx,esp
  0049b4a6: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0049b4a9: 50                                              push   eax
  0049b4aa: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0049b4b1: e8 8a f9 ff ff                                  call   0x49ae40
  0049b4b6: 51                                              push   ecx
  0049b4b7: 8b cc                                           mov    ecx,esp
  0049b4b9: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0049b4bc: 51                                              push   ecx
  0049b4bd: 8b ce                                           mov    ecx,esi
  0049b4bf: e8 5c 02 00 00                                  call   0x49b720
  0049b4c4: 8b ce                                           mov    ecx,esi
  0049b4c6: e8 e5 10 00 00                                  call   0x49c5b0
  0049b4cb: 8d 55 dc                                        lea    edx,[ebp-0x24]
  0049b4ce: 52                                              push   edx
  0049b4cf: 53                                              push   ebx
  0049b4d0: 50                                              push   eax
  0049b4d1: 8b ce                                           mov    ecx,esi
  0049b4d3: e8 48 0a 00 00                                  call   0x49bf20
  0049b4d8: 50                                              push   eax
  0049b4d9: 51                                              push   ecx
  0049b4da: 8b c4                                           mov    eax,esp
  0049b4dc: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0049b4df: 50                                              push   eax
  0049b4e0: 8b ce                                           mov    ecx,esi
  0049b4e2: e8 29 f7 ff ff                                  call   0x49ac10
  0049b4e7: 51                                              push   ecx
  0049b4e8: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049b4eb: 8b cc                                           mov    ecx,esp
  0049b4ed: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0049b4f0: 52                                              push   edx
  0049b4f1: e8 4a f9 ff ff                                  call   0x49ae40
  0049b4f6: 8b ce                                           mov    ecx,esi
  0049b4f8: e8 b3 10 00 00                                  call   0x49c5b0
  0049b4fd: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b500: 85 c0                                           test   eax,eax
  0049b502: 74 1a                                           je     0x49b51e
  0049b504: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049b507: 3b c1                                           cmp    eax,ecx
  0049b509: 74 07                                           je     0x49b512
  0049b50b: 83 c0 0c                                        add    eax,0xc
  0049b50e: 3b c1                                           cmp    eax,ecx
  0049b510: 75 f9                                           jne    0x49b50b
  0049b512: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b515: 50                                              push   eax
  0049b516: e8 45 6b fa ff                                  call   0x442060
  0049b51b: 83 c4 04                                        add    esp,0x4
  0049b51e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b521: 85 c0                                           test   eax,eax
  0049b523: 8d 0c 7f                                        lea    ecx,[edi+edi*2]
  0049b526: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0049b529: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049b52c: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0049b52f: 75 24                                           jne    0x49b555
  0049b531: 33 d2                                           xor    edx,edx
  0049b533: 8d 04 1a                                        lea    eax,[edx+ebx*1]
  0049b536: 8d 0c 40                                        lea    ecx,[eax+eax*2]
  0049b539: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049b53c: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0049b53f: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049b542: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049b545: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049b54c: 5f                                              pop    edi
  0049b54d: 5e                                              pop    esi
  0049b54e: 5b                                              pop    ebx
  0049b54f: 8b e5                                           mov    esp,ebp
  0049b551: 5d                                              pop    ebp
  0049b552: c2 0c 00                                        ret    0xc
  0049b555: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049b558: 2b c8                                           sub    ecx,eax
  0049b55a: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049b55f: f7 e9                                           imul   ecx
  0049b561: d1 fa                                           sar    edx,1
  0049b563: 8b c2                                           mov    eax,edx
  0049b565: c1 e8 1f                                        shr    eax,0x1f
  0049b568: 03 d0                                           add    edx,eax
  0049b56a: 8d 04 1a                                        lea    eax,[edx+ebx*1]
  0049b56d: 8d 0c 40                                        lea    ecx,[eax+eax*2]
  0049b570: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049b573: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0049b576: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049b579: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049b57c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049b583: 5f                                              pop    edi
  0049b584: 5e                                              pop    esi
  0049b585: 5b                                              pop    ebx
  0049b586: 8b e5                                           mov    esp,ebp
  0049b588: 5d                                              pop    ebp
  0049b589: c2 0c 00                                        ret    0xc
  0049b5a1: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  0049b5a4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0049b5a7: 8b cf                                           mov    ecx,edi
  0049b5a9: 2b ca                                           sub    ecx,edx
  0049b5ab: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049b5b0: f7 e9                                           imul   ecx
  0049b5b2: d1 fa                                           sar    edx,1
  0049b5b4: 8b ca                                           mov    ecx,edx
  0049b5b6: c1 e9 1f                                        shr    ecx,0x1f
  0049b5b9: 03 d1                                           add    edx,ecx
  0049b5bb: 3b d3                                           cmp    edx,ebx
  0049b5bd: 0f 83 b6 00 00 00                               jae    0x49b679
  0049b5c3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0049b5c6: 8d 3c 5b                                        lea    edi,[ebx+ebx*2]
  0049b5c9: c1 e7 02                                        shl    edi,0x2
  0049b5cc: 8d 04 17                                        lea    eax,[edi+edx*1]
  0049b5cf: 50                                              push   eax
  0049b5d0: 51                                              push   ecx
  0049b5d1: 8b cc                                           mov    ecx,esp
  0049b5d3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b5d6: 51                                              push   ecx
  0049b5d7: 8b ce                                           mov    ecx,esi
  0049b5d9: e8 32 f6 ff ff                                  call   0x49ac10
  0049b5de: 51                                              push   ecx
  0049b5df: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049b5e2: 8b cc                                           mov    ecx,esp
  0049b5e4: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b5e7: 52                                              push   edx
  0049b5e8: e8 53 f8 ff ff                                  call   0x49ae40
  0049b5ed: 8b ce                                           mov    ecx,esi
  0049b5ef: e8 bc 0f 00 00                                  call   0x49c5b0
  0049b5f4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0049b5f7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049b5fa: 2b ca                                           sub    ecx,edx
  0049b5fc: 8d 45 dc                                        lea    eax,[ebp-0x24]
  0049b5ff: 50                                              push   eax
  0049b600: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049b605: f7 e9                                           imul   ecx
  0049b607: d1 fa                                           sar    edx,1
  0049b609: 8b ca                                           mov    ecx,edx
  0049b60b: c1 e9 1f                                        shr    ecx,0x1f
  0049b60e: 03 d1                                           add    edx,ecx
  0049b610: 8b c3                                           mov    eax,ebx
  0049b612: 2b c2                                           sub    eax,edx
  0049b614: 50                                              push   eax
  0049b615: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049b618: 50                                              push   eax
  0049b619: 8b ce                                           mov    ecx,esi
  0049b61b: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  0049b622: e8 f9 08 00 00                                  call   0x49bf20
  0049b627: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049b62a: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0049b62d: 51                                              push   ecx
  0049b62e: 51                                              push   ecx
  0049b62f: 8b d4                                           mov    edx,esp
  0049b631: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b634: 03 c7                                           add    eax,edi
  0049b636: 53                                              push   ebx
  0049b637: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049b63a: 52                                              push   edx
  0049b63b: 8d 45 10                                        lea    eax,[ebp+0x10]
  0049b63e: 50                                              push   eax
  0049b63f: 8b ce                                           mov    ecx,esi
  0049b641: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0049b648: e8 c3 f5 ff ff                                  call   0x49ac10
  0049b64d: 8b c8                                           mov    ecx,eax
  0049b64f: e8 1c 09 00 00                                  call   0x49bf70
  0049b654: 51                                              push   ecx
  0049b655: 8b cc                                           mov    ecx,esp
  0049b657: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0049b65a: e9 97 00 00 00                                  jmp    0x49b6f6
  0049b679: 57                                              push   edi
  0049b67a: 51                                              push   ecx
  0049b67b: 8d 55 0c                                        lea    edx,[ebp+0xc]
  0049b67e: 8b cc                                           mov    ecx,esp
  0049b680: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b683: 52                                              push   edx
  0049b684: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0049b687: e8 b4 f7 ff ff                                  call   0x49ae40
  0049b68c: 51                                              push   ecx
  0049b68d: 8b c4                                           mov    eax,esp
  0049b68f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b692: 53                                              push   ebx
  0049b693: 50                                              push   eax
  0049b694: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0049b697: e8 d4 08 00 00                                  call   0x49bf70
  0049b69c: 8b ce                                           mov    ecx,esi
  0049b69e: e8 0d 0f 00 00                                  call   0x49c5b0
  0049b6a3: 51                                              push   ecx
  0049b6a4: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049b6a7: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b6aa: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049b6ad: 8b c4                                           mov    eax,esp
  0049b6af: 51                                              push   ecx
  0049b6b0: 8b d4                                           mov    edx,esp
  0049b6b2: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b6b5: 53                                              push   ebx
  0049b6b6: 89 08                                           mov    DWORD PTR [eax],ecx
  0049b6b8: 52                                              push   edx
  0049b6b9: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0049b6bc: e8 af 08 00 00                                  call   0x49bf70
  0049b6c1: 51                                              push   ecx
  0049b6c2: 8d 45 08                                        lea    eax,[ebp+0x8]
  0049b6c5: 8b cc                                           mov    ecx,esp
  0049b6c7: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b6ca: 50                                              push   eax
  0049b6cb: e8 70 f7 ff ff                                  call   0x49ae40
  0049b6d0: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0049b6d3: 51                                              push   ecx
  0049b6d4: e8 67 0f 00 00                                  call   0x49c640
  0049b6d9: 83 c4 10                                        add    esp,0x10
  0049b6dc: 8d 55 dc                                        lea    edx,[ebp-0x24]
  0049b6df: 52                                              push   edx
  0049b6e0: 51                                              push   ecx
  0049b6e1: 8b c4                                           mov    eax,esp
  0049b6e3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b6e6: 53                                              push   ebx
  0049b6e7: 50                                              push   eax
  0049b6e8: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0049b6eb: e8 40 00 00 00                                  call   0x49b730
  0049b6f0: 51                                              push   ecx
  0049b6f1: 8b cc                                           mov    ecx,esp
  0049b6f3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049b6f6: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049b6f9: 52                                              push   edx
  0049b6fa: e8 41 f7 ff ff                                  call   0x49ae40
  0049b6ff: e8 fc 0e 00 00                                  call   0x49c600
  0049b704: 83 c4 0c                                        add    esp,0xc
  0049b707: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049b70a: 5f                                              pop    edi
  0049b70b: 5e                                              pop    esi
  0049b70c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049b713: 5b                                              pop    ebx
  0049b714: 8b e5                                           mov    esp,ebp
  0049b716: 5d                                              pop    ebp
  0049b717: c2 0c 00                                        ret    0xc
  0049b750: 55                                              push   ebp
  0049b751: 8b ec                                           mov    ebp,esp
  0049b753: 6a ff                                           push   0xffffffff
  0049b755: 68 07 b0 4d 00                                  push   0x4db007
  0049b75a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049b760: 50                                              push   eax
  0049b761: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049b768: 83 ec 7c                                        sub    esp,0x7c
  0049b76b: 53                                              push   ebx
  0049b76c: 56                                              push   esi
  0049b76d: 57                                              push   edi
  0049b76e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0049b771: 8b f1                                           mov    esi,ecx
  0049b773: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049b776: 57                                              push   edi
  0049b777: 8d 8d 78 ff ff ff                               lea    ecx,[ebp-0x88]
  0049b77d: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049b780: e8 9b 05 00 00                                  call   0x49bd20
  0049b785: 8d 47 10                                        lea    eax,[edi+0x10]
  0049b788: 50                                              push   eax
  0049b789: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  0049b78c: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0049b793: e8 08 07 00 00                                  call   0x49bea0
  0049b798: 8a 4f 20                                        mov    cl,BYTE PTR [edi+0x20]
  0049b79b: 8b 57 24                                        mov    edx,DWORD PTR [edi+0x24]
  0049b79e: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  0049b7a1: 88 4d 98                                        mov    BYTE PTR [ebp-0x68],cl
  0049b7a4: 8b 4f 2c                                        mov    ecx,DWORD PTR [edi+0x2c]
  0049b7a7: 89 55 9c                                        mov    DWORD PTR [ebp-0x64],edx
  0049b7aa: 8b 57 30                                        mov    edx,DWORD PTR [edi+0x30]
  0049b7ad: 89 4d a4                                        mov    DWORD PTR [ebp-0x5c],ecx
  0049b7b0: 83 c7 34                                        add    edi,0x34
  0049b7b3: 57                                              push   edi
  0049b7b4: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  0049b7b7: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0049b7bb: 89 45 a0                                        mov    DWORD PTR [ebp-0x60],eax
  0049b7be: 89 55 a8                                        mov    DWORD PTR [ebp-0x58],edx
  0049b7c1: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  0049b7c7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049b7ca: 85 c9                                           test   ecx,ecx
  0049b7cc: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0049b7d3: 75 04                                           jne    0x49b7d9
  0049b7d5: 33 ff                                           xor    edi,edi
  0049b7d7: eb 1b                                           jmp    0x49b7f4
  0049b7d9: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0049b7dc: 2b d1                                           sub    edx,ecx
  0049b7de: b8 79 78 78 78                                  mov    eax,0x78787879
  0049b7e3: f7 ea                                           imul   edx
  0049b7e5: c1 fa 05                                        sar    edx,0x5
  0049b7e8: 8b c2                                           mov    eax,edx
  0049b7ea: c1 e8 1f                                        shr    eax,0x1f
  0049b7ed: 03 d0                                           add    edx,eax
  0049b7ef: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049b7f2: 8b fa                                           mov    edi,edx
  0049b7f4: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0049b7f7: 85 db                                           test   ebx,ebx
  0049b7f9: 0f 84 a5 03 00 00                               je     0x49bba4
  0049b7ff: 85 c9                                           test   ecx,ecx
  0049b801: 75 04                                           jne    0x49b807
  0049b803: 33 d2                                           xor    edx,edx
  0049b805: eb 16                                           jmp    0x49b81d
  0049b807: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b80a: 2b d1                                           sub    edx,ecx
  0049b80c: b8 79 78 78 78                                  mov    eax,0x78787879
  0049b811: f7 ea                                           imul   edx
  0049b813: c1 fa 05                                        sar    edx,0x5
  0049b816: 8b c2                                           mov    eax,edx
  0049b818: c1 e8 1f                                        shr    eax,0x1f
  0049b81b: 03 d0                                           add    edx,eax
  0049b81d: b8 c3 c3 c3 03                                  mov    eax,0x3c3c3c3
  0049b822: 2b c2                                           sub    eax,edx
  0049b824: 3b c3                                           cmp    eax,ebx
  0049b826: 73 2c                                           jae    0x49b854
  0049b828: 68 80 05 50 00                                  push   0x500580
  0049b82d: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0049b830: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  0049b836: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0049b839: 51                                              push   ecx
  0049b83a: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0049b83d: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0049b841: e8 da 9b f6 ff                                  call   0x405420
  0049b846: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0049b84b: 8d 55 bc                                        lea    edx,[ebp-0x44]
  0049b84e: 52                                              push   edx
  0049b84f: e8 02 65 03 00                                  call   0x4d1d56
  0049b854: 85 c9                                           test   ecx,ecx
  0049b856: 75 04                                           jne    0x49b85c
  0049b858: 33 d2                                           xor    edx,edx
  0049b85a: eb 16                                           jmp    0x49b872
  0049b85c: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b85f: 2b d1                                           sub    edx,ecx
  0049b861: b8 79 78 78 78                                  mov    eax,0x78787879
  0049b866: f7 ea                                           imul   edx
  0049b868: c1 fa 05                                        sar    edx,0x5
  0049b86b: 8b c2                                           mov    eax,edx
  0049b86d: c1 e8 1f                                        shr    eax,0x1f
  0049b870: 03 d0                                           add    edx,eax
  0049b872: 03 d3                                           add    edx,ebx
  0049b874: 3b fa                                           cmp    edi,edx
  0049b876: 0f 83 96 01 00 00                               jae    0x49ba12
  0049b87c: 8b c7                                           mov    eax,edi
  0049b87e: d1 e8                                           shr    eax,1
  0049b880: ba c3 c3 c3 03                                  mov    edx,0x3c3c3c3
  0049b885: 2b d0                                           sub    edx,eax
  0049b887: 3b d7                                           cmp    edx,edi
  0049b889: 73 0c                                           jae    0x49b897
  0049b88b: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  0049b892: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0049b895: eb 05                                           jmp    0x49b89c
  0049b897: 03 f8                                           add    edi,eax
  0049b899: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  0049b89c: 85 c9                                           test   ecx,ecx
  0049b89e: 75 04                                           jne    0x49b8a4
  0049b8a0: 33 d2                                           xor    edx,edx
  0049b8a2: eb 16                                           jmp    0x49b8ba
  0049b8a4: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b8a7: 2b d1                                           sub    edx,ecx
  0049b8a9: b8 79 78 78 78                                  mov    eax,0x78787879
  0049b8ae: f7 ea                                           imul   edx
  0049b8b0: c1 fa 05                                        sar    edx,0x5
  0049b8b3: 8b c2                                           mov    eax,edx
  0049b8b5: c1 e8 1f                                        shr    eax,0x1f
  0049b8b8: 03 d0                                           add    edx,eax
  0049b8ba: 03 d3                                           add    edx,ebx
  0049b8bc: 3b fa                                           cmp    edi,edx
  0049b8be: 73 25                                           jae    0x49b8e5
  0049b8c0: 85 c9                                           test   ecx,ecx
  0049b8c2: 75 04                                           jne    0x49b8c8
  0049b8c4: 33 d2                                           xor    edx,edx
  0049b8c6: eb 16                                           jmp    0x49b8de
  0049b8c8: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049b8cb: 2b d1                                           sub    edx,ecx
  0049b8cd: b8 79 78 78 78                                  mov    eax,0x78787879
  0049b8d2: f7 ea                                           imul   edx
  0049b8d4: c1 fa 05                                        sar    edx,0x5
  0049b8d7: 8b ca                                           mov    ecx,edx
  0049b8d9: c1 e9 1f                                        shr    ecx,0x1f
  0049b8dc: 03 d1                                           add    edx,ecx
  0049b8de: 03 d3                                           add    edx,ebx
  0049b8e0: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049b8e3: 8b fa                                           mov    edi,edx
  0049b8e5: 8b d7                                           mov    edx,edi
  0049b8e7: c1 e2 04                                        shl    edx,0x4
  0049b8ea: 03 d7                                           add    edx,edi
  0049b8ec: c1 e2 02                                        shl    edx,0x2
  0049b8ef: 52                                              push   edx
  0049b8f0: e8 fb 66 fa ff                                  call   0x441ff0
  0049b8f5: 8b f8                                           mov    edi,eax
  0049b8f7: 83 c4 04                                        add    esp,0x4
  0049b8fa: 57                                              push   edi
  0049b8fb: 51                                              push   ecx
  0049b8fc: 8d 45 08                                        lea    eax,[ebp+0x8]
  0049b8ff: 8b cc                                           mov    ecx,esp
  0049b901: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0049b904: 50                                              push   eax
  0049b905: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0049b908: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0049b90b: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0049b90f: e8 bc f5 ff ff                                  call   0x49aed0
  0049b914: 51                                              push   ecx
  0049b915: 8b cc                                           mov    ecx,esp
  0049b917: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0049b91a: 51                                              push   ecx
  0049b91b: 8b ce                                           mov    ecx,esi
  0049b91d: e8 1e 03 00 00                                  call   0x49bc40
  0049b922: 8b ce                                           mov    ecx,esi
  0049b924: e8 67 0d 00 00                                  call   0x49c690
  0049b929: 8d 95 78 ff ff ff                               lea    edx,[ebp-0x88]
  0049b92f: 52                                              push   edx
  0049b930: 53                                              push   ebx
  0049b931: 50                                              push   eax
  0049b932: 8b ce                                           mov    ecx,esi
  0049b934: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0049b937: e8 54 06 00 00                                  call   0x49bf90
  0049b93c: 50                                              push   eax
  0049b93d: 51                                              push   ecx
  0049b93e: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0049b941: 8b c4                                           mov    eax,esp
  0049b943: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0049b946: 50                                              push   eax
  0049b947: 8b ce                                           mov    ecx,esi
  0049b949: e8 d2 f2 ff ff                                  call   0x49ac20
  0049b94e: 51                                              push   ecx
  0049b94f: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049b952: 8b cc                                           mov    ecx,esp
  0049b954: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0049b957: 52                                              push   edx
  0049b958: e8 73 f5 ff ff                                  call   0x49aed0
  0049b95d: 8b ce                                           mov    ecx,esi
  0049b95f: e8 2c 0d 00 00                                  call   0x49c690
  0049b964: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b967: 85 c0                                           test   eax,eax
  0049b969: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0049b970: 74 2c                                           je     0x49b99e
  0049b972: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049b975: 8b f8                                           mov    edi,eax
  0049b977: 3b f9                                           cmp    edi,ecx
  0049b979: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0049b97c: 74 11                                           je     0x49b98f
  0049b97e: 8b cf                                           mov    ecx,edi
  0049b980: e8 cb ea ff ff                                  call   0x49a450
  0049b985: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049b988: 83 c7 44                                        add    edi,0x44
  0049b98b: 3b f8                                           cmp    edi,eax
  0049b98d: 75 ef                                           jne    0x49b97e
  0049b98f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b992: 50                                              push   eax
  0049b993: e8 c8 66 fa ff                                  call   0x442060
  0049b998: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  0049b99b: 83 c4 04                                        add    esp,0x4
  0049b99e: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049b9a1: 8b c8                                           mov    ecx,eax
  0049b9a3: c1 e1 04                                        shl    ecx,0x4
  0049b9a6: 03 c8                                           add    ecx,eax
  0049b9a8: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049b9ab: 85 c0                                           test   eax,eax
  0049b9ad: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049b9b0: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0049b9b3: 75 04                                           jne    0x49b9b9
  0049b9b5: 33 d2                                           xor    edx,edx
  0049b9b7: eb 16                                           jmp    0x49b9cf
  0049b9b9: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049b9bc: 2b c8                                           sub    ecx,eax
  0049b9be: b8 79 78 78 78                                  mov    eax,0x78787879
  0049b9c3: f7 e9                                           imul   ecx
  0049b9c5: c1 fa 05                                        sar    edx,0x5
  0049b9c8: 8b c2                                           mov    eax,edx
  0049b9ca: c1 e8 1f                                        shr    eax,0x1f
  0049b9cd: 03 d0                                           add    edx,eax
  0049b9cf: 03 da                                           add    ebx,edx
  0049b9d1: 8b cb                                           mov    ecx,ebx
  0049b9d3: c1 e1 04                                        shl    ecx,0x4
  0049b9d6: 03 cb                                           add    ecx,ebx
  0049b9d8: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0049b9db: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0049b9de: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049b9e1: e9 be 01 00 00                                  jmp    0x49bba4
  0049ba12: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  0049ba15: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0049ba18: 8b cf                                           mov    ecx,edi
  0049ba1a: 2b ca                                           sub    ecx,edx
  0049ba1c: b8 79 78 78 78                                  mov    eax,0x78787879
  0049ba21: f7 e9                                           imul   ecx
  0049ba23: c1 fa 05                                        sar    edx,0x5
  0049ba26: 8b c2                                           mov    eax,edx
  0049ba28: c1 e8 1f                                        shr    eax,0x1f
  0049ba2b: 03 d0                                           add    edx,eax
  0049ba2d: 3b d3                                           cmp    edx,ebx
  0049ba2f: 0f 83 de 00 00 00                               jae    0x49bb13
  0049ba35: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049ba38: 8b fb                                           mov    edi,ebx
  0049ba3a: c1 e7 04                                        shl    edi,0x4
  0049ba3d: 03 fb                                           add    edi,ebx
  0049ba3f: c1 e7 02                                        shl    edi,0x2
  0049ba42: 8d 14 0f                                        lea    edx,[edi+ecx*1]
  0049ba45: 52                                              push   edx
  0049ba46: 51                                              push   ecx
  0049ba47: 8b c4                                           mov    eax,esp
  0049ba49: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049ba4c: 50                                              push   eax
  0049ba4d: 8b ce                                           mov    ecx,esi
  0049ba4f: e8 cc f1 ff ff                                  call   0x49ac20
  0049ba54: 51                                              push   ecx
  0049ba55: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049ba58: 8b cc                                           mov    ecx,esp
  0049ba5a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049ba5d: 52                                              push   edx
  0049ba5e: e8 6d f4 ff ff                                  call   0x49aed0
  0049ba63: 8b ce                                           mov    ecx,esi
  0049ba65: e8 26 0c 00 00                                  call   0x49c690
  0049ba6a: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0049ba6d: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049ba70: 2b ca                                           sub    ecx,edx
  0049ba72: 8d 85 78 ff ff ff                               lea    eax,[ebp-0x88]
  0049ba78: 50                                              push   eax
  0049ba79: b8 79 78 78 78                                  mov    eax,0x78787879
  0049ba7e: f7 e9                                           imul   ecx
  0049ba80: c1 fa 05                                        sar    edx,0x5
  0049ba83: 8b ca                                           mov    ecx,edx
  0049ba85: c1 e9 1f                                        shr    ecx,0x1f
  0049ba88: 03 d1                                           add    edx,ecx
  0049ba8a: 8b c3                                           mov    eax,ebx
  0049ba8c: 2b c2                                           sub    eax,edx
  0049ba8e: 50                                              push   eax
  0049ba8f: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049ba92: 50                                              push   eax
  0049ba93: 8b ce                                           mov    ecx,esi
  0049ba95: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0049ba99: e8 f2 04 00 00                                  call   0x49bf90
  0049ba9e: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049baa1: 8d 8d 78 ff ff ff                               lea    ecx,[ebp-0x88]
  0049baa7: 51                                              push   ecx
  0049baa8: 51                                              push   ecx
  0049baa9: 8b d4                                           mov    edx,esp
  0049baab: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  0049baae: 03 c7                                           add    eax,edi
  0049bab0: 53                                              push   ebx
  0049bab1: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049bab4: 52                                              push   edx
  0049bab5: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0049bab8: 50                                              push   eax
  0049bab9: 8b ce                                           mov    ecx,esi
  0049babb: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0049bac2: e8 59 f1 ff ff                                  call   0x49ac20
  0049bac7: 8b c8                                           mov    ecx,eax
  0049bac9: e8 e2 06 00 00                                  call   0x49c1b0
  0049bace: 51                                              push   ecx
  0049bacf: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049bad2: 8b cc                                           mov    ecx,esp
  0049bad4: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049bad7: 52                                              push   edx
  0049bad8: e9 ba 00 00 00                                  jmp    0x49bb97
  0049bb13: 57                                              push   edi
  0049bb14: 51                                              push   ecx
  0049bb15: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0049bb18: 8b cc                                           mov    ecx,esp
  0049bb1a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049bb1d: 50                                              push   eax
  0049bb1e: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0049bb21: e8 aa f3 ff ff                                  call   0x49aed0
  0049bb26: 51                                              push   ecx
  0049bb27: 8b cc                                           mov    ecx,esp
  0049bb29: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049bb2c: 53                                              push   ebx
  0049bb2d: 51                                              push   ecx
  0049bb2e: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0049bb31: e8 7a 06 00 00                                  call   0x49c1b0
  0049bb36: 8b ce                                           mov    ecx,esi
  0049bb38: e8 53 0b 00 00                                  call   0x49c690
  0049bb3d: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0049bb40: 51                                              push   ecx
  0049bb41: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049bb44: 8b c4                                           mov    eax,esp
  0049bb46: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049bb49: 51                                              push   ecx
  0049bb4a: 89 10                                           mov    DWORD PTR [eax],edx
  0049bb4c: 8b c4                                           mov    eax,esp
  0049bb4e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049bb51: 53                                              push   ebx
  0049bb52: 50                                              push   eax
  0049bb53: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0049bb56: e8 55 06 00 00                                  call   0x49c1b0
  0049bb5b: 51                                              push   ecx
  0049bb5c: 8d 55 08                                        lea    edx,[ebp+0x8]
  0049bb5f: 8b cc                                           mov    ecx,esp
  0049bb61: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049bb64: 52                                              push   edx
  0049bb65: e8 66 f3 ff ff                                  call   0x49aed0
  0049bb6a: 8d 45 e8                                        lea    eax,[ebp-0x18]
  0049bb6d: 50                                              push   eax
  0049bb6e: e8 cd 0f 00 00                                  call   0x49cb40
  0049bb73: 83 c4 10                                        add    esp,0x10
  0049bb76: 8d 8d 78 ff ff ff                               lea    ecx,[ebp-0x88]
  0049bb7c: 51                                              push   ecx
  0049bb7d: 51                                              push   ecx
  0049bb7e: 8b d4                                           mov    edx,esp
  0049bb80: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049bb83: 53                                              push   ebx
  0049bb84: 52                                              push   edx
  0049bb85: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0049bb88: e8 c3 00 00 00                                  call   0x49bc50
  0049bb8d: 51                                              push   ecx
  0049bb8e: 8d 45 08                                        lea    eax,[ebp+0x8]
  0049bb91: 8b cc                                           mov    ecx,esp
  0049bb93: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0049bb96: 50                                              push   eax
  0049bb97: e8 34 f3 ff ff                                  call   0x49aed0
  0049bb9c: e8 bf 0c 00 00                                  call   0x49c860
  0049bba1: 83 c4 0c                                        add    esp,0xc
  0049bba4: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0049bba7: 85 c0                                           test   eax,eax
  0049bba9: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0049bbb0: 74 1c                                           je     0x49bbce
  0049bbb2: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0049bbb5: 8a 01                                           mov    al,BYTE PTR [ecx]
  0049bbb7: 84 c0                                           test   al,al
  0049bbb9: 74 0a                                           je     0x49bbc5
  0049bbbb: 3c ff                                           cmp    al,0xff
  0049bbbd: 74 06                                           je     0x49bbc5
  0049bbbf: fe c8                                           dec    al
  0049bbc1: 88 01                                           mov    BYTE PTR [ecx],al
  0049bbc3: eb 09                                           jmp    0x49bbce
  0049bbc5: 51                                              push   ecx
  0049bbc6: e8 95 64 fa ff                                  call   0x442060
  0049bbcb: 83 c4 04                                        add    esp,0x4
  0049bbce: 8b 45 8c                                        mov    eax,DWORD PTR [ebp-0x74]
  0049bbd1: 33 c9                                           xor    ecx,ecx
  0049bbd3: 3b c1                                           cmp    eax,ecx
  0049bbd5: 89 4d b0                                        mov    DWORD PTR [ebp-0x50],ecx
  0049bbd8: 89 4d b4                                        mov    DWORD PTR [ebp-0x4c],ecx
  0049bbdb: 89 4d b8                                        mov    DWORD PTR [ebp-0x48],ecx
  0049bbde: 74 09                                           je     0x49bbe9
  0049bbe0: 50                                              push   eax
  0049bbe1: e8 7a 64 fa ff                                  call   0x442060
  0049bbe6: 83 c4 04                                        add    esp,0x4
  0049bbe9: 8b b5 7c ff ff ff                               mov    esi,DWORD PTR [ebp-0x84]
  0049bbef: 33 c0                                           xor    eax,eax
  0049bbf1: 3b f0                                           cmp    esi,eax
  0049bbf3: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0049bbf6: 89 45 90                                        mov    DWORD PTR [ebp-0x70],eax
  0049bbf9: 89 45 94                                        mov    DWORD PTR [ebp-0x6c],eax
  0049bbfc: 74 25                                           je     0x49bc23
  0049bbfe: 8b 5d 80                                        mov    ebx,DWORD PTR [ebp-0x80]
  0049bc01: 3b f3                                           cmp    esi,ebx
  0049bc03: 74 15                                           je     0x49bc1a
  0049bc05: 8b 16                                           mov    edx,DWORD PTR [esi]
  0049bc07: 6a 00                                           push   0x0
  0049bc09: 8b ce                                           mov    ecx,esi
  0049bc0b: ff 12                                           call   DWORD PTR [edx]
  0049bc0d: 83 c6 28                                        add    esi,0x28
  0049bc10: 3b f3                                           cmp    esi,ebx
  0049bc12: 75 f1                                           jne    0x49bc05
  0049bc14: 8b b5 7c ff ff ff                               mov    esi,DWORD PTR [ebp-0x84]
  0049bc1a: 56                                              push   esi
  0049bc1b: e8 40 64 fa ff                                  call   0x442060
  0049bc20: 83 c4 04                                        add    esp,0x4
  0049bc23: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049bc26: 5f                                              pop    edi
  0049bc27: 5e                                              pop    esi
  0049bc28: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049bc2f: 5b                                              pop    ebx
  0049bc30: 8b e5                                           mov    esp,ebp
  0049bc32: 5d                                              pop    ebp
  0049bc33: c2 0c 00                                        ret    0xc
  0049fca0: 53                                              push   ebx
  0049fca1: 8b d9                                           mov    ebx,ecx
  0049fca3: 56                                              push   esi
  0049fca4: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049fca7: 85 f6                                           test   esi,esi
  0049fca9: 74 24                                           je     0x49fccf
  0049fcab: 57                                              push   edi
  0049fcac: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0049fcaf: 3b f7                                           cmp    esi,edi
  0049fcb1: 74 0f                                           je     0x49fcc2
  0049fcb3: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049fcb5: 6a 00                                           push   0x0
  0049fcb7: 8b ce                                           mov    ecx,esi
  0049fcb9: ff 10                                           call   DWORD PTR [eax]
  0049fcbb: 83 c6 28                                        add    esi,0x28
  0049fcbe: 3b f7                                           cmp    esi,edi
  0049fcc0: 75 f1                                           jne    0x49fcb3
  0049fcc2: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049fcc5: 51                                              push   ecx
  0049fcc6: e8 95 23 fa ff                                  call   0x442060
  0049fccb: 83 c4 04                                        add    esp,0x4
  0049fcce: 5f                                              pop    edi
  0049fccf: 33 c0                                           xor    eax,eax
  0049fcd1: 5e                                              pop    esi
  0049fcd2: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049fcd5: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049fcd8: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0049fcdb: 5b                                              pop    ebx
  0049fcdc: c3                                              ret
  0049fdc0: 53                                              push   ebx
  0049fdc1: 8b d9                                           mov    ebx,ecx
  0049fdc3: 56                                              push   esi
  0049fdc4: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049fdc7: 85 f6                                           test   esi,esi
  0049fdc9: 74 24                                           je     0x49fdef
  0049fdcb: 57                                              push   edi
  0049fdcc: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0049fdcf: 3b f7                                           cmp    esi,edi
  0049fdd1: 74 0f                                           je     0x49fde2
  0049fdd3: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049fdd5: 6a 00                                           push   0x0
  0049fdd7: 8b ce                                           mov    ecx,esi
  0049fdd9: ff 10                                           call   DWORD PTR [eax]
  0049fddb: 83 c6 38                                        add    esi,0x38
  0049fdde: 3b f7                                           cmp    esi,edi
  0049fde0: 75 f1                                           jne    0x49fdd3
  0049fde2: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049fde5: 51                                              push   ecx
  0049fde6: e8 75 22 fa ff                                  call   0x442060
  0049fdeb: 83 c4 04                                        add    esp,0x4
  0049fdee: 5f                                              pop    edi
  0049fdef: 33 c0                                           xor    eax,eax
  0049fdf1: 5e                                              pop    esi
  0049fdf2: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049fdf5: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049fdf8: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0049fdfb: 5b                                              pop    ebx
  0049fdfc: c3                                              ret
  0049fe00: 55                                              push   ebp
  0049fe01: 8b ec                                           mov    ebp,esp
  0049fe03: 8b c1                                           mov    eax,ecx
  0049fe05: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049fe08: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049fe0a: 89 10                                           mov    DWORD PTR [eax],edx
  0049fe0c: 5d                                              pop    ebp
  0049fe0d: c2 04 00                                        ret    0x4
  0049fe80: 53                                              push   ebx
  0049fe81: 8b d9                                           mov    ebx,ecx
  0049fe83: 56                                              push   esi
  0049fe84: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049fe87: 85 f6                                           test   esi,esi
  0049fe89: 74 24                                           je     0x49feaf
  0049fe8b: 57                                              push   edi
  0049fe8c: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0049fe8f: 3b f7                                           cmp    esi,edi
  0049fe91: 74 0f                                           je     0x49fea2
  0049fe93: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049fe95: 6a 00                                           push   0x0
  0049fe97: 8b ce                                           mov    ecx,esi
  0049fe99: ff 10                                           call   DWORD PTR [eax]
  0049fe9b: 83 c6 24                                        add    esi,0x24
  0049fe9e: 3b f7                                           cmp    esi,edi
  0049fea0: 75 f1                                           jne    0x49fe93
  0049fea2: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049fea5: 51                                              push   ecx
  0049fea6: e8 b5 21 fa ff                                  call   0x442060
  0049feab: 83 c4 04                                        add    esp,0x4
  0049feae: 5f                                              pop    edi
  0049feaf: 33 c0                                           xor    eax,eax
  0049feb1: 5e                                              pop    esi
  0049feb2: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049feb5: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049feb8: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0049febb: 5b                                              pop    ebx
  0049febc: c3                                              ret
  0049fec0: 55                                              push   ebp
  0049fec1: 8b ec                                           mov    ebp,esp
  0049fec3: 8b c1                                           mov    eax,ecx
  0049fec5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049fec8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049feca: 89 10                                           mov    DWORD PTR [eax],edx
  0049fecc: 5d                                              pop    ebp
  0049fecd: c2 04 00                                        ret    0x4
  0049ff50: 55                                              push   ebp
  0049ff51: 8b ec                                           mov    ebp,esp
  0049ff53: 8b c1                                           mov    eax,ecx
  0049ff55: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049ff58: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049ff5a: 89 10                                           mov    DWORD PTR [eax],edx
  0049ff5c: 5d                                              pop    ebp
  0049ff5d: c2 04 00                                        ret    0x4
  0049ffe0: 55                                              push   ebp
  0049ffe1: 8b ec                                           mov    ebp,esp
  0049ffe3: 8b c1                                           mov    eax,ecx
  0049ffe5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049ffe8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049ffea: 89 10                                           mov    DWORD PTR [eax],edx
  0049ffec: 5d                                              pop    ebp
  0049ffed: c2 04 00                                        ret    0x4
  004a0460: 55                                              push   ebp
  004a0461: 8b ec                                           mov    ebp,esp
  004a0463: 6a ff                                           push   0xffffffff
  004a0465: 68 a9 b5 4d 00                                  push   0x4db5a9
  004a046a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a0470: 50                                              push   eax
  004a0471: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a0478: 83 ec 70                                        sub    esp,0x70
  004a047b: 53                                              push   ebx
  004a047c: 56                                              push   esi
  004a047d: 57                                              push   edi
  004a047e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a0481: 8b f1                                           mov    esi,ecx
  004a0483: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a0486: 57                                              push   edi
  004a0487: 8d 4d 84                                        lea    ecx,[ebp-0x7c]
  004a048a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a048d: e8 2e b8 ff ff                                  call   0x49bcc0
  004a0492: 8b 4f 1c                                        mov    ecx,DWORD PTR [edi+0x1c]
  004a0495: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  004a0498: 8d 57 20                                        lea    edx,[edi+0x20]
  004a049b: 89 4d a0                                        mov    DWORD PTR [ebp-0x60],ecx
  004a049e: 52                                              push   edx
  004a049f: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  004a04a2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a04a9: 89 45 9c                                        mov    DWORD PTR [ebp-0x64],eax
  004a04ac: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a04b2: 8b 47 30                                        mov    eax,DWORD PTR [edi+0x30]
  004a04b5: 8b 4f 34                                        mov    ecx,DWORD PTR [edi+0x34]
  004a04b8: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  004a04bb: 89 4d b8                                        mov    DWORD PTR [ebp-0x48],ecx
  004a04be: c7 45 84 88 f9 4d 00                            mov    DWORD PTR [ebp-0x7c],0x4df988
  004a04c5: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a04c8: 85 c9                                           test   ecx,ecx
  004a04ca: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a04d1: 75 07                                           jne    0x4a04da
  004a04d3: 33 ff                                           xor    edi,edi
  004a04d5: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a04d8: eb 1d                                           jmp    0x4a04f7
  004a04da: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  004a04dd: 2b f9                                           sub    edi,ecx
  004a04df: b8 93 24 49 92                                  mov    eax,0x92492493
  004a04e4: f7 ef                                           imul   edi
  004a04e6: 03 d7                                           add    edx,edi
  004a04e8: c1 fa 05                                        sar    edx,0x5
  004a04eb: 8b c2                                           mov    eax,edx
  004a04ed: c1 e8 1f                                        shr    eax,0x1f
  004a04f0: 03 d0                                           add    edx,eax
  004a04f2: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a04f5: 8b fa                                           mov    edi,edx
  004a04f7: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004a04fa: 85 db                                           test   ebx,ebx
  004a04fc: 0f 84 b7 03 00 00                               je     0x4a08b9
  004a0502: 85 c9                                           test   ecx,ecx
  004a0504: 75 04                                           jne    0x4a050a
  004a0506: 33 d2                                           xor    edx,edx
  004a0508: eb 1b                                           jmp    0x4a0525
  004a050a: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a050d: 2b f9                                           sub    edi,ecx
  004a050f: b8 93 24 49 92                                  mov    eax,0x92492493
  004a0514: f7 ef                                           imul   edi
  004a0516: 03 d7                                           add    edx,edi
  004a0518: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a051b: c1 fa 05                                        sar    edx,0x5
  004a051e: 8b c2                                           mov    eax,edx
  004a0520: c1 e8 1f                                        shr    eax,0x1f
  004a0523: 03 d0                                           add    edx,eax
  004a0525: b8 24 49 92 04                                  mov    eax,0x4924924
  004a052a: 2b c2                                           sub    eax,edx
  004a052c: 3b c3                                           cmp    eax,ebx
  004a052e: 73 2c                                           jae    0x4a055c
  004a0530: 68 80 05 50 00                                  push   0x500580
  004a0535: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a0538: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004a053e: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a0541: 51                                              push   ecx
  004a0542: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004a0545: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a0549: e8 d2 4e f6 ff                                  call   0x405420
  004a054e: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004a0553: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004a0556: 52                                              push   edx
  004a0557: e8 fa 17 03 00                                  call   0x4d1d56
  004a055c: 85 c9                                           test   ecx,ecx
  004a055e: 75 04                                           jne    0x4a0564
  004a0560: 33 d2                                           xor    edx,edx
  004a0562: eb 1b                                           jmp    0x4a057f
  004a0564: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a0567: 2b f9                                           sub    edi,ecx
  004a0569: b8 93 24 49 92                                  mov    eax,0x92492493
  004a056e: f7 ef                                           imul   edi
  004a0570: 03 d7                                           add    edx,edi
  004a0572: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a0575: c1 fa 05                                        sar    edx,0x5
  004a0578: 8b c2                                           mov    eax,edx
  004a057a: c1 e8 1f                                        shr    eax,0x1f
  004a057d: 03 d0                                           add    edx,eax
  004a057f: 03 d3                                           add    edx,ebx
  004a0581: 3b fa                                           cmp    edi,edx
  004a0583: 0f 83 a2 01 00 00                               jae    0x4a072b
  004a0589: 8b c7                                           mov    eax,edi
  004a058b: d1 e8                                           shr    eax,1
  004a058d: ba 24 49 92 04                                  mov    edx,0x4924924
  004a0592: 2b d0                                           sub    edx,eax
  004a0594: 3b d7                                           cmp    edx,edi
  004a0596: 73 0c                                           jae    0x4a05a4
  004a0598: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004a059f: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a05a2: eb 05                                           jmp    0x4a05a9
  004a05a4: 03 f8                                           add    edi,eax
  004a05a6: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a05a9: 85 c9                                           test   ecx,ecx
  004a05ab: 75 04                                           jne    0x4a05b1
  004a05ad: 33 d2                                           xor    edx,edx
  004a05af: eb 1b                                           jmp    0x4a05cc
  004a05b1: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a05b4: 2b f9                                           sub    edi,ecx
  004a05b6: b8 93 24 49 92                                  mov    eax,0x92492493
  004a05bb: f7 ef                                           imul   edi
  004a05bd: 03 d7                                           add    edx,edi
  004a05bf: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a05c2: c1 fa 05                                        sar    edx,0x5
  004a05c5: 8b c2                                           mov    eax,edx
  004a05c7: c1 e8 1f                                        shr    eax,0x1f
  004a05ca: 03 d0                                           add    edx,eax
  004a05cc: 03 d3                                           add    edx,ebx
  004a05ce: 3b fa                                           cmp    edi,edx
  004a05d0: 73 27                                           jae    0x4a05f9
  004a05d2: 85 c9                                           test   ecx,ecx
  004a05d4: 75 04                                           jne    0x4a05da
  004a05d6: 33 d2                                           xor    edx,edx
  004a05d8: eb 18                                           jmp    0x4a05f2
  004a05da: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a05dd: 2b f9                                           sub    edi,ecx
  004a05df: b8 93 24 49 92                                  mov    eax,0x92492493
  004a05e4: f7 ef                                           imul   edi
  004a05e6: 03 d7                                           add    edx,edi
  004a05e8: c1 fa 05                                        sar    edx,0x5
  004a05eb: 8b ca                                           mov    ecx,edx
  004a05ed: c1 e9 1f                                        shr    ecx,0x1f
  004a05f0: 03 d1                                           add    edx,ecx
  004a05f2: 03 d3                                           add    edx,ebx
  004a05f4: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a05f7: 8b fa                                           mov    edi,edx
  004a05f9: 8d 14 fd 00 00 00 00                            lea    edx,[edi*8+0x0]
  004a0600: 2b d7                                           sub    edx,edi
  004a0602: c1 e2 03                                        shl    edx,0x3
  004a0605: 52                                              push   edx
  004a0606: e8 e5 19 fa ff                                  call   0x441ff0
  004a060b: 83 c4 04                                        add    esp,0x4
  004a060e: 50                                              push   eax
  004a060f: 51                                              push   ecx
  004a0610: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004a0613: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a0616: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a0619: 8b cc                                           mov    ecx,esp
  004a061b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a061e: 50                                              push   eax
  004a061f: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004a0623: e8 d8 f7 ff ff                                  call   0x49fe00
  004a0628: 51                                              push   ecx
  004a0629: 8b cc                                           mov    ecx,esp
  004a062b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a062e: 51                                              push   ecx
  004a062f: 8b ce                                           mov    ecx,esi
  004a0631: e8 aa 02 00 00                                  call   0x4a08e0
  004a0636: 8b ce                                           mov    ecx,esi
  004a0638: e8 a3 29 00 00                                  call   0x4a2fe0
  004a063d: 8d 55 84                                        lea    edx,[ebp-0x7c]
  004a0640: 52                                              push   edx
  004a0641: 53                                              push   ebx
  004a0642: 50                                              push   eax
  004a0643: 8b ce                                           mov    ecx,esi
  004a0645: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a0648: e8 d3 17 00 00                                  call   0x4a1e20
  004a064d: 50                                              push   eax
  004a064e: 51                                              push   ecx
  004a064f: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a0652: 8b c4                                           mov    eax,esp
  004a0654: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a0657: 50                                              push   eax
  004a0658: 8b ce                                           mov    ecx,esi
  004a065a: e8 91 f4 ff ff                                  call   0x49faf0
  004a065f: 51                                              push   ecx
  004a0660: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a0663: 8b cc                                           mov    ecx,esp
  004a0665: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a0668: 52                                              push   edx
  004a0669: e8 92 f7 ff ff                                  call   0x49fe00
  004a066e: 8b ce                                           mov    ecx,esi
  004a0670: e8 6b 29 00 00                                  call   0x4a2fe0
  004a0675: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a0678: 85 c0                                           test   eax,eax
  004a067a: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a0681: 74 2d                                           je     0x4a06b0
  004a0683: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a0686: 8b f8                                           mov    edi,eax
  004a0688: 3b f9                                           cmp    edi,ecx
  004a068a: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a068d: 74 12                                           je     0x4a06a1
  004a068f: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a0691: 6a 00                                           push   0x0
  004a0693: 8b cf                                           mov    ecx,edi
  004a0695: ff 10                                           call   DWORD PTR [eax]
  004a0697: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a069a: 83 c7 38                                        add    edi,0x38
  004a069d: 3b f8                                           cmp    edi,eax
  004a069f: 75 ee                                           jne    0x4a068f
  004a06a1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a06a4: 50                                              push   eax
  004a06a5: e8 b6 19 fa ff                                  call   0x442060
  004a06aa: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a06ad: 83 c4 04                                        add    esp,0x4
  004a06b0: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a06b3: 8d 0c fd 00 00 00 00                            lea    ecx,[edi*8+0x0]
  004a06ba: 2b cf                                           sub    ecx,edi
  004a06bc: 85 c0                                           test   eax,eax
  004a06be: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004a06c1: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a06c4: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a06c7: 75 04                                           jne    0x4a06cd
  004a06c9: 33 d2                                           xor    edx,edx
  004a06cb: eb 18                                           jmp    0x4a06e5
  004a06cd: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a06d0: 2b c8                                           sub    ecx,eax
  004a06d2: b8 93 24 49 92                                  mov    eax,0x92492493
  004a06d7: f7 e9                                           imul   ecx
  004a06d9: 03 d1                                           add    edx,ecx
  004a06db: c1 fa 05                                        sar    edx,0x5
  004a06de: 8b c2                                           mov    eax,edx
  004a06e0: c1 e8 1f                                        shr    eax,0x1f
  004a06e3: 03 d0                                           add    edx,eax
  004a06e5: 03 da                                           add    ebx,edx
  004a06e7: 8d 0c dd 00 00 00 00                            lea    ecx,[ebx*8+0x0]
  004a06ee: 2b cb                                           sub    ecx,ebx
  004a06f0: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a06f3: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004a06f6: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a06f9: e9 bb 01 00 00                                  jmp    0x4a08b9
  004a072b: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a072e: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a0731: 8b cf                                           mov    ecx,edi
  004a0733: 2b ca                                           sub    ecx,edx
  004a0735: b8 93 24 49 92                                  mov    eax,0x92492493
  004a073a: f7 e9                                           imul   ecx
  004a073c: 03 d1                                           add    edx,ecx
  004a073e: c1 fa 05                                        sar    edx,0x5
  004a0741: 8b ca                                           mov    ecx,edx
  004a0743: c1 e9 1f                                        shr    ecx,0x1f
  004a0746: 03 d1                                           add    edx,ecx
  004a0748: 3b d3                                           cmp    edx,ebx
  004a074a: 0f 83 db 00 00 00                               jae    0x4a082b
  004a0750: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a0753: 8d 3c dd 00 00 00 00                            lea    edi,[ebx*8+0x0]
  004a075a: 2b fb                                           sub    edi,ebx
  004a075c: c1 e7 03                                        shl    edi,0x3
  004a075f: 8d 04 17                                        lea    eax,[edi+edx*1]
  004a0762: 50                                              push   eax
  004a0763: 51                                              push   ecx
  004a0764: 8b cc                                           mov    ecx,esp
  004a0766: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0769: 51                                              push   ecx
  004a076a: 8b ce                                           mov    ecx,esi
  004a076c: e8 7f f3 ff ff                                  call   0x49faf0
  004a0771: 51                                              push   ecx
  004a0772: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a0775: 8b cc                                           mov    ecx,esp
  004a0777: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a077a: 52                                              push   edx
  004a077b: e8 80 f6 ff ff                                  call   0x49fe00
  004a0780: 8b ce                                           mov    ecx,esi
  004a0782: e8 59 28 00 00                                  call   0x4a2fe0
  004a0787: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a078a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a078d: 2b ca                                           sub    ecx,edx
  004a078f: 8d 45 84                                        lea    eax,[ebp-0x7c]
  004a0792: 50                                              push   eax
  004a0793: b8 93 24 49 92                                  mov    eax,0x92492493
  004a0798: f7 e9                                           imul   ecx
  004a079a: 03 d1                                           add    edx,ecx
  004a079c: c1 fa 05                                        sar    edx,0x5
  004a079f: 8b ca                                           mov    ecx,edx
  004a07a1: c1 e9 1f                                        shr    ecx,0x1f
  004a07a4: 03 d1                                           add    edx,ecx
  004a07a6: 8b c3                                           mov    eax,ebx
  004a07a8: 2b c2                                           sub    eax,edx
  004a07aa: 50                                              push   eax
  004a07ab: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a07ae: 50                                              push   eax
  004a07af: 8b ce                                           mov    ecx,esi
  004a07b1: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004a07b5: e8 66 16 00 00                                  call   0x4a1e20
  004a07ba: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a07bd: 8d 4d 84                                        lea    ecx,[ebp-0x7c]
  004a07c0: 51                                              push   ecx
  004a07c1: 51                                              push   ecx
  004a07c2: 8b d4                                           mov    edx,esp
  004a07c4: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004a07c7: 03 c7                                           add    eax,edi
  004a07c9: 53                                              push   ebx
  004a07ca: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a07cd: 52                                              push   edx
  004a07ce: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a07d1: 50                                              push   eax
  004a07d2: 8b ce                                           mov    ecx,esi
  004a07d4: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a07db: e8 10 f3 ff ff                                  call   0x49faf0
  004a07e0: 8b c8                                           mov    ecx,eax
  004a07e2: e8 39 17 00 00                                  call   0x4a1f20
  004a07e7: 51                                              push   ecx
  004a07e8: 8b cc                                           mov    ecx,esp
  004a07ea: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a07ed: e9 b6 00 00 00                                  jmp    0x4a08a8
  004a082b: 57                                              push   edi
  004a082c: 51                                              push   ecx
  004a082d: 8d 55 0c                                        lea    edx,[ebp+0xc]
  004a0830: 8b cc                                           mov    ecx,esp
  004a0832: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0835: 52                                              push   edx
  004a0836: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a0839: e8 c2 f5 ff ff                                  call   0x49fe00
  004a083e: 51                                              push   ecx
  004a083f: 8b c4                                           mov    eax,esp
  004a0841: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0844: 53                                              push   ebx
  004a0845: 50                                              push   eax
  004a0846: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a0849: e8 d2 16 00 00                                  call   0x4a1f20
  004a084e: 8b ce                                           mov    ecx,esi
  004a0850: e8 8b 27 00 00                                  call   0x4a2fe0
  004a0855: 51                                              push   ecx
  004a0856: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a0859: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a085c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a085f: 8b c4                                           mov    eax,esp
  004a0861: 51                                              push   ecx
  004a0862: 8b d4                                           mov    edx,esp
  004a0864: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0867: 53                                              push   ebx
  004a0868: 89 08                                           mov    DWORD PTR [eax],ecx
  004a086a: 52                                              push   edx
  004a086b: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a086e: e8 ad 16 00 00                                  call   0x4a1f20
  004a0873: 51                                              push   ecx
  004a0874: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a0877: 8b cc                                           mov    ecx,esp
  004a0879: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a087c: 50                                              push   eax
  004a087d: e8 7e f5 ff ff                                  call   0x49fe00
  004a0882: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004a0885: 51                                              push   ecx
  004a0886: e8 e5 29 00 00                                  call   0x4a3270
  004a088b: 83 c4 10                                        add    esp,0x10
  004a088e: 8d 55 84                                        lea    edx,[ebp-0x7c]
  004a0891: 52                                              push   edx
  004a0892: 51                                              push   ecx
  004a0893: 8b c4                                           mov    eax,esp
  004a0895: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0898: 53                                              push   ebx
  004a0899: 50                                              push   eax
  004a089a: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004a089d: e8 4e 00 00 00                                  call   0x4a08f0
  004a08a2: 51                                              push   ecx
  004a08a3: 8b cc                                           mov    ecx,esp
  004a08a5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a08a8: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a08ab: 52                                              push   edx
  004a08ac: e8 4f f5 ff ff                                  call   0x49fe00
  004a08b1: e8 2a 28 00 00                                  call   0x4a30e0
  004a08b6: 83 c4 0c                                        add    esp,0xc
  004a08b9: 8d 4d 84                                        lea    ecx,[ebp-0x7c]
  004a08bc: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004a08c3: e8 98 48 00 00                                  call   0x4a5160
  004a08c8: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a08cb: 5f                                              pop    edi
  004a08cc: 5e                                              pop    esi
  004a08cd: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a08d4: 5b                                              pop    ebx
  004a08d5: 8b e5                                           mov    esp,ebp
  004a08d7: 5d                                              pop    ebp
  004a08d8: c2 0c 00                                        ret    0xc
  004a0910: 55                                              push   ebp
  004a0911: 8b ec                                           mov    ebp,esp
  004a0913: 6a ff                                           push   0xffffffff
  004a0915: 68 d1 b5 4d 00                                  push   0x4db5d1
  004a091a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a0920: 50                                              push   eax
  004a0921: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a0928: 83 ec 5c                                        sub    esp,0x5c
  004a092b: 53                                              push   ebx
  004a092c: 56                                              push   esi
  004a092d: 57                                              push   edi
  004a092e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a0931: 8b f1                                           mov    esi,ecx
  004a0933: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a0936: 57                                              push   edi
  004a0937: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  004a093a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a093d: e8 7e b3 ff ff                                  call   0x49bcc0
  004a0942: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  004a0945: 8b 4f 1c                                        mov    ecx,DWORD PTR [edi+0x1c]
  004a0948: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  004a094b: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  004a094e: 89 4d b4                                        mov    DWORD PTR [ebp-0x4c],ecx
  004a0951: 89 55 b8                                        mov    DWORD PTR [ebp-0x48],edx
  004a0954: c7 45 98 a8 f9 4d 00                            mov    DWORD PTR [ebp-0x68],0x4df9a8
  004a095b: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a095e: 33 ff                                           xor    edi,edi
  004a0960: 3b cf                                           cmp    ecx,edi
  004a0962: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a0965: 74 1b                                           je     0x4a0982
  004a0967: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a096a: 2b d1                                           sub    edx,ecx
  004a096c: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a0971: f7 ea                                           imul   edx
  004a0973: c1 fa 03                                        sar    edx,0x3
  004a0976: 8b c2                                           mov    eax,edx
  004a0978: c1 e8 1f                                        shr    eax,0x1f
  004a097b: 03 d0                                           add    edx,eax
  004a097d: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a0980: 8b fa                                           mov    edi,edx
  004a0982: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004a0985: 85 db                                           test   ebx,ebx
  004a0987: 0f 84 95 03 00 00                               je     0x4a0d22
  004a098d: 85 c9                                           test   ecx,ecx
  004a098f: 75 04                                           jne    0x4a0995
  004a0991: 33 d2                                           xor    edx,edx
  004a0993: eb 16                                           jmp    0x4a09ab
  004a0995: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a0998: 2b d1                                           sub    edx,ecx
  004a099a: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a099f: f7 ea                                           imul   edx
  004a09a1: c1 fa 03                                        sar    edx,0x3
  004a09a4: 8b c2                                           mov    eax,edx
  004a09a6: c1 e8 1f                                        shr    eax,0x1f
  004a09a9: 03 d0                                           add    edx,eax
  004a09ab: b8 c7 71 1c 07                                  mov    eax,0x71c71c7
  004a09b0: 2b c2                                           sub    eax,edx
  004a09b2: 3b c3                                           cmp    eax,ebx
  004a09b4: 73 2c                                           jae    0x4a09e2
  004a09b6: 68 80 05 50 00                                  push   0x500580
  004a09bb: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a09be: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004a09c4: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a09c7: 51                                              push   ecx
  004a09c8: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004a09cb: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004a09cf: e8 4c 4a f6 ff                                  call   0x405420
  004a09d4: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004a09d9: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004a09dc: 52                                              push   edx
  004a09dd: e8 74 13 03 00                                  call   0x4d1d56
  004a09e2: 85 c9                                           test   ecx,ecx
  004a09e4: 75 04                                           jne    0x4a09ea
  004a09e6: 33 d2                                           xor    edx,edx
  004a09e8: eb 16                                           jmp    0x4a0a00
  004a09ea: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a09ed: 2b d1                                           sub    edx,ecx
  004a09ef: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a09f4: f7 ea                                           imul   edx
  004a09f6: c1 fa 03                                        sar    edx,0x3
  004a09f9: 8b c2                                           mov    eax,edx
  004a09fb: c1 e8 1f                                        shr    eax,0x1f
  004a09fe: 03 d0                                           add    edx,eax
  004a0a00: 03 d3                                           add    edx,ebx
  004a0a02: 3b fa                                           cmp    edi,edx
  004a0a04: 0f 83 9a 01 00 00                               jae    0x4a0ba4
  004a0a0a: 8b c7                                           mov    eax,edi
  004a0a0c: d1 e8                                           shr    eax,1
  004a0a0e: ba c7 71 1c 07                                  mov    edx,0x71c71c7
  004a0a13: 2b d0                                           sub    edx,eax
  004a0a15: 3b d7                                           cmp    edx,edi
  004a0a17: 73 0c                                           jae    0x4a0a25
  004a0a19: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004a0a20: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a0a23: eb 05                                           jmp    0x4a0a2a
  004a0a25: 03 f8                                           add    edi,eax
  004a0a27: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a0a2a: 85 c9                                           test   ecx,ecx
  004a0a2c: 75 04                                           jne    0x4a0a32
  004a0a2e: 33 d2                                           xor    edx,edx
  004a0a30: eb 16                                           jmp    0x4a0a48
  004a0a32: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a0a35: 2b d1                                           sub    edx,ecx
  004a0a37: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a0a3c: f7 ea                                           imul   edx
  004a0a3e: c1 fa 03                                        sar    edx,0x3
  004a0a41: 8b c2                                           mov    eax,edx
  004a0a43: c1 e8 1f                                        shr    eax,0x1f
  004a0a46: 03 d0                                           add    edx,eax
  004a0a48: 03 d3                                           add    edx,ebx
  004a0a4a: 3b fa                                           cmp    edi,edx
  004a0a4c: 73 25                                           jae    0x4a0a73
  004a0a4e: 85 c9                                           test   ecx,ecx
  004a0a50: 75 04                                           jne    0x4a0a56
  004a0a52: 33 d2                                           xor    edx,edx
  004a0a54: eb 16                                           jmp    0x4a0a6c
  004a0a56: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a0a59: 2b d1                                           sub    edx,ecx
  004a0a5b: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a0a60: f7 ea                                           imul   edx
  004a0a62: c1 fa 03                                        sar    edx,0x3
  004a0a65: 8b ca                                           mov    ecx,edx
  004a0a67: c1 e9 1f                                        shr    ecx,0x1f
  004a0a6a: 03 d1                                           add    edx,ecx
  004a0a6c: 03 d3                                           add    edx,ebx
  004a0a6e: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a0a71: 8b fa                                           mov    edi,edx
  004a0a73: 8d 14 ff                                        lea    edx,[edi+edi*8]
  004a0a76: c1 e2 02                                        shl    edx,0x2
  004a0a79: 52                                              push   edx
  004a0a7a: e8 71 15 fa ff                                  call   0x441ff0
  004a0a7f: 8b f8                                           mov    edi,eax
  004a0a81: 83 c4 04                                        add    esp,0x4
  004a0a84: 57                                              push   edi
  004a0a85: 51                                              push   ecx
  004a0a86: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a0a89: 8b cc                                           mov    ecx,esp
  004a0a8b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a0a8e: 50                                              push   eax
  004a0a8f: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004a0a92: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a0a95: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a0a99: e8 22 f4 ff ff                                  call   0x49fec0
  004a0a9e: 51                                              push   ecx
  004a0a9f: 8b cc                                           mov    ecx,esp
  004a0aa1: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a0aa4: 51                                              push   ecx
  004a0aa5: 8b ce                                           mov    ecx,esi
  004a0aa7: e8 a4 02 00 00                                  call   0x4a0d50
  004a0aac: 8b ce                                           mov    ecx,esi
  004a0aae: e8 fd 28 00 00                                  call   0x4a33b0
  004a0ab3: 8d 55 98                                        lea    edx,[ebp-0x68]
  004a0ab6: 52                                              push   edx
  004a0ab7: 53                                              push   ebx
  004a0ab8: 50                                              push   eax
  004a0ab9: 8b ce                                           mov    ecx,esi
  004a0abb: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a0abe: e8 fd 14 00 00                                  call   0x4a1fc0
  004a0ac3: 50                                              push   eax
  004a0ac4: 51                                              push   ecx
  004a0ac5: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a0ac8: 8b c4                                           mov    eax,esp
  004a0aca: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a0acd: 50                                              push   eax
  004a0ace: 8b ce                                           mov    ecx,esi
  004a0ad0: e8 8b f0 ff ff                                  call   0x49fb60
  004a0ad5: 51                                              push   ecx
  004a0ad6: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a0ad9: 8b cc                                           mov    ecx,esp
  004a0adb: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a0ade: 52                                              push   edx
  004a0adf: e8 dc f3 ff ff                                  call   0x49fec0
  004a0ae4: 8b ce                                           mov    ecx,esi
  004a0ae6: e8 c5 28 00 00                                  call   0x4a33b0
  004a0aeb: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a0aee: 85 c0                                           test   eax,eax
  004a0af0: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a0af7: 74 2d                                           je     0x4a0b26
  004a0af9: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a0afc: 8b f8                                           mov    edi,eax
  004a0afe: 3b f9                                           cmp    edi,ecx
  004a0b00: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a0b03: 74 12                                           je     0x4a0b17
  004a0b05: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a0b07: 6a 00                                           push   0x0
  004a0b09: 8b cf                                           mov    ecx,edi
  004a0b0b: ff 10                                           call   DWORD PTR [eax]
  004a0b0d: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a0b10: 83 c7 24                                        add    edi,0x24
  004a0b13: 3b f8                                           cmp    edi,eax
  004a0b15: 75 ee                                           jne    0x4a0b05
  004a0b17: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a0b1a: 50                                              push   eax
  004a0b1b: e8 40 15 fa ff                                  call   0x442060
  004a0b20: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004a0b23: 83 c4 04                                        add    esp,0x4
  004a0b26: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a0b29: 8d 0c c0                                        lea    ecx,[eax+eax*8]
  004a0b2c: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a0b2f: 85 c0                                           test   eax,eax
  004a0b31: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004a0b34: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a0b37: 75 15                                           jne    0x4a0b4e
  004a0b39: 33 d2                                           xor    edx,edx
  004a0b3b: 03 da                                           add    ebx,edx
  004a0b3d: 8d 0c db                                        lea    ecx,[ebx+ebx*8]
  004a0b40: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004a0b43: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004a0b46: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a0b49: e9 d4 01 00 00                                  jmp    0x4a0d22
  004a0b4e: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a0b51: 2b c8                                           sub    ecx,eax
  004a0b53: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a0b58: f7 e9                                           imul   ecx
  004a0b5a: c1 fa 03                                        sar    edx,0x3
  004a0b5d: 8b c2                                           mov    eax,edx
  004a0b5f: c1 e8 1f                                        shr    eax,0x1f
  004a0b62: 03 d0                                           add    edx,eax
  004a0b64: 03 da                                           add    ebx,edx
  004a0b66: 8d 0c db                                        lea    ecx,[ebx+ebx*8]
  004a0b69: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004a0b6c: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004a0b6f: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a0b72: e9 ab 01 00 00                                  jmp    0x4a0d22
  004a0ba4: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a0ba7: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a0baa: 8b cf                                           mov    ecx,edi
  004a0bac: 2b ca                                           sub    ecx,edx
  004a0bae: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a0bb3: f7 e9                                           imul   ecx
  004a0bb5: c1 fa 03                                        sar    edx,0x3
  004a0bb8: 8b ca                                           mov    ecx,edx
  004a0bba: c1 e9 1f                                        shr    ecx,0x1f
  004a0bbd: 03 d1                                           add    edx,ecx
  004a0bbf: 3b d3                                           cmp    edx,ebx
  004a0bc1: 0f 83 cd 00 00 00                               jae    0x4a0c94
  004a0bc7: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a0bca: 8d 3c db                                        lea    edi,[ebx+ebx*8]
  004a0bcd: c1 e7 02                                        shl    edi,0x2
  004a0bd0: 8d 04 17                                        lea    eax,[edi+edx*1]
  004a0bd3: 50                                              push   eax
  004a0bd4: 51                                              push   ecx
  004a0bd5: 8b cc                                           mov    ecx,esp
  004a0bd7: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0bda: 51                                              push   ecx
  004a0bdb: 8b ce                                           mov    ecx,esi
  004a0bdd: e8 7e ef ff ff                                  call   0x49fb60
  004a0be2: 51                                              push   ecx
  004a0be3: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a0be6: 8b cc                                           mov    ecx,esp
  004a0be8: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0beb: 52                                              push   edx
  004a0bec: e8 cf f2 ff ff                                  call   0x49fec0
  004a0bf1: 8b ce                                           mov    ecx,esi
  004a0bf3: e8 b8 27 00 00                                  call   0x4a33b0
  004a0bf8: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a0bfb: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a0bfe: 2b ca                                           sub    ecx,edx
  004a0c00: 8d 45 98                                        lea    eax,[ebp-0x68]
  004a0c03: 50                                              push   eax
  004a0c04: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a0c09: f7 e9                                           imul   ecx
  004a0c0b: c1 fa 03                                        sar    edx,0x3
  004a0c0e: 8b ca                                           mov    ecx,edx
  004a0c10: c1 e9 1f                                        shr    ecx,0x1f
  004a0c13: 03 d1                                           add    edx,ecx
  004a0c15: 8b c3                                           mov    eax,ebx
  004a0c17: 2b c2                                           sub    eax,edx
  004a0c19: 50                                              push   eax
  004a0c1a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a0c1d: 50                                              push   eax
  004a0c1e: 8b ce                                           mov    ecx,esi
  004a0c20: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004a0c24: e8 97 13 00 00                                  call   0x4a1fc0
  004a0c29: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a0c2c: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  004a0c2f: 51                                              push   ecx
  004a0c30: 51                                              push   ecx
  004a0c31: 8b d4                                           mov    edx,esp
  004a0c33: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004a0c36: 03 c7                                           add    eax,edi
  004a0c38: 53                                              push   ebx
  004a0c39: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a0c3c: 52                                              push   edx
  004a0c3d: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a0c40: 50                                              push   eax
  004a0c41: 8b ce                                           mov    ecx,esi
  004a0c43: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a0c4a: e8 11 ef ff ff                                  call   0x49fb60
  004a0c4f: 8b c8                                           mov    ecx,eax
  004a0c51: e8 da 13 00 00                                  call   0x4a2030
  004a0c56: 51                                              push   ecx
  004a0c57: 8b cc                                           mov    ecx,esp
  004a0c59: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0c5c: e9 b0 00 00 00                                  jmp    0x4a0d11
  004a0c94: 57                                              push   edi
  004a0c95: 51                                              push   ecx
  004a0c96: 8d 55 0c                                        lea    edx,[ebp+0xc]
  004a0c99: 8b cc                                           mov    ecx,esp
  004a0c9b: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0c9e: 52                                              push   edx
  004a0c9f: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a0ca2: e8 19 f2 ff ff                                  call   0x49fec0
  004a0ca7: 51                                              push   ecx
  004a0ca8: 8b c4                                           mov    eax,esp
  004a0caa: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0cad: 53                                              push   ebx
  004a0cae: 50                                              push   eax
  004a0caf: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a0cb2: e8 79 13 00 00                                  call   0x4a2030
  004a0cb7: 8b ce                                           mov    ecx,esi
  004a0cb9: e8 f2 26 00 00                                  call   0x4a33b0
  004a0cbe: 51                                              push   ecx
  004a0cbf: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a0cc2: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0cc5: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a0cc8: 8b c4                                           mov    eax,esp
  004a0cca: 51                                              push   ecx
  004a0ccb: 8b d4                                           mov    edx,esp
  004a0ccd: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0cd0: 53                                              push   ebx
  004a0cd1: 89 08                                           mov    DWORD PTR [eax],ecx
  004a0cd3: 52                                              push   edx
  004a0cd4: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a0cd7: e8 54 13 00 00                                  call   0x4a2030
  004a0cdc: 51                                              push   ecx
  004a0cdd: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a0ce0: 8b cc                                           mov    ecx,esp
  004a0ce2: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0ce5: 50                                              push   eax
  004a0ce6: e8 d5 f1 ff ff                                  call   0x49fec0
  004a0ceb: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004a0cee: 51                                              push   ecx
  004a0cef: e8 4c 27 00 00                                  call   0x4a3440
  004a0cf4: 83 c4 10                                        add    esp,0x10
  004a0cf7: 8d 55 98                                        lea    edx,[ebp-0x68]
  004a0cfa: 52                                              push   edx
  004a0cfb: 51                                              push   ecx
  004a0cfc: 8b c4                                           mov    eax,esp
  004a0cfe: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0d01: 53                                              push   ebx
  004a0d02: 50                                              push   eax
  004a0d03: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004a0d06: e8 55 00 00 00                                  call   0x4a0d60
  004a0d0b: 51                                              push   ecx
  004a0d0c: 8b cc                                           mov    ecx,esp
  004a0d0e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0d11: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a0d14: 52                                              push   edx
  004a0d15: e8 a6 f1 ff ff                                  call   0x49fec0
  004a0d1a: e8 f1 26 00 00                                  call   0x4a3410
  004a0d1f: 83 c4 0c                                        add    esp,0xc
  004a0d22: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  004a0d25: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004a0d2c: e8 8f 5a 00 00                                  call   0x4a67c0
  004a0d31: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a0d34: 5f                                              pop    edi
  004a0d35: 5e                                              pop    esi
  004a0d36: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a0d3d: 5b                                              pop    ebx
  004a0d3e: 8b e5                                           mov    esp,ebp
  004a0d40: 5d                                              pop    ebp
  004a0d41: c2 0c 00                                        ret    0xc
  004a0d80: 55                                              push   ebp
  004a0d81: 8b ec                                           mov    ebp,esp
  004a0d83: 6a ff                                           push   0xffffffff
  004a0d85: 68 bd b6 4d 00                                  push   0x4db6bd
  004a0d8a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a0d90: 50                                              push   eax
  004a0d91: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a0d98: 81 ec 48 01 00 00                               sub    esp,0x148
  004a0d9e: 53                                              push   ebx
  004a0d9f: 56                                              push   esi
  004a0da0: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a0da3: 57                                              push   edi
  004a0da4: 8b f9                                           mov    edi,ecx
  004a0da6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a0da9: 56                                              push   esi
  004a0daa: 8d 8d d8 fe ff ff                               lea    ecx,[ebp-0x128]
  004a0db0: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  004a0db3: e8 e8 0d 00 00                                  call   0x4a1ba0
  004a0db8: 8d 46 10                                        lea    eax,[esi+0x10]
  004a0dbb: 50                                              push   eax
  004a0dbc: 8d 8d e8 fe ff ff                               lea    ecx,[ebp-0x118]
  004a0dc2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a0dc9: e8 d2 0f 00 00                                  call   0x4a1da0
  004a0dce: 8d 4e 20                                        lea    ecx,[esi+0x20]
  004a0dd1: 51                                              push   ecx
  004a0dd2: 8d 8d f8 fe ff ff                               lea    ecx,[ebp-0x108]
  004a0dd8: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004a0ddc: e8 5f 11 00 00                                  call   0x4a1f40
  004a0de1: 8a 56 30                                        mov    dl,BYTE PTR [esi+0x30]
  004a0de4: 8d 46 34                                        lea    eax,[esi+0x34]
  004a0de7: 50                                              push   eax
  004a0de8: 8d 8d 0c ff ff ff                               lea    ecx,[ebp-0xf4]
  004a0dee: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a0df2: 88 95 08 ff ff ff                               mov    BYTE PTR [ebp-0xf8],dl
  004a0df8: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a0dfe: 8b 4e 44                                        mov    ecx,DWORD PTR [esi+0x44]
  004a0e01: 8b 56 48                                        mov    edx,DWORD PTR [esi+0x48]
  004a0e04: 8d 46 4c                                        lea    eax,[esi+0x4c]
  004a0e07: 89 8d 1c ff ff ff                               mov    DWORD PTR [ebp-0xe4],ecx
  004a0e0d: 50                                              push   eax
  004a0e0e: 8d 8d 24 ff ff ff                               lea    ecx,[ebp-0xdc]
  004a0e14: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004a0e18: 89 95 20 ff ff ff                               mov    DWORD PTR [ebp-0xe0],edx
  004a0e1e: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a0e24: 8b 4e 5c                                        mov    ecx,DWORD PTR [esi+0x5c]
  004a0e27: 8b 56 60                                        mov    edx,DWORD PTR [esi+0x60]
  004a0e2a: 8b 46 64                                        mov    eax,DWORD PTR [esi+0x64]
  004a0e2d: 89 8d 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],ecx
  004a0e33: 8b 4e 68                                        mov    ecx,DWORD PTR [esi+0x68]
  004a0e36: 89 8d 40 ff ff ff                               mov    DWORD PTR [ebp-0xc0],ecx
  004a0e3c: 8b 4e 74                                        mov    ecx,DWORD PTR [esi+0x74]
  004a0e3f: 89 95 38 ff ff ff                               mov    DWORD PTR [ebp-0xc8],edx
  004a0e45: 8b 56 6c                                        mov    edx,DWORD PTR [esi+0x6c]
  004a0e48: 89 85 3c ff ff ff                               mov    DWORD PTR [ebp-0xc4],eax
  004a0e4e: 8b 46 70                                        mov    eax,DWORD PTR [esi+0x70]
  004a0e51: 89 8d 4c ff ff ff                               mov    DWORD PTR [ebp-0xb4],ecx
  004a0e57: 8d 8e 80 00 00 00                               lea    ecx,[esi+0x80]
  004a0e5d: 89 95 44 ff ff ff                               mov    DWORD PTR [ebp-0xbc],edx
  004a0e63: 8b 56 78                                        mov    edx,DWORD PTR [esi+0x78]
  004a0e66: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  004a0e6c: 8b 46 7c                                        mov    eax,DWORD PTR [esi+0x7c]
  004a0e6f: 51                                              push   ecx
  004a0e70: 8d 8d 58 ff ff ff                               lea    ecx,[ebp-0xa8]
  004a0e76: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004a0e7a: 89 95 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],edx
  004a0e80: 89 85 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],eax
  004a0e86: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a0e8c: 8b 96 90 00 00 00                               mov    edx,DWORD PTR [esi+0x90]
  004a0e92: 8b 8e 98 00 00 00                               mov    ecx,DWORD PTR [esi+0x98]
  004a0e98: 8b 86 94 00 00 00                               mov    eax,DWORD PTR [esi+0x94]
  004a0e9e: 89 95 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edx
  004a0ea4: 8d 96 9c 00 00 00                               lea    edx,[esi+0x9c]
  004a0eaa: 89 8d 70 ff ff ff                               mov    DWORD PTR [ebp-0x90],ecx
  004a0eb0: 52                                              push   edx
  004a0eb1: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  004a0eb7: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004a0ebb: 89 85 6c ff ff ff                               mov    DWORD PTR [ebp-0x94],eax
  004a0ec1: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a0ec7: 8b 86 ac 00 00 00                               mov    eax,DWORD PTR [esi+0xac]
  004a0ecd: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004a0ed1: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  004a0ed4: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  004a0eda: 51                                              push   ecx
  004a0edb: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  004a0ede: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a0ee4: 8b 96 c0 00 00 00                               mov    edx,DWORD PTR [esi+0xc0]
  004a0eea: 8b 8e c8 00 00 00                               mov    ecx,DWORD PTR [esi+0xc8]
  004a0ef0: 8b 86 c4 00 00 00                               mov    eax,DWORD PTR [esi+0xc4]
  004a0ef6: 89 55 98                                        mov    DWORD PTR [ebp-0x68],edx
  004a0ef9: 8d 96 cc 00 00 00                               lea    edx,[esi+0xcc]
  004a0eff: 89 4d a0                                        mov    DWORD PTR [ebp-0x60],ecx
  004a0f02: 52                                              push   edx
  004a0f03: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  004a0f06: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  004a0f0a: 89 45 9c                                        mov    DWORD PTR [ebp-0x64],eax
  004a0f0d: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a0f13: 8b 8e e0 00 00 00                               mov    ecx,DWORD PTR [esi+0xe0]
  004a0f19: 8b 86 dc 00 00 00                               mov    eax,DWORD PTR [esi+0xdc]
  004a0f1f: 8b 96 e4 00 00 00                               mov    edx,DWORD PTR [esi+0xe4]
  004a0f25: 89 4d b8                                        mov    DWORD PTR [ebp-0x48],ecx
  004a0f28: 8b 8e ec 00 00 00                               mov    ecx,DWORD PTR [esi+0xec]
  004a0f2e: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  004a0f31: 8b 86 e8 00 00 00                               mov    eax,DWORD PTR [esi+0xe8]
  004a0f37: 89 4d c4                                        mov    DWORD PTR [ebp-0x3c],ecx
  004a0f3a: 8d 8e f8 00 00 00                               lea    ecx,[esi+0xf8]
  004a0f40: 89 55 bc                                        mov    DWORD PTR [ebp-0x44],edx
  004a0f43: 8b 96 f0 00 00 00                               mov    edx,DWORD PTR [esi+0xf0]
  004a0f49: 89 45 c0                                        mov    DWORD PTR [ebp-0x40],eax
  004a0f4c: 8a 86 f4 00 00 00                               mov    al,BYTE PTR [esi+0xf4]
  004a0f52: 51                                              push   ecx
  004a0f53: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004a0f56: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  004a0f5a: 89 55 c8                                        mov    DWORD PTR [ebp-0x38],edx
  004a0f5d: 88 45 cc                                        mov    BYTE PTR [ebp-0x34],al
  004a0f60: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a0f66: 8a 96 08 01 00 00                               mov    dl,BYTE PTR [esi+0x108]
  004a0f6c: 8a 86 09 01 00 00                               mov    al,BYTE PTR [esi+0x109]
  004a0f72: 8a 8e 0a 01 00 00                               mov    cl,BYTE PTR [esi+0x10a]
  004a0f78: 88 55 e0                                        mov    BYTE PTR [ebp-0x20],dl
  004a0f7b: 88 45 e1                                        mov    BYTE PTR [ebp-0x1f],al
  004a0f7e: 88 4d e2                                        mov    BYTE PTR [ebp-0x1e],cl
  004a0f81: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004a0f84: 85 c9                                           test   ecx,ecx
  004a0f86: c7 45 fc 09 00 00 00                            mov    DWORD PTR [ebp-0x4],0x9
  004a0f8d: 75 04                                           jne    0x4a0f93
  004a0f8f: 33 f6                                           xor    esi,esi
  004a0f91: eb 1b                                           jmp    0x4a0fae
  004a0f93: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a0f96: 2b d1                                           sub    edx,ecx
  004a0f98: b8 79 78 78 78                                  mov    eax,0x78787879
  004a0f9d: f7 ea                                           imul   edx
  004a0f9f: c1 fa 07                                        sar    edx,0x7
  004a0fa2: 8b c2                                           mov    eax,edx
  004a0fa4: c1 e8 1f                                        shr    eax,0x1f
  004a0fa7: 03 d0                                           add    edx,eax
  004a0fa9: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a0fac: 8b f2                                           mov    esi,edx
  004a0fae: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004a0fb1: 85 db                                           test   ebx,ebx
  004a0fb3: 0f 84 c2 03 00 00                               je     0x4a137b
  004a0fb9: 85 c9                                           test   ecx,ecx
  004a0fbb: 75 04                                           jne    0x4a0fc1
  004a0fbd: 33 d2                                           xor    edx,edx
  004a0fbf: eb 16                                           jmp    0x4a0fd7
  004a0fc1: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  004a0fc4: 2b d1                                           sub    edx,ecx
  004a0fc6: b8 79 78 78 78                                  mov    eax,0x78787879
  004a0fcb: f7 ea                                           imul   edx
  004a0fcd: c1 fa 07                                        sar    edx,0x7
  004a0fd0: 8b c2                                           mov    eax,edx
  004a0fd2: c1 e8 1f                                        shr    eax,0x1f
  004a0fd5: 03 d0                                           add    edx,eax
  004a0fd7: b8 f0 f0 f0 00                                  mov    eax,0xf0f0f0
  004a0fdc: 2b c2                                           sub    eax,edx
  004a0fde: 3b c3                                           cmp    eax,ebx
  004a0fe0: 73 38                                           jae    0x4a101a
  004a0fe2: 68 80 05 50 00                                  push   0x500580
  004a0fe7: 8d 8d c8 fe ff ff                               lea    ecx,[ebp-0x138]
  004a0fed: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004a0ff3: 8d 8d c8 fe ff ff                               lea    ecx,[ebp-0x138]
  004a0ff9: 51                                              push   ecx
  004a0ffa: 8d 8d ac fe ff ff                               lea    ecx,[ebp-0x154]
  004a1000: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  004a1004: e8 17 44 f6 ff                                  call   0x405420
  004a1009: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004a100e: 8d 95 ac fe ff ff                               lea    edx,[ebp-0x154]
  004a1014: 52                                              push   edx
  004a1015: e8 3c 0d 03 00                                  call   0x4d1d56
  004a101a: 85 c9                                           test   ecx,ecx
  004a101c: 75 04                                           jne    0x4a1022
  004a101e: 33 d2                                           xor    edx,edx
  004a1020: eb 16                                           jmp    0x4a1038
  004a1022: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  004a1025: 2b d1                                           sub    edx,ecx
  004a1027: b8 79 78 78 78                                  mov    eax,0x78787879
  004a102c: f7 ea                                           imul   edx
  004a102e: c1 fa 07                                        sar    edx,0x7
  004a1031: 8b c2                                           mov    eax,edx
  004a1033: c1 e8 1f                                        shr    eax,0x1f
  004a1036: 03 d0                                           add    edx,eax
  004a1038: 03 d3                                           add    edx,ebx
  004a103a: 3b f2                                           cmp    esi,edx
  004a103c: 0f 83 a4 01 00 00                               jae    0x4a11e6
  004a1042: 8b c6                                           mov    eax,esi
  004a1044: d1 e8                                           shr    eax,1
  004a1046: ba f0 f0 f0 00                                  mov    edx,0xf0f0f0
  004a104b: 2b d0                                           sub    edx,eax
  004a104d: 3b d6                                           cmp    edx,esi
  004a104f: 73 0c                                           jae    0x4a105d
  004a1051: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004a1058: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a105b: eb 05                                           jmp    0x4a1062
  004a105d: 03 f0                                           add    esi,eax
  004a105f: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a1062: 85 c9                                           test   ecx,ecx
  004a1064: 75 04                                           jne    0x4a106a
  004a1066: 33 d2                                           xor    edx,edx
  004a1068: eb 16                                           jmp    0x4a1080
  004a106a: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  004a106d: 2b d1                                           sub    edx,ecx
  004a106f: b8 79 78 78 78                                  mov    eax,0x78787879
  004a1074: f7 ea                                           imul   edx
  004a1076: c1 fa 07                                        sar    edx,0x7
  004a1079: 8b c2                                           mov    eax,edx
  004a107b: c1 e8 1f                                        shr    eax,0x1f
  004a107e: 03 d0                                           add    edx,eax
  004a1080: 03 d3                                           add    edx,ebx
  004a1082: 3b f2                                           cmp    esi,edx
  004a1084: 73 25                                           jae    0x4a10ab
  004a1086: 85 c9                                           test   ecx,ecx
  004a1088: 75 04                                           jne    0x4a108e
  004a108a: 33 d2                                           xor    edx,edx
  004a108c: eb 16                                           jmp    0x4a10a4
  004a108e: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  004a1091: 2b d1                                           sub    edx,ecx
  004a1093: b8 79 78 78 78                                  mov    eax,0x78787879
  004a1098: f7 ea                                           imul   edx
  004a109a: c1 fa 07                                        sar    edx,0x7
  004a109d: 8b ca                                           mov    ecx,edx
  004a109f: c1 e9 1f                                        shr    ecx,0x1f
  004a10a2: 03 d1                                           add    edx,ecx
  004a10a4: 03 d3                                           add    edx,ebx
  004a10a6: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a10a9: 8b f2                                           mov    esi,edx
  004a10ab: 8b d6                                           mov    edx,esi
  004a10ad: c1 e2 04                                        shl    edx,0x4
  004a10b0: 03 d6                                           add    edx,esi
  004a10b2: c1 e2 04                                        shl    edx,0x4
  004a10b5: 52                                              push   edx
  004a10b6: e8 35 0f fa ff                                  call   0x441ff0
  004a10bb: 8b f0                                           mov    esi,eax
  004a10bd: 83 c4 04                                        add    esp,0x4
  004a10c0: 56                                              push   esi
  004a10c1: 51                                              push   ecx
  004a10c2: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a10c5: 8b cc                                           mov    ecx,esp
  004a10c7: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004a10ca: 50                                              push   eax
  004a10cb: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  004a10ce: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  004a10d1: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  004a10d5: e8 76 ee ff ff                                  call   0x49ff50
  004a10da: 51                                              push   ecx
  004a10db: 8b cc                                           mov    ecx,esp
  004a10dd: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004a10e0: 51                                              push   ecx
  004a10e1: 8b cf                                           mov    ecx,edi
  004a10e3: e8 28 04 00 00                                  call   0x4a1510
  004a10e8: 8b cf                                           mov    ecx,edi
  004a10ea: e8 91 23 00 00                                  call   0x4a3480
  004a10ef: 8d 95 d8 fe ff ff                               lea    edx,[ebp-0x128]
  004a10f5: 52                                              push   edx
  004a10f6: 53                                              push   ebx
  004a10f7: 50                                              push   eax
  004a10f8: 8b cf                                           mov    ecx,edi
  004a10fa: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a10fd: e8 4e 0f 00 00                                  call   0x4a2050
  004a1102: 50                                              push   eax
  004a1103: 51                                              push   ecx
  004a1104: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a1107: 8b c4                                           mov    eax,esp
  004a1109: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004a110c: 50                                              push   eax
  004a110d: 8b cf                                           mov    ecx,edi
  004a110f: e8 ac ea ff ff                                  call   0x49fbc0
  004a1114: 51                                              push   ecx
  004a1115: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a1118: 8b cc                                           mov    ecx,esp
  004a111a: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004a111d: 52                                              push   edx
  004a111e: e8 2d ee ff ff                                  call   0x49ff50
  004a1123: 8b cf                                           mov    ecx,edi
  004a1125: e8 56 23 00 00                                  call   0x4a3480
  004a112a: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a112d: 85 c0                                           test   eax,eax
  004a112f: c7 45 fc 09 00 00 00                            mov    DWORD PTR [ebp-0x4],0x9
  004a1136: 74 31                                           je     0x4a1169
  004a1138: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a113b: 8b f0                                           mov    esi,eax
  004a113d: 3b f1                                           cmp    esi,ecx
  004a113f: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a1142: 74 16                                           je     0x4a115a
  004a1144: 6a 00                                           push   0x0
  004a1146: 8b ce                                           mov    ecx,esi
  004a1148: e8 83 31 00 00                                  call   0x4a42d0
  004a114d: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a1150: 81 c6 10 01 00 00                               add    esi,0x110
  004a1156: 3b f0                                           cmp    esi,eax
  004a1158: 75 ea                                           jne    0x4a1144
  004a115a: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a115d: 50                                              push   eax
  004a115e: e8 fd 0e fa ff                                  call   0x442060
  004a1163: 8b 75 e8                                        mov    esi,DWORD PTR [ebp-0x18]
  004a1166: 83 c4 04                                        add    esp,0x4
  004a1169: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a116c: 8b c8                                           mov    ecx,eax
  004a116e: c1 e1 04                                        shl    ecx,0x4
  004a1171: 03 c8                                           add    ecx,eax
  004a1173: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a1176: c1 e1 04                                        shl    ecx,0x4
  004a1179: 03 ce                                           add    ecx,esi
  004a117b: 85 c0                                           test   eax,eax
  004a117d: 89 4f 0c                                        mov    DWORD PTR [edi+0xc],ecx
  004a1180: 75 04                                           jne    0x4a1186
  004a1182: 33 d2                                           xor    edx,edx
  004a1184: eb 16                                           jmp    0x4a119c
  004a1186: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a1189: 2b c8                                           sub    ecx,eax
  004a118b: b8 79 78 78 78                                  mov    eax,0x78787879
  004a1190: f7 e9                                           imul   ecx
  004a1192: c1 fa 07                                        sar    edx,0x7
  004a1195: 8b c2                                           mov    eax,edx
  004a1197: c1 e8 1f                                        shr    eax,0x1f
  004a119a: 03 d0                                           add    edx,eax
  004a119c: 03 da                                           add    ebx,edx
  004a119e: 8b cb                                           mov    ecx,ebx
  004a11a0: c1 e1 04                                        shl    ecx,0x4
  004a11a3: 03 cb                                           add    ecx,ebx
  004a11a5: c1 e1 04                                        shl    ecx,0x4
  004a11a8: 03 ce                                           add    ecx,esi
  004a11aa: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004a11ad: 89 77 04                                        mov    DWORD PTR [edi+0x4],esi
  004a11b0: e9 c6 01 00 00                                  jmp    0x4a137b
  004a11e6: 8b 77 08                                        mov    esi,DWORD PTR [edi+0x8]
  004a11e9: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a11ec: 8b ce                                           mov    ecx,esi
  004a11ee: 2b ca                                           sub    ecx,edx
  004a11f0: b8 79 78 78 78                                  mov    eax,0x78787879
  004a11f5: f7 e9                                           imul   ecx
  004a11f7: c1 fa 07                                        sar    edx,0x7
  004a11fa: 8b c2                                           mov    eax,edx
  004a11fc: c1 e8 1f                                        shr    eax,0x1f
  004a11ff: 03 d0                                           add    edx,eax
  004a1201: 3b d3                                           cmp    edx,ebx
  004a1203: 0f 83 e1 00 00 00                               jae    0x4a12ea
  004a1209: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a120c: 8b f3                                           mov    esi,ebx
  004a120e: c1 e6 04                                        shl    esi,0x4
  004a1211: 03 f3                                           add    esi,ebx
  004a1213: c1 e6 04                                        shl    esi,0x4
  004a1216: 8d 14 0e                                        lea    edx,[esi+ecx*1]
  004a1219: 52                                              push   edx
  004a121a: 51                                              push   ecx
  004a121b: 8b c4                                           mov    eax,esp
  004a121d: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a1220: 50                                              push   eax
  004a1221: 8b cf                                           mov    ecx,edi
  004a1223: e8 98 e9 ff ff                                  call   0x49fbc0
  004a1228: 51                                              push   ecx
  004a1229: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a122c: 8b cc                                           mov    ecx,esp
  004a122e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a1231: 52                                              push   edx
  004a1232: e8 19 ed ff ff                                  call   0x49ff50
  004a1237: 8b cf                                           mov    ecx,edi
  004a1239: e8 42 22 00 00                                  call   0x4a3480
  004a123e: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a1241: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a1244: 2b ca                                           sub    ecx,edx
  004a1246: 8d 85 d8 fe ff ff                               lea    eax,[ebp-0x128]
  004a124c: 50                                              push   eax
  004a124d: b8 79 78 78 78                                  mov    eax,0x78787879
  004a1252: f7 e9                                           imul   ecx
  004a1254: c1 fa 07                                        sar    edx,0x7
  004a1257: 8b ca                                           mov    ecx,edx
  004a1259: c1 e9 1f                                        shr    ecx,0x1f
  004a125c: 03 d1                                           add    edx,ecx
  004a125e: 8b c3                                           mov    eax,ebx
  004a1260: 2b c2                                           sub    eax,edx
  004a1262: 50                                              push   eax
  004a1263: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004a1266: 50                                              push   eax
  004a1267: 8b cf                                           mov    ecx,edi
  004a1269: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  004a126d: e8 de 0d 00 00                                  call   0x4a2050
  004a1272: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004a1275: 8d 8d d8 fe ff ff                               lea    ecx,[ebp-0x128]
  004a127b: 51                                              push   ecx
  004a127c: 51                                              push   ecx
  004a127d: 8b d4                                           mov    edx,esp
  004a127f: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004a1282: 03 c6                                           add    eax,esi
  004a1284: 53                                              push   ebx
  004a1285: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004a1288: 52                                              push   edx
  004a1289: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a128c: 50                                              push   eax
  004a128d: 8b cf                                           mov    ecx,edi
  004a128f: c7 45 fc 09 00 00 00                            mov    DWORD PTR [ebp-0x4],0x9
  004a1296: e8 25 e9 ff ff                                  call   0x49fbc0
  004a129b: 8b c8                                           mov    ecx,eax
  004a129d: e8 ce 13 00 00                                  call   0x4a2670
  004a12a2: 51                                              push   ecx
  004a12a3: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a12a6: 8b cc                                           mov    ecx,esp
  004a12a8: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a12ab: 52                                              push   edx
  004a12ac: e9 bd 00 00 00                                  jmp    0x4a136e
  004a12ea: 56                                              push   esi
  004a12eb: 51                                              push   ecx
  004a12ec: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a12ef: 8b cc                                           mov    ecx,esp
  004a12f1: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a12f4: 50                                              push   eax
  004a12f5: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  004a12f8: e8 53 ec ff ff                                  call   0x49ff50
  004a12fd: 51                                              push   ecx
  004a12fe: 8b cc                                           mov    ecx,esp
  004a1300: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a1303: 53                                              push   ebx
  004a1304: 51                                              push   ecx
  004a1305: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a1308: e8 63 13 00 00                                  call   0x4a2670
  004a130d: 8b cf                                           mov    ecx,edi
  004a130f: e8 6c 21 00 00                                  call   0x4a3480
  004a1314: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004a1317: 51                                              push   ecx
  004a1318: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004a131b: 8b c4                                           mov    eax,esp
  004a131d: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a1320: 51                                              push   ecx
  004a1321: 89 10                                           mov    DWORD PTR [eax],edx
  004a1323: 8b c4                                           mov    eax,esp
  004a1325: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a1328: 53                                              push   ebx
  004a1329: 50                                              push   eax
  004a132a: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a132d: e8 3e 13 00 00                                  call   0x4a2670
  004a1332: 51                                              push   ecx
  004a1333: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a1336: 8b cc                                           mov    ecx,esp
  004a1338: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a133b: 52                                              push   edx
  004a133c: e8 0f ec ff ff                                  call   0x49ff50
  004a1341: 8d 45 ec                                        lea    eax,[ebp-0x14]
  004a1344: 50                                              push   eax
  004a1345: e8 e6 26 00 00                                  call   0x4a3a30
  004a134a: 83 c4 10                                        add    esp,0x10
  004a134d: 8d 8d d8 fe ff ff                               lea    ecx,[ebp-0x128]
  004a1353: 51                                              push   ecx
  004a1354: 51                                              push   ecx
  004a1355: 8b d4                                           mov    edx,esp
  004a1357: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a135a: 53                                              push   ebx
  004a135b: 52                                              push   edx
  004a135c: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004a135f: e8 bc 01 00 00                                  call   0x4a1520
  004a1364: 51                                              push   ecx
  004a1365: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a1368: 8b cc                                           mov    ecx,esp
  004a136a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a136d: 50                                              push   eax
  004a136e: e8 dd eb ff ff                                  call   0x49ff50
  004a1373: e8 08 23 00 00                                  call   0x4a3680
  004a1378: 83 c4 0c                                        add    esp,0xc
  004a137b: 6a 01                                           push   0x1
  004a137d: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004a1380: c7 45 fc 17 00 00 00                            mov    DWORD PTR [ebp-0x4],0x17
  004a1387: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a138d: 6a 01                                           push   0x1
  004a138f: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  004a1392: c6 45 fc 16                                     mov    BYTE PTR [ebp-0x4],0x16
  004a1396: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a139c: 6a 01                                           push   0x1
  004a139e: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  004a13a1: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  004a13a5: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a13ab: 6a 01                                           push   0x1
  004a13ad: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  004a13b3: c6 45 fc 14                                     mov    BYTE PTR [ebp-0x4],0x14
  004a13b7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a13bd: 6a 01                                           push   0x1
  004a13bf: 8d 8d 58 ff ff ff                               lea    ecx,[ebp-0xa8]
  004a13c5: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  004a13c9: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a13cf: 6a 01                                           push   0x1
  004a13d1: 8d 8d 24 ff ff ff                               lea    ecx,[ebp-0xdc]
  004a13d7: c6 45 fc 12                                     mov    BYTE PTR [ebp-0x4],0x12
  004a13db: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a13e1: 8b 85 10 ff ff ff                               mov    eax,DWORD PTR [ebp-0xf0]
  004a13e7: 33 f6                                           xor    esi,esi
  004a13e9: 3b c6                                           cmp    eax,esi
  004a13eb: 74 1c                                           je     0x4a1409
  004a13ed: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a13f0: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a13f2: 84 c0                                           test   al,al
  004a13f4: 74 0a                                           je     0x4a1400
  004a13f6: 3c ff                                           cmp    al,0xff
  004a13f8: 74 06                                           je     0x4a1400
  004a13fa: fe c8                                           dec    al
  004a13fc: 88 01                                           mov    BYTE PTR [ecx],al
  004a13fe: eb 09                                           jmp    0x4a1409
  004a1400: 51                                              push   ecx
  004a1401: e8 5a 0c fa ff                                  call   0x442060
  004a1406: 83 c4 04                                        add    esp,0x4
  004a1409: 8b 85 fc fe ff ff                               mov    eax,DWORD PTR [ebp-0x104]
  004a140f: 3b c6                                           cmp    eax,esi
  004a1411: 89 b5 10 ff ff ff                               mov    DWORD PTR [ebp-0xf0],esi
  004a1417: 89 b5 14 ff ff ff                               mov    DWORD PTR [ebp-0xec],esi
  004a141d: 89 b5 18 ff ff ff                               mov    DWORD PTR [ebp-0xe8],esi
  004a1423: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  004a1427: 74 2c                                           je     0x4a1455
  004a1429: 8b bd 00 ff ff ff                               mov    edi,DWORD PTR [ebp-0x100]
  004a142f: 3b c7                                           cmp    eax,edi
  004a1431: 8b f0                                           mov    esi,eax
  004a1433: 74 15                                           je     0x4a144a
  004a1435: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a1437: 6a 00                                           push   0x0
  004a1439: 8b ce                                           mov    ecx,esi
  004a143b: ff 12                                           call   DWORD PTR [edx]
  004a143d: 83 c6 24                                        add    esi,0x24
  004a1440: 3b f7                                           cmp    esi,edi
  004a1442: 75 f1                                           jne    0x4a1435
  004a1444: 8b 85 fc fe ff ff                               mov    eax,DWORD PTR [ebp-0x104]
  004a144a: 50                                              push   eax
  004a144b: e8 10 0c fa ff                                  call   0x442060
  004a1450: 83 c4 04                                        add    esp,0x4
  004a1453: 33 f6                                           xor    esi,esi
  004a1455: 8b 85 ec fe ff ff                               mov    eax,DWORD PTR [ebp-0x114]
  004a145b: 3b c6                                           cmp    eax,esi
  004a145d: 89 b5 fc fe ff ff                               mov    DWORD PTR [ebp-0x104],esi
  004a1463: 89 b5 00 ff ff ff                               mov    DWORD PTR [ebp-0x100],esi
  004a1469: 89 b5 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],esi
  004a146f: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  004a1473: 74 2c                                           je     0x4a14a1
  004a1475: 8b bd f0 fe ff ff                               mov    edi,DWORD PTR [ebp-0x110]
  004a147b: 3b c7                                           cmp    eax,edi
  004a147d: 8b f0                                           mov    esi,eax
  004a147f: 74 15                                           je     0x4a1496
  004a1481: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a1483: 6a 00                                           push   0x0
  004a1485: 8b ce                                           mov    ecx,esi
  004a1487: ff 10                                           call   DWORD PTR [eax]
  004a1489: 83 c6 38                                        add    esi,0x38
  004a148c: 3b f7                                           cmp    esi,edi
  004a148e: 75 f1                                           jne    0x4a1481
  004a1490: 8b 85 ec fe ff ff                               mov    eax,DWORD PTR [ebp-0x114]
  004a1496: 50                                              push   eax
  004a1497: e8 c4 0b fa ff                                  call   0x442060
  004a149c: 83 c4 04                                        add    esp,0x4
  004a149f: 33 f6                                           xor    esi,esi
  004a14a1: 8b 85 dc fe ff ff                               mov    eax,DWORD PTR [ebp-0x124]
  004a14a7: 3b c6                                           cmp    eax,esi
  004a14a9: 89 b5 ec fe ff ff                               mov    DWORD PTR [ebp-0x114],esi
  004a14af: 89 b5 f0 fe ff ff                               mov    DWORD PTR [ebp-0x110],esi
  004a14b5: 89 b5 f4 fe ff ff                               mov    DWORD PTR [ebp-0x10c],esi
  004a14bb: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004a14c2: 74 2a                                           je     0x4a14ee
  004a14c4: 8b bd e0 fe ff ff                               mov    edi,DWORD PTR [ebp-0x120]
  004a14ca: 3b c7                                           cmp    eax,edi
  004a14cc: 8b f0                                           mov    esi,eax
  004a14ce: 74 15                                           je     0x4a14e5
  004a14d0: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a14d2: 6a 00                                           push   0x0
  004a14d4: 8b ce                                           mov    ecx,esi
  004a14d6: ff 12                                           call   DWORD PTR [edx]
  004a14d8: 83 c6 28                                        add    esi,0x28
  004a14db: 3b f7                                           cmp    esi,edi
  004a14dd: 75 f1                                           jne    0x4a14d0
  004a14df: 8b 85 dc fe ff ff                               mov    eax,DWORD PTR [ebp-0x124]
  004a14e5: 50                                              push   eax
  004a14e6: e8 75 0b fa ff                                  call   0x442060
  004a14eb: 83 c4 04                                        add    esp,0x4
  004a14ee: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a14f1: 5f                                              pop    edi
  004a14f2: 5e                                              pop    esi
  004a14f3: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a14fa: 5b                                              pop    ebx
  004a14fb: 8b e5                                           mov    esp,ebp
  004a14fd: 5d                                              pop    ebp
  004a14fe: c2 0c 00                                        ret    0xc
  004a1540: 55                                              push   ebp
  004a1541: 8b ec                                           mov    ebp,esp
  004a1543: 6a ff                                           push   0xffffffff
  004a1545: 68 e9 b6 4d 00                                  push   0x4db6e9
  004a154a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a1550: 50                                              push   eax
  004a1551: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a1558: 83 ec 70                                        sub    esp,0x70
  004a155b: 53                                              push   ebx
  004a155c: 56                                              push   esi
  004a155d: 57                                              push   edi
  004a155e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a1561: 8b f1                                           mov    esi,ecx
  004a1563: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a1566: 57                                              push   edi
  004a1567: 8d 4d 84                                        lea    ecx,[ebp-0x7c]
  004a156a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a156d: e8 4e a7 ff ff                                  call   0x49bcc0
  004a1572: 8a 47 18                                        mov    al,BYTE PTR [edi+0x18]
  004a1575: 8d 4f 1c                                        lea    ecx,[edi+0x1c]
  004a1578: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a157a: 88 45 9c                                        mov    BYTE PTR [ebp-0x64],al
  004a157d: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004a1580: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004a1583: 89 4d a8                                        mov    DWORD PTR [ebp-0x58],ecx
  004a1586: 83 c7 28                                        add    edi,0x28
  004a1589: 57                                              push   edi
  004a158a: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004a158d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a1594: 89 55 a0                                        mov    DWORD PTR [ebp-0x60],edx
  004a1597: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  004a159a: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a15a0: c7 45 84 c8 f9 4d 00                            mov    DWORD PTR [ebp-0x7c],0x4df9c8
  004a15a7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a15aa: 85 c9                                           test   ecx,ecx
  004a15ac: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a15b3: 75 07                                           jne    0x4a15bc
  004a15b5: 33 ff                                           xor    edi,edi
  004a15b7: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a15ba: eb 1d                                           jmp    0x4a15d9
  004a15bc: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  004a15bf: 2b f9                                           sub    edi,ecx
  004a15c1: b8 93 24 49 92                                  mov    eax,0x92492493
  004a15c6: f7 ef                                           imul   edi
  004a15c8: 03 d7                                           add    edx,edi
  004a15ca: c1 fa 05                                        sar    edx,0x5
  004a15cd: 8b c2                                           mov    eax,edx
  004a15cf: c1 e8 1f                                        shr    eax,0x1f
  004a15d2: 03 d0                                           add    edx,eax
  004a15d4: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a15d7: 8b fa                                           mov    edi,edx
  004a15d9: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004a15dc: 85 db                                           test   ebx,ebx
  004a15de: 0f 84 b7 03 00 00                               je     0x4a199b
  004a15e4: 85 c9                                           test   ecx,ecx
  004a15e6: 75 04                                           jne    0x4a15ec
  004a15e8: 33 d2                                           xor    edx,edx
  004a15ea: eb 1b                                           jmp    0x4a1607
  004a15ec: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a15ef: 2b f9                                           sub    edi,ecx
  004a15f1: b8 93 24 49 92                                  mov    eax,0x92492493
  004a15f6: f7 ef                                           imul   edi
  004a15f8: 03 d7                                           add    edx,edi
  004a15fa: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a15fd: c1 fa 05                                        sar    edx,0x5
  004a1600: 8b c2                                           mov    eax,edx
  004a1602: c1 e8 1f                                        shr    eax,0x1f
  004a1605: 03 d0                                           add    edx,eax
  004a1607: b8 24 49 92 04                                  mov    eax,0x4924924
  004a160c: 2b c2                                           sub    eax,edx
  004a160e: 3b c3                                           cmp    eax,ebx
  004a1610: 73 2c                                           jae    0x4a163e
  004a1612: 68 80 05 50 00                                  push   0x500580
  004a1617: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a161a: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004a1620: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a1623: 51                                              push   ecx
  004a1624: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004a1627: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a162b: e8 f0 3d f6 ff                                  call   0x405420
  004a1630: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004a1635: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004a1638: 52                                              push   edx
  004a1639: e8 18 07 03 00                                  call   0x4d1d56
  004a163e: 85 c9                                           test   ecx,ecx
  004a1640: 75 04                                           jne    0x4a1646
  004a1642: 33 d2                                           xor    edx,edx
  004a1644: eb 1b                                           jmp    0x4a1661
  004a1646: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a1649: 2b f9                                           sub    edi,ecx
  004a164b: b8 93 24 49 92                                  mov    eax,0x92492493
  004a1650: f7 ef                                           imul   edi
  004a1652: 03 d7                                           add    edx,edi
  004a1654: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a1657: c1 fa 05                                        sar    edx,0x5
  004a165a: 8b c2                                           mov    eax,edx
  004a165c: c1 e8 1f                                        shr    eax,0x1f
  004a165f: 03 d0                                           add    edx,eax
  004a1661: 03 d3                                           add    edx,ebx
  004a1663: 3b fa                                           cmp    edi,edx
  004a1665: 0f 83 a2 01 00 00                               jae    0x4a180d
  004a166b: 8b c7                                           mov    eax,edi
  004a166d: d1 e8                                           shr    eax,1
  004a166f: ba 24 49 92 04                                  mov    edx,0x4924924
  004a1674: 2b d0                                           sub    edx,eax
  004a1676: 3b d7                                           cmp    edx,edi
  004a1678: 73 0c                                           jae    0x4a1686
  004a167a: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004a1681: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a1684: eb 05                                           jmp    0x4a168b
  004a1686: 03 f8                                           add    edi,eax
  004a1688: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a168b: 85 c9                                           test   ecx,ecx
  004a168d: 75 04                                           jne    0x4a1693
  004a168f: 33 d2                                           xor    edx,edx
  004a1691: eb 1b                                           jmp    0x4a16ae
  004a1693: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a1696: 2b f9                                           sub    edi,ecx
  004a1698: b8 93 24 49 92                                  mov    eax,0x92492493
  004a169d: f7 ef                                           imul   edi
  004a169f: 03 d7                                           add    edx,edi
  004a16a1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a16a4: c1 fa 05                                        sar    edx,0x5
  004a16a7: 8b c2                                           mov    eax,edx
  004a16a9: c1 e8 1f                                        shr    eax,0x1f
  004a16ac: 03 d0                                           add    edx,eax
  004a16ae: 03 d3                                           add    edx,ebx
  004a16b0: 3b fa                                           cmp    edi,edx
  004a16b2: 73 27                                           jae    0x4a16db
  004a16b4: 85 c9                                           test   ecx,ecx
  004a16b6: 75 04                                           jne    0x4a16bc
  004a16b8: 33 d2                                           xor    edx,edx
  004a16ba: eb 18                                           jmp    0x4a16d4
  004a16bc: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a16bf: 2b f9                                           sub    edi,ecx
  004a16c1: b8 93 24 49 92                                  mov    eax,0x92492493
  004a16c6: f7 ef                                           imul   edi
  004a16c8: 03 d7                                           add    edx,edi
  004a16ca: c1 fa 05                                        sar    edx,0x5
  004a16cd: 8b ca                                           mov    ecx,edx
  004a16cf: c1 e9 1f                                        shr    ecx,0x1f
  004a16d2: 03 d1                                           add    edx,ecx
  004a16d4: 03 d3                                           add    edx,ebx
  004a16d6: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a16d9: 8b fa                                           mov    edi,edx
  004a16db: 8d 14 fd 00 00 00 00                            lea    edx,[edi*8+0x0]
  004a16e2: 2b d7                                           sub    edx,edi
  004a16e4: c1 e2 03                                        shl    edx,0x3
  004a16e7: 52                                              push   edx
  004a16e8: e8 03 09 fa ff                                  call   0x441ff0
  004a16ed: 83 c4 04                                        add    esp,0x4
  004a16f0: 50                                              push   eax
  004a16f1: 51                                              push   ecx
  004a16f2: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004a16f5: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a16f8: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a16fb: 8b cc                                           mov    ecx,esp
  004a16fd: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a1700: 50                                              push   eax
  004a1701: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004a1705: e8 d6 e8 ff ff                                  call   0x49ffe0
  004a170a: 51                                              push   ecx
  004a170b: 8b cc                                           mov    ecx,esp
  004a170d: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a1710: 51                                              push   ecx
  004a1711: 8b ce                                           mov    ecx,esi
  004a1713: e8 a8 02 00 00                                  call   0x4a19c0
  004a1718: 8b ce                                           mov    ecx,esi
  004a171a: e8 41 25 00 00                                  call   0x4a3c60
  004a171f: 8d 55 84                                        lea    edx,[ebp-0x7c]
  004a1722: 52                                              push   edx
  004a1723: 53                                              push   ebx
  004a1724: 50                                              push   eax
  004a1725: 8b ce                                           mov    ecx,esi
  004a1727: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a172a: e8 61 0f 00 00                                  call   0x4a2690
  004a172f: 50                                              push   eax
  004a1730: 51                                              push   ecx
  004a1731: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a1734: 8b c4                                           mov    eax,esp
  004a1736: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a1739: 50                                              push   eax
  004a173a: 8b ce                                           mov    ecx,esi
  004a173c: e8 8f e4 ff ff                                  call   0x49fbd0
  004a1741: 51                                              push   ecx
  004a1742: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a1745: 8b cc                                           mov    ecx,esp
  004a1747: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a174a: 52                                              push   edx
  004a174b: e8 90 e8 ff ff                                  call   0x49ffe0
  004a1750: 8b ce                                           mov    ecx,esi
  004a1752: e8 09 25 00 00                                  call   0x4a3c60
  004a1757: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a175a: 85 c0                                           test   eax,eax
  004a175c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a1763: 74 2d                                           je     0x4a1792
  004a1765: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a1768: 8b f8                                           mov    edi,eax
  004a176a: 3b f9                                           cmp    edi,ecx
  004a176c: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a176f: 74 12                                           je     0x4a1783
  004a1771: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a1773: 6a 00                                           push   0x0
  004a1775: 8b cf                                           mov    ecx,edi
  004a1777: ff 10                                           call   DWORD PTR [eax]
  004a1779: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a177c: 83 c7 38                                        add    edi,0x38
  004a177f: 3b f8                                           cmp    edi,eax
  004a1781: 75 ee                                           jne    0x4a1771
  004a1783: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a1786: 50                                              push   eax
  004a1787: e8 d4 08 fa ff                                  call   0x442060
  004a178c: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a178f: 83 c4 04                                        add    esp,0x4
  004a1792: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a1795: 8d 0c fd 00 00 00 00                            lea    ecx,[edi*8+0x0]
  004a179c: 2b cf                                           sub    ecx,edi
  004a179e: 85 c0                                           test   eax,eax
  004a17a0: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004a17a3: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a17a6: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a17a9: 75 04                                           jne    0x4a17af
  004a17ab: 33 d2                                           xor    edx,edx
  004a17ad: eb 18                                           jmp    0x4a17c7
  004a17af: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a17b2: 2b c8                                           sub    ecx,eax
  004a17b4: b8 93 24 49 92                                  mov    eax,0x92492493
  004a17b9: f7 e9                                           imul   ecx
  004a17bb: 03 d1                                           add    edx,ecx
  004a17bd: c1 fa 05                                        sar    edx,0x5
  004a17c0: 8b c2                                           mov    eax,edx
  004a17c2: c1 e8 1f                                        shr    eax,0x1f
  004a17c5: 03 d0                                           add    edx,eax
  004a17c7: 03 da                                           add    ebx,edx
  004a17c9: 8d 0c dd 00 00 00 00                            lea    ecx,[ebx*8+0x0]
  004a17d0: 2b cb                                           sub    ecx,ebx
  004a17d2: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a17d5: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004a17d8: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a17db: e9 bb 01 00 00                                  jmp    0x4a199b
  004a180d: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a1810: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a1813: 8b cf                                           mov    ecx,edi
  004a1815: 2b ca                                           sub    ecx,edx
  004a1817: b8 93 24 49 92                                  mov    eax,0x92492493
  004a181c: f7 e9                                           imul   ecx
  004a181e: 03 d1                                           add    edx,ecx
  004a1820: c1 fa 05                                        sar    edx,0x5
  004a1823: 8b ca                                           mov    ecx,edx
  004a1825: c1 e9 1f                                        shr    ecx,0x1f
  004a1828: 03 d1                                           add    edx,ecx
  004a182a: 3b d3                                           cmp    edx,ebx
  004a182c: 0f 83 db 00 00 00                               jae    0x4a190d
  004a1832: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a1835: 8d 3c dd 00 00 00 00                            lea    edi,[ebx*8+0x0]
  004a183c: 2b fb                                           sub    edi,ebx
  004a183e: c1 e7 03                                        shl    edi,0x3
  004a1841: 8d 04 17                                        lea    eax,[edi+edx*1]
  004a1844: 50                                              push   eax
  004a1845: 51                                              push   ecx
  004a1846: 8b cc                                           mov    ecx,esp
  004a1848: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a184b: 51                                              push   ecx
  004a184c: 8b ce                                           mov    ecx,esi
  004a184e: e8 7d e3 ff ff                                  call   0x49fbd0
  004a1853: 51                                              push   ecx
  004a1854: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a1857: 8b cc                                           mov    ecx,esp
  004a1859: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a185c: 52                                              push   edx
  004a185d: e8 7e e7 ff ff                                  call   0x49ffe0
  004a1862: 8b ce                                           mov    ecx,esi
  004a1864: e8 f7 23 00 00                                  call   0x4a3c60
  004a1869: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a186c: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a186f: 2b ca                                           sub    ecx,edx
  004a1871: 8d 45 84                                        lea    eax,[ebp-0x7c]
  004a1874: 50                                              push   eax
  004a1875: b8 93 24 49 92                                  mov    eax,0x92492493
  004a187a: f7 e9                                           imul   ecx
  004a187c: 03 d1                                           add    edx,ecx
  004a187e: c1 fa 05                                        sar    edx,0x5
  004a1881: 8b ca                                           mov    ecx,edx
  004a1883: c1 e9 1f                                        shr    ecx,0x1f
  004a1886: 03 d1                                           add    edx,ecx
  004a1888: 8b c3                                           mov    eax,ebx
  004a188a: 2b c2                                           sub    eax,edx
  004a188c: 50                                              push   eax
  004a188d: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a1890: 50                                              push   eax
  004a1891: 8b ce                                           mov    ecx,esi
  004a1893: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004a1897: e8 f4 0d 00 00                                  call   0x4a2690
  004a189c: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a189f: 8d 4d 84                                        lea    ecx,[ebp-0x7c]
  004a18a2: 51                                              push   ecx
  004a18a3: 51                                              push   ecx
  004a18a4: 8b d4                                           mov    edx,esp
  004a18a6: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004a18a9: 03 c7                                           add    eax,edi
  004a18ab: 53                                              push   ebx
  004a18ac: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a18af: 52                                              push   edx
  004a18b0: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a18b3: 50                                              push   eax
  004a18b4: 8b ce                                           mov    ecx,esi
  004a18b6: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a18bd: e8 0e e3 ff ff                                  call   0x49fbd0
  004a18c2: 8b c8                                           mov    ecx,eax
  004a18c4: e8 c7 0e 00 00                                  call   0x4a2790
  004a18c9: 51                                              push   ecx
  004a18ca: 8b cc                                           mov    ecx,esp
  004a18cc: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a18cf: e9 b6 00 00 00                                  jmp    0x4a198a
  004a190d: 57                                              push   edi
  004a190e: 51                                              push   ecx
  004a190f: 8d 55 0c                                        lea    edx,[ebp+0xc]
  004a1912: 8b cc                                           mov    ecx,esp
  004a1914: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a1917: 52                                              push   edx
  004a1918: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a191b: e8 c0 e6 ff ff                                  call   0x49ffe0
  004a1920: 51                                              push   ecx
  004a1921: 8b c4                                           mov    eax,esp
  004a1923: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a1926: 53                                              push   ebx
  004a1927: 50                                              push   eax
  004a1928: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a192b: e8 60 0e 00 00                                  call   0x4a2790
  004a1930: 8b ce                                           mov    ecx,esi
  004a1932: e8 29 23 00 00                                  call   0x4a3c60
  004a1937: 51                                              push   ecx
  004a1938: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a193b: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a193e: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1941: 8b c4                                           mov    eax,esp
  004a1943: 51                                              push   ecx
  004a1944: 8b d4                                           mov    edx,esp
  004a1946: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a1949: 53                                              push   ebx
  004a194a: 89 08                                           mov    DWORD PTR [eax],ecx
  004a194c: 52                                              push   edx
  004a194d: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a1950: e8 3b 0e 00 00                                  call   0x4a2790
  004a1955: 51                                              push   ecx
  004a1956: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a1959: 8b cc                                           mov    ecx,esp
  004a195b: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a195e: 50                                              push   eax
  004a195f: e8 7c e6 ff ff                                  call   0x49ffe0
  004a1964: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004a1967: 51                                              push   ecx
  004a1968: e8 93 25 00 00                                  call   0x4a3f00
  004a196d: 83 c4 10                                        add    esp,0x10
  004a1970: 8d 55 84                                        lea    edx,[ebp-0x7c]
  004a1973: 52                                              push   edx
  004a1974: 51                                              push   ecx
  004a1975: 8b c4                                           mov    eax,esp
  004a1977: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a197a: 53                                              push   ebx
  004a197b: 50                                              push   eax
  004a197c: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004a197f: e8 4c 00 00 00                                  call   0x4a19d0
  004a1984: 51                                              push   ecx
  004a1985: 8b cc                                           mov    ecx,esp
  004a1987: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a198a: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a198d: 52                                              push   edx
  004a198e: e8 4d e6 ff ff                                  call   0x49ffe0
  004a1993: e8 c8 23 00 00                                  call   0x4a3d60
  004a1998: 83 c4 0c                                        add    esp,0xc
  004a199b: 8d 4d 84                                        lea    ecx,[ebp-0x7c]
  004a199e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004a19a5: e8 96 50 00 00                                  call   0x4a6a40
  004a19aa: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a19ad: 5f                                              pop    edi
  004a19ae: 5e                                              pop    esi
  004a19af: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a19b6: 5b                                              pop    ebx
  004a19b7: 8b e5                                           mov    esp,ebp
  004a19b9: 5d                                              pop    ebp
  004a19ba: c2 0c 00                                        ret    0xc
  004a51b0: 8b 41 18                                        mov    eax,DWORD PTR [ecx+0x18]
  004a51b3: c3                                              ret
  004a9f90: 55                                              push   ebp
  004a9f91: 8b ec                                           mov    ebp,esp
  004a9f93: 8b c1                                           mov    eax,ecx
  004a9f95: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a9f98: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a9f9a: 89 10                                           mov    DWORD PTR [eax],edx
  004a9f9c: 5d                                              pop    ebp
  004a9f9d: c2 04 00                                        ret    0x4
  004aa4a0: 55                                              push   ebp
  004aa4a1: 8b ec                                           mov    ebp,esp
  004aa4a3: 6a ff                                           push   0xffffffff
  004aa4a5: 68 f1 c1 4d 00                                  push   0x4dc1f1
  004aa4aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004aa4b0: 50                                              push   eax
  004aa4b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004aa4b8: 83 ec 54                                        sub    esp,0x54
  004aa4bb: 53                                              push   ebx
  004aa4bc: 56                                              push   esi
  004aa4bd: 57                                              push   edi
  004aa4be: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa4c1: 8b f1                                           mov    esi,ecx
  004aa4c3: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004aa4c6: 57                                              push   edi
  004aa4c7: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004aa4ca: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004aa4cd: e8 ee 17 ff ff                                  call   0x49bcc0
  004aa4d2: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  004aa4d5: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  004aa4d8: c7 45 bc 48 fa 4d 00                            mov    DWORD PTR [ebp-0x44],0x4dfa48
  004aa4df: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004aa4e2: 33 ff                                           xor    edi,edi
  004aa4e4: 3b cf                                           cmp    ecx,edi
  004aa4e6: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004aa4e9: 75 05                                           jne    0x4aa4f0
  004aa4eb: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004aa4ee: eb 1d                                           jmp    0x4aa50d
  004aa4f0: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  004aa4f3: 2b f9                                           sub    edi,ecx
  004aa4f5: b8 93 24 49 92                                  mov    eax,0x92492493
  004aa4fa: f7 ef                                           imul   edi
  004aa4fc: 03 d7                                           add    edx,edi
  004aa4fe: c1 fa 04                                        sar    edx,0x4
  004aa501: 8b c2                                           mov    eax,edx
  004aa503: c1 e8 1f                                        shr    eax,0x1f
  004aa506: 03 d0                                           add    edx,eax
  004aa508: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004aa50b: 8b fa                                           mov    edi,edx
  004aa50d: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004aa510: 85 db                                           test   ebx,ebx
  004aa512: 0f 84 b7 03 00 00                               je     0x4aa8cf
  004aa518: 85 c9                                           test   ecx,ecx
  004aa51a: 75 04                                           jne    0x4aa520
  004aa51c: 33 d2                                           xor    edx,edx
  004aa51e: eb 1b                                           jmp    0x4aa53b
  004aa520: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004aa523: 2b f9                                           sub    edi,ecx
  004aa525: b8 93 24 49 92                                  mov    eax,0x92492493
  004aa52a: f7 ef                                           imul   edi
  004aa52c: 03 d7                                           add    edx,edi
  004aa52e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa531: c1 fa 04                                        sar    edx,0x4
  004aa534: 8b c2                                           mov    eax,edx
  004aa536: c1 e8 1f                                        shr    eax,0x1f
  004aa539: 03 d0                                           add    edx,eax
  004aa53b: b8 49 92 24 09                                  mov    eax,0x9249249
  004aa540: 2b c2                                           sub    eax,edx
  004aa542: 3b c3                                           cmp    eax,ebx
  004aa544: 73 2c                                           jae    0x4aa572
  004aa546: 68 80 05 50 00                                  push   0x500580
  004aa54b: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004aa54e: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004aa554: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004aa557: 51                                              push   ecx
  004aa558: 8d 4d a0                                        lea    ecx,[ebp-0x60]
  004aa55b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004aa55f: e8 bc ae f5 ff                                  call   0x405420
  004aa564: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004aa569: 8d 55 a0                                        lea    edx,[ebp-0x60]
  004aa56c: 52                                              push   edx
  004aa56d: e8 e4 77 02 00                                  call   0x4d1d56
  004aa572: 85 c9                                           test   ecx,ecx
  004aa574: 75 04                                           jne    0x4aa57a
  004aa576: 33 d2                                           xor    edx,edx
  004aa578: eb 1b                                           jmp    0x4aa595
  004aa57a: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004aa57d: 2b f9                                           sub    edi,ecx
  004aa57f: b8 93 24 49 92                                  mov    eax,0x92492493
  004aa584: f7 ef                                           imul   edi
  004aa586: 03 d7                                           add    edx,edi
  004aa588: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa58b: c1 fa 04                                        sar    edx,0x4
  004aa58e: 8b c2                                           mov    eax,edx
  004aa590: c1 e8 1f                                        shr    eax,0x1f
  004aa593: 03 d0                                           add    edx,eax
  004aa595: 03 d3                                           add    edx,ebx
  004aa597: 3b fa                                           cmp    edi,edx
  004aa599: 0f 83 a2 01 00 00                               jae    0x4aa741
  004aa59f: 8b c7                                           mov    eax,edi
  004aa5a1: d1 e8                                           shr    eax,1
  004aa5a3: ba 49 92 24 09                                  mov    edx,0x9249249
  004aa5a8: 2b d0                                           sub    edx,eax
  004aa5aa: 3b d7                                           cmp    edx,edi
  004aa5ac: 73 0c                                           jae    0x4aa5ba
  004aa5ae: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004aa5b5: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa5b8: eb 05                                           jmp    0x4aa5bf
  004aa5ba: 03 f8                                           add    edi,eax
  004aa5bc: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004aa5bf: 85 c9                                           test   ecx,ecx
  004aa5c1: 75 04                                           jne    0x4aa5c7
  004aa5c3: 33 d2                                           xor    edx,edx
  004aa5c5: eb 1b                                           jmp    0x4aa5e2
  004aa5c7: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004aa5ca: 2b f9                                           sub    edi,ecx
  004aa5cc: b8 93 24 49 92                                  mov    eax,0x92492493
  004aa5d1: f7 ef                                           imul   edi
  004aa5d3: 03 d7                                           add    edx,edi
  004aa5d5: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa5d8: c1 fa 04                                        sar    edx,0x4
  004aa5db: 8b c2                                           mov    eax,edx
  004aa5dd: c1 e8 1f                                        shr    eax,0x1f
  004aa5e0: 03 d0                                           add    edx,eax
  004aa5e2: 03 d3                                           add    edx,ebx
  004aa5e4: 3b fa                                           cmp    edi,edx
  004aa5e6: 73 27                                           jae    0x4aa60f
  004aa5e8: 85 c9                                           test   ecx,ecx
  004aa5ea: 75 04                                           jne    0x4aa5f0
  004aa5ec: 33 d2                                           xor    edx,edx
  004aa5ee: eb 18                                           jmp    0x4aa608
  004aa5f0: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004aa5f3: 2b f9                                           sub    edi,ecx
  004aa5f5: b8 93 24 49 92                                  mov    eax,0x92492493
  004aa5fa: f7 ef                                           imul   edi
  004aa5fc: 03 d7                                           add    edx,edi
  004aa5fe: c1 fa 04                                        sar    edx,0x4
  004aa601: 8b ca                                           mov    ecx,edx
  004aa603: c1 e9 1f                                        shr    ecx,0x1f
  004aa606: 03 d1                                           add    edx,ecx
  004aa608: 03 d3                                           add    edx,ebx
  004aa60a: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004aa60d: 8b fa                                           mov    edi,edx
  004aa60f: 8d 14 fd 00 00 00 00                            lea    edx,[edi*8+0x0]
  004aa616: 2b d7                                           sub    edx,edi
  004aa618: c1 e2 02                                        shl    edx,0x2
  004aa61b: 52                                              push   edx
  004aa61c: e8 cf 79 f9 ff                                  call   0x441ff0
  004aa621: 83 c4 04                                        add    esp,0x4
  004aa624: 50                                              push   eax
  004aa625: 51                                              push   ecx
  004aa626: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004aa629: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004aa62c: 8d 45 08                                        lea    eax,[ebp+0x8]
  004aa62f: 8b cc                                           mov    ecx,esp
  004aa631: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004aa634: 50                                              push   eax
  004aa635: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004aa639: e8 52 f9 ff ff                                  call   0x4a9f90
  004aa63e: 51                                              push   ecx
  004aa63f: 8b cc                                           mov    ecx,esp
  004aa641: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004aa644: 51                                              push   ecx
  004aa645: 8b ce                                           mov    ecx,esi
  004aa647: e8 b4 02 00 00                                  call   0x4aa900
  004aa64c: 8b ce                                           mov    ecx,esi
  004aa64e: e8 fd 1c 00 00                                  call   0x4ac350
  004aa653: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004aa656: 52                                              push   edx
  004aa657: 53                                              push   ebx
  004aa658: 50                                              push   eax
  004aa659: 8b ce                                           mov    ecx,esi
  004aa65b: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004aa65e: e8 4d 0d 00 00                                  call   0x4ab3b0
  004aa663: 50                                              push   eax
  004aa664: 51                                              push   ecx
  004aa665: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004aa668: 8b c4                                           mov    eax,esp
  004aa66a: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004aa66d: 50                                              push   eax
  004aa66e: 8b ce                                           mov    ecx,esi
  004aa670: e8 1b f7 ff ff                                  call   0x4a9d90
  004aa675: 51                                              push   ecx
  004aa676: 8d 55 08                                        lea    edx,[ebp+0x8]
  004aa679: 8b cc                                           mov    ecx,esp
  004aa67b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004aa67e: 52                                              push   edx
  004aa67f: e8 0c f9 ff ff                                  call   0x4a9f90
  004aa684: 8b ce                                           mov    ecx,esi
  004aa686: e8 c5 1c 00 00                                  call   0x4ac350
  004aa68b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004aa68e: 85 c0                                           test   eax,eax
  004aa690: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004aa697: 74 2d                                           je     0x4aa6c6
  004aa699: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004aa69c: 8b f8                                           mov    edi,eax
  004aa69e: 3b f9                                           cmp    edi,ecx
  004aa6a0: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004aa6a3: 74 12                                           je     0x4aa6b7
  004aa6a5: 8b 07                                           mov    eax,DWORD PTR [edi]
  004aa6a7: 6a 00                                           push   0x0
  004aa6a9: 8b cf                                           mov    ecx,edi
  004aa6ab: ff 10                                           call   DWORD PTR [eax]
  004aa6ad: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004aa6b0: 83 c7 1c                                        add    edi,0x1c
  004aa6b3: 3b f8                                           cmp    edi,eax
  004aa6b5: 75 ee                                           jne    0x4aa6a5
  004aa6b7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004aa6ba: 50                                              push   eax
  004aa6bb: e8 a0 79 f9 ff                                  call   0x442060
  004aa6c0: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa6c3: 83 c4 04                                        add    esp,0x4
  004aa6c6: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004aa6c9: 8d 0c fd 00 00 00 00                            lea    ecx,[edi*8+0x0]
  004aa6d0: 2b cf                                           sub    ecx,edi
  004aa6d2: 85 c0                                           test   eax,eax
  004aa6d4: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004aa6d7: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004aa6da: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004aa6dd: 75 04                                           jne    0x4aa6e3
  004aa6df: 33 d2                                           xor    edx,edx
  004aa6e1: eb 18                                           jmp    0x4aa6fb
  004aa6e3: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004aa6e6: 2b c8                                           sub    ecx,eax
  004aa6e8: b8 93 24 49 92                                  mov    eax,0x92492493
  004aa6ed: f7 e9                                           imul   ecx
  004aa6ef: 03 d1                                           add    edx,ecx
  004aa6f1: c1 fa 04                                        sar    edx,0x4
  004aa6f4: 8b c2                                           mov    eax,edx
  004aa6f6: c1 e8 1f                                        shr    eax,0x1f
  004aa6f9: 03 d0                                           add    edx,eax
  004aa6fb: 03 da                                           add    ebx,edx
  004aa6fd: 8d 0c dd 00 00 00 00                            lea    ecx,[ebx*8+0x0]
  004aa704: 2b cb                                           sub    ecx,ebx
  004aa706: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004aa709: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004aa70c: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004aa70f: e9 bb 01 00 00                                  jmp    0x4aa8cf
  004aa741: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004aa744: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004aa747: 8b cf                                           mov    ecx,edi
  004aa749: 2b ca                                           sub    ecx,edx
  004aa74b: b8 93 24 49 92                                  mov    eax,0x92492493
  004aa750: f7 e9                                           imul   ecx
  004aa752: 03 d1                                           add    edx,ecx
  004aa754: c1 fa 04                                        sar    edx,0x4
  004aa757: 8b ca                                           mov    ecx,edx
  004aa759: c1 e9 1f                                        shr    ecx,0x1f
  004aa75c: 03 d1                                           add    edx,ecx
  004aa75e: 3b d3                                           cmp    edx,ebx
  004aa760: 0f 83 db 00 00 00                               jae    0x4aa841
  004aa766: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004aa769: 8d 3c dd 00 00 00 00                            lea    edi,[ebx*8+0x0]
  004aa770: 2b fb                                           sub    edi,ebx
  004aa772: c1 e7 02                                        shl    edi,0x2
  004aa775: 8d 04 17                                        lea    eax,[edi+edx*1]
  004aa778: 50                                              push   eax
  004aa779: 51                                              push   ecx
  004aa77a: 8b cc                                           mov    ecx,esp
  004aa77c: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa77f: 51                                              push   ecx
  004aa780: 8b ce                                           mov    ecx,esi
  004aa782: e8 09 f6 ff ff                                  call   0x4a9d90
  004aa787: 51                                              push   ecx
  004aa788: 8d 55 08                                        lea    edx,[ebp+0x8]
  004aa78b: 8b cc                                           mov    ecx,esp
  004aa78d: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa790: 52                                              push   edx
  004aa791: e8 fa f7 ff ff                                  call   0x4a9f90
  004aa796: 8b ce                                           mov    ecx,esi
  004aa798: e8 b3 1b 00 00                                  call   0x4ac350
  004aa79d: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004aa7a0: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004aa7a3: 2b ca                                           sub    ecx,edx
  004aa7a5: 8d 45 bc                                        lea    eax,[ebp-0x44]
  004aa7a8: 50                                              push   eax
  004aa7a9: b8 93 24 49 92                                  mov    eax,0x92492493
  004aa7ae: f7 e9                                           imul   ecx
  004aa7b0: 03 d1                                           add    edx,ecx
  004aa7b2: c1 fa 04                                        sar    edx,0x4
  004aa7b5: 8b ca                                           mov    ecx,edx
  004aa7b7: c1 e9 1f                                        shr    ecx,0x1f
  004aa7ba: 03 d1                                           add    edx,ecx
  004aa7bc: 8b c3                                           mov    eax,ebx
  004aa7be: 2b c2                                           sub    eax,edx
  004aa7c0: 50                                              push   eax
  004aa7c1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004aa7c4: 50                                              push   eax
  004aa7c5: 8b ce                                           mov    ecx,esi
  004aa7c7: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004aa7cb: e8 e0 0b 00 00                                  call   0x4ab3b0
  004aa7d0: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004aa7d3: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004aa7d6: 51                                              push   ecx
  004aa7d7: 51                                              push   ecx
  004aa7d8: 8b d4                                           mov    edx,esp
  004aa7da: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004aa7dd: 03 c7                                           add    eax,edi
  004aa7df: 53                                              push   ebx
  004aa7e0: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004aa7e3: 52                                              push   edx
  004aa7e4: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004aa7e7: 50                                              push   eax
  004aa7e8: 8b ce                                           mov    ecx,esi
  004aa7ea: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004aa7f1: e8 9a f5 ff ff                                  call   0x4a9d90
  004aa7f6: 8b c8                                           mov    ecx,eax
  004aa7f8: e8 13 0c 00 00                                  call   0x4ab410
  004aa7fd: 51                                              push   ecx
  004aa7fe: 8b cc                                           mov    ecx,esp
  004aa800: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa803: e9 b6 00 00 00                                  jmp    0x4aa8be
  004aa841: 57                                              push   edi
  004aa842: 51                                              push   ecx
  004aa843: 8d 55 0c                                        lea    edx,[ebp+0xc]
  004aa846: 8b cc                                           mov    ecx,esp
  004aa848: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa84b: 52                                              push   edx
  004aa84c: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004aa84f: e8 3c f7 ff ff                                  call   0x4a9f90
  004aa854: 51                                              push   ecx
  004aa855: 8b c4                                           mov    eax,esp
  004aa857: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa85a: 53                                              push   ebx
  004aa85b: 50                                              push   eax
  004aa85c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004aa85f: e8 ac 0b 00 00                                  call   0x4ab410
  004aa864: 8b ce                                           mov    ecx,esi
  004aa866: e8 e5 1a 00 00                                  call   0x4ac350
  004aa86b: 51                                              push   ecx
  004aa86c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004aa86f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa872: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004aa875: 8b c4                                           mov    eax,esp
  004aa877: 51                                              push   ecx
  004aa878: 8b d4                                           mov    edx,esp
  004aa87a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa87d: 53                                              push   ebx
  004aa87e: 89 08                                           mov    DWORD PTR [eax],ecx
  004aa880: 52                                              push   edx
  004aa881: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004aa884: e8 87 0b 00 00                                  call   0x4ab410
  004aa889: 51                                              push   ecx
  004aa88a: 8d 45 08                                        lea    eax,[ebp+0x8]
  004aa88d: 8b cc                                           mov    ecx,esp
  004aa88f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa892: 50                                              push   eax
  004aa893: e8 f8 f6 ff ff                                  call   0x4a9f90
  004aa898: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004aa89b: 51                                              push   ecx
  004aa89c: e8 3f 1b 00 00                                  call   0x4ac3e0
  004aa8a1: 83 c4 10                                        add    esp,0x10
  004aa8a4: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004aa8a7: 52                                              push   edx
  004aa8a8: 51                                              push   ecx
  004aa8a9: 8b c4                                           mov    eax,esp
  004aa8ab: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa8ae: 53                                              push   ebx
  004aa8af: 50                                              push   eax
  004aa8b0: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004aa8b3: e8 58 00 00 00                                  call   0x4aa910
  004aa8b8: 51                                              push   ecx
  004aa8b9: 8b cc                                           mov    ecx,esp
  004aa8bb: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa8be: 8d 55 08                                        lea    edx,[ebp+0x8]
  004aa8c1: 52                                              push   edx
  004aa8c2: e8 c9 f6 ff ff                                  call   0x4a9f90
  004aa8c7: e8 e4 1a 00 00                                  call   0x4ac3b0
  004aa8cc: 83 c4 0c                                        add    esp,0xc
  004aa8cf: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004aa8d2: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004aa8d9: e8 c2 d8 ff ff                                  call   0x4a81a0
  004aa8de: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004aa8e1: 5f                                              pop    edi
  004aa8e2: 5e                                              pop    esi
  004aa8e3: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004aa8ea: 5b                                              pop    ebx
  004aa8eb: 8b e5                                           mov    esp,ebp
  004aa8ed: 5d                                              pop    ebp
  004aa8ee: c2 0c 00                                        ret    0xc
  004ad840: 55                                              push   ebp
  004ad841: 8b ec                                           mov    ebp,esp
  004ad843: 8b c1                                           mov    eax,ecx
  004ad845: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ad848: 89 48 10                                        mov    DWORD PTR [eax+0x10],ecx
  004ad84b: 33 c9                                           xor    ecx,ecx
  004ad84d: c7 00 28 f9 4d 00                               mov    DWORD PTR [eax],0x4df928
  004ad853: c7 40 08 01 00 00 00                            mov    DWORD PTR [eax+0x8],0x1
  004ad85a: 89 48 0c                                        mov    DWORD PTR [eax+0xc],ecx
  004ad85d: c7 40 04 08 00 00 00                            mov    DWORD PTR [eax+0x4],0x8
  004ad864: 88 48 14                                        mov    BYTE PTR [eax+0x14],cl
  004ad867: 5d                                              pop    ebp
  004ad868: c2 04 00                                        ret    0x4
  004ae240: 55                                              push   ebp
  004ae241: 8b ec                                           mov    ebp,esp
  004ae243: 8b c1                                           mov    eax,ecx
  004ae245: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ae248: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004ae24a: 89 10                                           mov    DWORD PTR [eax],edx
  004ae24c: 5d                                              pop    ebp
  004ae24d: c2 04 00                                        ret    0x4
  004ae250: 55                                              push   ebp
  004ae251: 8b ec                                           mov    ebp,esp
  004ae253: 6a ff                                           push   0xffffffff
  004ae255: 68 31 c6 4d 00                                  push   0x4dc631
  004ae25a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004ae260: 50                                              push   eax
  004ae261: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004ae268: 83 ec 54                                        sub    esp,0x54
  004ae26b: 53                                              push   ebx
  004ae26c: 56                                              push   esi
  004ae26d: 57                                              push   edi
  004ae26e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004ae271: 8a 07                                           mov    al,BYTE PTR [edi]
  004ae273: 8b f1                                           mov    esi,ecx
  004ae275: 66 8b 4f 02                                     mov    cx,WORD PTR [edi+0x2]
  004ae279: 8d 57 04                                        lea    edx,[edi+0x4]
  004ae27c: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004ae27f: 66 89 4d be                                     mov    WORD PTR [ebp-0x42],cx
  004ae283: 52                                              push   edx
  004ae284: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004ae287: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004ae28a: 88 45 bc                                        mov    BYTE PTR [ebp-0x44],al
  004ae28d: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004ae293: 66 8b 47 14                                     mov    ax,WORD PTR [edi+0x14]
  004ae297: 66 8b 4f 16                                     mov    cx,WORD PTR [edi+0x16]
  004ae29b: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  004ae29e: 66 89 45 d0                                     mov    WORD PTR [ebp-0x30],ax
  004ae2a2: 66 89 4d d2                                     mov    WORD PTR [ebp-0x2e],cx
  004ae2a6: 89 55 d4                                        mov    DWORD PTR [ebp-0x2c],edx
  004ae2a9: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004ae2ac: 33 ff                                           xor    edi,edi
  004ae2ae: 3b cf                                           cmp    ecx,edi
  004ae2b0: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004ae2b3: 75 05                                           jne    0x4ae2ba
  004ae2b5: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004ae2b8: eb 1d                                           jmp    0x4ae2d7
  004ae2ba: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  004ae2bd: 2b f9                                           sub    edi,ecx
  004ae2bf: b8 93 24 49 92                                  mov    eax,0x92492493
  004ae2c4: f7 ef                                           imul   edi
  004ae2c6: 03 d7                                           add    edx,edi
  004ae2c8: c1 fa 04                                        sar    edx,0x4
  004ae2cb: 8b c2                                           mov    eax,edx
  004ae2cd: c1 e8 1f                                        shr    eax,0x1f
  004ae2d0: 03 d0                                           add    edx,eax
  004ae2d2: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004ae2d5: 8b fa                                           mov    edi,edx
  004ae2d7: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004ae2da: 85 db                                           test   ebx,ebx
  004ae2dc: 0f 84 c9 03 00 00                               je     0x4ae6ab
  004ae2e2: 85 c9                                           test   ecx,ecx
  004ae2e4: 75 04                                           jne    0x4ae2ea
  004ae2e6: 33 d2                                           xor    edx,edx
  004ae2e8: eb 1b                                           jmp    0x4ae305
  004ae2ea: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004ae2ed: 2b f9                                           sub    edi,ecx
  004ae2ef: b8 93 24 49 92                                  mov    eax,0x92492493
  004ae2f4: f7 ef                                           imul   edi
  004ae2f6: 03 d7                                           add    edx,edi
  004ae2f8: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004ae2fb: c1 fa 04                                        sar    edx,0x4
  004ae2fe: 8b c2                                           mov    eax,edx
  004ae300: c1 e8 1f                                        shr    eax,0x1f
  004ae303: 03 d0                                           add    edx,eax
  004ae305: b8 49 92 24 09                                  mov    eax,0x9249249
  004ae30a: 2b c2                                           sub    eax,edx
  004ae30c: 3b c3                                           cmp    eax,ebx
  004ae30e: 73 2c                                           jae    0x4ae33c
  004ae310: 68 80 05 50 00                                  push   0x500580
  004ae315: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004ae318: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004ae31e: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004ae321: 51                                              push   ecx
  004ae322: 8d 4d a0                                        lea    ecx,[ebp-0x60]
  004ae325: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004ae329: e8 f2 70 f5 ff                                  call   0x405420
  004ae32e: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004ae333: 8d 55 a0                                        lea    edx,[ebp-0x60]
  004ae336: 52                                              push   edx
  004ae337: e8 1a 3a 02 00                                  call   0x4d1d56
  004ae33c: 85 c9                                           test   ecx,ecx
  004ae33e: 75 04                                           jne    0x4ae344
  004ae340: 33 d2                                           xor    edx,edx
  004ae342: eb 1b                                           jmp    0x4ae35f
  004ae344: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004ae347: 2b f9                                           sub    edi,ecx
  004ae349: b8 93 24 49 92                                  mov    eax,0x92492493
  004ae34e: f7 ef                                           imul   edi
  004ae350: 03 d7                                           add    edx,edi
  004ae352: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004ae355: c1 fa 04                                        sar    edx,0x4
  004ae358: 8b c2                                           mov    eax,edx
  004ae35a: c1 e8 1f                                        shr    eax,0x1f
  004ae35d: 03 d0                                           add    edx,eax
  004ae35f: 03 d3                                           add    edx,ebx
  004ae361: 3b fa                                           cmp    edi,edx
  004ae363: 0f 83 a8 01 00 00                               jae    0x4ae511
  004ae369: 8b c7                                           mov    eax,edi
  004ae36b: d1 e8                                           shr    eax,1
  004ae36d: ba 49 92 24 09                                  mov    edx,0x9249249
  004ae372: 2b d0                                           sub    edx,eax
  004ae374: 3b d7                                           cmp    edx,edi
  004ae376: 73 0c                                           jae    0x4ae384
  004ae378: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004ae37f: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004ae382: eb 05                                           jmp    0x4ae389
  004ae384: 03 f8                                           add    edi,eax
  004ae386: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004ae389: 85 c9                                           test   ecx,ecx
  004ae38b: 75 04                                           jne    0x4ae391
  004ae38d: 33 d2                                           xor    edx,edx
  004ae38f: eb 1b                                           jmp    0x4ae3ac
  004ae391: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004ae394: 2b f9                                           sub    edi,ecx
  004ae396: b8 93 24 49 92                                  mov    eax,0x92492493
  004ae39b: f7 ef                                           imul   edi
  004ae39d: 03 d7                                           add    edx,edi
  004ae39f: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004ae3a2: c1 fa 04                                        sar    edx,0x4
  004ae3a5: 8b c2                                           mov    eax,edx
  004ae3a7: c1 e8 1f                                        shr    eax,0x1f
  004ae3aa: 03 d0                                           add    edx,eax
  004ae3ac: 03 d3                                           add    edx,ebx
  004ae3ae: 3b fa                                           cmp    edi,edx
  004ae3b0: 73 27                                           jae    0x4ae3d9
  004ae3b2: 85 c9                                           test   ecx,ecx
  004ae3b4: 75 04                                           jne    0x4ae3ba
  004ae3b6: 33 d2                                           xor    edx,edx
  004ae3b8: eb 18                                           jmp    0x4ae3d2
  004ae3ba: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004ae3bd: 2b f9                                           sub    edi,ecx
  004ae3bf: b8 93 24 49 92                                  mov    eax,0x92492493
  004ae3c4: f7 ef                                           imul   edi
  004ae3c6: 03 d7                                           add    edx,edi
  004ae3c8: c1 fa 04                                        sar    edx,0x4
  004ae3cb: 8b ca                                           mov    ecx,edx
  004ae3cd: c1 e9 1f                                        shr    ecx,0x1f
  004ae3d0: 03 d1                                           add    edx,ecx
  004ae3d2: 03 d3                                           add    edx,ebx
  004ae3d4: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004ae3d7: 8b fa                                           mov    edi,edx
  004ae3d9: 8d 14 fd 00 00 00 00                            lea    edx,[edi*8+0x0]
  004ae3e0: 2b d7                                           sub    edx,edi
  004ae3e2: c1 e2 02                                        shl    edx,0x2
  004ae3e5: 52                                              push   edx
  004ae3e6: e8 05 3c f9 ff                                  call   0x441ff0
  004ae3eb: 83 c4 04                                        add    esp,0x4
  004ae3ee: 50                                              push   eax
  004ae3ef: 51                                              push   ecx
  004ae3f0: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004ae3f3: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004ae3f6: 8d 45 08                                        lea    eax,[ebp+0x8]
  004ae3f9: 8b cc                                           mov    ecx,esp
  004ae3fb: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004ae3fe: 50                                              push   eax
  004ae3ff: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004ae403: e8 38 fe ff ff                                  call   0x4ae240
  004ae408: 51                                              push   ecx
  004ae409: 8b cc                                           mov    ecx,esp
  004ae40b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004ae40e: 51                                              push   ecx
  004ae40f: 8b ce                                           mov    ecx,esi
  004ae411: e8 ea 02 00 00                                  call   0x4ae700
  004ae416: 8b ce                                           mov    ecx,esi
  004ae418: e8 33 04 00 00                                  call   0x4ae850
  004ae41d: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004ae420: 52                                              push   edx
  004ae421: 53                                              push   ebx
  004ae422: 50                                              push   eax
  004ae423: 8b ce                                           mov    ecx,esi
  004ae425: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004ae428: e8 03 03 00 00                                  call   0x4ae730
  004ae42d: 50                                              push   eax
  004ae42e: 51                                              push   ecx
  004ae42f: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004ae432: 8b c4                                           mov    eax,esp
  004ae434: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004ae437: 50                                              push   eax
  004ae438: 8b ce                                           mov    ecx,esi
  004ae43a: e8 71 fd ff ff                                  call   0x4ae1b0
  004ae43f: 51                                              push   ecx
  004ae440: 8d 55 08                                        lea    edx,[ebp+0x8]
  004ae443: 8b cc                                           mov    ecx,esp
  004ae445: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004ae448: 52                                              push   edx
  004ae449: e8 f2 fd ff ff                                  call   0x4ae240
  004ae44e: 8b ce                                           mov    ecx,esi
  004ae450: e8 fb 03 00 00                                  call   0x4ae850
  004ae455: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ae458: 85 c0                                           test   eax,eax
  004ae45a: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004ae461: 74 30                                           je     0x4ae493
  004ae463: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ae466: 8b f8                                           mov    edi,eax
  004ae468: 3b f9                                           cmp    edi,ecx
  004ae46a: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004ae46d: 74 15                                           je     0x4ae484
  004ae46f: 6a 01                                           push   0x1
  004ae471: 8d 4f 04                                        lea    ecx,[edi+0x4]
  004ae474: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ae47a: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ae47d: 83 c7 1c                                        add    edi,0x1c
  004ae480: 3b f8                                           cmp    edi,eax
  004ae482: 75 eb                                           jne    0x4ae46f
  004ae484: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ae487: 50                                              push   eax
  004ae488: e8 d3 3b f9 ff                                  call   0x442060
  004ae48d: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004ae490: 83 c4 04                                        add    esp,0x4
  004ae493: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ae496: 8d 0c fd 00 00 00 00                            lea    ecx,[edi*8+0x0]
  004ae49d: 2b cf                                           sub    ecx,edi
  004ae49f: 85 c0                                           test   eax,eax
  004ae4a1: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004ae4a4: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004ae4a7: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004ae4aa: 75 04                                           jne    0x4ae4b0
  004ae4ac: 33 d2                                           xor    edx,edx
  004ae4ae: eb 18                                           jmp    0x4ae4c8
  004ae4b0: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ae4b3: 2b c8                                           sub    ecx,eax
  004ae4b5: b8 93 24 49 92                                  mov    eax,0x92492493
  004ae4ba: f7 e9                                           imul   ecx
  004ae4bc: 03 d1                                           add    edx,ecx
  004ae4be: c1 fa 04                                        sar    edx,0x4
  004ae4c1: 8b c2                                           mov    eax,edx
  004ae4c3: c1 e8 1f                                        shr    eax,0x1f
  004ae4c6: 03 d0                                           add    edx,eax
  004ae4c8: 03 da                                           add    ebx,edx
  004ae4ca: 8d 0c dd 00 00 00 00                            lea    ecx,[ebx*8+0x0]
  004ae4d1: 2b cb                                           sub    ecx,ebx
  004ae4d3: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004ae4d6: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004ae4d9: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004ae4dc: e9 ca 01 00 00                                  jmp    0x4ae6ab
  004ae511: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004ae514: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004ae517: 8b cf                                           mov    ecx,edi
  004ae519: 2b ca                                           sub    ecx,edx
  004ae51b: b8 93 24 49 92                                  mov    eax,0x92492493
  004ae520: f7 e9                                           imul   ecx
  004ae522: 03 d1                                           add    edx,ecx
  004ae524: c1 fa 04                                        sar    edx,0x4
  004ae527: 8b c2                                           mov    eax,edx
  004ae529: c1 e8 1f                                        shr    eax,0x1f
  004ae52c: 03 d0                                           add    edx,eax
  004ae52e: 3b d3                                           cmp    edx,ebx
  004ae530: 0f 83 e7 00 00 00                               jae    0x4ae61d
  004ae536: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ae539: 8d 3c dd 00 00 00 00                            lea    edi,[ebx*8+0x0]
  004ae540: 2b fb                                           sub    edi,ebx
  004ae542: c1 e7 02                                        shl    edi,0x2
  004ae545: 8d 14 0f                                        lea    edx,[edi+ecx*1]
  004ae548: 52                                              push   edx
  004ae549: 51                                              push   ecx
  004ae54a: 8b c4                                           mov    eax,esp
  004ae54c: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae54f: 50                                              push   eax
  004ae550: 8b ce                                           mov    ecx,esi
  004ae552: e8 59 fc ff ff                                  call   0x4ae1b0
  004ae557: 51                                              push   ecx
  004ae558: 8d 55 08                                        lea    edx,[ebp+0x8]
  004ae55b: 8b cc                                           mov    ecx,esp
  004ae55d: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae560: 52                                              push   edx
  004ae561: e8 da fc ff ff                                  call   0x4ae240
  004ae566: 8b ce                                           mov    ecx,esi
  004ae568: e8 e3 02 00 00                                  call   0x4ae850
  004ae56d: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004ae570: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ae573: 2b ca                                           sub    ecx,edx
  004ae575: 8d 45 bc                                        lea    eax,[ebp-0x44]
  004ae578: 50                                              push   eax
  004ae579: b8 93 24 49 92                                  mov    eax,0x92492493
  004ae57e: f7 e9                                           imul   ecx
  004ae580: 03 d1                                           add    edx,ecx
  004ae582: c1 fa 04                                        sar    edx,0x4
  004ae585: 8b ca                                           mov    ecx,edx
  004ae587: c1 e9 1f                                        shr    ecx,0x1f
  004ae58a: 03 d1                                           add    edx,ecx
  004ae58c: 8b c3                                           mov    eax,ebx
  004ae58e: 2b c2                                           sub    eax,edx
  004ae590: 50                                              push   eax
  004ae591: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004ae594: 50                                              push   eax
  004ae595: 8b ce                                           mov    ecx,esi
  004ae597: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004ae59b: e8 90 01 00 00                                  call   0x4ae730
  004ae5a0: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004ae5a3: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004ae5a6: 51                                              push   ecx
  004ae5a7: 51                                              push   ecx
  004ae5a8: 8b d4                                           mov    edx,esp
  004ae5aa: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004ae5ad: 03 c7                                           add    eax,edi
  004ae5af: 53                                              push   ebx
  004ae5b0: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ae5b3: 52                                              push   edx
  004ae5b4: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004ae5b7: 50                                              push   eax
  004ae5b8: 8b ce                                           mov    ecx,esi
  004ae5ba: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004ae5c1: e8 ea fb ff ff                                  call   0x4ae1b0
  004ae5c6: 8b c8                                           mov    ecx,eax
  004ae5c8: e8 63 02 00 00                                  call   0x4ae830
  004ae5cd: 51                                              push   ecx
  004ae5ce: 8d 55 08                                        lea    edx,[ebp+0x8]
  004ae5d1: 8b cc                                           mov    ecx,esp
  004ae5d3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae5d6: 52                                              push   edx
  004ae5d7: e9 c2 00 00 00                                  jmp    0x4ae69e
  004ae61d: 57                                              push   edi
  004ae61e: 51                                              push   ecx
  004ae61f: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004ae622: 8b cc                                           mov    ecx,esp
  004ae624: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae627: 50                                              push   eax
  004ae628: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004ae62b: e8 10 fc ff ff                                  call   0x4ae240
  004ae630: 51                                              push   ecx
  004ae631: 8b cc                                           mov    ecx,esp
  004ae633: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae636: 53                                              push   ebx
  004ae637: 51                                              push   ecx
  004ae638: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004ae63b: e8 f0 01 00 00                                  call   0x4ae830
  004ae640: 8b ce                                           mov    ecx,esi
  004ae642: e8 09 02 00 00                                  call   0x4ae850
  004ae647: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004ae64a: 51                                              push   ecx
  004ae64b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ae64e: 8b c4                                           mov    eax,esp
  004ae650: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae653: 51                                              push   ecx
  004ae654: 89 10                                           mov    DWORD PTR [eax],edx
  004ae656: 8b c4                                           mov    eax,esp
  004ae658: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae65b: 53                                              push   ebx
  004ae65c: 50                                              push   eax
  004ae65d: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004ae660: e8 cb 01 00 00                                  call   0x4ae830
  004ae665: 51                                              push   ecx
  004ae666: 8d 55 08                                        lea    edx,[ebp+0x8]
  004ae669: 8b cc                                           mov    ecx,esp
  004ae66b: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae66e: 52                                              push   edx
  004ae66f: e8 cc fb ff ff                                  call   0x4ae240
  004ae674: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004ae677: 50                                              push   eax
  004ae678: e8 63 04 00 00                                  call   0x4aeae0
  004ae67d: 83 c4 10                                        add    esp,0x10
  004ae680: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004ae683: 51                                              push   ecx
  004ae684: 51                                              push   ecx
  004ae685: 8b d4                                           mov    edx,esp
  004ae687: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae68a: 53                                              push   ebx
  004ae68b: 52                                              push   edx
  004ae68c: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004ae68f: e8 7c 00 00 00                                  call   0x4ae710
  004ae694: 51                                              push   ecx
  004ae695: 8d 45 08                                        lea    eax,[ebp+0x8]
  004ae698: 8b cc                                           mov    ecx,esp
  004ae69a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004ae69d: 50                                              push   eax
  004ae69e: e8 9d fb ff ff                                  call   0x4ae240
  004ae6a3: e8 a8 02 00 00                                  call   0x4ae950
  004ae6a8: 83 c4 0c                                        add    esp,0xc
  004ae6ab: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  004ae6ae: 85 c0                                           test   eax,eax
  004ae6b0: 74 2d                                           je     0x4ae6df
  004ae6b2: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004ae6b5: 8a 01                                           mov    al,BYTE PTR [ecx]
  004ae6b7: 84 c0                                           test   al,al
  004ae6b9: 74 1b                                           je     0x4ae6d6
  004ae6bb: 3c ff                                           cmp    al,0xff
  004ae6bd: 74 17                                           je     0x4ae6d6
  004ae6bf: fe c8                                           dec    al
  004ae6c1: 88 01                                           mov    BYTE PTR [ecx],al
  004ae6c3: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ae6c6: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ae6cd: 5f                                              pop    edi
  004ae6ce: 5e                                              pop    esi
  004ae6cf: 5b                                              pop    ebx
  004ae6d0: 8b e5                                           mov    esp,ebp
  004ae6d2: 5d                                              pop    ebp
  004ae6d3: c2 0c 00                                        ret    0xc
  004ae6d6: 51                                              push   ecx
  004ae6d7: e8 84 39 f9 ff                                  call   0x442060
  004ae6dc: 83 c4 04                                        add    esp,0x4
  004ae6df: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ae6e2: 5f                                              pop    edi
  004ae6e3: 5e                                              pop    esi
  004ae6e4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ae6eb: 5b                                              pop    ebx
  004ae6ec: 8b e5                                           mov    esp,ebp
  004ae6ee: 5d                                              pop    ebp
  004ae6ef: c2 0c 00                                        ret    0xc
  004b4070: 56                                              push   esi
  004b4071: 8b f1                                           mov    esi,ecx
  004b4073: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004b4076: 85 c0                                           test   eax,eax
  004b4078: 74 1c                                           je     0x4b4096
  004b407a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b407d: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b407f: 84 c0                                           test   al,al
  004b4081: 74 0a                                           je     0x4b408d
  004b4083: 3c ff                                           cmp    al,0xff
  004b4085: 74 06                                           je     0x4b408d
  004b4087: fe c8                                           dec    al
  004b4089: 88 01                                           mov    BYTE PTR [ecx],al
  004b408b: eb 09                                           jmp    0x4b4096
  004b408d: 51                                              push   ecx
  004b408e: e8 cd df f8 ff                                  call   0x442060
  004b4093: 83 c4 04                                        add    esp,0x4
  004b4096: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004b409d: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004b40a4: c7 46 10 00 00 00 00                            mov    DWORD PTR [esi+0x10],0x0
  004b40ab: 5e                                              pop    esi
  004b40ac: c3                                              ret
  004b4370: 55                                              push   ebp
  004b4371: 8b ec                                           mov    ebp,esp
  004b4373: 56                                              push   esi
  004b4374: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b4377: 57                                              push   edi
  004b4378: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004b437b: 3b f7                                           cmp    esi,edi
  004b437d: 74 37                                           je     0x4b43b6
  004b437f: 53                                              push   ebx
  004b4380: 33 db                                           xor    ebx,ebx
  004b4382: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004b4385: 3b c3                                           cmp    eax,ebx
  004b4387: 74 1c                                           je     0x4b43a5
  004b4389: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b438c: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b438e: 3a c3                                           cmp    al,bl
  004b4390: 74 0a                                           je     0x4b439c
  004b4392: 3c ff                                           cmp    al,0xff
  004b4394: 74 06                                           je     0x4b439c
  004b4396: fe c8                                           dec    al
  004b4398: 88 01                                           mov    BYTE PTR [ecx],al
  004b439a: eb 09                                           jmp    0x4b43a5
  004b439c: 51                                              push   ecx
  004b439d: e8 be dc f8 ff                                  call   0x442060
  004b43a2: 83 c4 04                                        add    esp,0x4
  004b43a5: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  004b43a8: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004b43ab: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004b43ae: 83 c6 10                                        add    esi,0x10
  004b43b1: 3b f7                                           cmp    esi,edi
  004b43b3: 75 cd                                           jne    0x4b4382
  004b43b5: 5b                                              pop    ebx
  004b43b6: 5f                                              pop    edi
  004b43b7: 5e                                              pop    esi
  004b43b8: 5d                                              pop    ebp
  004b43b9: c2 08 00                                        ret    0x8
  004b47d0: 55                                              push   ebp
  004b47d1: 8b ec                                           mov    ebp,esp
  004b47d3: 6a ff                                           push   0xffffffff
  004b47d5: 68 71 c9 4d 00                                  push   0x4dc971
  004b47da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b47e0: 50                                              push   eax
  004b47e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b47e8: 83 ec 08                                        sub    esp,0x8
  004b47eb: 53                                              push   ebx
  004b47ec: 56                                              push   esi
  004b47ed: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004b47f0: 57                                              push   edi
  004b47f1: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004b47f4: 33 db                                           xor    ebx,ebx
  004b47f6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004b47f9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004b47fc: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b47ff: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  004b4802: 0f 84 86 00 00 00                               je     0x4b488e
  004b4808: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004b480b: 3b f3                                           cmp    esi,ebx
  004b480d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004b4811: 74 1f                                           je     0x4b4832
  004b4813: 8a 07                                           mov    al,BYTE PTR [edi]
  004b4815: 88 06                                           mov    BYTE PTR [esi],al
  004b4817: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  004b481a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004b481d: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004b4820: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b4825: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b4827: 51                                              push   ecx
  004b4828: 53                                              push   ebx
  004b4829: 57                                              push   edi
  004b482a: 8b ce                                           mov    ecx,esi
  004b482c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b4832: 83 c6 10                                        add    esi,0x10
  004b4835: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b4838: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004b483b: 83 c7 10                                        add    edi,0x10
  004b483e: eb bf                                           jmp    0x4b47ff
  004b488e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b4891: 5f                                              pop    edi
  004b4892: 8b c6                                           mov    eax,esi
  004b4894: 5e                                              pop    esi
  004b4895: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b489c: 5b                                              pop    ebx
  004b489d: 8b e5                                           mov    esp,ebp
  004b489f: 5d                                              pop    ebp
  004b48a0: c2 0c 00                                        ret    0xc
  004b4a20: 55                                              push   ebp
  004b4a21: 8b ec                                           mov    ebp,esp
  004b4a23: 6a ff                                           push   0xffffffff
  004b4a25: 68 9b c9 4d 00                                  push   0x4dc99b
  004b4a2a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b4a30: 50                                              push   eax
  004b4a31: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b4a38: 51                                              push   ecx
  004b4a39: 53                                              push   ebx
  004b4a3a: 56                                              push   esi
  004b4a3b: 8b f1                                           mov    esi,ecx
  004b4a3d: 8b 45 28                                        mov    eax,DWORD PTR [ebp+0x28]
  004b4a40: 50                                              push   eax
  004b4a41: 83 ec 10                                        sub    esp,0x10
  004b4a44: 8d 55 18                                        lea    edx,[ebp+0x18]
  004b4a47: 8b cc                                           mov    ecx,esp
  004b4a49: 89 65 28                                        mov    DWORD PTR [ebp+0x28],esp
  004b4a4c: bb 01 00 00 00                                  mov    ebx,0x1
  004b4a51: 52                                              push   edx
  004b4a52: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b4a55: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004b4a5b: 83 ec 10                                        sub    esp,0x10
  004b4a5e: 8d 45 08                                        lea    eax,[ebp+0x8]
  004b4a61: 8b cc                                           mov    ecx,esp
  004b4a63: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004b4a66: 50                                              push   eax
  004b4a67: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004b4a6b: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004b4a71: 8b ce                                           mov    ecx,esi
  004b4a73: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b4a76: e8 55 23 00 00                                  call   0x4b6dd0
  004b4a7b: 8a 4d 2b                                        mov    cl,BYTE PTR [ebp+0x2b]
  004b4a7e: 6a 0c                                           push   0xc
  004b4a80: 88 4e 28                                        mov    BYTE PTR [esi+0x28],cl
  004b4a83: e8 68 d5 f8 ff                                  call   0x441ff0
  004b4a88: 89 00                                           mov    DWORD PTR [eax],eax
  004b4a8a: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004b4a8d: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b4a90: 33 db                                           xor    ebx,ebx
  004b4a92: 83 c4 04                                        add    esp,0x4
  004b4a95: 3b cb                                           cmp    ecx,ebx
  004b4a97: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004b4a9a: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  004b4a9d: c7 06 20 fb 4d 00                               mov    DWORD PTR [esi],0x4dfb20
  004b4aa3: 74 1c                                           je     0x4b4ac1
  004b4aa5: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004b4aa8: 3a c3                                           cmp    al,bl
  004b4aaa: 74 0b                                           je     0x4b4ab7
  004b4aac: 3c ff                                           cmp    al,0xff
  004b4aae: 74 07                                           je     0x4b4ab7
  004b4ab0: fe c8                                           dec    al
  004b4ab2: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004b4ab5: eb 0a                                           jmp    0x4b4ac1
  004b4ab7: 49                                              dec    ecx
  004b4ab8: 51                                              push   ecx
  004b4ab9: e8 a2 d5 f8 ff                                  call   0x442060
  004b4abe: 83 c4 04                                        add    esp,0x4
  004b4ac1: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004b4ac4: 3b cb                                           cmp    ecx,ebx
  004b4ac6: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  004b4ac9: 89 5d 10                                        mov    DWORD PTR [ebp+0x10],ebx
  004b4acc: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  004b4acf: 74 2e                                           je     0x4b4aff
  004b4ad1: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004b4ad4: 3a c3                                           cmp    al,bl
  004b4ad6: 74 1d                                           je     0x4b4af5
  004b4ad8: 3c ff                                           cmp    al,0xff
  004b4ada: 74 19                                           je     0x4b4af5
  004b4adc: fe c8                                           dec    al
  004b4ade: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004b4ae1: 8b c6                                           mov    eax,esi
  004b4ae3: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b4ae6: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b4aed: 5e                                              pop    esi
  004b4aee: 5b                                              pop    ebx
  004b4aef: 8b e5                                           mov    esp,ebp
  004b4af1: 5d                                              pop    ebp
  004b4af2: c2 24 00                                        ret    0x24
  004b4af5: 49                                              dec    ecx
  004b4af6: 51                                              push   ecx
  004b4af7: e8 64 d5 f8 ff                                  call   0x442060
  004b4afc: 83 c4 04                                        add    esp,0x4
  004b4aff: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b4b02: 8b c6                                           mov    eax,esi
  004b4b04: 5e                                              pop    esi
  004b4b05: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b4b0c: 5b                                              pop    ebx
  004b4b0d: 8b e5                                           mov    esp,ebp
  004b4b0f: 5d                                              pop    ebp
  004b4b10: c2 24 00                                        ret    0x24
  004b5170: 55                                              push   ebp
  004b5171: 8b ec                                           mov    ebp,esp
  004b5173: 6a ff                                           push   0xffffffff
  004b5175: 68 2b ca 4d 00                                  push   0x4dca2b
  004b517a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b5180: 50                                              push   eax
  004b5181: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b5188: 51                                              push   ecx
  004b5189: 53                                              push   ebx
  004b518a: 56                                              push   esi
  004b518b: 8b f1                                           mov    esi,ecx
  004b518d: 8b 45 28                                        mov    eax,DWORD PTR [ebp+0x28]
  004b5190: 50                                              push   eax
  004b5191: 83 ec 10                                        sub    esp,0x10
  004b5194: 8d 55 18                                        lea    edx,[ebp+0x18]
  004b5197: 8b cc                                           mov    ecx,esp
  004b5199: 89 65 28                                        mov    DWORD PTR [ebp+0x28],esp
  004b519c: bb 01 00 00 00                                  mov    ebx,0x1
  004b51a1: 52                                              push   edx
  004b51a2: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b51a5: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004b51ab: 83 ec 10                                        sub    esp,0x10
  004b51ae: 8d 45 08                                        lea    eax,[ebp+0x8]
  004b51b1: 8b cc                                           mov    ecx,esp
  004b51b3: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004b51b6: 50                                              push   eax
  004b51b7: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004b51bb: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004b51c1: 8b ce                                           mov    ecx,esi
  004b51c3: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b51c6: e8 55 f8 ff ff                                  call   0x4b4a20
  004b51cb: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b51ce: 33 db                                           xor    ebx,ebx
  004b51d0: 3b cb                                           cmp    ecx,ebx
  004b51d2: c7 06 50 fb 4d 00                               mov    DWORD PTR [esi],0x4dfb50
  004b51d8: 74 1c                                           je     0x4b51f6
  004b51da: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004b51dd: 3a c3                                           cmp    al,bl
  004b51df: 74 0b                                           je     0x4b51ec
  004b51e1: 3c ff                                           cmp    al,0xff
  004b51e3: 74 07                                           je     0x4b51ec
  004b51e5: fe c8                                           dec    al
  004b51e7: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004b51ea: eb 0a                                           jmp    0x4b51f6
  004b51ec: 49                                              dec    ecx
  004b51ed: 51                                              push   ecx
  004b51ee: e8 6d ce f8 ff                                  call   0x442060
  004b51f3: 83 c4 04                                        add    esp,0x4
  004b51f6: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004b51f9: 3b cb                                           cmp    ecx,ebx
  004b51fb: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  004b51fe: 89 5d 10                                        mov    DWORD PTR [ebp+0x10],ebx
  004b5201: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  004b5204: 74 2e                                           je     0x4b5234
  004b5206: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004b5209: 3a c3                                           cmp    al,bl
  004b520b: 74 1d                                           je     0x4b522a
  004b520d: 3c ff                                           cmp    al,0xff
  004b520f: 74 19                                           je     0x4b522a
  004b5211: fe c8                                           dec    al
  004b5213: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004b5216: 8b c6                                           mov    eax,esi
  004b5218: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b521b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b5222: 5e                                              pop    esi
  004b5223: 5b                                              pop    ebx
  004b5224: 8b e5                                           mov    esp,ebp
  004b5226: 5d                                              pop    ebp
  004b5227: c2 24 00                                        ret    0x24
  004b522a: 49                                              dec    ecx
  004b522b: 51                                              push   ecx
  004b522c: e8 2f ce f8 ff                                  call   0x442060
  004b5231: 83 c4 04                                        add    esp,0x4
  004b5234: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b5237: 8b c6                                           mov    eax,esi
  004b5239: 5e                                              pop    esi
  004b523a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b5241: 5b                                              pop    ebx
  004b5242: 8b e5                                           mov    esp,ebp
  004b5244: 5d                                              pop    ebp
  004b5245: c2 24 00                                        ret    0x24
  004b5260: 55                                              push   ebp
  004b5261: 8b ec                                           mov    ebp,esp
  004b5263: 51                                              push   ecx
  004b5264: 56                                              push   esi
  004b5265: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b5268: 68 02 f0 00 00                                  push   0xf002
  004b526d: 56                                              push   esi
  004b526e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b5275: e8 66 75 00 00                                  call   0x4bc7e0
  004b527a: 83 c4 08                                        add    esp,0x8
  004b527d: 8b c6                                           mov    eax,esi
  004b527f: 5e                                              pop    esi
  004b5280: 8b e5                                           mov    esp,ebp
  004b5282: 5d                                              pop    ebp
  004b5283: c3                                              ret
  004b5290: 55                                              push   ebp
  004b5291: 8b ec                                           mov    ebp,esp
  004b5293: 51                                              push   ecx
  004b5294: 56                                              push   esi
  004b5295: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b5298: 68 03 f0 00 00                                  push   0xf003
  004b529d: 56                                              push   esi
  004b529e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b52a5: e8 36 75 00 00                                  call   0x4bc7e0
  004b52aa: 83 c4 08                                        add    esp,0x8
  004b52ad: 8b c6                                           mov    eax,esi
  004b52af: 5e                                              pop    esi
  004b52b0: 8b e5                                           mov    esp,ebp
  004b52b2: 5d                                              pop    ebp
  004b52b3: c3                                              ret
  004b5400: 55                                              push   ebp
  004b5401: 8b ec                                           mov    ebp,esp
  004b5403: 51                                              push   ecx
  004b5404: 56                                              push   esi
  004b5405: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b5408: 68 05 f0 00 00                                  push   0xf005
  004b540d: 56                                              push   esi
  004b540e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b5415: e8 c6 73 00 00                                  call   0x4bc7e0
  004b541a: 83 c4 08                                        add    esp,0x8
  004b541d: 8b c6                                           mov    eax,esi
  004b541f: 5e                                              pop    esi
  004b5420: 8b e5                                           mov    esp,ebp
  004b5422: 5d                                              pop    ebp
  004b5423: c3                                              ret
  004b54a0: 55                                              push   ebp
  004b54a1: 8b ec                                           mov    ebp,esp
  004b54a3: 6a ff                                           push   0xffffffff
  004b54a5: 68 bb ca 4d 00                                  push   0x4dcabb
  004b54aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b54b0: 50                                              push   eax
  004b54b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b54b8: 51                                              push   ecx
  004b54b9: 53                                              push   ebx
  004b54ba: 56                                              push   esi
  004b54bb: 8b f1                                           mov    esi,ecx
  004b54bd: 8b 45 28                                        mov    eax,DWORD PTR [ebp+0x28]
  004b54c0: 50                                              push   eax
  004b54c1: 83 ec 10                                        sub    esp,0x10
  004b54c4: 8d 55 18                                        lea    edx,[ebp+0x18]
  004b54c7: 8b cc                                           mov    ecx,esp
  004b54c9: 89 65 28                                        mov    DWORD PTR [ebp+0x28],esp
  004b54cc: bb 01 00 00 00                                  mov    ebx,0x1
  004b54d1: 52                                              push   edx
  004b54d2: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b54d5: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004b54db: 83 ec 10                                        sub    esp,0x10
  004b54de: 8d 45 08                                        lea    eax,[ebp+0x8]
  004b54e1: 8b cc                                           mov    ecx,esp
  004b54e3: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004b54e6: 50                                              push   eax
  004b54e7: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004b54eb: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004b54f1: 8b ce                                           mov    ecx,esi
  004b54f3: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b54f6: e8 75 fc ff ff                                  call   0x4b5170
  004b54fb: 8a 4d 2b                                        mov    cl,BYTE PTR [ebp+0x2b]
  004b54fe: 33 db                                           xor    ebx,ebx
  004b5500: 88 4e 34                                        mov    BYTE PTR [esi+0x34],cl
  004b5503: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b5506: 3b cb                                           cmp    ecx,ebx
  004b5508: 89 5e 38                                        mov    DWORD PTR [esi+0x38],ebx
  004b550b: 89 5e 3c                                        mov    DWORD PTR [esi+0x3c],ebx
  004b550e: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004b5511: c7 06 e8 fb 4d 00                               mov    DWORD PTR [esi],0x4dfbe8
  004b5517: 74 1c                                           je     0x4b5535
  004b5519: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004b551c: 3a c3                                           cmp    al,bl
  004b551e: 74 0b                                           je     0x4b552b
  004b5520: 3c ff                                           cmp    al,0xff
  004b5522: 74 07                                           je     0x4b552b
  004b5524: fe c8                                           dec    al
  004b5526: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004b5529: eb 0a                                           jmp    0x4b5535
  004b552b: 49                                              dec    ecx
  004b552c: 51                                              push   ecx
  004b552d: e8 2e cb f8 ff                                  call   0x442060
  004b5532: 83 c4 04                                        add    esp,0x4
  004b5535: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004b5538: 3b cb                                           cmp    ecx,ebx
  004b553a: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  004b553d: 89 5d 10                                        mov    DWORD PTR [ebp+0x10],ebx
  004b5540: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  004b5543: 74 2e                                           je     0x4b5573
  004b5545: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004b5548: 3a c3                                           cmp    al,bl
  004b554a: 74 1d                                           je     0x4b5569
  004b554c: 3c ff                                           cmp    al,0xff
  004b554e: 74 19                                           je     0x4b5569
  004b5550: fe c8                                           dec    al
  004b5552: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004b5555: 8b c6                                           mov    eax,esi
  004b5557: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b555a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b5561: 5e                                              pop    esi
  004b5562: 5b                                              pop    ebx
  004b5563: 8b e5                                           mov    esp,ebp
  004b5565: 5d                                              pop    ebp
  004b5566: c2 24 00                                        ret    0x24
  004b5569: 49                                              dec    ecx
  004b556a: 51                                              push   ecx
  004b556b: e8 f0 ca f8 ff                                  call   0x442060
  004b5570: 83 c4 04                                        add    esp,0x4
  004b5573: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b5576: 8b c6                                           mov    eax,esi
  004b5578: 5e                                              pop    esi
  004b5579: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b5580: 5b                                              pop    ebx
  004b5581: 8b e5                                           mov    esp,ebp
  004b5583: 5d                                              pop    ebp
  004b5584: c2 24 00                                        ret    0x24
  004b5e20: 55                                              push   ebp
  004b5e21: 8b ec                                           mov    ebp,esp
  004b5e23: 51                                              push   ecx
  004b5e24: 56                                              push   esi
  004b5e25: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b5e28: 68 06 f0 00 00                                  push   0xf006
  004b5e2d: 56                                              push   esi
  004b5e2e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b5e35: e8 a6 69 00 00                                  call   0x4bc7e0
  004b5e3a: 83 c4 08                                        add    esp,0x8
  004b5e3d: 8b c6                                           mov    eax,esi
  004b5e3f: 5e                                              pop    esi
  004b5e40: 8b e5                                           mov    esp,ebp
  004b5e42: 5d                                              pop    ebp
  004b5e43: c3                                              ret
  004b5e50: 55                                              push   ebp
  004b5e51: 8b ec                                           mov    ebp,esp
  004b5e53: 51                                              push   ecx
  004b5e54: 56                                              push   esi
  004b5e55: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b5e58: 68 07 f0 00 00                                  push   0xf007
  004b5e5d: 56                                              push   esi
  004b5e5e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b5e65: e8 76 69 00 00                                  call   0x4bc7e0
  004b5e6a: 83 c4 08                                        add    esp,0x8
  004b5e6d: 8b c6                                           mov    eax,esi
  004b5e6f: 5e                                              pop    esi
  004b5e70: 8b e5                                           mov    esp,ebp
  004b5e72: 5d                                              pop    ebp
  004b5e73: c3                                              ret
  004b6490: 55                                              push   ebp
  004b6491: 8b ec                                           mov    ebp,esp
  004b6493: 51                                              push   ecx
  004b6494: 56                                              push   esi
  004b6495: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b6498: 68 01 f0 00 00                                  push   0xf001
  004b649d: 56                                              push   esi
  004b649e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b64a5: e8 36 63 00 00                                  call   0x4bc7e0
  004b64aa: 83 c4 08                                        add    esp,0x8
  004b64ad: 8b c6                                           mov    eax,esi
  004b64af: 5e                                              pop    esi
  004b64b0: 8b e5                                           mov    esp,ebp
  004b64b2: 5d                                              pop    ebp
  004b64b3: c3                                              ret
  004b6dd0: 55                                              push   ebp
  004b6dd1: 8b ec                                           mov    ebp,esp
  004b6dd3: 6a ff                                           push   0xffffffff
  004b6dd5: 68 0e cc 4d 00                                  push   0x4dcc0e
  004b6dda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b6de0: 50                                              push   eax
  004b6de1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b6de8: 51                                              push   ecx
  004b6de9: 53                                              push   ebx
  004b6dea: 56                                              push   esi
  004b6deb: 8b f1                                           mov    esi,ecx
  004b6ded: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004b6df0: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  004b6df3: 8d 4e 04                                        lea    ecx,[esi+0x4]
  004b6df6: 33 db                                           xor    ebx,ebx
  004b6df8: 88 01                                           mov    BYTE PTR [ecx],al
  004b6dfa: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004b6dfd: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004b6e00: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004b6e03: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b6e09: 8b 02                                           mov    eax,DWORD PTR [edx]
  004b6e0b: 50                                              push   eax
  004b6e0c: 53                                              push   ebx
  004b6e0d: 8d 55 08                                        lea    edx,[ebp+0x8]
  004b6e10: 52                                              push   edx
  004b6e11: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004b6e18: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b6e1e: 8a 45 18                                        mov    al,BYTE PTR [ebp+0x18]
  004b6e21: 8d 4e 14                                        lea    ecx,[esi+0x14]
  004b6e24: 88 01                                           mov    BYTE PTR [ecx],al
  004b6e26: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004b6e29: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004b6e2c: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004b6e2f: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b6e35: 8b 02                                           mov    eax,DWORD PTR [edx]
  004b6e37: 50                                              push   eax
  004b6e38: 53                                              push   ebx
  004b6e39: 8d 55 18                                        lea    edx,[ebp+0x18]
  004b6e3c: 52                                              push   edx
  004b6e3d: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004b6e41: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b6e47: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b6e4a: 3b cb                                           cmp    ecx,ebx
  004b6e4c: 8b 45 28                                        mov    eax,DWORD PTR [ebp+0x28]
  004b6e4f: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004b6e52: c7 06 88 fc 4d 00                               mov    DWORD PTR [esi],0x4dfc88
  004b6e58: 74 1c                                           je     0x4b6e76
  004b6e5a: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004b6e5d: 3a c3                                           cmp    al,bl
  004b6e5f: 74 0b                                           je     0x4b6e6c
  004b6e61: 3c ff                                           cmp    al,0xff
  004b6e63: 74 07                                           je     0x4b6e6c
  004b6e65: fe c8                                           dec    al
  004b6e67: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004b6e6a: eb 0a                                           jmp    0x4b6e76
  004b6e6c: 49                                              dec    ecx
  004b6e6d: 51                                              push   ecx
  004b6e6e: e8 ed b1 f8 ff                                  call   0x442060
  004b6e73: 83 c4 04                                        add    esp,0x4
  004b6e76: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004b6e79: 3b cb                                           cmp    ecx,ebx
  004b6e7b: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  004b6e7e: 89 5d 10                                        mov    DWORD PTR [ebp+0x10],ebx
  004b6e81: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  004b6e84: 74 2e                                           je     0x4b6eb4
  004b6e86: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004b6e89: 3a c3                                           cmp    al,bl
  004b6e8b: 74 1d                                           je     0x4b6eaa
  004b6e8d: 3c ff                                           cmp    al,0xff
  004b6e8f: 74 19                                           je     0x4b6eaa
  004b6e91: fe c8                                           dec    al
  004b6e93: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004b6e96: 8b c6                                           mov    eax,esi
  004b6e98: 5e                                              pop    esi
  004b6e99: 5b                                              pop    ebx
  004b6e9a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b6e9d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b6ea4: 8b e5                                           mov    esp,ebp
  004b6ea6: 5d                                              pop    ebp
  004b6ea7: c2 24 00                                        ret    0x24
  004b6eaa: 49                                              dec    ecx
  004b6eab: 51                                              push   ecx
  004b6eac: e8 af b1 f8 ff                                  call   0x442060
  004b6eb1: 83 c4 04                                        add    esp,0x4
  004b6eb4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b6eb7: 8b c6                                           mov    eax,esi
  004b6eb9: 5e                                              pop    esi
  004b6eba: 5b                                              pop    ebx
  004b6ebb: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b6ec2: 8b e5                                           mov    esp,ebp
  004b6ec4: 5d                                              pop    ebp
  004b6ec5: c2 24 00                                        ret    0x24
  004b7330: 55                                              push   ebp
  004b7331: 8b ec                                           mov    ebp,esp
  004b7333: 6a ff                                           push   0xffffffff
  004b7335: 68 ad ce 4d 00                                  push   0x4dcead
  004b733a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b7340: 50                                              push   eax
  004b7341: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b7348: 83 ec 38                                        sub    esp,0x38
  004b734b: 53                                              push   ebx
  004b734c: 56                                              push   esi
  004b734d: 57                                              push   edi
  004b734e: 6a 54                                           push   0x54
  004b7350: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  004b7353: e8 98 ac f8 ff                                  call   0x441ff0
  004b7358: 83 c4 04                                        add    esp,0x4
  004b735b: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004b735e: 33 ff                                           xor    edi,edi
  004b7360: 3b c7                                           cmp    eax,edi
  004b7362: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004b7365: 74 09                                           je     0x4b7370
  004b7367: 8b c8                                           mov    ecx,eax
  004b7369: e8 52 f1 ff ff                                  call   0x4b64c0
  004b736e: eb 02                                           jmp    0x4b7372
  004b7370: 33 c0                                           xor    eax,eax
  004b7372: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b7375: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b7378: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b737d: 51                                              push   ecx
  004b737e: 83 cb ff                                        or     ebx,0xffffffff
  004b7381: 50                                              push   eax
  004b7382: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7387: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b738a: e8 11 dd ff ff                                  call   0x4b50a0
  004b738f: 6a 44                                           push   0x44
  004b7391: e8 5a ac f8 ff                                  call   0x441ff0
  004b7396: 83 c4 04                                        add    esp,0x4
  004b7399: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004b739c: 3b c7                                           cmp    eax,edi
  004b739e: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004b73a5: 74 09                                           je     0x4b73b0
  004b73a7: 8b c8                                           mov    ecx,eax
  004b73a9: e8 82 e0 ff ff                                  call   0x4b5430
  004b73ae: eb 02                                           jmp    0x4b73b2
  004b73b0: 33 c0                                           xor    eax,eax
  004b73b2: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004b73b5: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b73b8: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b73bd: 52                                              push   edx
  004b73be: 50                                              push   eax
  004b73bf: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b73c4: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b73c7: e8 d4 dc ff ff                                  call   0x4b50a0
  004b73cc: 6a 34                                           push   0x34
  004b73ce: e8 1d ac f8 ff                                  call   0x441ff0
  004b73d3: 83 c4 04                                        add    esp,0x4
  004b73d6: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004b73d9: 3b c7                                           cmp    eax,edi
  004b73db: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  004b73e2: 74 09                                           je     0x4b73ed
  004b73e4: 8b c8                                           mov    ecx,eax
  004b73e6: e8 d5 de ff ff                                  call   0x4b52c0
  004b73eb: eb 02                                           jmp    0x4b73ef
  004b73ed: 33 c0                                           xor    eax,eax
  004b73ef: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b73f2: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b73f5: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b73fa: 51                                              push   ecx
  004b73fb: 50                                              push   eax
  004b73fc: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7401: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7404: e8 97 dc ff ff                                  call   0x4b50a0
  004b7409: 6a 64                                           push   0x64
  004b740b: e8 e0 ab f8 ff                                  call   0x441ff0
  004b7410: 83 c4 04                                        add    esp,0x4
  004b7413: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004b7416: 3b c7                                           cmp    eax,edi
  004b7418: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  004b741f: 74 09                                           je     0x4b742a
  004b7421: 8b c8                                           mov    ecx,eax
  004b7423: e8 58 ea ff ff                                  call   0x4b5e80
  004b7428: eb 02                                           jmp    0x4b742c
  004b742a: 33 c0                                           xor    eax,eax
  004b742c: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004b742f: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b7432: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7437: 52                                              push   edx
  004b7438: 50                                              push   eax
  004b7439: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b743e: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7441: e8 5a dc ff ff                                  call   0x4b50a0
  004b7446: 6a 44                                           push   0x44
  004b7448: e8 a3 ab f8 ff                                  call   0x441ff0
  004b744d: 83 c4 04                                        add    esp,0x4
  004b7450: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004b7453: 3b c7                                           cmp    eax,edi
  004b7455: c7 45 fc 04 00 00 00                            mov    DWORD PTR [ebp-0x4],0x4
  004b745c: 74 09                                           je     0x4b7467
  004b745e: 8b c8                                           mov    ecx,eax
  004b7460: e8 7b 50 00 00                                  call   0x4bc4e0
  004b7465: eb 02                                           jmp    0x4b7469
  004b7467: 33 c0                                           xor    eax,eax
  004b7469: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b746c: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b746f: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7474: 51                                              push   ecx
  004b7475: 50                                              push   eax
  004b7476: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b747b: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b747e: e8 1d dc ff ff                                  call   0x4b50a0
  004b7483: 6a 48                                           push   0x48
  004b7485: e8 66 ab f8 ff                                  call   0x441ff0
  004b748a: 8b f0                                           mov    esi,eax
  004b748c: 83 c4 04                                        add    esp,0x4
  004b748f: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b7492: 3b f7                                           cmp    esi,edi
  004b7494: c7 45 fc 05 00 00 00                            mov    DWORD PTR [ebp-0x4],0x5
  004b749b: 74 3c                                           je     0x4b74d9
  004b749d: 6a 14                                           push   0x14
  004b749f: 83 ec 10                                        sub    esp,0x10
  004b74a2: 8b d4                                           mov    edx,esp
  004b74a4: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b74a7: 68 2e f0 00 00                                  push   0xf02e
  004b74ac: 52                                              push   edx
  004b74ad: e8 2e 53 00 00                                  call   0x4bc7e0
  004b74b2: 83 ec 08                                        sub    esp,0x8
  004b74b5: 8b c4                                           mov    eax,esp
  004b74b7: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b74ba: 68 2d f0 00 00                                  push   0xf02d
  004b74bf: 50                                              push   eax
  004b74c0: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004b74c4: e8 17 53 00 00                                  call   0x4bc7e0
  004b74c9: 83 c4 08                                        add    esp,0x8
  004b74cc: 8b ce                                           mov    ecx,esi
  004b74ce: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004b74d2: e8 39 b8 ff ff                                  call   0x4b2d10
  004b74d7: eb 02                                           jmp    0x4b74db
  004b74d9: 33 c0                                           xor    eax,eax
  004b74db: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b74de: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b74e1: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b74e6: 51                                              push   ecx
  004b74e7: 50                                              push   eax
  004b74e8: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b74ed: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b74f0: e8 ab db ff ff                                  call   0x4b50a0
  004b74f5: 6a 58                                           push   0x58
  004b74f7: e8 f4 aa f8 ff                                  call   0x441ff0
  004b74fc: 8b f0                                           mov    esi,eax
  004b74fe: 83 c4 04                                        add    esp,0x4
  004b7501: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b7504: 3b f7                                           cmp    esi,edi
  004b7506: c7 45 fc 07 00 00 00                            mov    DWORD PTR [ebp-0x4],0x7
  004b750d: 74 3c                                           je     0x4b754b
  004b750f: 6a 07                                           push   0x7
  004b7511: 83 ec 10                                        sub    esp,0x10
  004b7514: 8b d4                                           mov    edx,esp
  004b7516: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7519: 68 e7 ef 00 00                                  push   0xefe7
  004b751e: 52                                              push   edx
  004b751f: e8 bc 52 00 00                                  call   0x4bc7e0
  004b7524: 83 ec 08                                        sub    esp,0x8
  004b7527: 8b c4                                           mov    eax,esp
  004b7529: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b752c: 68 e6 ef 00 00                                  push   0xefe6
  004b7531: 50                                              push   eax
  004b7532: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  004b7536: e8 a5 52 00 00                                  call   0x4bc7e0
  004b753b: 83 c4 08                                        add    esp,0x8
  004b753e: 8b ce                                           mov    ecx,esi
  004b7540: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  004b7544: e8 57 bf ff ff                                  call   0x4b34a0
  004b7549: 8b f8                                           mov    edi,eax
  004b754b: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7550: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b7553: 51                                              push   ecx
  004b7554: 50                                              push   eax
  004b7555: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b755a: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b755d: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b7560: e8 3b db ff ff                                  call   0x4b50a0
  004b7565: 8a 55 f3                                        mov    dl,BYTE PTR [ebp-0xd]
  004b7568: 6a 00                                           push   0x0
  004b756a: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b756d: 88 55 c0                                        mov    BYTE PTR [ebp-0x40],dl
  004b7570: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7576: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004b7579: 68 30 f0 00 00                                  push   0xf030
  004b757e: 50                                              push   eax
  004b757f: c7 45 fc 09 00 00 00                            mov    DWORD PTR [ebp-0x4],0x9
  004b7586: c7 45 bc 03 00 00 00                            mov    DWORD PTR [ebp-0x44],0x3
  004b758d: e8 4e 52 00 00                                  call   0x4bc7e0
  004b7592: 83 c4 08                                        add    esp,0x8
  004b7595: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b759b: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b759d: 52                                              push   edx
  004b759e: 6a 00                                           push   0x0
  004b75a0: 50                                              push   eax
  004b75a1: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b75a4: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  004b75a8: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b75ae: 6a 01                                           push   0x1
  004b75b0: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b75b3: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  004b75b7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b75bd: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  004b75c0: 83 ec 14                                        sub    esp,0x14
  004b75c3: 8b c4                                           mov    eax,esp
  004b75c5: 89 08                                           mov    DWORD PTR [eax],ecx
  004b75c7: 8a 55 c0                                        mov    dl,BYTE PTR [ebp-0x40]
  004b75ca: 8d 70 04                                        lea    esi,[eax+0x4]
  004b75cd: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b75d0: 6a 00                                           push   0x0
  004b75d2: 8b ce                                           mov    ecx,esi
  004b75d4: 88 16                                           mov    BYTE PTR [esi],dl
  004b75d6: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b75dc: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b75e1: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b75e3: 51                                              push   ecx
  004b75e4: 6a 00                                           push   0x0
  004b75e6: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004b75e9: 52                                              push   edx
  004b75ea: 8b ce                                           mov    ecx,esi
  004b75ec: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b75f2: 8b cf                                           mov    ecx,edi
  004b75f4: e8 97 11 00 00                                  call   0x4b8790
  004b75f9: 6a 01                                           push   0x1
  004b75fb: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b75fe: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7601: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7607: 6a 58                                           push   0x58
  004b7609: e8 e2 a9 f8 ff                                  call   0x441ff0
  004b760e: 8b f0                                           mov    esi,eax
  004b7610: 83 c4 04                                        add    esp,0x4
  004b7613: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b7616: 85 f6                                           test   esi,esi
  004b7618: c7 45 fc 0b 00 00 00                            mov    DWORD PTR [ebp-0x4],0xb
  004b761f: 74 3e                                           je     0x4b765f
  004b7621: 6a 08                                           push   0x8
  004b7623: 83 ec 10                                        sub    esp,0x10
  004b7626: 8b c4                                           mov    eax,esp
  004b7628: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b762b: 68 e9 ef 00 00                                  push   0xefe9
  004b7630: 50                                              push   eax
  004b7631: e8 aa 51 00 00                                  call   0x4bc7e0
  004b7636: 83 ec 08                                        sub    esp,0x8
  004b7639: 8b cc                                           mov    ecx,esp
  004b763b: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b763e: 68 e8 ef 00 00                                  push   0xefe8
  004b7643: 51                                              push   ecx
  004b7644: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  004b7648: e8 93 51 00 00                                  call   0x4bc7e0
  004b764d: 83 c4 08                                        add    esp,0x8
  004b7650: 8b ce                                           mov    ecx,esi
  004b7652: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  004b7656: e8 45 be ff ff                                  call   0x4b34a0
  004b765b: 8b f8                                           mov    edi,eax
  004b765d: eb 02                                           jmp    0x4b7661
  004b765f: 33 ff                                           xor    edi,edi
  004b7661: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7666: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004b7669: 52                                              push   edx
  004b766a: 50                                              push   eax
  004b766b: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7670: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7673: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b7676: e8 25 da ff ff                                  call   0x4b50a0
  004b767b: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  004b767e: 6a 00                                           push   0x0
  004b7680: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7683: 88 45 c0                                        mov    BYTE PTR [ebp-0x40],al
  004b7686: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b768c: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b768f: 68 31 f0 00 00                                  push   0xf031
  004b7694: 51                                              push   ecx
  004b7695: c7 45 fc 0d 00 00 00                            mov    DWORD PTR [ebp-0x4],0xd
  004b769c: c7 45 bc 01 00 00 00                            mov    DWORD PTR [ebp-0x44],0x1
  004b76a3: e8 38 51 00 00                                  call   0x4bc7e0
  004b76a8: 83 c4 08                                        add    esp,0x8
  004b76ab: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b76b1: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004b76b3: 51                                              push   ecx
  004b76b4: 6a 00                                           push   0x0
  004b76b6: 50                                              push   eax
  004b76b7: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b76ba: c6 45 fc 0e                                     mov    BYTE PTR [ebp-0x4],0xe
  004b76be: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b76c4: 6a 01                                           push   0x1
  004b76c6: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b76c9: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  004b76cd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b76d3: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  004b76d6: 83 ec 14                                        sub    esp,0x14
  004b76d9: 8b c4                                           mov    eax,esp
  004b76db: 8d 70 04                                        lea    esi,[eax+0x4]
  004b76de: 89 10                                           mov    DWORD PTR [eax],edx
  004b76e0: 8a 45 c0                                        mov    al,BYTE PTR [ebp-0x40]
  004b76e3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b76e6: 6a 00                                           push   0x0
  004b76e8: 8b ce                                           mov    ecx,esi
  004b76ea: 88 06                                           mov    BYTE PTR [esi],al
  004b76ec: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b76f2: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b76f8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b76fa: 52                                              push   edx
  004b76fb: 6a 00                                           push   0x0
  004b76fd: 8d 45 c0                                        lea    eax,[ebp-0x40]
  004b7700: 50                                              push   eax
  004b7701: 8b ce                                           mov    ecx,esi
  004b7703: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7709: 8b cf                                           mov    ecx,edi
  004b770b: e8 80 10 00 00                                  call   0x4b8790
  004b7710: 6a 01                                           push   0x1
  004b7712: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7715: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7718: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b771e: 6a 58                                           push   0x58
  004b7720: e8 cb a8 f8 ff                                  call   0x441ff0
  004b7725: 8b f0                                           mov    esi,eax
  004b7727: 83 c4 04                                        add    esp,0x4
  004b772a: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b772d: 85 f6                                           test   esi,esi
  004b772f: c7 45 fc 0f 00 00 00                            mov    DWORD PTR [ebp-0x4],0xf
  004b7736: 74 3e                                           je     0x4b7776
  004b7738: 6a 09                                           push   0x9
  004b773a: 83 ec 10                                        sub    esp,0x10
  004b773d: 8b cc                                           mov    ecx,esp
  004b773f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7742: 68 eb ef 00 00                                  push   0xefeb
  004b7747: 51                                              push   ecx
  004b7748: e8 93 50 00 00                                  call   0x4bc7e0
  004b774d: 83 ec 08                                        sub    esp,0x8
  004b7750: 8b d4                                           mov    edx,esp
  004b7752: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b7755: 68 ea ef 00 00                                  push   0xefea
  004b775a: 52                                              push   edx
  004b775b: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  004b775f: e8 7c 50 00 00                                  call   0x4bc7e0
  004b7764: 83 c4 08                                        add    esp,0x8
  004b7767: 8b ce                                           mov    ecx,esi
  004b7769: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  004b776d: e8 2e bd ff ff                                  call   0x4b34a0
  004b7772: 8b f8                                           mov    edi,eax
  004b7774: eb 02                                           jmp    0x4b7778
  004b7776: 33 ff                                           xor    edi,edi
  004b7778: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b777d: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b7780: 51                                              push   ecx
  004b7781: 50                                              push   eax
  004b7782: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7787: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b778a: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b778d: e8 0e d9 ff ff                                  call   0x4b50a0
  004b7792: 8a 55 f3                                        mov    dl,BYTE PTR [ebp-0xd]
  004b7795: 6a 00                                           push   0x0
  004b7797: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b779a: 88 55 c0                                        mov    BYTE PTR [ebp-0x40],dl
  004b779d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b77a3: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004b77a6: 68 32 f0 00 00                                  push   0xf032
  004b77ab: 50                                              push   eax
  004b77ac: c7 45 fc 11 00 00 00                            mov    DWORD PTR [ebp-0x4],0x11
  004b77b3: c7 45 bc 02 00 00 00                            mov    DWORD PTR [ebp-0x44],0x2
  004b77ba: e8 21 50 00 00                                  call   0x4bc7e0
  004b77bf: 83 c4 08                                        add    esp,0x8
  004b77c2: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b77c8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b77ca: 52                                              push   edx
  004b77cb: 6a 00                                           push   0x0
  004b77cd: 50                                              push   eax
  004b77ce: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b77d1: c6 45 fc 12                                     mov    BYTE PTR [ebp-0x4],0x12
  004b77d5: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b77db: 6a 01                                           push   0x1
  004b77dd: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b77e0: c6 45 fc 11                                     mov    BYTE PTR [ebp-0x4],0x11
  004b77e4: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b77ea: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  004b77ed: 83 ec 14                                        sub    esp,0x14
  004b77f0: 8b c4                                           mov    eax,esp
  004b77f2: 89 08                                           mov    DWORD PTR [eax],ecx
  004b77f4: 8a 55 c0                                        mov    dl,BYTE PTR [ebp-0x40]
  004b77f7: 8d 70 04                                        lea    esi,[eax+0x4]
  004b77fa: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b77fd: 6a 00                                           push   0x0
  004b77ff: 8b ce                                           mov    ecx,esi
  004b7801: 88 16                                           mov    BYTE PTR [esi],dl
  004b7803: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7809: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b780e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b7810: 51                                              push   ecx
  004b7811: 6a 00                                           push   0x0
  004b7813: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004b7816: 52                                              push   edx
  004b7817: 8b ce                                           mov    ecx,esi
  004b7819: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b781f: 8b cf                                           mov    ecx,edi
  004b7821: e8 6a 0f 00 00                                  call   0x4b8790
  004b7826: 6a 01                                           push   0x1
  004b7828: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b782b: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b782e: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7834: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  004b7837: 6a 00                                           push   0x0
  004b7839: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b783c: 88 45 c0                                        mov    BYTE PTR [ebp-0x40],al
  004b783f: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7845: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b7848: 68 33 f0 00 00                                  push   0xf033
  004b784d: 51                                              push   ecx
  004b784e: c7 45 fc 13 00 00 00                            mov    DWORD PTR [ebp-0x4],0x13
  004b7855: c7 45 bc 01 00 00 00                            mov    DWORD PTR [ebp-0x44],0x1
  004b785c: e8 7f 4f 00 00                                  call   0x4bc7e0
  004b7861: 83 c4 08                                        add    esp,0x8
  004b7864: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b786a: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004b786c: 51                                              push   ecx
  004b786d: 6a 00                                           push   0x0
  004b786f: 50                                              push   eax
  004b7870: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7873: c6 45 fc 14                                     mov    BYTE PTR [ebp-0x4],0x14
  004b7877: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b787d: 6a 01                                           push   0x1
  004b787f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b7882: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  004b7886: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b788c: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  004b788f: 83 ec 14                                        sub    esp,0x14
  004b7892: 8b c4                                           mov    eax,esp
  004b7894: 8d 70 04                                        lea    esi,[eax+0x4]
  004b7897: 89 10                                           mov    DWORD PTR [eax],edx
  004b7899: 8a 45 c0                                        mov    al,BYTE PTR [ebp-0x40]
  004b789c: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b789f: 6a 00                                           push   0x0
  004b78a1: 8b ce                                           mov    ecx,esi
  004b78a3: 88 06                                           mov    BYTE PTR [esi],al
  004b78a5: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b78ab: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b78b1: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b78b3: 52                                              push   edx
  004b78b4: 6a 00                                           push   0x0
  004b78b6: 8d 45 c0                                        lea    eax,[ebp-0x40]
  004b78b9: 50                                              push   eax
  004b78ba: 8b ce                                           mov    ecx,esi
  004b78bc: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b78c2: 8b cf                                           mov    ecx,edi
  004b78c4: e8 c7 0e 00 00                                  call   0x4b8790
  004b78c9: 6a 01                                           push   0x1
  004b78cb: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b78ce: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b78d1: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b78d7: 6a 58                                           push   0x58
  004b78d9: e8 12 a7 f8 ff                                  call   0x441ff0
  004b78de: 8b f0                                           mov    esi,eax
  004b78e0: 83 c4 04                                        add    esp,0x4
  004b78e3: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b78e6: 85 f6                                           test   esi,esi
  004b78e8: c7 45 fc 15 00 00 00                            mov    DWORD PTR [ebp-0x4],0x15
  004b78ef: 74 3e                                           je     0x4b792f
  004b78f1: 6a 0a                                           push   0xa
  004b78f3: 83 ec 10                                        sub    esp,0x10
  004b78f6: 8b cc                                           mov    ecx,esp
  004b78f8: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b78fb: 68 ed ef 00 00                                  push   0xefed
  004b7900: 51                                              push   ecx
  004b7901: e8 da 4e 00 00                                  call   0x4bc7e0
  004b7906: 83 ec 08                                        sub    esp,0x8
  004b7909: 8b d4                                           mov    edx,esp
  004b790b: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b790e: 68 ec ef 00 00                                  push   0xefec
  004b7913: 52                                              push   edx
  004b7914: c6 45 fc 16                                     mov    BYTE PTR [ebp-0x4],0x16
  004b7918: e8 c3 4e 00 00                                  call   0x4bc7e0
  004b791d: 83 c4 08                                        add    esp,0x8
  004b7920: 8b ce                                           mov    ecx,esi
  004b7922: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  004b7926: e8 75 bb ff ff                                  call   0x4b34a0
  004b792b: 8b f8                                           mov    edi,eax
  004b792d: eb 02                                           jmp    0x4b7931
  004b792f: 33 ff                                           xor    edi,edi
  004b7931: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7936: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b7939: 51                                              push   ecx
  004b793a: 50                                              push   eax
  004b793b: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7940: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7943: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b7946: e8 55 d7 ff ff                                  call   0x4b50a0
  004b794b: 8a 55 f3                                        mov    dl,BYTE PTR [ebp-0xd]
  004b794e: 6a 00                                           push   0x0
  004b7950: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7953: 88 55 c0                                        mov    BYTE PTR [ebp-0x40],dl
  004b7956: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b795c: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004b795f: 68 34 f0 00 00                                  push   0xf034
  004b7964: 50                                              push   eax
  004b7965: c7 45 fc 17 00 00 00                            mov    DWORD PTR [ebp-0x4],0x17
  004b796c: c7 45 bc 01 00 00 00                            mov    DWORD PTR [ebp-0x44],0x1
  004b7973: e8 68 4e 00 00                                  call   0x4bc7e0
  004b7978: 83 c4 08                                        add    esp,0x8
  004b797b: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b7981: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b7983: 52                                              push   edx
  004b7984: 6a 00                                           push   0x0
  004b7986: 50                                              push   eax
  004b7987: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b798a: c6 45 fc 18                                     mov    BYTE PTR [ebp-0x4],0x18
  004b798e: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7994: 6a 01                                           push   0x1
  004b7996: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b7999: c6 45 fc 17                                     mov    BYTE PTR [ebp-0x4],0x17
  004b799d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b79a3: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  004b79a6: 83 ec 14                                        sub    esp,0x14
  004b79a9: 8b c4                                           mov    eax,esp
  004b79ab: 89 08                                           mov    DWORD PTR [eax],ecx
  004b79ad: 8a 55 c0                                        mov    dl,BYTE PTR [ebp-0x40]
  004b79b0: 8d 70 04                                        lea    esi,[eax+0x4]
  004b79b3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b79b6: 6a 00                                           push   0x0
  004b79b8: 8b ce                                           mov    ecx,esi
  004b79ba: 88 16                                           mov    BYTE PTR [esi],dl
  004b79bc: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b79c2: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b79c7: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b79c9: 51                                              push   ecx
  004b79ca: 6a 00                                           push   0x0
  004b79cc: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004b79cf: 52                                              push   edx
  004b79d0: 8b ce                                           mov    ecx,esi
  004b79d2: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b79d8: 8b cf                                           mov    ecx,edi
  004b79da: e8 b1 0d 00 00                                  call   0x4b8790
  004b79df: 6a 01                                           push   0x1
  004b79e1: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b79e4: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b79e7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b79ed: 6a 58                                           push   0x58
  004b79ef: e8 fc a5 f8 ff                                  call   0x441ff0
  004b79f4: 8b f0                                           mov    esi,eax
  004b79f6: 83 c4 04                                        add    esp,0x4
  004b79f9: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b79fc: 85 f6                                           test   esi,esi
  004b79fe: c7 45 fc 19 00 00 00                            mov    DWORD PTR [ebp-0x4],0x19
  004b7a05: 74 3e                                           je     0x4b7a45
  004b7a07: 6a 0b                                           push   0xb
  004b7a09: 83 ec 10                                        sub    esp,0x10
  004b7a0c: 8b c4                                           mov    eax,esp
  004b7a0e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7a11: 68 ef ef 00 00                                  push   0xefef
  004b7a16: 50                                              push   eax
  004b7a17: e8 c4 4d 00 00                                  call   0x4bc7e0
  004b7a1c: 83 ec 08                                        sub    esp,0x8
  004b7a1f: 8b cc                                           mov    ecx,esp
  004b7a21: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b7a24: 68 ee ef 00 00                                  push   0xefee
  004b7a29: 51                                              push   ecx
  004b7a2a: c6 45 fc 1a                                     mov    BYTE PTR [ebp-0x4],0x1a
  004b7a2e: e8 ad 4d 00 00                                  call   0x4bc7e0
  004b7a33: 83 c4 08                                        add    esp,0x8
  004b7a36: 8b ce                                           mov    ecx,esi
  004b7a38: c6 45 fc 19                                     mov    BYTE PTR [ebp-0x4],0x19
  004b7a3c: e8 5f ba ff ff                                  call   0x4b34a0
  004b7a41: 8b f8                                           mov    edi,eax
  004b7a43: eb 02                                           jmp    0x4b7a47
  004b7a45: 33 ff                                           xor    edi,edi
  004b7a47: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7a4c: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004b7a4f: 52                                              push   edx
  004b7a50: 50                                              push   eax
  004b7a51: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7a56: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7a59: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b7a5c: e8 3f d6 ff ff                                  call   0x4b50a0
  004b7a61: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  004b7a64: 6a 00                                           push   0x0
  004b7a66: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7a69: 88 45 c0                                        mov    BYTE PTR [ebp-0x40],al
  004b7a6c: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7a72: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b7a75: 6a 00                                           push   0x0
  004b7a77: 51                                              push   ecx
  004b7a78: c7 45 fc 1b 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1b
  004b7a7f: c7 45 bc 04 00 00 00                            mov    DWORD PTR [ebp-0x44],0x4
  004b7a86: e8 55 4d 00 00                                  call   0x4bc7e0
  004b7a8b: 83 c4 08                                        add    esp,0x8
  004b7a8e: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b7a94: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004b7a96: 51                                              push   ecx
  004b7a97: 6a 00                                           push   0x0
  004b7a99: 50                                              push   eax
  004b7a9a: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7a9d: c6 45 fc 1c                                     mov    BYTE PTR [ebp-0x4],0x1c
  004b7aa1: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7aa7: 6a 01                                           push   0x1
  004b7aa9: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b7aac: c6 45 fc 1b                                     mov    BYTE PTR [ebp-0x4],0x1b
  004b7ab0: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7ab6: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  004b7ab9: 83 ec 14                                        sub    esp,0x14
  004b7abc: 8b c4                                           mov    eax,esp
  004b7abe: 8d 70 04                                        lea    esi,[eax+0x4]
  004b7ac1: 89 10                                           mov    DWORD PTR [eax],edx
  004b7ac3: 8a 45 c0                                        mov    al,BYTE PTR [ebp-0x40]
  004b7ac6: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7ac9: 6a 00                                           push   0x0
  004b7acb: 8b ce                                           mov    ecx,esi
  004b7acd: 88 06                                           mov    BYTE PTR [esi],al
  004b7acf: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7ad5: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b7adb: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b7add: 52                                              push   edx
  004b7ade: 6a 00                                           push   0x0
  004b7ae0: 8d 45 c0                                        lea    eax,[ebp-0x40]
  004b7ae3: 50                                              push   eax
  004b7ae4: 8b ce                                           mov    ecx,esi
  004b7ae6: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7aec: 8b cf                                           mov    ecx,edi
  004b7aee: e8 9d 0c 00 00                                  call   0x4b8790
  004b7af3: 6a 01                                           push   0x1
  004b7af5: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7af8: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7afb: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7b01: 6a 58                                           push   0x58
  004b7b03: e8 e8 a4 f8 ff                                  call   0x441ff0
  004b7b08: 8b f0                                           mov    esi,eax
  004b7b0a: 83 c4 04                                        add    esp,0x4
  004b7b0d: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b7b10: 85 f6                                           test   esi,esi
  004b7b12: c7 45 fc 1d 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1d
  004b7b19: 74 3c                                           je     0x4b7b57
  004b7b1b: 6a 0c                                           push   0xc
  004b7b1d: 83 ec 10                                        sub    esp,0x10
  004b7b20: 8b cc                                           mov    ecx,esp
  004b7b22: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7b25: 68 f1 ef 00 00                                  push   0xeff1
  004b7b2a: 51                                              push   ecx
  004b7b2b: e8 b0 4c 00 00                                  call   0x4bc7e0
  004b7b30: 83 ec 08                                        sub    esp,0x8
  004b7b33: 8b d4                                           mov    edx,esp
  004b7b35: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b7b38: 68 f0 ef 00 00                                  push   0xeff0
  004b7b3d: 52                                              push   edx
  004b7b3e: c6 45 fc 1e                                     mov    BYTE PTR [ebp-0x4],0x1e
  004b7b42: e8 99 4c 00 00                                  call   0x4bc7e0
  004b7b47: 83 c4 08                                        add    esp,0x8
  004b7b4a: 8b ce                                           mov    ecx,esi
  004b7b4c: c6 45 fc 1d                                     mov    BYTE PTR [ebp-0x4],0x1d
  004b7b50: e8 4b b9 ff ff                                  call   0x4b34a0
  004b7b55: eb 02                                           jmp    0x4b7b59
  004b7b57: 33 c0                                           xor    eax,eax
  004b7b59: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b7b5c: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b7b5f: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7b64: 51                                              push   ecx
  004b7b65: 50                                              push   eax
  004b7b66: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7b6b: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7b6e: e8 2d d5 ff ff                                  call   0x4b50a0
  004b7b73: 6a 58                                           push   0x58
  004b7b75: e8 76 a4 f8 ff                                  call   0x441ff0
  004b7b7a: 8b f0                                           mov    esi,eax
  004b7b7c: 83 c4 04                                        add    esp,0x4
  004b7b7f: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b7b82: 85 f6                                           test   esi,esi
  004b7b84: c7 45 fc 1f 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1f
  004b7b8b: 74 3c                                           je     0x4b7bc9
  004b7b8d: 6a 0d                                           push   0xd
  004b7b8f: 83 ec 10                                        sub    esp,0x10
  004b7b92: 8b d4                                           mov    edx,esp
  004b7b94: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7b97: 68 f3 ef 00 00                                  push   0xeff3
  004b7b9c: 52                                              push   edx
  004b7b9d: e8 3e 4c 00 00                                  call   0x4bc7e0
  004b7ba2: 83 ec 08                                        sub    esp,0x8
  004b7ba5: 8b c4                                           mov    eax,esp
  004b7ba7: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b7baa: 68 f2 ef 00 00                                  push   0xeff2
  004b7baf: 50                                              push   eax
  004b7bb0: c6 45 fc 20                                     mov    BYTE PTR [ebp-0x4],0x20
  004b7bb4: e8 27 4c 00 00                                  call   0x4bc7e0
  004b7bb9: 83 c4 08                                        add    esp,0x8
  004b7bbc: 8b ce                                           mov    ecx,esi
  004b7bbe: c6 45 fc 1f                                     mov    BYTE PTR [ebp-0x4],0x1f
  004b7bc2: e8 d9 b8 ff ff                                  call   0x4b34a0
  004b7bc7: eb 02                                           jmp    0x4b7bcb
  004b7bc9: 33 c0                                           xor    eax,eax
  004b7bcb: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b7bce: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b7bd1: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7bd6: 51                                              push   ecx
  004b7bd7: 50                                              push   eax
  004b7bd8: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7bdd: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7be0: e8 bb d4 ff ff                                  call   0x4b50a0
  004b7be5: 6a 58                                           push   0x58
  004b7be7: e8 04 a4 f8 ff                                  call   0x441ff0
  004b7bec: 8b f0                                           mov    esi,eax
  004b7bee: 83 c4 04                                        add    esp,0x4
  004b7bf1: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b7bf4: 85 f6                                           test   esi,esi
  004b7bf6: c7 45 fc 21 00 00 00                            mov    DWORD PTR [ebp-0x4],0x21
  004b7bfd: 74 3e                                           je     0x4b7c3d
  004b7bff: 6a 0e                                           push   0xe
  004b7c01: 83 ec 10                                        sub    esp,0x10
  004b7c04: 8b d4                                           mov    edx,esp
  004b7c06: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7c09: 68 f5 ef 00 00                                  push   0xeff5
  004b7c0e: 52                                              push   edx
  004b7c0f: e8 cc 4b 00 00                                  call   0x4bc7e0
  004b7c14: 83 ec 08                                        sub    esp,0x8
  004b7c17: 8b c4                                           mov    eax,esp
  004b7c19: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b7c1c: 68 f4 ef 00 00                                  push   0xeff4
  004b7c21: 50                                              push   eax
  004b7c22: c6 45 fc 22                                     mov    BYTE PTR [ebp-0x4],0x22
  004b7c26: e8 b5 4b 00 00                                  call   0x4bc7e0
  004b7c2b: 83 c4 08                                        add    esp,0x8
  004b7c2e: 8b ce                                           mov    ecx,esi
  004b7c30: c6 45 fc 21                                     mov    BYTE PTR [ebp-0x4],0x21
  004b7c34: e8 67 b8 ff ff                                  call   0x4b34a0
  004b7c39: 8b f8                                           mov    edi,eax
  004b7c3b: eb 02                                           jmp    0x4b7c3f
  004b7c3d: 33 ff                                           xor    edi,edi
  004b7c3f: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7c44: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b7c47: 51                                              push   ecx
  004b7c48: 50                                              push   eax
  004b7c49: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7c4e: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7c51: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b7c54: e8 47 d4 ff ff                                  call   0x4b50a0
  004b7c59: 8a 55 f3                                        mov    dl,BYTE PTR [ebp-0xd]
  004b7c5c: 6a 00                                           push   0x0
  004b7c5e: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7c61: 88 55 c0                                        mov    BYTE PTR [ebp-0x40],dl
  004b7c64: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7c6a: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004b7c6d: 68 35 f0 00 00                                  push   0xf035
  004b7c72: 50                                              push   eax
  004b7c73: c7 45 fc 23 00 00 00                            mov    DWORD PTR [ebp-0x4],0x23
  004b7c7a: c7 45 bc 03 00 00 00                            mov    DWORD PTR [ebp-0x44],0x3
  004b7c81: e8 5a 4b 00 00                                  call   0x4bc7e0
  004b7c86: 83 c4 08                                        add    esp,0x8
  004b7c89: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b7c8f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b7c91: 52                                              push   edx
  004b7c92: 6a 00                                           push   0x0
  004b7c94: 50                                              push   eax
  004b7c95: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7c98: c6 45 fc 24                                     mov    BYTE PTR [ebp-0x4],0x24
  004b7c9c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7ca2: 6a 01                                           push   0x1
  004b7ca4: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b7ca7: c6 45 fc 23                                     mov    BYTE PTR [ebp-0x4],0x23
  004b7cab: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7cb1: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  004b7cb4: 83 ec 14                                        sub    esp,0x14
  004b7cb7: 8b c4                                           mov    eax,esp
  004b7cb9: 89 08                                           mov    DWORD PTR [eax],ecx
  004b7cbb: 8a 55 c0                                        mov    dl,BYTE PTR [ebp-0x40]
  004b7cbe: 8d 70 04                                        lea    esi,[eax+0x4]
  004b7cc1: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7cc4: 6a 00                                           push   0x0
  004b7cc6: 8b ce                                           mov    ecx,esi
  004b7cc8: 88 16                                           mov    BYTE PTR [esi],dl
  004b7cca: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7cd0: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b7cd5: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b7cd7: 51                                              push   ecx
  004b7cd8: 6a 00                                           push   0x0
  004b7cda: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004b7cdd: 52                                              push   edx
  004b7cde: 8b ce                                           mov    ecx,esi
  004b7ce0: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7ce6: 8b cf                                           mov    ecx,edi
  004b7ce8: e8 a3 0a 00 00                                  call   0x4b8790
  004b7ced: 6a 01                                           push   0x1
  004b7cef: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7cf2: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7cf5: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7cfb: 6a 58                                           push   0x58
  004b7cfd: e8 ee a2 f8 ff                                  call   0x441ff0
  004b7d02: 8b f0                                           mov    esi,eax
  004b7d04: 83 c4 04                                        add    esp,0x4
  004b7d07: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b7d0a: 85 f6                                           test   esi,esi
  004b7d0c: c7 45 fc 25 00 00 00                            mov    DWORD PTR [ebp-0x4],0x25
  004b7d13: 74 3e                                           je     0x4b7d53
  004b7d15: 6a 0f                                           push   0xf
  004b7d17: 83 ec 10                                        sub    esp,0x10
  004b7d1a: 8b c4                                           mov    eax,esp
  004b7d1c: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b7d1f: 68 f7 ef 00 00                                  push   0xeff7
  004b7d24: 50                                              push   eax
  004b7d25: e8 b6 4a 00 00                                  call   0x4bc7e0
  004b7d2a: 83 ec 08                                        sub    esp,0x8
  004b7d2d: 8b cc                                           mov    ecx,esp
  004b7d2f: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b7d32: 68 f6 ef 00 00                                  push   0xeff6
  004b7d37: 51                                              push   ecx
  004b7d38: c6 45 fc 26                                     mov    BYTE PTR [ebp-0x4],0x26
  004b7d3c: e8 9f 4a 00 00                                  call   0x4bc7e0
  004b7d41: 83 c4 08                                        add    esp,0x8
  004b7d44: 8b ce                                           mov    ecx,esi
  004b7d46: c6 45 fc 25                                     mov    BYTE PTR [ebp-0x4],0x25
  004b7d4a: e8 51 b7 ff ff                                  call   0x4b34a0
  004b7d4f: 8b f8                                           mov    edi,eax
  004b7d51: eb 02                                           jmp    0x4b7d55
  004b7d53: 33 ff                                           xor    edi,edi
  004b7d55: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b7d5a: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004b7d5d: 52                                              push   edx
  004b7d5e: 50                                              push   eax
  004b7d5f: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b7d64: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7d67: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b7d6a: e8 31 d3 ff ff                                  call   0x4b50a0
  004b7d6f: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  004b7d72: 6a 00                                           push   0x0
  004b7d74: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7d77: 88 45 c0                                        mov    BYTE PTR [ebp-0x40],al
  004b7d7a: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7d80: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b7d83: 68 36 f0 00 00                                  push   0xf036
  004b7d88: 51                                              push   ecx
  004b7d89: c7 45 fc 27 00 00 00                            mov    DWORD PTR [ebp-0x4],0x27
  004b7d90: c7 45 bc 01 00 00 00                            mov    DWORD PTR [ebp-0x44],0x1
  004b7d97: e8 44 4a 00 00                                  call   0x4bc7e0
  004b7d9c: 83 c4 08                                        add    esp,0x8
  004b7d9f: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b7da5: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004b7da7: 51                                              push   ecx
  004b7da8: 6a 00                                           push   0x0
  004b7daa: 50                                              push   eax
  004b7dab: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7dae: c6 45 fc 28                                     mov    BYTE PTR [ebp-0x4],0x28
  004b7db2: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7db8: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004b7dbb: 85 c0                                           test   eax,eax
  004b7dbd: c6 45 fc 27                                     mov    BYTE PTR [ebp-0x4],0x27
  004b7dc1: 74 1c                                           je     0x4b7ddf
  004b7dc3: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b7dc6: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b7dc8: 84 c0                                           test   al,al
  004b7dca: 74 0a                                           je     0x4b7dd6
  004b7dcc: 3c ff                                           cmp    al,0xff
  004b7dce: 74 06                                           je     0x4b7dd6
  004b7dd0: fe c8                                           dec    al
  004b7dd2: 88 01                                           mov    BYTE PTR [ecx],al
  004b7dd4: eb 09                                           jmp    0x4b7ddf
  004b7dd6: 51                                              push   ecx
  004b7dd7: e8 84 a2 f8 ff                                  call   0x442060
  004b7ddc: 83 c4 04                                        add    esp,0x4
  004b7ddf: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  004b7de2: 83 ec 14                                        sub    esp,0x14
  004b7de5: 8b c4                                           mov    eax,esp
  004b7de7: 8d 70 04                                        lea    esi,[eax+0x4]
  004b7dea: 89 10                                           mov    DWORD PTR [eax],edx
  004b7dec: 8a 45 c0                                        mov    al,BYTE PTR [ebp-0x40]
  004b7def: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004b7df2: 6a 00                                           push   0x0
  004b7df4: 8b ce                                           mov    ecx,esi
  004b7df6: 88 06                                           mov    BYTE PTR [esi],al
  004b7df8: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7dfe: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b7e04: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b7e06: 52                                              push   edx
  004b7e07: 6a 00                                           push   0x0
  004b7e09: 8d 45 c0                                        lea    eax,[ebp-0x40]
  004b7e0c: 50                                              push   eax
  004b7e0d: 8b ce                                           mov    ecx,esi
  004b7e0f: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7e15: 8b cf                                           mov    ecx,edi
  004b7e17: e8 74 09 00 00                                  call   0x4b8790
  004b7e1c: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  004b7e1f: 85 c0                                           test   eax,eax
  004b7e21: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7e24: 74 1c                                           je     0x4b7e42
  004b7e26: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b7e29: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b7e2b: 84 c0                                           test   al,al
  004b7e2d: 74 0a                                           je     0x4b7e39
  004b7e2f: 3c ff                                           cmp    al,0xff
  004b7e31: 74 06                                           je     0x4b7e39
  004b7e33: fe c8                                           dec    al
  004b7e35: 88 01                                           mov    BYTE PTR [ecx],al
  004b7e37: eb 09                                           jmp    0x4b7e42
  004b7e39: 51                                              push   ecx
  004b7e3a: e8 21 a2 f8 ff                                  call   0x442060
  004b7e3f: 83 c4 04                                        add    esp,0x4
  004b7e42: 8a 4d f3                                        mov    cl,BYTE PTR [ebp-0xd]
  004b7e45: 88 4d c0                                        mov    BYTE PTR [ebp-0x40],cl
  004b7e48: 6a 00                                           push   0x0
  004b7e4a: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7e4d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7e53: 8d 55 d0                                        lea    edx,[ebp-0x30]
  004b7e56: 68 37 f0 00 00                                  push   0xf037
  004b7e5b: 52                                              push   edx
  004b7e5c: c7 45 fc 29 00 00 00                            mov    DWORD PTR [ebp-0x4],0x29
  004b7e63: c7 45 bc 01 00 00 00                            mov    DWORD PTR [ebp-0x44],0x1
  004b7e6a: e8 71 49 00 00                                  call   0x4bc7e0
  004b7e6f: 83 c4 08                                        add    esp,0x8
  004b7e72: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b7e78: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b7e7a: 52                                              push   edx
  004b7e7b: 6a 00                                           push   0x0
  004b7e7d: 50                                              push   eax
  004b7e7e: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7e81: c6 45 fc 2a                                     mov    BYTE PTR [ebp-0x4],0x2a
  004b7e85: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7e8b: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004b7e8e: 85 c0                                           test   eax,eax
  004b7e90: c6 45 fc 29                                     mov    BYTE PTR [ebp-0x4],0x29
  004b7e94: 74 1c                                           je     0x4b7eb2
  004b7e96: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b7e99: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b7e9b: 84 c0                                           test   al,al
  004b7e9d: 74 0a                                           je     0x4b7ea9
  004b7e9f: 3c ff                                           cmp    al,0xff
  004b7ea1: 74 06                                           je     0x4b7ea9
  004b7ea3: fe c8                                           dec    al
  004b7ea5: 88 01                                           mov    BYTE PTR [ecx],al
  004b7ea7: eb 09                                           jmp    0x4b7eb2
  004b7ea9: 51                                              push   ecx
  004b7eaa: e8 b1 a1 f8 ff                                  call   0x442060
  004b7eaf: 83 c4 04                                        add    esp,0x4
  004b7eb2: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  004b7eb5: 83 ec 14                                        sub    esp,0x14
  004b7eb8: 8b c4                                           mov    eax,esp
  004b7eba: 89 08                                           mov    DWORD PTR [eax],ecx
  004b7ebc: 8a 55 c0                                        mov    dl,BYTE PTR [ebp-0x40]
  004b7ebf: 8d 70 04                                        lea    esi,[eax+0x4]
  004b7ec2: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004b7ec5: 6a 00                                           push   0x0
  004b7ec7: 8b ce                                           mov    ecx,esi
  004b7ec9: 88 16                                           mov    BYTE PTR [esi],dl
  004b7ecb: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7ed1: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b7ed6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b7ed8: 51                                              push   ecx
  004b7ed9: 6a 00                                           push   0x0
  004b7edb: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004b7ede: 52                                              push   edx
  004b7edf: 8b ce                                           mov    ecx,esi
  004b7ee1: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7ee7: 8b cf                                           mov    ecx,edi
  004b7ee9: e8 a2 08 00 00                                  call   0x4b8790
  004b7eee: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  004b7ef1: 85 c0                                           test   eax,eax
  004b7ef3: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b7ef6: 74 1c                                           je     0x4b7f14
  004b7ef8: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b7efb: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b7efd: 84 c0                                           test   al,al
  004b7eff: 74 0a                                           je     0x4b7f0b
  004b7f01: 3c ff                                           cmp    al,0xff
  004b7f03: 74 06                                           je     0x4b7f0b
  004b7f05: fe c8                                           dec    al
  004b7f07: 88 01                                           mov    BYTE PTR [ecx],al
  004b7f09: eb 09                                           jmp    0x4b7f14
  004b7f0b: 51                                              push   ecx
  004b7f0c: e8 4f a1 f8 ff                                  call   0x442060
  004b7f11: 83 c4 04                                        add    esp,0x4
  004b7f14: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  004b7f17: 6a 00                                           push   0x0
  004b7f19: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7f1c: 88 45 c0                                        mov    BYTE PTR [ebp-0x40],al
  004b7f1f: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7f25: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b7f28: 68 38 f0 00 00                                  push   0xf038
  004b7f2d: 51                                              push   ecx
  004b7f2e: c7 45 fc 2b 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2b
  004b7f35: c7 45 bc 01 00 00 00                            mov    DWORD PTR [ebp-0x44],0x1
  004b7f3c: e8 9f 48 00 00                                  call   0x4bc7e0
  004b7f41: 83 c4 08                                        add    esp,0x8
  004b7f44: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b7f4a: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004b7f4c: 51                                              push   ecx
  004b7f4d: 6a 00                                           push   0x0
  004b7f4f: 50                                              push   eax
  004b7f50: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b7f53: c6 45 fc 2c                                     mov    BYTE PTR [ebp-0x4],0x2c
  004b7f57: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7f5d: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004b7f60: 85 c0                                           test   eax,eax
  004b7f62: c6 45 fc 2b                                     mov    BYTE PTR [ebp-0x4],0x2b
  004b7f66: 74 1c                                           je     0x4b7f84
  004b7f68: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b7f6b: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b7f6d: 84 c0                                           test   al,al
  004b7f6f: 74 0a                                           je     0x4b7f7b
  004b7f71: 3c ff                                           cmp    al,0xff
  004b7f73: 74 06                                           je     0x4b7f7b
  004b7f75: fe c8                                           dec    al
  004b7f77: 88 01                                           mov    BYTE PTR [ecx],al
  004b7f79: eb 09                                           jmp    0x4b7f84
  004b7f7b: 51                                              push   ecx
  004b7f7c: e8 df a0 f8 ff                                  call   0x442060
  004b7f81: 83 c4 04                                        add    esp,0x4
  004b7f84: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  004b7f87: 83 ec 14                                        sub    esp,0x14
  004b7f8a: 8b f4                                           mov    esi,esp
  004b7f8c: 89 16                                           mov    DWORD PTR [esi],edx
  004b7f8e: 8a 45 c0                                        mov    al,BYTE PTR [ebp-0x40]
  004b7f91: 83 c6 04                                        add    esi,0x4
  004b7f94: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004b7f97: 6a 00                                           push   0x0
  004b7f99: 8b ce                                           mov    ecx,esi
  004b7f9b: 88 06                                           mov    BYTE PTR [esi],al
  004b7f9d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b7fa3: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b7fa9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b7fab: 52                                              push   edx
  004b7fac: 6a 00                                           push   0x0
  004b7fae: 8d 45 c0                                        lea    eax,[ebp-0x40]
  004b7fb1: 50                                              push   eax
  004b7fb2: 8b ce                                           mov    ecx,esi
  004b7fb4: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b7fba: 8b cf                                           mov    ecx,edi
  004b7fbc: e8 cf 07 00 00                                  call   0x4b8790
  004b7fc1: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  004b7fc4: 85 c0                                           test   eax,eax
  004b7fc6: 74 1c                                           je     0x4b7fe4
  004b7fc8: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b7fcb: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b7fcd: 84 c0                                           test   al,al
  004b7fcf: 74 0a                                           je     0x4b7fdb
  004b7fd1: 3c ff                                           cmp    al,0xff
  004b7fd3: 74 06                                           je     0x4b7fdb
  004b7fd5: fe c8                                           dec    al
  004b7fd7: 88 01                                           mov    BYTE PTR [ecx],al
  004b7fd9: eb 09                                           jmp    0x4b7fe4
  004b7fdb: 51                                              push   ecx
  004b7fdc: e8 7f a0 f8 ff                                  call   0x442060
  004b7fe1: 83 c4 04                                        add    esp,0x4
  004b7fe4: 6a 58                                           push   0x58
  004b7fe6: e8 05 a0 f8 ff                                  call   0x441ff0
  004b7feb: 8b f0                                           mov    esi,eax
  004b7fed: 83 c4 04                                        add    esp,0x4
  004b7ff0: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b7ff3: 85 f6                                           test   esi,esi
  004b7ff5: c7 45 fc 2d 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2d
  004b7ffc: 74 3e                                           je     0x4b803c
  004b7ffe: 6a 10                                           push   0x10
  004b8000: 83 ec 10                                        sub    esp,0x10
  004b8003: 8b cc                                           mov    ecx,esp
  004b8005: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b8008: 68 f9 ef 00 00                                  push   0xeff9
  004b800d: 51                                              push   ecx
  004b800e: e8 cd 47 00 00                                  call   0x4bc7e0
  004b8013: 83 ec 08                                        sub    esp,0x8
  004b8016: 8b d4                                           mov    edx,esp
  004b8018: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b801b: 68 f8 ef 00 00                                  push   0xeff8
  004b8020: 52                                              push   edx
  004b8021: c6 45 fc 2e                                     mov    BYTE PTR [ebp-0x4],0x2e
  004b8025: e8 b6 47 00 00                                  call   0x4bc7e0
  004b802a: 83 c4 08                                        add    esp,0x8
  004b802d: 8b ce                                           mov    ecx,esi
  004b802f: c6 45 fc 2d                                     mov    BYTE PTR [ebp-0x4],0x2d
  004b8033: e8 68 b4 ff ff                                  call   0x4b34a0
  004b8038: 8b f8                                           mov    edi,eax
  004b803a: eb 02                                           jmp    0x4b803e
  004b803c: 33 ff                                           xor    edi,edi
  004b803e: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b8043: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b8046: 51                                              push   ecx
  004b8047: 50                                              push   eax
  004b8048: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b804d: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b8050: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b8053: e8 48 d0 ff ff                                  call   0x4b50a0
  004b8058: 8a 55 f3                                        mov    dl,BYTE PTR [ebp-0xd]
  004b805b: 6a 00                                           push   0x0
  004b805d: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b8060: 88 55 c0                                        mov    BYTE PTR [ebp-0x40],dl
  004b8063: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b8069: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004b806c: 68 39 f0 00 00                                  push   0xf039
  004b8071: 50                                              push   eax
  004b8072: c7 45 fc 2f 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2f
  004b8079: c7 45 bc 05 00 00 00                            mov    DWORD PTR [ebp-0x44],0x5
  004b8080: e8 5b 47 00 00                                  call   0x4bc7e0
  004b8085: 83 c4 08                                        add    esp,0x8
  004b8088: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b808e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b8090: 52                                              push   edx
  004b8091: 6a 00                                           push   0x0
  004b8093: 50                                              push   eax
  004b8094: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b8097: c6 45 fc 30                                     mov    BYTE PTR [ebp-0x4],0x30
  004b809b: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b80a1: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004b80a4: 85 c0                                           test   eax,eax
  004b80a6: c6 45 fc 2f                                     mov    BYTE PTR [ebp-0x4],0x2f
  004b80aa: 74 1c                                           je     0x4b80c8
  004b80ac: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b80af: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b80b1: 84 c0                                           test   al,al
  004b80b3: 74 0a                                           je     0x4b80bf
  004b80b5: 3c ff                                           cmp    al,0xff
  004b80b7: 74 06                                           je     0x4b80bf
  004b80b9: fe c8                                           dec    al
  004b80bb: 88 01                                           mov    BYTE PTR [ecx],al
  004b80bd: eb 09                                           jmp    0x4b80c8
  004b80bf: 51                                              push   ecx
  004b80c0: e8 9b 9f f8 ff                                  call   0x442060
  004b80c5: 83 c4 04                                        add    esp,0x4
  004b80c8: 8b 45 bc                                        mov    eax,DWORD PTR [ebp-0x44]
  004b80cb: 83 ec 14                                        sub    esp,0x14
  004b80ce: 8b f4                                           mov    esi,esp
  004b80d0: 89 06                                           mov    DWORD PTR [esi],eax
  004b80d2: 8a 4d c0                                        mov    cl,BYTE PTR [ebp-0x40]
  004b80d5: 83 c6 04                                        add    esi,0x4
  004b80d8: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004b80db: 88 0e                                           mov    BYTE PTR [esi],cl
  004b80dd: 6a 00                                           push   0x0
  004b80df: 8b ce                                           mov    ecx,esi
  004b80e1: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b80e7: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b80ed: 8b 02                                           mov    eax,DWORD PTR [edx]
  004b80ef: 50                                              push   eax
  004b80f0: 6a 00                                           push   0x0
  004b80f2: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b80f5: 51                                              push   ecx
  004b80f6: 8b ce                                           mov    ecx,esi
  004b80f8: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b80fe: 8b cf                                           mov    ecx,edi
  004b8100: e8 8b 06 00 00                                  call   0x4b8790
  004b8105: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  004b8108: 85 c0                                           test   eax,eax
  004b810a: 74 1c                                           je     0x4b8128
  004b810c: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b810f: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b8111: 84 c0                                           test   al,al
  004b8113: 74 0a                                           je     0x4b811f
  004b8115: 3c ff                                           cmp    al,0xff
  004b8117: 74 06                                           je     0x4b811f
  004b8119: fe c8                                           dec    al
  004b811b: 88 01                                           mov    BYTE PTR [ecx],al
  004b811d: eb 09                                           jmp    0x4b8128
  004b811f: 51                                              push   ecx
  004b8120: e8 3b 9f f8 ff                                  call   0x442060
  004b8125: 83 c4 04                                        add    esp,0x4
  004b8128: 6a 58                                           push   0x58
  004b812a: e8 c1 9e f8 ff                                  call   0x441ff0
  004b812f: 8b f0                                           mov    esi,eax
  004b8131: 83 c4 04                                        add    esp,0x4
  004b8134: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b8137: 85 f6                                           test   esi,esi
  004b8139: c7 45 fc 31 00 00 00                            mov    DWORD PTR [ebp-0x4],0x31
  004b8140: 74 3e                                           je     0x4b8180
  004b8142: 6a 11                                           push   0x11
  004b8144: 83 ec 10                                        sub    esp,0x10
  004b8147: 8b d4                                           mov    edx,esp
  004b8149: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b814c: 68 fb ef 00 00                                  push   0xeffb
  004b8151: 52                                              push   edx
  004b8152: e8 89 46 00 00                                  call   0x4bc7e0
  004b8157: 83 ec 08                                        sub    esp,0x8
  004b815a: 8b c4                                           mov    eax,esp
  004b815c: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b815f: 68 fa ef 00 00                                  push   0xeffa
  004b8164: 50                                              push   eax
  004b8165: c6 45 fc 32                                     mov    BYTE PTR [ebp-0x4],0x32
  004b8169: e8 72 46 00 00                                  call   0x4bc7e0
  004b816e: 83 c4 08                                        add    esp,0x8
  004b8171: 8b ce                                           mov    ecx,esi
  004b8173: c6 45 fc 31                                     mov    BYTE PTR [ebp-0x4],0x31
  004b8177: e8 24 b3 ff ff                                  call   0x4b34a0
  004b817c: 8b f8                                           mov    edi,eax
  004b817e: eb 02                                           jmp    0x4b8182
  004b8180: 33 ff                                           xor    edi,edi
  004b8182: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b8187: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004b818a: 51                                              push   ecx
  004b818b: 50                                              push   eax
  004b818c: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b8191: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b8194: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b8197: e8 04 cf ff ff                                  call   0x4b50a0
  004b819c: 8a 55 f3                                        mov    dl,BYTE PTR [ebp-0xd]
  004b819f: 6a 00                                           push   0x0
  004b81a1: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b81a4: 88 55 c0                                        mov    BYTE PTR [ebp-0x40],dl
  004b81a7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b81ad: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004b81b0: 68 39 f0 00 00                                  push   0xf039
  004b81b5: 50                                              push   eax
  004b81b6: c7 45 fc 33 00 00 00                            mov    DWORD PTR [ebp-0x4],0x33
  004b81bd: c7 45 bc 05 00 00 00                            mov    DWORD PTR [ebp-0x44],0x5
  004b81c4: e8 17 46 00 00                                  call   0x4bc7e0
  004b81c9: 83 c4 08                                        add    esp,0x8
  004b81cc: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b81d2: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b81d4: 52                                              push   edx
  004b81d5: 6a 00                                           push   0x0
  004b81d7: 50                                              push   eax
  004b81d8: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b81db: c6 45 fc 34                                     mov    BYTE PTR [ebp-0x4],0x34
  004b81df: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b81e5: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004b81e8: 85 c0                                           test   eax,eax
  004b81ea: c6 45 fc 33                                     mov    BYTE PTR [ebp-0x4],0x33
  004b81ee: 74 1c                                           je     0x4b820c
  004b81f0: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b81f3: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b81f5: 84 c0                                           test   al,al
  004b81f7: 74 0a                                           je     0x4b8203
  004b81f9: 3c ff                                           cmp    al,0xff
  004b81fb: 74 06                                           je     0x4b8203
  004b81fd: fe c8                                           dec    al
  004b81ff: 88 01                                           mov    BYTE PTR [ecx],al
  004b8201: eb 09                                           jmp    0x4b820c
  004b8203: 51                                              push   ecx
  004b8204: e8 57 9e f8 ff                                  call   0x442060
  004b8209: 83 c4 04                                        add    esp,0x4
  004b820c: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  004b820f: 83 ec 14                                        sub    esp,0x14
  004b8212: 8b c4                                           mov    eax,esp
  004b8214: 89 08                                           mov    DWORD PTR [eax],ecx
  004b8216: 8a 55 c0                                        mov    dl,BYTE PTR [ebp-0x40]
  004b8219: 8d 70 04                                        lea    esi,[eax+0x4]
  004b821c: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004b821f: 6a 00                                           push   0x0
  004b8221: 8b ce                                           mov    ecx,esi
  004b8223: 88 16                                           mov    BYTE PTR [esi],dl
  004b8225: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b822b: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b8230: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b8232: 51                                              push   ecx
  004b8233: 6a 00                                           push   0x0
  004b8235: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004b8238: 52                                              push   edx
  004b8239: 8b ce                                           mov    ecx,esi
  004b823b: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b8241: 8b cf                                           mov    ecx,edi
  004b8243: e8 48 05 00 00                                  call   0x4b8790
  004b8248: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  004b824b: 85 c0                                           test   eax,eax
  004b824d: 74 1c                                           je     0x4b826b
  004b824f: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b8252: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b8254: 84 c0                                           test   al,al
  004b8256: 74 0a                                           je     0x4b8262
  004b8258: 3c ff                                           cmp    al,0xff
  004b825a: 74 06                                           je     0x4b8262
  004b825c: fe c8                                           dec    al
  004b825e: 88 01                                           mov    BYTE PTR [ecx],al
  004b8260: eb 09                                           jmp    0x4b826b
  004b8262: 51                                              push   ecx
  004b8263: e8 f8 9d f8 ff                                  call   0x442060
  004b8268: 83 c4 04                                        add    esp,0x4
  004b826b: 6a 58                                           push   0x58
  004b826d: e8 7e 9d f8 ff                                  call   0x441ff0
  004b8272: 8b f0                                           mov    esi,eax
  004b8274: 83 c4 04                                        add    esp,0x4
  004b8277: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b827a: 33 ff                                           xor    edi,edi
  004b827c: 3b f7                                           cmp    esi,edi
  004b827e: c7 45 fc 35 00 00 00                            mov    DWORD PTR [ebp-0x4],0x35
  004b8285: 74 3e                                           je     0x4b82c5
  004b8287: 6a 12                                           push   0x12
  004b8289: 83 ec 10                                        sub    esp,0x10
  004b828c: 8b c4                                           mov    eax,esp
  004b828e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b8291: 68 fd ef 00 00                                  push   0xeffd
  004b8296: 50                                              push   eax
  004b8297: e8 44 45 00 00                                  call   0x4bc7e0
  004b829c: 83 ec 08                                        sub    esp,0x8
  004b829f: 8b cc                                           mov    ecx,esp
  004b82a1: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b82a4: 68 fc ef 00 00                                  push   0xeffc
  004b82a9: 51                                              push   ecx
  004b82aa: c6 45 fc 36                                     mov    BYTE PTR [ebp-0x4],0x36
  004b82ae: e8 2d 45 00 00                                  call   0x4bc7e0
  004b82b3: 83 c4 08                                        add    esp,0x8
  004b82b6: 8b ce                                           mov    ecx,esi
  004b82b8: c6 45 fc 35                                     mov    BYTE PTR [ebp-0x4],0x35
  004b82bc: e8 df b1 ff ff                                  call   0x4b34a0
  004b82c1: 8b f0                                           mov    esi,eax
  004b82c3: eb 02                                           jmp    0x4b82c7
  004b82c5: 33 f6                                           xor    esi,esi
  004b82c7: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b82cc: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004b82cf: 52                                              push   edx
  004b82d0: 50                                              push   eax
  004b82d1: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b82d6: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b82d9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004b82dc: e8 bf cd ff ff                                  call   0x4b50a0
  004b82e1: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  004b82e4: 88 45 c0                                        mov    BYTE PTR [ebp-0x40],al
  004b82e7: 89 7d c4                                        mov    DWORD PTR [ebp-0x3c],edi
  004b82ea: 89 7d c8                                        mov    DWORD PTR [ebp-0x38],edi
  004b82ed: 89 7d cc                                        mov    DWORD PTR [ebp-0x34],edi
  004b82f0: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004b82f3: 68 3a f0 00 00                                  push   0xf03a
  004b82f8: bb 37 00 00 00                                  mov    ebx,0x37
  004b82fd: 51                                              push   ecx
  004b82fe: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b8301: c7 45 bc 01 00 00 00                            mov    DWORD PTR [ebp-0x44],0x1
  004b8308: e8 d3 44 00 00                                  call   0x4bc7e0
  004b830d: 83 c4 08                                        add    esp,0x8
  004b8310: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b8316: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004b8318: 51                                              push   ecx
  004b8319: 57                                              push   edi
  004b831a: 50                                              push   eax
  004b831b: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b831e: c6 45 fc 38                                     mov    BYTE PTR [ebp-0x4],0x38
  004b8322: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b8328: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004b832b: 3b c7                                           cmp    eax,edi
  004b832d: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b8330: 74 1c                                           je     0x4b834e
  004b8332: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b8335: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b8337: 84 c0                                           test   al,al
  004b8339: 74 0a                                           je     0x4b8345
  004b833b: 3c ff                                           cmp    al,0xff
  004b833d: 74 06                                           je     0x4b8345
  004b833f: fe c8                                           dec    al
  004b8341: 88 01                                           mov    BYTE PTR [ecx],al
  004b8343: eb 09                                           jmp    0x4b834e
  004b8345: 51                                              push   ecx
  004b8346: e8 15 9d f8 ff                                  call   0x442060
  004b834b: 83 c4 04                                        add    esp,0x4
  004b834e: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  004b8351: 83 ec 14                                        sub    esp,0x14
  004b8354: 8b cc                                           mov    ecx,esp
  004b8356: 89 11                                           mov    DWORD PTR [ecx],edx
  004b8358: 8a 45 c0                                        mov    al,BYTE PTR [ebp-0x40]
  004b835b: 83 c1 04                                        add    ecx,0x4
  004b835e: 88 01                                           mov    BYTE PTR [ecx],al
  004b8360: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  004b8363: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  004b8366: 89 79 0c                                        mov    DWORD PTR [ecx+0xc],edi
  004b8369: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b836f: 8b 02                                           mov    eax,DWORD PTR [edx]
  004b8371: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004b8374: 50                                              push   eax
  004b8375: 57                                              push   edi
  004b8376: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004b8379: 52                                              push   edx
  004b837a: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b8380: 8b ce                                           mov    ecx,esi
  004b8382: e8 09 04 00 00                                  call   0x4b8790
  004b8387: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  004b838a: 3b c7                                           cmp    eax,edi
  004b838c: 74 1c                                           je     0x4b83aa
  004b838e: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b8391: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b8393: 84 c0                                           test   al,al
  004b8395: 74 0a                                           je     0x4b83a1
  004b8397: 3c ff                                           cmp    al,0xff
  004b8399: 74 06                                           je     0x4b83a1
  004b839b: fe c8                                           dec    al
  004b839d: 88 01                                           mov    BYTE PTR [ecx],al
  004b839f: eb 09                                           jmp    0x4b83aa
  004b83a1: 51                                              push   ecx
  004b83a2: e8 b9 9c f8 ff                                  call   0x442060
  004b83a7: 83 c4 04                                        add    esp,0x4
  004b83aa: 6a 58                                           push   0x58
  004b83ac: e8 3f 9c f8 ff                                  call   0x441ff0
  004b83b1: 8b f0                                           mov    esi,eax
  004b83b3: 83 c4 04                                        add    esp,0x4
  004b83b6: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b83b9: 3b f7                                           cmp    esi,edi
  004b83bb: bb 39 00 00 00                                  mov    ebx,0x39
  004b83c0: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b83c3: 74 3e                                           je     0x4b8403
  004b83c5: 6a 13                                           push   0x13
  004b83c7: 83 ec 10                                        sub    esp,0x10
  004b83ca: 8b c4                                           mov    eax,esp
  004b83cc: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b83cf: 68 ff ef 00 00                                  push   0xefff
  004b83d4: 50                                              push   eax
  004b83d5: e8 06 44 00 00                                  call   0x4bc7e0
  004b83da: 83 ec 08                                        sub    esp,0x8
  004b83dd: 8b cc                                           mov    ecx,esp
  004b83df: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b83e2: 68 fe ef 00 00                                  push   0xeffe
  004b83e7: 51                                              push   ecx
  004b83e8: c6 45 fc 3a                                     mov    BYTE PTR [ebp-0x4],0x3a
  004b83ec: e8 ef 43 00 00                                  call   0x4bc7e0
  004b83f1: 83 c4 08                                        add    esp,0x8
  004b83f4: 8b ce                                           mov    ecx,esi
  004b83f6: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b83f9: e8 a2 b0 ff ff                                  call   0x4b34a0
  004b83fe: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b8401: eb 03                                           jmp    0x4b8406
  004b8403: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004b8406: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b840b: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004b840e: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004b8411: 51                                              push   ecx
  004b8412: 50                                              push   eax
  004b8413: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b8418: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004b841f: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  004b8422: e8 79 cc ff ff                                  call   0x4b50a0
  004b8427: 8a 55 f3                                        mov    dl,BYTE PTR [ebp-0xd]
  004b842a: 33 ff                                           xor    edi,edi
  004b842c: 88 55 c0                                        mov    BYTE PTR [ebp-0x40],dl
  004b842f: 89 7d c4                                        mov    DWORD PTR [ebp-0x3c],edi
  004b8432: 89 7d c8                                        mov    DWORD PTR [ebp-0x38],edi
  004b8435: 89 7d cc                                        mov    DWORD PTR [ebp-0x34],edi
  004b8438: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004b843b: 68 3b f0 00 00                                  push   0xf03b
  004b8440: 50                                              push   eax
  004b8441: c7 45 fc 3b 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3b
  004b8448: c7 45 bc 01 00 00 00                            mov    DWORD PTR [ebp-0x44],0x1
  004b844f: e8 8c 43 00 00                                  call   0x4bc7e0
  004b8454: 83 c4 08                                        add    esp,0x8
  004b8457: 8b f0                                           mov    esi,eax
  004b8459: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004b845f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004b8461: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004b8464: 8b d9                                           mov    ebx,ecx
  004b8466: 3b c3                                           cmp    eax,ebx
  004b8468: c6 45 fc 3c                                     mov    BYTE PTR [ebp-0x4],0x3c
  004b846c: 73 02                                           jae    0x4b8470
  004b846e: 8b d8                                           mov    ebx,eax
  004b8470: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004b8473: 3b d6                                           cmp    edx,esi
  004b8475: 75 1b                                           jne    0x4b8492
  004b8477: 50                                              push   eax
  004b8478: 53                                              push   ebx
  004b8479: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b847c: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004b8482: 57                                              push   edi
  004b8483: 57                                              push   edi
  004b8484: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b8487: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004b848d: e9 81 00 00 00                                  jmp    0x4b8513
  004b8492: 3b df                                           cmp    ebx,edi
  004b8494: 76 41                                           jbe    0x4b84d7
  004b8496: 3b d9                                           cmp    ebx,ecx
  004b8498: 75 3d                                           jne    0x4b84d7
  004b849a: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004b849d: 3b c7                                           cmp    eax,edi
  004b849f: 75 05                                           jne    0x4b84a6
  004b84a1: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004b84a6: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004b84aa: 73 2b                                           jae    0x4b84d7
  004b84ac: 6a 01                                           push   0x1
  004b84ae: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b84b1: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004b84b7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004b84ba: 3b c7                                           cmp    eax,edi
  004b84bc: 75 05                                           jne    0x4b84c3
  004b84be: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004b84c3: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  004b84c6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004b84c9: 89 4d c8                                        mov    DWORD PTR [ebp-0x38],ecx
  004b84cc: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  004b84cf: 89 75 cc                                        mov    DWORD PTR [ebp-0x34],esi
  004b84d2: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004b84d5: eb 3c                                           jmp    0x4b8513
  004b84d7: 6a 01                                           push   0x1
  004b84d9: 53                                              push   ebx
  004b84da: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b84dd: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004b84e3: 84 c0                                           test   al,al
  004b84e5: 74 2c                                           je     0x4b8513
  004b84e7: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004b84ea: 3b f7                                           cmp    esi,edi
  004b84ec: 75 06                                           jne    0x4b84f4
  004b84ee: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004b84f4: 8b 7d c4                                        mov    edi,DWORD PTR [ebp-0x3c]
  004b84f7: 8b cb                                           mov    ecx,ebx
  004b84f9: 8b c1                                           mov    eax,ecx
  004b84fb: c1 e9 02                                        shr    ecx,0x2
  004b84fe: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004b8500: 8b c8                                           mov    ecx,eax
  004b8502: 83 e1 03                                        and    ecx,0x3
  004b8505: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004b8507: 53                                              push   ebx
  004b8508: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004b850b: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004b8511: 33 ff                                           xor    edi,edi
  004b8513: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004b8516: 3b c7                                           cmp    eax,edi
  004b8518: c6 45 fc 3b                                     mov    BYTE PTR [ebp-0x4],0x3b
  004b851c: 74 1c                                           je     0x4b853a
  004b851e: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b8521: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b8523: 84 c0                                           test   al,al
  004b8525: 74 0a                                           je     0x4b8531
  004b8527: 3c ff                                           cmp    al,0xff
  004b8529: 74 06                                           je     0x4b8531
  004b852b: fe c8                                           dec    al
  004b852d: 88 01                                           mov    BYTE PTR [ecx],al
  004b852f: eb 09                                           jmp    0x4b853a
  004b8531: 51                                              push   ecx
  004b8532: e8 29 9b f8 ff                                  call   0x442060
  004b8537: 83 c4 04                                        add    esp,0x4
  004b853a: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  004b853d: 83 ec 14                                        sub    esp,0x14
  004b8540: 8b c4                                           mov    eax,esp
  004b8542: 89 08                                           mov    DWORD PTR [eax],ecx
  004b8544: 8a 55 c0                                        mov    dl,BYTE PTR [ebp-0x40]
  004b8547: 8d 48 04                                        lea    ecx,[eax+0x4]
  004b854a: 88 11                                           mov    BYTE PTR [ecx],dl
  004b854c: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  004b854f: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  004b8552: 89 79 0c                                        mov    DWORD PTR [ecx+0xc],edi
  004b8555: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b855a: 8b 10                                           mov    edx,DWORD PTR [eax]
  004b855c: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004b855f: 52                                              push   edx
  004b8560: 57                                              push   edi
  004b8561: 8d 45 c0                                        lea    eax,[ebp-0x40]
  004b8564: 50                                              push   eax
  004b8565: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b856b: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004b856e: e8 1d 02 00 00                                  call   0x4b8790
  004b8573: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  004b8576: 3b c7                                           cmp    eax,edi
  004b8578: 74 1c                                           je     0x4b8596
  004b857a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b857d: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b857f: 84 c0                                           test   al,al
  004b8581: 74 0a                                           je     0x4b858d
  004b8583: 3c ff                                           cmp    al,0xff
  004b8585: 74 06                                           je     0x4b858d
  004b8587: fe c8                                           dec    al
  004b8589: 88 01                                           mov    BYTE PTR [ecx],al
  004b858b: eb 09                                           jmp    0x4b8596
  004b858d: 51                                              push   ecx
  004b858e: e8 cd 9a f8 ff                                  call   0x442060
  004b8593: 83 c4 04                                        add    esp,0x4
  004b8596: 6a 58                                           push   0x58
  004b8598: e8 53 9a f8 ff                                  call   0x441ff0
  004b859d: 8b f0                                           mov    esi,eax
  004b859f: 83 c4 04                                        add    esp,0x4
  004b85a2: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b85a5: 3b f7                                           cmp    esi,edi
  004b85a7: bb 3d 00 00 00                                  mov    ebx,0x3d
  004b85ac: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b85af: 74 3b                                           je     0x4b85ec
  004b85b1: 6a 15                                           push   0x15
  004b85b3: 83 ec 10                                        sub    esp,0x10
  004b85b6: 8b cc                                           mov    ecx,esp
  004b85b8: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b85bb: 68 4e f0 00 00                                  push   0xf04e
  004b85c0: 51                                              push   ecx
  004b85c1: e8 1a 42 00 00                                  call   0x4bc7e0
  004b85c6: 83 ec 08                                        sub    esp,0x8
  004b85c9: 8b d4                                           mov    edx,esp
  004b85cb: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b85ce: 68 4d f0 00 00                                  push   0xf04d
  004b85d3: 52                                              push   edx
  004b85d4: c6 45 fc 3e                                     mov    BYTE PTR [ebp-0x4],0x3e
  004b85d8: e8 03 42 00 00                                  call   0x4bc7e0
  004b85dd: 83 c4 08                                        add    esp,0x8
  004b85e0: 8b ce                                           mov    ecx,esi
  004b85e2: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b85e5: e8 b6 ae ff ff                                  call   0x4b34a0
  004b85ea: eb 02                                           jmp    0x4b85ee
  004b85ec: 33 c0                                           xor    eax,eax
  004b85ee: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004b85f1: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004b85f4: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b85f9: 51                                              push   ecx
  004b85fa: 50                                              push   eax
  004b85fb: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b8600: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004b8607: e8 94 ca ff ff                                  call   0x4b50a0
  004b860c: 6a 58                                           push   0x58
  004b860e: e8 dd 99 f8 ff                                  call   0x441ff0
  004b8613: 8b f0                                           mov    esi,eax
  004b8615: 83 c4 04                                        add    esp,0x4
  004b8618: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b861b: 3b f7                                           cmp    esi,edi
  004b861d: bb 3f 00 00 00                                  mov    ebx,0x3f
  004b8622: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b8625: 74 3b                                           je     0x4b8662
  004b8627: 6a 16                                           push   0x16
  004b8629: 83 ec 10                                        sub    esp,0x10
  004b862c: 8b d4                                           mov    edx,esp
  004b862e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b8631: 68 50 f0 00 00                                  push   0xf050
  004b8636: 52                                              push   edx
  004b8637: e8 a4 41 00 00                                  call   0x4bc7e0
  004b863c: 83 ec 08                                        sub    esp,0x8
  004b863f: 8b c4                                           mov    eax,esp
  004b8641: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b8644: 68 4f f0 00 00                                  push   0xf04f
  004b8649: 50                                              push   eax
  004b864a: c6 45 fc 40                                     mov    BYTE PTR [ebp-0x4],0x40
  004b864e: e8 8d 41 00 00                                  call   0x4bc7e0
  004b8653: 83 c4 08                                        add    esp,0x8
  004b8656: 8b ce                                           mov    ecx,esi
  004b8658: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b865b: e8 40 ae ff ff                                  call   0x4b34a0
  004b8660: eb 02                                           jmp    0x4b8664
  004b8662: 33 c0                                           xor    eax,eax
  004b8664: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004b8667: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004b866a: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b866f: 51                                              push   ecx
  004b8670: 50                                              push   eax
  004b8671: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b8676: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004b867d: e8 1e ca ff ff                                  call   0x4b50a0
  004b8682: 6a 58                                           push   0x58
  004b8684: e8 67 99 f8 ff                                  call   0x441ff0
  004b8689: 8b f0                                           mov    esi,eax
  004b868b: 83 c4 04                                        add    esp,0x4
  004b868e: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b8691: 3b f7                                           cmp    esi,edi
  004b8693: bb 41 00 00 00                                  mov    ebx,0x41
  004b8698: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b869b: 74 3b                                           je     0x4b86d8
  004b869d: 6a 17                                           push   0x17
  004b869f: 83 ec 10                                        sub    esp,0x10
  004b86a2: 8b d4                                           mov    edx,esp
  004b86a4: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b86a7: 68 65 f0 00 00                                  push   0xf065
  004b86ac: 52                                              push   edx
  004b86ad: e8 2e 41 00 00                                  call   0x4bc7e0
  004b86b2: 83 ec 08                                        sub    esp,0x8
  004b86b5: 8b c4                                           mov    eax,esp
  004b86b7: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b86ba: 68 64 f0 00 00                                  push   0xf064
  004b86bf: 50                                              push   eax
  004b86c0: c6 45 fc 42                                     mov    BYTE PTR [ebp-0x4],0x42
  004b86c4: e8 17 41 00 00                                  call   0x4bc7e0
  004b86c9: 83 c4 08                                        add    esp,0x8
  004b86cc: 8b ce                                           mov    ecx,esi
  004b86ce: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b86d1: e8 ca ad ff ff                                  call   0x4b34a0
  004b86d6: eb 02                                           jmp    0x4b86da
  004b86d8: 33 c0                                           xor    eax,eax
  004b86da: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004b86dd: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004b86e0: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b86e5: 51                                              push   ecx
  004b86e6: 50                                              push   eax
  004b86e7: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b86ec: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004b86f3: e8 a8 c9 ff ff                                  call   0x4b50a0
  004b86f8: 6a 58                                           push   0x58
  004b86fa: e8 f1 98 f8 ff                                  call   0x441ff0
  004b86ff: 8b f0                                           mov    esi,eax
  004b8701: 83 c4 04                                        add    esp,0x4
  004b8704: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004b8707: 3b f7                                           cmp    esi,edi
  004b8709: bb 43 00 00 00                                  mov    ebx,0x43
  004b870e: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b8711: 74 3b                                           je     0x4b874e
  004b8713: 6a 18                                           push   0x18
  004b8715: 83 ec 10                                        sub    esp,0x10
  004b8718: 8b d4                                           mov    edx,esp
  004b871a: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004b871d: 68 67 f0 00 00                                  push   0xf067
  004b8722: 52                                              push   edx
  004b8723: e8 b8 40 00 00                                  call   0x4bc7e0
  004b8728: 83 ec 08                                        sub    esp,0x8
  004b872b: 8b c4                                           mov    eax,esp
  004b872d: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004b8730: 68 66 f0 00 00                                  push   0xf066
  004b8735: 50                                              push   eax
  004b8736: c6 45 fc 44                                     mov    BYTE PTR [ebp-0x4],0x44
  004b873a: e8 a1 40 00 00                                  call   0x4bc7e0
  004b873f: 83 c4 08                                        add    esp,0x8
  004b8742: 8b ce                                           mov    ecx,esi
  004b8744: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b8747: e8 54 ad ff ff                                  call   0x4b34a0
  004b874c: eb 02                                           jmp    0x4b8750
  004b874e: 33 c0                                           xor    eax,eax
  004b8750: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004b8753: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004b8756: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b875b: 51                                              push   ecx
  004b875c: 50                                              push   eax
  004b875d: b9 a8 64 55 00                                  mov    ecx,0x5564a8
  004b8762: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004b8769: e8 32 c9 ff ff                                  call   0x4b50a0
  004b876e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b8771: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  004b8774: 5f                                              pop    edi
  004b8775: 5e                                              pop    esi
  004b8776: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b877d: 5b                                              pop    ebx
  004b877e: 8b e5                                           mov    esp,ebp
  004b8780: 5d                                              pop    ebp
  004b8781: c3                                              ret
  004b9390: 55                                              push   ebp
  004b9391: 8b ec                                           mov    ebp,esp
  004b9393: 51                                              push   ecx
  004b9394: 56                                              push   esi
  004b9395: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b9398: 68 0b f0 00 00                                  push   0xf00b
  004b939d: 56                                              push   esi
  004b939e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b93a5: e8 36 34 00 00                                  call   0x4bc7e0
  004b93aa: 83 c4 08                                        add    esp,0x8
  004b93ad: 8b c6                                           mov    eax,esi
  004b93af: 5e                                              pop    esi
  004b93b0: 8b e5                                           mov    esp,ebp
  004b93b2: 5d                                              pop    ebp
  004b93b3: c3                                              ret
  004bc4b0: 55                                              push   ebp
  004bc4b1: 8b ec                                           mov    ebp,esp
  004bc4b3: 51                                              push   ecx
  004bc4b4: 56                                              push   esi
  004bc4b5: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004bc4b8: 68 09 f0 00 00                                  push   0xf009
  004bc4bd: 56                                              push   esi
  004bc4be: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004bc4c5: e8 16 03 00 00                                  call   0x4bc7e0
  004bc4ca: 83 c4 08                                        add    esp,0x8
  004bc4cd: 8b c6                                           mov    eax,esi
  004bc4cf: 5e                                              pop    esi
  004bc4d0: 8b e5                                           mov    esp,ebp
  004bc4d2: 5d                                              pop    ebp
  004bc4d3: c3                                              ret
  004bcbe0: 55                                              push   ebp
  004bcbe1: 8b ec                                           mov    ebp,esp
  004bcbe3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004bcbe9: 6a ff                                           push   0xffffffff
  004bcbeb: 68 d9 d3 4d 00                                  push   0x4dd3d9
  004bcbf0: 50                                              push   eax
  004bcbf1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004bcbf8: 53                                              push   ebx
  004bcbf9: 56                                              push   esi
  004bcbfa: 57                                              push   edi
  004bcbfb: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004bcc00: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004bcc03: 8b 00                                           mov    eax,DWORD PTR [eax]
  004bcc05: 8b df                                           mov    ebx,edi
  004bcc07: 3b c3                                           cmp    eax,ebx
  004bcc09: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004bcc10: 73 02                                           jae    0x4bcc14
  004bcc12: 8b d8                                           mov    ebx,eax
  004bcc14: 85 db                                           test   ebx,ebx
  004bcc16: 76 49                                           jbe    0x4bcc61
  004bcc18: 3b df                                           cmp    ebx,edi
  004bcc1a: 75 45                                           jne    0x4bcc61
  004bcc1c: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004bcc1f: 85 f6                                           test   esi,esi
  004bcc21: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004bcc26: 74 02                                           je     0x4bcc2a
  004bcc28: 8b c6                                           mov    eax,esi
  004bcc2a: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004bcc2e: 73 34                                           jae    0x4bcc64
  004bcc30: 6a 01                                           push   0x1
  004bcc32: b9 c8 64 55 00                                  mov    ecx,0x5564c8
  004bcc37: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004bcc3d: 85 f6                                           test   esi,esi
  004bcc3f: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004bcc44: 74 02                                           je     0x4bcc48
  004bcc46: 8b c6                                           mov    eax,esi
  004bcc48: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004bcc4b: 89 0d d4 64 55 00                               mov    DWORD PTR ds:0x5564d4,ecx
  004bcc51: a3 cc 64 55 00                                  mov    ds:0x5564cc,eax
  004bcc56: 89 3d d0 64 55 00                               mov    DWORD PTR ds:0x5564d0,edi
  004bcc5c: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004bcc5f: eb 44                                           jmp    0x4bcca5
  004bcc61: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004bcc64: 6a 01                                           push   0x1
  004bcc66: 53                                              push   ebx
  004bcc67: b9 c8 64 55 00                                  mov    ecx,0x5564c8
  004bcc6c: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004bcc72: 84 c0                                           test   al,al
  004bcc74: 74 2f                                           je     0x4bcca5
  004bcc76: 85 f6                                           test   esi,esi
  004bcc78: 75 06                                           jne    0x4bcc80
  004bcc7a: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004bcc80: 8b 3d cc 64 55 00                               mov    edi,DWORD PTR ds:0x5564cc
  004bcc86: 8b cb                                           mov    ecx,ebx
  004bcc88: 8b d1                                           mov    edx,ecx
  004bcc8a: c1 e9 02                                        shr    ecx,0x2
  004bcc8d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004bcc8f: 8b ca                                           mov    ecx,edx
  004bcc91: 83 e1 03                                        and    ecx,0x3
  004bcc94: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004bcc96: 53                                              push   ebx
  004bcc97: b9 c8 64 55 00                                  mov    ecx,0x5564c8
  004bcc9c: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004bcca2: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004bcca5: 85 f6                                           test   esi,esi
  004bcca7: 74 2b                                           je     0x4bccd4
  004bcca9: 8a 46 ff                                        mov    al,BYTE PTR [esi-0x1]
  004bccac: 84 c0                                           test   al,al
  004bccae: 74 1a                                           je     0x4bccca
  004bccb0: 3c ff                                           cmp    al,0xff
  004bccb2: 74 16                                           je     0x4bccca
  004bccb4: fe c8                                           dec    al
  004bccb6: 88 46 ff                                        mov    BYTE PTR [esi-0x1],al
  004bccb9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004bccbc: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004bccc3: 5f                                              pop    edi
  004bccc4: 5e                                              pop    esi
  004bccc5: 5b                                              pop    ebx
  004bccc6: 8b e5                                           mov    esp,ebp
  004bccc8: 5d                                              pop    ebp
  004bccc9: c3                                              ret
  004bccca: 4e                                              dec    esi
  004bcccb: 56                                              push   esi
  004bcccc: e8 8f 53 f8 ff                                  call   0x442060
  004bccd1: 83 c4 04                                        add    esp,0x4
  004bccd4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004bccd7: 5f                                              pop    edi
  004bccd8: 5e                                              pop    esi
  004bccd9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004bcce0: 5b                                              pop    ebx
  004bcce1: 8b e5                                           mov    esp,ebp
  004bcce3: 5d                                              pop    ebp
  004bcce4: c3                                              ret
  004c5370: 55                                              push   ebp
  004c5371: 8b ec                                           mov    ebp,esp
  004c5373: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004c5375: 8b 02                                           mov    eax,DWORD PTR [edx]
  004c5377: 89 01                                           mov    DWORD PTR [ecx],eax
  004c5379: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004c537c: 89 10                                           mov    DWORD PTR [eax],edx
  004c537e: 5d                                              pop    ebp
  004c537f: c2 08 00                                        ret    0x8
  004c5390: 55                                              push   ebp
  004c5391: 8b ec                                           mov    ebp,esp
  004c5393: 6a ff                                           push   0xffffffff
  004c5395: 68 39 d7 4d 00                                  push   0x4dd739
  004c539a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004c53a0: 50                                              push   eax
  004c53a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004c53a8: 83 ec 30                                        sub    esp,0x30
  004c53ab: 53                                              push   ebx
  004c53ac: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004c53af: 56                                              push   esi
  004c53b0: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004c53b3: 57                                              push   edi
  004c53b4: 6a 0c                                           push   0xc
  004c53b6: 8b f9                                           mov    edi,ecx
  004c53b8: e8 33 cc f7 ff                                  call   0x441ff0
  004c53bd: 83 c4 04                                        add    esp,0x4
  004c53c0: 85 db                                           test   ebx,ebx
  004c53c2: 8b cb                                           mov    ecx,ebx
  004c53c4: 75 02                                           jne    0x4c53c8
  004c53c6: 8b c8                                           mov    ecx,eax
  004c53c8: 85 f6                                           test   esi,esi
  004c53ca: 89 08                                           mov    DWORD PTR [eax],ecx
  004c53cc: 75 02                                           jne    0x4c53d0
  004c53ce: 8b f0                                           mov    esi,eax
  004c53d0: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  004c53d3: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004c53d6: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  004c53db: 2b d1                                           sub    edx,ecx
  004c53dd: 83 fa 01                                        cmp    edx,0x1
  004c53e0: 73 50                                           jae    0x4c5432
  004c53e2: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  004c53e5: 6a 00                                           push   0x0
  004c53e7: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004c53ea: 88 45 e0                                        mov    BYTE PTR [ebp-0x20],al
  004c53ed: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004c53f3: 83 c9 ff                                        or     ecx,0xffffffff
  004c53f6: 33 c0                                           xor    eax,eax
  004c53f8: bf ec 2a 50 00                                  mov    edi,0x502aec
  004c53fd: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004c53ff: f7 d1                                           not    ecx
  004c5401: 49                                              dec    ecx
  004c5402: 51                                              push   ecx
  004c5403: 68 ec 2a 50 00                                  push   0x502aec
  004c5408: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004c540b: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  004c5411: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004c5414: 51                                              push   ecx
  004c5415: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c5418: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004c541f: e8 fc ff f3 ff                                  call   0x405420
  004c5424: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004c5429: 8d 55 c4                                        lea    edx,[ebp-0x3c]
  004c542c: 52                                              push   edx
  004c542d: e8 24 c9 00 00                                  call   0x4d1d56
  004c5432: 41                                              inc    ecx
  004c5433: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004c5436: 8d 48 08                                        lea    ecx,[eax+0x8]
  004c5439: 85 c9                                           test   ecx,ecx
  004c543b: 74 07                                           je     0x4c5444
  004c543d: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004c5440: 8b 12                                           mov    edx,DWORD PTR [edx]
  004c5442: 89 11                                           mov    DWORD PTR [ecx],edx
  004c5444: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004c5447: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004c544a: 5f                                              pop    edi
  004c544b: 89 01                                           mov    DWORD PTR [ecx],eax
  004c544d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c5450: 5e                                              pop    esi
  004c5451: 5b                                              pop    ebx
  004c5452: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c5459: 8b e5                                           mov    esp,ebp
  004c545b: 5d                                              pop    ebp
  004c545c: c2 08 00                                        ret    0x8
  004c5460: 55                                              push   ebp
  004c5461: 8b ec                                           mov    ebp,esp
  004c5463: 6a 0c                                           push   0xc
  004c5465: e8 86 cb f7 ff                                  call   0x441ff0
  004c546a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004c546d: 83 c4 04                                        add    esp,0x4
  004c5470: 85 c9                                           test   ecx,ecx
  004c5472: 75 02                                           jne    0x4c5476
  004c5474: 8b c8                                           mov    ecx,eax
  004c5476: 89 08                                           mov    DWORD PTR [eax],ecx
  004c5478: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004c547b: 85 c9                                           test   ecx,ecx
  004c547d: 74 07                                           je     0x4c5486
  004c547f: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004c5482: 5d                                              pop    ebp
  004c5483: c2 08 00                                        ret    0x8
  004c5486: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004c5489: 5d                                              pop    ebp
  004c548a: c2 08 00                                        ret    0x8
