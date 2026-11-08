; PASSE 87, Cibles directes du systeme et de la logique serveur
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 3056 distinct instructions; 52 graph entry points

  004027d0: 55                                              push   ebp
  004027d1: 8b ec                                           mov    ebp,esp
  004027d3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004027d9: 6a ff                                           push   0xffffffff
  004027db: 68 7b 2f 4d 00                                  push   0x4d2f7b
  004027e0: 50                                              push   eax
  004027e1: b8 38 10 00 00                                  mov    eax,0x1038
  004027e6: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004027ed: e8 be f4 0c 00                                  call   0x4d1cb0
  004027f2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004027f5: 53                                              push   ebx
  004027f6: 56                                              push   esi
  004027f7: 57                                              push   edi
  004027f8: 8d 45 10                                        lea    eax,[ebp+0x10]
  004027fb: 50                                              push   eax
  004027fc: 51                                              push   ecx
  004027fd: 8d 95 bc ef ff ff                               lea    edx,[ebp-0x1044]
  00402803: 68 00 10 00 00                                  push   0x1000
  00402808: 52                                              push   edx
  00402809: ff 15 74 e3 4d 00                               call   DWORD PTR ds:0x4de374
  0040280f: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00402812: 83 c9 ff                                        or     ecx,0xffffffff
  00402815: 33 f6                                           xor    esi,esi
  00402817: 83 c4 10                                        add    esp,0x10
  0040281a: 88 45 e4                                        mov    BYTE PTR [ebp-0x1c],al
  0040281d: 33 c0                                           xor    eax,eax
  0040281f: 8d bd bc ef ff ff                               lea    edi,[ebp-0x1044]
  00402825: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00402827: f7 d1                                           not    ecx
  00402829: 49                                              dec    ecx
  0040282a: 8b d9                                           mov    ebx,ecx
  0040282c: 8d 8d bc ef ff ff                               lea    ecx,[ebp-0x1044]
  00402832: 51                                              push   ecx
  00402833: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00402836: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  00402839: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0040283c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0040283f: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  00402845: 84 c0                                           test   al,al
  00402847: 74 1c                                           je     0x402865
  00402849: 53                                              push   ebx
  0040284a: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0040284d: 8d 95 bc ef ff ff                               lea    edx,[ebp-0x1044]
  00402853: 2b d3                                           sub    edx,ebx
  00402855: 52                                              push   edx
  00402856: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00402859: 50                                              push   eax
  0040285a: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0040285d: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00402863: eb 35                                           jmp    0x40289a
  00402865: 6a 01                                           push   0x1
  00402867: 53                                              push   ebx
  00402868: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0040286b: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00402871: 84 c0                                           test   al,al
  00402873: 74 25                                           je     0x40289a
  00402875: 8b 7d e8                                        mov    edi,DWORD PTR [ebp-0x18]
  00402878: 8b cb                                           mov    ecx,ebx
  0040287a: 8b d1                                           mov    edx,ecx
  0040287c: c1 e9 02                                        shr    ecx,0x2
  0040287f: 8d b5 bc ef ff ff                               lea    esi,[ebp-0x1044]
  00402885: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00402887: 8b ca                                           mov    ecx,edx
  00402889: 83 e1 03                                        and    ecx,0x3
  0040288c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0040288e: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00402891: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00402894: c6 04 18 00                                     mov    BYTE PTR [eax+ebx*1],0x0
  00402898: 33 f6                                           xor    esi,esi
  0040289a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0040289d: 8b 19                                           mov    ebx,DWORD PTR [ecx]
  0040289f: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004028a2: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  004028a5: ff 15 f8 e4 4d 00                               call   DWORD PTR ds:0x4de4f8
  004028ab: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004028ae: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004028b2: ff 15 f8 e4 4d 00                               call   DWORD PTR ds:0x4de4f8
  004028b8: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004028be: 8b 02                                           mov    eax,DWORD PTR [edx]
  004028c0: 50                                              push   eax
  004028c1: 6a 00                                           push   0x0
  004028c3: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004028c6: 51                                              push   ecx
  004028c7: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004028ca: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004028ce: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004028d4: 6a 00                                           push   0x0
  004028d6: ff 15 78 e3 4d 00                               call   DWORD PTR ds:0x4de378
  004028dc: 8d 55 08                                        lea    edx,[ebp+0x8]
  004028df: 52                                              push   edx
  004028e0: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004028e3: ff 15 90 e3 4d 00                               call   DWORD PTR ds:0x4de390
  004028e9: 50                                              push   eax
  004028ea: ff 15 8c e3 4d 00                               call   DWORD PTR ds:0x4de38c
  004028f0: 8b d0                                           mov    edx,eax
  004028f2: 83 c9 ff                                        or     ecx,0xffffffff
  004028f5: 83 c4 0c                                        add    esp,0xc
  004028f8: 33 c0                                           xor    eax,eax
  004028fa: 8b fa                                           mov    edi,edx
  004028fc: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004028fe: f7 d1                                           not    ecx
  00402900: 49                                              dec    ecx
  00402901: 51                                              push   ecx
  00402902: 52                                              push   edx
  00402903: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00402906: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0040290c: 8b 43 14                                        mov    eax,DWORD PTR [ebx+0x14]
  0040290f: 8d 73 14                                        lea    esi,[ebx+0x14]
  00402912: 8b ce                                           mov    ecx,esi
  00402914: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  00402917: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0040291a: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0040291d: 51                                              push   ecx
  0040291e: 51                                              push   ecx
  0040291f: 54                                              push   esp
  00402920: 8b cb                                           mov    ecx,ebx
  00402922: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00402926: e8 45 12 00 00                                  call   0x403b70
  0040292b: 8d 55 dc                                        lea    edx,[ebp-0x24]
  0040292e: 52                                              push   edx
  0040292f: 8b cb                                           mov    ecx,ebx
  00402931: e8 4a 12 00 00                                  call   0x403b80
  00402936: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00402939: 85 c0                                           test   eax,eax
  0040293b: 75 05                                           jne    0x402942
  0040293d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00402942: 50                                              push   eax
  00402943: 68 30 03 50 00                                  push   0x500330
  00402948: 6a 20                                           push   0x20
  0040294a: e8 f1 f3 06 00                                  call   0x471d40
  0040294f: 8b 06                                           mov    eax,DWORD PTR [esi]
  00402951: 83 c4 0c                                        add    esp,0xc
  00402954: 8b ce                                           mov    ecx,esi
  00402956: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0040295a: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0040295d: 6a 01                                           push   0x1
  0040295f: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00402962: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00402966: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0040296c: 6a 01                                           push   0x1
  0040296e: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  00402971: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00402975: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0040297b: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0040297e: 85 c0                                           test   eax,eax
  00402980: 5f                                              pop    edi
  00402981: 5e                                              pop    esi
  00402982: 5b                                              pop    ebx
  00402983: 74 28                                           je     0x4029ad
  00402985: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00402988: 8a 01                                           mov    al,BYTE PTR [ecx]
  0040298a: 84 c0                                           test   al,al
  0040298c: 74 16                                           je     0x4029a4
  0040298e: 3c ff                                           cmp    al,0xff
  00402990: 74 12                                           je     0x4029a4
  00402992: fe c8                                           dec    al
  00402994: 88 01                                           mov    BYTE PTR [ecx],al
  00402996: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00402999: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004029a0: 8b e5                                           mov    esp,ebp
  004029a2: 5d                                              pop    ebp
  004029a3: c3                                              ret
  004029a4: 51                                              push   ecx
  004029a5: e8 b6 f6 03 00                                  call   0x442060
  004029aa: 83 c4 04                                        add    esp,0x4
  004029ad: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004029b0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004029b7: 8b e5                                           mov    esp,ebp
  004029b9: 5d                                              pop    ebp
  004029ba: c3                                              ret
  00403890: 8a 0d 60 13 51 00                               mov    cl,BYTE PTR ds:0x511360
  00403896: b0 01                                           mov    al,0x1
  00403898: 84 c8                                           test   al,cl
  0040389a: 75 21                                           jne    0x4038bd
  0040389c: 8a d1                                           mov    dl,cl
  0040389e: 0a d0                                           or     dl,al
  004038a0: b9 5c 13 51 00                                  mov    ecx,0x51135c
  004038a5: 88 15 60 13 51 00                               mov    BYTE PTR ds:0x511360,dl
  004038ab: e8 00 ee ff ff                                  call   0x4026b0
  004038b0: 68 d0 38 40 00                                  push   0x4038d0
  004038b5: e8 51 e4 0c 00                                  call   0x4d1d0b
  004038ba: 83 c4 04                                        add    esp,0x4
  004038bd: b8 5c 13 51 00                                  mov    eax,0x51135c
  004038c2: c3                                              ret
  0040f9a0: 56                                              push   esi
  0040f9a1: 8b f1                                           mov    esi,ecx
  0040f9a3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0040f9a6: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  0040f9a9: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0040f9ac: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  0040f9af: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0040f9b2: 3b c1                                           cmp    eax,ecx
  0040f9b4: 74 3d                                           je     0x40f9f3
  0040f9b6: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0040f9b9: 74 34                                           je     0x40f9ef
  0040f9bb: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0040f9bd: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0040f9c0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0040f9c3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0040f9c6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0040f9c9: 8b 10                                           mov    edx,DWORD PTR [eax]
  0040f9cb: 89 11                                           mov    DWORD PTR [ecx],edx
  0040f9cd: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0040f9d0: 83 f8 01                                        cmp    eax,0x1
  0040f9d3: 75 0b                                           jne    0x40f9e0
  0040f9d5: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0040f9d8: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0040f9db: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0040f9de: eb 67                                           jmp    0x40fa47
  0040f9e0: 83 f8 02                                        cmp    eax,0x2
  0040f9e3: 75 62                                           jne    0x40fa47
  0040f9e5: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0040f9e8: 8b 02                                           mov    eax,DWORD PTR [edx]
  0040f9ea: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0040f9ed: eb 58                                           jmp    0x40fa47
  0040f9ef: 3b c1                                           cmp    eax,ecx
  0040f9f1: 75 23                                           jne    0x40fa16
  0040f9f3: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0040f9f6: 74 23                                           je     0x40fa1b
  0040f9f8: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0040f9fb: 33 c9                                           xor    ecx,ecx
  0040f9fd: 89 0a                                           mov    DWORD PTR [edx],ecx
  0040f9ff: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0040fa02: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0040fa05: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  0040fa08: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0040fa0b: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0040fa0f: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0040fa12: 75 33                                           jne    0x40fa47
  0040fa14: eb 2e                                           jmp    0x40fa44
  0040fa16: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0040fa19: 75 1e                                           jne    0x40fa39
  0040fa1b: 3b c1                                           cmp    eax,ecx
  0040fa1d: 74 1a                                           je     0x40fa39
  0040fa1f: 8b 00                                           mov    eax,DWORD PTR [eax]
  0040fa21: 33 c9                                           xor    ecx,ecx
  0040fa23: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0040fa26: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0040fa29: 8b 02                                           mov    eax,DWORD PTR [edx]
  0040fa2b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0040fa2e: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0040fa31: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  0040fa35: 75 10                                           jne    0x40fa47
  0040fa37: eb 0b                                           jmp    0x40fa44
  0040fa39: 33 c9                                           xor    ecx,ecx
  0040fa3b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0040fa3e: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  0040fa41: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  0040fa44: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  0040fa47: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  0040fa4a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0040fa4d: 51                                              push   ecx
  0040fa4e: e8 0d 26 03 00                                  call   0x442060
  0040fa53: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0040fa56: 52                                              push   edx
  0040fa57: e8 04 26 03 00                                  call   0x442060
  0040fa5c: 83 c4 08                                        add    esp,0x8
  0040fa5f: 5e                                              pop    esi
  0040fa60: c3                                              ret
  00425ad0: 55                                              push   ebp
  00425ad1: 8b ec                                           mov    ebp,esp
  00425ad3: 51                                              push   ecx
  00425ad4: 8a 41 20                                        mov    al,BYTE PTR [ecx+0x20]
  00425ad7: 53                                              push   ebx
  00425ad8: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00425adb: 56                                              push   esi
  00425adc: 33 d2                                           xor    edx,edx
  00425ade: 8d 71 20                                        lea    esi,[ecx+0x20]
  00425ae1: 88 03                                           mov    BYTE PTR [ebx],al
  00425ae3: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00425ae6: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00425ae9: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00425aec: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00425af1: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00425af4: 8b 00                                           mov    eax,DWORD PTR [eax]
  00425af6: 57                                              push   edi
  00425af7: 8b f9                                           mov    edi,ecx
  00425af9: 3b c7                                           cmp    eax,edi
  00425afb: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00425afe: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00425b01: 73 05                                           jae    0x425b08
  00425b03: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00425b06: 8b f8                                           mov    edi,eax
  00425b08: 3b de                                           cmp    ebx,esi
  00425b0a: 75 73                                           jne    0x425b7f
  00425b0c: 3b fa                                           cmp    edi,edx
  00425b0e: 8b f0                                           mov    esi,eax
  00425b10: 76 0a                                           jbe    0x425b1c
  00425b12: 8b cb                                           mov    ecx,ebx
  00425b14: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00425b1a: 33 d2                                           xor    edx,edx
  00425b1c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00425b1f: 2b c7                                           sub    eax,edi
  00425b21: 3b c6                                           cmp    eax,esi
  00425b23: 73 02                                           jae    0x425b27
  00425b25: 8b f0                                           mov    esi,eax
  00425b27: 3b f2                                           cmp    esi,edx
  00425b29: 0f 86 de 00 00 00                               jbe    0x425c0d
  00425b2f: 8b cb                                           mov    ecx,ebx
  00425b31: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00425b37: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00425b3a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00425b3d: 2b d6                                           sub    edx,esi
  00425b3f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  00425b42: 2b d7                                           sub    edx,edi
  00425b44: 52                                              push   edx
  00425b45: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00425b48: 51                                              push   ecx
  00425b49: 50                                              push   eax
  00425b4a: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00425b50: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00425b53: 83 c4 0c                                        add    esp,0xc
  00425b56: 6a 00                                           push   0x0
  00425b58: 2b fe                                           sub    edi,esi
  00425b5a: 57                                              push   edi
  00425b5b: 8b cb                                           mov    ecx,ebx
  00425b5d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00425b63: 84 c0                                           test   al,al
  00425b65: 0f 84 a2 00 00 00                               je     0x425c0d
  00425b6b: 57                                              push   edi
  00425b6c: 8b cb                                           mov    ecx,ebx
  00425b6e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00425b74: 5f                                              pop    edi
  00425b75: 5e                                              pop    esi
  00425b76: 8b c3                                           mov    eax,ebx
  00425b78: 5b                                              pop    ebx
  00425b79: 8b e5                                           mov    esp,ebp
  00425b7b: 5d                                              pop    ebp
  00425b7c: c2 04 00                                        ret    0x4
  00425b7f: 3b fa                                           cmp    edi,edx
  00425b81: 76 4e                                           jbe    0x425bd1
  00425b83: 3b f9                                           cmp    edi,ecx
  00425b85: 75 4a                                           jne    0x425bd1
  00425b87: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00425b8a: 3b c2                                           cmp    eax,edx
  00425b8c: 75 05                                           jne    0x425b93
  00425b8e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00425b93: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00425b97: 73 38                                           jae    0x425bd1
  00425b99: 6a 01                                           push   0x1
  00425b9b: 8b cb                                           mov    ecx,ebx
  00425b9d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00425ba3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00425ba6: 85 c0                                           test   eax,eax
  00425ba8: 75 05                                           jne    0x425baf
  00425baa: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00425baf: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00425bb2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00425bb5: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00425bb8: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00425bbb: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00425bbe: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  00425bc1: 5f                                              pop    edi
  00425bc2: fe c1                                           inc    cl
  00425bc4: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  00425bc7: 5e                                              pop    esi
  00425bc8: 8b c3                                           mov    eax,ebx
  00425bca: 5b                                              pop    ebx
  00425bcb: 8b e5                                           mov    esp,ebp
  00425bcd: 5d                                              pop    ebp
  00425bce: c2 04 00                                        ret    0x4
  00425bd1: 6a 01                                           push   0x1
  00425bd3: 57                                              push   edi
  00425bd4: 8b cb                                           mov    ecx,ebx
  00425bd6: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00425bdc: 84 c0                                           test   al,al
  00425bde: 74 2d                                           je     0x425c0d
  00425be0: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00425be3: 85 f6                                           test   esi,esi
  00425be5: 75 06                                           jne    0x425bed
  00425be7: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00425bed: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00425bf0: 8b cf                                           mov    ecx,edi
  00425bf2: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00425bf5: 8b d1                                           mov    edx,ecx
  00425bf7: c1 e9 02                                        shr    ecx,0x2
  00425bfa: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00425bfc: 8b ca                                           mov    ecx,edx
  00425bfe: 83 e1 03                                        and    ecx,0x3
  00425c01: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00425c03: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00425c06: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00425c09: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  00425c0d: 5f                                              pop    edi
  00425c0e: 5e                                              pop    esi
  00425c0f: 8b c3                                           mov    eax,ebx
  00425c11: 5b                                              pop    ebx
  00425c12: 8b e5                                           mov    esp,ebp
  00425c14: 5d                                              pop    ebp
  00425c15: c2 04 00                                        ret    0x4
  004269b0: 55                                              push   ebp
  004269b1: 8b ec                                           mov    ebp,esp
  004269b3: 6a ff                                           push   0xffffffff
  004269b5: 68 e8 47 4d 00                                  push   0x4d47e8
  004269ba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004269c0: 50                                              push   eax
  004269c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004269c8: 83 ec 08                                        sub    esp,0x8
  004269cb: 56                                              push   esi
  004269cc: 8b f1                                           mov    esi,ecx
  004269ce: 8b 06                                           mov    eax,DWORD PTR [esi]
  004269d0: 57                                              push   edi
  004269d1: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004269d4: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004269d7: 8b 4e 40                                        mov    ecx,DWORD PTR [esi+0x40]
  004269da: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004269dd: 33 c0                                           xor    eax,eax
  004269df: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004269e2: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004269e5: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004269e7: 3b c1                                           cmp    eax,ecx
  004269e9: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004269ec: 74 2a                                           je     0x426a18
  004269ee: 83 c0 1c                                        add    eax,0x1c
  004269f1: 50                                              push   eax
  004269f2: 51                                              push   ecx
  004269f3: 54                                              push   esp
  004269f4: 8b cf                                           mov    ecx,edi
  004269f6: e8 e5 16 00 00                                  call   0x4280e0
  004269fb: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004269fe: 51                                              push   ecx
  004269ff: 8b cf                                           mov    ecx,edi
  00426a01: e8 2a 24 00 00                                  call   0x428e30
  00426a06: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00426a09: e8 02 2d 00 00                                  call   0x429710
  00426a0e: 8b 4e 40                                        mov    ecx,DWORD PTR [esi+0x40]
  00426a11: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00426a14: 3b c1                                           cmp    eax,ecx
  00426a16: 75 d6                                           jne    0x4269ee
  00426a18: 8b 4e 34                                        mov    ecx,DWORD PTR [esi+0x34]
  00426a1b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00426a1d: 3b c1                                           cmp    eax,ecx
  00426a1f: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00426a22: 74 2a                                           je     0x426a4e
  00426a24: 83 c0 1c                                        add    eax,0x1c
  00426a27: 50                                              push   eax
  00426a28: 51                                              push   ecx
  00426a29: 54                                              push   esp
  00426a2a: 8b cf                                           mov    ecx,edi
  00426a2c: e8 af 16 00 00                                  call   0x4280e0
  00426a31: 8d 55 08                                        lea    edx,[ebp+0x8]
  00426a34: 52                                              push   edx
  00426a35: 8b cf                                           mov    ecx,edi
  00426a37: e8 f4 23 00 00                                  call   0x428e30
  00426a3c: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00426a3f: e8 cc 2c 00 00                                  call   0x429710
  00426a44: 8b 4e 34                                        mov    ecx,DWORD PTR [esi+0x34]
  00426a47: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00426a4a: 3b c1                                           cmp    eax,ecx
  00426a4c: 75 d6                                           jne    0x426a24
  00426a4e: 8b 06                                           mov    eax,DWORD PTR [esi]
  00426a50: 8b ce                                           mov    ecx,esi
  00426a52: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00426a59: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00426a5c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00426a5f: 5f                                              pop    edi
  00426a60: 5e                                              pop    esi
  00426a61: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00426a68: 8b e5                                           mov    esp,ebp
  00426a6a: 5d                                              pop    ebp
  00426a6b: c2 04 00                                        ret    0x4
  00426fd0: 55                                              push   ebp
  00426fd1: 8b ec                                           mov    ebp,esp
  00426fd3: 51                                              push   ecx
  00426fd4: 53                                              push   ebx
  00426fd5: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00426fd8: 56                                              push   esi
  00426fd9: 33 d2                                           xor    edx,edx
  00426fdb: 8b f1                                           mov    esi,ecx
  00426fdd: 8a 06                                           mov    al,BYTE PTR [esi]
  00426fdf: 88 03                                           mov    BYTE PTR [ebx],al
  00426fe1: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00426fe4: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00426fe7: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00426fea: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00426fef: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00426ff2: 8b 00                                           mov    eax,DWORD PTR [eax]
  00426ff4: 57                                              push   edi
  00426ff5: 8b f9                                           mov    edi,ecx
  00426ff7: 3b c7                                           cmp    eax,edi
  00426ff9: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00426ffc: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00426fff: 73 05                                           jae    0x427006
  00427001: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00427004: 8b f8                                           mov    edi,eax
  00427006: 3b de                                           cmp    ebx,esi
  00427008: 75 73                                           jne    0x42707d
  0042700a: 3b fa                                           cmp    edi,edx
  0042700c: 8b f0                                           mov    esi,eax
  0042700e: 76 0a                                           jbe    0x42701a
  00427010: 8b cb                                           mov    ecx,ebx
  00427012: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00427018: 33 d2                                           xor    edx,edx
  0042701a: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0042701d: 2b c7                                           sub    eax,edi
  0042701f: 3b c6                                           cmp    eax,esi
  00427021: 73 02                                           jae    0x427025
  00427023: 8b f0                                           mov    esi,eax
  00427025: 3b f2                                           cmp    esi,edx
  00427027: 0f 86 de 00 00 00                               jbe    0x42710b
  0042702d: 8b cb                                           mov    ecx,ebx
  0042702f: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00427035: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00427038: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0042703b: 2b d6                                           sub    edx,esi
  0042703d: 8d 04 39                                        lea    eax,[ecx+edi*1]
  00427040: 2b d7                                           sub    edx,edi
  00427042: 52                                              push   edx
  00427043: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00427046: 51                                              push   ecx
  00427047: 50                                              push   eax
  00427048: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0042704e: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00427051: 83 c4 0c                                        add    esp,0xc
  00427054: 6a 00                                           push   0x0
  00427056: 2b fe                                           sub    edi,esi
  00427058: 57                                              push   edi
  00427059: 8b cb                                           mov    ecx,ebx
  0042705b: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00427061: 84 c0                                           test   al,al
  00427063: 0f 84 a2 00 00 00                               je     0x42710b
  00427069: 57                                              push   edi
  0042706a: 8b cb                                           mov    ecx,ebx
  0042706c: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00427072: 5f                                              pop    edi
  00427073: 5e                                              pop    esi
  00427074: 8b c3                                           mov    eax,ebx
  00427076: 5b                                              pop    ebx
  00427077: 8b e5                                           mov    esp,ebp
  00427079: 5d                                              pop    ebp
  0042707a: c2 04 00                                        ret    0x4
  0042707d: 3b fa                                           cmp    edi,edx
  0042707f: 76 4e                                           jbe    0x4270cf
  00427081: 3b f9                                           cmp    edi,ecx
  00427083: 75 4a                                           jne    0x4270cf
  00427085: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00427088: 3b c2                                           cmp    eax,edx
  0042708a: 75 05                                           jne    0x427091
  0042708c: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00427091: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00427095: 73 38                                           jae    0x4270cf
  00427097: 6a 01                                           push   0x1
  00427099: 8b cb                                           mov    ecx,ebx
  0042709b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004270a1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004270a4: 85 c0                                           test   eax,eax
  004270a6: 75 05                                           jne    0x4270ad
  004270a8: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004270ad: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004270b0: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004270b3: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004270b6: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  004270b9: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  004270bc: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  004270bf: 5f                                              pop    edi
  004270c0: fe c1                                           inc    cl
  004270c2: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  004270c5: 5e                                              pop    esi
  004270c6: 8b c3                                           mov    eax,ebx
  004270c8: 5b                                              pop    ebx
  004270c9: 8b e5                                           mov    esp,ebp
  004270cb: 5d                                              pop    ebp
  004270cc: c2 04 00                                        ret    0x4
  004270cf: 6a 01                                           push   0x1
  004270d1: 57                                              push   edi
  004270d2: 8b cb                                           mov    ecx,ebx
  004270d4: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004270da: 84 c0                                           test   al,al
  004270dc: 74 2d                                           je     0x42710b
  004270de: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004270e1: 85 f6                                           test   esi,esi
  004270e3: 75 06                                           jne    0x4270eb
  004270e5: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004270eb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004270ee: 8b cf                                           mov    ecx,edi
  004270f0: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004270f3: 8b d1                                           mov    edx,ecx
  004270f5: c1 e9 02                                        shr    ecx,0x2
  004270f8: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004270fa: 8b ca                                           mov    ecx,edx
  004270fc: 83 e1 03                                        and    ecx,0x3
  004270ff: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00427101: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00427104: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00427107: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  0042710b: 5f                                              pop    edi
  0042710c: 5e                                              pop    esi
  0042710d: 8b c3                                           mov    eax,ebx
  0042710f: 5b                                              pop    ebx
  00427110: 8b e5                                           mov    esp,ebp
  00427112: 5d                                              pop    ebp
  00427113: c2 04 00                                        ret    0x4
  004275d0: 55                                              push   ebp
  004275d1: 8b ec                                           mov    ebp,esp
  004275d3: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  004275d6: 88 41 48                                        mov    BYTE PTR [ecx+0x48],al
  004275d9: 5d                                              pop    ebp
  004275da: c2 04 00                                        ret    0x4
  00433720: 56                                              push   esi
  00433721: 8b f1                                           mov    esi,ecx
  00433723: 8d 4e 08                                        lea    ecx,[esi+0x8]
  00433726: e8 33 e3 09 00                                  call   0x4d1a5e
  0043372b: 8d 46 1c                                        lea    eax,[esi+0x1c]
  0043372e: 50                                              push   eax
  0043372f: c7 46 14 8c e5 4d 00                            mov    DWORD PTR [esi+0x14],0x4de58c
  00433736: c7 46 18 ff ff ff ff                            mov    DWORD PTR [esi+0x18],0xffffffff
  0043373d: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00433743: 8b c6                                           mov    eax,esi
  00433745: 5e                                              pop    esi
  00433746: c3                                              ret
  00433750: 55                                              push   ebp
  00433751: 8b ec                                           mov    ebp,esp
  00433753: 6a ff                                           push   0xffffffff
  00433755: 68 58 52 4d 00                                  push   0x4d5258
  0043375a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00433760: 50                                              push   eax
  00433761: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00433768: 51                                              push   ecx
  00433769: 56                                              push   esi
  0043376a: 8b f1                                           mov    esi,ecx
  0043376c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0043376f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00433776: ff 15 14 e1 4d 00                               call   DWORD PTR ds:0x4de114
  0043377c: 50                                              push   eax
  0043377d: 68 f4 2f 50 00                                  push   0x502ff4
  00433782: 6a 04                                           push   0x4
  00433784: e8 b7 e5 03 00                                  call   0x471d40
  00433789: 83 c4 0c                                        add    esp,0xc
  0043378c: 8d 46 1c                                        lea    eax,[esi+0x1c]
  0043378f: 50                                              push   eax
  00433790: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00433797: c7 46 14 8c e5 4d 00                            mov    DWORD PTR [esi+0x14],0x4de58c
  0043379e: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  004337a4: 8d 4e 08                                        lea    ecx,[esi+0x8]
  004337a7: e8 94 e2 09 00                                  call   0x4d1a40
  004337ac: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004337af: 5e                                              pop    esi
  004337b0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004337b7: 8b e5                                           mov    esp,ebp
  004337b9: 5d                                              pop    ebp
  004337ba: c3                                              ret
  004337e0: 55                                              push   ebp
  004337e1: 8b ec                                           mov    ebp,esp
  004337e3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004337e9: 6a ff                                           push   0xffffffff
  004337eb: 68 80 52 4d 00                                  push   0x4d5280
  004337f0: 50                                              push   eax
  004337f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004337f8: 56                                              push   esi
  004337f9: 8b f1                                           mov    esi,ecx
  004337fb: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004337fe: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00433801: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00433804: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00433807: 52                                              push   edx
  00433808: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0043380b: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00433812: 89 06                                           mov    DWORD PTR [esi],eax
  00433814: e8 2d e2 09 00                                  call   0x4d1a46
  00433819: e8 d2 63 05 00                                  call   0x489bf0
  0043381e: 8b c8                                           mov    ecx,eax
  00433820: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00433823: 03 c8                                           add    ecx,eax
  00433825: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  00433828: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  0043382b: c6 46 34 00                                     mov    BYTE PTR [esi+0x34],0x0
  0043382f: 8b 15 80 21 51 00                               mov    edx,DWORD PTR ds:0x512180
  00433835: b9 80 21 51 00                                  mov    ecx,0x512180
  0043383a: c7 45 14 80 21 51 00                            mov    DWORD PTR [ebp+0x14],0x512180
  00433841: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00433844: 8b 0d a4 21 51 00                               mov    ecx,DWORD PTR ds:0x5121a4
  0043384a: 8d 45 08                                        lea    eax,[ebp+0x8]
  0043384d: 50                                              push   eax
  0043384e: 51                                              push   ecx
  0043384f: b9 a0 21 51 00                                  mov    ecx,0x5121a0
  00433854: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00433858: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0043385b: e8 e0 01 00 00                                  call   0x433a40
  00433860: 8b 15 80 21 51 00                               mov    edx,DWORD PTR ds:0x512180
  00433866: b9 80 21 51 00                                  mov    ecx,0x512180
  0043386b: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0043386f: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00433872: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00433875: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043387c: e8 bf e1 09 00                                  call   0x4d1a40
  00433881: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00433884: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043388b: 5e                                              pop    esi
  0043388c: 8b e5                                           mov    esp,ebp
  0043388e: 5d                                              pop    ebp
  0043388f: c2 10 00                                        ret    0x10
  004338a0: 55                                              push   ebp
  004338a1: 8b ec                                           mov    ebp,esp
  004338a3: 6a ff                                           push   0xffffffff
  004338a5: 68 98 52 4d 00                                  push   0x4d5298
  004338aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004338b0: 50                                              push   eax
  004338b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004338b8: 51                                              push   ecx
  004338b9: a1 80 21 51 00                                  mov    eax,ds:0x512180
  004338be: 56                                              push   esi
  004338bf: 57                                              push   edi
  004338c0: 8b f9                                           mov    edi,ecx
  004338c2: b9 80 21 51 00                                  mov    ecx,0x512180
  004338c7: 33 f6                                           xor    esi,esi
  004338c9: c7 45 f0 80 21 51 00                            mov    DWORD PTR [ebp-0x10],0x512180
  004338d0: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004338d3: 8b 0d a4 21 51 00                               mov    ecx,DWORD PTR ds:0x5121a4
  004338d9: 85 c9                                           test   ecx,ecx
  004338db: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  004338de: 75 04                                           jne    0x4338e4
  004338e0: 33 c0                                           xor    eax,eax
  004338e2: eb 02                                           jmp    0x4338e6
  004338e4: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004338e6: 3b c1                                           cmp    eax,ecx
  004338e8: 74 4d                                           je     0x433937
  004338ea: 39 78 08                                        cmp    DWORD PTR [eax+0x8],edi
  004338ed: 75 30                                           jne    0x43391f
  004338ef: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004338f2: 8b 30                                           mov    esi,DWORD PTR [eax]
  004338f4: 89 31                                           mov    DWORD PTR [ecx],esi
  004338f6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004338f8: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004338fb: 50                                              push   eax
  004338fc: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004338ff: e8 5c e7 00 00                                  call   0x442060
  00433904: a1 a8 21 51 00                                  mov    eax,ds:0x5121a8
  00433909: 8b 0d a4 21 51 00                               mov    ecx,DWORD PTR ds:0x5121a4
  0043390f: 83 c4 04                                        add    esp,0x4
  00433912: 48                                              dec    eax
  00433913: a3 a8 21 51 00                                  mov    ds:0x5121a8,eax
  00433918: 8b c6                                           mov    eax,esi
  0043391a: be 01 00 00 00                                  mov    esi,0x1
  0043391f: 8b 00                                           mov    eax,DWORD PTR [eax]
  00433921: 3b c1                                           cmp    eax,ecx
  00433923: 75 c5                                           jne    0x4338ea
  00433925: 85 f6                                           test   esi,esi
  00433927: 74 0e                                           je     0x433937
  00433929: ff 15 14 e1 4d 00                               call   DWORD PTR ds:0x4de114
  0043392f: 50                                              push   eax
  00433930: 68 44 30 50 00                                  push   0x503044
  00433935: eb 0c                                           jmp    0x433943
  00433937: ff 15 14 e1 4d 00                               call   DWORD PTR ds:0x4de114
  0043393d: 50                                              push   eax
  0043393e: 68 20 30 50 00                                  push   0x503020
  00433943: 6a 04                                           push   0x4
  00433945: e8 f6 e3 03 00                                  call   0x471d40
  0043394a: a1 80 21 51 00                                  mov    eax,ds:0x512180
  0043394f: 83 c4 0c                                        add    esp,0xc
  00433952: b9 80 21 51 00                                  mov    ecx,0x512180
  00433957: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043395e: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00433961: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00433964: 5f                                              pop    edi
  00433965: 5e                                              pop    esi
  00433966: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043396d: 8b e5                                           mov    esp,ebp
  0043396f: 5d                                              pop    ebp
  00433970: c3                                              ret
  00433980: 56                                              push   esi
  00433981: 57                                              push   edi
  00433982: 8b f9                                           mov    edi,ecx
  00433984: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  00433987: 8d 77 14                                        lea    esi,[edi+0x14]
  0043398a: 8b ce                                           mov    ecx,esi
  0043398c: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0043398f: c7 47 0c ff ff ff ff                            mov    DWORD PTR [edi+0xc],0xffffffff
  00433996: 8b 16                                           mov    edx,DWORD PTR [esi]
  00433998: 8b ce                                           mov    ecx,esi
  0043399a: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0043399d: 5f                                              pop    edi
  0043399e: 5e                                              pop    esi
  0043399f: c3                                              ret
  004339a0: e9 0b 00 00 00                                  jmp    0x4339b0
  004339b0: 55                                              push   ebp
  004339b1: 8b ec                                           mov    ebp,esp
  004339b3: 6a ff                                           push   0xffffffff
  004339b5: 68 b8 52 4d 00                                  push   0x4d52b8
  004339ba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004339c0: 50                                              push   eax
  004339c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004339c8: 51                                              push   ecx
  004339c9: 56                                              push   esi
  004339ca: 57                                              push   edi
  004339cb: 8b f9                                           mov    edi,ecx
  004339cd: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  004339d0: 8d 77 14                                        lea    esi,[edi+0x14]
  004339d3: 8b ce                                           mov    ecx,esi
  004339d5: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004339d8: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004339db: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004339e2: e8 09 62 05 00                                  call   0x489bf0
  004339e7: 03 47 10                                        add    eax,DWORD PTR [edi+0x10]
  004339ea: 89 47 0c                                        mov    DWORD PTR [edi+0xc],eax
  004339ed: 8b 16                                           mov    edx,DWORD PTR [esi]
  004339ef: 8b ce                                           mov    ecx,esi
  004339f1: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004339f8: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004339fb: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004339fe: 5f                                              pop    edi
  004339ff: 5e                                              pop    esi
  00433a00: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00433a07: 8b e5                                           mov    esp,ebp
  00433a09: 5d                                              pop    ebp
  00433a0a: c3                                              ret
  00435490: 8a 0d 40 22 51 00                               mov    cl,BYTE PTR ds:0x512240
  00435496: b0 01                                           mov    al,0x1
  00435498: 84 c8                                           test   al,cl
  0043549a: 75 21                                           jne    0x4354bd
  0043549c: 8a d1                                           mov    dl,cl
  0043549e: 0a d0                                           or     dl,al
  004354a0: b9 3c 22 51 00                                  mov    ecx,0x51223c
  004354a5: 88 15 40 22 51 00                               mov    BYTE PTR ds:0x512240,dl
  004354ab: e8 d0 fe ff ff                                  call   0x435380
  004354b0: 68 d0 54 43 00                                  push   0x4354d0
  004354b5: e8 51 c8 09 00                                  call   0x4d1d0b
  004354ba: 83 c4 04                                        add    esp,0x4
  004354bd: b8 3c 22 51 00                                  mov    eax,0x51223c
  004354c2: c3                                              ret
  004354e0: 55                                              push   ebp
  004354e1: 8b ec                                           mov    ebp,esp
  004354e3: 53                                              push   ebx
  004354e4: 83 c9 ff                                        or     ecx,0xffffffff
  004354e7: 33 c0                                           xor    eax,eax
  004354e9: 57                                              push   edi
  004354ea: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004354ed: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004354ef: f7 d1                                           not    ecx
  004354f1: 49                                              dec    ecx
  004354f2: 8b d9                                           mov    ebx,ecx
  004354f4: 8d 43 03                                        lea    eax,[ebx+0x3]
  004354f7: 3d 00 50 00 00                                  cmp    eax,0x5000
  004354fc: 0f 8f c6 00 00 00                               jg     0x4355c8
  00435502: 85 db                                           test   ebx,ebx
  00435504: 0f 84 be 00 00 00                               je     0x4355c8
  0043550a: 8b 0d 50 22 51 00                               mov    ecx,DWORD PTR ds:0x512250
  00435510: 68 e8 03 00 00                                  push   0x3e8
  00435515: 51                                              push   ecx
  00435516: ff 15 1c e1 4d 00                               call   DWORD PTR ds:0x4de11c
  0043551c: 3d 02 01 00 00                                  cmp    eax,0x102
  00435521: 0f 84 a1 00 00 00                               je     0x4355c8
  00435527: a1 44 22 51 00                                  mov    eax,ds:0x512244
  0043552c: 8b 10                                           mov    edx,DWORD PTR [eax]
  0043552e: 8d 4c 1a 13                                     lea    ecx,[edx+ebx*1+0x13]
  00435532: 81 f9 fc 4f 00 00                               cmp    ecx,0x4ffc
  00435538: 76 0b                                           jbe    0x435545
  0043553a: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  00435540: a1 44 22 51 00                                  mov    eax,ds:0x512244
  00435545: 8b 10                                           mov    edx,DWORD PTR [eax]
  00435547: 56                                              push   esi
  00435548: 8d 74 02 04                                     lea    esi,[edx+eax*1+0x4]
  0043554c: ff 15 68 e1 4d 00                               call   DWORD PTR ds:0x4de168
  00435552: 89 06                                           mov    DWORD PTR [esi],eax
  00435554: ff 15 14 e1 4d 00                               call   DWORD PTR ds:0x4de114
  0043555a: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0043555d: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00435560: a1 44 22 51 00                                  mov    eax,ds:0x512244
  00435565: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00435567: 8d 54 01 0c                                     lea    edx,[ecx+eax*1+0xc]
  0043556b: 83 c9 ff                                        or     ecx,0xffffffff
  0043556e: 33 c0                                           xor    eax,eax
  00435570: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00435572: f7 d1                                           not    ecx
  00435574: 2b f9                                           sub    edi,ecx
  00435576: 8b c1                                           mov    eax,ecx
  00435578: 8b f7                                           mov    esi,edi
  0043557a: c1 e9 02                                        shr    ecx,0x2
  0043557d: 8b fa                                           mov    edi,edx
  0043557f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00435581: 8b c8                                           mov    ecx,eax
  00435583: 83 e1 03                                        and    ecx,0x3
  00435586: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00435588: a1 44 22 51 00                                  mov    eax,ds:0x512244
  0043558d: 8b 38                                           mov    edi,DWORD PTR [eax]
  0043558f: 83 c3 09                                        add    ebx,0x9
  00435592: 03 fb                                           add    edi,ebx
  00435594: 89 38                                           mov    DWORD PTR [eax],edi
  00435596: a1 44 22 51 00                                  mov    eax,ds:0x512244
  0043559b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043559d: 8d 44 01 04                                     lea    eax,[ecx+eax*1+0x4]
  004355a1: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  004355a7: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  004355ae: 8b 15 50 22 51 00                               mov    edx,DWORD PTR ds:0x512250
  004355b4: 52                                              push   edx
  004355b5: ff 15 54 e1 4d 00                               call   DWORD PTR ds:0x4de154
  004355bb: a1 4c 22 51 00                                  mov    eax,ds:0x51224c
  004355c0: 50                                              push   eax
  004355c1: ff 15 2c e1 4d 00                               call   DWORD PTR ds:0x4de12c
  004355c7: 5e                                              pop    esi
  004355c8: 5f                                              pop    edi
  004355c9: 5b                                              pop    ebx
  004355ca: 5d                                              pop    ebp
  004355cb: c2 04 00                                        ret    0x4
  00435bb0: 55                                              push   ebp
  00435bb1: 8b ec                                           mov    ebp,esp
  00435bb3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00435bb6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00435bb8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00435bbb: 89 08                                           mov    DWORD PTR [eax],ecx
  00435bbd: 5d                                              pop    ebp
  00435bbe: c2 04 00                                        ret    0x4
  00435bd0: 55                                              push   ebp
  00435bd1: 8b ec                                           mov    ebp,esp
  00435bd3: 6a ff                                           push   0xffffffff
  00435bd5: 68 d9 54 4d 00                                  push   0x4d54d9
  00435bda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00435be0: 50                                              push   eax
  00435be1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00435be8: 83 ec 34                                        sub    esp,0x34
  00435beb: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00435bee: 56                                              push   esi
  00435bef: 8b f1                                           mov    esi,ecx
  00435bf1: 8a 48 15                                        mov    cl,BYTE PTR [eax+0x15]
  00435bf4: 84 c9                                           test   cl,cl
  00435bf6: 57                                              push   edi
  00435bf7: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00435bfa: 74 57                                           je     0x435c53
  00435bfc: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00435bff: 6a 00                                           push   0x0
  00435c01: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00435c04: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00435c07: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00435c0d: 83 c9 ff                                        or     ecx,0xffffffff
  00435c10: 33 c0                                           xor    eax,eax
  00435c12: bf 40 05 50 00                                  mov    edi,0x500540
  00435c17: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00435c19: f7 d1                                           not    ecx
  00435c1b: 49                                              dec    ecx
  00435c1c: 51                                              push   ecx
  00435c1d: 68 40 05 50 00                                  push   0x500540
  00435c22: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00435c25: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00435c2b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00435c2e: 51                                              push   ecx
  00435c2f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00435c32: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00435c39: e8 42 f4 fc ff                                  call   0x405080
  00435c3e: 68 18 0a 4e 00                                  push   0x4e0a18
  00435c43: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00435c46: 52                                              push   edx
  00435c47: c7 45 c0 e0 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5e0
  00435c4e: e8 03 c1 09 00                                  call   0x4d1d56
  00435c53: 53                                              push   ebx
  00435c54: 8b d8                                           mov    ebx,eax
  00435c56: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00435c59: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00435c5c: e8 9f 08 00 00                                  call   0x436500
  00435c61: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00435c63: 8a 42 15                                        mov    al,BYTE PTR [edx+0x15]
  00435c66: 84 c0                                           test   al,al
  00435c68: 74 05                                           je     0x435c6f
  00435c6a: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00435c6d: eb 2b                                           jmp    0x435c9a
  00435c6f: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00435c72: 8a 41 15                                        mov    al,BYTE PTR [ecx+0x15]
  00435c75: 84 c0                                           test   al,al
  00435c77: 74 04                                           je     0x435c7d
  00435c79: 8b fa                                           mov    edi,edx
  00435c7b: eb 1d                                           jmp    0x435c9a
  00435c7d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00435c7f: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  00435c83: 75 0a                                           jne    0x435c8f
  00435c85: 8b c8                                           mov    ecx,eax
  00435c87: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00435c89: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  00435c8d: 74 f6                                           je     0x435c85
  00435c8f: 3b cb                                           cmp    ecx,ebx
  00435c91: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  00435c94: 0f 85 8a 00 00 00                               jne    0x435d24
  00435c9a: 8a 4f 15                                        mov    cl,BYTE PTR [edi+0x15]
  00435c9d: 84 c9                                           test   cl,cl
  00435c9f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00435ca2: 75 03                                           jne    0x435ca7
  00435ca4: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00435ca7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00435caa: 39 59 04                                        cmp    DWORD PTR [ecx+0x4],ebx
  00435cad: 75 05                                           jne    0x435cb4
  00435caf: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00435cb2: eb 0b                                           jmp    0x435cbf
  00435cb4: 39 18                                           cmp    DWORD PTR [eax],ebx
  00435cb6: 75 04                                           jne    0x435cbc
  00435cb8: 89 38                                           mov    DWORD PTR [eax],edi
  00435cba: eb 03                                           jmp    0x435cbf
  00435cbc: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  00435cbf: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00435cc2: 39 1e                                           cmp    DWORD PTR [esi],ebx
  00435cc4: 75 24                                           jne    0x435cea
  00435cc6: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00435cc9: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  00435ccc: 84 d2                                           test   dl,dl
  00435cce: 74 04                                           je     0x435cd4
  00435cd0: 89 06                                           mov    DWORD PTR [esi],eax
  00435cd2: eb 16                                           jmp    0x435cea
  00435cd4: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00435cd6: 80 79 15 00                                     cmp    BYTE PTR [ecx+0x15],0x0
  00435cda: 8b d7                                           mov    edx,edi
  00435cdc: 75 0a                                           jne    0x435ce8
  00435cde: 8b d1                                           mov    edx,ecx
  00435ce0: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00435ce2: 80 79 15 00                                     cmp    BYTE PTR [ecx+0x15],0x0
  00435ce6: 74 f6                                           je     0x435cde
  00435ce8: 89 16                                           mov    DWORD PTR [esi],edx
  00435cea: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00435ced: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  00435cf0: 39 5e 08                                        cmp    DWORD PTR [esi+0x8],ebx
  00435cf3: 0f 85 89 00 00 00                               jne    0x435d82
  00435cf9: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  00435cfb: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  00435cfe: 84 d2                                           test   dl,dl
  00435d00: 74 05                                           je     0x435d07
  00435d02: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00435d05: eb 7b                                           jmp    0x435d82
  00435d07: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00435d0a: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  00435d0d: 84 db                                           test   bl,bl
  00435d0f: 8b d7                                           mov    edx,edi
  00435d11: 75 0c                                           jne    0x435d1f
  00435d13: 8b d1                                           mov    edx,ecx
  00435d15: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  00435d18: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  00435d1b: 84 db                                           test   bl,bl
  00435d1d: 74 f4                                           je     0x435d13
  00435d1f: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00435d22: eb 5e                                           jmp    0x435d82
  00435d24: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00435d27: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00435d29: 89 11                                           mov    DWORD PTR [ecx],edx
  00435d2b: 3b 4b 08                                        cmp    ecx,DWORD PTR [ebx+0x8]
  00435d2e: 75 04                                           jne    0x435d34
  00435d30: 8b c1                                           mov    eax,ecx
  00435d32: eb 1b                                           jmp    0x435d4f
  00435d34: 8a 57 15                                        mov    dl,BYTE PTR [edi+0x15]
  00435d37: 84 d2                                           test   dl,dl
  00435d39: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00435d3c: 75 03                                           jne    0x435d41
  00435d3e: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00435d41: 89 38                                           mov    DWORD PTR [eax],edi
  00435d43: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00435d46: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00435d49: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00435d4c: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00435d4f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00435d52: 39 5a 04                                        cmp    DWORD PTR [edx+0x4],ebx
  00435d55: 75 05                                           jne    0x435d5c
  00435d57: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00435d5a: eb 0e                                           jmp    0x435d6a
  00435d5c: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00435d5f: 39 1a                                           cmp    DWORD PTR [edx],ebx
  00435d61: 75 04                                           jne    0x435d67
  00435d63: 89 0a                                           mov    DWORD PTR [edx],ecx
  00435d65: eb 03                                           jmp    0x435d6a
  00435d67: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00435d6a: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00435d6d: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00435d70: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  00435d73: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00435d76: 8a 5e 14                                        mov    bl,BYTE PTR [esi+0x14]
  00435d79: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  00435d7c: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  00435d7f: 88 56 14                                        mov    BYTE PTR [esi+0x14],dl
  00435d82: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00435d85: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  00435d88: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00435d8b: b3 01                                           mov    bl,0x1
  00435d8d: 3a d3                                           cmp    dl,bl
  00435d8f: 0f 85 58 02 00 00                               jne    0x435fed
  00435d95: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00435d98: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  00435d9b: 0f 84 49 02 00 00                               je     0x435fea
  00435da1: 38 5f 14                                        cmp    BYTE PTR [edi+0x14],bl
  00435da4: 0f 85 40 02 00 00                               jne    0x435fea
  00435daa: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00435dac: 3b f9                                           cmp    edi,ecx
  00435dae: 75 71                                           jne    0x435e21
  00435db0: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00435db3: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  00435db6: 84 d2                                           test   dl,dl
  00435db8: 75 43                                           jne    0x435dfd
  00435dba: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  00435dbd: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00435dc0: c6 40 14 00                                     mov    BYTE PTR [eax+0x14],0x0
  00435dc4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435dc6: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00435dc9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435dcb: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  00435dcf: 75 03                                           jne    0x435dd4
  00435dd1: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00435dd4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00435dd7: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00435dda: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00435ddd: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00435de0: 75 05                                           jne    0x435de7
  00435de2: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00435de5: eb 0e                                           jmp    0x435df5
  00435de7: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00435dea: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00435dec: 75 04                                           jne    0x435df2
  00435dee: 89 0a                                           mov    DWORD PTR [edx],ecx
  00435df0: eb 03                                           jmp    0x435df5
  00435df2: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00435df5: 89 01                                           mov    DWORD PTR [ecx],eax
  00435df7: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00435dfa: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00435dfd: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  00435e00: 84 d2                                           test   dl,dl
  00435e02: 0f 85 86 00 00 00                               jne    0x435e8e
  00435e08: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435e0a: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00435e0d: 0f 85 93 00 00 00                               jne    0x435ea6
  00435e13: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435e16: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00435e19: 0f 85 87 00 00 00                               jne    0x435ea6
  00435e1f: eb 69                                           jmp    0x435e8a
  00435e21: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  00435e24: 84 d2                                           test   dl,dl
  00435e26: 75 44                                           jne    0x435e6c
  00435e28: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  00435e2b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00435e2d: c6 40 14 00                                     mov    BYTE PTR [eax+0x14],0x0
  00435e31: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435e34: 89 10                                           mov    DWORD PTR [eax],edx
  00435e36: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435e39: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  00435e3d: 75 03                                           jne    0x435e42
  00435e3f: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00435e42: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00435e45: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00435e48: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00435e4b: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00435e4e: 75 05                                           jne    0x435e55
  00435e50: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00435e53: eb 0f                                           jmp    0x435e64
  00435e55: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00435e58: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  00435e5b: 75 05                                           jne    0x435e62
  00435e5d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00435e60: eb 02                                           jmp    0x435e64
  00435e62: 89 0a                                           mov    DWORD PTR [edx],ecx
  00435e64: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00435e67: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00435e6a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00435e6c: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  00435e6f: 84 d2                                           test   dl,dl
  00435e71: 75 1b                                           jne    0x435e8e
  00435e73: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435e76: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00435e79: 0f 85 d0 00 00 00                               jne    0x435f4f
  00435e7f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435e81: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00435e84: 0f 85 c5 00 00 00                               jne    0x435f4f
  00435e8a: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00435e8e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00435e91: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00435e94: 8b f8                                           mov    edi,eax
  00435e96: 3b fa                                           cmp    edi,edx
  00435e98: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00435e9b: 0f 85 00 ff ff ff                               jne    0x435da1
  00435ea1: e9 44 01 00 00                                  jmp    0x435fea
  00435ea6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435ea9: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00435eac: 75 4a                                           jne    0x435ef8
  00435eae: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435eb0: 88 5a 14                                        mov    BYTE PTR [edx+0x14],bl
  00435eb3: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435eb5: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00435eb9: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00435ebc: 89 31                                           mov    DWORD PTR [ecx],esi
  00435ebe: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00435ec1: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  00435ec5: 75 03                                           jne    0x435eca
  00435ec7: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00435eca: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00435ecd: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00435ed0: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00435ed3: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00435ed6: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00435ed9: 75 05                                           jne    0x435ee0
  00435edb: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00435ede: eb 0f                                           jmp    0x435eef
  00435ee0: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00435ee3: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  00435ee6: 75 05                                           jne    0x435eed
  00435ee8: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00435eeb: eb 02                                           jmp    0x435eef
  00435eed: 89 16                                           mov    DWORD PTR [esi],edx
  00435eef: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00435ef2: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00435ef5: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00435ef8: 8a 50 14                                        mov    dl,BYTE PTR [eax+0x14]
  00435efb: 88 51 14                                        mov    BYTE PTR [ecx+0x14],dl
  00435efe: 88 58 14                                        mov    BYTE PTR [eax+0x14],bl
  00435f01: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00435f04: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  00435f07: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00435f0a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435f0c: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00435f0f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435f11: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  00435f15: 75 03                                           jne    0x435f1a
  00435f17: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00435f1a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00435f1d: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00435f20: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00435f23: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00435f26: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00435f29: 75 0a                                           jne    0x435f35
  00435f2b: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00435f2e: 89 01                                           mov    DWORD PTR [ecx],eax
  00435f30: e9 b2 00 00 00                                  jmp    0x435fe7
  00435f35: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00435f38: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00435f3a: 75 09                                           jne    0x435f45
  00435f3c: 89 0a                                           mov    DWORD PTR [edx],ecx
  00435f3e: 89 01                                           mov    DWORD PTR [ecx],eax
  00435f40: e9 a2 00 00 00                                  jmp    0x435fe7
  00435f45: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00435f48: 89 01                                           mov    DWORD PTR [ecx],eax
  00435f4a: e9 98 00 00 00                                  jmp    0x435fe7
  00435f4f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00435f51: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00435f54: 75 48                                           jne    0x435f9e
  00435f56: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435f59: 88 5a 14                                        mov    BYTE PTR [edx+0x14],bl
  00435f5c: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435f5f: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00435f63: 8b 32                                           mov    esi,DWORD PTR [edx]
  00435f65: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00435f68: 8b 32                                           mov    esi,DWORD PTR [edx]
  00435f6a: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  00435f6e: 75 03                                           jne    0x435f73
  00435f70: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00435f73: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00435f76: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00435f79: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00435f7c: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00435f7f: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00435f82: 75 05                                           jne    0x435f89
  00435f84: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00435f87: eb 0e                                           jmp    0x435f97
  00435f89: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00435f8c: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  00435f8e: 75 04                                           jne    0x435f94
  00435f90: 89 16                                           mov    DWORD PTR [esi],edx
  00435f92: eb 03                                           jmp    0x435f97
  00435f94: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00435f97: 89 0a                                           mov    DWORD PTR [edx],ecx
  00435f99: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00435f9c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00435f9e: 8a 50 14                                        mov    dl,BYTE PTR [eax+0x14]
  00435fa1: 88 51 14                                        mov    BYTE PTR [ecx+0x14],dl
  00435fa4: 88 58 14                                        mov    BYTE PTR [eax+0x14],bl
  00435fa7: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00435fa9: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  00435fac: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00435fae: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435fb1: 89 10                                           mov    DWORD PTR [eax],edx
  00435fb3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00435fb6: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  00435fba: 75 03                                           jne    0x435fbf
  00435fbc: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00435fbf: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00435fc2: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00435fc5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00435fc8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00435fcb: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00435fce: 75 05                                           jne    0x435fd5
  00435fd0: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00435fd3: eb 0f                                           jmp    0x435fe4
  00435fd5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00435fd8: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  00435fdb: 75 05                                           jne    0x435fe2
  00435fdd: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00435fe0: eb 02                                           jmp    0x435fe4
  00435fe2: 89 0a                                           mov    DWORD PTR [edx],ecx
  00435fe4: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00435fe7: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00435fea: 88 5f 14                                        mov    BYTE PTR [edi+0x14],bl
  00435fed: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00435ff0: 50                                              push   eax
  00435ff1: e8 6a c0 00 00                                  call   0x442060
  00435ff6: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00435ff9: 83 c4 04                                        add    esp,0x4
  00435ffc: 85 c0                                           test   eax,eax
  00435ffe: 5b                                              pop    ebx
  00435fff: 76 04                                           jbe    0x436005
  00436001: 48                                              dec    eax
  00436002: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00436005: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00436008: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043600b: 89 08                                           mov    DWORD PTR [eax],ecx
  0043600d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00436010: 5f                                              pop    edi
  00436011: 5e                                              pop    esi
  00436012: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00436019: 8b e5                                           mov    esp,ebp
  0043601b: 5d                                              pop    ebp
  0043601c: c2 08 00                                        ret    0x8
  00436020: 55                                              push   ebp
  00436021: 8b ec                                           mov    ebp,esp
  00436023: 83 ec 08                                        sub    esp,0x8
  00436026: 53                                              push   ebx
  00436027: 56                                              push   esi
  00436028: 57                                              push   edi
  00436029: 8b f9                                           mov    edi,ecx
  0043602b: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0043602e: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00436031: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00436034: 84 db                                           test   bl,bl
  00436036: b1 01                                           mov    cl,0x1
  00436038: 8b f2                                           mov    esi,edx
  0043603a: 88 4d f8                                        mov    BYTE PTR [ebp-0x8],cl
  0043603d: 75 21                                           jne    0x436060
  0043603f: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00436042: 8b 19                                           mov    ebx,DWORD PTR [ecx]
  00436044: 3b 58 0c                                        cmp    ebx,DWORD PTR [eax+0xc]
  00436047: 0f 92 c1                                        setb   cl
  0043604a: 84 c9                                           test   cl,cl
  0043604c: 8b f0                                           mov    esi,eax
  0043604e: 88 4d f8                                        mov    BYTE PTR [ebp-0x8],cl
  00436051: 74 04                                           je     0x436057
  00436053: 8b 00                                           mov    eax,DWORD PTR [eax]
  00436055: eb 03                                           jmp    0x43605a
  00436057: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0043605a: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  0043605e: 74 e4                                           je     0x436044
  00436060: 84 c9                                           test   cl,cl
  00436062: 8b de                                           mov    ebx,esi
  00436064: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00436067: 74 35                                           je     0x43609e
  00436069: 3b 32                                           cmp    esi,DWORD PTR [edx]
  0043606b: 75 26                                           jne    0x436093
  0043606d: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00436070: 52                                              push   edx
  00436071: 56                                              push   esi
  00436072: 6a 01                                           push   0x1
  00436074: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00436077: 50                                              push   eax
  00436078: 8b cf                                           mov    ecx,edi
  0043607a: e8 11 01 00 00                                  call   0x436190
  0043607f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00436081: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436084: 5f                                              pop    edi
  00436085: 5e                                              pop    esi
  00436086: 89 08                                           mov    DWORD PTR [eax],ecx
  00436088: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  0043608c: 5b                                              pop    ebx
  0043608d: 8b e5                                           mov    esp,ebp
  0043608f: 5d                                              pop    ebp
  00436090: c2 08 00                                        ret    0x8
  00436093: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00436096: e8 05 04 00 00                                  call   0x4364a0
  0043609b: 8b 5d fc                                        mov    ebx,DWORD PTR [ebp-0x4]
  0043609e: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004360a1: 8b 53 0c                                        mov    edx,DWORD PTR [ebx+0xc]
  004360a4: 3b 10                                           cmp    edx,DWORD PTR [eax]
  004360a6: 73 25                                           jae    0x4360cd
  004360a8: 50                                              push   eax
  004360a9: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004360ac: 56                                              push   esi
  004360ad: 50                                              push   eax
  004360ae: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004360b1: 51                                              push   ecx
  004360b2: 8b cf                                           mov    ecx,edi
  004360b4: e8 d7 00 00 00                                  call   0x436190
  004360b9: 8b 10                                           mov    edx,DWORD PTR [eax]
  004360bb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004360be: 5f                                              pop    edi
  004360bf: 5e                                              pop    esi
  004360c0: 89 10                                           mov    DWORD PTR [eax],edx
  004360c2: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  004360c6: 5b                                              pop    ebx
  004360c7: 8b e5                                           mov    esp,ebp
  004360c9: 5d                                              pop    ebp
  004360ca: c2 08 00                                        ret    0x8
  004360cd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004360d0: 5f                                              pop    edi
  004360d1: 5e                                              pop    esi
  004360d2: 89 18                                           mov    DWORD PTR [eax],ebx
  004360d4: c6 40 04 00                                     mov    BYTE PTR [eax+0x4],0x0
  004360d8: 5b                                              pop    ebx
  004360d9: 8b e5                                           mov    esp,ebp
  004360db: 5d                                              pop    ebp
  004360dc: c2 08 00                                        ret    0x8
  004360e0: 55                                              push   ebp
  004360e1: 8b ec                                           mov    ebp,esp
  004360e3: 53                                              push   ebx
  004360e4: 56                                              push   esi
  004360e5: 8b 31                                           mov    esi,DWORD PTR [ecx]
  004360e7: 8a 46 15                                        mov    al,BYTE PTR [esi+0x15]
  004360ea: 84 c0                                           test   al,al
  004360ec: 75 4a                                           jne    0x436138
  004360ee: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004360f1: 8a 42 15                                        mov    al,BYTE PTR [edx+0x15]
  004360f4: 84 c0                                           test   al,al
  004360f6: 75 21                                           jne    0x436119
  004360f8: 8b 02                                           mov    eax,DWORD PTR [edx]
  004360fa: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004360fd: 84 db                                           test   bl,bl
  004360ff: 75 0b                                           jne    0x43610c
  00436101: 8b d0                                           mov    edx,eax
  00436103: 8b 02                                           mov    eax,DWORD PTR [edx]
  00436105: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00436108: 84 db                                           test   bl,bl
  0043610a: 74 f5                                           je     0x436101
  0043610c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043610f: 89 11                                           mov    DWORD PTR [ecx],edx
  00436111: 89 30                                           mov    DWORD PTR [eax],esi
  00436113: 5e                                              pop    esi
  00436114: 5b                                              pop    ebx
  00436115: 5d                                              pop    ebp
  00436116: c2 08 00                                        ret    0x8
  00436119: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043611c: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  0043611f: 84 d2                                           test   dl,dl
  00436121: 75 13                                           jne    0x436136
  00436123: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00436125: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  00436128: 75 0c                                           jne    0x436136
  0043612a: 89 01                                           mov    DWORD PTR [ecx],eax
  0043612c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043612f: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00436132: 84 d2                                           test   dl,dl
  00436134: 74 ed                                           je     0x436123
  00436136: 89 01                                           mov    DWORD PTR [ecx],eax
  00436138: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043613b: 89 30                                           mov    DWORD PTR [eax],esi
  0043613d: 5e                                              pop    esi
  0043613e: 5b                                              pop    ebx
  0043613f: 5d                                              pop    ebp
  00436140: c2 08 00                                        ret    0x8
  00436150: 55                                              push   ebp
  00436151: 8b ec                                           mov    ebp,esp
  00436153: 53                                              push   ebx
  00436154: 56                                              push   esi
  00436155: 57                                              push   edi
  00436156: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00436159: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  0043615c: 84 c0                                           test   al,al
  0043615e: 8b d9                                           mov    ebx,ecx
  00436160: 8b f7                                           mov    esi,edi
  00436162: 75 1f                                           jne    0x436183
  00436164: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00436167: 50                                              push   eax
  00436168: 8b cb                                           mov    ecx,ebx
  0043616a: e8 e1 ff ff ff                                  call   0x436150
  0043616f: 8b 36                                           mov    esi,DWORD PTR [esi]
  00436171: 57                                              push   edi
  00436172: e8 e9 be 00 00                                  call   0x442060
  00436177: 8a 46 15                                        mov    al,BYTE PTR [esi+0x15]
  0043617a: 83 c4 04                                        add    esp,0x4
  0043617d: 84 c0                                           test   al,al
  0043617f: 8b fe                                           mov    edi,esi
  00436181: 74 e1                                           je     0x436164
  00436183: 5f                                              pop    edi
  00436184: 5e                                              pop    esi
  00436185: 5b                                              pop    ebx
  00436186: 5d                                              pop    ebp
  00436187: c2 04 00                                        ret    0x4
  00436470: 55                                              push   ebp
  00436471: 8b ec                                           mov    ebp,esp
  00436473: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00436476: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00436479: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  0043647c: 84 d2                                           test   dl,dl
  0043647e: 75 1c                                           jne    0x43649c
  00436480: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00436483: 8b 12                                           mov    edx,DWORD PTR [edx]
  00436485: 53                                              push   ebx
  00436486: 39 51 0c                                        cmp    DWORD PTR [ecx+0xc],edx
  00436489: 73 05                                           jae    0x436490
  0043648b: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0043648e: eb 04                                           jmp    0x436494
  00436490: 8b c1                                           mov    eax,ecx
  00436492: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00436494: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  00436497: 84 db                                           test   bl,bl
  00436499: 74 eb                                           je     0x436486
  0043649b: 5b                                              pop    ebx
  0043649c: 5d                                              pop    ebp
  0043649d: c2 04 00                                        ret    0x4
  00436500: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00436502: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00436505: 84 d2                                           test   dl,dl
  00436507: 53                                              push   ebx
  00436508: 75 41                                           jne    0x43654b
  0043650a: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0043650d: 8a 5a 15                                        mov    bl,BYTE PTR [edx+0x15]
  00436510: 84 db                                           test   bl,bl
  00436512: 75 18                                           jne    0x43652c
  00436514: 8b 02                                           mov    eax,DWORD PTR [edx]
  00436516: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00436519: 84 db                                           test   bl,bl
  0043651b: 75 0b                                           jne    0x436528
  0043651d: 8b d0                                           mov    edx,eax
  0043651f: 8b 02                                           mov    eax,DWORD PTR [edx]
  00436521: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00436524: 84 db                                           test   bl,bl
  00436526: 74 f5                                           je     0x43651d
  00436528: 89 11                                           mov    DWORD PTR [ecx],edx
  0043652a: 5b                                              pop    ebx
  0043652b: c3                                              ret
  0043652c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043652f: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00436532: 84 d2                                           test   dl,dl
  00436534: 75 13                                           jne    0x436549
  00436536: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00436538: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  0043653b: 75 0c                                           jne    0x436549
  0043653d: 89 01                                           mov    DWORD PTR [ecx],eax
  0043653f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00436542: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00436545: 84 d2                                           test   dl,dl
  00436547: 74 ed                                           je     0x436536
  00436549: 89 01                                           mov    DWORD PTR [ecx],eax
  0043654b: 5b                                              pop    ebx
  0043654c: c3                                              ret
  00436570: 55                                              push   ebp
  00436571: 8b ec                                           mov    ebp,esp
  00436573: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00436576: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436579: 89 08                                           mov    DWORD PTR [eax],ecx
  0043657b: 5d                                              pop    ebp
  0043657c: c2 04 00                                        ret    0x4
  00436580: 55                                              push   ebp
  00436581: 8b ec                                           mov    ebp,esp
  00436583: 56                                              push   esi
  00436584: 57                                              push   edi
  00436585: 8b f9                                           mov    edi,ecx
  00436587: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0043658a: 85 c0                                           test   eax,eax
  0043658c: 74 0d                                           je     0x43659b
  0043658e: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00436591: 2b c8                                           sub    ecx,eax
  00436593: f7 c1 f8 ff ff ff                               test   ecx,0xfffffff8
  00436599: 75 04                                           jne    0x43659f
  0043659b: 33 f6                                           xor    esi,esi
  0043659d: eb 08                                           jmp    0x4365a7
  0043659f: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004365a2: 2b f0                                           sub    esi,eax
  004365a4: c1 fe 03                                        sar    esi,0x3
  004365a7: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004365aa: 52                                              push   edx
  004365ab: 6a 01                                           push   0x1
  004365ad: 51                                              push   ecx
  004365ae: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004365b1: 8b cc                                           mov    ecx,esp
  004365b3: 50                                              push   eax
  004365b4: e8 87 03 00 00                                  call   0x436940
  004365b9: 8b cf                                           mov    ecx,edi
  004365bb: e8 20 00 00 00                                  call   0x4365e0
  004365c0: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004365c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004365c6: 8d 14 f1                                        lea    edx,[ecx+esi*8]
  004365c9: 5f                                              pop    edi
  004365ca: 89 10                                           mov    DWORD PTR [eax],edx
  004365cc: 5e                                              pop    esi
  004365cd: 5d                                              pop    ebp
  004365ce: c2 0c 00                                        ret    0xc
  00438040: 55                                              push   ebp
  00438041: 8b ec                                           mov    ebp,esp
  00438043: 56                                              push   esi
  00438044: 8b f1                                           mov    esi,ecx
  00438046: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00438049: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0043804c: 57                                              push   edi
  0043804d: 33 ff                                           xor    edi,edi
  0043804f: 42                                              inc    edx
  00438050: 3b c7                                           cmp    eax,edi
  00438052: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00438055: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00438058: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0043805c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0043805f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00438062: 6a 0c                                           push   0xc
  00438064: 75 35                                           jne    0x43809b
  00438066: e8 85 9f 00 00                                  call   0x441ff0
  0043806b: 83 c4 04                                        add    esp,0x4
  0043806e: 3b c7                                           cmp    eax,edi
  00438070: 74 07                                           je     0x438079
  00438072: 89 38                                           mov    DWORD PTR [eax],edi
  00438074: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00438077: eb 02                                           jmp    0x43807b
  00438079: 33 c0                                           xor    eax,eax
  0043807b: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0043807e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00438081: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00438084: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00438087: 89 38                                           mov    DWORD PTR [eax],edi
  00438089: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043808c: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0043808f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00438092: 5f                                              pop    edi
  00438093: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00438096: 5e                                              pop    esi
  00438097: 5d                                              pop    ebp
  00438098: c2 04 00                                        ret    0x4
  0043809b: e8 50 9f 00 00                                  call   0x441ff0
  004380a0: 83 c4 04                                        add    esp,0x4
  004380a3: 3b c7                                           cmp    eax,edi
  004380a5: 74 07                                           je     0x4380ae
  004380a7: 89 38                                           mov    DWORD PTR [eax],edi
  004380a9: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004380ac: eb 02                                           jmp    0x4380b0
  004380ae: 33 c0                                           xor    eax,eax
  004380b0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004380b3: 89 01                                           mov    DWORD PTR [ecx],eax
  004380b5: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004380b8: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004380bb: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004380be: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004380c1: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004380c4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004380c7: 89 38                                           mov    DWORD PTR [eax],edi
  004380c9: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004380cc: 5f                                              pop    edi
  004380cd: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004380d0: 5e                                              pop    esi
  004380d1: 5d                                              pop    ebp
  004380d2: c2 04 00                                        ret    0x4
  0043cb40: 55                                              push   ebp
  0043cb41: 8b ec                                           mov    ebp,esp
  0043cb43: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043cb46: 56                                              push   esi
  0043cb47: 8b f1                                           mov    esi,ecx
  0043cb49: 6a 00                                           push   0x0
  0043cb4b: 68 9d 2d 00 00                                  push   0x2d9d
  0043cb50: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0043cb53: e8 a8 c5 01 00                                  call   0x459100
  0043cb58: 83 c4 08                                        add    esp,0x8
  0043cb5b: 8b c6                                           mov    eax,esi
  0043cb5d: 5e                                              pop    esi
  0043cb5e: 5d                                              pop    ebp
  0043cb5f: c2 04 00                                        ret    0x4
  0043cb70: 53                                              push   ebx
  0043cb71: 56                                              push   esi
  0043cb72: 8b f1                                           mov    esi,ecx
  0043cb74: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043cb77: 50                                              push   eax
  0043cb78: ff 15 28 e3 4d 00                               call   DWORD PTR ds:0x4de328
  0043cb7e: 8b d8                                           mov    ebx,eax
  0043cb80: 83 c4 04                                        add    esp,0x4
  0043cb83: 83 fb ff                                        cmp    ebx,0xffffffff
  0043cb86: 75 05                                           jne    0x43cb8d
  0043cb88: 5e                                              pop    esi
  0043cb89: 0b c0                                           or     eax,eax
  0043cb8b: 5b                                              pop    ebx
  0043cb8c: c3                                              ret
  0043cb8d: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0043cb90: 51                                              push   ecx
  0043cb91: ff 15 2c e3 4d 00                               call   DWORD PTR ds:0x4de32c
  0043cb97: 99                                              cdq
  0043cb98: b9 8f 1e 00 00                                  mov    ecx,0x1e8f
  0043cb9d: f7 f9                                           idiv   ecx
  0043cb9f: 83 c4 04                                        add    esp,0x4
  0043cba2: 5e                                              pop    esi
  0043cba3: 0f be 82 50 23 51 00                            movsx  eax,BYTE PTR [edx+0x512350]
  0043cbaa: 0f be d3                                        movsx  edx,bl
  0043cbad: 33 c2                                           xor    eax,edx
  0043cbaf: 5b                                              pop    ebx
  0043cbb0: c3                                              ret
  0043cbc0: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0043cbc3: 6a 01                                           push   0x1
  0043cbc5: 6a ff                                           push   0xffffffff
  0043cbc7: 50                                              push   eax
  0043cbc8: ff 15 24 e3 4d 00                               call   DWORD PTR ds:0x4de324
  0043cbce: 83 c4 0c                                        add    esp,0xc
  0043cbd1: c3                                              ret
  0043cbe0: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0043cbe3: 6a 02                                           push   0x2
  0043cbe5: 6a ff                                           push   0xffffffff
  0043cbe7: 50                                              push   eax
  0043cbe8: ff 15 24 e3 4d 00                               call   DWORD PTR ds:0x4de324
  0043cbee: 83 c4 0c                                        add    esp,0xc
  0043cbf1: c3                                              ret
  0043dd60: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0043dd63: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  0043dd66: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  0043dd69: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  0043dd6c: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0043dd6f: 3b c2                                           cmp    eax,edx
  0043dd71: 74 57                                           je     0x43ddca
  0043dd73: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0043dd76: 74 4e                                           je     0x43ddc6
  0043dd78: 8b 10                                           mov    edx,DWORD PTR [eax]
  0043dd7a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043dd7d: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0043dd80: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0043dd83: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043dd86: 8b 00                                           mov    eax,DWORD PTR [eax]
  0043dd88: 89 02                                           mov    DWORD PTR [edx],eax
  0043dd8a: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0043dd8d: 83 f8 01                                        cmp    eax,0x1
  0043dd90: 75 16                                           jne    0x43dda8
  0043dd92: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0043dd95: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0043dd98: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0043dd9b: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0043dd9e: 51                                              push   ecx
  0043dd9f: e8 bc 42 00 00                                  call   0x442060
  0043dda4: 83 c4 04                                        add    esp,0x4
  0043dda7: c3                                              ret
  0043dda8: 83 f8 02                                        cmp    eax,0x2
  0043ddab: 0f 85 8c 00 00 00                               jne    0x43de3d
  0043ddb1: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0043ddb4: 8b 02                                           mov    eax,DWORD PTR [edx]
  0043ddb6: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0043ddb9: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0043ddbc: 51                                              push   ecx
  0043ddbd: e8 9e 42 00 00                                  call   0x442060
  0043ddc2: 83 c4 04                                        add    esp,0x4
  0043ddc5: c3                                              ret
  0043ddc6: 3b c2                                           cmp    eax,edx
  0043ddc8: 75 34                                           jne    0x43ddfe
  0043ddca: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0043ddcd: 74 34                                           je     0x43de03
  0043ddcf: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043ddd2: 33 d2                                           xor    edx,edx
  0043ddd4: 89 10                                           mov    DWORD PTR [eax],edx
  0043ddd6: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0043ddd9: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043dddc: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  0043dddf: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0043dde2: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043dde5: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0043dde8: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  0043ddec: 75 4f                                           jne    0x43de3d
  0043ddee: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0043ddf1: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0043ddf4: 51                                              push   ecx
  0043ddf5: e8 66 42 00 00                                  call   0x442060
  0043ddfa: 83 c4 04                                        add    esp,0x4
  0043ddfd: c3                                              ret
  0043ddfe: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0043de01: 75 2c                                           jne    0x43de2f
  0043de03: 3b c2                                           cmp    eax,edx
  0043de05: 74 28                                           je     0x43de2f
  0043de07: 8b 00                                           mov    eax,DWORD PTR [eax]
  0043de09: 33 d2                                           xor    edx,edx
  0043de0b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0043de0e: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0043de11: 8b 00                                           mov    eax,DWORD PTR [eax]
  0043de13: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0043de16: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  0043de19: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  0043de1d: 75 1e                                           jne    0x43de3d
  0043de1f: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0043de22: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0043de25: 51                                              push   ecx
  0043de26: e8 35 42 00 00                                  call   0x442060
  0043de2b: 83 c4 04                                        add    esp,0x4
  0043de2e: c3                                              ret
  0043de2f: 33 d2                                           xor    edx,edx
  0043de31: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  0043de34: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  0043de37: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  0043de3a: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0043de3d: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0043de40: 51                                              push   ecx
  0043de41: e8 1a 42 00 00                                  call   0x442060
  0043de46: 83 c4 04                                        add    esp,0x4
  0043de49: c3                                              ret
  0043de50: 56                                              push   esi
  0043de51: 8b f1                                           mov    esi,ecx
  0043de53: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043de56: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  0043de59: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0043de5c: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  0043de5f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043de62: 33 d2                                           xor    edx,edx
  0043de64: 3b c1                                           cmp    eax,ecx
  0043de66: 57                                              push   edi
  0043de67: 74 3d                                           je     0x43dea6
  0043de69: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043de6c: 74 34                                           je     0x43dea2
  0043de6e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043de70: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043de73: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0043de76: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043de79: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043de7c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0043de7e: 89 01                                           mov    DWORD PTR [ecx],eax
  0043de80: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0043de83: 83 f8 01                                        cmp    eax,0x1
  0043de86: 75 0b                                           jne    0x43de93
  0043de88: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0043de8b: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0043de8e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0043de91: eb 61                                           jmp    0x43def4
  0043de93: 83 f8 02                                        cmp    eax,0x2
  0043de96: 75 5c                                           jne    0x43def4
  0043de98: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0043de9b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0043de9d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0043dea0: eb 52                                           jmp    0x43def4
  0043dea2: 3b c1                                           cmp    eax,ecx
  0043dea4: 75 21                                           jne    0x43dec7
  0043dea6: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043dea9: 74 21                                           je     0x43decc
  0043deab: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043deae: 89 11                                           mov    DWORD PTR [ecx],edx
  0043deb0: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043deb3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043deb6: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  0043deb9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043debc: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0043dec0: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0043dec3: 75 2f                                           jne    0x43def4
  0043dec5: eb 2a                                           jmp    0x43def1
  0043dec7: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043deca: 75 1c                                           jne    0x43dee8
  0043decc: 3b c1                                           cmp    eax,ecx
  0043dece: 74 18                                           je     0x43dee8
  0043ded0: 8b 00                                           mov    eax,DWORD PTR [eax]
  0043ded2: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0043ded5: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0043ded8: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0043deda: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0043dedd: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0043dee0: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  0043dee4: 75 0e                                           jne    0x43def4
  0043dee6: eb 09                                           jmp    0x43def1
  0043dee8: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0043deeb: 89 56 24                                        mov    DWORD PTR [esi+0x24],edx
  0043deee: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  0043def1: 89 56 40                                        mov    DWORD PTR [esi+0x40],edx
  0043def4: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  0043def7: 8b 78 08                                        mov    edi,DWORD PTR [eax+0x8]
  0043defa: 3b fa                                           cmp    edi,edx
  0043defc: 74 10                                           je     0x43df0e
  0043defe: 8b cf                                           mov    ecx,edi
  0043df00: e8 1b 00 00 00                                  call   0x43df20
  0043df05: 57                                              push   edi
  0043df06: e8 55 41 00 00                                  call   0x442060
  0043df0b: 83 c4 04                                        add    esp,0x4
  0043df0e: 8b 4e 2c                                        mov    ecx,DWORD PTR [esi+0x2c]
  0043df11: 51                                              push   ecx
  0043df12: e8 49 41 00 00                                  call   0x442060
  0043df17: 83 c4 04                                        add    esp,0x4
  0043df1a: 5f                                              pop    edi
  0043df1b: 5e                                              pop    esi
  0043df1c: c3                                              ret
  00445110: 8a 0d 54 43 51 00                               mov    cl,BYTE PTR ds:0x514354
  00445116: b0 01                                           mov    al,0x1
  00445118: 84 c8                                           test   al,cl
  0044511a: 75 21                                           jne    0x44513d
  0044511c: 8a d1                                           mov    dl,cl
  0044511e: 0a d0                                           or     dl,al
  00445120: b9 48 43 51 00                                  mov    ecx,0x514348
  00445125: 88 15 54 43 51 00                               mov    BYTE PTR ds:0x514354,dl
  0044512b: e8 b0 ff ff ff                                  call   0x4450e0
  00445130: 68 50 51 44 00                                  push   0x445150
  00445135: e8 d1 cb 08 00                                  call   0x4d1d0b
  0044513a: 83 c4 04                                        add    esp,0x4
  0044513d: b8 48 43 51 00                                  mov    eax,0x514348
  00445142: c3                                              ret
  00445160: 55                                              push   ebp
  00445161: 8b ec                                           mov    ebp,esp
  00445163: 83 ec 08                                        sub    esp,0x8
  00445166: 53                                              push   ebx
  00445167: 56                                              push   esi
  00445168: 57                                              push   edi
  00445169: 50                                              push   eax
  0044516a: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0044516d: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00445170: 58                                              pop    eax
  00445171: e8 8a f0 fe ff                                  call   0x434200
  00445176: 8b 10                                           mov    edx,DWORD PTR [eax]
  00445178: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0044517b: 51                                              push   ecx
  0044517c: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0044517f: 68 30 44 51 00                                  push   0x514430
  00445184: 51                                              push   ecx
  00445185: 8b c8                                           mov    ecx,eax
  00445187: ff 12                                           call   DWORD PTR [edx]
  00445189: 68 38 44 51 00                                  push   0x514438
  0044518e: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00445194: e8 67 f0 fe ff                                  call   0x434200
  00445199: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044519b: 68 34 44 51 00                                  push   0x514434
  004451a0: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004451a3: 51                                              push   ecx
  004451a4: 8b c8                                           mov    ecx,eax
  004451a6: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004451a9: a1 54 44 51 00                                  mov    eax,ds:0x514454
  004451ae: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004451b1: 33 c9                                           xor    ecx,ecx
  004451b3: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004451b6: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004451b9: a3 50 44 51 00                                  mov    ds:0x514450,eax
  004451be: 89 0d 70 44 51 00                               mov    DWORD PTR ds:0x514470,ecx
  004451c4: c6 05 64 44 51 00 08                            mov    BYTE PTR ds:0x514464,0x8
  004451cb: eb 05                                           jmp    0x4451d2
  004451cd: a1 50 44 51 00                                  mov    eax,ds:0x514450
  004451d2: 8b 0d 70 44 51 00                               mov    ecx,DWORD PTR ds:0x514470
  004451d8: 85 c9                                           test   ecx,ecx
  004451da: 74 09                                           je     0x4451e5
  004451dc: 8b 00                                           mov    eax,DWORD PTR [eax]
  004451de: a3 50 44 51 00                                  mov    ds:0x514450,eax
  004451e3: eb 0b                                           jmp    0x4451f0
  004451e5: b9 01 00 00 00                                  mov    ecx,0x1
  004451ea: 89 0d 70 44 51 00                               mov    DWORD PTR ds:0x514470,ecx
  004451f0: 85 c0                                           test   eax,eax
  004451f2: 74 43                                           je     0x445237
  004451f4: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  004451f7: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004451fa: 8b 16                                           mov    edx,DWORD PTR [esi]
  004451fc: 50                                              push   eax
  004451fd: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00445200: 51                                              push   ecx
  00445201: 8b ce                                           mov    ecx,esi
  00445203: ff 52 48                                        call   DWORD PTR [edx+0x48]
  00445206: 8b 00                                           mov    eax,DWORD PTR [eax]
  00445208: 57                                              push   edi
  00445209: 50                                              push   eax
  0044520a: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  00445210: 83 c4 08                                        add    esp,0x8
  00445213: 8b d8                                           mov    ebx,eax
  00445215: f7 db                                           neg    ebx
  00445217: 1a db                                           sbb    bl,bl
  00445219: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0044521c: fe c3                                           inc    bl
  0044521e: e8 1d c8 08 00                                  call   0x4d1a40
  00445223: 84 db                                           test   bl,bl
  00445225: 74 a6                                           je     0x4451cd
  00445227: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0044522a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0044522d: 40                                              inc    eax
  0044522e: 3b c1                                           cmp    eax,ecx
  00445230: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00445233: 77 19                                           ja     0x44524e
  00445235: eb 96                                           jmp    0x4451cd
  00445237: 85 c9                                           test   ecx,ecx
  00445239: 74 07                                           je     0x445242
  0044523b: c6 05 64 44 51 00 07                            mov    BYTE PTR ds:0x514464,0x7
  00445242: c7 05 70 44 51 00 00 00 00 00                   mov    DWORD PTR ds:0x514470,0x0
  0044524c: eb 03                                           jmp    0x445251
  0044524e: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  00445251: e8 aa ef fe ff                                  call   0x434200
  00445256: 8b 10                                           mov    edx,DWORD PTR [eax]
  00445258: 68 34 44 51 00                                  push   0x514434
  0044525d: 8b c8                                           mov    ecx,eax
  0044525f: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00445262: 68 38 44 51 00                                  push   0x514438
  00445267: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  0044526d: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  00445270: 5f                                              pop    edi
  00445271: 5e                                              pop    esi
  00445272: 5b                                              pop    ebx
  00445273: 8b e5                                           mov    esp,ebp
  00445275: 5d                                              pop    ebp
  00445276: c2 0c 00                                        ret    0xc
  00445280: 55                                              push   ebp
  00445281: 8b ec                                           mov    ebp,esp
  00445283: 83 ec 08                                        sub    esp,0x8
  00445286: 53                                              push   ebx
  00445287: 56                                              push   esi
  00445288: 57                                              push   edi
  00445289: 50                                              push   eax
  0044528a: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0044528d: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00445290: 58                                              pop    eax
  00445291: e8 6a ef fe ff                                  call   0x434200
  00445296: 8b 10                                           mov    edx,DWORD PTR [eax]
  00445298: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0044529b: 51                                              push   ecx
  0044529c: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0044529f: 68 30 44 51 00                                  push   0x514430
  004452a4: 51                                              push   ecx
  004452a5: 8b c8                                           mov    ecx,eax
  004452a7: ff 12                                           call   DWORD PTR [edx]
  004452a9: 68 38 44 51 00                                  push   0x514438
  004452ae: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  004452b4: e8 47 ef fe ff                                  call   0x434200
  004452b9: 8b 10                                           mov    edx,DWORD PTR [eax]
  004452bb: 68 34 44 51 00                                  push   0x514434
  004452c0: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004452c3: 51                                              push   ecx
  004452c4: 8b c8                                           mov    ecx,eax
  004452c6: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004452c9: a1 54 44 51 00                                  mov    eax,ds:0x514454
  004452ce: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004452d1: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004452d4: 33 c9                                           xor    ecx,ecx
  004452d6: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004452d9: a3 50 44 51 00                                  mov    ds:0x514450,eax
  004452de: 89 0d 70 44 51 00                               mov    DWORD PTR ds:0x514470,ecx
  004452e4: c6 05 64 44 51 00 08                            mov    BYTE PTR ds:0x514464,0x8
  004452eb: eb 05                                           jmp    0x4452f2
  004452ed: a1 50 44 51 00                                  mov    eax,ds:0x514450
  004452f2: 8b 0d 70 44 51 00                               mov    ecx,DWORD PTR ds:0x514470
  004452f8: 85 c9                                           test   ecx,ecx
  004452fa: 74 09                                           je     0x445305
  004452fc: 8b 00                                           mov    eax,DWORD PTR [eax]
  004452fe: a3 50 44 51 00                                  mov    ds:0x514450,eax
  00445303: eb 0b                                           jmp    0x445310
  00445305: b9 01 00 00 00                                  mov    ecx,0x1
  0044530a: 89 0d 70 44 51 00                               mov    DWORD PTR ds:0x514470,ecx
  00445310: 85 c0                                           test   eax,eax
  00445312: 74 33                                           je     0x445347
  00445314: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00445317: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00445319: 57                                              push   edi
  0044531a: 8d 45 08                                        lea    eax,[ebp+0x8]
  0044531d: 50                                              push   eax
  0044531e: ff 52 48                                        call   DWORD PTR [edx+0x48]
  00445321: 8b 00                                           mov    eax,DWORD PTR [eax]
  00445323: 56                                              push   esi
  00445324: 50                                              push   eax
  00445325: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  0044532b: 83 c4 08                                        add    esp,0x8
  0044532e: 8b d8                                           mov    ebx,eax
  00445330: f7 db                                           neg    ebx
  00445332: 1a db                                           sbb    bl,bl
  00445334: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00445337: fe c3                                           inc    bl
  00445339: e8 02 c7 08 00                                  call   0x4d1a40
  0044533e: 84 db                                           test   bl,bl
  00445340: 74 ab                                           je     0x4452ed
  00445342: ff 45 fc                                        inc    DWORD PTR [ebp-0x4]
  00445345: eb a6                                           jmp    0x4452ed
  00445347: 85 c9                                           test   ecx,ecx
  00445349: 74 07                                           je     0x445352
  0044534b: c6 05 64 44 51 00 07                            mov    BYTE PTR ds:0x514464,0x7
  00445352: c7 05 70 44 51 00 00 00 00 00                   mov    DWORD PTR ds:0x514470,0x0
  0044535c: e8 9f ee fe ff                                  call   0x434200
  00445361: 8b 10                                           mov    edx,DWORD PTR [eax]
  00445363: 68 34 44 51 00                                  push   0x514434
  00445368: 8b c8                                           mov    ecx,eax
  0044536a: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0044536d: 68 38 44 51 00                                  push   0x514438
  00445372: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00445378: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0044537b: 5f                                              pop    edi
  0044537c: 5e                                              pop    esi
  0044537d: 5b                                              pop    ebx
  0044537e: 8b e5                                           mov    esp,ebp
  00445380: 5d                                              pop    ebp
  00445381: c2 08 00                                        ret    0x8
  004487d0: 55                                              push   ebp
  004487d1: 8b ec                                           mov    ebp,esp
  004487d3: 8a 0d 79 44 51 00                               mov    cl,BYTE PTR ds:0x514479
  004487d9: b0 01                                           mov    al,0x1
  004487db: 84 c8                                           test   al,cl
  004487dd: 75 12                                           jne    0x4487f1
  004487df: 0a c8                                           or     cl,al
  004487e1: 88 0d 79 44 51 00                               mov    BYTE PTR ds:0x514479,cl
  004487e7: e8 c4 ff ff ff                                  call   0x4487b0
  004487ec: a2 78 44 51 00                                  mov    ds:0x514478,al
  004487f1: a0 78 44 51 00                                  mov    al,ds:0x514478
  004487f6: 84 c0                                           test   al,al
  004487f8: 74 05                                           je     0x4487ff
  004487fa: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  004487fd: 5d                                              pop    ebp
  004487fe: c3                                              ret
  004487ff: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00448802: 8b c8                                           mov    ecx,eax
  00448804: 81 e1 ff 00 00 00                               and    ecx,0xff
  0044880a: 81 c1 40 ff ff ff                               add    ecx,0xffffff40
  00448810: 83 f9 3f                                        cmp    ecx,0x3f
  00448813: 77 4d                                           ja     0x448862
  00448815: 33 d2                                           xor    edx,edx
  00448817: 8a 91 a8 88 44 00                               mov    dl,BYTE PTR [ecx+0x4488a8]
  0044881d: ff 24 95 64 88 44 00                            jmp    DWORD PTR [edx*4+0x448864]
  00448862: 5d                                              pop    ebp
  00448863: c3                                              ret
  004490c0: 8b 41 28                                        mov    eax,DWORD PTR [ecx+0x28]
  004490c3: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  004490c6: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  004490cd: c6 41 34 08                                     mov    BYTE PTR [ecx+0x34],0x8
  004490d1: c3                                              ret
  00471490: 55                                              push   ebp
  00471491: 8b ec                                           mov    ebp,esp
  00471493: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00471496: 56                                              push   esi
  00471497: 8b f1                                           mov    esi,ecx
  00471499: 33 c9                                           xor    ecx,ecx
  0047149b: 3b c1                                           cmp    eax,ecx
  0047149d: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004714a0: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004714a3: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  004714a6: 75 07                                           jne    0x4714af
  004714a8: 32 c0                                           xor    al,al
  004714aa: 5e                                              pop    esi
  004714ab: 5d                                              pop    ebp
  004714ac: c2 04 00                                        ret    0x4
  004714af: 57                                              push   edi
  004714b0: 8d 0c 80                                        lea    ecx,[eax+eax*4]
  004714b3: 8d 3c 48                                        lea    edi,[eax+ecx*2]
  004714b6: c1 e7 02                                        shl    edi,0x2
  004714b9: 57                                              push   edi
  004714ba: e8 31 0b fd ff                                  call   0x441ff0
  004714bf: 83 c4 04                                        add    esp,0x4
  004714c2: 03 f8                                           add    edi,eax
  004714c4: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004714c7: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004714ca: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004714cd: 5f                                              pop    edi
  004714ce: b0 01                                           mov    al,0x1
  004714d0: 5e                                              pop    esi
  004714d1: 5d                                              pop    ebp
  004714d2: c2 04 00                                        ret    0x4
  004714e0: 53                                              push   ebx
  004714e1: 8b d9                                           mov    ebx,ecx
  004714e3: 56                                              push   esi
  004714e4: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004714e7: 33 c0                                           xor    eax,eax
  004714e9: 3b f0                                           cmp    esi,eax
  004714eb: 74 25                                           je     0x471512
  004714ed: 57                                              push   edi
  004714ee: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004714f1: 3b f7                                           cmp    esi,edi
  004714f3: 74 0e                                           je     0x471503
  004714f5: 8b ce                                           mov    ecx,esi
  004714f7: e8 b4 6c fb ff                                  call   0x4281b0
  004714fc: 83 c6 2c                                        add    esi,0x2c
  004714ff: 3b f7                                           cmp    esi,edi
  00471501: 75 f2                                           jne    0x4714f5
  00471503: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00471506: 50                                              push   eax
  00471507: e8 54 0b fd ff                                  call   0x442060
  0047150c: 83 c4 04                                        add    esp,0x4
  0047150f: 33 c0                                           xor    eax,eax
  00471511: 5f                                              pop    edi
  00471512: 5e                                              pop    esi
  00471513: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00471516: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00471519: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0047151c: 5b                                              pop    ebx
  0047151d: c3                                              ret
  00471540: 55                                              push   ebp
  00471541: 8b ec                                           mov    ebp,esp
  00471543: 6a ff                                           push   0xffffffff
  00471545: 68 2b 8c 4d 00                                  push   0x4d8c2b
  0047154a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00471550: 50                                              push   eax
  00471551: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00471558: 81 ec 10 01 00 00                               sub    esp,0x110
  0047155e: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00471564: e8 27 7c fe ff                                  call   0x459190
  00471569: 68 34 9b 50 00                                  push   0x509b34
  0047156e: 68 02 00 00 80                                  push   0x80000002
  00471573: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00471579: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00471580: e8 8b 7c fe ff                                  call   0x459210
  00471585: 85 c0                                           test   eax,eax
  00471587: 74 1c                                           je     0x4715a5
  00471589: 6a 00                                           push   0x0
  0047158b: 68 24 9b 50 00                                  push   0x509b24
  00471590: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  00471596: e8 65 7d fe ff                                  call   0x459300
  0047159b: 85 c0                                           test   eax,eax
  0047159d: 0f 95 c0                                        setne  al
  004715a0: a2 dc 5d 51 00                                  mov    ds:0x515ddc,al
  004715a5: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  004715ab: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004715b2: e8 e9 7b fe ff                                  call   0x4591a0
  004715b7: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004715ba: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004715c1: 8b e5                                           mov    esp,ebp
  004715c3: 5d                                              pop    ebp
  004715c4: c3                                              ret
  004ce566: ff 25 54 e4 4d 00                               jmp    DWORD PTR ds:0x4de454
  004ce900: 56                                              push   esi
  004ce901: 8b f1                                           mov    esi,ecx
  004ce903: e8 f8 2f 00 00                                  call   0x4d1900
  004ce908: 6a 00                                           push   0x0
  004ce90a: 6a 00                                           push   0x0
  004ce90c: 68 f0 f1 4c 00                                  push   0x4cf1f0
  004ce911: ff 15 58 e3 4d 00                               call   DWORD PTR ds:0x4de358
  004ce917: 83 c4 0c                                        add    esp,0xc
  004ce91a: 8b c6                                           mov    eax,esi
  004ce91c: 5e                                              pop    esi
  004ce91d: c3                                              ret
  004cec50: 55                                              push   ebp
  004cec51: 8b ec                                           mov    ebp,esp
  004cec53: 6a ff                                           push   0xffffffff
  004cec55: 68 a9 de 4d 00                                  push   0x4ddea9
  004cec5a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004cec60: 50                                              push   eax
  004cec61: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004cec68: 51                                              push   ecx
  004cec69: 53                                              push   ebx
  004cec6a: 56                                              push   esi
  004cec6b: 57                                              push   edi
  004cec6c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004cec71: 8b 00                                           mov    eax,DWORD PTR [eax]
  004cec73: 8d 59 04                                        lea    ebx,[ecx+0x4]
  004cec76: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004cec79: 8b f9                                           mov    edi,ecx
  004cec7b: 3b c7                                           cmp    eax,edi
  004cec7d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004cec84: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  004cec87: 73 05                                           jae    0x4cec8e
  004cec89: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004cec8c: 8b f8                                           mov    edi,eax
  004cec8e: 8d 55 08                                        lea    edx,[ebp+0x8]
  004cec91: 3b da                                           cmp    ebx,edx
  004cec93: 75 6f                                           jne    0x4ced04
  004cec95: 8b f0                                           mov    esi,eax
  004cec97: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  004cec9a: 73 08                                           jae    0x4ceca4
  004cec9c: 8b cb                                           mov    ecx,ebx
  004cec9e: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004ceca4: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004ceca7: 2b c7                                           sub    eax,edi
  004ceca9: 3b c6                                           cmp    eax,esi
  004cecab: 73 02                                           jae    0x4cecaf
  004cecad: 8b f0                                           mov    esi,eax
  004cecaf: 85 f6                                           test   esi,esi
  004cecb1: 76 40                                           jbe    0x4cecf3
  004cecb3: 8b cb                                           mov    ecx,ebx
  004cecb5: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004cecbb: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004cecbe: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004cecc1: 2b ce                                           sub    ecx,esi
  004cecc3: 03 c7                                           add    eax,edi
  004cecc5: 2b cf                                           sub    ecx,edi
  004cecc7: 51                                              push   ecx
  004cecc8: 8d 14 30                                        lea    edx,[eax+esi*1]
  004ceccb: 52                                              push   edx
  004ceccc: 50                                              push   eax
  004ceccd: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004cecd3: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004cecd6: 83 c4 0c                                        add    esp,0xc
  004cecd9: 6a 00                                           push   0x0
  004cecdb: 2b fe                                           sub    edi,esi
  004cecdd: 57                                              push   edi
  004cecde: 8b cb                                           mov    ecx,ebx
  004cece0: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004cece6: 84 c0                                           test   al,al
  004cece8: 74 09                                           je     0x4cecf3
  004cecea: 57                                              push   edi
  004ceceb: 8b cb                                           mov    ecx,ebx
  004ceced: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004cecf3: 6a 00                                           push   0x0
  004cecf5: 6a 00                                           push   0x0
  004cecf7: 8b cb                                           mov    ecx,ebx
  004cecf9: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004cecff: e9 80 00 00 00                                  jmp    0x4ced84
  004ced04: 85 ff                                           test   edi,edi
  004ced06: 76 41                                           jbe    0x4ced49
  004ced08: 3b f9                                           cmp    edi,ecx
  004ced0a: 75 3d                                           jne    0x4ced49
  004ced0c: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004ced0f: 85 f6                                           test   esi,esi
  004ced11: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004ced16: 74 02                                           je     0x4ced1a
  004ced18: 8b c6                                           mov    eax,esi
  004ced1a: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004ced1e: 73 2c                                           jae    0x4ced4c
  004ced20: 6a 01                                           push   0x1
  004ced22: 8b cb                                           mov    ecx,ebx
  004ced24: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004ced2a: 85 f6                                           test   esi,esi
  004ced2c: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004ced31: 74 02                                           je     0x4ced35
  004ced33: 8b c6                                           mov    eax,esi
  004ced35: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004ced38: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004ced3b: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004ced3e: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004ced41: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004ced44: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004ced47: eb 3e                                           jmp    0x4ced87
  004ced49: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004ced4c: 6a 01                                           push   0x1
  004ced4e: 57                                              push   edi
  004ced4f: 8b cb                                           mov    ecx,ebx
  004ced51: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004ced57: 84 c0                                           test   al,al
  004ced59: 74 2c                                           je     0x4ced87
  004ced5b: 85 f6                                           test   esi,esi
  004ced5d: 75 06                                           jne    0x4ced65
  004ced5f: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004ced65: 8b cf                                           mov    ecx,edi
  004ced67: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004ced6a: 8b c1                                           mov    eax,ecx
  004ced6c: c1 e9 02                                        shr    ecx,0x2
  004ced6f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ced71: 8b c8                                           mov    ecx,eax
  004ced73: 83 e1 03                                        and    ecx,0x3
  004ced76: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ced78: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  004ced7b: 51                                              push   ecx
  004ced7c: 8b cb                                           mov    ecx,ebx
  004ced7e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004ced84: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004ced87: 85 f6                                           test   esi,esi
  004ced89: 74 2d                                           je     0x4cedb8
  004ced8b: 8a 46 ff                                        mov    al,BYTE PTR [esi-0x1]
  004ced8e: 84 c0                                           test   al,al
  004ced90: 74 1c                                           je     0x4cedae
  004ced92: 3c ff                                           cmp    al,0xff
  004ced94: 74 18                                           je     0x4cedae
  004ced96: fe c8                                           dec    al
  004ced98: 5f                                              pop    edi
  004ced99: 88 46 ff                                        mov    BYTE PTR [esi-0x1],al
  004ced9c: 5e                                              pop    esi
  004ced9d: 5b                                              pop    ebx
  004ced9e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ceda1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ceda8: 8b e5                                           mov    esp,ebp
  004cedaa: 5d                                              pop    ebp
  004cedab: c2 10 00                                        ret    0x10
  004cedae: 4e                                              dec    esi
  004cedaf: 56                                              push   esi
  004cedb0: e8 ab 32 f7 ff                                  call   0x442060
  004cedb5: 83 c4 04                                        add    esp,0x4
  004cedb8: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004cedbb: 5f                                              pop    edi
  004cedbc: 5e                                              pop    esi
  004cedbd: 5b                                              pop    ebx
  004cedbe: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004cedc5: 8b e5                                           mov    esp,ebp
  004cedc7: 5d                                              pop    ebp
  004cedc8: c2 10 00                                        ret    0x10
  004cedd0: 55                                              push   ebp
  004cedd1: 8b ec                                           mov    ebp,esp
  004cedd3: 6a ff                                           push   0xffffffff
  004cedd5: 68 c9 de 4d 00                                  push   0x4ddec9
  004cedda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004cede0: 50                                              push   eax
  004cede1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004cede8: 81 ec 24 08 00 00                               sub    esp,0x824
  004cedee: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  004cedf1: 53                                              push   ebx
  004cedf2: 56                                              push   esi
  004cedf3: 57                                              push   edi
  004cedf4: 33 f6                                           xor    esi,esi
  004cedf6: 56                                              push   esi
  004cedf7: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cedfa: 89 75 d0                                        mov    DWORD PTR [ebp-0x30],esi
  004cedfd: c6 85 d0 f7 ff ff 00                            mov    BYTE PTR [ebp-0x830],0x0
  004cee04: 88 45 e4                                        mov    BYTE PTR [ebp-0x1c],al
  004cee07: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004cee0d: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004cee10: 66 83 ff 08                                     cmp    di,0x8
  004cee14: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  004cee17: 0f 84 54 01 00 00                               je     0x4cef71
  004cee1d: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  004cee20: 51                                              push   ecx
  004cee21: ff 15 e4 e0 4d 00                               call   DWORD PTR ds:0x4de0e4
  004cee27: 8b c7                                           mov    eax,edi
  004cee29: 25 ff ff 00 00                                  and    eax,0xffff
  004cee2e: 83 f8 40                                        cmp    eax,0x40
  004cee31: 7f 41                                           jg     0x4cee74
  004cee33: 74 38                                           je     0x4cee6d
  004cee35: 48                                              dec    eax
  004cee36: 83 f8 1f                                        cmp    eax,0x1f
  004cee39: 77 73                                           ja     0x4ceeae
  004cee3b: 33 d2                                           xor    edx,edx
  004cee3d: 8a 90 fc f0 4c 00                               mov    dl,BYTE PTR [eax+0x4cf0fc]
  004cee43: ff 24 95 e4 f0 4c 00                            jmp    DWORD PTR [edx*4+0x4cf0e4]
  004cee6d: b8 40 09 51 00                                  mov    eax,0x510940
  004cee72: eb 4d                                           jmp    0x4ceec1
  004cee74: 3d 00 02 00 00                                  cmp    eax,0x200
  004cee79: 7f 25                                           jg     0x4ceea0
  004cee7b: 74 1c                                           je     0x4cee99
  004cee7d: 3d 80 00 00 00                                  cmp    eax,0x80
  004cee82: 74 0e                                           je     0x4cee92
  004cee84: 3d 00 01 00 00                                  cmp    eax,0x100
  004cee89: 75 23                                           jne    0x4ceeae
  004cee8b: b8 38 09 51 00                                  mov    eax,0x510938
  004cee90: eb 2f                                           jmp    0x4ceec1
  004cee92: b8 30 09 51 00                                  mov    eax,0x510930
  004cee97: eb 28                                           jmp    0x4ceec1
  004cee99: b8 28 09 51 00                                  mov    eax,0x510928
  004cee9e: eb 21                                           jmp    0x4ceec1
  004ceea0: 3d 00 04 00 00                                  cmp    eax,0x400
  004ceea5: 74 15                                           je     0x4ceebc
  004ceea7: 3d 00 08 00 00                                  cmp    eax,0x800
  004ceeac: 74 07                                           je     0x4ceeb5
  004ceeae: b8 24 09 51 00                                  mov    eax,0x510924
  004ceeb3: eb 0c                                           jmp    0x4ceec1
  004ceeb5: b8 18 09 51 00                                  mov    eax,0x510918
  004ceeba: eb 05                                           jmp    0x4ceec1
  004ceebc: b8 10 09 51 00                                  mov    eax,0x510910
  004ceec1: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  004ceec4: 8b 55 de                                        mov    edx,DWORD PTR [ebp-0x22]
  004ceec7: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004ceecd: 51                                              push   ecx
  004ceece: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  004ceed1: 81 e2 ff ff 00 00                               and    edx,0xffff
  004ceed7: 52                                              push   edx
  004ceed8: 8b 55 d4                                        mov    edx,DWORD PTR [ebp-0x2c]
  004ceedb: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004ceee1: 51                                              push   ecx
  004ceee2: 8b 4d da                                        mov    ecx,DWORD PTR [ebp-0x26]
  004ceee5: 81 e2 ff ff 00 00                               and    edx,0xffff
  004ceeeb: 52                                              push   edx
  004ceeec: 8b 55 d6                                        mov    edx,DWORD PTR [ebp-0x2a]
  004ceeef: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004ceef5: 51                                              push   ecx
  004ceef6: 81 e2 ff ff 00 00                               and    edx,0xffff
  004ceefc: 52                                              push   edx
  004ceefd: 50                                              push   eax
  004ceefe: 8d 85 d0 f7 ff ff                               lea    eax,[ebp-0x830]
  004cef04: 68 f0 08 51 00                                  push   0x5108f0
  004cef09: 50                                              push   eax
  004cef0a: e8 31 4a f3 ff                                  call   0x403940
  004cef0f: 8b f0                                           mov    esi,eax
  004cef11: 83 c9 ff                                        or     ecx,0xffffffff
  004cef14: 33 c0                                           xor    eax,eax
  004cef16: 83 c4 24                                        add    esp,0x24
  004cef19: 8b fe                                           mov    edi,esi
  004cef1b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cef1d: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004cef20: f7 d1                                           not    ecx
  004cef22: 49                                              dec    ecx
  004cef23: 85 c0                                           test   eax,eax
  004cef25: 8b d9                                           mov    ebx,ecx
  004cef27: 74 24                                           je     0x4cef4d
  004cef29: 3b c6                                           cmp    eax,esi
  004cef2b: 77 20                                           ja     0x4cef4d
  004cef2d: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004cef30: 8d 14 08                                        lea    edx,[eax+ecx*1]
  004cef33: 3b f2                                           cmp    esi,edx
  004cef35: 77 16                                           ja     0x4cef4d
  004cef37: 53                                              push   ebx
  004cef38: 2b f0                                           sub    esi,eax
  004cef3a: 56                                              push   esi
  004cef3b: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004cef3e: 50                                              push   eax
  004cef3f: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cef42: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004cef48: e9 9b 00 00 00                                  jmp    0x4cefe8
  004cef4d: 6a 01                                           push   0x1
  004cef4f: 53                                              push   ebx
  004cef50: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cef53: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004cef59: 84 c0                                           test   al,al
  004cef5b: 0f 84 87 00 00 00                               je     0x4cefe8
  004cef61: 8b 7d e8                                        mov    edi,DWORD PTR [ebp-0x18]
  004cef64: 8b cb                                           mov    ecx,ebx
  004cef66: 8b d1                                           mov    edx,ecx
  004cef68: c1 e9 02                                        shr    ecx,0x2
  004cef6b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cef6d: 8b ca                                           mov    ecx,edx
  004cef6f: eb 68                                           jmp    0x4cefd9
  004cef71: 83 c9 ff                                        or     ecx,0xffffffff
  004cef74: 33 c0                                           xor    eax,eax
  004cef76: bf ec 08 51 00                                  mov    edi,0x5108ec
  004cef7b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cef7d: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004cef80: f7 d1                                           not    ecx
  004cef82: 49                                              dec    ecx
  004cef83: 3b c6                                           cmp    eax,esi
  004cef85: 8b d9                                           mov    ebx,ecx
  004cef87: 74 2d                                           je     0x4cefb6
  004cef89: 3d ec 08 51 00                                  cmp    eax,0x5108ec
  004cef8e: 77 26                                           ja     0x4cefb6
  004cef90: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004cef93: 8d 14 08                                        lea    edx,[eax+ecx*1]
  004cef96: 81 fa ec 08 51 00                               cmp    edx,0x5108ec
  004cef9c: 72 18                                           jb     0x4cefb6
  004cef9e: 53                                              push   ebx
  004cef9f: b9 ec 08 51 00                                  mov    ecx,0x5108ec
  004cefa4: 2b c8                                           sub    ecx,eax
  004cefa6: 51                                              push   ecx
  004cefa7: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  004cefaa: 52                                              push   edx
  004cefab: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cefae: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004cefb4: eb 32                                           jmp    0x4cefe8
  004cefb6: 6a 01                                           push   0x1
  004cefb8: 53                                              push   ebx
  004cefb9: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cefbc: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004cefc2: 84 c0                                           test   al,al
  004cefc4: 74 22                                           je     0x4cefe8
  004cefc6: 8b 7d e8                                        mov    edi,DWORD PTR [ebp-0x18]
  004cefc9: 8b cb                                           mov    ecx,ebx
  004cefcb: 8b c1                                           mov    eax,ecx
  004cefcd: c1 e9 02                                        shr    ecx,0x2
  004cefd0: be ec 08 51 00                                  mov    esi,0x5108ec
  004cefd5: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cefd7: 8b c8                                           mov    ecx,eax
  004cefd9: 83 e1 03                                        and    ecx,0x3
  004cefdc: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cefde: 53                                              push   ebx
  004cefdf: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cefe2: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004cefe8: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004cefeb: 83 c9 ff                                        or     ecx,0xffffffff
  004cefee: 33 c0                                           xor    eax,eax
  004ceff0: 8b fe                                           mov    edi,esi
  004ceff2: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ceff4: f7 d1                                           not    ecx
  004ceff6: 49                                              dec    ecx
  004ceff7: 8b f9                                           mov    edi,ecx
  004ceff9: 56                                              push   esi
  004ceffa: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004ceffd: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  004cf003: 84 c0                                           test   al,al
  004cf005: 74 16                                           je     0x4cf01d
  004cf007: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  004cf00a: 57                                              push   edi
  004cf00b: 2b f2                                           sub    esi,edx
  004cf00d: 56                                              push   esi
  004cf00e: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cf011: 51                                              push   ecx
  004cf012: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cf015: ff 15 04 e5 4d 00                               call   DWORD PTR ds:0x4de504
  004cf01b: eb 55                                           jmp    0x4cf072
  004cf01d: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004cf023: 8b 02                                           mov    eax,DWORD PTR [edx]
  004cf025: 2b 45 ec                                        sub    eax,DWORD PTR [ebp-0x14]
  004cf028: 3b c7                                           cmp    eax,edi
  004cf02a: 77 09                                           ja     0x4cf035
  004cf02c: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cf02f: ff 15 30 e5 4d 00                               call   DWORD PTR ds:0x4de530
  004cf035: 85 ff                                           test   edi,edi
  004cf037: 76 39                                           jbe    0x4cf072
  004cf039: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004cf03c: 8d 1c 39                                        lea    ebx,[ecx+edi*1]
  004cf03f: 6a 00                                           push   0x0
  004cf041: 53                                              push   ebx
  004cf042: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cf045: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004cf04b: 84 c0                                           test   al,al
  004cf04d: 74 23                                           je     0x4cf072
  004cf04f: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  004cf052: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004cf055: 8b cf                                           mov    ecx,edi
  004cf057: 8d 3c 02                                        lea    edi,[edx+eax*1]
  004cf05a: 8b d1                                           mov    edx,ecx
  004cf05c: c1 e9 02                                        shr    ecx,0x2
  004cf05f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cf061: 8b ca                                           mov    ecx,edx
  004cf063: 83 e1 03                                        and    ecx,0x3
  004cf066: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cf068: 53                                              push   ebx
  004cf069: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cf06c: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004cf072: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004cf075: 8a 45 e4                                        mov    al,BYTE PTR [ebp-0x1c]
  004cf078: 6a 00                                           push   0x0
  004cf07a: 8b ce                                           mov    ecx,esi
  004cf07c: 88 06                                           mov    BYTE PTR [esi],al
  004cf07e: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004cf084: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004cf08a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004cf08c: 52                                              push   edx
  004cf08d: 6a 00                                           push   0x0
  004cf08f: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004cf092: 50                                              push   eax
  004cf093: 8b ce                                           mov    ecx,esi
  004cf095: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004cf09b: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004cf09e: 85 c9                                           test   ecx,ecx
  004cf0a0: 74 2d                                           je     0x4cf0cf
  004cf0a2: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  004cf0a5: 84 c0                                           test   al,al
  004cf0a7: 74 1c                                           je     0x4cf0c5
  004cf0a9: 3c ff                                           cmp    al,0xff
  004cf0ab: 74 18                                           je     0x4cf0c5
  004cf0ad: fe c8                                           dec    al
  004cf0af: 5f                                              pop    edi
  004cf0b0: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004cf0b3: 8b c6                                           mov    eax,esi
  004cf0b5: 5e                                              pop    esi
  004cf0b6: 5b                                              pop    ebx
  004cf0b7: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004cf0ba: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004cf0c1: 8b e5                                           mov    esp,ebp
  004cf0c3: 5d                                              pop    ebp
  004cf0c4: c3                                              ret
  004cf0c5: 49                                              dec    ecx
  004cf0c6: 51                                              push   ecx
  004cf0c7: e8 94 2f f7 ff                                  call   0x442060
  004cf0cc: 83 c4 04                                        add    esp,0x4
  004cf0cf: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004cf0d2: 5f                                              pop    edi
  004cf0d3: 8b c6                                           mov    eax,esi
  004cf0d5: 5e                                              pop    esi
  004cf0d6: 5b                                              pop    ebx
  004cf0d7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004cf0de: 8b e5                                           mov    esp,ebp
  004cf0e0: 5d                                              pop    ebp
  004cf0e1: c3                                              ret
  004cf340: 55                                              push   ebp
  004cf341: 8b ec                                           mov    ebp,esp
  004cf343: 6a ff                                           push   0xffffffff
  004cf345: 68 33 df 4d 00                                  push   0x4ddf33
  004cf34a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004cf350: 50                                              push   eax
  004cf351: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004cf358: 83 ec 1c                                        sub    esp,0x1c
  004cf35b: a1 80 3f 56 00                                  mov    eax,ds:0x563f80
  004cf360: 56                                              push   esi
  004cf361: b9 80 3f 56 00                                  mov    ecx,0x563f80
  004cf366: 57                                              push   edi
  004cf367: 89 4d dc                                        mov    DWORD PTR [ebp-0x24],ecx
  004cf36a: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004cf36d: 8b 3d 78 3f 56 00                               mov    edi,DWORD PTR ds:0x563f78
  004cf373: 85 ff                                           test   edi,edi
  004cf375: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004cf37c: 0f 85 d8 00 00 00                               jne    0x4cf45a
  004cf382: 53                                              push   ebx
  004cf383: c7 45 ec 0a 00 00 00                            mov    DWORD PTR [ebp-0x14],0xa
  004cf38a: 6a 14                                           push   0x14
  004cf38c: e8 5f 2c f7 ff                                  call   0x441ff0
  004cf391: 8b f0                                           mov    esi,eax
  004cf393: 83 c4 04                                        add    esp,0x4
  004cf396: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  004cf399: 85 f6                                           test   esi,esi
  004cf39b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004cf39f: 0f 84 8e 00 00 00                               je     0x4cf433
  004cf3a5: 8a 4d f3                                        mov    cl,BYTE PTR [ebp-0xd]
  004cf3a8: 8d 5e 04                                        lea    ebx,[esi+0x4]
  004cf3ab: c7 06 00 00 00 00                               mov    DWORD PTR [esi],0x0
  004cf3b1: 88 0b                                           mov    BYTE PTR [ebx],cl
  004cf3b3: 6a 00                                           push   0x0
  004cf3b5: 8b cb                                           mov    ecx,ebx
  004cf3b7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004cf3bd: 83 c9 ff                                        or     ecx,0xffffffff
  004cf3c0: 33 c0                                           xor    eax,eax
  004cf3c2: bf 58 13 51 00                                  mov    edi,0x511358
  004cf3c7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cf3c9: f7 d1                                           not    ecx
  004cf3cb: 49                                              dec    ecx
  004cf3cc: 8b f9                                           mov    edi,ecx
  004cf3ce: 68 58 13 51 00                                  push   0x511358
  004cf3d3: 8b cb                                           mov    ecx,ebx
  004cf3d5: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  004cf3d8: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  004cf3de: 84 c0                                           test   al,al
  004cf3e0: 74 17                                           je     0x4cf3f9
  004cf3e2: 57                                              push   edi
  004cf3e3: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004cf3e6: ba 58 13 51 00                                  mov    edx,0x511358
  004cf3eb: 2b d7                                           sub    edx,edi
  004cf3ed: 52                                              push   edx
  004cf3ee: 53                                              push   ebx
  004cf3ef: 8b cb                                           mov    ecx,ebx
  004cf3f1: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004cf3f7: eb 3c                                           jmp    0x4cf435
  004cf3f9: 6a 01                                           push   0x1
  004cf3fb: 57                                              push   edi
  004cf3fc: 8b cb                                           mov    ecx,ebx
  004cf3fe: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004cf404: 84 c0                                           test   al,al
  004cf406: 74 2d                                           je     0x4cf435
  004cf408: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004cf40b: 8b cf                                           mov    ecx,edi
  004cf40d: 8b f8                                           mov    edi,eax
  004cf40f: 8b c1                                           mov    eax,ecx
  004cf411: c1 e9 02                                        shr    ecx,0x2
  004cf414: be 58 13 51 00                                  mov    esi,0x511358
  004cf419: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cf41b: 8b c8                                           mov    ecx,eax
  004cf41d: 83 e1 03                                        and    ecx,0x3
  004cf420: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cf422: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004cf425: 51                                              push   ecx
  004cf426: 8b cb                                           mov    ecx,ebx
  004cf428: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004cf42e: 8b 75 e4                                        mov    esi,DWORD PTR [ebp-0x1c]
  004cf431: eb 02                                           jmp    0x4cf435
  004cf433: 33 f6                                           xor    esi,esi
  004cf435: 8d 55 e0                                        lea    edx,[ebp-0x20]
  004cf438: 52                                              push   edx
  004cf439: b9 68 3f 56 00                                  mov    ecx,0x563f68
  004cf43e: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004cf442: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  004cf445: e8 26 02 00 00                                  call   0x4cf670
  004cf44a: ff 4d ec                                        dec    DWORD PTR [ebp-0x14]
  004cf44d: 0f 85 37 ff ff ff                               jne    0x4cf38a
  004cf453: 8b 3d 78 3f 56 00                               mov    edi,DWORD PTR ds:0x563f78
  004cf459: 5b                                              pop    ebx
  004cf45a: a1 74 3f 56 00                                  mov    eax,ds:0x563f74
  004cf45f: 03 c7                                           add    eax,edi
  004cf461: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004cf464: 89 45 d8                                        mov    DWORD PTR [ebp-0x28],eax
  004cf467: 8b c1                                           mov    eax,ecx
  004cf469: c1 e8 0a                                        shr    eax,0xa
  004cf46c: 8b f0                                           mov    esi,eax
  004cf46e: c1 e6 0a                                        shl    esi,0xa
  004cf471: ba 68 3f 56 00                                  mov    edx,0x563f68
  004cf476: 2b ce                                           sub    ecx,esi
  004cf478: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  004cf47b: 3b f0                                           cmp    esi,eax
  004cf47d: 77 02                                           ja     0x4cf481
  004cf47f: 2b c6                                           sub    eax,esi
  004cf481: 85 ff                                           test   edi,edi
  004cf483: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  004cf486: 8b 04 82                                        mov    eax,DWORD PTR [edx+eax*4]
  004cf489: 8b 34 88                                        mov    esi,DWORD PTR [eax+ecx*4]
  004cf48c: 74 13                                           je     0x4cf4a1
  004cf48e: 4f                                              dec    edi
  004cf48f: 89 3d 78 3f 56 00                               mov    DWORD PTR ds:0x563f78,edi
  004cf495: 75 0a                                           jne    0x4cf4a1
  004cf497: c7 05 74 3f 56 00 00 00 00 00                   mov    DWORD PTR ds:0x563f74,0x0
  004cf4a1: 8b 15 80 3f 56 00                               mov    edx,DWORD PTR ds:0x563f80
  004cf4a7: b9 80 3f 56 00                                  mov    ecx,0x563f80
  004cf4ac: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004cf4b3: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004cf4b6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004cf4b9: 5f                                              pop    edi
  004cf4ba: 8b c6                                           mov    eax,esi
  004cf4bc: 5e                                              pop    esi
  004cf4bd: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004cf4c4: 8b e5                                           mov    esp,ebp
  004cf4c6: 5d                                              pop    ebp
  004cf4c7: c3                                              ret
  004cf4d0: 55                                              push   ebp
  004cf4d1: 8b ec                                           mov    ebp,esp
  004cf4d3: 6a ff                                           push   0xffffffff
  004cf4d5: 68 48 df 4d 00                                  push   0x4ddf48
  004cf4da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004cf4e0: 50                                              push   eax
  004cf4e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004cf4e8: 83 ec 08                                        sub    esp,0x8
  004cf4eb: a1 80 3f 56 00                                  mov    eax,ds:0x563f80
  004cf4f0: 56                                              push   esi
  004cf4f1: 8b f1                                           mov    esi,ecx
  004cf4f3: b9 80 3f 56 00                                  mov    ecx,0x563f80
  004cf4f8: c7 45 ec 80 3f 56 00                            mov    DWORD PTR [ebp-0x14],0x563f80
  004cf4ff: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004cf502: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004cf505: 51                                              push   ecx
  004cf506: b9 68 3f 56 00                                  mov    ecx,0x563f68
  004cf50b: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004cf512: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004cf515: e8 56 01 00 00                                  call   0x4cf670
  004cf51a: 8b 15 80 3f 56 00                               mov    edx,DWORD PTR ds:0x563f80
  004cf520: b9 80 3f 56 00                                  mov    ecx,0x563f80
  004cf525: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004cf52c: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004cf52f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004cf532: 5e                                              pop    esi
  004cf533: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004cf53a: 8b e5                                           mov    esp,ebp
  004cf53c: 5d                                              pop    ebp
  004cf53d: c3                                              ret
  004cf540: b9 a8 3f 56 00                                  mov    ecx,0x563fa8
  004cf545: e9 06 00 00 00                                  jmp    0x4cf550
  004cf550: 53                                              push   ebx
  004cf551: 56                                              push   esi
  004cf552: 8b f1                                           mov    esi,ecx
  004cf554: 8b 46 34                                        mov    eax,DWORD PTR [esi+0x34]
  004cf557: 33 db                                           xor    ebx,ebx
  004cf559: 3b c3                                           cmp    eax,ebx
  004cf55b: 57                                              push   edi
  004cf55c: 0f 85 87 00 00 00                               jne    0x4cf5e9
  004cf562: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004cf565: 68 10 27 00 00                                  push   0x2710
  004cf56a: 50                                              push   eax
  004cf56b: ff 15 1c e1 4d 00                               call   DWORD PTR ds:0x4de11c
  004cf571: 85 c0                                           test   eax,eax
  004cf573: 75 6e                                           jne    0x4cf5e3
  004cf575: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004cf578: 51                                              push   ecx
  004cf579: ff 15 3c e1 4d 00                               call   DWORD PTR ds:0x4de13c
  004cf57f: 39 5e 34                                        cmp    DWORD PTR [esi+0x34],ebx
  004cf582: 74 5f                                           je     0x4cf5e3
  004cf584: 8b 16                                           mov    edx,DWORD PTR [esi]
  004cf586: 8b ce                                           mov    ecx,esi
  004cf588: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004cf58b: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  004cf58e: 8b c1                                           mov    eax,ecx
  004cf590: c1 e8 0a                                        shr    eax,0xa
  004cf593: 8b d0                                           mov    edx,eax
  004cf595: c1 e2 0a                                        shl    edx,0xa
  004cf598: 2b ca                                           sub    ecx,edx
  004cf59a: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004cf59d: 3b d0                                           cmp    edx,eax
  004cf59f: 77 02                                           ja     0x4cf5a3
  004cf5a1: 2b c2                                           sub    eax,edx
  004cf5a3: 8b 56 28                                        mov    edx,DWORD PTR [esi+0x28]
  004cf5a6: 8b 04 82                                        mov    eax,DWORD PTR [edx+eax*4]
  004cf5a9: 8b 3c 88                                        mov    edi,DWORD PTR [eax+ecx*4]
  004cf5ac: 8b 46 34                                        mov    eax,DWORD PTR [esi+0x34]
  004cf5af: 3b c3                                           cmp    eax,ebx
  004cf5b1: 0f 84 80 00 00 00                               je     0x4cf637
  004cf5b7: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  004cf5ba: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004cf5bd: 41                                              inc    ecx
  004cf5be: c1 e2 0a                                        shl    edx,0xa
  004cf5c1: 3b d1                                           cmp    edx,ecx
  004cf5c3: 89 4e 30                                        mov    DWORD PTR [esi+0x30],ecx
  004cf5c6: 77 03                                           ja     0x4cf5cb
  004cf5c8: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  004cf5cb: 48                                              dec    eax
  004cf5cc: 3b c3                                           cmp    eax,ebx
  004cf5ce: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004cf5d1: 75 64                                           jne    0x4cf637
  004cf5d3: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  004cf5d6: 8b 06                                           mov    eax,DWORD PTR [esi]
  004cf5d8: 8b ce                                           mov    ecx,esi
  004cf5da: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004cf5dd: 8b c7                                           mov    eax,edi
  004cf5df: 5f                                              pop    edi
  004cf5e0: 5e                                              pop    esi
  004cf5e1: 5b                                              pop    ebx
  004cf5e2: c3                                              ret
  004cf5e3: 5f                                              pop    edi
  004cf5e4: 5e                                              pop    esi
  004cf5e5: 33 c0                                           xor    eax,eax
  004cf5e7: 5b                                              pop    ebx
  004cf5e8: c3                                              ret
  004cf5e9: 8b 16                                           mov    edx,DWORD PTR [esi]
  004cf5eb: 8b ce                                           mov    ecx,esi
  004cf5ed: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004cf5f0: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  004cf5f3: 8b c1                                           mov    eax,ecx
  004cf5f5: c1 e8 0a                                        shr    eax,0xa
  004cf5f8: 8b d0                                           mov    edx,eax
  004cf5fa: c1 e2 0a                                        shl    edx,0xa
  004cf5fd: 2b ca                                           sub    ecx,edx
  004cf5ff: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004cf602: 3b d0                                           cmp    edx,eax
  004cf604: 77 02                                           ja     0x4cf608
  004cf606: 2b c2                                           sub    eax,edx
  004cf608: 8b 56 28                                        mov    edx,DWORD PTR [esi+0x28]
  004cf60b: 8b 04 82                                        mov    eax,DWORD PTR [edx+eax*4]
  004cf60e: 8b 3c 88                                        mov    edi,DWORD PTR [eax+ecx*4]
  004cf611: 8b 46 34                                        mov    eax,DWORD PTR [esi+0x34]
  004cf614: 3b c3                                           cmp    eax,ebx
  004cf616: 74 1f                                           je     0x4cf637
  004cf618: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  004cf61b: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004cf61e: 41                                              inc    ecx
  004cf61f: c1 e2 0a                                        shl    edx,0xa
  004cf622: 3b d1                                           cmp    edx,ecx
  004cf624: 89 4e 30                                        mov    DWORD PTR [esi+0x30],ecx
  004cf627: 77 03                                           ja     0x4cf62c
  004cf629: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  004cf62c: 48                                              dec    eax
  004cf62d: 3b c3                                           cmp    eax,ebx
  004cf62f: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004cf632: 75 03                                           jne    0x4cf637
  004cf634: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  004cf637: 8b 06                                           mov    eax,DWORD PTR [esi]
  004cf639: 8b ce                                           mov    ecx,esi
  004cf63b: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004cf63e: 8b c7                                           mov    eax,edi
  004cf640: 5f                                              pop    edi
  004cf641: 5e                                              pop    esi
  004cf642: 5b                                              pop    ebx
  004cf643: c3                                              ret
  004cf670: 55                                              push   ebp
  004cf671: 8b ec                                           mov    ebp,esp
  004cf673: 6a ff                                           push   0xffffffff
  004cf675: 68 69 df 4d 00                                  push   0x4ddf69
  004cf67a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004cf680: 50                                              push   eax
  004cf681: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004cf688: 83 ec 3c                                        sub    esp,0x3c
  004cf68b: 53                                              push   ebx
  004cf68c: 56                                              push   esi
  004cf68d: 8b f1                                           mov    esi,ecx
  004cf68f: 8b 4e 10                                        mov    ecx,DWORD PTR [esi+0x10]
  004cf692: 57                                              push   edi
  004cf693: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  004cf696: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  004cf699: a9 ff 03 00 00                                  test   eax,0x3ff
  004cf69e: 0f 85 44 01 00 00                               jne    0x4cf7e8
  004cf6a4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004cf6a7: 81 c1 00 04 00 00                               add    ecx,0x400
  004cf6ad: c1 e9 0a                                        shr    ecx,0xa
  004cf6b0: 3b c1                                           cmp    eax,ecx
  004cf6b2: 0f 87 30 01 00 00                               ja     0x4cf7e8
  004cf6b8: b9 ff ff 0f 00                                  mov    ecx,0xfffff
  004cf6bd: bb 01 00 00 00                                  mov    ebx,0x1
  004cf6c2: 2b c8                                           sub    ecx,eax
  004cf6c4: 3b cb                                           cmp    ecx,ebx
  004cf6c6: 73 2f                                           jae    0x4cf6f7
  004cf6c8: 68 f4 10 50 00                                  push   0x5010f4
  004cf6cd: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  004cf6d0: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004cf6d6: 8d 55 d4                                        lea    edx,[ebp-0x2c]
  004cf6d9: 52                                              push   edx
  004cf6da: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004cf6dd: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004cf6e4: e8 37 5d f3 ff                                  call   0x405420
  004cf6e9: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004cf6ee: 8d 45 b8                                        lea    eax,[ebp-0x48]
  004cf6f1: 50                                              push   eax
  004cf6f2: e8 5f 26 00 00                                  call   0x4d1d56
  004cf6f7: 8b c8                                           mov    ecx,eax
  004cf6f9: d1 e9                                           shr    ecx,1
  004cf6fb: 83 f9 08                                        cmp    ecx,0x8
  004cf6fe: 73 07                                           jae    0x4cf707
  004cf700: b9 08 00 00 00                                  mov    ecx,0x8
  004cf705: eb 05                                           jmp    0x4cf70c
  004cf707: 83 f9 01                                        cmp    ecx,0x1
  004cf70a: 76 0d                                           jbe    0x4cf719
  004cf70c: ba ff ff 0f 00                                  mov    edx,0xfffff
  004cf711: 2b d1                                           sub    edx,ecx
  004cf713: 3b c2                                           cmp    eax,edx
  004cf715: 77 02                                           ja     0x4cf719
  004cf717: 8b d9                                           mov    ebx,ecx
  004cf719: 03 c3                                           add    eax,ebx
  004cf71b: c1 e0 02                                        shl    eax,0x2
  004cf71e: 50                                              push   eax
  004cf71f: c1 ef 0a                                        shr    edi,0xa
  004cf722: e8 c9 28 f7 ff                                  call   0x441ff0
  004cf727: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004cf72a: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004cf72d: 8d 0c b8                                        lea    ecx,[eax+edi*4]
  004cf730: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004cf733: 8d 14 90                                        lea    edx,[eax+edx*4]
  004cf736: 8d 04 b8                                        lea    eax,[eax+edi*4]
  004cf739: 83 c4 04                                        add    esp,0x4
  004cf73c: 3b c2                                           cmp    eax,edx
  004cf73e: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  004cf741: 74 11                                           je     0x4cf754
  004cf743: 8b 10                                           mov    edx,DWORD PTR [eax]
  004cf745: 89 11                                           mov    DWORD PTR [ecx],edx
  004cf747: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  004cf74a: 83 c0 04                                        add    eax,0x4
  004cf74d: 83 c1 04                                        add    ecx,0x4
  004cf750: 3b c2                                           cmp    eax,edx
  004cf752: 75 ef                                           jne    0x4cf743
  004cf754: 3b fb                                           cmp    edi,ebx
  004cf756: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004cf759: 77 4b                                           ja     0x4cf7a6
  004cf75b: 8d 14 b8                                        lea    edx,[eax+edi*4]
  004cf75e: 3b c2                                           cmp    eax,edx
  004cf760: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  004cf763: 74 11                                           je     0x4cf776
  004cf765: 8b 10                                           mov    edx,DWORD PTR [eax]
  004cf767: 89 11                                           mov    DWORD PTR [ecx],edx
  004cf769: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  004cf76c: 83 c0 04                                        add    eax,0x4
  004cf76f: 83 c1 04                                        add    ecx,0x4
  004cf772: 3b c2                                           cmp    eax,edx
  004cf774: 75 ef                                           jne    0x4cf765
  004cf776: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004cf779: 50                                              push   eax
  004cf77a: 8b d3                                           mov    edx,ebx
  004cf77c: 2b d7                                           sub    edx,edi
  004cf77e: 52                                              push   edx
  004cf77f: 51                                              push   ecx
  004cf780: c7 45 e8 00 00 00 00                            mov    DWORD PTR [ebp-0x18],0x0
  004cf787: e8 f4 00 00 00                                  call   0x4cf880
  004cf78c: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004cf78f: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004cf792: 50                                              push   eax
  004cf793: 57                                              push   edi
  004cf794: 51                                              push   ecx
  004cf795: c7 45 e8 00 00 00 00                            mov    DWORD PTR [ebp-0x18],0x0
  004cf79c: e8 df 00 00 00                                  call   0x4cf880
  004cf7a1: 83 c4 18                                        add    esp,0x18
  004cf7a4: eb 34                                           jmp    0x4cf7da
  004cf7a6: 51                                              push   ecx
  004cf7a7: 8d 14 98                                        lea    edx,[eax+ebx*4]
  004cf7aa: 52                                              push   edx
  004cf7ab: 50                                              push   eax
  004cf7ac: e8 9f 00 00 00                                  call   0x4cf850
  004cf7b1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004cf7b4: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004cf7b7: 51                                              push   ecx
  004cf7b8: 8d 14 b8                                        lea    edx,[eax+edi*4]
  004cf7bb: 52                                              push   edx
  004cf7bc: 8d 04 98                                        lea    eax,[eax+ebx*4]
  004cf7bf: 50                                              push   eax
  004cf7c0: e8 8b 00 00 00                                  call   0x4cf850
  004cf7c5: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004cf7c8: 51                                              push   ecx
  004cf7c9: 53                                              push   ebx
  004cf7ca: 50                                              push   eax
  004cf7cb: c7 45 e4 00 00 00 00                            mov    DWORD PTR [ebp-0x1c],0x0
  004cf7d2: e8 a9 00 00 00                                  call   0x4cf880
  004cf7d7: 83 c4 24                                        add    esp,0x24
  004cf7da: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004cf7dd: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004cf7e0: 03 c3                                           add    eax,ebx
  004cf7e2: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004cf7e5: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004cf7e8: 8b 5e 10                                        mov    ebx,DWORD PTR [esi+0x10]
  004cf7eb: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  004cf7ee: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004cf7f1: 03 fb                                           add    edi,ebx
  004cf7f3: 8b df                                           mov    ebx,edi
  004cf7f5: c1 eb 0a                                        shr    ebx,0xa
  004cf7f8: 3b c3                                           cmp    eax,ebx
  004cf7fa: 77 02                                           ja     0x4cf7fe
  004cf7fc: 2b d8                                           sub    ebx,eax
  004cf7fe: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004cf801: 83 3c 98 00                                     cmp    DWORD PTR [eax+ebx*4],0x0
  004cf805: 75 13                                           jne    0x4cf81a
  004cf807: 68 00 10 00 00                                  push   0x1000
  004cf80c: e8 df 27 f7 ff                                  call   0x441ff0
  004cf811: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004cf814: 83 c4 04                                        add    esp,0x4
  004cf817: 89 04 99                                        mov    DWORD PTR [ecx+ebx*4],eax
  004cf81a: ff 46 10                                        inc    DWORD PTR [esi+0x10]
  004cf81d: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004cf820: 8b 04 9a                                        mov    eax,DWORD PTR [edx+ebx*4]
  004cf823: 81 e7 ff 03 00 00                               and    edi,0x3ff
  004cf829: 8d 3c b8                                        lea    edi,[eax+edi*4]
  004cf82c: 85 ff                                           test   edi,edi
  004cf82e: 74 07                                           je     0x4cf837
  004cf830: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004cf833: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004cf835: 89 17                                           mov    DWORD PTR [edi],edx
  004cf837: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004cf83a: 5f                                              pop    edi
  004cf83b: 5e                                              pop    esi
  004cf83c: 5b                                              pop    ebx
  004cf83d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004cf844: 8b e5                                           mov    esp,ebp
  004cf846: 5d                                              pop    ebp
  004cf847: c2 04 00                                        ret    0x4
  004d1900: 55                                              push   ebp
  004d1901: 8b ec                                           mov    ebp,esp
  004d1903: 6a ff                                           push   0xffffffff
  004d1905: 68 93 df 4d 00                                  push   0x4ddf93
  004d190a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004d1910: 50                                              push   eax
  004d1911: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004d1918: 81 ec 14 01 00 00                               sub    esp,0x114
  004d191e: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  004d1924: e8 17 fd ff ff                                  call   0x4d1640
  004d1929: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004d192c: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004d1933: e8 68 df ff ff                                  call   0x4cf8a0
  004d1938: 68 8c 34 50 00                                  push   0x50348c
  004d193d: 68 02 00 00 80                                  push   0x80000002
  004d1942: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  004d1948: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004d194c: e8 9f fd ff ff                                  call   0x4d16f0
  004d1951: 68 58 13 51 00                                  push   0x511358
  004d1956: 68 64 34 50 00                                  push   0x503464
  004d195b: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  004d1961: e8 2a fe ff ff                                  call   0x4d1790
  004d1966: 50                                              push   eax
  004d1967: 68 28 4b 50 00                                  push   0x504b28
  004d196c: 68 20 4b 50 00                                  push   0x504b20
  004d1971: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004d1974: e8 57 e0 ff ff                                  call   0x4cf9d0
  004d1979: 85 c0                                           test   eax,eax
  004d197b: eb 53                                           jmp    0x4d19d0
  004d19d0: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004d19d3: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004d19d7: e8 e4 de ff ff                                  call   0x4cf8c0
  004d19dc: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  004d19e2: e8 99 fc ff ff                                  call   0x4d1680
  004d19e7: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004d19ea: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004d19f1: 8b e5                                           mov    esp,ebp
  004d19f3: 5d                                              pop    ebp
  004d19f4: c3                                              ret
  004d1ae8: ff 25 18 e2 4d 00                               jmp    DWORD PTR ds:0x4de218
  004d1aee: ff 25 14 e2 4d 00                               jmp    DWORD PTR ds:0x4de214
  004d1b2a: ff 25 ec e1 4d 00                               jmp    DWORD PTR ds:0x4de1ec
  004d1d0b: ff 74 24 04                                     push   DWORD PTR [esp+0x4]
  004d1d0f: e8 cb ff ff ff                                  call   0x4d1cdf
  004d1d14: f7 d8                                           neg    eax
  004d1d16: 1b c0                                           sbb    eax,eax
  004d1d18: 59                                              pop    ecx
  004d1d19: f7 d8                                           neg    eax
  004d1d1b: 48                                              dec    eax
  004d1d1c: c3                                              ret
