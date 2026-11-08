; PASSE 123, Desassemblage des cibles DEUXIEME_GENERATION_DIRECTE justifiees par des instructions sources
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2517 distinct instructions; 39 graph entry points

  004093f0: 55                                              push   ebp
  004093f1: 8b ec                                           mov    ebp,esp
  004093f3: 6a ff                                           push   0xffffffff
  004093f5: 68 e5 35 4d 00                                  push   0x4d35e5
  004093fa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00409400: 50                                              push   eax
  00409401: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00409408: 51                                              push   ecx
  00409409: 53                                              push   ebx
  0040940a: 56                                              push   esi
  0040940b: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0040940e: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00409411: 33 db                                           xor    ebx,ebx
  00409413: 3b f3                                           cmp    esi,ebx
  00409415: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00409418: 0f 84 91 00 00 00                               je     0x4094af
  0040941e: 57                                              push   edi
  0040941f: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00409422: 8b 07                                           mov    eax,DWORD PTR [edi]
  00409424: 89 06                                           mov    DWORD PTR [esi],eax
  00409426: 8a 57 04                                        mov    dl,BYTE PTR [edi+0x4]
  00409429: 8d 47 04                                        lea    eax,[edi+0x4]
  0040942c: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0040942f: 88 11                                           mov    BYTE PTR [ecx],dl
  00409431: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00409434: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00409437: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  0040943a: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00409440: 8b 12                                           mov    edx,DWORD PTR [edx]
  00409442: 52                                              push   edx
  00409443: 53                                              push   ebx
  00409444: 50                                              push   eax
  00409445: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0040944b: 8a 47 14                                        mov    al,BYTE PTR [edi+0x14]
  0040944e: 8d 5e 14                                        lea    ebx,[esi+0x14]
  00409451: 6a 00                                           push   0x0
  00409453: 8b cb                                           mov    ecx,ebx
  00409455: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00409459: 88 03                                           mov    BYTE PTR [ebx],al
  0040945b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00409461: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00409466: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00409468: 51                                              push   ecx
  00409469: 6a 00                                           push   0x0
  0040946b: 8d 47 14                                        lea    eax,[edi+0x14]
  0040946e: 50                                              push   eax
  0040946f: 8b cb                                           mov    ecx,ebx
  00409471: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00409477: 8b 57 24                                        mov    edx,DWORD PTR [edi+0x24]
  0040947a: 89 56 24                                        mov    DWORD PTR [esi+0x24],edx
  0040947d: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  00409480: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00409483: 8a 47 2c                                        mov    al,BYTE PTR [edi+0x2c]
  00409486: 83 c7 2c                                        add    edi,0x2c
  00409489: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  0040948c: 88 01                                           mov    BYTE PTR [ecx],al
  0040948e: 33 c0                                           xor    eax,eax
  00409490: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  00409493: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00409496: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  00409499: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0040949f: 8b 12                                           mov    edx,DWORD PTR [edx]
  004094a1: 52                                              push   edx
  004094a2: 50                                              push   eax
  004094a3: 57                                              push   edi
  004094a4: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004094a8: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004094ae: 5f                                              pop    edi
  004094af: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004094b2: 5e                                              pop    esi
  004094b3: 5b                                              pop    ebx
  004094b4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004094bb: 8b e5                                           mov    esp,ebp
  004094bd: 5d                                              pop    ebp
  004094be: c3                                              ret
  0042a0c0: 55                                              push   ebp
  0042a0c1: 8b ec                                           mov    ebp,esp
  0042a0c3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0042a0c6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a0c9: 89 08                                           mov    DWORD PTR [eax],ecx
  0042a0cb: 5d                                              pop    ebp
  0042a0cc: c2 04 00                                        ret    0x4
  0042e440: 55                                              push   ebp
  0042e441: 8b ec                                           mov    ebp,esp
  0042e443: 6a ff                                           push   0xffffffff
  0042e445: 68 fd 4f 4d 00                                  push   0x4d4ffd
  0042e44a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042e450: 50                                              push   eax
  0042e451: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042e458: 83 ec 18                                        sub    esp,0x18
  0042e45b: 53                                              push   ebx
  0042e45c: 56                                              push   esi
  0042e45d: 57                                              push   edi
  0042e45e: 8b f9                                           mov    edi,ecx
  0042e460: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0042e463: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  0042e466: 33 db                                           xor    ebx,ebx
  0042e468: 3b c3                                           cmp    eax,ebx
  0042e46a: c7 45 fc 07 00 00 00                            mov    DWORD PTR [ebp-0x4],0x7
  0042e471: 74 14                                           je     0x42e487
  0042e473: 3b 47 1c                                        cmp    eax,DWORD PTR [edi+0x1c]
  0042e476: 50                                              push   eax
  0042e477: 74 09                                           je     0x42e482
  0042e479: e8 90 40 0a 00                                  call   0x4d250e
  0042e47e: 8b 47 1c                                        mov    eax,DWORD PTR [edi+0x1c]
  0042e481: 50                                              push   eax
  0042e482: e8 87 40 0a 00                                  call   0x4d250e
  0042e487: 8b 4f 60                                        mov    ecx,DWORD PTR [edi+0x60]
  0042e48a: 8b 35 40 e1 4d 00                               mov    esi,DWORD PTR ds:0x4de140
  0042e490: 51                                              push   ecx
  0042e491: 89 9f 48 01 00 00                               mov    DWORD PTR [edi+0x148],ebx
  0042e497: 89 9f 4c 01 00 00                               mov    DWORD PTR [edi+0x14c],ebx
  0042e49d: 89 9f 40 01 00 00                               mov    DWORD PTR [edi+0x140],ebx
  0042e4a3: 89 9f 44 01 00 00                               mov    DWORD PTR [edi+0x144],ebx
  0042e4a9: 89 9f 50 01 00 00                               mov    DWORD PTR [edi+0x150],ebx
  0042e4af: ff d6                                           call   esi
  0042e4b1: 8b 57 64                                        mov    edx,DWORD PTR [edi+0x64]
  0042e4b4: 52                                              push   edx
  0042e4b5: ff d6                                           call   esi
  0042e4b7: 8b 47 68                                        mov    eax,DWORD PTR [edi+0x68]
  0042e4ba: 50                                              push   eax
  0042e4bb: ff d6                                           call   esi
  0042e4bd: 8b 4f 5c                                        mov    ecx,DWORD PTR [edi+0x5c]
  0042e4c0: 51                                              push   ecx
  0042e4c1: ff d6                                           call   esi
  0042e4c3: 8b 57 50                                        mov    edx,DWORD PTR [edi+0x50]
  0042e4c6: 8b 35 1c e1 4d 00                               mov    esi,DWORD PTR ds:0x4de11c
  0042e4cc: 68 88 13 00 00                                  push   0x1388
  0042e4d1: 52                                              push   edx
  0042e4d2: ff d6                                           call   esi
  0042e4d4: 3d 02 01 00 00                                  cmp    eax,0x102
  0042e4d9: 8b 3d 18 e1 4d 00                               mov    edi,DWORD PTR ds:0x4de118
  0042e4df: 75 0b                                           jne    0x42e4ec
  0042e4e1: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e4e4: 8b 48 50                                        mov    ecx,DWORD PTR [eax+0x50]
  0042e4e7: 6a 01                                           push   0x1
  0042e4e9: 51                                              push   ecx
  0042e4ea: ff d7                                           call   edi
  0042e4ec: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0042e4ef: 8b 42 4c                                        mov    eax,DWORD PTR [edx+0x4c]
  0042e4f2: 68 88 13 00 00                                  push   0x1388
  0042e4f7: 50                                              push   eax
  0042e4f8: ff d6                                           call   esi
  0042e4fa: 3d 02 01 00 00                                  cmp    eax,0x102
  0042e4ff: 75 0b                                           jne    0x42e50c
  0042e501: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0042e504: 8b 51 4c                                        mov    edx,DWORD PTR [ecx+0x4c]
  0042e507: 6a 01                                           push   0x1
  0042e509: 52                                              push   edx
  0042e50a: ff d7                                           call   edi
  0042e50c: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e50f: 8b 48 44                                        mov    ecx,DWORD PTR [eax+0x44]
  0042e512: 68 88 13 00 00                                  push   0x1388
  0042e517: 51                                              push   ecx
  0042e518: ff d6                                           call   esi
  0042e51a: 3d 02 01 00 00                                  cmp    eax,0x102
  0042e51f: 75 0b                                           jne    0x42e52c
  0042e521: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0042e524: 8b 42 44                                        mov    eax,DWORD PTR [edx+0x44]
  0042e527: 6a 01                                           push   0x1
  0042e529: 50                                              push   eax
  0042e52a: ff d7                                           call   edi
  0042e52c: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0042e52f: 8b 51 48                                        mov    edx,DWORD PTR [ecx+0x48]
  0042e532: 68 88 13 00 00                                  push   0x1388
  0042e537: 52                                              push   edx
  0042e538: ff d6                                           call   esi
  0042e53a: 3d 02 01 00 00                                  cmp    eax,0x102
  0042e53f: 75 0b                                           jne    0x42e54c
  0042e541: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e544: 8b 48 48                                        mov    ecx,DWORD PTR [eax+0x48]
  0042e547: 6a 01                                           push   0x1
  0042e549: 51                                              push   ecx
  0042e54a: ff d7                                           call   edi
  0042e54c: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0042e54f: 8b 42 54                                        mov    eax,DWORD PTR [edx+0x54]
  0042e552: 68 88 13 00 00                                  push   0x1388
  0042e557: 50                                              push   eax
  0042e558: ff d6                                           call   esi
  0042e55a: 3d 02 01 00 00                                  cmp    eax,0x102
  0042e55f: 75 0b                                           jne    0x42e56c
  0042e561: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0042e564: 8b 51 54                                        mov    edx,DWORD PTR [ecx+0x54]
  0042e567: 6a 01                                           push   0x1
  0042e569: 52                                              push   edx
  0042e56a: ff d7                                           call   edi
  0042e56c: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e56f: 8b 48 58                                        mov    ecx,DWORD PTR [eax+0x58]
  0042e572: 68 88 13 00 00                                  push   0x1388
  0042e577: 51                                              push   ecx
  0042e578: ff d6                                           call   esi
  0042e57a: 3d 02 01 00 00                                  cmp    eax,0x102
  0042e57f: 75 0d                                           jne    0x42e58e
  0042e581: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0042e584: 8b 56 58                                        mov    edx,DWORD PTR [esi+0x58]
  0042e587: 6a 01                                           push   0x1
  0042e589: 52                                              push   edx
  0042e58a: ff d7                                           call   edi
  0042e58c: eb 03                                           jmp    0x42e591
  0042e58e: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0042e591: 8b 8e a8 00 00 00                               mov    ecx,DWORD PTR [esi+0xa8]
  0042e597: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0042e59a: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042e59c: 3b c1                                           cmp    eax,ecx
  0042e59e: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0042e5a1: 0f 84 64 02 00 00                               je     0x42e80b
  0042e5a7: 8b 70 1c                                        mov    esi,DWORD PTR [eax+0x1c]
  0042e5aa: 8b 46 34                                        mov    eax,DWORD PTR [esi+0x34]
  0042e5ad: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  0042e5b0: 89 5e 50                                        mov    DWORD PTR [esi+0x50],ebx
  0042e5b3: c6 46 44 08                                     mov    BYTE PTR [esi+0x44],0x8
  0042e5b7: 39 5e 50                                        cmp    DWORD PTR [esi+0x50],ebx
  0042e5ba: 74 0f                                           je     0x42e5cb
  0042e5bc: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  0042e5bf: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042e5c1: 89 56 30                                        mov    DWORD PTR [esi+0x30],edx
  0042e5c4: bf 01 00 00 00                                  mov    edi,0x1
  0042e5c9: eb 08                                           jmp    0x42e5d3
  0042e5cb: bf 01 00 00 00                                  mov    edi,0x1
  0042e5d0: 89 7e 50                                        mov    DWORD PTR [esi+0x50],edi
  0042e5d3: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  0042e5d6: 3b c3                                           cmp    eax,ebx
  0042e5d8: 0f 84 ce 00 00 00                               je     0x42e6ac
  0042e5de: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042e5e1: 8b 51 10                                        mov    edx,DWORD PTR [ecx+0x10]
  0042e5e4: 52                                              push   edx
  0042e5e5: e8 76 3a 01 00                                  call   0x442060
  0042e5ea: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  0042e5ed: 8b 4e 38                                        mov    ecx,DWORD PTR [esi+0x38]
  0042e5f0: 89 46 3c                                        mov    DWORD PTR [esi+0x3c],eax
  0042e5f3: 8b 46 48                                        mov    eax,DWORD PTR [esi+0x48]
  0042e5f6: 83 c4 04                                        add    esp,0x4
  0042e5f9: 48                                              dec    eax
  0042e5fa: 89 46 48                                        mov    DWORD PTR [esi+0x48],eax
  0042e5fd: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  0042e600: 3b c1                                           cmp    eax,ecx
  0042e602: 74 3c                                           je     0x42e640
  0042e604: 3b 46 34                                        cmp    eax,DWORD PTR [esi+0x34]
  0042e607: 74 33                                           je     0x42e63c
  0042e609: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042e60b: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042e60e: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042e611: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  0042e614: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042e617: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042e619: 89 11                                           mov    DWORD PTR [ecx],edx
  0042e61b: 8b 46 50                                        mov    eax,DWORD PTR [esi+0x50]
  0042e61e: 3b c7                                           cmp    eax,edi
  0042e620: 75 0b                                           jne    0x42e62d
  0042e622: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  0042e625: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042e628: 89 4e 30                                        mov    DWORD PTR [esi+0x30],ecx
  0042e62b: eb 62                                           jmp    0x42e68f
  0042e62d: 83 f8 02                                        cmp    eax,0x2
  0042e630: 75 5d                                           jne    0x42e68f
  0042e632: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  0042e635: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042e637: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  0042e63a: eb 53                                           jmp    0x42e68f
  0042e63c: 3b c1                                           cmp    eax,ecx
  0042e63e: 75 23                                           jne    0x42e663
  0042e640: 3b 46 34                                        cmp    eax,DWORD PTR [esi+0x34]
  0042e643: 74 23                                           je     0x42e668
  0042e645: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042e648: 89 19                                           mov    DWORD PTR [ecx],ebx
  0042e64a: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  0042e64d: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0042e650: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  0042e653: 83 7e 50 02                                     cmp    DWORD PTR [esi+0x50],0x2
  0042e657: 8b ca                                           mov    ecx,edx
  0042e659: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0042e65c: 89 56 30                                        mov    DWORD PTR [esi+0x30],edx
  0042e65f: 75 2e                                           jne    0x42e68f
  0042e661: eb 29                                           jmp    0x42e68c
  0042e663: 3b 46 34                                        cmp    eax,DWORD PTR [esi+0x34]
  0042e666: 75 1b                                           jne    0x42e683
  0042e668: 3b c1                                           cmp    eax,ecx
  0042e66a: 74 17                                           je     0x42e683
  0042e66c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042e66e: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0042e671: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  0042e674: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042e676: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  0042e679: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  0042e67c: 39 7e 50                                        cmp    DWORD PTR [esi+0x50],edi
  0042e67f: 75 0e                                           jne    0x42e68f
  0042e681: eb 09                                           jmp    0x42e68c
  0042e683: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  0042e686: 89 5e 34                                        mov    DWORD PTR [esi+0x34],ebx
  0042e689: 89 5e 38                                        mov    DWORD PTR [esi+0x38],ebx
  0042e68c: 89 5e 50                                        mov    DWORD PTR [esi+0x50],ebx
  0042e68f: 8b 56 3c                                        mov    edx,DWORD PTR [esi+0x3c]
  0042e692: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0042e695: 50                                              push   eax
  0042e696: e8 c5 39 01 00                                  call   0x442060
  0042e69b: 8b 4e 3c                                        mov    ecx,DWORD PTR [esi+0x3c]
  0042e69e: 51                                              push   ecx
  0042e69f: e8 bc 39 01 00                                  call   0x442060
  0042e6a4: 83 c4 08                                        add    esp,0x8
  0042e6a7: e9 0b ff ff ff                                  jmp    0x42e5b7
  0042e6ac: 39 5e 50                                        cmp    DWORD PTR [esi+0x50],ebx
  0042e6af: 74 04                                           je     0x42e6b5
  0042e6b1: c6 46 44 07                                     mov    BYTE PTR [esi+0x44],0x7
  0042e6b5: 89 5e 50                                        mov    DWORD PTR [esi+0x50],ebx
  0042e6b8: 8b 56 78                                        mov    edx,DWORD PTR [esi+0x78]
  0042e6bb: 89 56 74                                        mov    DWORD PTR [esi+0x74],edx
  0042e6be: 89 9e 94 00 00 00                               mov    DWORD PTR [esi+0x94],ebx
  0042e6c4: c6 86 88 00 00 00 08                            mov    BYTE PTR [esi+0x88],0x8
  0042e6cb: 39 9e 94 00 00 00                               cmp    DWORD PTR [esi+0x94],ebx
  0042e6d1: 74 0a                                           je     0x42e6dd
  0042e6d3: 8b 46 74                                        mov    eax,DWORD PTR [esi+0x74]
  0042e6d6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042e6d8: 89 4e 74                                        mov    DWORD PTR [esi+0x74],ecx
  0042e6db: eb 06                                           jmp    0x42e6e3
  0042e6dd: 89 be 94 00 00 00                               mov    DWORD PTR [esi+0x94],edi
  0042e6e3: 8b 46 74                                        mov    eax,DWORD PTR [esi+0x74]
  0042e6e6: 3b c3                                           cmp    eax,ebx
  0042e6e8: 0f 84 ea 00 00 00                               je     0x42e7d8
  0042e6ee: 8b d0                                           mov    edx,eax
  0042e6f0: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0042e6f3: 8b 48 10                                        mov    ecx,DWORD PTR [eax+0x10]
  0042e6f6: 51                                              push   ecx
  0042e6f7: e8 64 39 01 00                                  call   0x442060
  0042e6fc: 8b 86 8c 00 00 00                               mov    eax,DWORD PTR [esi+0x8c]
  0042e702: 8b 56 74                                        mov    edx,DWORD PTR [esi+0x74]
  0042e705: 8b 4e 7c                                        mov    ecx,DWORD PTR [esi+0x7c]
  0042e708: 83 c4 04                                        add    esp,0x4
  0042e70b: 48                                              dec    eax
  0042e70c: 89 86 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],eax
  0042e712: 8b c2                                           mov    eax,edx
  0042e714: 3b c1                                           cmp    eax,ecx
  0042e716: 89 96 80 00 00 00                               mov    DWORD PTR [esi+0x80],edx
  0042e71c: 74 3f                                           je     0x42e75d
  0042e71e: 3b 46 78                                        cmp    eax,DWORD PTR [esi+0x78]
  0042e721: 74 36                                           je     0x42e759
  0042e723: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042e725: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042e728: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042e72b: 8b 46 74                                        mov    eax,DWORD PTR [esi+0x74]
  0042e72e: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042e731: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042e733: 89 11                                           mov    DWORD PTR [ecx],edx
  0042e735: 8b 86 94 00 00 00                               mov    eax,DWORD PTR [esi+0x94]
  0042e73b: 3b c7                                           cmp    eax,edi
  0042e73d: 75 0b                                           jne    0x42e74a
  0042e73f: 8b 46 74                                        mov    eax,DWORD PTR [esi+0x74]
  0042e742: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042e745: 89 4e 74                                        mov    DWORD PTR [esi+0x74],ecx
  0042e748: eb 6b                                           jmp    0x42e7b5
  0042e74a: 83 f8 02                                        cmp    eax,0x2
  0042e74d: 75 66                                           jne    0x42e7b5
  0042e74f: 8b 56 74                                        mov    edx,DWORD PTR [esi+0x74]
  0042e752: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042e754: 89 46 74                                        mov    DWORD PTR [esi+0x74],eax
  0042e757: eb 5c                                           jmp    0x42e7b5
  0042e759: 3b c1                                           cmp    eax,ecx
  0042e75b: 75 26                                           jne    0x42e783
  0042e75d: 3b 46 78                                        cmp    eax,DWORD PTR [esi+0x78]
  0042e760: 74 26                                           je     0x42e788
  0042e762: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042e765: 89 19                                           mov    DWORD PTR [ecx],ebx
  0042e767: 8b 56 74                                        mov    edx,DWORD PTR [esi+0x74]
  0042e76a: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0042e76d: 89 46 7c                                        mov    DWORD PTR [esi+0x7c],eax
  0042e770: 83 be 94 00 00 00 02                            cmp    DWORD PTR [esi+0x94],0x2
  0042e777: 8b ca                                           mov    ecx,edx
  0042e779: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0042e77c: 89 56 74                                        mov    DWORD PTR [esi+0x74],edx
  0042e77f: 75 34                                           jne    0x42e7b5
  0042e781: eb 2c                                           jmp    0x42e7af
  0042e783: 3b 46 78                                        cmp    eax,DWORD PTR [esi+0x78]
  0042e786: 75 1e                                           jne    0x42e7a6
  0042e788: 3b c1                                           cmp    eax,ecx
  0042e78a: 74 1a                                           je     0x42e7a6
  0042e78c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042e78e: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0042e791: 8b 4e 74                                        mov    ecx,DWORD PTR [esi+0x74]
  0042e794: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042e796: 89 46 74                                        mov    DWORD PTR [esi+0x74],eax
  0042e799: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  0042e79c: 39 be 94 00 00 00                               cmp    DWORD PTR [esi+0x94],edi
  0042e7a2: 75 11                                           jne    0x42e7b5
  0042e7a4: eb 09                                           jmp    0x42e7af
  0042e7a6: 89 5e 74                                        mov    DWORD PTR [esi+0x74],ebx
  0042e7a9: 89 5e 78                                        mov    DWORD PTR [esi+0x78],ebx
  0042e7ac: 89 5e 7c                                        mov    DWORD PTR [esi+0x7c],ebx
  0042e7af: 89 9e 94 00 00 00                               mov    DWORD PTR [esi+0x94],ebx
  0042e7b5: 8b 96 80 00 00 00                               mov    edx,DWORD PTR [esi+0x80]
  0042e7bb: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0042e7be: 50                                              push   eax
  0042e7bf: e8 9c 38 01 00                                  call   0x442060
  0042e7c4: 8b 8e 80 00 00 00                               mov    ecx,DWORD PTR [esi+0x80]
  0042e7ca: 51                                              push   ecx
  0042e7cb: e8 90 38 01 00                                  call   0x442060
  0042e7d0: 83 c4 08                                        add    esp,0x8
  0042e7d3: e9 f3 fe ff ff                                  jmp    0x42e6cb
  0042e7d8: 39 9e 94 00 00 00                               cmp    DWORD PTR [esi+0x94],ebx
  0042e7de: 74 07                                           je     0x42e7e7
  0042e7e0: c6 86 88 00 00 00 07                            mov    BYTE PTR [esi+0x88],0x7
  0042e7e7: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0042e7ea: 89 9e 94 00 00 00                               mov    DWORD PTR [esi+0x94],ebx
  0042e7f0: e8 db 30 00 00                                  call   0x4318d0
  0042e7f5: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0042e7f8: 8b 8a a8 00 00 00                               mov    ecx,DWORD PTR [edx+0xa8]
  0042e7fe: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0042e801: 3b c1                                           cmp    eax,ecx
  0042e803: 0f 85 9e fd ff ff                               jne    0x42e5a7
  0042e809: 8b f2                                           mov    esi,edx
  0042e80b: 8b be a8 00 00 00                               mov    edi,DWORD PTR [esi+0xa8]
  0042e811: 8b 86 ac 00 00 00                               mov    eax,DWORD PTR [esi+0xac]
  0042e817: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0042e819: 81 c6 a4 00 00 00                               add    esi,0xa4
  0042e81f: 3b c3                                           cmp    eax,ebx
  0042e821: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  0042e824: 74 4c                                           je     0x42e872
  0042e826: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0042e829: 50                                              push   eax
  0042e82a: 8b ce                                           mov    ecx,esi
  0042e82c: e8 6f 25 00 00                                  call   0x430da0
  0042e831: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042e833: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0042e836: 3b ca                                           cmp    ecx,edx
  0042e838: 0f 95 c0                                        setne  al
  0042e83b: 84 c0                                           test   al,al
  0042e83d: 75 33                                           jne    0x42e872
  0042e83f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042e842: 3b f8                                           cmp    edi,eax
  0042e844: 75 2c                                           jne    0x42e872
  0042e846: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042e849: 51                                              push   ecx
  0042e84a: 8b ce                                           mov    ecx,esi
  0042e84c: e8 1f 2c 00 00                                  call   0x431470
  0042e851: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042e854: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042e857: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042e85a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042e85d: 89 00                                           mov    DWORD PTR [eax],eax
  0042e85f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042e862: 8d 55 e0                                        lea    edx,[ebp-0x20]
  0042e865: 52                                              push   edx
  0042e866: 8b ce                                           mov    ecx,esi
  0042e868: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0042e86b: e8 30 25 00 00                                  call   0x430da0
  0042e870: eb 24                                           jmp    0x42e896
  0042e872: 3b cf                                           cmp    ecx,edi
  0042e874: 74 20                                           je     0x42e896
  0042e876: 53                                              push   ebx
  0042e877: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0042e87a: 50                                              push   eax
  0042e87b: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0042e87e: e8 8d 29 00 00                                  call   0x431210
  0042e883: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042e885: 51                                              push   ecx
  0042e886: 8d 55 dc                                        lea    edx,[ebp-0x24]
  0042e889: 52                                              push   edx
  0042e88a: 8b ce                                           mov    ecx,esi
  0042e88c: e8 2f 25 00 00                                  call   0x430dc0
  0042e891: 39 7d e8                                        cmp    DWORD PTR [ebp-0x18],edi
  0042e894: 75 e0                                           jne    0x42e876
  0042e896: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e899: 8d 88 78 01 00 00                               lea    ecx,[eax+0x178]
  0042e89f: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0042e8a3: e8 68 2c 00 00                                  call   0x431510
  0042e8a8: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e8ab: 8b 3d e0 e0 4d 00                               mov    edi,DWORD PTR ds:0x4de0e0
  0042e8b1: bb 8c e5 4d 00                                  mov    ebx,0x4de58c
  0042e8b6: 89 98 58 01 00 00                               mov    DWORD PTR [eax+0x158],ebx
  0042e8bc: 05 60 01 00 00                                  add    eax,0x160
  0042e8c1: 50                                              push   eax
  0042e8c2: ff d7                                           call   edi
  0042e8c4: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0042e8c7: 81 c1 04 01 00 00                               add    ecx,0x104
  0042e8cd: e8 ae f9 ff ff                                  call   0x42e280
  0042e8d2: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0042e8d5: 8d 8a f0 00 00 00                               lea    ecx,[edx+0xf0]
  0042e8db: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0042e8df: e8 5c 2a 00 00                                  call   0x431340
  0042e8e4: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e8e7: 89 98 d0 00 00 00                               mov    DWORD PTR [eax+0xd0],ebx
  0042e8ed: 05 d8 00 00 00                                  add    eax,0xd8
  0042e8f2: 50                                              push   eax
  0042e8f3: ff d7                                           call   edi
  0042e8f5: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e8f8: 89 98 b0 00 00 00                               mov    DWORD PTR [eax+0xb0],ebx
  0042e8fe: 05 b8 00 00 00                                  add    eax,0xb8
  0042e903: 50                                              push   eax
  0042e904: ff d7                                           call   edi
  0042e906: 8b ce                                           mov    ecx,esi
  0042e908: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0042e90c: e8 df 23 00 00                                  call   0x430cf0
  0042e911: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042e914: 8d 48 6c                                        lea    ecx,[eax+0x6c]
  0042e917: e8 64 f9 ff ff                                  call   0x42e280
  0042e91c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042e91f: 5f                                              pop    edi
  0042e920: 5e                                              pop    esi
  0042e921: 5b                                              pop    ebx
  0042e922: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042e929: 8b e5                                           mov    esp,ebp
  0042e92b: 5d                                              pop    ebp
  0042e92c: c3                                              ret
  00432210: 55                                              push   ebp
  00432211: 8b ec                                           mov    ebp,esp
  00432213: 57                                              push   edi
  00432214: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00432217: 85 ff                                           test   edi,edi
  00432219: 74 0c                                           je     0x432227
  0043221b: 56                                              push   esi
  0043221c: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0043221f: b9 05 00 00 00                                  mov    ecx,0x5
  00432224: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00432226: 5e                                              pop    esi
  00432227: 5f                                              pop    edi
  00432228: 5d                                              pop    ebp
  00432229: c3                                              ret
  00440eb0: 55                                              push   ebp
  00440eb1: 8b ec                                           mov    ebp,esp
  00440eb3: 51                                              push   ecx
  00440eb4: 56                                              push   esi
  00440eb5: 8b f1                                           mov    esi,ecx
  00440eb7: 8b 06                                           mov    eax,DWORD PTR [esi]
  00440eb9: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00440ebc: 51                                              push   ecx
  00440ebd: 56                                              push   esi
  00440ebe: ff 50 24                                        call   DWORD PTR [eax+0x24]
  00440ec1: 85 c0                                           test   eax,eax
  00440ec3: 7d 0c                                           jge    0x440ed1
  00440ec5: 68 80 04 50 00                                  push   0x500480
  00440eca: 56                                              push   esi
  00440ecb: 50                                              push   eax
  00440ecc: e8 99 16 09 00                                  call   0x4d256a
  00440ed1: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00440ed4: 5e                                              pop    esi
  00440ed5: 8b e5                                           mov    esp,ebp
  00440ed7: 5d                                              pop    ebp
  00440ed8: c3                                              ret
  00440ee0: 55                                              push   ebp
  00440ee1: 8b ec                                           mov    ebp,esp
  00440ee3: 56                                              push   esi
  00440ee4: 8b f1                                           mov    esi,ecx
  00440ee6: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00440ee9: 8b 06                                           mov    eax,DWORD PTR [esi]
  00440eeb: 51                                              push   ecx
  00440eec: 56                                              push   esi
  00440eed: ff 90 58 01 00 00                               call   DWORD PTR [eax+0x158]
  00440ef3: 85 c0                                           test   eax,eax
  00440ef5: 7d 0c                                           jge    0x440f03
  00440ef7: 68 80 04 50 00                                  push   0x500480
  00440efc: 56                                              push   esi
  00440efd: 50                                              push   eax
  00440efe: e8 67 16 09 00                                  call   0x4d256a
  00440f03: 5e                                              pop    esi
  00440f04: 5d                                              pop    ebp
  00440f05: c2 04 00                                        ret    0x4
  00441510: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00441512: 85 c0                                           test   eax,eax
  00441514: 74 06                                           je     0x44151c
  00441516: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00441518: 50                                              push   eax
  00441519: ff 51 08                                        call   DWORD PTR [ecx+0x8]
  0044151c: c3                                              ret
  0044f240: 8b 81 f8 01 00 00                               mov    eax,DWORD PTR [ecx+0x1f8]
  0044f246: 6a ff                                           push   0xffffffff
  0044f248: 50                                              push   eax
  0044f249: c7 81 d4 01 00 00 01 00 00 00                   mov    DWORD PTR [ecx+0x1d4],0x1
  0044f253: ff 15 1c e1 4d 00                               call   DWORD PTR ds:0x4de11c
  0044f259: c3                                              ret
  0044fb20: 55                                              push   ebp
  0044fb21: 8b ec                                           mov    ebp,esp
  0044fb23: 51                                              push   ecx
  0044fb24: 53                                              push   ebx
  0044fb25: 56                                              push   esi
  0044fb26: 57                                              push   edi
  0044fb27: 8b d9                                           mov    ebx,ecx
  0044fb29: 51                                              push   ecx
  0044fb2a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0044fb2d: 8b c4                                           mov    eax,esp
  0044fb2f: 51                                              push   ecx
  0044fb30: 89 08                                           mov    DWORD PTR [eax],ecx
  0044fb32: 54                                              push   esp
  0044fb33: 8b cb                                           mov    ecx,ebx
  0044fb35: e8 a6 00 00 00                                  call   0x44fbe0
  0044fb3a: 51                                              push   ecx
  0044fb3b: 8b d4                                           mov    edx,esp
  0044fb3d: 6a 01                                           push   0x1
  0044fb3f: 52                                              push   edx
  0044fb40: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0044fb43: e8 18 01 00 00                                  call   0x44fc60
  0044fb48: 8d 45 fc                                        lea    eax,[ebp-0x4]
  0044fb4b: 50                                              push   eax
  0044fb4c: e8 7f 0a 00 00                                  call   0x4505d0
  0044fb51: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0044fb54: 8d 77 fc                                        lea    esi,[edi-0x4]
  0044fb57: 83 c4 10                                        add    esp,0x10
  0044fb5a: 3b f7                                           cmp    esi,edi
  0044fb5c: 74 0e                                           je     0x44fb6c
  0044fb5e: 8b ce                                           mov    ecx,esi
  0044fb60: e8 db 1e 08 00                                  call   0x4d1a40
  0044fb65: 83 c6 04                                        add    esi,0x4
  0044fb68: 3b f7                                           cmp    esi,edi
  0044fb6a: 75 f2                                           jne    0x44fb5e
  0044fb6c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0044fb6f: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0044fb72: 83 c0 fc                                        add    eax,0xfffffffc
  0044fb75: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0044fb78: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044fb7b: 5f                                              pop    edi
  0044fb7c: 5e                                              pop    esi
  0044fb7d: 89 08                                           mov    DWORD PTR [eax],ecx
  0044fb7f: 5b                                              pop    ebx
  0044fb80: 8b e5                                           mov    esp,ebp
  0044fb82: 5d                                              pop    ebp
  0044fb83: c2 08 00                                        ret    0x8
  0044fb90: 55                                              push   ebp
  0044fb91: 8b ec                                           mov    ebp,esp
  0044fb93: 51                                              push   ecx
  0044fb94: 56                                              push   esi
  0044fb95: 8b f1                                           mov    esi,ecx
  0044fb97: 51                                              push   ecx
  0044fb98: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0044fb9b: 8b c4                                           mov    eax,esp
  0044fb9d: 51                                              push   ecx
  0044fb9e: 89 08                                           mov    DWORD PTR [eax],ecx
  0044fba0: 54                                              push   esp
  0044fba1: 8b ce                                           mov    ecx,esi
  0044fba3: e8 d8 00 00 00                                  call   0x44fc80
  0044fba8: 51                                              push   ecx
  0044fba9: 8b d4                                           mov    edx,esp
  0044fbab: 6a 01                                           push   0x1
  0044fbad: 52                                              push   edx
  0044fbae: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0044fbb1: e8 4a 01 00 00                                  call   0x44fd00
  0044fbb6: 8d 45 fc                                        lea    eax,[ebp-0x4]
  0044fbb9: 50                                              push   eax
  0044fbba: e8 81 0a 00 00                                  call   0x450640
  0044fbbf: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044fbc2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0044fbc5: 83 c4 10                                        add    esp,0x10
  0044fbc8: 83 c0 fc                                        add    eax,0xfffffffc
  0044fbcb: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044fbce: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0044fbd1: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044fbd4: 89 08                                           mov    DWORD PTR [eax],ecx
  0044fbd6: 5e                                              pop    esi
  0044fbd7: 8b e5                                           mov    esp,ebp
  0044fbd9: 5d                                              pop    ebp
  0044fbda: c2 08 00                                        ret    0x8
  0044fbf0: 55                                              push   ebp
  0044fbf1: 8b ec                                           mov    ebp,esp
  0044fbf3: 56                                              push   esi
  0044fbf4: 57                                              push   edi
  0044fbf5: 8b f9                                           mov    edi,ecx
  0044fbf7: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0044fbfa: 85 c0                                           test   eax,eax
  0044fbfc: 74 0d                                           je     0x44fc0b
  0044fbfe: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0044fc01: 2b c8                                           sub    ecx,eax
  0044fc03: f7 c1 fc ff ff ff                               test   ecx,0xfffffffc
  0044fc09: 75 04                                           jne    0x44fc0f
  0044fc0b: 33 f6                                           xor    esi,esi
  0044fc0d: eb 08                                           jmp    0x44fc17
  0044fc0f: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0044fc12: 2b f0                                           sub    esi,eax
  0044fc14: c1 fe 02                                        sar    esi,0x2
  0044fc17: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0044fc1a: 52                                              push   edx
  0044fc1b: 6a 01                                           push   0x1
  0044fc1d: 51                                              push   ecx
  0044fc1e: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0044fc21: 8b cc                                           mov    ecx,esp
  0044fc23: 50                                              push   eax
  0044fc24: e8 27 00 00 00                                  call   0x44fc50
  0044fc29: 8b cf                                           mov    ecx,edi
  0044fc2b: e8 f0 00 00 00                                  call   0x44fd20
  0044fc30: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0044fc33: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044fc36: 8d 14 b1                                        lea    edx,[ecx+esi*4]
  0044fc39: 5f                                              pop    edi
  0044fc3a: 89 10                                           mov    DWORD PTR [eax],edx
  0044fc3c: 5e                                              pop    esi
  0044fc3d: 5d                                              pop    ebp
  0044fc3e: c2 0c 00                                        ret    0xc
  0044fc90: 55                                              push   ebp
  0044fc91: 8b ec                                           mov    ebp,esp
  0044fc93: 56                                              push   esi
  0044fc94: 57                                              push   edi
  0044fc95: 8b f9                                           mov    edi,ecx
  0044fc97: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0044fc9a: 85 c0                                           test   eax,eax
  0044fc9c: 74 0d                                           je     0x44fcab
  0044fc9e: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0044fca1: 2b c8                                           sub    ecx,eax
  0044fca3: f7 c1 fc ff ff ff                               test   ecx,0xfffffffc
  0044fca9: 75 04                                           jne    0x44fcaf
  0044fcab: 33 f6                                           xor    esi,esi
  0044fcad: eb 08                                           jmp    0x44fcb7
  0044fcaf: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0044fcb2: 2b f0                                           sub    esi,eax
  0044fcb4: c1 fe 02                                        sar    esi,0x2
  0044fcb7: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0044fcba: 52                                              push   edx
  0044fcbb: 6a 01                                           push   0x1
  0044fcbd: 51                                              push   ecx
  0044fcbe: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0044fcc1: 8b cc                                           mov    ecx,esp
  0044fcc3: 50                                              push   eax
  0044fcc4: e8 27 00 00 00                                  call   0x44fcf0
  0044fcc9: 8b cf                                           mov    ecx,edi
  0044fccb: e8 10 04 00 00                                  call   0x4500e0
  0044fcd0: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0044fcd3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044fcd6: 8d 14 b1                                        lea    edx,[ecx+esi*4]
  0044fcd9: 5f                                              pop    edi
  0044fcda: 89 10                                           mov    DWORD PTR [eax],edx
  0044fcdc: 5e                                              pop    esi
  0044fcdd: 5d                                              pop    ebp
  0044fcde: c2 0c 00                                        ret    0xc
  0045a040: 55                                              push   ebp
  0045a041: 8b ec                                           mov    ebp,esp
  0045a043: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0045a046: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0045a049: 3b ca                                           cmp    ecx,edx
  0045a04b: 74 15                                           je     0x45a062
  0045a04d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045a050: 56                                              push   esi
  0045a051: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0045a053: 89 30                                           mov    DWORD PTR [eax],esi
  0045a055: 83 c1 04                                        add    ecx,0x4
  0045a058: 83 c0 04                                        add    eax,0x4
  0045a05b: 3b ca                                           cmp    ecx,edx
  0045a05d: 75 f2                                           jne    0x45a051
  0045a05f: 5e                                              pop    esi
  0045a060: 5d                                              pop    ebp
  0045a061: c3                                              ret
  0045a062: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045a065: 5d                                              pop    ebp
  0045a066: c3                                              ret
  00475060: 55                                              push   ebp
  00475061: 8b ec                                           mov    ebp,esp
  00475063: 6a ff                                           push   0xffffffff
  00475065: 68 0b 8f 4d 00                                  push   0x4d8f0b
  0047506a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00475070: 50                                              push   eax
  00475071: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00475078: 51                                              push   ecx
  00475079: 56                                              push   esi
  0047507a: 68 20 01 00 00                                  push   0x120
  0047507f: e8 6c cf fc ff                                  call   0x441ff0
  00475084: 83 c4 04                                        add    esp,0x4
  00475087: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0047508a: 33 f6                                           xor    esi,esi
  0047508c: 3b c6                                           cmp    eax,esi
  0047508e: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  00475091: 74 09                                           je     0x47509c
  00475093: 8b c8                                           mov    ecx,eax
  00475095: e8 e6 6c fd ff                                  call   0x44bd80
  0047509a: 8b f0                                           mov    esi,eax
  0047509c: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0047509f: 8b 06                                           mov    eax,DWORD PTR [esi]
  004750a1: 51                                              push   ecx
  004750a2: 6a 03                                           push   0x3
  004750a4: 8b ce                                           mov    ecx,esi
  004750a6: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004750ad: ff 50 18                                        call   DWORD PTR [eax+0x18]
  004750b0: 85 c0                                           test   eax,eax
  004750b2: 75 1c                                           jne    0x4750d0
  004750b4: 8b 16                                           mov    edx,DWORD PTR [esi]
  004750b6: 8b ce                                           mov    ecx,esi
  004750b8: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  004750be: 66 33 c0                                        xor    ax,ax
  004750c1: 5e                                              pop    esi
  004750c2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004750c5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004750cc: 8b e5                                           mov    esp,ebp
  004750ce: 5d                                              pop    ebp
  004750cf: c3                                              ret
  004750d0: 8b 06                                           mov    eax,DWORD PTR [esi]
  004750d2: 57                                              push   edi
  004750d3: 8b ce                                           mov    ecx,esi
  004750d5: ff 50 2c                                        call   DWORD PTR [eax+0x2c]
  004750d8: 8b 16                                           mov    edx,DWORD PTR [esi]
  004750da: 8b ce                                           mov    ecx,esi
  004750dc: 8b f8                                           mov    edi,eax
  004750de: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  004750e4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004750e7: 66 8b c7                                        mov    ax,di
  004750ea: 5f                                              pop    edi
  004750eb: 5e                                              pop    esi
  004750ec: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004750f3: 8b e5                                           mov    esp,ebp
  004750f5: 5d                                              pop    ebp
  004750f6: c3                                              ret
  00476490: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00476493: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  00476496: 68 98 01 00 00                                  push   0x198
  0047649b: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  0047649e: e8 4d bb fc ff                                  call   0x441ff0
  004764a3: 83 c4 04                                        add    esp,0x4
  004764a6: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004764a9: 85 c0                                           test   eax,eax
  004764ab: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004764af: 74 0b                                           je     0x4764bc
  004764b1: 8b c8                                           mov    ecx,eax
  004764b3: e8 88 42 fe ff                                  call   0x45a740
  004764b8: 8b d8                                           mov    ebx,eax
  004764ba: eb 02                                           jmp    0x4764be
  004764bc: 33 db                                           xor    ebx,ebx
  004764be: 68 54 01 00 00                                  push   0x154
  004764c3: e8 28 bb fc ff                                  call   0x441ff0
  004764c8: 83 c4 04                                        add    esp,0x4
  004764cb: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004764ce: 85 c0                                           test   eax,eax
  004764d0: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  004764d4: 74 0e                                           je     0x4764e4
  004764d6: 8b c8                                           mov    ecx,eax
  004764d8: e8 23 be fb ff                                  call   0x432300
  004764dd: 8b f8                                           mov    edi,eax
  004764df: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004764e2: eb 0a                                           jmp    0x4764ee
  004764e4: c7 45 ec 00 00 00 00                            mov    DWORD PTR [ebp-0x14],0x0
  004764eb: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004764ee: 6a 01                                           push   0x1
  004764f0: 6a 02                                           push   0x2
  004764f2: 8d 4d 84                                        lea    ecx,[ebp-0x7c]
  004764f5: 51                                              push   ecx
  004764f6: 8b ce                                           mov    ecx,esi
  004764f8: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004764fc: e8 7f 08 00 00                                  call   0x476d80
  00476501: 8b c8                                           mov    ecx,eax
  00476503: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  00476507: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  0047650d: 51                                              push   ecx
  0047650e: 8b cc                                           mov    ecx,esp
  00476510: 89 65 b4                                        mov    DWORD PTR [ebp-0x4c],esp
  00476513: 50                                              push   eax
  00476514: e8 4b b5 05 00                                  call   0x4d1a64
  00476519: e8 b2 3d 01 00                                  call   0x48a2d0
  0047651e: 83 c4 0c                                        add    esp,0xc
  00476521: 6a 01                                           push   0x1
  00476523: 8d 4d 84                                        lea    ecx,[ebp-0x7c]
  00476526: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0047652a: 8b f0                                           mov    esi,eax
  0047652c: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476532: 8b 17                                           mov    edx,DWORD PTR [edi]
  00476534: 81 e6 ff ff 00 00                               and    esi,0xffff
  0047653a: 56                                              push   esi
  0047653b: 6a 02                                           push   0x2
  0047653d: 8b cf                                           mov    ecx,edi
  0047653f: ff 52 18                                        call   DWORD PTR [edx+0x18]
  00476542: 85 c0                                           test   eax,eax
  00476544: 0f 84 5a 04 00 00                               je     0x4769a4
  0047654a: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0047654d: 89 83 90 01 00 00                               mov    DWORD PTR [ebx+0x190],eax
  00476553: 8b 17                                           mov    edx,DWORD PTR [edi]
  00476555: 8d 45 e0                                        lea    eax,[ebp-0x20]
  00476558: 50                                              push   eax
  00476559: 6a 00                                           push   0x0
  0047655b: 6a 00                                           push   0x0
  0047655d: 6a 00                                           push   0x0
  0047655f: 57                                              push   edi
  00476560: 6a 14                                           push   0x14
  00476562: 8b cf                                           mov    ecx,edi
  00476564: ff 52 24                                        call   DWORD PTR [edx+0x24]
  00476567: 8b 75 e0                                        mov    esi,DWORD PTR [ebp-0x20]
  0047656a: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  0047656d: e8 4e 46 fd ff                                  call   0x44abc0
  00476572: 66 8b 0e                                        mov    cx,WORD PTR [esi]
  00476575: 8b f8                                           mov    edi,eax
  00476577: 66 89 0f                                        mov    WORD PTR [edi],cx
  0047657a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0047657d: 89 57 04                                        mov    DWORD PTR [edi+0x4],edx
  00476580: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00476583: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  00476586: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00476589: 89 4f 0c                                        mov    DWORD PTR [edi+0xc],ecx
  0047658c: 8b 56 10                                        mov    edx,DWORD PTR [esi+0x10]
  0047658f: 89 57 10                                        mov    DWORD PTR [edi+0x10],edx
  00476592: 66 8b 46 14                                     mov    ax,WORD PTR [esi+0x14]
  00476596: 66 89 47 14                                     mov    WORD PTR [edi+0x14],ax
  0047659a: 8b 4e 18                                        mov    ecx,DWORD PTR [esi+0x18]
  0047659d: 89 4f 18                                        mov    DWORD PTR [edi+0x18],ecx
  004765a0: 8b 56 1c                                        mov    edx,DWORD PTR [esi+0x1c]
  004765a3: 89 57 1c                                        mov    DWORD PTR [edi+0x1c],edx
  004765a6: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004765a9: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  004765ac: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  004765af: 89 4f 24                                        mov    DWORD PTR [edi+0x24],ecx
  004765b2: 8b 56 28                                        mov    edx,DWORD PTR [esi+0x28]
  004765b5: 89 57 28                                        mov    DWORD PTR [edi+0x28],edx
  004765b8: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  004765bb: 89 47 2c                                        mov    DWORD PTR [edi+0x2c],eax
  004765be: 8a 4e 30                                        mov    cl,BYTE PTR [esi+0x30]
  004765c1: 88 4f 30                                        mov    BYTE PTR [edi+0x30],cl
  004765c4: 8d 56 34                                        lea    edx,[esi+0x34]
  004765c7: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004765c9: 8d 47 34                                        lea    eax,[edi+0x34]
  004765cc: 89 08                                           mov    DWORD PTR [eax],ecx
  004765ce: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004765d1: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004765d4: 8b 52 08                                        mov    edx,DWORD PTR [edx+0x8]
  004765d7: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004765da: 8a 46 40                                        mov    al,BYTE PTR [esi+0x40]
  004765dd: 88 47 40                                        mov    BYTE PTR [edi+0x40],al
  004765e0: 8d 4e 44                                        lea    ecx,[esi+0x44]
  004765e3: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004765e5: 8d 57 44                                        lea    edx,[edi+0x44]
  004765e8: 89 02                                           mov    DWORD PTR [edx],eax
  004765ea: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004765ed: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004765f0: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004765f3: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004765f6: 8a 56 50                                        mov    dl,BYTE PTR [esi+0x50]
  004765f9: 88 57 50                                        mov    BYTE PTR [edi+0x50],dl
  004765fc: 66 8b 46 52                                     mov    ax,WORD PTR [esi+0x52]
  00476600: 66 89 47 52                                     mov    WORD PTR [edi+0x52],ax
  00476604: 8d 4e 54                                        lea    ecx,[esi+0x54]
  00476607: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00476609: 8d 57 54                                        lea    edx,[edi+0x54]
  0047660c: 89 02                                           mov    DWORD PTR [edx],eax
  0047660e: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00476611: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00476614: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00476617: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0047661a: 66 8b 56 60                                     mov    dx,WORD PTR [esi+0x60]
  0047661e: 66 89 57 60                                     mov    WORD PTR [edi+0x60],dx
  00476622: 66 8b 46 62                                     mov    ax,WORD PTR [esi+0x62]
  00476626: 66 89 47 62                                     mov    WORD PTR [edi+0x62],ax
  0047662a: 66 8b 4e 64                                     mov    cx,WORD PTR [esi+0x64]
  0047662e: 66 89 4f 64                                     mov    WORD PTR [edi+0x64],cx
  00476632: 66 8b 56 66                                     mov    dx,WORD PTR [esi+0x66]
  00476636: 66 89 57 66                                     mov    WORD PTR [edi+0x66],dx
  0047663a: 8b 46 68                                        mov    eax,DWORD PTR [esi+0x68]
  0047663d: 89 47 68                                        mov    DWORD PTR [edi+0x68],eax
  00476640: 8b 4e 6c                                        mov    ecx,DWORD PTR [esi+0x6c]
  00476643: 89 4f 6c                                        mov    DWORD PTR [edi+0x6c],ecx
  00476646: 8b 56 70                                        mov    edx,DWORD PTR [esi+0x70]
  00476649: 89 57 70                                        mov    DWORD PTR [edi+0x70],edx
  0047664c: 8b 46 74                                        mov    eax,DWORD PTR [esi+0x74]
  0047664f: 89 47 74                                        mov    DWORD PTR [edi+0x74],eax
  00476652: 8b 4e 78                                        mov    ecx,DWORD PTR [esi+0x78]
  00476655: 89 4f 78                                        mov    DWORD PTR [edi+0x78],ecx
  00476658: 8b 56 7c                                        mov    edx,DWORD PTR [esi+0x7c]
  0047665b: 89 57 7c                                        mov    DWORD PTR [edi+0x7c],edx
  0047665e: 8b 86 80 00 00 00                               mov    eax,DWORD PTR [esi+0x80]
  00476664: 89 87 80 00 00 00                               mov    DWORD PTR [edi+0x80],eax
  0047666a: 8b 8e 84 00 00 00                               mov    ecx,DWORD PTR [esi+0x84]
  00476670: 89 8f 84 00 00 00                               mov    DWORD PTR [edi+0x84],ecx
  00476676: 8b 96 88 00 00 00                               mov    edx,DWORD PTR [esi+0x88]
  0047667c: 89 97 88 00 00 00                               mov    DWORD PTR [edi+0x88],edx
  00476682: 8b 86 8c 00 00 00                               mov    eax,DWORD PTR [esi+0x8c]
  00476688: 8d 8e 90 00 00 00                               lea    ecx,[esi+0x90]
  0047668e: 51                                              push   ecx
  0047668f: 8d 8f 90 00 00 00                               lea    ecx,[edi+0x90]
  00476695: 89 87 8c 00 00 00                               mov    DWORD PTR [edi+0x8c],eax
  0047669b: e8 e0 45 fd ff                                  call   0x44ac80
  004766a0: 8d 96 a0 00 00 00                               lea    edx,[esi+0xa0]
  004766a6: 52                                              push   edx
  004766a7: 8d 8f a0 00 00 00                               lea    ecx,[edi+0xa0]
  004766ad: e8 ce 45 fd ff                                  call   0x44ac80
  004766b2: 8d 86 b0 00 00 00                               lea    eax,[esi+0xb0]
  004766b8: 50                                              push   eax
  004766b9: 8d 8f b0 00 00 00                               lea    ecx,[edi+0xb0]
  004766bf: e8 9c c2 fa ff                                  call   0x422960
  004766c4: 8b 8e c0 00 00 00                               mov    ecx,DWORD PTR [esi+0xc0]
  004766ca: 89 8f c0 00 00 00                               mov    DWORD PTR [edi+0xc0],ecx
  004766d0: 8b 96 c4 00 00 00                               mov    edx,DWORD PTR [esi+0xc4]
  004766d6: 89 97 c4 00 00 00                               mov    DWORD PTR [edi+0xc4],edx
  004766dc: 8b 86 c8 00 00 00                               mov    eax,DWORD PTR [esi+0xc8]
  004766e2: 89 87 c8 00 00 00                               mov    DWORD PTR [edi+0xc8],eax
  004766e8: 8b 8e cc 00 00 00                               mov    ecx,DWORD PTR [esi+0xcc]
  004766ee: 89 8f cc 00 00 00                               mov    DWORD PTR [edi+0xcc],ecx
  004766f4: 8b 96 d0 00 00 00                               mov    edx,DWORD PTR [esi+0xd0]
  004766fa: 89 97 d0 00 00 00                               mov    DWORD PTR [edi+0xd0],edx
  00476700: 8b 86 d4 00 00 00                               mov    eax,DWORD PTR [esi+0xd4]
  00476706: 89 87 d4 00 00 00                               mov    DWORD PTR [edi+0xd4],eax
  0047670c: 8b 8e d8 00 00 00                               mov    ecx,DWORD PTR [esi+0xd8]
  00476712: 89 8f d8 00 00 00                               mov    DWORD PTR [edi+0xd8],ecx
  00476718: 8b 96 dc 00 00 00                               mov    edx,DWORD PTR [esi+0xdc]
  0047671e: 89 97 dc 00 00 00                               mov    DWORD PTR [edi+0xdc],edx
  00476724: 8b 86 e0 00 00 00                               mov    eax,DWORD PTR [esi+0xe0]
  0047672a: 89 87 e0 00 00 00                               mov    DWORD PTR [edi+0xe0],eax
  00476730: 8b 8e e4 00 00 00                               mov    ecx,DWORD PTR [esi+0xe4]
  00476736: 89 8f e4 00 00 00                               mov    DWORD PTR [edi+0xe4],ecx
  0047673c: 8b 96 e8 00 00 00                               mov    edx,DWORD PTR [esi+0xe8]
  00476742: 89 97 e8 00 00 00                               mov    DWORD PTR [edi+0xe8],edx
  00476748: 8b 86 ec 00 00 00                               mov    eax,DWORD PTR [esi+0xec]
  0047674e: 89 87 ec 00 00 00                               mov    DWORD PTR [edi+0xec],eax
  00476754: 8b 8e f0 00 00 00                               mov    ecx,DWORD PTR [esi+0xf0]
  0047675a: 89 8f f0 00 00 00                               mov    DWORD PTR [edi+0xf0],ecx
  00476760: 8b 96 f4 00 00 00                               mov    edx,DWORD PTR [esi+0xf4]
  00476766: 89 97 f4 00 00 00                               mov    DWORD PTR [edi+0xf4],edx
  0047676c: 8b 86 f8 00 00 00                               mov    eax,DWORD PTR [esi+0xf8]
  00476772: 89 87 f8 00 00 00                               mov    DWORD PTR [edi+0xf8],eax
  00476778: 8b 8e fc 00 00 00                               mov    ecx,DWORD PTR [esi+0xfc]
  0047677e: 89 8f fc 00 00 00                               mov    DWORD PTR [edi+0xfc],ecx
  00476784: 8b 96 00 01 00 00                               mov    edx,DWORD PTR [esi+0x100]
  0047678a: 89 97 00 01 00 00                               mov    DWORD PTR [edi+0x100],edx
  00476790: 8b 86 04 01 00 00                               mov    eax,DWORD PTR [esi+0x104]
  00476796: 89 87 04 01 00 00                               mov    DWORD PTR [edi+0x104],eax
  0047679c: 8b 8e 08 01 00 00                               mov    ecx,DWORD PTR [esi+0x108]
  004767a2: 89 8f 08 01 00 00                               mov    DWORD PTR [edi+0x108],ecx
  004767a8: 66 8b 96 0c 01 00 00                            mov    dx,WORD PTR [esi+0x10c]
  004767af: 66 89 97 0c 01 00 00                            mov    WORD PTR [edi+0x10c],dx
  004767b6: 66 8b 86 0e 01 00 00                            mov    ax,WORD PTR [esi+0x10e]
  004767bd: 66 89 87 0e 01 00 00                            mov    WORD PTR [edi+0x10e],ax
  004767c4: 66 8b 8e 10 01 00 00                            mov    cx,WORD PTR [esi+0x110]
  004767cb: 66 89 8f 10 01 00 00                            mov    WORD PTR [edi+0x110],cx
  004767d2: 66 8b 96 12 01 00 00                            mov    dx,WORD PTR [esi+0x112]
  004767d9: 66 89 97 12 01 00 00                            mov    WORD PTR [edi+0x112],dx
  004767e0: 66 8b 86 14 01 00 00                            mov    ax,WORD PTR [esi+0x114]
  004767e7: 66 89 87 14 01 00 00                            mov    WORD PTR [edi+0x114],ax
  004767ee: 66 8b 8e 16 01 00 00                            mov    cx,WORD PTR [esi+0x116]
  004767f5: 66 89 8f 16 01 00 00                            mov    WORD PTR [edi+0x116],cx
  004767fc: 66 8b 96 18 01 00 00                            mov    dx,WORD PTR [esi+0x118]
  00476803: 66 89 97 18 01 00 00                            mov    WORD PTR [edi+0x118],dx
  0047680a: 66 8b 86 1a 01 00 00                            mov    ax,WORD PTR [esi+0x11a]
  00476811: 66 89 87 1a 01 00 00                            mov    WORD PTR [edi+0x11a],ax
  00476818: 8b 8e 1c 01 00 00                               mov    ecx,DWORD PTR [esi+0x11c]
  0047681e: 89 8f 1c 01 00 00                               mov    DWORD PTR [edi+0x11c],ecx
  00476824: 8b 96 20 01 00 00                               mov    edx,DWORD PTR [esi+0x120]
  0047682a: 89 97 20 01 00 00                               mov    DWORD PTR [edi+0x120],edx
  00476830: 8b 86 24 01 00 00                               mov    eax,DWORD PTR [esi+0x124]
  00476836: 89 87 24 01 00 00                               mov    DWORD PTR [edi+0x124],eax
  0047683c: 8b 8e 28 01 00 00                               mov    ecx,DWORD PTR [esi+0x128]
  00476842: 89 8f 28 01 00 00                               mov    DWORD PTR [edi+0x128],ecx
  00476848: 8b 96 2c 01 00 00                               mov    edx,DWORD PTR [esi+0x12c]
  0047684e: 89 97 2c 01 00 00                               mov    DWORD PTR [edi+0x12c],edx
  00476854: 8a 86 30 01 00 00                               mov    al,BYTE PTR [esi+0x130]
  0047685a: 8b 75 e4                                        mov    esi,DWORD PTR [ebp-0x1c]
  0047685d: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  00476860: 51                                              push   ecx
  00476861: 8b ce                                           mov    ecx,esi
  00476863: 88 87 30 01 00 00                               mov    BYTE PTR [edi+0x130],al
  00476869: e8 72 02 00 00                                  call   0x476ae0
  0047686e: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00476871: 40                                              inc    eax
  00476872: 50                                              push   eax
  00476873: e8 88 7c 05 00                                  call   0x4ce500
  00476878: 83 c4 04                                        add    esp,0x4
  0047687b: 6a 01                                           push   0x1
  0047687d: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  00476880: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  00476883: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476889: 8d 95 44 ff ff ff                               lea    edx,[ebp-0xbc]
  0047688f: 52                                              push   edx
  00476890: 8b ce                                           mov    ecx,esi
  00476892: e8 49 02 00 00                                  call   0x476ae0
  00476897: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0047689a: 85 c0                                           test   eax,eax
  0047689c: 75 05                                           jne    0x4768a3
  0047689e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004768a3: 83 c9 ff                                        or     ecx,0xffffffff
  004768a6: 8b f8                                           mov    edi,eax
  004768a8: 33 c0                                           xor    eax,eax
  004768aa: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004768ac: f7 d1                                           not    ecx
  004768ae: 2b f9                                           sub    edi,ecx
  004768b0: 8b c1                                           mov    eax,ecx
  004768b2: c1 e9 02                                        shr    ecx,0x2
  004768b5: 8b f7                                           mov    esi,edi
  004768b7: 8b 7b 0c                                        mov    edi,DWORD PTR [ebx+0xc]
  004768ba: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004768bc: 8b c8                                           mov    ecx,eax
  004768be: 83 e1 03                                        and    ecx,0x3
  004768c1: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004768c3: 6a 01                                           push   0x1
  004768c5: 8d 8d 44 ff ff ff                               lea    ecx,[ebp-0xbc]
  004768cb: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004768d1: 8b 7d e4                                        mov    edi,DWORD PTR [ebp-0x1c]
  004768d4: 8d 8d 64 ff ff ff                               lea    ecx,[ebp-0x9c]
  004768da: 33 f6                                           xor    esi,esi
  004768dc: 51                                              push   ecx
  004768dd: 8b cf                                           mov    ecx,edi
  004768df: 89 73 5c                                        mov    DWORD PTR [ebx+0x5c],esi
  004768e2: 89 73 60                                        mov    DWORD PTR [ebx+0x60],esi
  004768e5: 89 73 64                                        mov    DWORD PTR [ebx+0x64],esi
  004768e8: c6 83 38 01 00 00 01                            mov    BYTE PTR [ebx+0x138],0x1
  004768ef: e8 3c 03 00 00                                  call   0x476c30
  004768f4: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004768f7: 3b c6                                           cmp    eax,esi
  004768f9: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  004768fd: 75 05                                           jne    0x476904
  004768ff: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00476904: 56                                              push   esi
  00476905: 6a 01                                           push   0x1
  00476907: 6a 02                                           push   0x2
  00476909: 50                                              push   eax
  0047690a: 53                                              push   ebx
  0047690b: 68 30 75 00 00                                  push   0x7530
  00476910: e8 7b 33 01 00                                  call   0x489c90
  00476915: 83 c4 18                                        add    esp,0x18
  00476918: 66 8b d8                                        mov    bx,ax
  0047691b: 66 f7 db                                        neg    bx
  0047691e: 1a db                                           sbb    bl,bl
  00476920: 6a 01                                           push   0x1
  00476922: 8d 8d 64 ff ff ff                               lea    ecx,[ebp-0x9c]
  00476928: fe c3                                           inc    bl
  0047692a: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0047692e: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476934: 84 db                                           test   bl,bl
  00476936: 74 3a                                           je     0x476972
  00476938: 8d 55 94                                        lea    edx,[ebp-0x6c]
  0047693b: 52                                              push   edx
  0047693c: 8b cf                                           mov    ecx,edi
  0047693e: e8 ed 02 00 00                                  call   0x476c30
  00476943: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00476946: 85 c0                                           test   eax,eax
  00476948: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  0047694c: 75 05                                           jne    0x476953
  0047694e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00476953: 50                                              push   eax
  00476954: 68 5c a6 50 00                                  push   0x50a65c
  00476959: 6a 04                                           push   0x4
  0047695b: e8 e0 b3 ff ff                                  call   0x471d40
  00476960: 83 c4 0c                                        add    esp,0xc
  00476963: 6a 01                                           push   0x1
  00476965: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  00476968: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0047696c: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476972: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  00476975: 8b 17                                           mov    edx,DWORD PTR [edi]
  00476977: 8b cf                                           mov    ecx,edi
  00476979: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0047697f: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00476982: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00476984: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  00476987: 3b c8                                           cmp    ecx,eax
  00476989: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  0047698c: 0f 85 fe fa ff ff                               jne    0x476490
  00476992: 33 f6                                           xor    esi,esi
  00476994: 3b c6                                           cmp    eax,esi
  00476996: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0047699a: 0f 85 80 00 00 00                               jne    0x476a20
  004769a0: 33 c9                                           xor    ecx,ecx
  004769a2: eb 7e                                           jmp    0x476a22
  004769a4: 8b 75 e4                                        mov    esi,DWORD PTR [ebp-0x1c]
  004769a7: 8d 85 54 ff ff ff                               lea    eax,[ebp-0xac]
  004769ad: 50                                              push   eax
  004769ae: 8b ce                                           mov    ecx,esi
  004769b0: e8 cb 03 00 00                                  call   0x476d80
  004769b5: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004769b8: 85 c0                                           test   eax,eax
  004769ba: 8b 1d d8 e4 4d 00                               mov    ebx,DWORD PTR ds:0x4de4d8
  004769c0: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  004769c4: 74 02                                           je     0x4769c8
  004769c6: 8b d8                                           mov    ebx,eax
  004769c8: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  004769ce: 51                                              push   ecx
  004769cf: 8b ce                                           mov    ecx,esi
  004769d1: e8 5a 02 00 00                                  call   0x476c30
  004769d6: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004769d9: 85 c0                                           test   eax,eax
  004769db: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  004769df: 75 05                                           jne    0x4769e6
  004769e1: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004769e6: 53                                              push   ebx
  004769e7: 50                                              push   eax
  004769e8: 68 30 a6 50 00                                  push   0x50a630
  004769ed: 6a 04                                           push   0x4
  004769ef: e8 4c b3 ff ff                                  call   0x471d40
  004769f4: 83 c4 10                                        add    esp,0x10
  004769f7: 6a 01                                           push   0x1
  004769f9: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  004769ff: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  00476a03: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476a09: 6a 01                                           push   0x1
  00476a0b: 8d 8d 54 ff ff ff                               lea    ecx,[ebp-0xac]
  00476a11: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00476a15: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476a1b: e9 55 ff ff ff                                  jmp    0x476975
  00476a20: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00476a22: 3b c8                                           cmp    ecx,eax
  00476a24: 8b f8                                           mov    edi,eax
  00476a26: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  00476a29: 74 24                                           je     0x476a4f
  00476a2b: 56                                              push   esi
  00476a2c: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  00476a2f: 51                                              push   ecx
  00476a30: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00476a33: e8 f8 04 00 00                                  call   0x476f30
  00476a38: 8b 10                                           mov    edx,DWORD PTR [eax]
  00476a3a: 52                                              push   edx
  00476a3b: 8d 45 e0                                        lea    eax,[ebp-0x20]
  00476a3e: 50                                              push   eax
  00476a3f: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00476a42: e8 49 0d 00 00                                  call   0x477790
  00476a47: 39 7d e8                                        cmp    DWORD PTR [ebp-0x18],edi
  00476a4a: 75 df                                           jne    0x476a2b
  00476a4c: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  00476a4f: 50                                              push   eax
  00476a50: e8 0b b6 fc ff                                  call   0x442060
  00476a55: 83 c4 04                                        add    esp,0x4
  00476a58: 89 75 d8                                        mov    DWORD PTR [ebp-0x28],esi
  00476a5b: 89 75 dc                                        mov    DWORD PTR [ebp-0x24],esi
  00476a5e: eb 1c                                           jmp    0x476a7c
  00476a7c: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  00476a7f: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00476a83: e8 b8 29 02 00                                  call   0x499440
  00476a88: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  00476a8b: 3b c6                                           cmp    eax,esi
  00476a8d: 74 1c                                           je     0x476aab
  00476a8f: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00476a92: 8a 01                                           mov    al,BYTE PTR [ecx]
  00476a94: 84 c0                                           test   al,al
  00476a96: 74 0a                                           je     0x476aa2
  00476a98: 3c ff                                           cmp    al,0xff
  00476a9a: 74 06                                           je     0x476aa2
  00476a9c: fe c8                                           dec    al
  00476a9e: 88 01                                           mov    BYTE PTR [ecx],al
  00476aa0: eb 09                                           jmp    0x476aab
  00476aa2: 51                                              push   ecx
  00476aa3: e8 b8 b5 fc ff                                  call   0x442060
  00476aa8: 83 c4 04                                        add    esp,0x4
  00476aab: 8d 8d 34 fe ff ff                               lea    ecx,[ebp-0x1cc]
  00476ab1: 89 75 c8                                        mov    DWORD PTR [ebp-0x38],esi
  00476ab4: 89 75 cc                                        mov    DWORD PTR [ebp-0x34],esi
  00476ab7: 89 75 d0                                        mov    DWORD PTR [ebp-0x30],esi
  00476aba: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00476ac1: e8 da 26 fe ff                                  call   0x4591a0
  00476ac6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00476ac9: 5f                                              pop    edi
  00476aca: 5e                                              pop    esi
  00476acb: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00476ad2: 5b                                              pop    ebx
  00476ad3: 8b e5                                           mov    esp,ebp
  00476ad5: 5d                                              pop    ebp
  00476ad6: c3                                              ret
  00476f30: 55                                              push   ebp
  00476f31: 8b ec                                           mov    ebp,esp
  00476f33: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00476f35: 8b 02                                           mov    eax,DWORD PTR [edx]
  00476f37: 89 01                                           mov    DWORD PTR [ecx],eax
  00476f39: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476f3c: 89 10                                           mov    DWORD PTR [eax],edx
  00476f3e: 5d                                              pop    ebp
  00476f3f: c2 08 00                                        ret    0x8
  00476f60: 55                                              push   ebp
  00476f61: 8b ec                                           mov    ebp,esp
  00476f63: 56                                              push   esi
  00476f64: 57                                              push   edi
  00476f65: 8b f9                                           mov    edi,ecx
  00476f67: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00476f6a: 85 c0                                           test   eax,eax
  00476f6c: 74 0d                                           je     0x476f7b
  00476f6e: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00476f71: 2b c8                                           sub    ecx,eax
  00476f73: f7 c1 fc ff ff ff                               test   ecx,0xfffffffc
  00476f79: 75 04                                           jne    0x476f7f
  00476f7b: 33 f6                                           xor    esi,esi
  00476f7d: eb 08                                           jmp    0x476f87
  00476f7f: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00476f82: 2b f0                                           sub    esi,eax
  00476f84: c1 fe 02                                        sar    esi,0x2
  00476f87: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00476f8a: 52                                              push   edx
  00476f8b: 6a 01                                           push   0x1
  00476f8d: 51                                              push   ecx
  00476f8e: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00476f91: 8b cc                                           mov    ecx,esp
  00476f93: 50                                              push   eax
  00476f94: e8 27 04 00 00                                  call   0x4773c0
  00476f99: 8b cf                                           mov    ecx,edi
  00476f9b: e8 c0 00 00 00                                  call   0x477060
  00476fa0: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00476fa3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476fa6: 8d 14 b1                                        lea    edx,[ecx+esi*4]
  00476fa9: 5f                                              pop    edi
  00476faa: 89 10                                           mov    DWORD PTR [eax],edx
  00476fac: 5e                                              pop    esi
  00476fad: 5d                                              pop    ebp
  00476fae: c2 0c 00                                        ret    0xc
  00476fd0: 55                                              push   ebp
  00476fd1: 8b ec                                           mov    ebp,esp
  00476fd3: 56                                              push   esi
  00476fd4: 57                                              push   edi
  00476fd5: 8b f9                                           mov    edi,ecx
  00476fd7: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00476fda: 85 c0                                           test   eax,eax
  00476fdc: 74 0d                                           je     0x476feb
  00476fde: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00476fe1: 2b c8                                           sub    ecx,eax
  00476fe3: f7 c1 f0 ff ff ff                               test   ecx,0xfffffff0
  00476fe9: 75 04                                           jne    0x476fef
  00476feb: 33 f6                                           xor    esi,esi
  00476fed: eb 08                                           jmp    0x476ff7
  00476fef: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00476ff2: 2b f0                                           sub    esi,eax
  00476ff4: c1 fe 04                                        sar    esi,0x4
  00476ff7: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00476ffa: 52                                              push   edx
  00476ffb: 6a 01                                           push   0x1
  00476ffd: 51                                              push   ecx
  00476ffe: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00477001: 8b cc                                           mov    ecx,esp
  00477003: 50                                              push   eax
  00477004: e8 57 07 00 00                                  call   0x477760
  00477009: 8b cf                                           mov    ecx,edi
  0047700b: e8 e0 03 00 00                                  call   0x4773f0
  00477010: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00477013: c1 e6 04                                        shl    esi,0x4
  00477016: 03 f0                                           add    esi,eax
  00477018: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0047701b: 5f                                              pop    edi
  0047701c: 89 30                                           mov    DWORD PTR [eax],esi
  0047701e: 5e                                              pop    esi
  0047701f: 5d                                              pop    ebp
  00477020: c2 0c 00                                        ret    0xc
  00477790: 55                                              push   ebp
  00477791: 8b ec                                           mov    ebp,esp
  00477793: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00477796: 8b 10                                           mov    edx,DWORD PTR [eax]
  00477798: 56                                              push   esi
  00477799: 8b f1                                           mov    esi,ecx
  0047779b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0047779e: 57                                              push   edi
  0047779f: 8b 38                                           mov    edi,DWORD PTR [eax]
  004777a1: 89 11                                           mov    DWORD PTR [ecx],edx
  004777a3: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004777a5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004777a8: 50                                              push   eax
  004777a9: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004777ac: e8 af a8 fc ff                                  call   0x442060
  004777b1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004777b4: 83 c4 04                                        add    esp,0x4
  004777b7: 48                                              dec    eax
  004777b8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004777bb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004777be: 89 38                                           mov    DWORD PTR [eax],edi
  004777c0: 5f                                              pop    edi
  004777c1: 5e                                              pop    esi
  004777c2: 5d                                              pop    ebp
  004777c3: c2 08 00                                        ret    0x8
  004908f0: 55                                              push   ebp
  004908f1: 8b ec                                           mov    ebp,esp
  004908f3: 56                                              push   esi
  004908f4: 8b f1                                           mov    esi,ecx
  004908f6: 57                                              push   edi
  004908f7: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004908fa: 8b 07                                           mov    eax,DWORD PTR [edi]
  004908fc: 89 06                                           mov    DWORD PTR [esi],eax
  004908fe: 66 8b 4f 04                                     mov    cx,WORD PTR [edi+0x4]
  00490902: 66 89 4e 04                                     mov    WORD PTR [esi+0x4],cx
  00490906: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00490909: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0049090c: 8b 47 0c                                        mov    eax,DWORD PTR [edi+0xc]
  0049090f: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00490912: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00490915: 8d 57 14                                        lea    edx,[edi+0x14]
  00490918: 89 4e 10                                        mov    DWORD PTR [esi+0x10],ecx
  0049091b: 52                                              push   edx
  0049091c: 8d 4e 14                                        lea    ecx,[esi+0x14]
  0049091f: e8 28 11 04 00                                  call   0x4d1a4c
  00490924: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  00490927: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  0049092a: 5f                                              pop    edi
  0049092b: 8b c6                                           mov    eax,esi
  0049092d: 5e                                              pop    esi
  0049092e: 5d                                              pop    ebp
  0049092f: c2 04 00                                        ret    0x4
  00490940: 55                                              push   ebp
  00490941: 8b ec                                           mov    ebp,esp
  00490943: 56                                              push   esi
  00490944: 8b f1                                           mov    esi,ecx
  00490946: e8 85 e8 ff ff                                  call   0x48f1d0
  0049094b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0049094f: 74 09                                           je     0x49095a
  00490951: 56                                              push   esi
  00490952: e8 09 17 fb ff                                  call   0x442060
  00490957: 83 c4 04                                        add    esp,0x4
  0049095a: 8b c6                                           mov    eax,esi
  0049095c: 5e                                              pop    esi
  0049095d: 5d                                              pop    ebp
  0049095e: c2 04 00                                        ret    0x4
  00495f30: 55                                              push   ebp
  00495f31: 8b ec                                           mov    ebp,esp
  00495f33: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00495f36: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00495f39: 89 08                                           mov    DWORD PTR [eax],ecx
  00495f3b: 5d                                              pop    ebp
  00495f3c: c2 04 00                                        ret    0x4
  004a0430: 55                                              push   ebp
  004a0431: 8b ec                                           mov    ebp,esp
  004a0433: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004a0436: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a0439: 89 08                                           mov    DWORD PTR [eax],ecx
  004a043b: 5d                                              pop    ebp
  004a043c: c2 04 00                                        ret    0x4
  004a1b20: 55                                              push   ebp
  004a1b21: 8b ec                                           mov    ebp,esp
  004a1b23: 53                                              push   ebx
  004a1b24: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a1b27: 8a 03                                           mov    al,BYTE PTR [ebx]
  004a1b29: 56                                              push   esi
  004a1b2a: 8b f1                                           mov    esi,ecx
  004a1b2c: 57                                              push   edi
  004a1b2d: 88 06                                           mov    BYTE PTR [esi],al
  004a1b2f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a1b32: 33 ff                                           xor    edi,edi
  004a1b34: 3b c7                                           cmp    eax,edi
  004a1b36: 75 04                                           jne    0x4a1b3c
  004a1b38: 33 d2                                           xor    edx,edx
  004a1b3a: eb 16                                           jmp    0x4a1b52
  004a1b3c: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a1b3f: 2b c8                                           sub    ecx,eax
  004a1b41: b8 67 66 66 66                                  mov    eax,0x66666667
  004a1b46: f7 e9                                           imul   ecx
  004a1b48: c1 fa 04                                        sar    edx,0x4
  004a1b4b: 8b c2                                           mov    eax,edx
  004a1b4d: c1 e8 1f                                        shr    eax,0x1f
  004a1b50: 03 d0                                           add    edx,eax
  004a1b52: 3b d7                                           cmp    edx,edi
  004a1b54: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a1b57: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a1b5a: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a1b5d: 74 2d                                           je     0x4a1b8c
  004a1b5f: 8d 3c 92                                        lea    edi,[edx+edx*4]
  004a1b62: c1 e7 03                                        shl    edi,0x3
  004a1b65: 57                                              push   edi
  004a1b66: e8 85 04 fa ff                                  call   0x441ff0
  004a1b6b: 83 c4 04                                        add    esp,0x4
  004a1b6e: 03 f8                                           add    edi,eax
  004a1b70: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a1b73: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1b76: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a1b79: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a1b7c: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004a1b7f: 50                                              push   eax
  004a1b80: 51                                              push   ecx
  004a1b81: 53                                              push   ebx
  004a1b82: 8b ce                                           mov    ecx,esi
  004a1b84: e8 27 0c 00 00                                  call   0x4a27b0
  004a1b89: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a1b8c: 5f                                              pop    edi
  004a1b8d: 8b c6                                           mov    eax,esi
  004a1b8f: 5e                                              pop    esi
  004a1b90: 5b                                              pop    ebx
  004a1b91: 5d                                              pop    ebp
  004a1b92: c2 04 00                                        ret    0x4
  004a5fa0: 55                                              push   ebp
  004a5fa1: 8b ec                                           mov    ebp,esp
  004a5fa3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004a5fa6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a5fa9: 89 08                                           mov    DWORD PTR [eax],ecx
  004a5fab: 5d                                              pop    ebp
  004a5fac: c2 04 00                                        ret    0x4
  004a7c20: 55                                              push   ebp
  004a7c21: 8b ec                                           mov    ebp,esp
  004a7c23: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004a7c26: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a7c29: 89 08                                           mov    DWORD PTR [eax],ecx
  004a7c2b: 5d                                              pop    ebp
  004a7c2c: c2 04 00                                        ret    0x4
  004aa470: 55                                              push   ebp
  004aa471: 8b ec                                           mov    ebp,esp
  004aa473: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004aa476: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aa479: 89 08                                           mov    DWORD PTR [eax],ecx
  004aa47b: 5d                                              pop    ebp
  004aa47c: c2 04 00                                        ret    0x4
  004ab0b0: 55                                              push   ebp
  004ab0b1: 8b ec                                           mov    ebp,esp
  004ab0b3: 53                                              push   ebx
  004ab0b4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004ab0b7: 8a 03                                           mov    al,BYTE PTR [ebx]
  004ab0b9: 56                                              push   esi
  004ab0ba: 8b f1                                           mov    esi,ecx
  004ab0bc: 57                                              push   edi
  004ab0bd: 88 06                                           mov    BYTE PTR [esi],al
  004ab0bf: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ab0c2: 33 ff                                           xor    edi,edi
  004ab0c4: 3b c7                                           cmp    eax,edi
  004ab0c6: 75 04                                           jne    0x4ab0cc
  004ab0c8: 33 d2                                           xor    edx,edx
  004ab0ca: eb 16                                           jmp    0x4ab0e2
  004ab0cc: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ab0cf: 2b c8                                           sub    ecx,eax
  004ab0d1: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ab0d6: f7 e9                                           imul   ecx
  004ab0d8: c1 fa 03                                        sar    edx,0x3
  004ab0db: 8b c2                                           mov    eax,edx
  004ab0dd: c1 e8 1f                                        shr    eax,0x1f
  004ab0e0: 03 d0                                           add    edx,eax
  004ab0e2: 3b d7                                           cmp    edx,edi
  004ab0e4: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004ab0e7: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004ab0ea: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ab0ed: 74 30                                           je     0x4ab11f
  004ab0ef: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004ab0f2: 8d 3c 4a                                        lea    edi,[edx+ecx*2]
  004ab0f5: c1 e7 02                                        shl    edi,0x2
  004ab0f8: 57                                              push   edi
  004ab0f9: e8 f2 6e f9 ff                                  call   0x441ff0
  004ab0fe: 83 c4 04                                        add    esp,0x4
  004ab101: 03 f8                                           add    edi,eax
  004ab103: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004ab106: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ab109: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ab10c: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ab10f: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004ab112: 50                                              push   eax
  004ab113: 51                                              push   ecx
  004ab114: 53                                              push   ebx
  004ab115: 8b ce                                           mov    ecx,esi
  004ab117: e8 c4 08 00 00                                  call   0x4ab9e0
  004ab11c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ab11f: 5f                                              pop    edi
  004ab120: 8b c6                                           mov    eax,esi
  004ab122: 5e                                              pop    esi
  004ab123: 5b                                              pop    ebx
  004ab124: 5d                                              pop    ebp
  004ab125: c2 04 00                                        ret    0x4
  004ab620: 55                                              push   ebp
  004ab621: 8b ec                                           mov    ebp,esp
  004ab623: 6a ff                                           push   0xffffffff
  004ab625: 68 59 c4 4d 00                                  push   0x4dc459
  004ab62a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004ab630: 50                                              push   eax
  004ab631: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004ab638: 51                                              push   ecx
  004ab639: 53                                              push   ebx
  004ab63a: 56                                              push   esi
  004ab63b: 57                                              push   edi
  004ab63c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004ab63f: 8a 07                                           mov    al,BYTE PTR [edi]
  004ab641: 8b f1                                           mov    esi,ecx
  004ab643: 88 06                                           mov    BYTE PTR [esi],al
  004ab645: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004ab648: 85 c0                                           test   eax,eax
  004ab64a: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004ab64d: 75 04                                           jne    0x4ab653
  004ab64f: 33 d2                                           xor    edx,edx
  004ab651: eb 16                                           jmp    0x4ab669
  004ab653: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004ab656: 2b c8                                           sub    ecx,eax
  004ab658: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ab65d: f7 e9                                           imul   ecx
  004ab65f: c1 fa 03                                        sar    edx,0x3
  004ab662: 8b c2                                           mov    eax,edx
  004ab664: c1 e8 1f                                        shr    eax,0x1f
  004ab667: 03 d0                                           add    edx,eax
  004ab669: 52                                              push   edx
  004ab66a: 8b ce                                           mov    ecx,esi
  004ab66c: e8 bf e7 ff ff                                  call   0x4a9e30
  004ab671: 84 c0                                           test   al,al
  004ab673: 74 16                                           je     0x4ab68b
  004ab675: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ab678: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004ab67b: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004ab67e: 52                                              push   edx
  004ab67f: 50                                              push   eax
  004ab680: 51                                              push   ecx
  004ab681: 8b ce                                           mov    ecx,esi
  004ab683: e8 d8 14 00 00                                  call   0x4acb60
  004ab688: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ab68b: 8a 47 10                                        mov    al,BYTE PTR [edi+0x10]
  004ab68e: 8d 5e 10                                        lea    ebx,[esi+0x10]
  004ab691: 88 03                                           mov    BYTE PTR [ebx],al
  004ab693: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  004ab696: 85 c0                                           test   eax,eax
  004ab698: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004ab69f: 75 04                                           jne    0x4ab6a5
  004ab6a1: 33 d2                                           xor    edx,edx
  004ab6a3: eb 18                                           jmp    0x4ab6bd
  004ab6a5: 8b 4f 18                                        mov    ecx,DWORD PTR [edi+0x18]
  004ab6a8: 2b c8                                           sub    ecx,eax
  004ab6aa: b8 93 24 49 92                                  mov    eax,0x92492493
  004ab6af: f7 e9                                           imul   ecx
  004ab6b1: 03 d1                                           add    edx,ecx
  004ab6b3: c1 fa 04                                        sar    edx,0x4
  004ab6b6: 8b c2                                           mov    eax,edx
  004ab6b8: c1 e8 1f                                        shr    eax,0x1f
  004ab6bb: 03 d0                                           add    edx,eax
  004ab6bd: 52                                              push   edx
  004ab6be: 8b cb                                           mov    ecx,ebx
  004ab6c0: e8 8b 02 00 00                                  call   0x4ab950
  004ab6c5: 84 c0                                           test   al,al
  004ab6c7: 74 16                                           je     0x4ab6df
  004ab6c9: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004ab6cc: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  004ab6cf: 8b 4f 14                                        mov    ecx,DWORD PTR [edi+0x14]
  004ab6d2: 52                                              push   edx
  004ab6d3: 50                                              push   eax
  004ab6d4: 51                                              push   ecx
  004ab6d5: 8b cb                                           mov    ecx,ebx
  004ab6d7: e8 94 15 00 00                                  call   0x4acc70
  004ab6dc: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004ab6df: 8a 47 20                                        mov    al,BYTE PTR [edi+0x20]
  004ab6e2: 88 46 20                                        mov    BYTE PTR [esi+0x20],al
  004ab6e5: 8b 4f 24                                        mov    ecx,DWORD PTR [edi+0x24]
  004ab6e8: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  004ab6eb: 8a 47 28                                        mov    al,BYTE PTR [edi+0x28]
  004ab6ee: 8d 5e 28                                        lea    ebx,[esi+0x28]
  004ab6f1: 6a 00                                           push   0x0
  004ab6f3: 8b cb                                           mov    ecx,ebx
  004ab6f5: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004ab6f9: 88 03                                           mov    BYTE PTR [ebx],al
  004ab6fb: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab701: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004ab707: 8b 02                                           mov    eax,DWORD PTR [edx]
  004ab709: 50                                              push   eax
  004ab70a: 6a 00                                           push   0x0
  004ab70c: 8d 47 28                                        lea    eax,[edi+0x28]
  004ab70f: 50                                              push   eax
  004ab710: 8b cb                                           mov    ecx,ebx
  004ab712: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab718: 8a 47 38                                        mov    al,BYTE PTR [edi+0x38]
  004ab71b: 8d 5e 38                                        lea    ebx,[esi+0x38]
  004ab71e: 6a 00                                           push   0x0
  004ab720: 8b cb                                           mov    ecx,ebx
  004ab722: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004ab726: 88 03                                           mov    BYTE PTR [ebx],al
  004ab728: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab72e: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004ab734: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004ab736: 52                                              push   edx
  004ab737: 6a 00                                           push   0x0
  004ab739: 8d 47 38                                        lea    eax,[edi+0x38]
  004ab73c: 50                                              push   eax
  004ab73d: 8b cb                                           mov    ecx,ebx
  004ab73f: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab745: 8a 47 48                                        mov    al,BYTE PTR [edi+0x48]
  004ab748: 8d 5e 48                                        lea    ebx,[esi+0x48]
  004ab74b: 6a 00                                           push   0x0
  004ab74d: 8b cb                                           mov    ecx,ebx
  004ab74f: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004ab753: 88 03                                           mov    BYTE PTR [ebx],al
  004ab755: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab75b: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ab760: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ab762: 51                                              push   ecx
  004ab763: 6a 00                                           push   0x0
  004ab765: 8d 47 48                                        lea    eax,[edi+0x48]
  004ab768: 50                                              push   eax
  004ab769: 8b cb                                           mov    ecx,ebx
  004ab76b: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab771: 8a 47 58                                        mov    al,BYTE PTR [edi+0x58]
  004ab774: 8d 5e 58                                        lea    ebx,[esi+0x58]
  004ab777: 6a 00                                           push   0x0
  004ab779: 8b cb                                           mov    ecx,ebx
  004ab77b: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004ab77f: 88 03                                           mov    BYTE PTR [ebx],al
  004ab781: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab787: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004ab78d: 8b 02                                           mov    eax,DWORD PTR [edx]
  004ab78f: 50                                              push   eax
  004ab790: 6a 00                                           push   0x0
  004ab792: 8d 47 58                                        lea    eax,[edi+0x58]
  004ab795: 50                                              push   eax
  004ab796: 8b cb                                           mov    ecx,ebx
  004ab798: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab79e: 8a 47 68                                        mov    al,BYTE PTR [edi+0x68]
  004ab7a1: 8d 5e 68                                        lea    ebx,[esi+0x68]
  004ab7a4: 6a 00                                           push   0x0
  004ab7a6: 8b cb                                           mov    ecx,ebx
  004ab7a8: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004ab7ac: 88 03                                           mov    BYTE PTR [ebx],al
  004ab7ae: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab7b4: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004ab7ba: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004ab7bc: 52                                              push   edx
  004ab7bd: 6a 00                                           push   0x0
  004ab7bf: 8d 47 68                                        lea    eax,[edi+0x68]
  004ab7c2: 50                                              push   eax
  004ab7c3: 8b cb                                           mov    ecx,ebx
  004ab7c5: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab7cb: 8a 47 78                                        mov    al,BYTE PTR [edi+0x78]
  004ab7ce: 8d 5e 78                                        lea    ebx,[esi+0x78]
  004ab7d1: 6a 00                                           push   0x0
  004ab7d3: 8b cb                                           mov    ecx,ebx
  004ab7d5: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004ab7d9: 88 03                                           mov    BYTE PTR [ebx],al
  004ab7db: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab7e1: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ab7e6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ab7e8: 51                                              push   ecx
  004ab7e9: 6a 00                                           push   0x0
  004ab7eb: 8d 47 78                                        lea    eax,[edi+0x78]
  004ab7ee: 50                                              push   eax
  004ab7ef: 8b cb                                           mov    ecx,ebx
  004ab7f1: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab7f7: 8b 97 88 00 00 00                               mov    edx,DWORD PTR [edi+0x88]
  004ab7fd: 89 96 88 00 00 00                               mov    DWORD PTR [esi+0x88],edx
  004ab803: 8a 87 8c 00 00 00                               mov    al,BYTE PTR [edi+0x8c]
  004ab809: 8d 9e 8c 00 00 00                               lea    ebx,[esi+0x8c]
  004ab80f: 6a 00                                           push   0x0
  004ab811: 8b cb                                           mov    ecx,ebx
  004ab813: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  004ab817: 88 03                                           mov    BYTE PTR [ebx],al
  004ab819: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab81f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ab824: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ab826: 51                                              push   ecx
  004ab827: 6a 00                                           push   0x0
  004ab829: 8d 87 8c 00 00 00                               lea    eax,[edi+0x8c]
  004ab82f: 50                                              push   eax
  004ab830: 8b cb                                           mov    ecx,ebx
  004ab832: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab838: 8b 97 9c 00 00 00                               mov    edx,DWORD PTR [edi+0x9c]
  004ab83e: 89 96 9c 00 00 00                               mov    DWORD PTR [esi+0x9c],edx
  004ab844: 8b 87 a0 00 00 00                               mov    eax,DWORD PTR [edi+0xa0]
  004ab84a: 89 86 a0 00 00 00                               mov    DWORD PTR [esi+0xa0],eax
  004ab850: 8b 8f a4 00 00 00                               mov    ecx,DWORD PTR [edi+0xa4]
  004ab856: 89 8e a4 00 00 00                               mov    DWORD PTR [esi+0xa4],ecx
  004ab85c: 8b 97 a8 00 00 00                               mov    edx,DWORD PTR [edi+0xa8]
  004ab862: 89 96 a8 00 00 00                               mov    DWORD PTR [esi+0xa8],edx
  004ab868: 8b 87 ac 00 00 00                               mov    eax,DWORD PTR [edi+0xac]
  004ab86e: 89 86 ac 00 00 00                               mov    DWORD PTR [esi+0xac],eax
  004ab874: 8b 8f b0 00 00 00                               mov    ecx,DWORD PTR [edi+0xb0]
  004ab87a: 89 8e b0 00 00 00                               mov    DWORD PTR [esi+0xb0],ecx
  004ab880: 8b 97 b4 00 00 00                               mov    edx,DWORD PTR [edi+0xb4]
  004ab886: 89 96 b4 00 00 00                               mov    DWORD PTR [esi+0xb4],edx
  004ab88c: 8b 87 b8 00 00 00                               mov    eax,DWORD PTR [edi+0xb8]
  004ab892: 89 86 b8 00 00 00                               mov    DWORD PTR [esi+0xb8],eax
  004ab898: 8a 8f bc 00 00 00                               mov    cl,BYTE PTR [edi+0xbc]
  004ab89e: 88 8e bc 00 00 00                               mov    BYTE PTR [esi+0xbc],cl
  004ab8a4: 8a 97 bd 00 00 00                               mov    dl,BYTE PTR [edi+0xbd]
  004ab8aa: 88 96 bd 00 00 00                               mov    BYTE PTR [esi+0xbd],dl
  004ab8b0: 8a 87 be 00 00 00                               mov    al,BYTE PTR [edi+0xbe]
  004ab8b6: 88 86 be 00 00 00                               mov    BYTE PTR [esi+0xbe],al
  004ab8bc: 8b 8f c0 00 00 00                               mov    ecx,DWORD PTR [edi+0xc0]
  004ab8c2: 89 8e c0 00 00 00                               mov    DWORD PTR [esi+0xc0],ecx
  004ab8c8: 8a 87 c4 00 00 00                               mov    al,BYTE PTR [edi+0xc4]
  004ab8ce: 8d 9e c4 00 00 00                               lea    ebx,[esi+0xc4]
  004ab8d4: 6a 00                                           push   0x0
  004ab8d6: 8b cb                                           mov    ecx,ebx
  004ab8d8: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  004ab8dc: 88 03                                           mov    BYTE PTR [ebx],al
  004ab8de: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab8e4: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004ab8ea: 8b 02                                           mov    eax,DWORD PTR [edx]
  004ab8ec: 50                                              push   eax
  004ab8ed: 6a 00                                           push   0x0
  004ab8ef: 8d 87 c4 00 00 00                               lea    eax,[edi+0xc4]
  004ab8f5: 50                                              push   eax
  004ab8f6: 8b cb                                           mov    ecx,ebx
  004ab8f8: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab8fe: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  004ab902: 81 c7 d4 00 00 00                               add    edi,0xd4
  004ab908: 8d 9e d4 00 00 00                               lea    ebx,[esi+0xd4]
  004ab90e: 8a 07                                           mov    al,BYTE PTR [edi]
  004ab910: 6a 00                                           push   0x0
  004ab912: 8b cb                                           mov    ecx,ebx
  004ab914: 88 03                                           mov    BYTE PTR [ebx],al
  004ab916: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ab91c: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004ab922: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004ab924: 52                                              push   edx
  004ab925: 6a 00                                           push   0x0
  004ab927: 57                                              push   edi
  004ab928: 8b cb                                           mov    ecx,ebx
  004ab92a: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ab930: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ab933: 5f                                              pop    edi
  004ab934: 8b c6                                           mov    eax,esi
  004ab936: 5e                                              pop    esi
  004ab937: 5b                                              pop    ebx
  004ab938: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ab93f: 8b e5                                           mov    esp,ebp
  004ab941: 5d                                              pop    ebp
  004ab942: c2 04 00                                        ret    0x4
  004ac8e0: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004ac8e3: 85 c0                                           test   eax,eax
  004ac8e5: 75 01                                           jne    0x4ac8e8
  004ac8e7: c3                                              ret
  004ac8e8: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004ac8eb: 2b c8                                           sub    ecx,eax
  004ac8ed: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ac8f2: f7 e9                                           imul   ecx
  004ac8f4: c1 fa 03                                        sar    edx,0x3
  004ac8f7: 8b c2                                           mov    eax,edx
  004ac8f9: c1 e8 1f                                        shr    eax,0x1f
  004ac8fc: 03 d0                                           add    edx,eax
  004ac8fe: 8b c2                                           mov    eax,edx
  004ac900: c3                                              ret
  004ac910: 55                                              push   ebp
  004ac911: 8b ec                                           mov    ebp,esp
  004ac913: 56                                              push   esi
  004ac914: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004ac917: 57                                              push   edi
  004ac918: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004ac91b: 3b f7                                           cmp    esi,edi
  004ac91d: 74 0f                                           je     0x4ac92e
  004ac91f: 8b 06                                           mov    eax,DWORD PTR [esi]
  004ac921: 6a 00                                           push   0x0
  004ac923: 8b ce                                           mov    ecx,esi
  004ac925: ff 10                                           call   DWORD PTR [eax]
  004ac927: 83 c6 2c                                        add    esi,0x2c
  004ac92a: 3b f7                                           cmp    esi,edi
  004ac92c: 75 f1                                           jne    0x4ac91f
  004ac92e: 5f                                              pop    edi
  004ac92f: 5e                                              pop    esi
  004ac930: 5d                                              pop    ebp
  004ac931: c2 08 00                                        ret    0x8
  004ac940: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004ac943: 85 c0                                           test   eax,eax
  004ac945: 75 01                                           jne    0x4ac948
  004ac947: c3                                              ret
  004ac948: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  004ac94b: 2b c8                                           sub    ecx,eax
  004ac94d: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ac952: f7 e9                                           imul   ecx
  004ac954: c1 fa 03                                        sar    edx,0x3
  004ac957: 8b c2                                           mov    eax,edx
  004ac959: c1 e8 1f                                        shr    eax,0x1f
  004ac95c: 03 d0                                           add    edx,eax
  004ac95e: 8b c2                                           mov    eax,edx
  004ac960: c3                                              ret
  004acc70: 55                                              push   ebp
  004acc71: 8b ec                                           mov    ebp,esp
  004acc73: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004acc76: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004acc79: 56                                              push   esi
  004acc7a: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004acc7d: 3b ce                                           cmp    ecx,esi
  004acc7f: 74 3e                                           je     0x4accbf
  004acc81: 85 c0                                           test   eax,eax
  004acc83: 74 30                                           je     0x4accb5
  004acc85: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004acc88: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004acc8b: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004acc8e: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004acc91: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  004acc94: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004acc97: 8b 51 10                                        mov    edx,DWORD PTR [ecx+0x10]
  004acc9a: 89 50 10                                        mov    DWORD PTR [eax+0x10],edx
  004acc9d: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004acca0: c7 00 28 f9 4d 00                               mov    DWORD PTR [eax],0x4df928
  004acca6: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  004acca9: 8b 51 18                                        mov    edx,DWORD PTR [ecx+0x18]
  004accac: 89 50 18                                        mov    DWORD PTR [eax+0x18],edx
  004accaf: c7 00 48 fa 4d 00                               mov    DWORD PTR [eax],0x4dfa48
  004accb5: 83 c1 1c                                        add    ecx,0x1c
  004accb8: 83 c0 1c                                        add    eax,0x1c
  004accbb: 3b ce                                           cmp    ecx,esi
  004accbd: 75 c2                                           jne    0x4acc81
  004accbf: 5e                                              pop    esi
  004accc0: 5d                                              pop    ebp
  004accc1: c2 0c 00                                        ret    0xc
  004acd00: 55                                              push   ebp
  004acd01: 8b ec                                           mov    ebp,esp
  004acd03: 83 ec 08                                        sub    esp,0x8
  004acd06: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004acd09: 53                                              push   ebx
  004acd0a: 56                                              push   esi
  004acd0b: 8b f1                                           mov    esi,ecx
  004acd0d: 3b f0                                           cmp    esi,eax
  004acd0f: 57                                              push   edi
  004acd10: 0f 84 2a 02 00 00                               je     0x4acf40
  004acd16: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  004acd19: 33 db                                           xor    ebx,ebx
  004acd1b: 3b fb                                           cmp    edi,ebx
  004acd1d: 74 1f                                           je     0x4acd3e
  004acd1f: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004acd22: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004acd25: 2b cf                                           sub    ecx,edi
  004acd27: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004acd2c: f7 e9                                           imul   ecx
  004acd2e: c1 fa 03                                        sar    edx,0x3
  004acd31: 8b c2                                           mov    eax,edx
  004acd33: c1 e8 1f                                        shr    eax,0x1f
  004acd36: 03 d0                                           add    edx,eax
  004acd38: 8b da                                           mov    ebx,edx
  004acd3a: 75 35                                           jne    0x4acd71
  004acd3c: 33 db                                           xor    ebx,ebx
  004acd3e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004acd41: 3b c3                                           cmp    eax,ebx
  004acd43: 74 18                                           je     0x4acd5d
  004acd45: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004acd48: 51                                              push   ecx
  004acd49: 50                                              push   eax
  004acd4a: 8b ce                                           mov    ecx,esi
  004acd4c: e8 bf fb ff ff                                  call   0x4ac910
  004acd51: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004acd54: 52                                              push   edx
  004acd55: e8 06 53 f9 ff                                  call   0x442060
  004acd5a: 83 c4 04                                        add    esp,0x4
  004acd5d: 5f                                              pop    edi
  004acd5e: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  004acd61: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004acd64: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004acd67: 8b c6                                           mov    eax,esi
  004acd69: 5e                                              pop    esi
  004acd6a: 5b                                              pop    ebx
  004acd6b: 8b e5                                           mov    esp,ebp
  004acd6d: 5d                                              pop    ebp
  004acd6e: c2 04 00                                        ret    0x4
  004acd71: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004acd74: 85 c9                                           test   ecx,ecx
  004acd76: 75 04                                           jne    0x4acd7c
  004acd78: 33 d2                                           xor    edx,edx
  004acd7a: eb 16                                           jmp    0x4acd92
  004acd7c: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004acd7f: 2b d1                                           sub    edx,ecx
  004acd81: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004acd86: f7 ea                                           imul   edx
  004acd88: c1 fa 03                                        sar    edx,0x3
  004acd8b: 8b c2                                           mov    eax,edx
  004acd8d: c1 e8 1f                                        shr    eax,0x1f
  004acd90: 03 d0                                           add    edx,eax
  004acd92: 3b da                                           cmp    ebx,edx
  004acd94: 0f 87 90 00 00 00                               ja     0x4ace2a
  004acd9a: 3b 7d fc                                        cmp    edi,DWORD PTR [ebp-0x4]
  004acd9d: 8b d9                                           mov    ebx,ecx
  004acd9f: 74 15                                           je     0x4acdb6
  004acda1: 57                                              push   edi
  004acda2: 8b cb                                           mov    ecx,ebx
  004acda4: e8 a7 01 00 00                                  call   0x4acf50
  004acda9: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004acdac: 83 c7 2c                                        add    edi,0x2c
  004acdaf: 83 c3 2c                                        add    ebx,0x2c
  004acdb2: 3b f8                                           cmp    edi,eax
  004acdb4: 75 eb                                           jne    0x4acda1
  004acdb6: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004acdb9: 3b d8                                           cmp    ebx,eax
  004acdbb: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004acdbe: 8b fb                                           mov    edi,ebx
  004acdc0: 74 12                                           je     0x4acdd4
  004acdc2: 8b 17                                           mov    edx,DWORD PTR [edi]
  004acdc4: 6a 00                                           push   0x0
  004acdc6: 8b cf                                           mov    ecx,edi
  004acdc8: ff 12                                           call   DWORD PTR [edx]
  004acdca: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004acdcd: 83 c7 2c                                        add    edi,0x2c
  004acdd0: 3b f8                                           cmp    edi,eax
  004acdd2: 75 ee                                           jne    0x4acdc2
  004acdd4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004acdd7: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004acdda: 85 c0                                           test   eax,eax
  004acddc: 75 1c                                           jne    0x4acdfa
  004acdde: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004acde1: 33 d2                                           xor    edx,edx
  004acde3: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004acde6: 8d 14 4a                                        lea    edx,[edx+ecx*2]
  004acde9: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  004acdec: 5f                                              pop    edi
  004acded: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004acdf0: 8b c6                                           mov    eax,esi
  004acdf2: 5e                                              pop    esi
  004acdf3: 5b                                              pop    ebx
  004acdf4: 8b e5                                           mov    esp,ebp
  004acdf6: 5d                                              pop    ebp
  004acdf7: c2 04 00                                        ret    0x4
  004acdfa: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004acdfd: 2b c8                                           sub    ecx,eax
  004acdff: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ace04: f7 e9                                           imul   ecx
  004ace06: c1 fa 03                                        sar    edx,0x3
  004ace09: 8b c2                                           mov    eax,edx
  004ace0b: c1 e8 1f                                        shr    eax,0x1f
  004ace0e: 03 d0                                           add    edx,eax
  004ace10: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ace13: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004ace16: 8d 14 4a                                        lea    edx,[edx+ecx*2]
  004ace19: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  004ace1c: 5f                                              pop    edi
  004ace1d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004ace20: 8b c6                                           mov    eax,esi
  004ace22: 5e                                              pop    esi
  004ace23: 5b                                              pop    ebx
  004ace24: 8b e5                                           mov    esp,ebp
  004ace26: 5d                                              pop    ebp
  004ace27: c2 04 00                                        ret    0x4
  004ace2a: 85 c9                                           test   ecx,ecx
  004ace2c: 75 04                                           jne    0x4ace32
  004ace2e: 33 d2                                           xor    edx,edx
  004ace30: eb 16                                           jmp    0x4ace48
  004ace32: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004ace35: 2b d1                                           sub    edx,ecx
  004ace37: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ace3c: f7 ea                                           imul   edx
  004ace3e: c1 fa 03                                        sar    edx,0x3
  004ace41: 8b c2                                           mov    eax,edx
  004ace43: c1 e8 1f                                        shr    eax,0x1f
  004ace46: 03 d0                                           add    edx,eax
  004ace48: 3b da                                           cmp    ebx,edx
  004ace4a: 77 6d                                           ja     0x4aceb9
  004ace4c: 85 c9                                           test   ecx,ecx
  004ace4e: 75 04                                           jne    0x4ace54
  004ace50: 33 d2                                           xor    edx,edx
  004ace52: eb 16                                           jmp    0x4ace6a
  004ace54: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ace57: 2b d1                                           sub    edx,ecx
  004ace59: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ace5e: f7 ea                                           imul   edx
  004ace60: c1 fa 03                                        sar    edx,0x3
  004ace63: 8b c2                                           mov    eax,edx
  004ace65: c1 e8 1f                                        shr    eax,0x1f
  004ace68: 03 d0                                           add    edx,eax
  004ace6a: 8d 04 92                                        lea    eax,[edx+edx*4]
  004ace6d: 8d 14 42                                        lea    edx,[edx+eax*2]
  004ace70: 8d 04 97                                        lea    eax,[edi+edx*4]
  004ace73: 8b df                                           mov    ebx,edi
  004ace75: 3b d8                                           cmp    ebx,eax
  004ace77: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004ace7a: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004ace7d: 74 2c                                           je     0x4aceab
  004ace7f: 8d 79 1c                                        lea    edi,[ecx+0x1c]
  004ace82: 83 c3 1c                                        add    ebx,0x1c
  004ace85: 8b 43 fc                                        mov    eax,DWORD PTR [ebx-0x4]
  004ace88: 53                                              push   ebx
  004ace89: 8b cf                                           mov    ecx,edi
  004ace8b: 89 47 fc                                        mov    DWORD PTR [edi-0x4],eax
  004ace8e: e8 cd 02 00 00                                  call   0x4ad160
  004ace93: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004ace96: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004ace99: 83 c0 2c                                        add    eax,0x2c
  004ace9c: 83 c7 2c                                        add    edi,0x2c
  004ace9f: 83 c3 2c                                        add    ebx,0x2c
  004acea2: 3b c1                                           cmp    eax,ecx
  004acea4: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004acea7: 75 dc                                           jne    0x4ace85
  004acea9: 8b c1                                           mov    eax,ecx
  004aceab: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004aceae: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004aceb1: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004aceb4: 52                                              push   edx
  004aceb5: 51                                              push   ecx
  004aceb6: 50                                              push   eax
  004aceb7: eb 7d                                           jmp    0x4acf36
  004aceb9: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004acebc: 8b f9                                           mov    edi,ecx
  004acebe: 3b fb                                           cmp    edi,ebx
  004acec0: 74 0f                                           je     0x4aced1
  004acec2: 8b 07                                           mov    eax,DWORD PTR [edi]
  004acec4: 6a 00                                           push   0x0
  004acec6: 8b cf                                           mov    ecx,edi
  004acec8: ff 10                                           call   DWORD PTR [eax]
  004aceca: 83 c7 2c                                        add    edi,0x2c
  004acecd: 3b fb                                           cmp    edi,ebx
  004acecf: 75 f1                                           jne    0x4acec2
  004aced1: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004aced4: 51                                              push   ecx
  004aced5: e8 86 51 f9 ff                                  call   0x442060
  004aceda: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004acedd: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004acee0: 33 ff                                           xor    edi,edi
  004acee2: 83 c4 04                                        add    esp,0x4
  004acee5: 3b c7                                           cmp    eax,edi
  004acee7: 75 04                                           jne    0x4aceed
  004acee9: 33 d2                                           xor    edx,edx
  004aceeb: eb 16                                           jmp    0x4acf03
  004aceed: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004acef0: 2b c8                                           sub    ecx,eax
  004acef2: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004acef7: f7 e9                                           imul   ecx
  004acef9: c1 fa 03                                        sar    edx,0x3
  004acefc: 8b c2                                           mov    eax,edx
  004acefe: c1 e8 1f                                        shr    eax,0x1f
  004acf01: 03 d0                                           add    edx,eax
  004acf03: 3b d7                                           cmp    edx,edi
  004acf05: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004acf08: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004acf0b: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004acf0e: 74 30                                           je     0x4acf40
  004acf10: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004acf13: 8d 3c 4a                                        lea    edi,[edx+ecx*2]
  004acf16: c1 e7 02                                        shl    edi,0x2
  004acf19: 57                                              push   edi
  004acf1a: e8 d1 50 f9 ff                                  call   0x441ff0
  004acf1f: 83 c4 04                                        add    esp,0x4
  004acf22: 03 f8                                           add    edi,eax
  004acf24: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004acf27: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004acf2a: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004acf2d: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004acf30: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004acf33: 50                                              push   eax
  004acf34: 51                                              push   ecx
  004acf35: 53                                              push   ebx
  004acf36: 8b ce                                           mov    ecx,esi
  004acf38: e8 23 fc ff ff                                  call   0x4acb60
  004acf3d: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004acf40: 5f                                              pop    edi
  004acf41: 8b c6                                           mov    eax,esi
  004acf43: 5e                                              pop    esi
  004acf44: 5b                                              pop    ebx
  004acf45: 8b e5                                           mov    esp,ebp
  004acf47: 5d                                              pop    ebp
  004acf48: c2 04 00                                        ret    0x4
  004ad3c0: 55                                              push   ebp
  004ad3c1: 8b ec                                           mov    ebp,esp
  004ad3c3: 51                                              push   ecx
  004ad3c4: 53                                              push   ebx
  004ad3c5: 56                                              push   esi
  004ad3c6: 8b f1                                           mov    esi,ecx
  004ad3c8: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ad3cb: 3b f1                                           cmp    esi,ecx
  004ad3cd: 57                                              push   edi
  004ad3ce: 0f 84 fe 01 00 00                               je     0x4ad5d2
  004ad3d4: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004ad3d7: 33 ff                                           xor    edi,edi
  004ad3d9: 3b c7                                           cmp    eax,edi
  004ad3db: 74 1f                                           je     0x4ad3fc
  004ad3dd: 8b 59 08                                        mov    ebx,DWORD PTR [ecx+0x8]
  004ad3e0: 8b cb                                           mov    ecx,ebx
  004ad3e2: 2b c8                                           sub    ecx,eax
  004ad3e4: b8 93 24 49 92                                  mov    eax,0x92492493
  004ad3e9: f7 e9                                           imul   ecx
  004ad3eb: 03 d1                                           add    edx,ecx
  004ad3ed: c1 fa 04                                        sar    edx,0x4
  004ad3f0: 8b c2                                           mov    eax,edx
  004ad3f2: c1 e8 1f                                        shr    eax,0x1f
  004ad3f5: 03 d0                                           add    edx,eax
  004ad3f7: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004ad3fa: 75 33                                           jne    0x4ad42f
  004ad3fc: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ad3ff: 3b c7                                           cmp    eax,edi
  004ad401: 74 18                                           je     0x4ad41b
  004ad403: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ad406: 51                                              push   ecx
  004ad407: 50                                              push   eax
  004ad408: 8b ce                                           mov    ecx,esi
  004ad40a: e8 d1 01 00 00                                  call   0x4ad5e0
  004ad40f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad412: 52                                              push   edx
  004ad413: e8 48 4c f9 ff                                  call   0x442060
  004ad418: 83 c4 04                                        add    esp,0x4
  004ad41b: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004ad41e: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004ad421: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ad424: 5f                                              pop    edi
  004ad425: 8b c6                                           mov    eax,esi
  004ad427: 5e                                              pop    esi
  004ad428: 5b                                              pop    ebx
  004ad429: 8b e5                                           mov    esp,ebp
  004ad42b: 5d                                              pop    ebp
  004ad42c: c2 04 00                                        ret    0x4
  004ad42f: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004ad432: 85 ff                                           test   edi,edi
  004ad434: 75 04                                           jne    0x4ad43a
  004ad436: 33 d2                                           xor    edx,edx
  004ad438: eb 18                                           jmp    0x4ad452
  004ad43a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ad43d: 2b cf                                           sub    ecx,edi
  004ad43f: b8 93 24 49 92                                  mov    eax,0x92492493
  004ad444: f7 e9                                           imul   ecx
  004ad446: 03 d1                                           add    edx,ecx
  004ad448: c1 fa 04                                        sar    edx,0x4
  004ad44b: 8b c2                                           mov    eax,edx
  004ad44d: c1 e8 1f                                        shr    eax,0x1f
  004ad450: 03 d0                                           add    edx,eax
  004ad452: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  004ad455: 77 73                                           ja     0x4ad4ca
  004ad457: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ad45a: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004ad45d: 3b c3                                           cmp    eax,ebx
  004ad45f: 74 10                                           je     0x4ad471
  004ad461: 8b 50 18                                        mov    edx,DWORD PTR [eax+0x18]
  004ad464: 89 57 18                                        mov    DWORD PTR [edi+0x18],edx
  004ad467: 83 c0 1c                                        add    eax,0x1c
  004ad46a: 83 c7 1c                                        add    edi,0x1c
  004ad46d: 3b c3                                           cmp    eax,ebx
  004ad46f: 75 f0                                           jne    0x4ad461
  004ad471: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004ad474: 3b fb                                           cmp    edi,ebx
  004ad476: 74 0f                                           je     0x4ad487
  004ad478: 8b 07                                           mov    eax,DWORD PTR [edi]
  004ad47a: 6a 00                                           push   0x0
  004ad47c: 8b cf                                           mov    ecx,edi
  004ad47e: ff 10                                           call   DWORD PTR [eax]
  004ad480: 83 c7 1c                                        add    edi,0x1c
  004ad483: 3b fb                                           cmp    edi,ebx
  004ad485: 75 f1                                           jne    0x4ad478
  004ad487: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ad48a: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004ad48d: 85 c0                                           test   eax,eax
  004ad48f: 75 04                                           jne    0x4ad495
  004ad491: 33 d2                                           xor    edx,edx
  004ad493: eb 18                                           jmp    0x4ad4ad
  004ad495: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004ad498: 2b c8                                           sub    ecx,eax
  004ad49a: b8 93 24 49 92                                  mov    eax,0x92492493
  004ad49f: f7 e9                                           imul   ecx
  004ad4a1: 03 d1                                           add    edx,ecx
  004ad4a3: c1 fa 04                                        sar    edx,0x4
  004ad4a6: 8b ca                                           mov    ecx,edx
  004ad4a8: c1 e9 1f                                        shr    ecx,0x1f
  004ad4ab: 03 d1                                           add    edx,ecx
  004ad4ad: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004ad4b0: 8d 04 d5 00 00 00 00                            lea    eax,[edx*8+0x0]
  004ad4b7: 2b c2                                           sub    eax,edx
  004ad4b9: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004ad4bc: 5f                                              pop    edi
  004ad4bd: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004ad4c0: 8b c6                                           mov    eax,esi
  004ad4c2: 5e                                              pop    esi
  004ad4c3: 5b                                              pop    ebx
  004ad4c4: 8b e5                                           mov    esp,ebp
  004ad4c6: 5d                                              pop    ebp
  004ad4c7: c2 04 00                                        ret    0x4
  004ad4ca: 85 ff                                           test   edi,edi
  004ad4cc: 75 04                                           jne    0x4ad4d2
  004ad4ce: 33 d2                                           xor    edx,edx
  004ad4d0: eb 18                                           jmp    0x4ad4ea
  004ad4d2: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  004ad4d5: 2b cf                                           sub    ecx,edi
  004ad4d7: b8 93 24 49 92                                  mov    eax,0x92492493
  004ad4dc: f7 e9                                           imul   ecx
  004ad4de: 03 d1                                           add    edx,ecx
  004ad4e0: c1 fa 04                                        sar    edx,0x4
  004ad4e3: 8b c2                                           mov    eax,edx
  004ad4e5: c1 e8 1f                                        shr    eax,0x1f
  004ad4e8: 03 d0                                           add    edx,eax
  004ad4ea: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  004ad4ed: 77 59                                           ja     0x4ad548
  004ad4ef: 85 ff                                           test   edi,edi
  004ad4f1: 75 04                                           jne    0x4ad4f7
  004ad4f3: 33 d2                                           xor    edx,edx
  004ad4f5: eb 18                                           jmp    0x4ad50f
  004ad4f7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ad4fa: 2b cf                                           sub    ecx,edi
  004ad4fc: b8 93 24 49 92                                  mov    eax,0x92492493
  004ad501: f7 e9                                           imul   ecx
  004ad503: 03 d1                                           add    edx,ecx
  004ad505: c1 fa 04                                        sar    edx,0x4
  004ad508: 8b ca                                           mov    ecx,edx
  004ad50a: c1 e9 1f                                        shr    ecx,0x1f
  004ad50d: 03 d1                                           add    edx,ecx
  004ad50f: 8d 0c d5 00 00 00 00                            lea    ecx,[edx*8+0x0]
  004ad516: 2b ca                                           sub    ecx,edx
  004ad518: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004ad51b: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004ad51e: 8d 0c 88                                        lea    ecx,[eax+ecx*4]
  004ad521: 3b c1                                           cmp    eax,ecx
  004ad523: 74 12                                           je     0x4ad537
  004ad525: 8d 57 18                                        lea    edx,[edi+0x18]
  004ad528: 8b 78 18                                        mov    edi,DWORD PTR [eax+0x18]
  004ad52b: 89 3a                                           mov    DWORD PTR [edx],edi
  004ad52d: 83 c0 1c                                        add    eax,0x1c
  004ad530: 83 c2 1c                                        add    edx,0x1c
  004ad533: 3b c1                                           cmp    eax,ecx
  004ad535: 75 f1                                           jne    0x4ad528
  004ad537: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ad53a: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ad53d: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004ad540: 52                                              push   edx
  004ad541: 50                                              push   eax
  004ad542: 51                                              push   ecx
  004ad543: e9 80 00 00 00                                  jmp    0x4ad5c8
  004ad548: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004ad54b: 3b fb                                           cmp    edi,ebx
  004ad54d: 74 0f                                           je     0x4ad55e
  004ad54f: 8b 07                                           mov    eax,DWORD PTR [edi]
  004ad551: 6a 00                                           push   0x0
  004ad553: 8b cf                                           mov    ecx,edi
  004ad555: ff 10                                           call   DWORD PTR [eax]
  004ad557: 83 c7 1c                                        add    edi,0x1c
  004ad55a: 3b fb                                           cmp    edi,ebx
  004ad55c: 75 f1                                           jne    0x4ad54f
  004ad55e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004ad561: 51                                              push   ecx
  004ad562: e8 f9 4a f9 ff                                  call   0x442060
  004ad567: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004ad56a: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ad56d: 33 ff                                           xor    edi,edi
  004ad56f: 83 c4 04                                        add    esp,0x4
  004ad572: 3b c7                                           cmp    eax,edi
  004ad574: 75 04                                           jne    0x4ad57a
  004ad576: 33 d2                                           xor    edx,edx
  004ad578: eb 18                                           jmp    0x4ad592
  004ad57a: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ad57d: 2b c8                                           sub    ecx,eax
  004ad57f: b8 93 24 49 92                                  mov    eax,0x92492493
  004ad584: f7 e9                                           imul   ecx
  004ad586: 03 d1                                           add    edx,ecx
  004ad588: c1 fa 04                                        sar    edx,0x4
  004ad58b: 8b c2                                           mov    eax,edx
  004ad58d: c1 e8 1f                                        shr    eax,0x1f
  004ad590: 03 d0                                           add    edx,eax
  004ad592: 3b d7                                           cmp    edx,edi
  004ad594: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004ad597: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004ad59a: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ad59d: 74 33                                           je     0x4ad5d2
  004ad59f: 8d 3c d5 00 00 00 00                            lea    edi,[edx*8+0x0]
  004ad5a6: 2b fa                                           sub    edi,edx
  004ad5a8: c1 e7 02                                        shl    edi,0x2
  004ad5ab: 57                                              push   edi
  004ad5ac: e8 3f 4a f9 ff                                  call   0x441ff0
  004ad5b1: 83 c4 04                                        add    esp,0x4
  004ad5b4: 03 f8                                           add    edi,eax
  004ad5b6: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004ad5b9: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad5bc: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ad5bf: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ad5c2: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004ad5c5: 50                                              push   eax
  004ad5c6: 51                                              push   ecx
  004ad5c7: 53                                              push   ebx
  004ad5c8: 8b ce                                           mov    ecx,esi
  004ad5ca: e8 a1 f6 ff ff                                  call   0x4acc70
  004ad5cf: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad5d2: 5f                                              pop    edi
  004ad5d3: 8b c6                                           mov    eax,esi
  004ad5d5: 5e                                              pop    esi
  004ad5d6: 5b                                              pop    ebx
  004ad5d7: 8b e5                                           mov    esp,ebp
  004ad5d9: 5d                                              pop    ebp
  004ad5da: c2 04 00                                        ret    0x4
  004ad610: 55                                              push   ebp
  004ad611: 8b ec                                           mov    ebp,esp
  004ad613: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ad616: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004ad618: 8d 14 80                                        lea    edx,[eax+eax*4]
  004ad61b: 8d 04 50                                        lea    eax,[eax+edx*2]
  004ad61e: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004ad621: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ad624: 89 10                                           mov    DWORD PTR [eax],edx
  004ad626: 5d                                              pop    ebp
  004ad627: c2 08 00                                        ret    0x8
  004ad630: 55                                              push   ebp
  004ad631: 8b ec                                           mov    ebp,esp
  004ad633: 83 ec 0c                                        sub    esp,0xc
  004ad636: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ad639: 53                                              push   ebx
  004ad63a: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004ad63d: 3b d8                                           cmp    ebx,eax
  004ad63f: 0f 84 e6 01 00 00                               je     0x4ad82b
  004ad645: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004ad648: 56                                              push   esi
  004ad649: 83 c3 20                                        add    ebx,0x20
  004ad64c: 57                                              push   edi
  004ad64d: 8d 70 20                                        lea    esi,[eax+0x20]
  004ad650: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004ad653: 8b 4b f8                                        mov    ecx,DWORD PTR [ebx-0x8]
  004ad656: 8d 53 fc                                        lea    edx,[ebx-0x4]
  004ad659: 8d 46 fc                                        lea    eax,[esi-0x4]
  004ad65c: 3b c2                                           cmp    eax,edx
  004ad65e: 89 4e f8                                        mov    DWORD PTR [esi-0x8],ecx
  004ad661: 0f 84 94 01 00 00                               je     0x4ad7fb
  004ad667: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004ad669: 85 ff                                           test   edi,edi
  004ad66b: 74 1e                                           je     0x4ad68b
  004ad66d: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004ad670: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004ad673: 2b cf                                           sub    ecx,edi
  004ad675: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad67a: f7 e9                                           imul   ecx
  004ad67c: c1 fa 03                                        sar    edx,0x3
  004ad67f: 8b ca                                           mov    ecx,edx
  004ad681: c1 e9 1f                                        shr    ecx,0x1f
  004ad684: 03 d1                                           add    edx,ecx
  004ad686: 89 55 f4                                        mov    DWORD PTR [ebp-0xc],edx
  004ad689: 75 2d                                           jne    0x4ad6b8
  004ad68b: 8b 06                                           mov    eax,DWORD PTR [esi]
  004ad68d: 85 c0                                           test   eax,eax
  004ad68f: 74 18                                           je     0x4ad6a9
  004ad691: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad694: 52                                              push   edx
  004ad695: 50                                              push   eax
  004ad696: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004ad699: e8 c2 e8 ff ff                                  call   0x4abf60
  004ad69e: 8b 06                                           mov    eax,DWORD PTR [esi]
  004ad6a0: 50                                              push   eax
  004ad6a1: e8 ba 49 f9 ff                                  call   0x442060
  004ad6a6: 83 c4 04                                        add    esp,0x4
  004ad6a9: 33 c0                                           xor    eax,eax
  004ad6ab: 89 06                                           mov    DWORD PTR [esi],eax
  004ad6ad: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004ad6b0: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad6b3: e9 43 01 00 00                                  jmp    0x4ad7fb
  004ad6b8: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004ad6ba: 85 c9                                           test   ecx,ecx
  004ad6bc: 75 04                                           jne    0x4ad6c2
  004ad6be: 33 d2                                           xor    edx,edx
  004ad6c0: eb 16                                           jmp    0x4ad6d8
  004ad6c2: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad6c5: 2b d1                                           sub    edx,ecx
  004ad6c7: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad6cc: f7 ea                                           imul   edx
  004ad6ce: c1 fa 03                                        sar    edx,0x3
  004ad6d1: 8b c2                                           mov    eax,edx
  004ad6d3: c1 e8 1f                                        shr    eax,0x1f
  004ad6d6: 03 d0                                           add    edx,eax
  004ad6d8: 39 55 f4                                        cmp    DWORD PTR [ebp-0xc],edx
  004ad6db: 77 77                                           ja     0x4ad754
  004ad6dd: 3b 7d f8                                        cmp    edi,DWORD PTR [ebp-0x8]
  004ad6e0: 8b d9                                           mov    ebx,ecx
  004ad6e2: 74 15                                           je     0x4ad6f9
  004ad6e4: 57                                              push   edi
  004ad6e5: 8b cb                                           mov    ecx,ebx
  004ad6e7: e8 e4 e6 ff ff                                  call   0x4abdd0
  004ad6ec: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004ad6ef: 83 c7 2c                                        add    edi,0x2c
  004ad6f2: 83 c3 2c                                        add    ebx,0x2c
  004ad6f5: 3b f8                                           cmp    edi,eax
  004ad6f7: 75 eb                                           jne    0x4ad6e4
  004ad6f9: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ad6fc: 3b d8                                           cmp    ebx,eax
  004ad6fe: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004ad701: 8b fb                                           mov    edi,ebx
  004ad703: 74 12                                           je     0x4ad717
  004ad705: 8b 17                                           mov    edx,DWORD PTR [edi]
  004ad707: 6a 00                                           push   0x0
  004ad709: 8b cf                                           mov    ecx,edi
  004ad70b: ff 12                                           call   DWORD PTR [edx]
  004ad70d: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004ad710: 83 c7 2c                                        add    edi,0x2c
  004ad713: 3b f8                                           cmp    edi,eax
  004ad715: 75 ee                                           jne    0x4ad705
  004ad717: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004ad71a: 8d 48 fc                                        lea    ecx,[eax-0x4]
  004ad71d: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004ad720: 85 c0                                           test   eax,eax
  004ad722: 75 04                                           jne    0x4ad728
  004ad724: 33 d2                                           xor    edx,edx
  004ad726: eb 16                                           jmp    0x4ad73e
  004ad728: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004ad72b: 2b c8                                           sub    ecx,eax
  004ad72d: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad732: f7 e9                                           imul   ecx
  004ad734: c1 fa 03                                        sar    edx,0x3
  004ad737: 8b ca                                           mov    ecx,edx
  004ad739: c1 e9 1f                                        shr    ecx,0x1f
  004ad73c: 03 d1                                           add    edx,ecx
  004ad73e: 8b 5d fc                                        mov    ebx,DWORD PTR [ebp-0x4]
  004ad741: 8d 04 92                                        lea    eax,[edx+edx*4]
  004ad744: 8d 0c 42                                        lea    ecx,[edx+eax*2]
  004ad747: 8b 16                                           mov    edx,DWORD PTR [esi]
  004ad749: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004ad74c: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004ad74f: e9 a7 00 00 00                                  jmp    0x4ad7fb
  004ad754: 85 c9                                           test   ecx,ecx
  004ad756: 75 04                                           jne    0x4ad75c
  004ad758: 33 d2                                           xor    edx,edx
  004ad75a: eb 16                                           jmp    0x4ad772
  004ad75c: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ad75f: 2b d1                                           sub    edx,ecx
  004ad761: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad766: f7 ea                                           imul   edx
  004ad768: c1 fa 03                                        sar    edx,0x3
  004ad76b: 8b c2                                           mov    eax,edx
  004ad76d: c1 e8 1f                                        shr    eax,0x1f
  004ad770: 03 d0                                           add    edx,eax
  004ad772: 39 55 f4                                        cmp    DWORD PTR [ebp-0xc],edx
  004ad775: 77 42                                           ja     0x4ad7b9
  004ad777: 85 c9                                           test   ecx,ecx
  004ad779: 75 04                                           jne    0x4ad77f
  004ad77b: 33 d2                                           xor    edx,edx
  004ad77d: eb 16                                           jmp    0x4ad795
  004ad77f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad782: 2b d1                                           sub    edx,ecx
  004ad784: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad789: f7 ea                                           imul   edx
  004ad78b: c1 fa 03                                        sar    edx,0x3
  004ad78e: 8b c2                                           mov    eax,edx
  004ad790: c1 e8 1f                                        shr    eax,0x1f
  004ad793: 03 d0                                           add    edx,eax
  004ad795: 8d 04 92                                        lea    eax,[edx+edx*4]
  004ad798: 8d 14 42                                        lea    edx,[edx+eax*2]
  004ad79b: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004ad79d: 51                                              push   ecx
  004ad79e: 8d 3c 97                                        lea    edi,[edi+edx*4]
  004ad7a1: 57                                              push   edi
  004ad7a2: 50                                              push   eax
  004ad7a3: e8 e8 e7 ff ff                                  call   0x4abf90
  004ad7a8: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004ad7ab: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ad7ae: 83 c4 0c                                        add    esp,0xc
  004ad7b1: 51                                              push   ecx
  004ad7b2: 50                                              push   eax
  004ad7b3: 57                                              push   edi
  004ad7b4: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004ad7b7: eb 3a                                           jmp    0x4ad7f3
  004ad7b9: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad7bc: 52                                              push   edx
  004ad7bd: 51                                              push   ecx
  004ad7be: 8d 7e fc                                        lea    edi,[esi-0x4]
  004ad7c1: 8b cf                                           mov    ecx,edi
  004ad7c3: e8 98 e7 ff ff                                  call   0x4abf60
  004ad7c8: 8b 06                                           mov    eax,DWORD PTR [esi]
  004ad7ca: 50                                              push   eax
  004ad7cb: e8 90 48 f9 ff                                  call   0x442060
  004ad7d0: 83 c4 04                                        add    esp,0x4
  004ad7d3: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004ad7d6: e8 55 e7 ff ff                                  call   0x4abf30
  004ad7db: 50                                              push   eax
  004ad7dc: 8b cf                                           mov    ecx,edi
  004ad7de: e8 dd da ff ff                                  call   0x4ab2c0
  004ad7e3: 84 c0                                           test   al,al
  004ad7e5: 74 14                                           je     0x4ad7fb
  004ad7e7: 8b 16                                           mov    edx,DWORD PTR [esi]
  004ad7e9: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ad7ec: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004ad7ee: 52                                              push   edx
  004ad7ef: 50                                              push   eax
  004ad7f0: 51                                              push   ecx
  004ad7f1: 8b cf                                           mov    ecx,edi
  004ad7f3: e8 e8 e1 ff ff                                  call   0x4ab9e0
  004ad7f8: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004ad7fb: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004ad7fe: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ad801: 83 c1 2c                                        add    ecx,0x2c
  004ad804: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  004ad807: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004ad80a: 83 c0 2c                                        add    eax,0x2c
  004ad80d: 83 c3 2c                                        add    ebx,0x2c
  004ad810: 83 c6 2c                                        add    esi,0x2c
  004ad813: 3b c1                                           cmp    eax,ecx
  004ad815: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004ad818: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004ad81b: 0f 85 32 fe ff ff                               jne    0x4ad653
  004ad821: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004ad824: 5f                                              pop    edi
  004ad825: 5e                                              pop    esi
  004ad826: 5b                                              pop    ebx
  004ad827: 8b e5                                           mov    esp,ebp
  004ad829: 5d                                              pop    ebp
  004ad82a: c3                                              ret
  004ad82b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004ad82e: 5b                                              pop    ebx
  004ad82f: 8b e5                                           mov    esp,ebp
  004ad831: 5d                                              pop    ebp
  004ad832: c3                                              ret
  004b69f0: 8b 41 50                                        mov    eax,DWORD PTR [ecx+0x50]
  004b69f3: c3                                              ret
  004ce44e: ff 25 cc e3 4d 00                               jmp    DWORD PTR ds:0x4de3cc
