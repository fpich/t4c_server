; PASSE 122, Desassemblage des cibles BRANCHES_DIRECTES_MASQUE justifiees par des instructions sources
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2435 distinct instructions; 43 graph entry points

  0040f6e3: 3b c1                                           cmp    eax,ecx
  0040f6e5: 75 35                                           jne    0x40f71c
  0040f6e7: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0040f6ea: 74 35                                           je     0x40f721
  0040f6ec: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0040f6ef: 89 39                                           mov    DWORD PTR [ecx],edi
  0040f6f1: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0040f6f4: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0040f6f7: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0040f6fa: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0040f6fe: 8b ca                                           mov    ecx,edx
  0040f700: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0040f703: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0040f706: 75 52                                           jne    0x40f75a
  0040f708: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0040f70b: 52                                              push   edx
  0040f70c: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0040f70f: e8 4c 29 03 00                                  call   0x442060
  0040f714: 83 c4 04                                        add    esp,0x4
  0040f717: e9 43 ff ff ff                                  jmp    0x40f65f
  0040f71c: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0040f71f: 75 2d                                           jne    0x40f74e
  0040f721: 3b c1                                           cmp    eax,ecx
  0040f723: 74 29                                           je     0x40f74e
  0040f725: 8b 00                                           mov    eax,DWORD PTR [eax]
  0040f727: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0040f72a: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0040f72d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0040f72f: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0040f732: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0040f735: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0040f738: 75 20                                           jne    0x40f75a
  0040f73a: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0040f73d: 52                                              push   edx
  0040f73e: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0040f741: e8 1a 29 03 00                                  call   0x442060
  0040f746: 83 c4 04                                        add    esp,0x4
  0040f749: e9 11 ff ff ff                                  jmp    0x40f65f
  0040f74e: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  0040f751: 89 7e 24                                        mov    DWORD PTR [esi+0x24],edi
  0040f754: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  0040f757: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0040f75a: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0040f75d: 52                                              push   edx
  0040f75e: e8 fd 28 03 00                                  call   0x442060
  0040f763: 83 c4 04                                        add    esp,0x4
  0040f766: e9 f4 fe ff ff                                  jmp    0x40f65f
  0040f76b: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  0040f76e: 74 04                                           je     0x40f774
  0040f770: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0040f774: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0040f777: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0040f77d: 83 c6 08                                        add    esi,0x8
  0040f780: 56                                              push   esi
  0040f781: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  0040f787: 5f                                              pop    edi
  0040f788: 5e                                              pop    esi
  0040f789: 5b                                              pop    ebx
  0040f78a: c3                                              ret
  0041446b: e8 80 db 02 00                                  call   0x441ff0
  00414470: 83 c4 04                                        add    esp,0x4
  00414473: 3b c3                                           cmp    eax,ebx
  00414475: 74 07                                           je     0x41447e
  00414477: 89 18                                           mov    DWORD PTR [eax],ebx
  00414479: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041447c: eb 02                                           jmp    0x414480
  0041447e: 33 c0                                           xor    eax,eax
  00414480: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00414483: 89 01                                           mov    DWORD PTR [ecx],eax
  00414485: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  00414488: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  0041448b: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  0041448e: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00414491: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00414494: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00414497: 89 18                                           mov    DWORD PTR [eax],ebx
  00414499: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  0041449c: 8b 5d d4                                        mov    ebx,DWORD PTR [ebp-0x2c]
  0041449f: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004144a2: e9 96 fe ff ff                                  jmp    0x41433d
  004144a7: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  004144aa: 85 c0                                           test   eax,eax
  004144ac: 74 04                                           je     0x4144b2
  004144ae: c6 41 34 07                                     mov    BYTE PTR [ecx+0x34],0x7
  004144b2: c7 43 20 00 00 00 00                            mov    DWORD PTR [ebx+0x20],0x0
  004144b9: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004144bb: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004144be: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004144c1: 83 c3 44                                        add    ebx,0x44
  004144c4: 48                                              dec    eax
  004144c5: 89 5d d4                                        mov    DWORD PTR [ebp-0x2c],ebx
  004144c8: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004144cb: 0f 85 53 fe ff ff                               jne    0x414324
  004144d1: 68 a0 15 50 00                                  push   0x5015a0
  004144d6: 68 00 08 00 00                                  push   0x800
  004144db: e8 60 d8 05 00                                  call   0x471d40
  004144e0: 83 c4 08                                        add    esp,0x8
  004144e3: 8b ce                                           mov    ecx,esi
  004144e5: e8 16 72 07 00                                  call   0x48b700
  004144ea: 50                                              push   eax
  004144eb: 57                                              push   edi
  004144ec: 8b ce                                           mov    ecx,esi
  004144ee: e8 3d 9f 07 00                                  call   0x48e430
  004144f3: 85 c0                                           test   eax,eax
  004144f5: 74 07                                           je     0x4144fe
  004144f7: c7 45 e4 01 00 00 00                            mov    DWORD PTR [ebp-0x1c],0x1
  004144fe: 68 90 15 50 00                                  push   0x501590
  00414503: 68 00 08 00 00                                  push   0x800
  00414508: e8 33 d8 05 00                                  call   0x471d40
  0041450d: 83 c4 08                                        add    esp,0x8
  00414510: 8b ce                                           mov    ecx,esi
  00414512: e8 e9 71 07 00                                  call   0x48b700
  00414517: 50                                              push   eax
  00414518: 57                                              push   edi
  00414519: 8b ce                                           mov    ecx,esi
  0041451b: e8 90 a9 07 00                                  call   0x48eeb0
  00414520: 85 c0                                           test   eax,eax
  00414522: 74 07                                           je     0x41452b
  00414524: c7 45 e4 01 00 00 00                            mov    DWORD PTR [ebp-0x1c],0x1
  0041452b: 68 80 15 50 00                                  push   0x501580
  00414530: 68 00 08 00 00                                  push   0x800
  00414535: e8 06 d8 05 00                                  call   0x471d40
  0041453a: 8b 96 c0 03 00 00                               mov    edx,DWORD PTR [esi+0x3c0]
  00414540: 8d 9e c0 03 00 00                               lea    ebx,[esi+0x3c0]
  00414546: 83 c4 08                                        add    esp,0x8
  00414549: 8b cb                                           mov    ecx,ebx
  0041454b: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041454e: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  00414551: 8b 43 24                                        mov    eax,DWORD PTR [ebx+0x24]
  00414554: 51                                              push   ecx
  00414555: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00414558: 68 54 15 50 00                                  push   0x501554
  0041455d: 52                                              push   edx
  0041455e: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  00414561: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  00414568: c6 43 34 08                                     mov    BYTE PTR [ebx+0x34],0x8
  0041456c: e8 23 d5 0b 00                                  call   0x4d1a94
  00414571: 6a 08                                           push   0x8
  00414573: e8 78 da 02 00                                  call   0x441ff0
  00414578: 8b d8                                           mov    ebx,eax
  0041457a: 83 c4 10                                        add    esp,0x10
  0041457d: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  00414580: 85 db                                           test   ebx,ebx
  00414582: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  00414586: 74 0d                                           je     0x414595
  00414588: 8d 4b 04                                        lea    ecx,[ebx+0x4]
  0041458b: e8 ce d4 0b 00                                  call   0x4d1a5e
  00414590: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  00414593: eb 07                                           jmp    0x41459c
  00414595: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  0041459c: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0041459f: 8d 45 ec                                        lea    eax,[ebp-0x14]
  004145a2: 50                                              push   eax
  004145a3: 83 c1 04                                        add    ecx,0x4
  004145a6: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004145aa: e8 97 d4 0b 00                                  call   0x4d1a46
  004145af: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  004145b2: 8b 57 38                                        mov    edx,DWORD PTR [edi+0x38]
  004145b5: 33 db                                           xor    ebx,ebx
  004145b7: 42                                              inc    edx
  004145b8: 3b c3                                           cmp    eax,ebx
  004145ba: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  004145bd: 89 5f 40                                        mov    DWORD PTR [edi+0x40],ebx
  004145c0: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  004145c4: 89 47 2c                                        mov    DWORD PTR [edi+0x2c],eax
  004145c7: 89 57 38                                        mov    DWORD PTR [edi+0x38],edx
  004145ca: 6a 0c                                           push   0xc
  004145cc: 75 28                                           jne    0x4145f6
  004145ce: e8 1d da 02 00                                  call   0x441ff0
  004145d3: 83 c4 04                                        add    esp,0x4
  004145d6: 3b c3                                           cmp    eax,ebx
  004145d8: 74 07                                           je     0x4145e1
  004145da: 89 18                                           mov    DWORD PTR [eax],ebx
  004145dc: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004145df: eb 02                                           jmp    0x4145e3
  004145e1: 33 c0                                           xor    eax,eax
  004145e3: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  004145e6: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  004145e9: 89 47 24                                        mov    DWORD PTR [edi+0x24],eax
  004145ec: 89 18                                           mov    DWORD PTR [eax],ebx
  004145ee: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  004145f1: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  004145f4: eb 2b                                           jmp    0x414621
  004145f6: e8 f5 d9 02 00                                  call   0x441ff0
  004145fb: 83 c4 04                                        add    esp,0x4
  004145fe: 3b c3                                           cmp    eax,ebx
  00414600: 74 07                                           je     0x414609
  00414602: 89 18                                           mov    DWORD PTR [eax],ebx
  00414604: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00414607: eb 02                                           jmp    0x41460b
  00414609: 33 c0                                           xor    eax,eax
  0041460b: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  0041460e: 89 01                                           mov    DWORD PTR [ecx],eax
  00414610: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  00414613: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  00414616: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00414619: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041461c: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  0041461f: 89 18                                           mov    DWORD PTR [eax],ebx
  00414621: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00414624: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00414627: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0041462a: 39 9e 00 04 00 00                               cmp    DWORD PTR [esi+0x400],ebx
  00414630: 74 10                                           je     0x414642
  00414632: 8b 86 e0 03 00 00                               mov    eax,DWORD PTR [esi+0x3e0]
  00414638: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041463a: 89 8e e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],ecx
  00414640: eb 0a                                           jmp    0x41464c
  00414642: c7 86 00 04 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x400],0x1
  0041464c: 39 9e e0 03 00 00                               cmp    DWORD PTR [esi+0x3e0],ebx
  00414652: 0f 84 f3 00 00 00                               je     0x41474b
  00414658: 39 5d e4                                        cmp    DWORD PTR [ebp-0x1c],ebx
  0041465b: 0f 85 ff 00 00 00                               jne    0x414760
  00414661: 8b 96 e0 03 00 00                               mov    edx,DWORD PTR [esi+0x3e0]
  00414667: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0041466a: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041466c: 50                                              push   eax
  0041466d: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  00414670: 50                                              push   eax
  00414671: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00414674: 68 14 15 50 00                                  push   0x501514
  00414679: 51                                              push   ecx
  0041467a: e8 15 d4 0b 00                                  call   0x4d1a94
  0041467f: 6a 08                                           push   0x8
  00414681: e8 6a d9 02 00                                  call   0x441ff0
  00414686: 8b d8                                           mov    ebx,eax
  00414688: 83 c4 14                                        add    esp,0x14
  0041468b: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  0041468e: 85 db                                           test   ebx,ebx
  00414690: c6 45 fc 0e                                     mov    BYTE PTR [ebp-0x4],0xe
  00414694: 74 0f                                           je     0x4146a5
  00414696: 8d 4b 04                                        lea    ecx,[ebx+0x4]
  00414699: e8 c0 d3 0b 00                                  call   0x4d1a5e
  0041469e: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004146a1: 33 db                                           xor    ebx,ebx
  004146a3: eb 05                                           jmp    0x4146aa
  004146a5: 33 db                                           xor    ebx,ebx
  004146a7: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004146aa: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  004146ad: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004146b0: 52                                              push   edx
  004146b1: 8d 48 04                                        lea    ecx,[eax+0x4]
  004146b4: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004146b8: e8 89 d3 0b 00                                  call   0x4d1a46
  004146bd: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  004146c0: 8b 57 38                                        mov    edx,DWORD PTR [edi+0x38]
  004146c3: 42                                              inc    edx
  004146c4: 3b c3                                           cmp    eax,ebx
  004146c6: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  004146c9: 89 5f 40                                        mov    DWORD PTR [edi+0x40],ebx
  004146cc: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  004146d0: 89 47 2c                                        mov    DWORD PTR [edi+0x2c],eax
  004146d3: 89 57 38                                        mov    DWORD PTR [edi+0x38],edx
  004146d6: 6a 0c                                           push   0xc
  004146d8: 75 36                                           jne    0x414710
  004146da: e8 11 d9 02 00                                  call   0x441ff0
  004146df: 83 c4 04                                        add    esp,0x4
  004146e2: 3b c3                                           cmp    eax,ebx
  004146e4: 74 07                                           je     0x4146ed
  004146e6: 89 18                                           mov    DWORD PTR [eax],ebx
  004146e8: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004146eb: eb 02                                           jmp    0x4146ef
  004146ed: 33 c0                                           xor    eax,eax
  004146ef: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  004146f2: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  004146f5: 89 47 24                                        mov    DWORD PTR [edi+0x24],eax
  004146f8: 89 18                                           mov    DWORD PTR [eax],ebx
  004146fa: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  004146fd: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00414700: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00414703: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00414706: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00414709: 33 db                                           xor    ebx,ebx
  0041470b: e9 1a ff ff ff                                  jmp    0x41462a
  00414710: e8 db d8 02 00                                  call   0x441ff0
  00414715: 83 c4 04                                        add    esp,0x4
  00414718: 3b c3                                           cmp    eax,ebx
  0041471a: 74 07                                           je     0x414723
  0041471c: 89 18                                           mov    DWORD PTR [eax],ebx
  0041471e: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00414721: eb 02                                           jmp    0x414725
  00414723: 33 c0                                           xor    eax,eax
  00414725: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  00414728: 89 02                                           mov    DWORD PTR [edx],eax
  0041472a: 8b 4f 2c                                        mov    ecx,DWORD PTR [edi+0x2c]
  0041472d: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00414730: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  00414733: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00414736: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  00414739: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0041473c: 89 1a                                           mov    DWORD PTR [edx],ebx
  0041473e: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00414741: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00414744: 33 db                                           xor    ebx,ebx
  00414746: e9 df fe ff ff                                  jmp    0x41462a
  0041474b: 39 9e 00 04 00 00                               cmp    DWORD PTR [esi+0x400],ebx
  00414751: 74 07                                           je     0x41475a
  00414753: c6 86 f4 03 00 00 07                            mov    BYTE PTR [esi+0x3f4],0x7
  0041475a: 89 9e 00 04 00 00                               mov    DWORD PTR [esi+0x400],ebx
  00414760: 8b 96 c0 03 00 00                               mov    edx,DWORD PTR [esi+0x3c0]
  00414766: 8d 8e c0 03 00 00                               lea    ecx,[esi+0x3c0]
  0041476c: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041476f: 68 04 15 50 00                                  push   0x501504
  00414774: 68 00 08 00 00                                  push   0x800
  00414779: e8 c2 d5 05 00                                  call   0x471d40
  0041477e: 83 c4 08                                        add    esp,0x8
  00414781: 8b ce                                           mov    ecx,esi
  00414783: e8 78 6f 07 00                                  call   0x48b700
  00414788: 50                                              push   eax
  00414789: 57                                              push   edi
  0041478a: 8b ce                                           mov    ecx,esi
  0041478c: e8 4f aa 07 00                                  call   0x48f1e0
  00414791: 68 ec 14 50 00                                  push   0x5014ec
  00414796: 68 00 08 00 00                                  push   0x800
  0041479b: e8 a0 d5 05 00                                  call   0x471d40
  004147a0: 83 c4 08                                        add    esp,0x8
  004147a3: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004147a6: 50                                              push   eax
  004147a7: 8b ce                                           mov    ecx,esi
  004147a9: e8 a2 92 00 00                                  call   0x41da50
  004147ae: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004147b1: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  004147b5: e8 c8 d2 0b 00                                  call   0x4d1a82
  004147ba: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004147bd: e8 ba d2 0b 00                                  call   0x4d1a7c
  004147c2: 51                                              push   ecx
  004147c3: 8d 55 d0                                        lea    edx,[ebp-0x30]
  004147c6: 8b cc                                           mov    ecx,esp
  004147c8: 89 65 e0                                        mov    DWORD PTR [ebp-0x20],esp
  004147cb: 52                                              push   edx
  004147cc: e8 7b d2 0b 00                                  call   0x4d1a4c
  004147d1: 8b 06                                           mov    eax,DWORD PTR [esi]
  004147d3: 8b ce                                           mov    ecx,esi
  004147d5: ff 50 4c                                        call   DWORD PTR [eax+0x4c]
  004147d8: 33 c0                                           xor    eax,eax
  004147da: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004147dd: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  004147e0: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004147e3: e8 a8 da 05 00                                  call   0x472290
  004147e8: 8b 16                                           mov    edx,DWORD PTR [esi]
  004147ea: 8b d8                                           mov    ebx,eax
  004147ec: 8d 45 b0                                        lea    eax,[ebp-0x50]
  004147ef: 50                                              push   eax
  004147f0: 8b ce                                           mov    ecx,esi
  004147f2: ff 52 70                                        call   DWORD PTR [edx+0x70]
  004147f5: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  004147f8: 3b c3                                           cmp    eax,ebx
  004147fa: 76 15                                           jbe    0x414811
  004147fc: 8d 04 80                                        lea    eax,[eax+eax*4]
  004147ff: 8d 0c 80                                        lea    ecx,[eax+eax*4]
  00414802: 8d 04 9b                                        lea    eax,[ebx+ebx*4]
  00414805: 8d 14 80                                        lea    edx,[eax+eax*4]
  00414808: d1 e1                                           shl    ecx,1
  0041480a: d1 e2                                           shl    edx,1
  0041480c: 2b ca                                           sub    ecx,edx
  0041480e: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  00414811: 8b 45 bc                                        mov    eax,DWORD PTR [ebp-0x44]
  00414814: 3b c3                                           cmp    eax,ebx
  00414816: 76 15                                           jbe    0x41482d
  00414818: 8d 04 80                                        lea    eax,[eax+eax*4]
  0041481b: 8d 0c 80                                        lea    ecx,[eax+eax*4]
  0041481e: 8d 04 9b                                        lea    eax,[ebx+ebx*4]
  00414821: 8d 04 80                                        lea    eax,[eax+eax*4]
  00414824: d1 e1                                           shl    ecx,1
  00414826: d1 e0                                           shl    eax,1
  00414828: 2b c8                                           sub    ecx,eax
  0041482a: 89 4d d4                                        mov    DWORD PTR [ebp-0x2c],ecx
  0041482d: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  00414830: 3b c3                                           cmp    eax,ebx
  00414832: 76 15                                           jbe    0x414849
  00414834: 8d 04 80                                        lea    eax,[eax+eax*4]
  00414837: 8d 1c 9b                                        lea    ebx,[ebx+ebx*4]
  0041483a: 8d 04 80                                        lea    eax,[eax+eax*4]
  0041483d: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  00414840: d1 e0                                           shl    eax,1
  00414842: d1 e1                                           shl    ecx,1
  00414844: 2b c1                                           sub    eax,ecx
  00414846: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00414849: 8b 96 64 01 00 00                               mov    edx,DWORD PTR [esi+0x164]
  0041484f: 8b 9e 68 01 00 00                               mov    ebx,DWORD PTR [esi+0x168]
  00414855: 8d 45 c8                                        lea    eax,[ebp-0x38]
  00414858: 50                                              push   eax
  00414859: 8b ce                                           mov    ecx,esi
  0041485b: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  0041485e: e8 ed 91 00 00                                  call   0x41da50
  00414863: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00414865: 89 4d cc                                        mov    DWORD PTR [ebp-0x34],ecx
  00414868: 8b ce                                           mov    ecx,esi
  0041486a: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041486e: e8 8d 6e 07 00                                  call   0x48b700
  00414873: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  00414876: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00414879: 50                                              push   eax
  0041487a: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0041487d: 52                                              push   edx
  0041487e: 8b 55 e0                                        mov    edx,DWORD PTR [ebp-0x20]
  00414881: 50                                              push   eax
  00414882: 51                                              push   ecx
  00414883: 8b 8e 80 00 00 00                               mov    ecx,DWORD PTR [esi+0x80]
  00414889: 53                                              push   ebx
  0041488a: 52                                              push   edx
  0041488b: 33 c0                                           xor    eax,eax
  0041488d: 8a 46 7e                                        mov    al,BYTE PTR [esi+0x7e]
  00414890: 33 d2                                           xor    edx,edx
  00414892: 66 8b 56 7c                                     mov    dx,WORD PTR [esi+0x7c]
  00414896: 50                                              push   eax
  00414897: 51                                              push   ecx
  00414898: 52                                              push   edx
  00414899: 33 c0                                           xor    eax,eax
  0041489b: 66 8b 86 84 00 00 00                            mov    ax,WORD PTR [esi+0x84]
  004148a2: 33 c9                                           xor    ecx,ecx
  004148a4: 66 8b 8e e2 01 00 00                            mov    cx,WORD PTR [esi+0x1e2]
  004148ab: 33 d2                                           xor    edx,edx
  004148ad: 66 8b 96 e0 01 00 00                            mov    dx,WORD PTR [esi+0x1e0]
  004148b4: 50                                              push   eax
  004148b5: 8b 06                                           mov    eax,DWORD PTR [esi]
  004148b7: 51                                              push   ecx
  004148b8: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  004148bb: 52                                              push   edx
  004148bc: 51                                              push   ecx
  004148bd: 8b ce                                           mov    ecx,esi
  004148bf: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004148c2: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  004148c5: 8b 06                                           mov    eax,DWORD PTR [esi]
  004148c7: 52                                              push   edx
  004148c8: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  004148cb: 51                                              push   ecx
  004148cc: 8b ce                                           mov    ecx,esi
  004148ce: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004148d1: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004148d4: 8b 06                                           mov    eax,DWORD PTR [esi]
  004148d6: 52                                              push   edx
  004148d7: 8d 4d 8c                                        lea    ecx,[ebp-0x74]
  004148da: 51                                              push   ecx
  004148db: 8b ce                                           mov    ecx,esi
  004148dd: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004148e0: 8b 10                                           mov    edx,DWORD PTR [eax]
  004148e2: 8b 06                                           mov    eax,DWORD PTR [esi]
  004148e4: 52                                              push   edx
  004148e5: 8b ce                                           mov    ecx,esi
  004148e7: ff 90 04 01 00 00                               call   DWORD PTR [eax+0x104]
  004148ed: 8b 16                                           mov    edx,DWORD PTR [esi]
  004148ef: 50                                              push   eax
  004148f0: 8b ce                                           mov    ecx,esi
  004148f2: ff 92 e4 00 00 00                               call   DWORD PTR [edx+0xe4]
  004148f8: 8b ce                                           mov    ecx,esi
  004148fa: 25 ff ff 00 00                                  and    eax,0xffff
  004148ff: 50                                              push   eax
  00414900: 8b 06                                           mov    eax,DWORD PTR [esi]
  00414902: ff 90 ec 00 00 00                               call   DWORD PTR [eax+0xec]
  00414908: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041490a: 8b ce                                           mov    ecx,esi
  0041490c: 25 ff ff 00 00                                  and    eax,0xffff
  00414911: 50                                              push   eax
  00414912: ff 92 d0 00 00 00                               call   DWORD PTR [edx+0xd0]
  00414918: 50                                              push   eax
  00414919: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041491b: 8b ce                                           mov    ecx,esi
  0041491d: ff 90 d8 00 00 00                               call   DWORD PTR [eax+0xd8]
  00414923: 8b 16                                           mov    edx,DWORD PTR [esi]
  00414925: 50                                              push   eax
  00414926: 8b ce                                           mov    ecx,esi
  00414928: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041492e: 8b ce                                           mov    ecx,esi
  00414930: 25 ff ff 00 00                                  and    eax,0xffff
  00414935: 50                                              push   eax
  00414936: 8b 06                                           mov    eax,DWORD PTR [esi]
  00414938: ff 50 54                                        call   DWORD PTR [eax+0x54]
  0041493b: 89 45 dc                                        mov    DWORD PTR [ebp-0x24],eax
  0041493e: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  00414941: df 6d dc                                        fild   QWORD PTR [ebp-0x24]
  00414944: 83 ec 08                                        sub    esp,0x8
  00414947: 8b ce                                           mov    ecx,esi
  00414949: dd 1c 24                                        fstp   QWORD PTR [esp]
  0041494c: e8 3f 99 07 00                                  call   0x48e290
  00414951: 8b ce                                           mov    ecx,esi
  00414953: 25 ff ff 00 00                                  and    eax,0xffff
  00414958: 50                                              push   eax
  00414959: e8 22 99 07 00                                  call   0x48e280
  0041495e: 8b ce                                           mov    ecx,esi
  00414960: 25 ff ff 00 00                                  and    eax,0xffff
  00414965: 50                                              push   eax
  00414966: e8 05 99 07 00                                  call   0x48e270
  0041496b: 8b ce                                           mov    ecx,esi
  0041496d: 25 ff ff 00 00                                  and    eax,0xffff
  00414972: 50                                              push   eax
  00414973: e8 b8 98 07 00                                  call   0x48e230
  00414978: 8b ce                                           mov    ecx,esi
  0041497a: 25 ff ff 00 00                                  and    eax,0xffff
  0041497f: 50                                              push   eax
  00414980: e8 db 98 07 00                                  call   0x48e260
  00414985: 8b ce                                           mov    ecx,esi
  00414987: 25 ff ff 00 00                                  and    eax,0xffff
  0041498c: 50                                              push   eax
  0041498d: e8 ae 98 07 00                                  call   0x48e240
  00414992: 8b ce                                           mov    ecx,esi
  00414994: 25 ff ff 00 00                                  and    eax,0xffff
  00414999: 50                                              push   eax
  0041499a: e8 b1 98 07 00                                  call   0x48e250
  0041499f: 8b 4d cc                                        mov    ecx,DWORD PTR [ebp-0x34]
  004149a2: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004149a5: 25 ff ff 00 00                                  and    eax,0xffff
  004149aa: 50                                              push   eax
  004149ab: 51                                              push   ecx
  004149ac: 68 54 13 50 00                                  push   0x501354
  004149b1: 52                                              push   edx
  004149b2: e8 dd d0 0b 00                                  call   0x4d1a94
  004149b7: 81 c4 84 00 00 00                               add    esp,0x84
  004149bd: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004149c0: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  004149c4: e8 77 d0 0b 00                                  call   0x4d1a40
  004149c9: 6a 08                                           push   0x8
  004149cb: e8 20 d6 02 00                                  call   0x441ff0
  004149d0: 8b d8                                           mov    ebx,eax
  004149d2: 83 c4 04                                        add    esp,0x4
  004149d5: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  004149d8: 85 db                                           test   ebx,ebx
  004149da: c6 45 fc 11                                     mov    BYTE PTR [ebp-0x4],0x11
  004149de: 74 0d                                           je     0x4149ed
  004149e0: 8d 4b 04                                        lea    ecx,[ebx+0x4]
  004149e3: e8 76 d0 0b 00                                  call   0x4d1a5e
  004149e8: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004149eb: eb 07                                           jmp    0x4149f4
  004149ed: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  004149f4: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  004149f7: 8d 45 ec                                        lea    eax,[ebp-0x14]
  004149fa: 50                                              push   eax
  004149fb: 83 c1 04                                        add    ecx,0x4
  004149fe: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  00414a02: e8 3f d0 0b 00                                  call   0x4d1a46
  00414a07: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  00414a0a: 8b 57 38                                        mov    edx,DWORD PTR [edi+0x38]
  00414a0d: 33 db                                           xor    ebx,ebx
  00414a0f: 42                                              inc    edx
  00414a10: 3b c3                                           cmp    eax,ebx
  00414a12: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00414a15: 89 5f 40                                        mov    DWORD PTR [edi+0x40],ebx
  00414a18: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  00414a1c: 89 47 2c                                        mov    DWORD PTR [edi+0x2c],eax
  00414a1f: 89 57 38                                        mov    DWORD PTR [edi+0x38],edx
  00414a22: 6a 0c                                           push   0xc
  00414a24: 75 28                                           jne    0x414a4e
  00414a26: e8 c5 d5 02 00                                  call   0x441ff0
  00414a2b: 83 c4 04                                        add    esp,0x4
  00414a2e: 3b c3                                           cmp    eax,ebx
  00414a30: 74 07                                           je     0x414a39
  00414a32: 89 18                                           mov    DWORD PTR [eax],ebx
  00414a34: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00414a37: eb 02                                           jmp    0x414a3b
  00414a39: 33 c0                                           xor    eax,eax
  00414a3b: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00414a3e: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  00414a41: 89 47 24                                        mov    DWORD PTR [edi+0x24],eax
  00414a44: 89 18                                           mov    DWORD PTR [eax],ebx
  00414a46: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  00414a49: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  00414a4c: eb 2b                                           jmp    0x414a79
  00414a4e: e8 9d d5 02 00                                  call   0x441ff0
  00414a53: 83 c4 04                                        add    esp,0x4
  00414a56: 3b c3                                           cmp    eax,ebx
  00414a58: 74 07                                           je     0x414a61
  00414a5a: 89 18                                           mov    DWORD PTR [eax],ebx
  00414a5c: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00414a5f: eb 02                                           jmp    0x414a63
  00414a61: 33 c0                                           xor    eax,eax
  00414a63: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00414a66: 89 01                                           mov    DWORD PTR [ecx],eax
  00414a68: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  00414a6b: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  00414a6e: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00414a71: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00414a74: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00414a77: 89 18                                           mov    DWORD PTR [eax],ebx
  00414a79: 39 5d 08                                        cmp    DWORD PTR [ebp+0x8],ebx
  00414a7c: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00414a7f: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00414a82: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00414a85: 74 4c                                           je     0x414ad3
  00414a87: 68 30 13 50 00                                  push   0x501330
  00414a8c: 68 00 08 00 00                                  push   0x800
  00414a91: e8 aa d2 05 00                                  call   0x471d40
  00414a96: 83 c4 08                                        add    esp,0x8
  00414a99: 8d 45 08                                        lea    eax,[ebp+0x8]
  00414a9c: 50                                              push   eax
  00414a9d: 8b ce                                           mov    ecx,esi
  00414a9f: e8 ac 8f 00 00                                  call   0x41da50
  00414aa4: 8b 00                                           mov    eax,DWORD PTR [eax]
  00414aa6: 50                                              push   eax
  00414aa7: 68 04 13 50 00                                  push   0x501304
  00414aac: 6a 04                                           push   0x4
  00414aae: c6 45 fc 12                                     mov    BYTE PTR [ebp-0x4],0x12
  00414ab2: e8 89 d2 05 00                                  call   0x471d40
  00414ab7: 83 c4 0c                                        add    esp,0xc
  00414aba: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00414abd: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  00414ac1: e8 7a cf 0b 00                                  call   0x4d1a40
  00414ac6: 68 f4 12 50 00                                  push   0x5012f4
  00414acb: 56                                              push   esi
  00414acc: 68 a0 3c 41 00                                  push   0x413ca0
  00414ad1: eb 46                                           jmp    0x414b19
  00414ad3: 68 cc 12 50 00                                  push   0x5012cc
  00414ad8: 68 00 08 00 00                                  push   0x800
  00414add: e8 5e d2 05 00                                  call   0x471d40
  00414ae2: 83 c4 08                                        add    esp,0x8
  00414ae5: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00414ae8: 51                                              push   ecx
  00414ae9: 8b ce                                           mov    ecx,esi
  00414aeb: e8 60 8f 00 00                                  call   0x41da50
  00414af0: 8b 00                                           mov    eax,DWORD PTR [eax]
  00414af2: 50                                              push   eax
  00414af3: 68 a0 12 50 00                                  push   0x5012a0
  00414af8: 6a 04                                           push   0x4
  00414afa: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  00414afe: e8 3d d2 05 00                                  call   0x471d40
  00414b03: 83 c4 0c                                        add    esp,0xc
  00414b06: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00414b09: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  00414b0d: e8 2e cf 0b 00                                  call   0x4d1a40
  00414b12: 68 f4 12 50 00                                  push   0x5012f4
  00414b17: 56                                              push   esi
  00414b18: 53                                              push   ebx
  00414b19: 57                                              push   edi
  00414b1a: b9 78 14 51 00                                  mov    ecx,0x511478
  00414b1f: e8 cc a6 03 00                                  call   0x44f1f0
  00414b24: 8b 4d c4                                        mov    ecx,DWORD PTR [ebp-0x3c]
  00414b27: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00414b29: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00414b2c: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00414b2f: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00414b33: e8 08 cf 0b 00                                  call   0x4d1a40
  00414b38: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00414b3b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00414b3f: e8 fc ce 0b 00                                  call   0x4d1a40
  00414b44: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00414b47: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00414b4e: e8 ed ce 0b 00                                  call   0x4d1a40
  00414b53: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00414b56: 5f                                              pop    edi
  00414b57: 5e                                              pop    esi
  00414b58: 33 c0                                           xor    eax,eax
  00414b5a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00414b61: 5b                                              pop    ebx
  00414b62: 8b e5                                           mov    esp,ebp
  00414b64: 5d                                              pop    ebp
  00414b65: c2 04 00                                        ret    0x4
  0041b1eb: 8b 86 8c 02 00 00                               mov    eax,DWORD PTR [esi+0x28c]
  0041b1f1: 85 c0                                           test   eax,eax
  0041b1f3: 74 1a                                           je     0x41b20f
  0041b1f5: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041b1f8: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b1fa: 50                                              push   eax
  0041b1fb: 6a 00                                           push   0x0
  0041b1fd: 57                                              push   edi
  0041b1fe: 53                                              push   ebx
  0041b1ff: 6a 00                                           push   0x0
  0041b201: 56                                              push   esi
  0041b202: 6a 04                                           push   0x4
  0041b204: 51                                              push   ecx
  0041b205: e8 f6 4d 04 00                                  call   0x460000
  0041b20a: 83 c4 20                                        add    esp,0x20
  0041b20d: eb b8                                           jmp    0x41b1c7
  0041b20f: 8b 86 ac 02 00 00                               mov    eax,DWORD PTR [esi+0x2ac]
  0041b215: 85 c0                                           test   eax,eax
  0041b217: 74 07                                           je     0x41b220
  0041b219: c6 86 a0 02 00 00 07                            mov    BYTE PTR [esi+0x2a0],0x7
  0041b220: 3b de                                           cmp    ebx,esi
  0041b222: c7 86 ac 02 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x2ac],0x0
  0041b22c: 74 0d                                           je     0x41b23b
  0041b22e: 53                                              push   ebx
  0041b22f: 6a 00                                           push   0x0
  0041b231: 57                                              push   edi
  0041b232: 6a 02                                           push   0x2
  0041b234: 8b ce                                           mov    ecx,esi
  0041b236: e8 d5 1e 07 00                                  call   0x48d110
  0041b23b: 5f                                              pop    edi
  0041b23c: 5e                                              pop    esi
  0041b23d: 33 c0                                           xor    eax,eax
  0041b23f: 5b                                              pop    ebx
  0041b240: 5d                                              pop    ebp
  0041b241: c2 08 00                                        ret    0x8
  0041cc73: 8b 86 d0 02 00 00                               mov    eax,DWORD PTR [esi+0x2d0]
  0041cc79: 85 c0                                           test   eax,eax
  0041cc7b: 74 1c                                           je     0x41cc99
  0041cc7d: 8b c8                                           mov    ecx,eax
  0041cc7f: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0041cc82: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041cc84: 50                                              push   eax
  0041cc85: 6a 00                                           push   0x0
  0041cc87: 53                                              push   ebx
  0041cc88: 57                                              push   edi
  0041cc89: 6a 00                                           push   0x0
  0041cc8b: 56                                              push   esi
  0041cc8c: 6a 08                                           push   0x8
  0041cc8e: 52                                              push   edx
  0041cc8f: e8 6c 33 04 00                                  call   0x460000
  0041cc94: 83 c4 20                                        add    esp,0x20
  0041cc97: eb b6                                           jmp    0x41cc4f
  0041cc99: 8b 86 f0 02 00 00                               mov    eax,DWORD PTR [esi+0x2f0]
  0041cc9f: 85 c0                                           test   eax,eax
  0041cca1: 74 07                                           je     0x41ccaa
  0041cca3: c6 86 e4 02 00 00 07                            mov    BYTE PTR [esi+0x2e4],0x7
  0041ccaa: 3b fe                                           cmp    edi,esi
  0041ccac: c7 86 f0 02 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x2f0],0x0
  0041ccb6: 74 0d                                           je     0x41ccc5
  0041ccb8: 57                                              push   edi
  0041ccb9: 6a 00                                           push   0x0
  0041ccbb: 53                                              push   ebx
  0041ccbc: 6a 0e                                           push   0xe
  0041ccbe: 8b ce                                           mov    ecx,esi
  0041ccc0: e8 4b 04 07 00                                  call   0x48d110
  0041ccc5: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ccc7: 8b ce                                           mov    ecx,esi
  0041ccc9: ff 90 d8 00 00 00                               call   DWORD PTR [eax+0xd8]
  0041cccf: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ccd1: 8b ce                                           mov    ecx,esi
  0041ccd3: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0041ccd6: ff 92 cc 00 00 00                               call   DWORD PTR [edx+0xcc]
  0041ccdc: 8b 8e 78 01 00 00                               mov    ecx,DWORD PTR [esi+0x178]
  0041cce2: 85 c9                                           test   ecx,ecx
  0041cce4: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0041cce7: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  0041ccea: 74 1a                                           je     0x41cd06
  0041ccec: e8 ef 7d 03 00                                  call   0x454ae0
  0041ccf1: 25 00 00 00 40                                  and    eax,0x40000000
  0041ccf6: 33 c9                                           xor    ecx,ecx
  0041ccf8: 0b c1                                           or     eax,ecx
  0041ccfa: 75 0a                                           jne    0x41cd06
  0041ccfc: dd 03                                           fld    QWORD PTR [ebx]
  0041ccfe: e8 77 50 0b 00                                  call   0x4d1d7a
  0041cd03: 29 45 0c                                        sub    DWORD PTR [ebp+0xc],eax
  0041cd06: 8b 8e cc 01 00 00                               mov    ecx,DWORD PTR [esi+0x1cc]
  0041cd0c: 85 c9                                           test   ecx,ecx
  0041cd0e: 74 0d                                           je     0x41cd1d
  0041cd10: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041cd12: 6a 00                                           push   0x0
  0041cd14: 53                                              push   ebx
  0041cd15: 57                                              push   edi
  0041cd16: 56                                              push   esi
  0041cd17: 51                                              push   ecx
  0041cd18: 6a 0e                                           push   0xe
  0041cd1a: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041cd1d: 8b 8e d0 01 00 00                               mov    ecx,DWORD PTR [esi+0x1d0]
  0041cd23: 85 c9                                           test   ecx,ecx
  0041cd25: 74 0d                                           je     0x41cd34
  0041cd27: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041cd29: 6a 00                                           push   0x0
  0041cd2b: 53                                              push   ebx
  0041cd2c: 57                                              push   edi
  0041cd2d: 56                                              push   esi
  0041cd2e: 51                                              push   ecx
  0041cd2f: 6a 0e                                           push   0xe
  0041cd31: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0041cd34: 8b 8e b8 01 00 00                               mov    ecx,DWORD PTR [esi+0x1b8]
  0041cd3a: 85 c9                                           test   ecx,ecx
  0041cd3c: 74 0d                                           je     0x41cd4b
  0041cd3e: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041cd40: 6a 00                                           push   0x0
  0041cd42: 53                                              push   ebx
  0041cd43: 57                                              push   edi
  0041cd44: 56                                              push   esi
  0041cd45: 51                                              push   ecx
  0041cd46: 6a 0e                                           push   0xe
  0041cd48: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041cd4b: 8b 8e bc 01 00 00                               mov    ecx,DWORD PTR [esi+0x1bc]
  0041cd51: 85 c9                                           test   ecx,ecx
  0041cd53: 74 0d                                           je     0x41cd62
  0041cd55: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041cd57: 6a 00                                           push   0x0
  0041cd59: 53                                              push   ebx
  0041cd5a: 57                                              push   edi
  0041cd5b: 56                                              push   esi
  0041cd5c: 51                                              push   ecx
  0041cd5d: 6a 0e                                           push   0xe
  0041cd5f: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0041cd62: 8b 8e a0 01 00 00                               mov    ecx,DWORD PTR [esi+0x1a0]
  0041cd68: 85 c9                                           test   ecx,ecx
  0041cd6a: 74 0d                                           je     0x41cd79
  0041cd6c: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041cd6e: 6a 00                                           push   0x0
  0041cd70: 53                                              push   ebx
  0041cd71: 57                                              push   edi
  0041cd72: 56                                              push   esi
  0041cd73: 51                                              push   ecx
  0041cd74: 6a 0e                                           push   0xe
  0041cd76: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041cd79: 8b 8e d8 01 00 00                               mov    ecx,DWORD PTR [esi+0x1d8]
  0041cd7f: 85 c9                                           test   ecx,ecx
  0041cd81: 74 0d                                           je     0x41cd90
  0041cd83: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041cd85: 6a 00                                           push   0x0
  0041cd87: 53                                              push   ebx
  0041cd88: 57                                              push   edi
  0041cd89: 56                                              push   esi
  0041cd8a: 51                                              push   ecx
  0041cd8b: 6a 0e                                           push   0xe
  0041cd8d: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0041cd90: 8b 8e a4 01 00 00                               mov    ecx,DWORD PTR [esi+0x1a4]
  0041cd96: 85 c9                                           test   ecx,ecx
  0041cd98: 74 0d                                           je     0x41cda7
  0041cd9a: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041cd9c: 6a 00                                           push   0x0
  0041cd9e: 53                                              push   ebx
  0041cd9f: 57                                              push   edi
  0041cda0: 56                                              push   esi
  0041cda1: 51                                              push   ecx
  0041cda2: 6a 0e                                           push   0xe
  0041cda4: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041cda7: 8b 8e a8 01 00 00                               mov    ecx,DWORD PTR [esi+0x1a8]
  0041cdad: 85 c9                                           test   ecx,ecx
  0041cdaf: 74 0d                                           je     0x41cdbe
  0041cdb1: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041cdb3: 6a 00                                           push   0x0
  0041cdb5: 53                                              push   ebx
  0041cdb6: 57                                              push   edi
  0041cdb7: 56                                              push   esi
  0041cdb8: 51                                              push   ecx
  0041cdb9: 6a 0e                                           push   0xe
  0041cdbb: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0041cdbe: 8b 8e ac 01 00 00                               mov    ecx,DWORD PTR [esi+0x1ac]
  0041cdc4: 85 c9                                           test   ecx,ecx
  0041cdc6: 74 0d                                           je     0x41cdd5
  0041cdc8: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041cdca: 6a 00                                           push   0x0
  0041cdcc: 53                                              push   ebx
  0041cdcd: 57                                              push   edi
  0041cdce: 56                                              push   esi
  0041cdcf: 51                                              push   ecx
  0041cdd0: 6a 0e                                           push   0xe
  0041cdd2: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041cdd5: 8b 8e b0 01 00 00                               mov    ecx,DWORD PTR [esi+0x1b0]
  0041cddb: 85 c9                                           test   ecx,ecx
  0041cddd: 74 0d                                           je     0x41cdec
  0041cddf: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041cde1: 6a 00                                           push   0x0
  0041cde3: 53                                              push   ebx
  0041cde4: 57                                              push   edi
  0041cde5: 56                                              push   esi
  0041cde6: 51                                              push   ecx
  0041cde7: 6a 0e                                           push   0xe
  0041cde9: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0041cdec: 8b 8e c0 01 00 00                               mov    ecx,DWORD PTR [esi+0x1c0]
  0041cdf2: 3b 8e c4 01 00 00                               cmp    ecx,DWORD PTR [esi+0x1c4]
  0041cdf8: 75 06                                           jne    0x41ce00
  0041cdfa: 85 c9                                           test   ecx,ecx
  0041cdfc: 74 2a                                           je     0x41ce28
  0041cdfe: eb 1b                                           jmp    0x41ce1b
  0041ce00: 85 c9                                           test   ecx,ecx
  0041ce02: 74 0d                                           je     0x41ce11
  0041ce04: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041ce06: 6a 00                                           push   0x0
  0041ce08: 53                                              push   ebx
  0041ce09: 57                                              push   edi
  0041ce0a: 56                                              push   esi
  0041ce0b: 51                                              push   ecx
  0041ce0c: 6a 0e                                           push   0xe
  0041ce0e: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0041ce11: 8b 8e c4 01 00 00                               mov    ecx,DWORD PTR [esi+0x1c4]
  0041ce17: 85 c9                                           test   ecx,ecx
  0041ce19: 74 0d                                           je     0x41ce28
  0041ce1b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041ce1d: 6a 00                                           push   0x0
  0041ce1f: 53                                              push   ebx
  0041ce20: 57                                              push   edi
  0041ce21: 56                                              push   esi
  0041ce22: 51                                              push   ecx
  0041ce23: 6a 0e                                           push   0xe
  0041ce25: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041ce28: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041ce2b: 85 c0                                           test   eax,eax
  0041ce2d: 7d 07                                           jge    0x41ce36
  0041ce2f: c7 45 0c 00 00 00 00                            mov    DWORD PTR [ebp+0xc],0x0
  0041ce36: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041ce39: e8 b2 8f 06 00                                  call   0x485df0
  0041ce3e: 6a 21                                           push   0x21
  0041ce40: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041ce43: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041ce4a: e8 01 93 06 00                                  call   0x486150
  0041ce4f: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041ce52: 51                                              push   ecx
  0041ce53: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041ce56: e8 95 93 06 00                                  call   0x4861f0
  0041ce5b: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0041ce5e: 52                                              push   edx
  0041ce5f: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041ce62: e8 89 93 06 00                                  call   0x4861f0
  0041ce67: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ce69: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041ce6c: 51                                              push   ecx
  0041ce6d: 8b ce                                           mov    ecx,esi
  0041ce6f: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  0041ce75: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041ce78: e8 43 90 06 00                                  call   0x485ec0
  0041ce7d: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0041ce80: 85 c9                                           test   ecx,ecx
  0041ce82: 74 78                                           je     0x41cefc
  0041ce84: 8b 41 44                                        mov    eax,DWORD PTR [ecx+0x44]
  0041ce87: 85 c0                                           test   eax,eax
  0041ce89: 74 71                                           je     0x41cefc
  0041ce8b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041ce8e: 85 c0                                           test   eax,eax
  0041ce90: 7f 5a                                           jg     0x41ceec
  0041ce92: e8 49 7c 03 00                                  call   0x454ae0
  0041ce97: 25 00 00 00 40                                  and    eax,0x40000000
  0041ce9c: 33 c9                                           xor    ecx,ecx
  0041ce9e: 0b c1                                           or     eax,ecx
  0041cea0: 75 4a                                           jne    0x41ceec
  0041cea2: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0041cea5: e8 36 7c 03 00                                  call   0x454ae0
  0041ceaa: 81 e2 80 00 00 00                               and    edx,0x80
  0041ceb0: 33 c0                                           xor    eax,eax
  0041ceb2: 0b c2                                           or     eax,edx
  0041ceb4: 75 36                                           jne    0x41ceec
  0041ceb6: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ceb8: 57                                              push   edi
  0041ceb9: 53                                              push   ebx
  0041ceba: 8b ce                                           mov    ecx,esi
  0041cebc: ff 52 44                                        call   DWORD PTR [edx+0x44]
  0041cebf: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0041cec2: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041cec4: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041cec7: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041ceca: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041ced1: e8 aa 8f 06 00                                  call   0x485e80
  0041ced6: 5f                                              pop    edi
  0041ced7: 5e                                              pop    esi
  0041ced8: 83 c8 ff                                        or     eax,0xffffffff
  0041cedb: 5b                                              pop    ebx
  0041cedc: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041cedf: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041cee6: 8b e5                                           mov    esp,ebp
  0041cee8: 5d                                              pop    ebp
  0041cee9: c2 08 00                                        ret    0x8
  0041ceec: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041ceef: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041cef1: 6a 00                                           push   0x0
  0041cef3: 50                                              push   eax
  0041cef4: 8b ce                                           mov    ecx,esi
  0041cef6: ff 92 dc 00 00 00                               call   DWORD PTR [edx+0xdc]
  0041cefc: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0041ceff: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041cf01: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041cf04: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041cf07: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041cf0e: e8 6d 8f 06 00                                  call   0x485e80
  0041cf13: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041cf16: 5f                                              pop    edi
  0041cf17: 5e                                              pop    esi
  0041cf18: 33 c0                                           xor    eax,eax
  0041cf1a: 5b                                              pop    ebx
  0041cf1b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041cf22: 8b e5                                           mov    esp,ebp
  0041cf24: 5d                                              pop    ebp
  0041cf25: c2 08 00                                        ret    0x8
  0041e073: 8b 86 9c 03 00 00                               mov    eax,DWORD PTR [esi+0x39c]
  0041e079: 85 c0                                           test   eax,eax
  0041e07b: 74 1c                                           je     0x41e099
  0041e07d: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041e080: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041e082: 50                                              push   eax
  0041e083: 6a 00                                           push   0x0
  0041e085: 6a 00                                           push   0x0
  0041e087: 6a 00                                           push   0x0
  0041e089: 6a 00                                           push   0x0
  0041e08b: 56                                              push   esi
  0041e08c: 6a 40                                           push   0x40
  0041e08e: 51                                              push   ecx
  0041e08f: e8 6c 1f 04 00                                  call   0x460000
  0041e094: 83 c4 20                                        add    esp,0x20
  0041e097: eb b6                                           jmp    0x41e04f
  0041e099: 8b 86 bc 03 00 00                               mov    eax,DWORD PTR [esi+0x3bc]
  0041e09f: 85 c0                                           test   eax,eax
  0041e0a1: 74 07                                           je     0x41e0aa
  0041e0a3: c6 86 b0 03 00 00 07                            mov    BYTE PTR [esi+0x3b0],0x7
  0041e0aa: c7 86 bc 03 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x3bc],0x0
  0041e0b4: 5e                                              pop    esi
  0041e0b5: c3                                              ret
  004328c5: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004328c8: 5f                                              pop    edi
  004328c9: 5e                                              pop    esi
  004328ca: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004328d1: 5b                                              pop    ebx
  004328d2: 8b e5                                           mov    esp,ebp
  004328d4: 5d                                              pop    ebp
  004328d5: c2 08 00                                        ret    0x8
  0044c4cf: 8b ce                                           mov    ecx,esi
  0044c4d1: e8 2a 00 00 00                                  call   0x44c500
  0044c4d6: 84 c0                                           test   al,al
  0044c4d8: 75 1a                                           jne    0x44c4f4
  0044c4da: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044c4dc: 6a 00                                           push   0x0
  0044c4de: 6a 1b                                           push   0x1b
  0044c4e0: 8b ce                                           mov    ecx,esi
  0044c4e2: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0044c4e5: 85 c0                                           test   eax,eax
  0044c4e7: 7c 0b                                           jl     0x44c4f4
  0044c4e9: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044c4eb: 6a 01                                           push   0x1
  0044c4ed: 6a 1b                                           push   0x1b
  0044c4ef: 8b ce                                           mov    ecx,esi
  0044c4f1: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0044c4f4: 5f                                              pop    edi
  0044c4f5: 5e                                              pop    esi
  0044c4f6: 5d                                              pop    ebp
  0044c4f7: c2 04 00                                        ret    0x4
  0044e1b6: e8 45 60 fe ff                                  call   0x434200
  0044e1bb: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044e1bd: 68 14 46 51 00                                  push   0x514614
  0044e1c2: 8b c8                                           mov    ecx,eax
  0044e1c4: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0044e1c7: 68 18 46 51 00                                  push   0x514618
  0044e1cc: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  0044e1d2: 8b c6                                           mov    eax,esi
  0044e1d4: 5e                                              pop    esi
  0044e1d5: 8b e5                                           mov    esp,ebp
  0044e1d7: 5d                                              pop    ebp
  0044e1d8: c3                                              ret
  0044ec11: 8a 43 10                                        mov    al,BYTE PTR [ebx+0x10]
  0044ec14: 84 c0                                           test   al,al
  0044ec16: 75 11                                           jne    0x44ec29
  0044ec18: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0044ec1b: 8d 53 0c                                        lea    edx,[ebx+0xc]
  0044ec1e: 52                                              push   edx
  0044ec1f: 50                                              push   eax
  0044ec20: c6 43 10 01                                     mov    BYTE PTR [ebx+0x10],0x1
  0044ec24: e8 25 f8 07 00                                  call   0x4ce44e
  0044ec29: 8b cb                                           mov    ecx,ebx
  0044ec2b: e8 a0 fd ff ff                                  call   0x44e9d0
  0044ec30: 5f                                              pop    edi
  0044ec31: 5e                                              pop    esi
  0044ec32: 5b                                              pop    ebx
  0044ec33: 8b e5                                           mov    esp,ebp
  0044ec35: 5d                                              pop    ebp
  0044ec36: c2 0c 00                                        ret    0xc
  0045a9a8: 8b cf                                           mov    ecx,edi
  0045a9aa: e8 41 c0 05 00                                  call   0x4b69f0
  0045a9af: 3b c6                                           cmp    eax,esi
  0045a9b1: 74 1a                                           je     0x45a9cd
  0045a9b3: 8b 55 18                                        mov    edx,DWORD PTR [ebp+0x18]
  0045a9b6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0045a9b9: 53                                              push   ebx
  0045a9ba: 52                                              push   edx
  0045a9bb: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0045a9be: 50                                              push   eax
  0045a9bf: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045a9c2: 50                                              push   eax
  0045a9c3: 51                                              push   ecx
  0045a9c4: 52                                              push   edx
  0045a9c5: e8 d6 fd ff ff                                  call   0x45a7a0
  0045a9ca: 83 c4 18                                        add    esp,0x18
  0045a9cd: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  0045a9d0: 50                                              push   eax
  0045a9d1: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0045a9d4: 51                                              push   ecx
  0045a9d5: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0045a9d8: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0045a9dc: e8 8f 32 00 00                                  call   0x45dc70
  0045a9e1: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045a9e3: 52                                              push   edx
  0045a9e4: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0045a9e7: 50                                              push   eax
  0045a9e8: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0045a9eb: e8 90 3a 00 00                                  call   0x45e480
  0045a9f0: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0045a9f3: 51                                              push   ecx
  0045a9f4: e8 67 76 fe ff                                  call   0x442060
  0045a9f9: 83 c4 04                                        add    esp,0x4
  0045a9fc: eb 51                                           jmp    0x45aa4f
  0045aa4f: 8d 8d 00 ff ff ff                               lea    ecx,[ebp-0x100]
  0045aa55: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045aa5c: e8 ff ec fa ff                                  call   0x409760
  0045aa61: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045aa64: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045aa6b: 5f                                              pop    edi
  0045aa6c: 5e                                              pop    esi
  0045aa6d: 5b                                              pop    ebx
  0045aa6e: 8b e5                                           mov    esp,ebp
  0045aa70: 5d                                              pop    ebp
  0045aa71: c3                                              ret
  0045adc4: 6a 01                                           push   0x1
  0045adc6: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0045adc9: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045add0: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045add6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045add9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045ade0: 5f                                              pop    edi
  0045ade1: 5e                                              pop    esi
  0045ade2: 5b                                              pop    ebx
  0045ade3: 8b e5                                           mov    esp,ebp
  0045ade5: 5d                                              pop    ebp
  0045ade6: c3                                              ret
  0045b89d: 8d 8d 00 ff ff ff                               lea    ecx,[ebp-0x100]
  0045b8a3: e8 18 de fa ff                                  call   0x4096c0
  0045b8a8: 6a 00                                           push   0x0
  0045b8aa: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0045b8ad: c6 45 fc 21                                     mov    BYTE PTR [ebp-0x4],0x21
  0045b8b1: e8 fa 2a 00 00                                  call   0x45e3b0
  0045b8b6: 8b c8                                           mov    ecx,eax
  0045b8b8: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  0045b8be: 51                                              push   ecx
  0045b8bf: 8b cc                                           mov    ecx,esp
  0045b8c1: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  0045b8c4: 50                                              push   eax
  0045b8c5: e8 9a 61 07 00                                  call   0x4d1a64
  0045b8ca: 8d 8d 00 ff ff ff                               lea    ecx,[ebp-0x100]
  0045b8d0: e8 2b e0 fa ff                                  call   0x409900
  0045b8d5: 8b 55 1c                                        mov    edx,DWORD PTR [ebp+0x1c]
  0045b8d8: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0045b8db: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0045b8de: 52                                              push   edx
  0045b8df: 6a 00                                           push   0x0
  0045b8e1: 6a 00                                           push   0x0
  0045b8e3: 6a 00                                           push   0x0
  0045b8e5: 6a 00                                           push   0x0
  0045b8e7: 6a 00                                           push   0x0
  0045b8e9: 6a 00                                           push   0x0
  0045b8eb: 56                                              push   esi
  0045b8ec: 50                                              push   eax
  0045b8ed: 8d 8d 00 ff ff ff                               lea    ecx,[ebp-0x100]
  0045b8f3: e8 58 0a fb ff                                  call   0x40c350
  0045b8f8: dd 5d 80                                        fstp   QWORD PTR [ebp-0x80]
  0045b8fb: 8d 8d 00 ff ff ff                               lea    ecx,[ebp-0x100]
  0045b901: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0045b904: e8 57 de fa ff                                  call   0x409760
  0045b909: dd 45 80                                        fld    QWORD PTR [ebp-0x80]
  0045b90c: 6a 01                                           push   0x1
  0045b90e: 56                                              push   esi
  0045b90f: e8 66 64 07 00                                  call   0x4d1d7a
  0045b914: 50                                              push   eax
  0045b915: e8 66 b2 fe ff                                  call   0x446b80
  0045b91a: 83 c4 0c                                        add    esp,0xc
  0045b91d: e9 5b ff ff ff                                  jmp    0x45b87d
  00460c7f: 5f                                              pop    edi
  00460c80: 5e                                              pop    esi
  00460c81: 5b                                              pop    ebx
  00460c82: 5d                                              pop    ebp
  00460c83: c3                                              ret
  00462312: 85 ff                                           test   edi,edi
  00462314: 74 2d                                           je     0x462343
  00462316: 8a 47 ff                                        mov    al,BYTE PTR [edi-0x1]
  00462319: 84 c0                                           test   al,al
  0046231b: 74 1c                                           je     0x462339
  0046231d: 3c ff                                           cmp    al,0xff
  0046231f: 74 18                                           je     0x462339
  00462321: fe c8                                           dec    al
  00462323: 88 47 ff                                        mov    BYTE PTR [edi-0x1],al
  00462326: 5f                                              pop    edi
  00462327: 5e                                              pop    esi
  00462328: 8b c3                                           mov    eax,ebx
  0046232a: 5b                                              pop    ebx
  0046232b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0046232e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00462335: 8b e5                                           mov    esp,ebp
  00462337: 5d                                              pop    ebp
  00462338: c3                                              ret
  00462339: 4f                                              dec    edi
  0046233a: 57                                              push   edi
  0046233b: e8 20 fd fd ff                                  call   0x442060
  00462340: 83 c4 04                                        add    esp,0x4
  00462343: 5f                                              pop    edi
  00462344: 5e                                              pop    esi
  00462345: 8b c3                                           mov    eax,ebx
  00462347: 5b                                              pop    ebx
  00462348: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0046234b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00462352: 8b e5                                           mov    esp,ebp
  00462354: 5d                                              pop    ebp
  00462355: c3                                              ret
  00462356: 4f                                              dec    edi
  00462357: 57                                              push   edi
  00462358: e8 03 fd fd ff                                  call   0x442060
  0046235d: 83 c4 04                                        add    esp,0x4
  00462360: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00462363: 5f                                              pop    edi
  00462364: 5e                                              pop    esi
  00462365: 33 c0                                           xor    eax,eax
  00462367: 5b                                              pop    ebx
  00462368: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0046236f: 8b e5                                           mov    esp,ebp
  00462371: 5d                                              pop    ebp
  00462372: c3                                              ret
  00475138: 68 90 01 00 00                                  push   0x190
  0047513d: e8 ae ce fc ff                                  call   0x441ff0
  00475142: 83 c4 04                                        add    esp,0x4
  00475145: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00475148: 33 ff                                           xor    edi,edi
  0047514a: 3b c7                                           cmp    eax,edi
  0047514c: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0047514f: 74 0c                                           je     0x47515d
  00475151: 8b c8                                           mov    ecx,eax
  00475153: e8 f8 51 fe ff                                  call   0x45a350
  00475158: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0047515b: eb 03                                           jmp    0x475160
  0047515d: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  00475160: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00475163: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0047516a: e8 b1 55 fe ff                                  call   0x45a720
  0047516f: 6a 01                                           push   0x1
  00475171: 6a 02                                           push   0x2
  00475173: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00475176: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00475179: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  0047517f: 51                                              push   ecx
  00475180: 8b cc                                           mov    ecx,esp
  00475182: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  00475185: 50                                              push   eax
  00475186: e8 d9 c8 05 00                                  call   0x4d1a64
  0047518b: e8 40 51 01 00                                  call   0x48a2d0
  00475190: 83 c4 0c                                        add    esp,0xc
  00475193: 8b f0                                           mov    esi,eax
  00475195: 66 3b f7                                        cmp    si,di
  00475198: 74 2a                                           je     0x4751c4
  0047519a: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0047519c: 3b c7                                           cmp    eax,edi
  0047519e: 75 05                                           jne    0x4751a5
  004751a0: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004751a5: 50                                              push   eax
  004751a6: 68 9c a2 50 00                                  push   0x50a29c
  004751ab: 6a 04                                           push   0x4
  004751ad: e8 8e cb ff ff                                  call   0x471d40
  004751b2: 56                                              push   esi
  004751b3: e8 88 4f 01 00                                  call   0x48a140
  004751b8: 83 c4 10                                        add    esp,0x10
  004751bb: 81 e6 ff ff 00 00                               and    esi,0xffff
  004751c1: 89 73 f8                                        mov    DWORD PTR [ebx-0x8],esi
  004751c4: 8b 43 14                                        mov    eax,DWORD PTR [ebx+0x14]
  004751c7: 40                                              inc    eax
  004751c8: 50                                              push   eax
  004751c9: e8 32 93 05 00                                  call   0x4ce500
  004751ce: 8b d0                                           mov    edx,eax
  004751d0: 8b 43 10                                        mov    eax,DWORD PTR [ebx+0x10]
  004751d3: 83 c4 04                                        add    esp,0x4
  004751d6: 3b c7                                           cmp    eax,edi
  004751d8: 8b 3d d8 e4 4d 00                               mov    edi,DWORD PTR ds:0x4de4d8
  004751de: 74 02                                           je     0x4751e2
  004751e0: 8b f8                                           mov    edi,eax
  004751e2: 83 c9 ff                                        or     ecx,0xffffffff
  004751e5: 33 c0                                           xor    eax,eax
  004751e7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004751e9: f7 d1                                           not    ecx
  004751eb: 2b f9                                           sub    edi,ecx
  004751ed: 8b c1                                           mov    eax,ecx
  004751ef: c1 e9 02                                        shr    ecx,0x2
  004751f2: 8b f7                                           mov    esi,edi
  004751f4: 8b fa                                           mov    edi,edx
  004751f6: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004751f8: 8b c8                                           mov    ecx,eax
  004751fa: 83 e1 03                                        and    ecx,0x3
  004751fd: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004751ff: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00475202: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00475205: 8b 4b 1c                                        mov    ecx,DWORD PTR [ebx+0x1c]
  00475208: 89 8e c8 00 00 00                               mov    DWORD PTR [esi+0xc8],ecx
  0047520e: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  00475211: 89 96 d0 00 00 00                               mov    DWORD PTR [esi+0xd0],edx
  00475217: 8b 43 24                                        mov    eax,DWORD PTR [ebx+0x24]
  0047521a: 89 86 cc 00 00 00                               mov    DWORD PTR [esi+0xcc],eax
  00475220: 8b 4b 28                                        mov    ecx,DWORD PTR [ebx+0x28]
  00475223: 89 8e c0 00 00 00                               mov    DWORD PTR [esi+0xc0],ecx
  00475229: 8b 53 2c                                        mov    edx,DWORD PTR [ebx+0x2c]
  0047522c: 89 96 c4 00 00 00                               mov    DWORD PTR [esi+0xc4],edx
  00475232: 8b 43 30                                        mov    eax,DWORD PTR [ebx+0x30]
  00475235: 89 86 d8 00 00 00                               mov    DWORD PTR [esi+0xd8],eax
  0047523b: 8b 4b 34                                        mov    ecx,DWORD PTR [ebx+0x34]
  0047523e: 89 8e d4 00 00 00                               mov    DWORD PTR [esi+0xd4],ecx
  00475244: 8b 53 38                                        mov    edx,DWORD PTR [ebx+0x38]
  00475247: 89 96 dc 00 00 00                               mov    DWORD PTR [esi+0xdc],edx
  0047524d: 8b 43 3c                                        mov    eax,DWORD PTR [ebx+0x3c]
  00475250: 89 86 e8 00 00 00                               mov    DWORD PTR [esi+0xe8],eax
  00475256: 8b 4b 40                                        mov    ecx,DWORD PTR [ebx+0x40]
  00475259: 89 8e e0 00 00 00                               mov    DWORD PTR [esi+0xe0],ecx
  0047525f: 8b 53 44                                        mov    edx,DWORD PTR [ebx+0x44]
  00475262: 89 96 e4 00 00 00                               mov    DWORD PTR [esi+0xe4],edx
  00475268: 8b 43 48                                        mov    eax,DWORD PTR [ebx+0x48]
  0047526b: 89 86 f0 00 00 00                               mov    DWORD PTR [esi+0xf0],eax
  00475271: 8b 4b 4c                                        mov    ecx,DWORD PTR [ebx+0x4c]
  00475274: 89 8e ec 00 00 00                               mov    DWORD PTR [esi+0xec],ecx
  0047527a: 8b 53 50                                        mov    edx,DWORD PTR [ebx+0x50]
  0047527d: 89 96 f4 00 00 00                               mov    DWORD PTR [esi+0xf4],edx
  00475283: 8b 43 54                                        mov    eax,DWORD PTR [ebx+0x54]
  00475286: 89 86 00 01 00 00                               mov    DWORD PTR [esi+0x100],eax
  0047528c: 8b 4b 58                                        mov    ecx,DWORD PTR [ebx+0x58]
  0047528f: 89 8e f8 00 00 00                               mov    DWORD PTR [esi+0xf8],ecx
  00475295: 8b 53 5c                                        mov    edx,DWORD PTR [ebx+0x5c]
  00475298: 89 96 fc 00 00 00                               mov    DWORD PTR [esi+0xfc],edx
  0047529e: 8b 43 60                                        mov    eax,DWORD PTR [ebx+0x60]
  004752a1: 89 86 08 01 00 00                               mov    DWORD PTR [esi+0x108],eax
  004752a7: 8b 4b 64                                        mov    ecx,DWORD PTR [ebx+0x64]
  004752aa: 89 8e 04 01 00 00                               mov    DWORD PTR [esi+0x104],ecx
  004752b0: 8b 53 68                                        mov    edx,DWORD PTR [ebx+0x68]
  004752b3: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004752b6: 8b 43 6c                                        mov    eax,DWORD PTR [ebx+0x6c]
  004752b9: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004752bc: 8b 4b 70                                        mov    ecx,DWORD PTR [ebx+0x70]
  004752bf: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  004752c2: dd 43 74                                        fld    QWORD PTR [ebx+0x74]
  004752c5: e8 b0 ca 05 00                                  call   0x4d1d7a
  004752ca: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004752cd: 8b 53 7c                                        mov    edx,DWORD PTR [ebx+0x7c]
  004752d0: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004752d3: 8b 43 7c                                        mov    eax,DWORD PTR [ebx+0x7c]
  004752d6: 05 88 13 00 00                                  add    eax,0x1388
  004752db: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004752de: 8b 8b 80 00 00 00                               mov    ecx,DWORD PTR [ebx+0x80]
  004752e4: 51                                              push   ecx
  004752e5: e8 76 fd ff ff                                  call   0x475060
  004752ea: 66 89 86 0c 01 00 00                            mov    WORD PTR [esi+0x10c],ax
  004752f1: 8b 93 84 00 00 00                               mov    edx,DWORD PTR [ebx+0x84]
  004752f7: 52                                              push   edx
  004752f8: e8 63 fd ff ff                                  call   0x475060
  004752fd: 66 89 86 0e 01 00 00                            mov    WORD PTR [esi+0x10e],ax
  00475304: 8b 83 88 00 00 00                               mov    eax,DWORD PTR [ebx+0x88]
  0047530a: 50                                              push   eax
  0047530b: e8 50 fd ff ff                                  call   0x475060
  00475310: 66 89 86 10 01 00 00                            mov    WORD PTR [esi+0x110],ax
  00475317: 8b 8b 8c 00 00 00                               mov    ecx,DWORD PTR [ebx+0x8c]
  0047531d: 51                                              push   ecx
  0047531e: e8 3d fd ff ff                                  call   0x475060
  00475323: 66 89 86 12 01 00 00                            mov    WORD PTR [esi+0x112],ax
  0047532a: 8b 93 90 00 00 00                               mov    edx,DWORD PTR [ebx+0x90]
  00475330: 52                                              push   edx
  00475331: e8 2a fd ff ff                                  call   0x475060
  00475336: 66 89 86 14 01 00 00                            mov    WORD PTR [esi+0x114],ax
  0047533d: 8b 83 94 00 00 00                               mov    eax,DWORD PTR [ebx+0x94]
  00475343: 50                                              push   eax
  00475344: e8 17 fd ff ff                                  call   0x475060
  00475349: 66 89 86 16 01 00 00                            mov    WORD PTR [esi+0x116],ax
  00475350: 8b 8b 98 00 00 00                               mov    ecx,DWORD PTR [ebx+0x98]
  00475356: 51                                              push   ecx
  00475357: e8 04 fd ff ff                                  call   0x475060
  0047535c: 66 89 86 18 01 00 00                            mov    WORD PTR [esi+0x118],ax
  00475363: 8b 93 9c 00 00 00                               mov    edx,DWORD PTR [ebx+0x9c]
  00475369: 52                                              push   edx
  0047536a: e8 f1 fc ff ff                                  call   0x475060
  0047536f: 66 89 86 1a 01 00 00                            mov    WORD PTR [esi+0x11a],ax
  00475376: 8a 83 a0 00 00 00                               mov    al,BYTE PTR [ebx+0xa0]
  0047537c: 88 46 50                                        mov    BYTE PTR [esi+0x50],al
  0047537f: 66 8b 8b a4 00 00 00                            mov    cx,WORD PTR [ebx+0xa4]
  00475386: 66 89 4e 52                                     mov    WORD PTR [esi+0x52],cx
  0047538a: 8a 93 a8 00 00 00                               mov    dl,BYTE PTR [ebx+0xa8]
  00475390: 88 56 30                                        mov    BYTE PTR [esi+0x30],dl
  00475393: 8b 83 ac 00 00 00                               mov    eax,DWORD PTR [ebx+0xac]
  00475399: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  0047539c: 8b 8b b0 00 00 00                               mov    ecx,DWORD PTR [ebx+0xb0]
  004753a2: 89 4e 6c                                        mov    DWORD PTR [esi+0x6c],ecx
  004753a5: 8b 93 b4 00 00 00                               mov    edx,DWORD PTR [ebx+0xb4]
  004753ab: 89 56 70                                        mov    DWORD PTR [esi+0x70],edx
  004753ae: 8b 83 b8 00 00 00                               mov    eax,DWORD PTR [ebx+0xb8]
  004753b4: 89 46 74                                        mov    DWORD PTR [esi+0x74],eax
  004753b7: 8b 8b bc 00 00 00                               mov    ecx,DWORD PTR [ebx+0xbc]
  004753bd: 33 c0                                           xor    eax,eax
  004753bf: 89 8e 84 00 00 00                               mov    DWORD PTR [esi+0x84],ecx
  004753c5: 8b 93 c0 00 00 00                               mov    edx,DWORD PTR [ebx+0xc0]
  004753cb: 89 96 88 00 00 00                               mov    DWORD PTR [esi+0x88],edx
  004753d1: 8a 83 c4 00 00 00                               mov    al,BYTE PTR [ebx+0xc4]
  004753d7: 8d 4e 34                                        lea    ecx,[esi+0x34]
  004753da: 8d 56 44                                        lea    edx,[esi+0x44]
  004753dd: c6 46 30 19                                     mov    BYTE PTR [esi+0x30],0x19
  004753e1: c6 46 40 14                                     mov    BYTE PTR [esi+0x40],0x14
  004753e5: 83 c4 20                                        add    esp,0x20
  004753e8: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004753eb: b8 01 00 00 00                                  mov    eax,0x1
  004753f0: 89 01                                           mov    DWORD PTR [ecx],eax
  004753f2: b8 dc 05 00 00                                  mov    eax,0x5dc
  004753f7: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  004753fa: b8 ee 02 00 00                                  mov    eax,0x2ee
  004753ff: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00475402: b8 01 00 00 00                                  mov    eax,0x1
  00475407: 89 02                                           mov    DWORD PTR [edx],eax
  00475409: b8 e8 03 00 00                                  mov    eax,0x3e8
  0047540e: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00475411: b8 90 01 00 00                                  mov    eax,0x190
  00475416: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  00475419: 8b 43 cc                                        mov    eax,DWORD PTR [ebx-0x34]
  0047541c: 3b 43 d0                                        cmp    eax,DWORD PTR [ebx-0x30]
  0047541f: 0f 84 8d 01 00 00                               je     0x4755b2
  00475425: 83 c0 10                                        add    eax,0x10
  00475428: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0047542b: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0047542e: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00475431: 85 c9                                           test   ecx,ecx
  00475433: 74 68                                           je     0x47549d
  00475435: 68 90 00 00 00                                  push   0x90
  0047543a: e8 b1 cb fc ff                                  call   0x441ff0
  0047543f: 8b f8                                           mov    edi,eax
  00475441: 83 c4 04                                        add    esp,0x4
  00475444: 89 7d e4                                        mov    DWORD PTR [ebp-0x1c],edi
  00475447: 85 ff                                           test   edi,edi
  00475449: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00475450: 74 2f                                           je     0x475481
  00475452: 8d 4f 10                                        lea    ecx,[edi+0x10]
  00475455: e8 66 42 f9 ff                                  call   0x4096c0
  0047545a: 33 c0                                           xor    eax,eax
  0047545c: 89 87 80 00 00 00                               mov    DWORD PTR [edi+0x80],eax
  00475462: 89 47 0c                                        mov    DWORD PTR [edi+0xc],eax
  00475465: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  00475468: c7 87 84 00 00 00 64 00 00 00                   mov    DWORD PTR [edi+0x84],0x64
  00475472: c7 07 b0 f5 4d 00                               mov    DWORD PTR [edi],0x4df5b0
  00475478: 66 89 87 88 00 00 00                            mov    WORD PTR [edi+0x88],ax
  0047547f: eb 02                                           jmp    0x475483
  00475481: 33 ff                                           xor    edi,edi
  00475483: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00475486: 66 8b 51 08                                     mov    dx,WORD PTR [ecx+0x8]
  0047548a: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0047548d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00475494: 66 89 97 88 00 00 00                            mov    WORD PTR [edi+0x88],dx
  0047549b: eb 51                                           jmp    0x4754ee
  0047549d: 68 88 00 00 00                                  push   0x88
  004754a2: e8 49 cb fc ff                                  call   0x441ff0
  004754a7: 8b f8                                           mov    edi,eax
  004754a9: 83 c4 04                                        add    esp,0x4
  004754ac: 89 7d e4                                        mov    DWORD PTR [ebp-0x1c],edi
  004754af: 85 ff                                           test   edi,edi
  004754b1: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  004754b8: 74 28                                           je     0x4754e2
  004754ba: 8d 4f 10                                        lea    ecx,[edi+0x10]
  004754bd: e8 fe 41 f9 ff                                  call   0x4096c0
  004754c2: 33 c0                                           xor    eax,eax
  004754c4: c7 07 a8 f5 4d 00                               mov    DWORD PTR [edi],0x4df5a8
  004754ca: 89 87 80 00 00 00                               mov    DWORD PTR [edi+0x80],eax
  004754d0: 89 47 0c                                        mov    DWORD PTR [edi+0xc],eax
  004754d3: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004754d6: c7 87 84 00 00 00 64 00 00 00                   mov    DWORD PTR [edi+0x84],0x64
  004754e0: eb 02                                           jmp    0x4754e4
  004754e2: 33 ff                                           xor    edi,edi
  004754e4: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004754eb: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004754ee: 8b 7d f0                                        mov    edi,DWORD PTR [ebp-0x10]
  004754f1: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004754f4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004754f7: 89 81 84 00 00 00                               mov    DWORD PTR [ecx+0x84],eax
  004754fd: 8b 17                                           mov    edx,DWORD PTR [edi]
  004754ff: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00475502: 8d 4f f0                                        lea    ecx,[edi-0x10]
  00475505: 89 90 80 00 00 00                               mov    DWORD PTR [eax+0x80],edx
  0047550b: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  00475511: 51                                              push   ecx
  00475512: 8b cc                                           mov    ecx,esp
  00475514: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  00475517: 50                                              push   eax
  00475518: e8 47 c5 05 00                                  call   0x4d1a64
  0047551d: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00475520: 83 c1 10                                        add    ecx,0x10
  00475523: e8 d8 43 f9 ff                                  call   0x409900
  00475528: 85 c0                                           test   eax,eax
  0047552a: 75 1c                                           jne    0x475548
  0047552c: 8b 43 10                                        mov    eax,DWORD PTR [ebx+0x10]
  0047552f: 85 c0                                           test   eax,eax
  00475531: 75 05                                           jne    0x475538
  00475533: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00475538: 50                                              push   eax
  00475539: 68 7c a2 50 00                                  push   0x50a27c
  0047553e: 6a 04                                           push   0x4
  00475540: e8 fb c7 ff ff                                  call   0x471d40
  00475545: 83 c4 0c                                        add    esp,0xc
  00475548: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  0047554b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0047554e: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  00475551: 8b 4f 0c                                        mov    ecx,DWORD PTR [edi+0xc]
  00475554: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00475557: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0047555a: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0047555d: 85 c0                                           test   eax,eax
  0047555f: 74 1d                                           je     0x47557e
  00475561: 8d 45 08                                        lea    eax,[ebp+0x8]
  00475564: 50                                              push   eax
  00475565: 8d 8e 90 00 00 00                               lea    ecx,[esi+0x90]
  0047556b: 51                                              push   ecx
  0047556c: 54                                              push   esp
  0047556d: e8 de 19 00 00                                  call   0x476f50
  00475572: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00475575: 51                                              push   ecx
  00475576: 8d 8e 90 00 00 00                               lea    ecx,[esi+0x90]
  0047557c: eb 1b                                           jmp    0x475599
  0047557e: 8d 55 08                                        lea    edx,[ebp+0x8]
  00475581: 52                                              push   edx
  00475582: 8d 8e a0 00 00 00                               lea    ecx,[esi+0xa0]
  00475588: 51                                              push   ecx
  00475589: 54                                              push   esp
  0047558a: e8 c1 19 00 00                                  call   0x476f50
  0047558f: 8d 45 dc                                        lea    eax,[ebp-0x24]
  00475592: 50                                              push   eax
  00475593: 8d 8e a0 00 00 00                               lea    ecx,[esi+0xa0]
  00475599: e8 c2 19 00 00                                  call   0x476f60
  0047559e: 8b 43 d0                                        mov    eax,DWORD PTR [ebx-0x30]
  004755a1: 83 c7 24                                        add    edi,0x24
  004755a4: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  004755a7: 83 c7 f0                                        add    edi,0xfffffff0
  004755aa: 3b f8                                           cmp    edi,eax
  004755ac: 0f 85 79 fe ff ff                               jne    0x47542b
  004755b2: 8b 7b dc                                        mov    edi,DWORD PTR [ebx-0x24]
  004755b5: 3b 7b e0                                        cmp    edi,DWORD PTR [ebx-0x20]
  004755b8: 74 3b                                           je     0x4755f5
  004755ba: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  004755bc: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  004755bf: 8b 47 0c                                        mov    eax,DWORD PTR [edi+0xc]
  004755c2: 89 4d c8                                        mov    DWORD PTR [ebp-0x38],ecx
  004755c5: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004755c8: 51                                              push   ecx
  004755c9: 51                                              push   ecx
  004755ca: 54                                              push   esp
  004755cb: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  004755d1: 89 55 d0                                        mov    DWORD PTR [ebp-0x30],edx
  004755d4: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  004755d7: e8 e4 19 00 00                                  call   0x476fc0
  004755dc: 8d 55 d8                                        lea    edx,[ebp-0x28]
  004755df: 52                                              push   edx
  004755e0: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  004755e6: e8 e5 19 00 00                                  call   0x476fd0
  004755eb: 8b 43 e0                                        mov    eax,DWORD PTR [ebx-0x20]
  004755ee: 83 c7 10                                        add    edi,0x10
  004755f1: 3b f8                                           cmp    edi,eax
  004755f3: 75 c5                                           jne    0x4755ba
  004755f5: 8b 43 ec                                        mov    eax,DWORD PTR [ebx-0x14]
  004755f8: 3b 43 f0                                        cmp    eax,DWORD PTR [ebx-0x10]
  004755fb: 74 16                                           je     0x475613
  004755fd: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004755ff: 89 4e 78                                        mov    DWORD PTR [esi+0x78],ecx
  00475602: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00475605: 33 c9                                           xor    ecx,ecx
  00475607: 89 56 7c                                        mov    DWORD PTR [esi+0x7c],edx
  0047560a: 8a 48 08                                        mov    cl,BYTE PTR [eax+0x8]
  0047560d: 89 8e 80 00 00 00                               mov    DWORD PTR [esi+0x80],ecx
  00475613: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00475615: 85 c0                                           test   eax,eax
  00475617: 75 05                                           jne    0x47561e
  00475619: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0047561e: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00475621: 6a 00                                           push   0x0
  00475623: 6a 01                                           push   0x1
  00475625: 6a 02                                           push   0x2
  00475627: 50                                              push   eax
  00475628: 33 c0                                           xor    eax,eax
  0047562a: 66 8b 43 f8                                     mov    ax,WORD PTR [ebx-0x8]
  0047562e: 52                                              push   edx
  0047562f: 50                                              push   eax
  00475630: e8 5b 46 01 00                                  call   0x489c90
  00475635: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  00475638: 81 c3 08 01 00 00                               add    ebx,0x108
  0047563e: 66 89 06                                        mov    WORD PTR [esi],ax
  00475641: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00475644: 8d 4b c4                                        lea    ecx,[ebx-0x3c]
  00475647: 83 c4 18                                        add    esp,0x18
  0047564a: 3b c8                                           cmp    ecx,eax
  0047564c: 0f 85 e6 fa ff ff                               jne    0x475138
  00475652: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00475655: 5f                                              pop    edi
  00475656: 5e                                              pop    esi
  00475657: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0047565e: 5b                                              pop    ebx
  0047565f: 8b e5                                           mov    esp,ebp
  00475661: 5d                                              pop    ebp
  00475662: c2 04 00                                        ret    0x4
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
  0048d300: ff 8e 00 01 00 00                               dec    DWORD PTR [esi+0x100]
  0048d306: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0048d308: 8b cb                                           mov    ecx,ebx
  0048d30a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0048d311: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0048d314: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048d317: 5f                                              pop    edi
  0048d318: 5e                                              pop    esi
  0048d319: 5b                                              pop    ebx
  0048d31a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048d321: 8b e5                                           mov    esp,ebp
  0048d323: 5d                                              pop    ebp
  0048d324: c2 10 00                                        ret    0x10
  0048d963: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048d966: 5f                                              pop    edi
  0048d967: 5e                                              pop    esi
  0048d968: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048d96f: 5b                                              pop    ebx
  0048d970: 8b e5                                           mov    esp,ebp
  0048d972: 5d                                              pop    ebp
  0048d973: c2 0c 00                                        ret    0xc
  0048e660: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  0048e663: 85 c0                                           test   eax,eax
  0048e665: 74 04                                           je     0x48e66b
  0048e667: c6 43 34 07                                     mov    BYTE PTR [ebx+0x34],0x7
  0048e66b: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0048e66d: 8b cb                                           mov    ecx,ebx
  0048e66f: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  0048e676: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0048e679: 8b 75 d8                                        mov    esi,DWORD PTR [ebp-0x28]
  0048e67c: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048e67e: 8b ce                                           mov    ecx,esi
  0048e680: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0048e683: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0048e686: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0048e68d: e8 ae 33 04 00                                  call   0x4d1a40
  0048e692: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048e695: 5f                                              pop    edi
  0048e696: 5e                                              pop    esi
  0048e697: 33 c0                                           xor    eax,eax
  0048e699: 5b                                              pop    ebx
  0048e69a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048e6a1: 8b e5                                           mov    esp,ebp
  0048e6a3: 5d                                              pop    ebp
  0048e6a4: c2 08 00                                        ret    0x8
  0048ed51: 85 db                                           test   ebx,ebx
  0048ed53: 74 10                                           je     0x48ed65
  0048ed55: 8b ce                                           mov    ecx,esi
  0048ed57: e8 04 aa f7 ff                                  call   0x409760
  0048ed5c: 53                                              push   ebx
  0048ed5d: e8 fe 32 fb ff                                  call   0x442060
  0048ed62: 83 c4 04                                        add    esp,0x4
  0048ed65: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0048ed68: 8b 02                                           mov    eax,DWORD PTR [edx]
  0048ed6a: 3b 87 a4 00 00 00                               cmp    eax,DWORD PTR [edi+0xa4]
  0048ed70: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0048ed73: 0f 85 d9 fe ff ff                               jne    0x48ec52
  0048ed79: 8b 8f f8 00 00 00                               mov    ecx,DWORD PTR [edi+0xf8]
  0048ed7f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0048ed81: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0048ed84: 8b 87 a4 00 00 00                               mov    eax,DWORD PTR [edi+0xa4]
  0048ed8a: 85 c0                                           test   eax,eax
  0048ed8c: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0048ed8f: 75 04                                           jne    0x48ed95
  0048ed91: 33 db                                           xor    ebx,ebx
  0048ed93: eb 02                                           jmp    0x48ed97
  0048ed95: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0048ed97: 3b d8                                           cmp    ebx,eax
  0048ed99: 74 3a                                           je     0x48edd5
  0048ed9b: 8b f3                                           mov    esi,ebx
  0048ed9d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0048eda0: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048eda2: 8b 1b                                           mov    ebx,DWORD PTR [ebx]
  0048eda4: 89 11                                           mov    DWORD PTR [ecx],edx
  0048eda6: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0048eda9: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048edab: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0048edae: 6a 00                                           push   0x0
  0048edb0: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0048edb3: e8 88 1b 00 00                                  call   0x490940
  0048edb8: 56                                              push   esi
  0048edb9: e8 a2 32 fb ff                                  call   0x442060
  0048edbe: 8b 8f a8 00 00 00                               mov    ecx,DWORD PTR [edi+0xa8]
  0048edc4: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0048edc7: 83 c4 04                                        add    esp,0x4
  0048edca: 49                                              dec    ecx
  0048edcb: 3b d8                                           cmp    ebx,eax
  0048edcd: 89 8f a8 00 00 00                               mov    DWORD PTR [edi+0xa8],ecx
  0048edd3: 75 c6                                           jne    0x48ed9b
  0048edd5: 80 7f 73 01                                     cmp    BYTE PTR [edi+0x73],0x1
  0048edd9: 75 07                                           jne    0x48ede2
  0048eddb: 8b cf                                           mov    ecx,edi
  0048eddd: e8 3e 36 f8 ff                                  call   0x412420
  0048ede2: 8b 87 8c 00 00 00                               mov    eax,DWORD PTR [edi+0x8c]
  0048ede8: 8b 8f 88 00 00 00                               mov    ecx,DWORD PTR [edi+0x88]
  0048edee: 8b 17                                           mov    edx,DWORD PTR [edi]
  0048edf0: 50                                              push   eax
  0048edf1: 8b 87 90 00 00 00                               mov    eax,DWORD PTR [edi+0x90]
  0048edf7: 51                                              push   ecx
  0048edf8: 50                                              push   eax
  0048edf9: 8b cf                                           mov    ecx,edi
  0048edfb: ff 52 78                                        call   DWORD PTR [edx+0x78]
  0048edfe: 8a 47 73                                        mov    al,BYTE PTR [edi+0x73]
  0048ee01: 33 f6                                           xor    esi,esi
  0048ee03: 3c 01                                           cmp    al,0x1
  0048ee05: 89 b7 8c 00 00 00                               mov    DWORD PTR [edi+0x8c],esi
  0048ee0b: 89 b7 88 00 00 00                               mov    DWORD PTR [edi+0x88],esi
  0048ee11: 89 b7 90 00 00 00                               mov    DWORD PTR [edi+0x90],esi
  0048ee17: 75 70                                           jne    0x48ee89
  0048ee19: 8b cf                                           mov    ecx,edi
  0048ee1b: e8 00 36 f8 ff                                  call   0x412420
  0048ee20: 8b 17                                           mov    edx,DWORD PTR [edi]
  0048ee22: 56                                              push   esi
  0048ee23: 68 d3 76 00 00                                  push   0x76d3
  0048ee28: 8b cf                                           mov    ecx,edi
  0048ee2a: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0048ee2d: 85 c0                                           test   eax,eax
  0048ee2f: 74 23                                           je     0x48ee54
  0048ee31: 83 ec 0c                                        sub    esp,0xc
  0048ee34: 8b dc                                           mov    ebx,esp
  0048ee36: 56                                              push   esi
  0048ee37: 33 c0                                           xor    eax,eax
  0048ee39: 89 03                                           mov    DWORD PTR [ebx],eax
  0048ee3b: 56                                              push   esi
  0048ee3c: 33 c9                                           xor    ecx,ecx
  0048ee3e: 33 d2                                           xor    edx,edx
  0048ee40: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  0048ee43: 57                                              push   edi
  0048ee44: 68 c8 29 00 00                                  push   0x29c8
  0048ee49: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0048ee4c: e8 0f 27 fd ff                                  call   0x461560
  0048ee51: 83 c4 1c                                        add    esp,0x1c
  0048ee54: 8b 07                                           mov    eax,DWORD PTR [edi]
  0048ee56: 56                                              push   esi
  0048ee57: 68 0b 77 00 00                                  push   0x770b
  0048ee5c: 8b cf                                           mov    ecx,edi
  0048ee5e: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0048ee61: 83 f8 04                                        cmp    eax,0x4
  0048ee64: 7c 23                                           jl     0x48ee89
  0048ee66: 83 ec 0c                                        sub    esp,0xc
  0048ee69: 8b dc                                           mov    ebx,esp
  0048ee6b: 57                                              push   edi
  0048ee6c: 33 c0                                           xor    eax,eax
  0048ee6e: 89 03                                           mov    DWORD PTR [ebx],eax
  0048ee70: 56                                              push   esi
  0048ee71: 33 c9                                           xor    ecx,ecx
  0048ee73: 33 d2                                           xor    edx,edx
  0048ee75: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  0048ee78: 57                                              push   edi
  0048ee79: 68 3f 2a 00 00                                  push   0x2a3f
  0048ee7e: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0048ee81: e8 da 26 fd ff                                  call   0x461560
  0048ee86: 83 c4 1c                                        add    esp,0x1c
  0048ee89: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0048ee8c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0048ee8e: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0048ee91: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048ee94: 5f                                              pop    edi
  0048ee95: 5e                                              pop    esi
  0048ee96: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048ee9d: 5b                                              pop    ebx
  0048ee9e: 8b e5                                           mov    esp,ebp
  0048eea0: 5d                                              pop    ebp
  0048eea1: c3                                              ret
  00490bec: e8 0f 36 fa ff                                  call   0x434200
  00490bf1: 8b 10                                           mov    edx,DWORD PTR [eax]
  00490bf3: 68 04 64 55 00                                  push   0x556404
  00490bf8: 8b c8                                           mov    ecx,eax
  00490bfa: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00490bfd: 68 08 64 55 00                                  push   0x556408
  00490c02: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00490c08: 85 f6                                           test   esi,esi
  00490c0a: 74 09                                           je     0x490c15
  00490c0c: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00490c0f: 5f                                              pop    edi
  00490c10: 5e                                              pop    esi
  00490c11: 8b e5                                           mov    esp,ebp
  00490c13: 5d                                              pop    ebp
  00490c14: c3                                              ret
  00490c15: 5f                                              pop    edi
  00490c16: 5e                                              pop    esi
  00490c17: 33 c0                                           xor    eax,eax
  00490c19: 8b e5                                           mov    esp,ebp
  00490c1b: 5d                                              pop    ebp
  00490c1c: c3                                              ret
  00494098: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049409b: 5f                                              pop    edi
  0049409c: 5e                                              pop    esi
  0049409d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004940a4: 5b                                              pop    ebx
  004940a5: 8b e5                                           mov    esp,ebp
  004940a7: 5d                                              pop    ebp
  004940a8: c2 08 00                                        ret    0x8
  0049f899: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f89f: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0049f8a2: e8 c5 22 03 00                                  call   0x4d1b6c
  0049f8a7: 8b 75 cc                                        mov    esi,DWORD PTR [ebp-0x34]
  0049f8aa: 8b 4e 10                                        mov    ecx,DWORD PTR [esi+0x10]
  0049f8ad: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049f8b0: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049f8b2: 68 ac ee 50 00                                  push   0x50eeac
  0049f8b7: 50                                              push   eax
  0049f8b8: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0049f8bb: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049f8be: 51                                              push   ecx
  0049f8bf: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f8c5: e8 b4 22 03 00                                  call   0x4d1b7e
  0049f8ca: 53                                              push   ebx
  0049f8cb: 68 90 ee 50 00                                  push   0x50ee90
  0049f8d0: 6a 04                                           push   0x4
  0049f8d2: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f8d8: c6 45 fc 22                                     mov    BYTE PTR [ebp-0x4],0x22
  0049f8dc: e8 97 22 03 00                                  call   0x4d1b78
  0049f8e1: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f8e7: e8 7a 22 03 00                                  call   0x4d1b66
  0049f8ec: 85 c0                                           test   eax,eax
  0049f8ee: 0f 85 8e 00 00 00                               jne    0x49f982
  0049f8f4: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f8fa: e8 61 22 03 00                                  call   0x4d1b60
  0049f8ff: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f905: e8 5c 22 03 00                                  call   0x4d1b66
  0049f90a: 85 c0                                           test   eax,eax
  0049f90c: 75 74                                           jne    0x49f982
  0049f90e: 8d 7e 2c                                        lea    edi,[esi+0x2c]
  0049f911: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0049f914: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  0049f917: 52                                              push   edx
  0049f918: 50                                              push   eax
  0049f919: 8d 8d 6c fe ff ff                               lea    ecx,[ebp-0x194]
  0049f91f: e8 ac 70 00 00                                  call   0x4a69d0
  0049f924: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0049f927: 51                                              push   ecx
  0049f928: 8d 95 1c ff ff ff                               lea    edx,[ebp-0xe4]
  0049f92e: 52                                              push   edx
  0049f92f: 8d 8d 6c fe ff ff                               lea    ecx,[ebp-0x194]
  0049f935: c6 45 fc 23                                     mov    BYTE PTR [ebp-0x4],0x23
  0049f939: e8 c2 72 00 00                                  call   0x4a6c00
  0049f93e: 8d 85 6c fe ff ff                               lea    eax,[ebp-0x194]
  0049f944: 50                                              push   eax
  0049f945: 51                                              push   ecx
  0049f946: 54                                              push   esp
  0049f947: 8b cf                                           mov    ecx,edi
  0049f949: e8 82 02 00 00                                  call   0x49fbd0
  0049f94e: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0049f951: 51                                              push   ecx
  0049f952: 8b cf                                           mov    ecx,edi
  0049f954: e8 07 06 00 00                                  call   0x49ff60
  0049f959: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f95f: e8 f0 21 03 00                                  call   0x4d1b54
  0049f964: 8d 8d 6c fe ff ff                               lea    ecx,[ebp-0x194]
  0049f96a: c6 45 fc 22                                     mov    BYTE PTR [ebp-0x4],0x22
  0049f96e: e8 cd 70 00 00                                  call   0x4a6a40
  0049f973: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f979: e8 e8 21 03 00                                  call   0x4d1b66
  0049f97e: 85 c0                                           test   eax,eax
  0049f980: 74 8f                                           je     0x49f911
  0049f982: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  0049f988: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0049f98b: e8 dc 21 03 00                                  call   0x4d1b6c
  0049f990: 8b ce                                           mov    ecx,esi
  0049f992: e8 99 ec ff ff                                  call   0x49e630
  0049f997: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0049f99a: 39 5d d8                                        cmp    DWORD PTR [ebp-0x28],ebx
  0049f99d: 8b f1                                           mov    esi,ecx
  0049f99f: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049f9a1: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0049f9a8: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0049f9ab: 74 4f                                           je     0x49f9fc
  0049f9ad: 8b d0                                           mov    edx,eax
  0049f9af: 3b c2                                           cmp    eax,edx
  0049f9b1: 75 49                                           jne    0x49f9fc
  0049f9b3: 8b 79 04                                        mov    edi,DWORD PTR [ecx+0x4]
  0049f9b6: 38 5f 21                                        cmp    BYTE PTR [edi+0x21],bl
  0049f9b9: 8b f7                                           mov    esi,edi
  0049f9bb: 75 2c                                           jne    0x49f9e9
  0049f9bd: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049f9c0: 52                                              push   edx
  0049f9c1: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0049f9c4: e8 17 3f f8 ff                                  call   0x4238e0
  0049f9c9: 8b 36                                           mov    esi,DWORD PTR [esi]
  0049f9cb: 8d 4f 0c                                        lea    ecx,[edi+0xc]
  0049f9ce: ff 15 f0 e4 4d 00                               call   DWORD PTR ds:0x4de4f0
  0049f9d4: 57                                              push   edi
  0049f9d5: e8 86 26 fa ff                                  call   0x442060
  0049f9da: 8a 46 21                                        mov    al,BYTE PTR [esi+0x21]
  0049f9dd: 83 c4 04                                        add    esp,0x4
  0049f9e0: 3a c3                                           cmp    al,bl
  0049f9e2: 8b fe                                           mov    edi,esi
  0049f9e4: 74 d7                                           je     0x49f9bd
  0049f9e6: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0049f9e9: 89 49 04                                        mov    DWORD PTR [ecx+0x4],ecx
  0049f9ec: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0049f9ef: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  0049f9f2: 89 00                                           mov    DWORD PTR [eax],eax
  0049f9f4: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0049f9f7: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0049f9fa: eb 22                                           jmp    0x49fa1e
  0049f9fc: 3b c6                                           cmp    eax,esi
  0049f9fe: 74 21                                           je     0x49fa21
  0049fa00: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0049fa03: 8b f8                                           mov    edi,eax
  0049fa05: e8 16 48 f8 ff                                  call   0x424220
  0049fa0a: 57                                              push   edi
  0049fa0b: 8d 45 c8                                        lea    eax,[ebp-0x38]
  0049fa0e: 50                                              push   eax
  0049fa0f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0049fa12: e8 49 3a f8 ff                                  call   0x423460
  0049fa17: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049fa1a: 3b c6                                           cmp    eax,esi
  0049fa1c: 75 e2                                           jne    0x49fa00
  0049fa1e: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0049fa21: 51                                              push   ecx
  0049fa22: e8 39 26 fa ff                                  call   0x442060
  0049fa27: 83 c4 04                                        add    esp,0x4
  0049fa2a: 5b                                              pop    ebx
  0049fa2b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049fa2e: 5f                                              pop    edi
  0049fa2f: 5e                                              pop    esi
  0049fa30: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049fa37: 8b e5                                           mov    esp,ebp
  0049fa39: 5d                                              pop    ebp
  0049fa3a: c2 08 00                                        ret    0x8
  004aaecf: 6a 01                                           push   0x1
  004aaed1: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004aaed4: c7 45 fc 19 00 00 00                            mov    DWORD PTR [ebp-0x4],0x19
  004aaedb: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004aaee1: 6a 01                                           push   0x1
  004aaee3: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004aaee6: c6 45 fc 18                                     mov    BYTE PTR [ebp-0x4],0x18
  004aaeea: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004aaef0: 6a 01                                           push   0x1
  004aaef2: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004aaef5: c6 45 fc 17                                     mov    BYTE PTR [ebp-0x4],0x17
  004aaef9: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004aaeff: 6a 01                                           push   0x1
  004aaf01: 8d 8d 7c ff ff ff                               lea    ecx,[ebp-0x84]
  004aaf07: c6 45 fc 16                                     mov    BYTE PTR [ebp-0x4],0x16
  004aaf0b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004aaf11: 6a 01                                           push   0x1
  004aaf13: 8d 8d 6c ff ff ff                               lea    ecx,[ebp-0x94]
  004aaf19: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  004aaf1d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004aaf23: 6a 01                                           push   0x1
  004aaf25: 8d 8d 5c ff ff ff                               lea    ecx,[ebp-0xa4]
  004aaf2b: c6 45 fc 14                                     mov    BYTE PTR [ebp-0x4],0x14
  004aaf2f: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004aaf35: 8b 85 50 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb0]
  004aaf3b: 33 db                                           xor    ebx,ebx
  004aaf3d: 3b c3                                           cmp    eax,ebx
  004aaf3f: 74 1c                                           je     0x4aaf5d
  004aaf41: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004aaf44: 8a 01                                           mov    al,BYTE PTR [ecx]
  004aaf46: 84 c0                                           test   al,al
  004aaf48: 74 0a                                           je     0x4aaf54
  004aaf4a: 3c ff                                           cmp    al,0xff
  004aaf4c: 74 06                                           je     0x4aaf54
  004aaf4e: fe c8                                           dec    al
  004aaf50: 88 01                                           mov    BYTE PTR [ecx],al
  004aaf52: eb 09                                           jmp    0x4aaf5d
  004aaf54: 51                                              push   ecx
  004aaf55: e8 06 71 f9 ff                                  call   0x442060
  004aaf5a: 83 c4 04                                        add    esp,0x4
  004aaf5d: 8b 85 40 ff ff ff                               mov    eax,DWORD PTR [ebp-0xc0]
  004aaf63: 3b c3                                           cmp    eax,ebx
  004aaf65: 89 9d 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],ebx
  004aaf6b: 89 9d 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],ebx
  004aaf71: 89 9d 58 ff ff ff                               mov    DWORD PTR [ebp-0xa8],ebx
  004aaf77: 74 1c                                           je     0x4aaf95
  004aaf79: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004aaf7c: 8a 01                                           mov    al,BYTE PTR [ecx]
  004aaf7e: 84 c0                                           test   al,al
  004aaf80: 74 0a                                           je     0x4aaf8c
  004aaf82: 3c ff                                           cmp    al,0xff
  004aaf84: 74 06                                           je     0x4aaf8c
  004aaf86: fe c8                                           dec    al
  004aaf88: 88 01                                           mov    BYTE PTR [ecx],al
  004aaf8a: eb 09                                           jmp    0x4aaf95
  004aaf8c: 51                                              push   ecx
  004aaf8d: e8 ce 70 f9 ff                                  call   0x442060
  004aaf92: 83 c4 04                                        add    esp,0x4
  004aaf95: 8b 85 30 ff ff ff                               mov    eax,DWORD PTR [ebp-0xd0]
  004aaf9b: 3b c3                                           cmp    eax,ebx
  004aaf9d: 89 9d 40 ff ff ff                               mov    DWORD PTR [ebp-0xc0],ebx
  004aafa3: 89 9d 44 ff ff ff                               mov    DWORD PTR [ebp-0xbc],ebx
  004aafa9: 89 9d 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],ebx
  004aafaf: 74 1c                                           je     0x4aafcd
  004aafb1: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004aafb4: 8a 01                                           mov    al,BYTE PTR [ecx]
  004aafb6: 84 c0                                           test   al,al
  004aafb8: 74 0a                                           je     0x4aafc4
  004aafba: 3c ff                                           cmp    al,0xff
  004aafbc: 74 06                                           je     0x4aafc4
  004aafbe: fe c8                                           dec    al
  004aafc0: 88 01                                           mov    BYTE PTR [ecx],al
  004aafc2: eb 09                                           jmp    0x4aafcd
  004aafc4: 51                                              push   ecx
  004aafc5: e8 96 70 f9 ff                                  call   0x442060
  004aafca: 83 c4 04                                        add    esp,0x4
  004aafcd: 8b bd 18 ff ff ff                               mov    edi,DWORD PTR [ebp-0xe8]
  004aafd3: 3b fb                                           cmp    edi,ebx
  004aafd5: 89 9d 30 ff ff ff                               mov    DWORD PTR [ebp-0xd0],ebx
  004aafdb: 89 9d 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],ebx
  004aafe1: 89 9d 38 ff ff ff                               mov    DWORD PTR [ebp-0xc8],ebx
  004aafe7: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  004aafeb: 74 27                                           je     0x4ab014
  004aafed: 8b b5 1c ff ff ff                               mov    esi,DWORD PTR [ebp-0xe4]
  004aaff3: 3b fe                                           cmp    edi,esi
  004aaff5: 74 14                                           je     0x4ab00b
  004aaff7: 8b 07                                           mov    eax,DWORD PTR [edi]
  004aaff9: 53                                              push   ebx
  004aaffa: 8b cf                                           mov    ecx,edi
  004aaffc: ff 10                                           call   DWORD PTR [eax]
  004aaffe: 83 c7 1c                                        add    edi,0x1c
  004ab001: 3b fe                                           cmp    edi,esi
  004ab003: 75 f2                                           jne    0x4aaff7
  004ab005: 8b bd 18 ff ff ff                               mov    edi,DWORD PTR [ebp-0xe8]
  004ab00b: 57                                              push   edi
  004ab00c: e8 4f 70 f9 ff                                  call   0x442060
  004ab011: 83 c4 04                                        add    esp,0x4
  004ab014: 8b bd 08 ff ff ff                               mov    edi,DWORD PTR [ebp-0xf8]
  004ab01a: 3b fb                                           cmp    edi,ebx
  004ab01c: 89 9d 18 ff ff ff                               mov    DWORD PTR [ebp-0xe8],ebx
  004ab022: 89 9d 1c ff ff ff                               mov    DWORD PTR [ebp-0xe4],ebx
  004ab028: 89 9d 20 ff ff ff                               mov    DWORD PTR [ebp-0xe0],ebx
  004ab02e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004ab035: 74 27                                           je     0x4ab05e
  004ab037: 8b b5 0c ff ff ff                               mov    esi,DWORD PTR [ebp-0xf4]
  004ab03d: 3b fe                                           cmp    edi,esi
  004ab03f: 74 14                                           je     0x4ab055
  004ab041: 8b 17                                           mov    edx,DWORD PTR [edi]
  004ab043: 53                                              push   ebx
  004ab044: 8b cf                                           mov    ecx,edi
  004ab046: ff 12                                           call   DWORD PTR [edx]
  004ab048: 83 c7 2c                                        add    edi,0x2c
  004ab04b: 3b fe                                           cmp    edi,esi
  004ab04d: 75 f2                                           jne    0x4ab041
  004ab04f: 8b bd 08 ff ff ff                               mov    edi,DWORD PTR [ebp-0xf8]
  004ab055: 57                                              push   edi
  004ab056: e8 05 70 f9 ff                                  call   0x442060
  004ab05b: 83 c4 04                                        add    esp,0x4
  004ab05e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ab061: 5f                                              pop    edi
  004ab062: 5e                                              pop    esi
  004ab063: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ab06a: 5b                                              pop    ebx
  004ab06b: 8b e5                                           mov    esp,ebp
  004ab06d: 5d                                              pop    ebp
  004ab06e: c2 0c 00                                        ret    0xc
  004aff9a: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004aff9d: 33 c9                                           xor    ecx,ecx
  004aff9f: 66 8b 4e 2c                                     mov    cx,WORD PTR [esi+0x2c]
  004affa3: 99                                              cdq
  004affa4: 2b c2                                           sub    eax,edx
  004affa6: d1 f8                                           sar    eax,1
  004affa8: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  004affab: d1 e9                                           shr    ecx,1
  004affad: 0f af 4d 14                                     imul   ecx,DWORD PTR [ebp+0x14]
  004affb1: 03 c8                                           add    ecx,eax
  004affb3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004affb6: 8b d0                                           mov    edx,eax
  004affb8: 81 e2 01 00 00 80                               and    edx,0x80000001
  004affbe: 79 05                                           jns    0x4affc5
  004affc0: 4a                                              dec    edx
  004affc1: 83 ca fe                                        or     edx,0xfffffffe
  004affc4: 42                                              inc    edx
  004affc5: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  004affc8: 8a 0c 0a                                        mov    cl,BYTE PTR [edx+ecx*1]
  004affcb: 75 05                                           jne    0x4affd2
  004affcd: c0 e9 04                                        shr    cl,0x4
  004affd0: eb 03                                           jmp    0x4affd5
  004affd2: 80 e1 0f                                        and    cl,0xf
  004affd5: 8b 56 28                                        mov    edx,DWORD PTR [esi+0x28]
  004affd8: 89 55 18                                        mov    DWORD PTR [ebp+0x18],edx
  004affdb: 3b 45 f0                                        cmp    eax,DWORD PTR [ebp-0x10]
  004affde: 0f 8d 14 03 00 00                               jge    0x4b02f8
  004affe4: 33 d2                                           xor    edx,edx
  004affe6: 66 8b 56 2e                                     mov    dx,WORD PTR [esi+0x2e]
  004affea: 39 55 14                                        cmp    DWORD PTR [ebp+0x14],edx
  004affed: 0f 8d 05 03 00 00                               jge    0x4b02f8
  004afff3: 0f be 55 08                                     movsx  edx,BYTE PTR [ebp+0x8]
  004afff7: 4a                                              dec    edx
  004afff8: 0f 84 c0 02 00 00                               je     0x4b02be
  004afffe: 4a                                              dec    edx
  004affff: 0f 84 cb 01 00 00                               je     0x4b01d0
  004b0005: 4a                                              dec    edx
  004b0006: 74 2c                                           je     0x4b0034
  004b0008: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004b000b: 8b 0c 03                                        mov    ecx,DWORD PTR [ebx+eax*1]
  004b000e: 8b 0c 39                                        mov    ecx,DWORD PTR [ecx+edi*1]
  004b0011: e8 ea 0c f6 ff                                  call   0x410d00
  004b0016: 84 c0                                           test   al,al
  004b0018: 0f 84 0c 03 00 00                               je     0x4b032a
  004b001e: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  004b0021: 8b 04 13                                        mov    eax,DWORD PTR [ebx+edx*1]
  004b0024: 8b 0c 38                                        mov    ecx,DWORD PTR [eax+edi*1]
  004b0027: 85 c9                                           test   ecx,ecx
  004b0029: 0f 84 ee 02 00 00                               je     0x4b031d
  004b002f: e9 e3 02 00 00                                  jmp    0x4b0317
  004b0034: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004b0037: 85 c9                                           test   ecx,ecx
  004b0039: 0f 85 18 01 00 00                               jne    0x4b0157
  004b003f: 68 20 01 00 00                                  push   0x120
  004b0044: e8 a7 1f f9 ff                                  call   0x441ff0
  004b0049: 83 c4 04                                        add    esp,0x4
  004b004c: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004b004f: 85 c0                                           test   eax,eax
  004b0051: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  004b0058: 74 0b                                           je     0x4b0065
  004b005a: 8b c8                                           mov    ecx,eax
  004b005c: e8 1f bd f9 ff                                  call   0x44bd80
  004b0061: 8b f8                                           mov    edi,eax
  004b0063: eb 02                                           jmp    0x4b0067
  004b0065: 33 ff                                           xor    edi,edi
  004b0067: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b006a: 8b 07                                           mov    eax,DWORD PTR [edi]
  004b006c: 51                                              push   ecx
  004b006d: 6a 03                                           push   0x3
  004b006f: 8b cf                                           mov    ecx,edi
  004b0071: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004b0078: ff 50 18                                        call   DWORD PTR [eax+0x18]
  004b007b: 85 c0                                           test   eax,eax
  004b007d: 0f 84 be 00 00 00                               je     0x4b0141
  004b0083: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b0086: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b0089: 83 ec 0c                                        sub    esp,0xc
  004b008c: 8b d4                                           mov    edx,esp
  004b008e: 89 02                                           mov    DWORD PTR [edx],eax
  004b0090: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004b0093: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004b0096: 8b ce                                           mov    ecx,esi
  004b0098: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  004b009b: e8 c0 1b 00 00                                  call   0x4b1c60
  004b00a0: 8b cf                                           mov    ecx,edi
  004b00a2: 50                                              push   eax
  004b00a3: e8 d8 f3 fd ff                                  call   0x48f480
  004b00a8: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004b00ab: 8b 17                                           mov    edx,DWORD PTR [edi]
  004b00ad: 83 ec 0c                                        sub    esp,0xc
  004b00b0: 8b c4                                           mov    eax,esp
  004b00b2: 89 08                                           mov    DWORD PTR [eax],ecx
  004b00b4: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b00b7: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004b00ba: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  004b00bd: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  004b00c0: 8b cf                                           mov    ecx,edi
  004b00c2: ff 52 20                                        call   DWORD PTR [edx+0x20]
  004b00c5: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004b00c8: 81 e2 03 00 00 80                               and    edx,0x80000003
  004b00ce: 57                                              push   edi
  004b00cf: 79 05                                           jns    0x4b00d6
  004b00d1: 4a                                              dec    edx
  004b00d2: 83 ca fc                                        or     edx,0xfffffffc
  004b00d5: 42                                              inc    edx
  004b00d6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b00d9: 25 03 00 00 80                                  and    eax,0x80000003
  004b00de: 52                                              push   edx
  004b00df: 79 05                                           jns    0x4b00e6
  004b00e1: 48                                              dec    eax
  004b00e2: 83 c8 fc                                        or     eax,0xfffffffc
  004b00e5: 40                                              inc    eax
  004b00e6: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  004b00e9: 8b 14 0b                                        mov    edx,DWORD PTR [ebx+ecx*1]
  004b00ec: 50                                              push   eax
  004b00ed: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004b00f0: 8b 0c 02                                        mov    ecx,DWORD PTR [edx+eax*1]
  004b00f3: e8 b8 07 f6 ff                                  call   0x4108b0
  004b00f8: 8b 17                                           mov    edx,DWORD PTR [edi]
  004b00fa: 6a 00                                           push   0x0
  004b00fc: 6a 0e                                           push   0xe
  004b00fe: 8b cf                                           mov    ecx,edi
  004b0100: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004b0103: 85 c0                                           test   eax,eax
  004b0105: 74 1e                                           je     0x4b0125
  004b0107: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004b010a: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004b010d: 57                                              push   edi
  004b010e: 83 ec 0c                                        sub    esp,0xc
  004b0111: 8b c4                                           mov    eax,esp
  004b0113: 89 08                                           mov    DWORD PTR [eax],ecx
  004b0115: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  004b0118: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004b011b: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  004b011e: 8b ce                                           mov    ecx,esi
  004b0120: e8 bb f2 ff ff                                  call   0x4af3e0
  004b0125: 8b 16                                           mov    edx,DWORD PTR [esi]
  004b0127: 8b ce                                           mov    ecx,esi
  004b0129: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b012c: 8b c7                                           mov    eax,edi
  004b012e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b0131: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b0138: 5f                                              pop    edi
  004b0139: 5e                                              pop    esi
  004b013a: 5b                                              pop    ebx
  004b013b: 8b e5                                           mov    esp,ebp
  004b013d: 5d                                              pop    ebp
  004b013e: c2 1c 00                                        ret    0x1c
  004b0141: 8b 06                                           mov    eax,DWORD PTR [esi]
  004b0143: 8b ce                                           mov    ecx,esi
  004b0145: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004b0148: 8b 17                                           mov    edx,DWORD PTR [edi]
  004b014a: 8b cf                                           mov    ecx,edi
  004b014c: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  004b0152: e9 da 01 00 00                                  jmp    0x4b0331
  004b0157: 51                                              push   ecx
  004b0158: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b015b: 81 e1 03 00 00 80                               and    ecx,0x80000003
  004b0161: 79 05                                           jns    0x4b0168
  004b0163: 49                                              dec    ecx
  004b0164: 83 c9 fc                                        or     ecx,0xfffffffc
  004b0167: 41                                              inc    ecx
  004b0168: 25 03 00 00 80                                  and    eax,0x80000003
  004b016d: 51                                              push   ecx
  004b016e: 79 05                                           jns    0x4b0175
  004b0170: 48                                              dec    eax
  004b0171: 83 c8 fc                                        or     eax,0xfffffffc
  004b0174: 40                                              inc    eax
  004b0175: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  004b0178: 50                                              push   eax
  004b0179: 8b 04 13                                        mov    eax,DWORD PTR [ebx+edx*1]
  004b017c: 8b 0c 38                                        mov    ecx,DWORD PTR [eax+edi*1]
  004b017f: e8 2c 07 f6 ff                                  call   0x4108b0
  004b0184: 8b 7d 1c                                        mov    edi,DWORD PTR [ebp+0x1c]
  004b0187: 8b 17                                           mov    edx,DWORD PTR [edi]
  004b0189: 6a 00                                           push   0x0
  004b018b: 6a 0e                                           push   0xe
  004b018d: 8b cf                                           mov    ecx,edi
  004b018f: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004b0192: 85 c0                                           test   eax,eax
  004b0194: 74 1e                                           je     0x4b01b4
  004b0196: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004b0199: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004b019c: 57                                              push   edi
  004b019d: 83 ec 0c                                        sub    esp,0xc
  004b01a0: 8b c4                                           mov    eax,esp
  004b01a2: 89 08                                           mov    DWORD PTR [eax],ecx
  004b01a4: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  004b01a7: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004b01aa: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  004b01ad: 8b ce                                           mov    ecx,esi
  004b01af: e8 2c f2 ff ff                                  call   0x4af3e0
  004b01b4: 8b 16                                           mov    edx,DWORD PTR [esi]
  004b01b6: 8b ce                                           mov    ecx,esi
  004b01b8: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b01bb: 8b c7                                           mov    eax,edi
  004b01bd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b01c0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b01c7: 5f                                              pop    edi
  004b01c8: 5e                                              pop    esi
  004b01c9: 5b                                              pop    ebx
  004b01ca: 8b e5                                           mov    esp,ebp
  004b01cc: 5d                                              pop    ebp
  004b01cd: c2 1c 00                                        ret    0x1c
  004b01d0: 84 c9                                           test   cl,cl
  004b01d2: 74 22                                           je     0x4b01f6
  004b01d4: 8b 55 20                                        mov    edx,DWORD PTR [ebp+0x20]
  004b01d7: 85 d2                                           test   edx,edx
  004b01d9: 75 1b                                           jne    0x4b01f6
  004b01db: 80 f9 05                                        cmp    cl,0x5
  004b01de: 74 16                                           je     0x4b01f6
  004b01e0: 80 f9 06                                        cmp    cl,0x6
  004b01e3: 74 11                                           je     0x4b01f6
  004b01e5: 80 f9 07                                        cmp    cl,0x7
  004b01e8: 74 0c                                           je     0x4b01f6
  004b01ea: 8b 06                                           mov    eax,DWORD PTR [esi]
  004b01ec: 8b ce                                           mov    ecx,esi
  004b01ee: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004b01f1: e9 3b 01 00 00                                  jmp    0x4b0331
  004b01f6: 8b 7d 1c                                        mov    edi,DWORD PTR [ebp+0x1c]
  004b01f9: 85 ff                                           test   edi,edi
  004b01fb: 0f 85 c0 00 00 00                               jne    0x4b02c1
  004b0201: 68 54 01 00 00                                  push   0x154
  004b0206: e8 e5 1d f9 ff                                  call   0x441ff0
  004b020b: 83 c4 04                                        add    esp,0x4
  004b020e: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004b0211: 85 c0                                           test   eax,eax
  004b0213: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004b021a: 74 0b                                           je     0x4b0227
  004b021c: 8b c8                                           mov    ecx,eax
  004b021e: e8 dd 20 f8 ff                                  call   0x432300
  004b0223: 8b f8                                           mov    edi,eax
  004b0225: eb 02                                           jmp    0x4b0229
  004b0227: 33 ff                                           xor    edi,edi
  004b0229: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004b022c: 8b 17                                           mov    edx,DWORD PTR [edi]
  004b022e: 50                                              push   eax
  004b022f: 6a 02                                           push   0x2
  004b0231: 8b cf                                           mov    ecx,edi
  004b0233: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004b023a: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004b023d: ff 52 18                                        call   DWORD PTR [edx+0x18]
  004b0240: 85 c0                                           test   eax,eax
  004b0242: 8b 17                                           mov    edx,DWORD PTR [edi]
  004b0244: 74 52                                           je     0x4b0298
  004b0246: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004b0249: 8b 5d 18                                        mov    ebx,DWORD PTR [ebp+0x18]
  004b024c: 83 ec 0c                                        sub    esp,0xc
  004b024f: 8b c4                                           mov    eax,esp
  004b0251: 89 08                                           mov    DWORD PTR [eax],ecx
  004b0253: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b0256: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004b0259: 8b cf                                           mov    ecx,edi
  004b025b: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  004b025e: ff 52 20                                        call   DWORD PTR [edx+0x20]
  004b0261: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b0264: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b0267: 57                                              push   edi
  004b0268: 83 ec 0c                                        sub    esp,0xc
  004b026b: 8b d4                                           mov    edx,esp
  004b026d: 89 02                                           mov    DWORD PTR [edx],eax
  004b026f: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004b0272: 8b ce                                           mov    ecx,esi
  004b0274: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  004b0277: e8 94 ee ff ff                                  call   0x4af110
  004b027c: 8b 06                                           mov    eax,DWORD PTR [esi]
  004b027e: 8b ce                                           mov    ecx,esi
  004b0280: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004b0283: 8b c7                                           mov    eax,edi
  004b0285: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b0288: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b028f: 5f                                              pop    edi
  004b0290: 5e                                              pop    esi
  004b0291: 5b                                              pop    ebx
  004b0292: 8b e5                                           mov    esp,ebp
  004b0294: 5d                                              pop    ebp
  004b0295: c2 1c 00                                        ret    0x1c
  004b0298: 8b cf                                           mov    ecx,edi
  004b029a: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  004b02a0: 8b 06                                           mov    eax,DWORD PTR [esi]
  004b02a2: 8b ce                                           mov    ecx,esi
  004b02a4: 33 ff                                           xor    edi,edi
  004b02a6: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004b02a9: 8b c7                                           mov    eax,edi
  004b02ab: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b02ae: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b02b5: 5f                                              pop    edi
  004b02b6: 5e                                              pop    esi
  004b02b7: 5b                                              pop    ebx
  004b02b8: 8b e5                                           mov    esp,ebp
  004b02ba: 5d                                              pop    ebp
  004b02bb: c2 1c 00                                        ret    0x1c
  004b02be: 8b 7d 1c                                        mov    edi,DWORD PTR [ebp+0x1c]
  004b02c1: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004b02c4: 57                                              push   edi
  004b02c5: 83 ec 0c                                        sub    esp,0xc
  004b02c8: 8b cc                                           mov    ecx,esp
  004b02ca: 89 01                                           mov    DWORD PTR [ecx],eax
  004b02cc: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004b02cf: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004b02d2: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004b02d5: 8b ce                                           mov    ecx,esi
  004b02d7: e8 34 ee ff ff                                  call   0x4af110
  004b02dc: 8b 16                                           mov    edx,DWORD PTR [esi]
  004b02de: 8b ce                                           mov    ecx,esi
  004b02e0: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b02e3: 8b c7                                           mov    eax,edi
  004b02e5: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b02e8: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b02ef: 5f                                              pop    edi
  004b02f0: 5e                                              pop    esi
  004b02f1: 5b                                              pop    ebx
  004b02f2: 8b e5                                           mov    esp,ebp
  004b02f4: 5d                                              pop    ebp
  004b02f5: c2 1c 00                                        ret    0x1c
  004b02f8: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004b02fb: 8b 0c 03                                        mov    ecx,DWORD PTR [ebx+eax*1]
  004b02fe: 8b 0c 39                                        mov    ecx,DWORD PTR [ecx+edi*1]
  004b0301: e8 fa 09 f6 ff                                  call   0x410d00
  004b0306: 84 c0                                           test   al,al
  004b0308: 74 20                                           je     0x4b032a
  004b030a: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  004b030d: 8b 04 13                                        mov    eax,DWORD PTR [ebx+edx*1]
  004b0310: 8b 0c 38                                        mov    ecx,DWORD PTR [eax+edi*1]
  004b0313: 85 c9                                           test   ecx,ecx
  004b0315: 74 06                                           je     0x4b031d
  004b0317: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b0319: 6a 01                                           push   0x1
  004b031b: ff 12                                           call   DWORD PTR [edx]
  004b031d: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004b0320: 8b 0c 03                                        mov    ecx,DWORD PTR [ebx+eax*1]
  004b0323: c7 04 39 00 00 00 00                            mov    DWORD PTR [ecx+edi*1],0x0
  004b032a: 8b 16                                           mov    edx,DWORD PTR [esi]
  004b032c: 8b ce                                           mov    ecx,esi
  004b032e: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b0331: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b0334: 5f                                              pop    edi
  004b0335: 5e                                              pop    esi
  004b0336: 33 c0                                           xor    eax,eax
  004b0338: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b033f: 5b                                              pop    ebx
  004b0340: 8b e5                                           mov    esp,ebp
  004b0342: 5d                                              pop    ebp
  004b0343: c2 1c 00                                        ret    0x1c
  004c3211: 8b 56 68                                        mov    edx,DWORD PTR [esi+0x68]
  004c3214: 52                                              push   edx
  004c3215: e8 46 ee f7 ff                                  call   0x442060
  004c321a: 83 c4 04                                        add    esp,0x4
  004c321d: e9 f4 fe ff ff                                  jmp    0x4c3116
  004c3222: 39 7e 7c                                        cmp    DWORD PTR [esi+0x7c],edi
  004c3225: 74 04                                           je     0x4c322b
  004c3227: c6 46 70 07                                     mov    BYTE PTR [esi+0x70],0x7
  004c322b: 89 7e 7c                                        mov    DWORD PTR [esi+0x7c],edi
  004c322e: c7 46 3c 8c e5 4d 00                            mov    DWORD PTR [esi+0x3c],0x4de58c
  004c3235: 83 c6 44                                        add    esi,0x44
  004c3238: 56                                              push   esi
  004c3239: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  004c323f: 5f                                              pop    edi
  004c3240: 5e                                              pop    esi
  004c3241: 5b                                              pop    ebx
  004c3242: c3                                              ret
  004d21c2: ff 25 c8 e2 4d 00                               jmp    DWORD PTR ds:0x4de2c8
