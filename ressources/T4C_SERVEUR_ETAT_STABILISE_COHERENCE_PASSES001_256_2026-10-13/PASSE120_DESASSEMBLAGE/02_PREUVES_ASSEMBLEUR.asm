; PASSE 120, Desassemblage des cibles APPELS_DIRECTS_MASQUE justifiees par des instructions sources
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 5703 distinct instructions; 74 graph entry points

  0040f790: 55                                              push   ebp
  0040f791: 8b ec                                           mov    ebp,esp
  0040f793: 6a ff                                           push   0xffffffff
  0040f795: 68 01 37 4d 00                                  push   0x4d3701
  0040f79a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0040f7a0: 50                                              push   eax
  0040f7a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0040f7a8: 83 ec 08                                        sub    esp,0x8
  0040f7ab: 53                                              push   ebx
  0040f7ac: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0040f7af: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0040f7b2: 33 c9                                           xor    ecx,ecx
  0040f7b4: 3b d9                                           cmp    ebx,ecx
  0040f7b6: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0040f7b9: 0f 84 25 01 00 00                               je     0x40f8e4
  0040f7bf: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0040f7c2: 8a 02                                           mov    al,BYTE PTR [edx]
  0040f7c4: 88 03                                           mov    BYTE PTR [ebx],al
  0040f7c6: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  0040f7c9: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0040f7cc: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0040f7cf: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0040f7d4: 56                                              push   esi
  0040f7d5: 8b 30                                           mov    esi,DWORD PTR [eax]
  0040f7d7: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0040f7da: 57                                              push   edi
  0040f7db: 8b f8                                           mov    edi,eax
  0040f7dd: 3b f7                                           cmp    esi,edi
  0040f7df: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0040f7e2: 73 05                                           jae    0x40f7e9
  0040f7e4: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0040f7e7: 8b fe                                           mov    edi,esi
  0040f7e9: 3b da                                           cmp    ebx,edx
  0040f7eb: 75 60                                           jne    0x40f84d
  0040f7ed: 3b f9                                           cmp    edi,ecx
  0040f7ef: 76 0a                                           jbe    0x40f7fb
  0040f7f1: 8b cb                                           mov    ecx,ebx
  0040f7f3: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0040f7f9: 33 c9                                           xor    ecx,ecx
  0040f7fb: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0040f7fe: 2b c7                                           sub    eax,edi
  0040f800: 3b c6                                           cmp    eax,esi
  0040f802: 73 02                                           jae    0x40f806
  0040f804: 8b f0                                           mov    esi,eax
  0040f806: 3b f1                                           cmp    esi,ecx
  0040f808: 0f 86 c5 00 00 00                               jbe    0x40f8d3
  0040f80e: 8b cb                                           mov    ecx,ebx
  0040f810: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0040f816: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0040f819: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0040f81c: 2b d6                                           sub    edx,esi
  0040f81e: 8d 04 39                                        lea    eax,[ecx+edi*1]
  0040f821: 2b d7                                           sub    edx,edi
  0040f823: 52                                              push   edx
  0040f824: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  0040f827: 51                                              push   ecx
  0040f828: 50                                              push   eax
  0040f829: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0040f82f: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0040f832: 83 c4 0c                                        add    esp,0xc
  0040f835: 6a 00                                           push   0x0
  0040f837: 2b fe                                           sub    edi,esi
  0040f839: 57                                              push   edi
  0040f83a: 8b cb                                           mov    ecx,ebx
  0040f83c: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0040f842: 84 c0                                           test   al,al
  0040f844: 0f 84 89 00 00 00                               je     0x40f8d3
  0040f84a: 57                                              push   edi
  0040f84b: eb 7e                                           jmp    0x40f8cb
  0040f84d: 3b f9                                           cmp    edi,ecx
  0040f84f: 76 43                                           jbe    0x40f894
  0040f851: 3b f8                                           cmp    edi,eax
  0040f853: 75 3f                                           jne    0x40f894
  0040f855: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0040f858: 3b c1                                           cmp    eax,ecx
  0040f85a: 75 05                                           jne    0x40f861
  0040f85c: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040f861: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0040f865: 73 2d                                           jae    0x40f894
  0040f867: 6a 01                                           push   0x1
  0040f869: 8b cb                                           mov    ecx,ebx
  0040f86b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0040f871: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0040f874: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0040f877: 85 c0                                           test   eax,eax
  0040f879: 75 05                                           jne    0x40f880
  0040f87b: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040f880: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0040f883: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0040f886: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0040f889: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  0040f88c: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0040f88f: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0040f892: eb 3f                                           jmp    0x40f8d3
  0040f894: 6a 01                                           push   0x1
  0040f896: 57                                              push   edi
  0040f897: 8b cb                                           mov    ecx,ebx
  0040f899: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0040f89f: 84 c0                                           test   al,al
  0040f8a1: 74 30                                           je     0x40f8d3
  0040f8a3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0040f8a6: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0040f8a9: 85 c0                                           test   eax,eax
  0040f8ab: 75 05                                           jne    0x40f8b2
  0040f8ad: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040f8b2: 8b cf                                           mov    ecx,edi
  0040f8b4: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0040f8b7: 8b f0                                           mov    esi,eax
  0040f8b9: 8b c1                                           mov    eax,ecx
  0040f8bb: c1 e9 02                                        shr    ecx,0x2
  0040f8be: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0040f8c0: 8b c8                                           mov    ecx,eax
  0040f8c2: 83 e1 03                                        and    ecx,0x3
  0040f8c5: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0040f8c7: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0040f8ca: 51                                              push   ecx
  0040f8cb: 8b cb                                           mov    ecx,ebx
  0040f8cd: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0040f8d3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0040f8d6: 8b 50 10                                        mov    edx,DWORD PTR [eax+0x10]
  0040f8d9: 89 53 10                                        mov    DWORD PTR [ebx+0x10],edx
  0040f8dc: 8b 40 14                                        mov    eax,DWORD PTR [eax+0x14]
  0040f8df: 5f                                              pop    edi
  0040f8e0: 89 43 14                                        mov    DWORD PTR [ebx+0x14],eax
  0040f8e3: 5e                                              pop    esi
  0040f8e4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0040f8e7: 5b                                              pop    ebx
  0040f8e8: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040f8ef: 8b e5                                           mov    esp,ebp
  0040f8f1: 5d                                              pop    ebp
  0040f8f2: c3                                              ret
  0040f900: 55                                              push   ebp
  0040f901: 8b ec                                           mov    ebp,esp
  0040f903: 56                                              push   esi
  0040f904: 8b f1                                           mov    esi,ecx
  0040f906: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  0040f909: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0040f90c: 57                                              push   edi
  0040f90d: 33 ff                                           xor    edi,edi
  0040f90f: 42                                              inc    edx
  0040f910: 3b c7                                           cmp    eax,edi
  0040f912: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0040f915: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0040f918: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0040f91c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0040f91f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  0040f922: 6a 0c                                           push   0xc
  0040f924: 75 35                                           jne    0x40f95b
  0040f926: e8 c5 26 03 00                                  call   0x441ff0
  0040f92b: 83 c4 04                                        add    esp,0x4
  0040f92e: 3b c7                                           cmp    eax,edi
  0040f930: 74 07                                           je     0x40f939
  0040f932: 89 38                                           mov    DWORD PTR [eax],edi
  0040f934: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0040f937: eb 02                                           jmp    0x40f93b
  0040f939: 33 c0                                           xor    eax,eax
  0040f93b: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0040f93e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0040f941: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0040f944: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0040f947: 89 38                                           mov    DWORD PTR [eax],edi
  0040f949: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0040f94c: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0040f94f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0040f952: 5f                                              pop    edi
  0040f953: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0040f956: 5e                                              pop    esi
  0040f957: 5d                                              pop    ebp
  0040f958: c2 04 00                                        ret    0x4
  0040f95b: e8 90 26 03 00                                  call   0x441ff0
  0040f960: 83 c4 04                                        add    esp,0x4
  0040f963: 3b c7                                           cmp    eax,edi
  0040f965: 74 07                                           je     0x40f96e
  0040f967: 89 38                                           mov    DWORD PTR [eax],edi
  0040f969: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0040f96c: eb 02                                           jmp    0x40f970
  0040f96e: 33 c0                                           xor    eax,eax
  0040f970: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0040f973: 89 01                                           mov    DWORD PTR [ecx],eax
  0040f975: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0040f978: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0040f97b: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0040f97e: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0040f981: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0040f984: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0040f987: 89 38                                           mov    DWORD PTR [eax],edi
  0040f989: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0040f98c: 5f                                              pop    edi
  0040f98d: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0040f990: 5e                                              pop    esi
  0040f991: 5d                                              pop    ebp
  0040f992: c2 04 00                                        ret    0x4
  004123f0: b9 78 14 51 00                                  mov    ecx,0x511478
  004123f5: e9 46 ce 03 00                                  jmp    0x44f240
  00423930: 56                                              push   esi
  00423931: 6a 24                                           push   0x24
  00423933: 8b f1                                           mov    esi,ecx
  00423935: e8 b6 e6 01 00                                  call   0x441ff0
  0042393a: 33 c9                                           xor    ecx,ecx
  0042393c: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042393f: 88 48 21                                        mov    BYTE PTR [eax+0x21],cl
  00423942: b2 01                                           mov    dl,0x1
  00423944: 88 50 20                                        mov    BYTE PTR [eax+0x20],dl
  00423947: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042394a: 88 50 21                                        mov    BYTE PTR [eax+0x21],dl
  0042394d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00423950: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00423953: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00423956: 89 00                                           mov    DWORD PTR [eax],eax
  00423958: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042395b: 83 c4 04                                        add    esp,0x4
  0042395e: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00423961: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00423964: 5e                                              pop    esi
  00423965: c3                                              ret
  0042dd90: 55                                              push   ebp
  0042dd91: 8b ec                                           mov    ebp,esp
  0042dd93: 6a 18                                           push   0x18
  0042dd95: e8 56 42 01 00                                  call   0x441ff0
  0042dd9a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042dd9d: 83 c4 04                                        add    esp,0x4
  0042dda0: 85 c9                                           test   ecx,ecx
  0042dda2: 75 02                                           jne    0x42dda6
  0042dda4: 8b c8                                           mov    ecx,eax
  0042dda6: 89 08                                           mov    DWORD PTR [eax],ecx
  0042dda8: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042ddab: 85 c9                                           test   ecx,ecx
  0042ddad: 74 07                                           je     0x42ddb6
  0042ddaf: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042ddb2: 5d                                              pop    ebp
  0042ddb3: c2 08 00                                        ret    0x8
  0042ddb6: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042ddb9: 5d                                              pop    ebp
  0042ddba: c2 08 00                                        ret    0x8
  0044e360: 55                                              push   ebp
  0044e361: 8b ec                                           mov    ebp,esp
  0044e363: 6a ff                                           push   0xffffffff
  0044e365: 68 3e 69 4d 00                                  push   0x4d693e
  0044e36a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044e370: 50                                              push   eax
  0044e371: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044e378: 81 ec 0c 02 00 00                               sub    esp,0x20c
  0044e37e: 53                                              push   ebx
  0044e37f: 56                                              push   esi
  0044e380: 57                                              push   edi
  0044e381: 33 c0                                           xor    eax,eax
  0044e383: 89 45 e5                                        mov    DWORD PTR [ebp-0x1b],eax
  0044e386: 8d 55 c8                                        lea    edx,[ebp-0x38]
  0044e389: 52                                              push   edx
  0044e38a: 68 c8 00 00 00                                  push   0xc8
  0044e38f: 88 45 e9                                        mov    BYTE PTR [ebp-0x17],al
  0044e392: 8d 85 e8 fd ff ff                               lea    eax,[ebp-0x218]
  0044e398: 50                                              push   eax
  0044e399: 8d 55 d0                                        lea    edx,[ebp-0x30]
  0044e39c: 52                                              push   edx
  0044e39d: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  0044e3a0: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0044e3a3: 50                                              push   eax
  0044e3a4: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0044e3a7: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0044e3aa: 52                                              push   edx
  0044e3ab: 50                                              push   eax
  0044e3ac: 33 db                                           xor    ebx,ebx
  0044e3ae: 51                                              push   ecx
  0044e3af: c6 45 e4 00                                     mov    BYTE PTR [ebp-0x1c],0x0
  0044e3b3: 89 5d c8                                        mov    DWORD PTR [ebp-0x38],ebx
  0044e3b6: e8 75 00 08 00                                  call   0x4ce430
  0044e3bb: 8b 35 e4 e2 4d 00                               mov    esi,DWORD PTR ds:0x4de2e4
  0044e3c1: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  0044e3c4: 68 48 5b 50 00                                  push   0x505b48
  0044e3c9: 52                                              push   edx
  0044e3ca: ff d6                                           call   esi
  0044e3cc: 83 c4 08                                        add    esp,0x8
  0044e3cf: 85 c0                                           test   eax,eax
  0044e3d1: 74 3a                                           je     0x44e40d
  0044e3d3: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0044e3d6: 68 40 5b 50 00                                  push   0x505b40
  0044e3db: 50                                              push   eax
  0044e3dc: ff d6                                           call   esi
  0044e3de: 83 c4 08                                        add    esp,0x8
  0044e3e1: 85 c0                                           test   eax,eax
  0044e3e3: 74 28                                           je     0x44e40d
  0044e3e5: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0044e3e8: 68 38 5b 50 00                                  push   0x505b38
  0044e3ed: 51                                              push   ecx
  0044e3ee: ff d6                                           call   esi
  0044e3f0: 83 c4 08                                        add    esp,0x8
  0044e3f3: 85 c0                                           test   eax,eax
  0044e3f5: 74 16                                           je     0x44e40d
  0044e3f7: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  0044e3fa: 68 30 5b 50 00                                  push   0x505b30
  0044e3ff: 52                                              push   edx
  0044e400: ff d6                                           call   esi
  0044e402: 83 c4 08                                        add    esp,0x8
  0044e405: 85 c0                                           test   eax,eax
  0044e407: 0f 85 19 03 00 00                               jne    0x44e726
  0044e40d: a0 a8 46 51 00                                  mov    al,ds:0x5146a8
  0044e412: 84 c0                                           test   al,al
  0044e414: 0f 85 0c 03 00 00                               jne    0x44e726
  0044e41a: 8d 8d b0 fe ff ff                               lea    ecx,[ebp-0x150]
  0044e420: c6 05 a8 46 51 00 01                            mov    BYTE PTR ds:0x5146a8,0x1
  0044e427: e8 64 ad 00 00                                  call   0x459190
  0044e42c: 68 fc 45 50 00                                  push   0x5045fc
  0044e431: 68 02 00 00 80                                  push   0x80000002
  0044e436: 8d 8d b0 fe ff ff                               lea    ecx,[ebp-0x150]
  0044e43c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0044e43f: e8 cc ad 00 00                                  call   0x459210
  0044e444: 6a 01                                           push   0x1
  0044e446: 68 f0 45 50 00                                  push   0x5045f0
  0044e44b: 8d 8d b0 fe ff ff                               lea    ecx,[ebp-0x150]
  0044e451: e8 3a ae 00 00                                  call   0x459290
  0044e456: 8d 8d b0 fe ff ff                               lea    ecx,[ebp-0x150]
  0044e45c: e8 5f af 00 00                                  call   0x4593c0
  0044e461: 68 f8 5a 50 00                                  push   0x505af8
  0044e466: 6a 01                                           push   0x1
  0044e468: e8 d3 38 02 00                                  call   0x471d40
  0044e46d: 83 c4 08                                        add    esp,0x8
  0044e470: 68 e0 5a 50 00                                  push   0x505ae0
  0044e475: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0044e478: e8 e7 35 08 00                                  call   0x4d1a64
  0044e47d: 68 bc 5a 50 00                                  push   0x505abc
  0044e482: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0044e485: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0044e489: e8 d6 35 08 00                                  call   0x4d1a64
  0044e48e: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0044e491: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0044e495: e8 c4 35 08 00                                  call   0x4d1a5e
  0044e49a: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0044e49d: 8d 85 e8 fd ff ff                               lea    eax,[ebp-0x218]
  0044e4a3: 50                                              push   eax
  0044e4a4: a1 ac 42 51 00                                  mov    eax,ds:0x5142ac
  0044e4a9: 51                                              push   ecx
  0044e4aa: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  0044e4ad: 52                                              push   edx
  0044e4ae: 50                                              push   eax
  0044e4af: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0044e4b2: 68 e4 58 50 00                                  push   0x5058e4
  0044e4b7: 51                                              push   ecx
  0044e4b8: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0044e4bc: e8 d3 35 08 00                                  call   0x4d1a94
  0044e4c1: 8b 15 b0 42 51 00                               mov    edx,DWORD PTR ds:0x5142b0
  0044e4c7: 83 c4 18                                        add    esp,0x18
  0044e4ca: 52                                              push   edx
  0044e4cb: 68 c8 58 50 00                                  push   0x5058c8
  0044e4d0: 6a 01                                           push   0x1
  0044e4d2: e8 69 38 02 00                                  call   0x471d40
  0044e4d7: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  0044e4da: 83 c4 0c                                        add    esp,0xc
  0044e4dd: 50                                              push   eax
  0044e4de: 6a 01                                           push   0x1
  0044e4e0: e8 5b 38 02 00                                  call   0x471d40
  0044e4e5: 8b 0d b0 42 51 00                               mov    ecx,DWORD PTR ds:0x5142b0
  0044e4eb: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0044e4ee: 8b 75 e0                                        mov    esi,DWORD PTR [ebp-0x20]
  0044e4f1: 8b 7d dc                                        mov    edi,DWORD PTR [ebp-0x24]
  0044e4f4: 83 c4 08                                        add    esp,0x8
  0044e4f7: 53                                              push   ebx
  0044e4f8: 89 4d c0                                        mov    DWORD PTR [ebp-0x40],ecx
  0044e4fb: 89 55 cc                                        mov    DWORD PTR [ebp-0x34],edx
  0044e4fe: ff 15 bc e4 4d 00                               call   DWORD PTR ds:0x4de4bc
  0044e504: 3b c3                                           cmp    eax,ebx
  0044e506: 74 09                                           je     0x44e511
  0044e508: 83 f8 01                                        cmp    eax,0x1
  0044e50b: 0f 85 c2 01 00 00                               jne    0x44e6d3
  0044e511: 6a 17                                           push   0x17
  0044e513: 53                                              push   ebx
  0044e514: 68 c8 04 50 00                                  push   0x5004c8
  0044e519: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e51c: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  0044e51f: e8 3c 54 fb ff                                  call   0x403960
  0044e524: 3b c3                                           cmp    eax,ebx
  0044e526: 7d 0d                                           jge    0x44e535
  0044e528: 3d 02 40 00 80                                  cmp    eax,0x80004002
  0044e52d: 74 06                                           je     0x44e535
  0044e52f: 50                                              push   eax
  0044e530: e8 27 40 08 00                                  call   0x4d255c
  0044e535: 51                                              push   ecx
  0044e536: 89 65 c4                                        mov    DWORD PTR [ebp-0x3c],esp
  0044e539: 89 65 d4                                        mov    DWORD PTR [ebp-0x2c],esp
  0044e53c: 6a 0c                                           push   0xc
  0044e53e: e8 ad 3a ff ff                                  call   0x441ff0
  0044e543: 83 c4 04                                        add    esp,0x4
  0044e546: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0044e549: 3b c3                                           cmp    eax,ebx
  0044e54b: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0044e54f: 74 0e                                           je     0x44e55f
  0044e551: 68 3c 03 50 00                                  push   0x50033c
  0044e556: 8b c8                                           mov    ecx,eax
  0044e558: e8 03 4d fb ff                                  call   0x403260
  0044e55d: eb 02                                           jmp    0x44e561
  0044e55f: 33 c0                                           xor    eax,eax
  0044e561: 85 c0                                           test   eax,eax
  0044e563: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0044e566: b3 04                                           mov    bl,0x4
  0044e568: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e56b: 89 01                                           mov    DWORD PTR [ecx],eax
  0044e56d: 75 0a                                           jne    0x44e579
  0044e56f: 68 0e 00 07 80                                  push   0x8007000e
  0044e574: e8 e3 3f 08 00                                  call   0x4d255c
  0044e579: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e57c: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e57f: e8 6c 53 fb ff                                  call   0x4038f0
  0044e584: 8b c8                                           mov    ecx,eax
  0044e586: e8 f5 4e fb ff                                  call   0x403480
  0044e58b: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  0044e58e: 51                                              push   ecx
  0044e58f: 8b cc                                           mov    ecx,esp
  0044e591: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0044e594: 52                                              push   edx
  0044e595: e8 e6 4b fb ff                                  call   0x403180
  0044e59a: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e59d: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e5a0: e8 4b 53 fb ff                                  call   0x4038f0
  0044e5a5: 8b c8                                           mov    ecx,eax
  0044e5a7: e8 34 4e fb ff                                  call   0x4033e0
  0044e5ac: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  0044e5af: 6a 01                                           push   0x1
  0044e5b1: 51                                              push   ecx
  0044e5b2: 8b cc                                           mov    ecx,esp
  0044e5b4: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0044e5b7: 50                                              push   eax
  0044e5b8: e8 c3 4b fb ff                                  call   0x403180
  0044e5bd: 51                                              push   ecx
  0044e5be: 8b cc                                           mov    ecx,esp
  0044e5c0: 89 65 c4                                        mov    DWORD PTR [ebp-0x3c],esp
  0044e5c3: 68 58 13 51 00                                  push   0x511358
  0044e5c8: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0044e5cc: e8 af 4b fb ff                                  call   0x403180
  0044e5d1: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e5d4: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e5d7: e8 14 53 fb ff                                  call   0x4038f0
  0044e5dc: 8b c8                                           mov    ecx,eax
  0044e5de: e8 dd 4f fb ff                                  call   0x4035c0
  0044e5e3: 51                                              push   ecx
  0044e5e4: 8b cc                                           mov    ecx,esp
  0044e5e6: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0044e5e9: 57                                              push   edi
  0044e5ea: e8 91 4b fb ff                                  call   0x403180
  0044e5ef: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e5f2: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e5f5: e8 f6 52 fb ff                                  call   0x4038f0
  0044e5fa: 8b c8                                           mov    ecx,eax
  0044e5fc: e8 9f 4c fb ff                                  call   0x4032a0
  0044e601: 51                                              push   ecx
  0044e602: 8b cc                                           mov    ecx,esp
  0044e604: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0044e607: 56                                              push   esi
  0044e608: e8 73 4b fb ff                                  call   0x403180
  0044e60d: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e610: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e613: e8 d8 52 fb ff                                  call   0x4038f0
  0044e618: 8b c8                                           mov    ecx,eax
  0044e61a: e8 21 4d fb ff                                  call   0x403340
  0044e61f: 51                                              push   ecx
  0044e620: 8b cc                                           mov    ecx,esp
  0044e622: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0044e625: 68 90 04 50 00                                  push   0x500490
  0044e62a: e8 51 4b fb ff                                  call   0x403180
  0044e62f: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e632: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e635: e8 b6 52 fb ff                                  call   0x4038f0
  0044e63a: 8b c8                                           mov    ecx,eax
  0044e63c: e8 6f 50 fb ff                                  call   0x4036b0
  0044e641: b9 a0 03 50 00                                  mov    ecx,0x5003a0
  0044e646: 85 c9                                           test   ecx,ecx
  0044e648: 75 09                                           jne    0x44e653
  0044e64a: ba c0 03 50 00                                  mov    edx,0x5003c0
  0044e64f: 85 d2                                           test   edx,edx
  0044e651: 74 11                                           je     0x44e664
  0044e653: 6a 02                                           push   0x2
  0044e655: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e658: e8 93 52 fb ff                                  call   0x4038f0
  0044e65d: 8b c8                                           mov    ecx,eax
  0044e65f: e8 7c 28 ff ff                                  call   0x440ee0
  0044e664: b8 a0 03 50 00                                  mov    eax,0x5003a0
  0044e669: 85 c0                                           test   eax,eax
  0044e66b: 74 1e                                           je     0x44e68b
  0044e66d: 51                                              push   ecx
  0044e66e: 8b cc                                           mov    ecx,esp
  0044e670: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0044e673: 50                                              push   eax
  0044e674: e8 07 4b fb ff                                  call   0x403180
  0044e679: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e67c: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e67f: e8 6c 52 fb ff                                  call   0x4038f0
  0044e684: 8b c8                                           mov    ecx,eax
  0044e686: e8 c5 50 fb ff                                  call   0x403750
  0044e68b: b9 c0 03 50 00                                  mov    ecx,0x5003c0
  0044e690: 85 c9                                           test   ecx,ecx
  0044e692: 74 22                                           je     0x44e6b6
  0044e694: 51                                              push   ecx
  0044e695: 8b cc                                           mov    ecx,esp
  0044e697: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0044e69a: 68 c0 03 50 00                                  push   0x5003c0
  0044e69f: e8 dc 4a fb ff                                  call   0x403180
  0044e6a4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e6a7: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0044e6aa: e8 41 52 fb ff                                  call   0x4038f0
  0044e6af: 8b c8                                           mov    ecx,eax
  0044e6b1: e8 3a 51 fb ff                                  call   0x4037f0
  0044e6b6: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e6b9: e8 32 52 fb ff                                  call   0x4038f0
  0044e6be: 8b c8                                           mov    ecx,eax
  0044e6c0: e8 eb 27 ff ff                                  call   0x440eb0
  0044e6c5: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044e6c8: 85 c0                                           test   eax,eax
  0044e6ca: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0044e6ce: e8 3d 2e ff ff                                  call   0x441510
  0044e6d3: 6a ff                                           push   0xffffffff
  0044e6d5: ff 15 60 e4 4d 00                               call   DWORD PTR ds:0x4de460
  0044e6db: 6a 01                                           push   0x1
  0044e6dd: 6a 01                                           push   0x1
  0044e6df: 6a 01                                           push   0x1
  0044e6e1: 6a 00                                           push   0x0
  0044e6e3: e8 e8 ae 00 00                                  call   0x4595d0
  0044e6e8: 83 c4 10                                        add    esp,0x10
  0044e6eb: e8 60 b0 00 00                                  call   0x459750
  0044e6f0: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0044e6f3: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0044e6f7: e8 44 33 08 00                                  call   0x4d1a40
  0044e6fc: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0044e6ff: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0044e703: e8 38 33 08 00                                  call   0x4d1a40
  0044e708: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0044e70b: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0044e70f: e8 2c 33 08 00                                  call   0x4d1a40
  0044e714: 8d 8d b0 fe ff ff                               lea    ecx,[ebp-0x150]
  0044e71a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044e721: e8 7a aa 00 00                                  call   0x4591a0
  0044e726: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044e729: 5f                                              pop    edi
  0044e72a: 5e                                              pop    esi
  0044e72b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044e732: 5b                                              pop    ebx
  0044e733: 8b e5                                           mov    esp,ebp
  0044e735: 5d                                              pop    ebp
  0044e736: c3                                              ret
  0044f8c0: 55                                              push   ebp
  0044f8c1: 8b ec                                           mov    ebp,esp
  0044f8c3: 6a ff                                           push   0xffffffff
  0044f8c5: 68 e8 69 4d 00                                  push   0x4d69e8
  0044f8ca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044f8d0: 50                                              push   eax
  0044f8d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044f8d8: 51                                              push   ecx
  0044f8d9: 56                                              push   esi
  0044f8da: 57                                              push   edi
  0044f8db: 8b f9                                           mov    edi,ecx
  0044f8dd: 8d 45 08                                        lea    eax,[ebp+0x8]
  0044f8e0: 50                                              push   eax
  0044f8e1: 51                                              push   ecx
  0044f8e2: 8d 77 08                                        lea    esi,[edi+0x8]
  0044f8e5: 54                                              push   esp
  0044f8e6: 8b ce                                           mov    ecx,esi
  0044f8e8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044f8ef: e8 ec 02 00 00                                  call   0x44fbe0
  0044f8f4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044f8f7: 51                                              push   ecx
  0044f8f8: 8b ce                                           mov    ecx,esi
  0044f8fa: e8 f1 02 00 00                                  call   0x44fbf0
  0044f8ff: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0044f902: 85 c0                                           test   eax,eax
  0044f904: 74 23                                           je     0x44f929
  0044f906: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0044f909: 2b d0                                           sub    edx,eax
  0044f90b: c1 fa 02                                        sar    edx,0x2
  0044f90e: 83 fa 63                                        cmp    edx,0x63
  0044f911: 76 16                                           jbe    0x44f929
  0044f913: 8b 7f 0c                                        mov    edi,DWORD PTR [edi+0xc]
  0044f916: 51                                              push   ecx
  0044f917: 8b c4                                           mov    eax,esp
  0044f919: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0044f91c: 89 38                                           mov    DWORD PTR [eax],edi
  0044f91e: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0044f921: 50                                              push   eax
  0044f922: 8b ce                                           mov    ecx,esi
  0044f924: e8 f7 01 00 00                                  call   0x44fb20
  0044f929: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0044f92c: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044f933: e8 08 21 08 00                                  call   0x4d1a40
  0044f938: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044f93b: 5f                                              pop    edi
  0044f93c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044f943: 5e                                              pop    esi
  0044f944: 8b e5                                           mov    esp,ebp
  0044f946: 5d                                              pop    ebp
  0044f947: c2 04 00                                        ret    0x4
  0044f950: 55                                              push   ebp
  0044f951: 8b ec                                           mov    ebp,esp
  0044f953: 51                                              push   ecx
  0044f954: 56                                              push   esi
  0044f955: 57                                              push   edi
  0044f956: 8b f9                                           mov    edi,ecx
  0044f958: 8d 45 08                                        lea    eax,[ebp+0x8]
  0044f95b: 50                                              push   eax
  0044f95c: 51                                              push   ecx
  0044f95d: 8d 77 18                                        lea    esi,[edi+0x18]
  0044f960: 54                                              push   esp
  0044f961: 8b ce                                           mov    ecx,esi
  0044f963: e8 18 03 00 00                                  call   0x44fc80
  0044f968: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0044f96b: 51                                              push   ecx
  0044f96c: 8b ce                                           mov    ecx,esi
  0044f96e: e8 1d 03 00 00                                  call   0x44fc90
  0044f973: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0044f976: 85 c0                                           test   eax,eax
  0044f978: 74 20                                           je     0x44f99a
  0044f97a: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0044f97d: 2b d0                                           sub    edx,eax
  0044f97f: c1 fa 02                                        sar    edx,0x2
  0044f982: 83 fa 63                                        cmp    edx,0x63
  0044f985: 76 13                                           jbe    0x44f99a
  0044f987: 51                                              push   ecx
  0044f988: 8b 4f 1c                                        mov    ecx,DWORD PTR [edi+0x1c]
  0044f98b: 8b c4                                           mov    eax,esp
  0044f98d: 8d 55 fc                                        lea    edx,[ebp-0x4]
  0044f990: 89 08                                           mov    DWORD PTR [eax],ecx
  0044f992: 52                                              push   edx
  0044f993: 8b ce                                           mov    ecx,esi
  0044f995: e8 f6 01 00 00                                  call   0x44fb90
  0044f99a: 5f                                              pop    edi
  0044f99b: 5e                                              pop    esi
  0044f99c: 8b e5                                           mov    esp,ebp
  0044f99e: 5d                                              pop    ebp
  0044f99f: c2 04 00                                        ret    0x4
  00451100: 55                                              push   ebp
  00451101: 8b ec                                           mov    ebp,esp
  00451103: 6a ff                                           push   0xffffffff
  00451105: 68 08 6b 4d 00                                  push   0x4d6b08
  0045110a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00451110: 50                                              push   eax
  00451111: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00451118: 51                                              push   ecx
  00451119: a1 d8 46 51 00                                  mov    eax,ds:0x5146d8
  0045111e: 56                                              push   esi
  0045111f: b9 d8 46 51 00                                  mov    ecx,0x5146d8
  00451124: c7 45 f0 d8 46 51 00                            mov    DWORD PTR [ebp-0x10],0x5146d8
  0045112b: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0045112e: 8b 35 28 4a 51 00                               mov    esi,DWORD PTR ds:0x514a28
  00451134: 85 f6                                           test   esi,esi
  00451136: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045113d: c6 05 24 4a 51 00 01                            mov    BYTE PTR ds:0x514a24,0x1
  00451144: 74 10                                           je     0x451156
  00451146: 8b ce                                           mov    ecx,esi
  00451148: e8 f3 d2 fd ff                                  call   0x42e440
  0045114d: 56                                              push   esi
  0045114e: e8 0d 0f ff ff                                  call   0x442060
  00451153: 83 c4 04                                        add    esp,0x4
  00451156: 8b 15 d8 46 51 00                               mov    edx,DWORD PTR ds:0x5146d8
  0045115c: b9 d8 46 51 00                                  mov    ecx,0x5146d8
  00451161: c7 05 28 4a 51 00 00 00 00 00                   mov    DWORD PTR ds:0x514a28,0x0
  0045116b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00451172: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00451175: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00451178: 5e                                              pop    esi
  00451179: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00451180: 8b e5                                           mov    esp,ebp
  00451182: 5d                                              pop    ebp
  00451183: c3                                              ret
  00459bb0: 55                                              push   ebp
  00459bb1: 8b ec                                           mov    ebp,esp
  00459bb3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00459bb6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00459bb9: 89 08                                           mov    DWORD PTR [eax],ecx
  00459bbb: 5d                                              pop    ebp
  00459bbc: c2 04 00                                        ret    0x4
  00459bd0: 55                                              push   ebp
  00459bd1: 8b ec                                           mov    ebp,esp
  00459bd3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00459bd6: 56                                              push   esi
  00459bd7: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00459bda: 3b f0                                           cmp    esi,eax
  00459bdc: 57                                              push   edi
  00459bdd: 8b f9                                           mov    edi,ecx
  00459bdf: 74 1f                                           je     0x459c00
  00459be1: 56                                              push   esi
  00459be2: 51                                              push   ecx
  00459be3: 54                                              push   esp
  00459be4: e8 d7 ff ff ff                                  call   0x459bc0
  00459be9: 51                                              push   ecx
  00459bea: 8d 45 10                                        lea    eax,[ebp+0x10]
  00459bed: 8b cc                                           mov    ecx,esp
  00459bef: 50                                              push   eax
  00459bf0: e8 7b 00 00 00                                  call   0x459c70
  00459bf5: e8 46 04 00 00                                  call   0x45a040
  00459bfa: 83 c4 0c                                        add    esp,0xc
  00459bfd: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  00459c00: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00459c03: 5f                                              pop    edi
  00459c04: 89 30                                           mov    DWORD PTR [eax],esi
  00459c06: 5e                                              pop    esi
  00459c07: 5d                                              pop    ebp
  00459c08: c2 0c 00                                        ret    0xc
  0045c200: 55                                              push   ebp
  0045c201: 8b ec                                           mov    ebp,esp
  0045c203: 51                                              push   ecx
  0045c204: 8a 41 38                                        mov    al,BYTE PTR [ecx+0x38]
  0045c207: 53                                              push   ebx
  0045c208: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045c20b: 56                                              push   esi
  0045c20c: 33 d2                                           xor    edx,edx
  0045c20e: 8d 71 38                                        lea    esi,[ecx+0x38]
  0045c211: 88 03                                           mov    BYTE PTR [ebx],al
  0045c213: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0045c216: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0045c219: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0045c21c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0045c221: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0045c224: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045c226: 57                                              push   edi
  0045c227: 8b f9                                           mov    edi,ecx
  0045c229: 3b c7                                           cmp    eax,edi
  0045c22b: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0045c22e: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0045c231: 73 05                                           jae    0x45c238
  0045c233: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0045c236: 8b f8                                           mov    edi,eax
  0045c238: 3b de                                           cmp    ebx,esi
  0045c23a: 75 73                                           jne    0x45c2af
  0045c23c: 3b fa                                           cmp    edi,edx
  0045c23e: 8b f0                                           mov    esi,eax
  0045c240: 76 0a                                           jbe    0x45c24c
  0045c242: 8b cb                                           mov    ecx,ebx
  0045c244: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0045c24a: 33 d2                                           xor    edx,edx
  0045c24c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0045c24f: 2b c7                                           sub    eax,edi
  0045c251: 3b c6                                           cmp    eax,esi
  0045c253: 73 02                                           jae    0x45c257
  0045c255: 8b f0                                           mov    esi,eax
  0045c257: 3b f2                                           cmp    esi,edx
  0045c259: 0f 86 de 00 00 00                               jbe    0x45c33d
  0045c25f: 8b cb                                           mov    ecx,ebx
  0045c261: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0045c267: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0045c26a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0045c26d: 2b d6                                           sub    edx,esi
  0045c26f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0045c272: 2b d7                                           sub    edx,edi
  0045c274: 52                                              push   edx
  0045c275: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  0045c278: 51                                              push   ecx
  0045c279: 50                                              push   eax
  0045c27a: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0045c280: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0045c283: 83 c4 0c                                        add    esp,0xc
  0045c286: 6a 00                                           push   0x0
  0045c288: 2b fe                                           sub    edi,esi
  0045c28a: 57                                              push   edi
  0045c28b: 8b cb                                           mov    ecx,ebx
  0045c28d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0045c293: 84 c0                                           test   al,al
  0045c295: 0f 84 a2 00 00 00                               je     0x45c33d
  0045c29b: 57                                              push   edi
  0045c29c: 8b cb                                           mov    ecx,ebx
  0045c29e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0045c2a4: 5f                                              pop    edi
  0045c2a5: 5e                                              pop    esi
  0045c2a6: 8b c3                                           mov    eax,ebx
  0045c2a8: 5b                                              pop    ebx
  0045c2a9: 8b e5                                           mov    esp,ebp
  0045c2ab: 5d                                              pop    ebp
  0045c2ac: c2 04 00                                        ret    0x4
  0045c2af: 3b fa                                           cmp    edi,edx
  0045c2b1: 76 4e                                           jbe    0x45c301
  0045c2b3: 3b f9                                           cmp    edi,ecx
  0045c2b5: 75 4a                                           jne    0x45c301
  0045c2b7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045c2ba: 3b c2                                           cmp    eax,edx
  0045c2bc: 75 05                                           jne    0x45c2c3
  0045c2be: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0045c2c3: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0045c2c7: 73 38                                           jae    0x45c301
  0045c2c9: 6a 01                                           push   0x1
  0045c2cb: 8b cb                                           mov    ecx,ebx
  0045c2cd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045c2d3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045c2d6: 85 c0                                           test   eax,eax
  0045c2d8: 75 05                                           jne    0x45c2df
  0045c2da: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0045c2df: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0045c2e2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0045c2e5: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0045c2e8: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0045c2eb: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0045c2ee: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  0045c2f1: 5f                                              pop    edi
  0045c2f2: fe c1                                           inc    cl
  0045c2f4: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  0045c2f7: 5e                                              pop    esi
  0045c2f8: 8b c3                                           mov    eax,ebx
  0045c2fa: 5b                                              pop    ebx
  0045c2fb: 8b e5                                           mov    esp,ebp
  0045c2fd: 5d                                              pop    ebp
  0045c2fe: c2 04 00                                        ret    0x4
  0045c301: 6a 01                                           push   0x1
  0045c303: 57                                              push   edi
  0045c304: 8b cb                                           mov    ecx,ebx
  0045c306: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0045c30c: 84 c0                                           test   al,al
  0045c30e: 74 2d                                           je     0x45c33d
  0045c310: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0045c313: 85 f6                                           test   esi,esi
  0045c315: 75 06                                           jne    0x45c31d
  0045c317: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0045c31d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045c320: 8b cf                                           mov    ecx,edi
  0045c322: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0045c325: 8b d1                                           mov    edx,ecx
  0045c327: c1 e9 02                                        shr    ecx,0x2
  0045c32a: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0045c32c: 8b ca                                           mov    ecx,edx
  0045c32e: 83 e1 03                                        and    ecx,0x3
  0045c331: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0045c333: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0045c336: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0045c339: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0045c33d: 5f                                              pop    edi
  0045c33e: 5e                                              pop    esi
  0045c33f: 8b c3                                           mov    eax,ebx
  0045c341: 5b                                              pop    ebx
  0045c342: 8b e5                                           mov    esp,ebp
  0045c344: 5d                                              pop    ebp
  0045c345: c2 04 00                                        ret    0x4
  0045c4a0: 55                                              push   ebp
  0045c4a1: 8b ec                                           mov    ebp,esp
  0045c4a3: 51                                              push   ecx
  0045c4a4: 8a 41 34                                        mov    al,BYTE PTR [ecx+0x34]
  0045c4a7: 53                                              push   ebx
  0045c4a8: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045c4ab: 56                                              push   esi
  0045c4ac: 33 d2                                           xor    edx,edx
  0045c4ae: 8d 71 34                                        lea    esi,[ecx+0x34]
  0045c4b1: 88 03                                           mov    BYTE PTR [ebx],al
  0045c4b3: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0045c4b6: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0045c4b9: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0045c4bc: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0045c4c1: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0045c4c4: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045c4c6: 57                                              push   edi
  0045c4c7: 8b f9                                           mov    edi,ecx
  0045c4c9: 3b c7                                           cmp    eax,edi
  0045c4cb: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0045c4ce: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0045c4d1: 73 05                                           jae    0x45c4d8
  0045c4d3: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0045c4d6: 8b f8                                           mov    edi,eax
  0045c4d8: 3b de                                           cmp    ebx,esi
  0045c4da: 75 73                                           jne    0x45c54f
  0045c4dc: 3b fa                                           cmp    edi,edx
  0045c4de: 8b f0                                           mov    esi,eax
  0045c4e0: 76 0a                                           jbe    0x45c4ec
  0045c4e2: 8b cb                                           mov    ecx,ebx
  0045c4e4: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0045c4ea: 33 d2                                           xor    edx,edx
  0045c4ec: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0045c4ef: 2b c7                                           sub    eax,edi
  0045c4f1: 3b c6                                           cmp    eax,esi
  0045c4f3: 73 02                                           jae    0x45c4f7
  0045c4f5: 8b f0                                           mov    esi,eax
  0045c4f7: 3b f2                                           cmp    esi,edx
  0045c4f9: 0f 86 de 00 00 00                               jbe    0x45c5dd
  0045c4ff: 8b cb                                           mov    ecx,ebx
  0045c501: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0045c507: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0045c50a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0045c50d: 2b d6                                           sub    edx,esi
  0045c50f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0045c512: 2b d7                                           sub    edx,edi
  0045c514: 52                                              push   edx
  0045c515: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  0045c518: 51                                              push   ecx
  0045c519: 50                                              push   eax
  0045c51a: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0045c520: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0045c523: 83 c4 0c                                        add    esp,0xc
  0045c526: 6a 00                                           push   0x0
  0045c528: 2b fe                                           sub    edi,esi
  0045c52a: 57                                              push   edi
  0045c52b: 8b cb                                           mov    ecx,ebx
  0045c52d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0045c533: 84 c0                                           test   al,al
  0045c535: 0f 84 a2 00 00 00                               je     0x45c5dd
  0045c53b: 57                                              push   edi
  0045c53c: 8b cb                                           mov    ecx,ebx
  0045c53e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0045c544: 5f                                              pop    edi
  0045c545: 5e                                              pop    esi
  0045c546: 8b c3                                           mov    eax,ebx
  0045c548: 5b                                              pop    ebx
  0045c549: 8b e5                                           mov    esp,ebp
  0045c54b: 5d                                              pop    ebp
  0045c54c: c2 04 00                                        ret    0x4
  0045c54f: 3b fa                                           cmp    edi,edx
  0045c551: 76 4e                                           jbe    0x45c5a1
  0045c553: 3b f9                                           cmp    edi,ecx
  0045c555: 75 4a                                           jne    0x45c5a1
  0045c557: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045c55a: 3b c2                                           cmp    eax,edx
  0045c55c: 75 05                                           jne    0x45c563
  0045c55e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0045c563: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0045c567: 73 38                                           jae    0x45c5a1
  0045c569: 6a 01                                           push   0x1
  0045c56b: 8b cb                                           mov    ecx,ebx
  0045c56d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045c573: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045c576: 85 c0                                           test   eax,eax
  0045c578: 75 05                                           jne    0x45c57f
  0045c57a: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0045c57f: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0045c582: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0045c585: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0045c588: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0045c58b: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0045c58e: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  0045c591: 5f                                              pop    edi
  0045c592: fe c1                                           inc    cl
  0045c594: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  0045c597: 5e                                              pop    esi
  0045c598: 8b c3                                           mov    eax,ebx
  0045c59a: 5b                                              pop    ebx
  0045c59b: 8b e5                                           mov    esp,ebp
  0045c59d: 5d                                              pop    ebp
  0045c59e: c2 04 00                                        ret    0x4
  0045c5a1: 6a 01                                           push   0x1
  0045c5a3: 57                                              push   edi
  0045c5a4: 8b cb                                           mov    ecx,ebx
  0045c5a6: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0045c5ac: 84 c0                                           test   al,al
  0045c5ae: 74 2d                                           je     0x45c5dd
  0045c5b0: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0045c5b3: 85 f6                                           test   esi,esi
  0045c5b5: 75 06                                           jne    0x45c5bd
  0045c5b7: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0045c5bd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045c5c0: 8b cf                                           mov    ecx,edi
  0045c5c2: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0045c5c5: 8b d1                                           mov    edx,ecx
  0045c5c7: c1 e9 02                                        shr    ecx,0x2
  0045c5ca: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0045c5cc: 8b ca                                           mov    ecx,edx
  0045c5ce: 83 e1 03                                        and    ecx,0x3
  0045c5d1: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0045c5d3: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0045c5d6: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0045c5d9: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0045c5dd: 5f                                              pop    edi
  0045c5de: 5e                                              pop    esi
  0045c5df: 8b c3                                           mov    eax,ebx
  0045c5e1: 5b                                              pop    ebx
  0045c5e2: 8b e5                                           mov    esp,ebp
  0045c5e4: 5d                                              pop    ebp
  0045c5e5: c2 04 00                                        ret    0x4
  0045c5f0: 55                                              push   ebp
  0045c5f1: 8b ec                                           mov    ebp,esp
  0045c5f3: 51                                              push   ecx
  0045c5f4: 8a 41 44                                        mov    al,BYTE PTR [ecx+0x44]
  0045c5f7: 53                                              push   ebx
  0045c5f8: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0045c5fb: 56                                              push   esi
  0045c5fc: 33 d2                                           xor    edx,edx
  0045c5fe: 8d 71 44                                        lea    esi,[ecx+0x44]
  0045c601: 88 03                                           mov    BYTE PTR [ebx],al
  0045c603: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0045c606: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0045c609: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0045c60c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0045c611: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0045c614: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045c616: 57                                              push   edi
  0045c617: 8b f9                                           mov    edi,ecx
  0045c619: 3b c7                                           cmp    eax,edi
  0045c61b: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0045c61e: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0045c621: 73 05                                           jae    0x45c628
  0045c623: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0045c626: 8b f8                                           mov    edi,eax
  0045c628: 3b de                                           cmp    ebx,esi
  0045c62a: 75 73                                           jne    0x45c69f
  0045c62c: 3b fa                                           cmp    edi,edx
  0045c62e: 8b f0                                           mov    esi,eax
  0045c630: 76 0a                                           jbe    0x45c63c
  0045c632: 8b cb                                           mov    ecx,ebx
  0045c634: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0045c63a: 33 d2                                           xor    edx,edx
  0045c63c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0045c63f: 2b c7                                           sub    eax,edi
  0045c641: 3b c6                                           cmp    eax,esi
  0045c643: 73 02                                           jae    0x45c647
  0045c645: 8b f0                                           mov    esi,eax
  0045c647: 3b f2                                           cmp    esi,edx
  0045c649: 0f 86 de 00 00 00                               jbe    0x45c72d
  0045c64f: 8b cb                                           mov    ecx,ebx
  0045c651: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0045c657: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0045c65a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0045c65d: 2b d6                                           sub    edx,esi
  0045c65f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0045c662: 2b d7                                           sub    edx,edi
  0045c664: 52                                              push   edx
  0045c665: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  0045c668: 51                                              push   ecx
  0045c669: 50                                              push   eax
  0045c66a: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0045c670: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0045c673: 83 c4 0c                                        add    esp,0xc
  0045c676: 6a 00                                           push   0x0
  0045c678: 2b fe                                           sub    edi,esi
  0045c67a: 57                                              push   edi
  0045c67b: 8b cb                                           mov    ecx,ebx
  0045c67d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0045c683: 84 c0                                           test   al,al
  0045c685: 0f 84 a2 00 00 00                               je     0x45c72d
  0045c68b: 57                                              push   edi
  0045c68c: 8b cb                                           mov    ecx,ebx
  0045c68e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0045c694: 5f                                              pop    edi
  0045c695: 5e                                              pop    esi
  0045c696: 8b c3                                           mov    eax,ebx
  0045c698: 5b                                              pop    ebx
  0045c699: 8b e5                                           mov    esp,ebp
  0045c69b: 5d                                              pop    ebp
  0045c69c: c2 04 00                                        ret    0x4
  0045c69f: 3b fa                                           cmp    edi,edx
  0045c6a1: 76 4e                                           jbe    0x45c6f1
  0045c6a3: 3b f9                                           cmp    edi,ecx
  0045c6a5: 75 4a                                           jne    0x45c6f1
  0045c6a7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045c6aa: 3b c2                                           cmp    eax,edx
  0045c6ac: 75 05                                           jne    0x45c6b3
  0045c6ae: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0045c6b3: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0045c6b7: 73 38                                           jae    0x45c6f1
  0045c6b9: 6a 01                                           push   0x1
  0045c6bb: 8b cb                                           mov    ecx,ebx
  0045c6bd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045c6c3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045c6c6: 85 c0                                           test   eax,eax
  0045c6c8: 75 05                                           jne    0x45c6cf
  0045c6ca: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0045c6cf: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0045c6d2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0045c6d5: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0045c6d8: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0045c6db: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0045c6de: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  0045c6e1: 5f                                              pop    edi
  0045c6e2: fe c1                                           inc    cl
  0045c6e4: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  0045c6e7: 5e                                              pop    esi
  0045c6e8: 8b c3                                           mov    eax,ebx
  0045c6ea: 5b                                              pop    ebx
  0045c6eb: 8b e5                                           mov    esp,ebp
  0045c6ed: 5d                                              pop    ebp
  0045c6ee: c2 04 00                                        ret    0x4
  0045c6f1: 6a 01                                           push   0x1
  0045c6f3: 57                                              push   edi
  0045c6f4: 8b cb                                           mov    ecx,ebx
  0045c6f6: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0045c6fc: 84 c0                                           test   al,al
  0045c6fe: 74 2d                                           je     0x45c72d
  0045c700: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0045c703: 85 f6                                           test   esi,esi
  0045c705: 75 06                                           jne    0x45c70d
  0045c707: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0045c70d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045c710: 8b cf                                           mov    ecx,edi
  0045c712: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0045c715: 8b d1                                           mov    edx,ecx
  0045c717: c1 e9 02                                        shr    ecx,0x2
  0045c71a: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0045c71c: 8b ca                                           mov    ecx,edx
  0045c71e: 83 e1 03                                        and    ecx,0x3
  0045c721: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0045c723: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0045c726: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0045c729: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0045c72d: 5f                                              pop    edi
  0045c72e: 5e                                              pop    esi
  0045c72f: 8b c3                                           mov    eax,ebx
  0045c731: 5b                                              pop    ebx
  0045c732: 8b e5                                           mov    esp,ebp
  0045c734: 5d                                              pop    ebp
  0045c735: c2 04 00                                        ret    0x4
  0045dc70: 55                                              push   ebp
  0045dc71: 8b ec                                           mov    ebp,esp
  0045dc73: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0045dc76: 85 c0                                           test   eax,eax
  0045dc78: 75 0b                                           jne    0x45dc85
  0045dc7a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045dc7d: 33 c9                                           xor    ecx,ecx
  0045dc7f: 89 08                                           mov    DWORD PTR [eax],ecx
  0045dc81: 5d                                              pop    ebp
  0045dc82: c2 04 00                                        ret    0x4
  0045dc85: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045dc87: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0045dc8a: 89 01                                           mov    DWORD PTR [ecx],eax
  0045dc8c: 8b c1                                           mov    eax,ecx
  0045dc8e: 5d                                              pop    ebp
  0045dc8f: c2 04 00                                        ret    0x4
  0045dca0: 55                                              push   ebp
  0045dca1: 8b ec                                           mov    ebp,esp
  0045dca3: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045dca5: 8b 02                                           mov    eax,DWORD PTR [edx]
  0045dca7: 89 01                                           mov    DWORD PTR [ecx],eax
  0045dca9: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045dcac: 89 10                                           mov    DWORD PTR [eax],edx
  0045dcae: 5d                                              pop    ebp
  0045dcaf: c2 08 00                                        ret    0x8
  0045e240: 55                                              push   ebp
  0045e241: 8b ec                                           mov    ebp,esp
  0045e243: 83 ec 08                                        sub    esp,0x8
  0045e246: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045e249: 53                                              push   ebx
  0045e24a: 8b d9                                           mov    ebx,ecx
  0045e24c: 3b d8                                           cmp    ebx,eax
  0045e24e: 74 7b                                           je     0x45e2cb
  0045e250: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0045e253: 57                                              push   edi
  0045e254: 33 ff                                           xor    edi,edi
  0045e256: 3b cf                                           cmp    ecx,edi
  0045e258: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  0045e25b: 75 05                                           jne    0x45e262
  0045e25d: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0045e260: eb 05                                           jmp    0x45e267
  0045e262: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0045e264: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0045e267: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0045e26a: 3b f8                                           cmp    edi,eax
  0045e26c: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0045e26f: 74 3f                                           je     0x45e2b0
  0045e271: 8b 38                                           mov    edi,DWORD PTR [eax]
  0045e273: 3b f8                                           cmp    edi,eax
  0045e275: 74 39                                           je     0x45e2b0
  0045e277: 56                                              push   esi
  0045e278: 8b f7                                           mov    esi,edi
  0045e27a: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0045e27d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0045e27f: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0045e281: 89 11                                           mov    DWORD PTR [ecx],edx
  0045e283: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0045e286: 8b 06                                           mov    eax,DWORD PTR [esi]
  0045e288: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0045e28b: 6a 00                                           push   0x0
  0045e28d: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0045e290: e8 1b fc fc ff                                  call   0x42deb0
  0045e295: 56                                              push   esi
  0045e296: e8 c5 3d fe ff                                  call   0x442060
  0045e29b: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0045e29e: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0045e2a1: 83 c4 04                                        add    esp,0x4
  0045e2a4: 49                                              dec    ecx
  0045e2a5: 3b f8                                           cmp    edi,eax
  0045e2a7: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0045e2aa: 75 cc                                           jne    0x45e278
  0045e2ac: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0045e2af: 5e                                              pop    esi
  0045e2b0: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0045e2b3: 85 c0                                           test   eax,eax
  0045e2b5: 5f                                              pop    edi
  0045e2b6: 74 02                                           je     0x45e2ba
  0045e2b8: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045e2ba: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0045e2bd: 52                                              push   edx
  0045e2be: 51                                              push   ecx
  0045e2bf: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0045e2c2: 51                                              push   ecx
  0045e2c3: 50                                              push   eax
  0045e2c4: 8b cb                                           mov    ecx,ebx
  0045e2c6: e8 f5 fc fc ff                                  call   0x42dfc0
  0045e2cb: 8b c3                                           mov    eax,ebx
  0045e2cd: 5b                                              pop    ebx
  0045e2ce: 8b e5                                           mov    esp,ebp
  0045e2d0: 5d                                              pop    ebp
  0045e2d1: c2 04 00                                        ret    0x4
  0045e2e0: 55                                              push   ebp
  0045e2e1: 8b ec                                           mov    ebp,esp
  0045e2e3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0045e2e6: 85 c0                                           test   eax,eax
  0045e2e8: 75 0b                                           jne    0x45e2f5
  0045e2ea: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045e2ed: 33 c9                                           xor    ecx,ecx
  0045e2ef: 89 08                                           mov    DWORD PTR [eax],ecx
  0045e2f1: 5d                                              pop    ebp
  0045e2f2: c2 04 00                                        ret    0x4
  0045e2f5: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045e2f7: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0045e2fa: 89 01                                           mov    DWORD PTR [ecx],eax
  0045e2fc: 8b c1                                           mov    eax,ecx
  0045e2fe: 5d                                              pop    ebp
  0045e2ff: c2 04 00                                        ret    0x4
  0045e740: 55                                              push   ebp
  0045e741: 8b ec                                           mov    ebp,esp
  0045e743: 51                                              push   ecx
  0045e744: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045e747: 57                                              push   edi
  0045e748: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0045e74b: 3b f8                                           cmp    edi,eax
  0045e74d: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0045e750: 74 69                                           je     0x45e7bb
  0045e752: 53                                              push   ebx
  0045e753: 56                                              push   esi
  0045e754: 33 db                                           xor    ebx,ebx
  0045e756: 8b f7                                           mov    esi,edi
  0045e758: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045e75b: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  0045e75d: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0045e75f: 89 08                                           mov    DWORD PTR [eax],ecx
  0045e761: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045e764: 8b 16                                           mov    edx,DWORD PTR [esi]
  0045e766: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0045e769: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0045e76c: 3b c3                                           cmp    eax,ebx
  0045e76e: 74 1c                                           je     0x45e78c
  0045e770: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0045e773: 8a 01                                           mov    al,BYTE PTR [ecx]
  0045e775: 3a c3                                           cmp    al,bl
  0045e777: 74 0a                                           je     0x45e783
  0045e779: 3c ff                                           cmp    al,0xff
  0045e77b: 74 06                                           je     0x45e783
  0045e77d: fe c8                                           dec    al
  0045e77f: 88 01                                           mov    BYTE PTR [ecx],al
  0045e781: eb 09                                           jmp    0x45e78c
  0045e783: 51                                              push   ecx
  0045e784: e8 d7 38 fe ff                                  call   0x442060
  0045e789: 83 c4 04                                        add    esp,0x4
  0045e78c: 56                                              push   esi
  0045e78d: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0045e790: 89 5e 10                                        mov    DWORD PTR [esi+0x10],ebx
  0045e793: 89 5e 14                                        mov    DWORD PTR [esi+0x14],ebx
  0045e796: e8 c5 38 fe ff                                  call   0x442060
  0045e79b: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0045e79e: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0045e7a1: 83 c4 04                                        add    esp,0x4
  0045e7a4: 49                                              dec    ecx
  0045e7a5: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0045e7a8: 3b 7d 10                                        cmp    edi,DWORD PTR [ebp+0x10]
  0045e7ab: 75 a9                                           jne    0x45e756
  0045e7ad: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045e7b0: 5e                                              pop    esi
  0045e7b1: 5b                                              pop    ebx
  0045e7b2: 89 38                                           mov    DWORD PTR [eax],edi
  0045e7b4: 5f                                              pop    edi
  0045e7b5: 8b e5                                           mov    esp,ebp
  0045e7b7: 5d                                              pop    ebp
  0045e7b8: c2 0c 00                                        ret    0xc
  0045e7bb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045e7be: 89 38                                           mov    DWORD PTR [eax],edi
  0045e7c0: 5f                                              pop    edi
  0045e7c1: 8b e5                                           mov    esp,ebp
  0045e7c3: 5d                                              pop    ebp
  0045e7c4: c2 0c 00                                        ret    0xc
  0045e8f0: 55                                              push   ebp
  0045e8f1: 8b ec                                           mov    ebp,esp
  0045e8f3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0045e8f6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045e8f8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045e8fb: 89 08                                           mov    DWORD PTR [eax],ecx
  0045e8fd: 5d                                              pop    ebp
  0045e8fe: c2 04 00                                        ret    0x4
  0045e910: 55                                              push   ebp
  0045e911: 8b ec                                           mov    ebp,esp
  0045e913: 53                                              push   ebx
  0045e914: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  0045e917: 56                                              push   esi
  0045e918: 8b f1                                           mov    esi,ecx
  0045e91a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0045e91d: 85 c0                                           test   eax,eax
  0045e91f: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0045e922: 57                                              push   edi
  0045e923: 74 67                                           je     0x45e98c
  0045e925: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045e928: 3b 08                                           cmp    ecx,DWORD PTR [eax]
  0045e92a: 75 60                                           jne    0x45e98c
  0045e92c: 3b d8                                           cmp    ebx,eax
  0045e92e: 75 5c                                           jne    0x45e98c
  0045e930: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  0045e933: 8a 43 29                                        mov    al,BYTE PTR [ebx+0x29]
  0045e936: 84 c0                                           test   al,al
  0045e938: 8b fb                                           mov    edi,ebx
  0045e93a: 75 27                                           jne    0x45e963
  0045e93c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0045e93f: 50                                              push   eax
  0045e940: 8b ce                                           mov    ecx,esi
  0045e942: e8 39 07 00 00                                  call   0x45f080
  0045e947: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0045e949: 8d 4b 10                                        lea    ecx,[ebx+0x10]
  0045e94c: e8 9f 08 fb ff                                  call   0x40f1f0
  0045e951: 53                                              push   ebx
  0045e952: e8 09 37 fe ff                                  call   0x442060
  0045e957: 8a 47 29                                        mov    al,BYTE PTR [edi+0x29]
  0045e95a: 83 c4 04                                        add    esp,0x4
  0045e95d: 84 c0                                           test   al,al
  0045e95f: 8b df                                           mov    ebx,edi
  0045e961: 74 d9                                           je     0x45e93c
  0045e963: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045e966: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0045e969: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045e96c: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0045e973: 89 00                                           mov    DWORD PTR [eax],eax
  0045e975: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045e978: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0045e97b: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0045e97e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045e980: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045e983: 5f                                              pop    edi
  0045e984: 5e                                              pop    esi
  0045e985: 89 10                                           mov    DWORD PTR [eax],edx
  0045e987: 5b                                              pop    ebx
  0045e988: 5d                                              pop    ebp
  0045e989: c2 0c 00                                        ret    0xc
  0045e98c: 3b cb                                           cmp    ecx,ebx
  0045e98e: 74 1d                                           je     0x45e9ad
  0045e990: 8b f9                                           mov    edi,ecx
  0045e992: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0045e995: e8 36 07 00 00                                  call   0x45f0d0
  0045e99a: 57                                              push   edi
  0045e99b: 8d 45 10                                        lea    eax,[ebp+0x10]
  0045e99e: 50                                              push   eax
  0045e99f: 8b ce                                           mov    ecx,esi
  0045e9a1: e8 5a 02 00 00                                  call   0x45ec00
  0045e9a6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0045e9a9: 3b cb                                           cmp    ecx,ebx
  0045e9ab: 75 e3                                           jne    0x45e990
  0045e9ad: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045e9b0: 5f                                              pop    edi
  0045e9b1: 5e                                              pop    esi
  0045e9b2: 89 08                                           mov    DWORD PTR [eax],ecx
  0045e9b4: 5b                                              pop    ebx
  0045e9b5: 5d                                              pop    ebp
  0045e9b6: c2 0c 00                                        ret    0xc
  0045ec00: 55                                              push   ebp
  0045ec01: 8b ec                                           mov    ebp,esp
  0045ec03: 6a ff                                           push   0xffffffff
  0045ec05: 68 49 78 4d 00                                  push   0x4d7849
  0045ec0a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045ec10: 50                                              push   eax
  0045ec11: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045ec18: 83 ec 34                                        sub    esp,0x34
  0045ec1b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0045ec1e: 56                                              push   esi
  0045ec1f: 8b f1                                           mov    esi,ecx
  0045ec21: 8a 48 29                                        mov    cl,BYTE PTR [eax+0x29]
  0045ec24: 84 c9                                           test   cl,cl
  0045ec26: 57                                              push   edi
  0045ec27: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0045ec2a: 74 57                                           je     0x45ec83
  0045ec2c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  0045ec2f: 6a 00                                           push   0x0
  0045ec31: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0045ec34: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  0045ec37: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0045ec3d: 83 c9 ff                                        or     ecx,0xffffffff
  0045ec40: 33 c0                                           xor    eax,eax
  0045ec42: bf 40 05 50 00                                  mov    edi,0x500540
  0045ec47: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0045ec49: f7 d1                                           not    ecx
  0045ec4b: 49                                              dec    ecx
  0045ec4c: 51                                              push   ecx
  0045ec4d: 68 40 05 50 00                                  push   0x500540
  0045ec52: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0045ec55: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0045ec5b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0045ec5e: 51                                              push   ecx
  0045ec5f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  0045ec62: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045ec69: e8 12 64 fa ff                                  call   0x405080
  0045ec6e: 68 18 0a 4e 00                                  push   0x4e0a18
  0045ec73: 8d 55 c0                                        lea    edx,[ebp-0x40]
  0045ec76: 52                                              push   edx
  0045ec77: c7 45 c0 e0 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5e0
  0045ec7e: e8 d3 30 07 00                                  call   0x4d1d56
  0045ec83: 53                                              push   ebx
  0045ec84: 8b d8                                           mov    ebx,eax
  0045ec86: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0045ec89: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0045ec8c: e8 3f 04 00 00                                  call   0x45f0d0
  0045ec91: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0045ec93: 8a 42 29                                        mov    al,BYTE PTR [edx+0x29]
  0045ec96: 84 c0                                           test   al,al
  0045ec98: 74 05                                           je     0x45ec9f
  0045ec9a: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0045ec9d: eb 2b                                           jmp    0x45ecca
  0045ec9f: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0045eca2: 8a 41 29                                        mov    al,BYTE PTR [ecx+0x29]
  0045eca5: 84 c0                                           test   al,al
  0045eca7: 74 04                                           je     0x45ecad
  0045eca9: 8b fa                                           mov    edi,edx
  0045ecab: eb 1d                                           jmp    0x45ecca
  0045ecad: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0045ecaf: 80 78 29 00                                     cmp    BYTE PTR [eax+0x29],0x0
  0045ecb3: 75 0a                                           jne    0x45ecbf
  0045ecb5: 8b c8                                           mov    ecx,eax
  0045ecb7: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0045ecb9: 80 78 29 00                                     cmp    BYTE PTR [eax+0x29],0x0
  0045ecbd: 74 f6                                           je     0x45ecb5
  0045ecbf: 3b cb                                           cmp    ecx,ebx
  0045ecc1: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  0045ecc4: 0f 85 8a 00 00 00                               jne    0x45ed54
  0045ecca: 8a 4f 29                                        mov    cl,BYTE PTR [edi+0x29]
  0045eccd: 84 c9                                           test   cl,cl
  0045eccf: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0045ecd2: 75 03                                           jne    0x45ecd7
  0045ecd4: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  0045ecd7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0045ecda: 39 59 04                                        cmp    DWORD PTR [ecx+0x4],ebx
  0045ecdd: 75 05                                           jne    0x45ece4
  0045ecdf: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0045ece2: eb 0b                                           jmp    0x45ecef
  0045ece4: 39 18                                           cmp    DWORD PTR [eax],ebx
  0045ece6: 75 04                                           jne    0x45ecec
  0045ece8: 89 38                                           mov    DWORD PTR [eax],edi
  0045ecea: eb 03                                           jmp    0x45ecef
  0045ecec: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  0045ecef: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0045ecf2: 39 1e                                           cmp    DWORD PTR [esi],ebx
  0045ecf4: 75 24                                           jne    0x45ed1a
  0045ecf6: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0045ecf9: 8a 51 29                                        mov    dl,BYTE PTR [ecx+0x29]
  0045ecfc: 84 d2                                           test   dl,dl
  0045ecfe: 74 04                                           je     0x45ed04
  0045ed00: 89 06                                           mov    DWORD PTR [esi],eax
  0045ed02: eb 16                                           jmp    0x45ed1a
  0045ed04: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0045ed06: 80 79 29 00                                     cmp    BYTE PTR [ecx+0x29],0x0
  0045ed0a: 8b d7                                           mov    edx,edi
  0045ed0c: 75 0a                                           jne    0x45ed18
  0045ed0e: 8b d1                                           mov    edx,ecx
  0045ed10: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0045ed12: 80 79 29 00                                     cmp    BYTE PTR [ecx+0x29],0x0
  0045ed16: 74 f6                                           je     0x45ed0e
  0045ed18: 89 16                                           mov    DWORD PTR [esi],edx
  0045ed1a: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0045ed1d: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  0045ed20: 39 5e 08                                        cmp    DWORD PTR [esi+0x8],ebx
  0045ed23: 0f 85 89 00 00 00                               jne    0x45edb2
  0045ed29: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  0045ed2b: 8a 51 29                                        mov    dl,BYTE PTR [ecx+0x29]
  0045ed2e: 84 d2                                           test   dl,dl
  0045ed30: 74 05                                           je     0x45ed37
  0045ed32: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0045ed35: eb 7b                                           jmp    0x45edb2
  0045ed37: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0045ed3a: 8a 59 29                                        mov    bl,BYTE PTR [ecx+0x29]
  0045ed3d: 84 db                                           test   bl,bl
  0045ed3f: 8b d7                                           mov    edx,edi
  0045ed41: 75 0c                                           jne    0x45ed4f
  0045ed43: 8b d1                                           mov    edx,ecx
  0045ed45: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  0045ed48: 8a 59 29                                        mov    bl,BYTE PTR [ecx+0x29]
  0045ed4b: 84 db                                           test   bl,bl
  0045ed4d: 74 f4                                           je     0x45ed43
  0045ed4f: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0045ed52: eb 5e                                           jmp    0x45edb2
  0045ed54: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045ed57: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0045ed59: 89 11                                           mov    DWORD PTR [ecx],edx
  0045ed5b: 3b 4b 08                                        cmp    ecx,DWORD PTR [ebx+0x8]
  0045ed5e: 75 04                                           jne    0x45ed64
  0045ed60: 8b c1                                           mov    eax,ecx
  0045ed62: eb 1b                                           jmp    0x45ed7f
  0045ed64: 8a 57 29                                        mov    dl,BYTE PTR [edi+0x29]
  0045ed67: 84 d2                                           test   dl,dl
  0045ed69: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0045ed6c: 75 03                                           jne    0x45ed71
  0045ed6e: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  0045ed71: 89 38                                           mov    DWORD PTR [eax],edi
  0045ed73: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0045ed76: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0045ed79: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0045ed7c: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045ed7f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0045ed82: 39 5a 04                                        cmp    DWORD PTR [edx+0x4],ebx
  0045ed85: 75 05                                           jne    0x45ed8c
  0045ed87: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045ed8a: eb 0e                                           jmp    0x45ed9a
  0045ed8c: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0045ed8f: 39 1a                                           cmp    DWORD PTR [edx],ebx
  0045ed91: 75 04                                           jne    0x45ed97
  0045ed93: 89 0a                                           mov    DWORD PTR [edx],ecx
  0045ed95: eb 03                                           jmp    0x45ed9a
  0045ed97: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0045ed9a: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0045ed9d: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  0045eda0: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  0045eda3: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0045eda6: 8a 5e 28                                        mov    bl,BYTE PTR [esi+0x28]
  0045eda9: 8a 51 28                                        mov    dl,BYTE PTR [ecx+0x28]
  0045edac: 88 59 28                                        mov    BYTE PTR [ecx+0x28],bl
  0045edaf: 88 56 28                                        mov    BYTE PTR [esi+0x28],dl
  0045edb2: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0045edb5: 8a 51 28                                        mov    dl,BYTE PTR [ecx+0x28]
  0045edb8: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0045edbb: b3 01                                           mov    bl,0x1
  0045edbd: 3a d3                                           cmp    dl,bl
  0045edbf: 0f 85 58 02 00 00                               jne    0x45f01d
  0045edc5: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0045edc8: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  0045edcb: 0f 84 49 02 00 00                               je     0x45f01a
  0045edd1: 38 5f 28                                        cmp    BYTE PTR [edi+0x28],bl
  0045edd4: 0f 85 40 02 00 00                               jne    0x45f01a
  0045edda: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045eddc: 3b f9                                           cmp    edi,ecx
  0045edde: 75 71                                           jne    0x45ee51
  0045ede0: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0045ede3: 8a 51 28                                        mov    dl,BYTE PTR [ecx+0x28]
  0045ede6: 84 d2                                           test   dl,dl
  0045ede8: 75 43                                           jne    0x45ee2d
  0045edea: 88 59 28                                        mov    BYTE PTR [ecx+0x28],bl
  0045eded: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0045edf0: c6 40 28 00                                     mov    BYTE PTR [eax+0x28],0x0
  0045edf4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045edf6: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  0045edf9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045edfb: 80 7a 29 00                                     cmp    BYTE PTR [edx+0x29],0x0
  0045edff: 75 03                                           jne    0x45ee04
  0045ee01: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0045ee04: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0045ee07: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0045ee0a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0045ee0d: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0045ee10: 75 05                                           jne    0x45ee17
  0045ee12: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045ee15: eb 0e                                           jmp    0x45ee25
  0045ee17: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0045ee1a: 3b 02                                           cmp    eax,DWORD PTR [edx]
  0045ee1c: 75 04                                           jne    0x45ee22
  0045ee1e: 89 0a                                           mov    DWORD PTR [edx],ecx
  0045ee20: eb 03                                           jmp    0x45ee25
  0045ee22: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0045ee25: 89 01                                           mov    DWORD PTR [ecx],eax
  0045ee27: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0045ee2a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0045ee2d: 8a 51 29                                        mov    dl,BYTE PTR [ecx+0x29]
  0045ee30: 84 d2                                           test   dl,dl
  0045ee32: 0f 85 86 00 00 00                               jne    0x45eebe
  0045ee38: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045ee3a: 38 5a 28                                        cmp    BYTE PTR [edx+0x28],bl
  0045ee3d: 0f 85 93 00 00 00                               jne    0x45eed6
  0045ee43: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045ee46: 38 5a 28                                        cmp    BYTE PTR [edx+0x28],bl
  0045ee49: 0f 85 87 00 00 00                               jne    0x45eed6
  0045ee4f: eb 69                                           jmp    0x45eeba
  0045ee51: 8a 51 28                                        mov    dl,BYTE PTR [ecx+0x28]
  0045ee54: 84 d2                                           test   dl,dl
  0045ee56: 75 44                                           jne    0x45ee9c
  0045ee58: 88 59 28                                        mov    BYTE PTR [ecx+0x28],bl
  0045ee5b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045ee5d: c6 40 28 00                                     mov    BYTE PTR [eax+0x28],0x0
  0045ee61: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045ee64: 89 10                                           mov    DWORD PTR [eax],edx
  0045ee66: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045ee69: 80 7a 29 00                                     cmp    BYTE PTR [edx+0x29],0x0
  0045ee6d: 75 03                                           jne    0x45ee72
  0045ee6f: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0045ee72: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0045ee75: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0045ee78: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0045ee7b: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0045ee7e: 75 05                                           jne    0x45ee85
  0045ee80: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045ee83: eb 0f                                           jmp    0x45ee94
  0045ee85: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0045ee88: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0045ee8b: 75 05                                           jne    0x45ee92
  0045ee8d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0045ee90: eb 02                                           jmp    0x45ee94
  0045ee92: 89 0a                                           mov    DWORD PTR [edx],ecx
  0045ee94: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0045ee97: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0045ee9a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045ee9c: 8a 51 29                                        mov    dl,BYTE PTR [ecx+0x29]
  0045ee9f: 84 d2                                           test   dl,dl
  0045eea1: 75 1b                                           jne    0x45eebe
  0045eea3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045eea6: 38 5a 28                                        cmp    BYTE PTR [edx+0x28],bl
  0045eea9: 0f 85 d0 00 00 00                               jne    0x45ef7f
  0045eeaf: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045eeb1: 38 5a 28                                        cmp    BYTE PTR [edx+0x28],bl
  0045eeb4: 0f 85 c5 00 00 00                               jne    0x45ef7f
  0045eeba: c6 41 28 00                                     mov    BYTE PTR [ecx+0x28],0x0
  0045eebe: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0045eec1: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0045eec4: 8b f8                                           mov    edi,eax
  0045eec6: 3b fa                                           cmp    edi,edx
  0045eec8: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0045eecb: 0f 85 00 ff ff ff                               jne    0x45edd1
  0045eed1: e9 44 01 00 00                                  jmp    0x45f01a
  0045eed6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045eed9: 38 5a 28                                        cmp    BYTE PTR [edx+0x28],bl
  0045eedc: 75 4a                                           jne    0x45ef28
  0045eede: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045eee0: 88 5a 28                                        mov    BYTE PTR [edx+0x28],bl
  0045eee3: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045eee5: c6 41 28 00                                     mov    BYTE PTR [ecx+0x28],0x0
  0045eee9: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  0045eeec: 89 31                                           mov    DWORD PTR [ecx],esi
  0045eeee: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  0045eef1: 80 7e 29 00                                     cmp    BYTE PTR [esi+0x29],0x0
  0045eef5: 75 03                                           jne    0x45eefa
  0045eef7: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0045eefa: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0045eefd: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  0045ef00: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0045ef03: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0045ef06: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0045ef09: 75 05                                           jne    0x45ef10
  0045ef0b: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0045ef0e: eb 0f                                           jmp    0x45ef1f
  0045ef10: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0045ef13: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  0045ef16: 75 05                                           jne    0x45ef1d
  0045ef18: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0045ef1b: eb 02                                           jmp    0x45ef1f
  0045ef1d: 89 16                                           mov    DWORD PTR [esi],edx
  0045ef1f: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0045ef22: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0045ef25: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0045ef28: 8a 50 28                                        mov    dl,BYTE PTR [eax+0x28]
  0045ef2b: 88 51 28                                        mov    BYTE PTR [ecx+0x28],dl
  0045ef2e: 88 58 28                                        mov    BYTE PTR [eax+0x28],bl
  0045ef31: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0045ef34: 88 59 28                                        mov    BYTE PTR [ecx+0x28],bl
  0045ef37: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0045ef3a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045ef3c: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  0045ef3f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045ef41: 80 7a 29 00                                     cmp    BYTE PTR [edx+0x29],0x0
  0045ef45: 75 03                                           jne    0x45ef4a
  0045ef47: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0045ef4a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0045ef4d: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0045ef50: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0045ef53: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0045ef56: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0045ef59: 75 0a                                           jne    0x45ef65
  0045ef5b: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045ef5e: 89 01                                           mov    DWORD PTR [ecx],eax
  0045ef60: e9 b2 00 00 00                                  jmp    0x45f017
  0045ef65: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0045ef68: 3b 02                                           cmp    eax,DWORD PTR [edx]
  0045ef6a: 75 09                                           jne    0x45ef75
  0045ef6c: 89 0a                                           mov    DWORD PTR [edx],ecx
  0045ef6e: 89 01                                           mov    DWORD PTR [ecx],eax
  0045ef70: e9 a2 00 00 00                                  jmp    0x45f017
  0045ef75: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0045ef78: 89 01                                           mov    DWORD PTR [ecx],eax
  0045ef7a: e9 98 00 00 00                                  jmp    0x45f017
  0045ef7f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045ef81: 38 5a 28                                        cmp    BYTE PTR [edx+0x28],bl
  0045ef84: 75 48                                           jne    0x45efce
  0045ef86: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045ef89: 88 5a 28                                        mov    BYTE PTR [edx+0x28],bl
  0045ef8c: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045ef8f: c6 41 28 00                                     mov    BYTE PTR [ecx+0x28],0x0
  0045ef93: 8b 32                                           mov    esi,DWORD PTR [edx]
  0045ef95: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  0045ef98: 8b 32                                           mov    esi,DWORD PTR [edx]
  0045ef9a: 80 7e 29 00                                     cmp    BYTE PTR [esi+0x29],0x0
  0045ef9e: 75 03                                           jne    0x45efa3
  0045efa0: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0045efa3: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0045efa6: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  0045efa9: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0045efac: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0045efaf: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0045efb2: 75 05                                           jne    0x45efb9
  0045efb4: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0045efb7: eb 0e                                           jmp    0x45efc7
  0045efb9: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0045efbc: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0045efbe: 75 04                                           jne    0x45efc4
  0045efc0: 89 16                                           mov    DWORD PTR [esi],edx
  0045efc2: eb 03                                           jmp    0x45efc7
  0045efc4: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0045efc7: 89 0a                                           mov    DWORD PTR [edx],ecx
  0045efc9: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0045efcc: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045efce: 8a 50 28                                        mov    dl,BYTE PTR [eax+0x28]
  0045efd1: 88 51 28                                        mov    BYTE PTR [ecx+0x28],dl
  0045efd4: 88 58 28                                        mov    BYTE PTR [eax+0x28],bl
  0045efd7: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0045efd9: 88 59 28                                        mov    BYTE PTR [ecx+0x28],bl
  0045efdc: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045efde: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045efe1: 89 10                                           mov    DWORD PTR [eax],edx
  0045efe3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0045efe6: 80 7a 29 00                                     cmp    BYTE PTR [edx+0x29],0x0
  0045efea: 75 03                                           jne    0x45efef
  0045efec: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0045efef: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0045eff2: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0045eff5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0045eff8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0045effb: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0045effe: 75 05                                           jne    0x45f005
  0045f000: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045f003: eb 0f                                           jmp    0x45f014
  0045f005: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0045f008: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0045f00b: 75 05                                           jne    0x45f012
  0045f00d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0045f010: eb 02                                           jmp    0x45f014
  0045f012: 89 0a                                           mov    DWORD PTR [edx],ecx
  0045f014: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0045f017: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0045f01a: 88 5f 28                                        mov    BYTE PTR [edi+0x28],bl
  0045f01d: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0045f020: 8b 40 14                                        mov    eax,DWORD PTR [eax+0x14]
  0045f023: 33 ff                                           xor    edi,edi
  0045f025: 3b c7                                           cmp    eax,edi
  0045f027: 5b                                              pop    ebx
  0045f028: 74 1c                                           je     0x45f046
  0045f02a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0045f02d: 8a 01                                           mov    al,BYTE PTR [ecx]
  0045f02f: 84 c0                                           test   al,al
  0045f031: 74 0a                                           je     0x45f03d
  0045f033: 3c ff                                           cmp    al,0xff
  0045f035: 74 06                                           je     0x45f03d
  0045f037: fe c8                                           dec    al
  0045f039: 88 01                                           mov    BYTE PTR [ecx],al
  0045f03b: eb 09                                           jmp    0x45f046
  0045f03d: 51                                              push   ecx
  0045f03e: e8 1d 30 fe ff                                  call   0x442060
  0045f043: 83 c4 04                                        add    esp,0x4
  0045f046: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0045f049: 50                                              push   eax
  0045f04a: 89 78 14                                        mov    DWORD PTR [eax+0x14],edi
  0045f04d: 89 78 18                                        mov    DWORD PTR [eax+0x18],edi
  0045f050: 89 78 1c                                        mov    DWORD PTR [eax+0x1c],edi
  0045f053: e8 08 30 fe ff                                  call   0x442060
  0045f058: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0045f05b: 83 c4 04                                        add    esp,0x4
  0045f05e: 3b c7                                           cmp    eax,edi
  0045f060: 76 04                                           jbe    0x45f066
  0045f062: 48                                              dec    eax
  0045f063: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0045f066: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0045f069: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045f06c: 89 08                                           mov    DWORD PTR [eax],ecx
  0045f06e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045f071: 5f                                              pop    edi
  0045f072: 5e                                              pop    esi
  0045f073: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045f07a: 8b e5                                           mov    esp,ebp
  0045f07c: 5d                                              pop    ebp
  0045f07d: c2 08 00                                        ret    0x8
  0045f080: 55                                              push   ebp
  0045f081: 8b ec                                           mov    ebp,esp
  0045f083: 53                                              push   ebx
  0045f084: 56                                              push   esi
  0045f085: 57                                              push   edi
  0045f086: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0045f089: 8a 47 29                                        mov    al,BYTE PTR [edi+0x29]
  0045f08c: 84 c0                                           test   al,al
  0045f08e: 8b d9                                           mov    ebx,ecx
  0045f090: 8b f7                                           mov    esi,edi
  0045f092: 75 27                                           jne    0x45f0bb
  0045f094: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0045f097: 50                                              push   eax
  0045f098: 8b cb                                           mov    ecx,ebx
  0045f09a: e8 e1 ff ff ff                                  call   0x45f080
  0045f09f: 8b 36                                           mov    esi,DWORD PTR [esi]
  0045f0a1: 8d 4f 10                                        lea    ecx,[edi+0x10]
  0045f0a4: e8 47 01 fb ff                                  call   0x40f1f0
  0045f0a9: 57                                              push   edi
  0045f0aa: e8 b1 2f fe ff                                  call   0x442060
  0045f0af: 8a 46 29                                        mov    al,BYTE PTR [esi+0x29]
  0045f0b2: 83 c4 04                                        add    esp,0x4
  0045f0b5: 84 c0                                           test   al,al
  0045f0b7: 8b fe                                           mov    edi,esi
  0045f0b9: 74 d9                                           je     0x45f094
  0045f0bb: 5f                                              pop    edi
  0045f0bc: 5e                                              pop    esi
  0045f0bd: 5b                                              pop    ebx
  0045f0be: 5d                                              pop    ebp
  0045f0bf: c2 04 00                                        ret    0x4
  0045f0d0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0045f0d2: 8a 50 29                                        mov    dl,BYTE PTR [eax+0x29]
  0045f0d5: 84 d2                                           test   dl,dl
  0045f0d7: 53                                              push   ebx
  0045f0d8: 75 41                                           jne    0x45f11b
  0045f0da: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0045f0dd: 8a 5a 29                                        mov    bl,BYTE PTR [edx+0x29]
  0045f0e0: 84 db                                           test   bl,bl
  0045f0e2: 75 18                                           jne    0x45f0fc
  0045f0e4: 8b 02                                           mov    eax,DWORD PTR [edx]
  0045f0e6: 8a 58 29                                        mov    bl,BYTE PTR [eax+0x29]
  0045f0e9: 84 db                                           test   bl,bl
  0045f0eb: 75 0b                                           jne    0x45f0f8
  0045f0ed: 8b d0                                           mov    edx,eax
  0045f0ef: 8b 02                                           mov    eax,DWORD PTR [edx]
  0045f0f1: 8a 58 29                                        mov    bl,BYTE PTR [eax+0x29]
  0045f0f4: 84 db                                           test   bl,bl
  0045f0f6: 74 f5                                           je     0x45f0ed
  0045f0f8: 89 11                                           mov    DWORD PTR [ecx],edx
  0045f0fa: 5b                                              pop    ebx
  0045f0fb: c3                                              ret
  0045f0fc: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0045f0ff: 8a 50 29                                        mov    dl,BYTE PTR [eax+0x29]
  0045f102: 84 d2                                           test   dl,dl
  0045f104: 75 13                                           jne    0x45f119
  0045f106: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045f108: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  0045f10b: 75 0c                                           jne    0x45f119
  0045f10d: 89 01                                           mov    DWORD PTR [ecx],eax
  0045f10f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0045f112: 8a 50 29                                        mov    dl,BYTE PTR [eax+0x29]
  0045f115: 84 d2                                           test   dl,dl
  0045f117: 74 ed                                           je     0x45f106
  0045f119: 89 01                                           mov    DWORD PTR [ecx],eax
  0045f11b: 5b                                              pop    ebx
  0045f11c: c3                                              ret
  00460fe0: 55                                              push   ebp
  00460fe1: 8b ec                                           mov    ebp,esp
  00460fe3: 6a ff                                           push   0xffffffff
  00460fe5: 68 01 7a 4d 00                                  push   0x4d7a01
  00460fea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00460ff0: 50                                              push   eax
  00460ff1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00460ff8: 83 ec 08                                        sub    esp,0x8
  00460ffb: 53                                              push   ebx
  00460ffc: 56                                              push   esi
  00460ffd: 57                                              push   edi
  00460ffe: 8b f9                                           mov    edi,ecx
  00461000: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00461003: 33 db                                           xor    ebx,ebx
  00461005: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00461008: 8b 87 0c 04 00 00                               mov    eax,DWORD PTR [edi+0x40c]
  0046100e: 3b c3                                           cmp    eax,ebx
  00461010: 74 1c                                           je     0x46102e
  00461012: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00461015: 8a 01                                           mov    al,BYTE PTR [ecx]
  00461017: 3a c3                                           cmp    al,bl
  00461019: 74 0a                                           je     0x461025
  0046101b: 3c ff                                           cmp    al,0xff
  0046101d: 74 06                                           je     0x461025
  0046101f: fe c8                                           dec    al
  00461021: 88 01                                           mov    BYTE PTR [ecx],al
  00461023: eb 09                                           jmp    0x46102e
  00461025: 51                                              push   ecx
  00461026: e8 35 10 fe ff                                  call   0x442060
  0046102b: 83 c4 04                                        add    esp,0x4
  0046102e: 89 9f 0c 04 00 00                               mov    DWORD PTR [edi+0x40c],ebx
  00461034: 89 9f 10 04 00 00                               mov    DWORD PTR [edi+0x410],ebx
  0046103a: 89 9f 14 04 00 00                               mov    DWORD PTR [edi+0x414],ebx
  00461040: 8b 87 fc 03 00 00                               mov    eax,DWORD PTR [edi+0x3fc]
  00461046: 3b c3                                           cmp    eax,ebx
  00461048: 74 1c                                           je     0x461066
  0046104a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0046104d: 8a 01                                           mov    al,BYTE PTR [ecx]
  0046104f: 3a c3                                           cmp    al,bl
  00461051: 74 0a                                           je     0x46105d
  00461053: 3c ff                                           cmp    al,0xff
  00461055: 74 06                                           je     0x46105d
  00461057: fe c8                                           dec    al
  00461059: 88 01                                           mov    BYTE PTR [ecx],al
  0046105b: eb 09                                           jmp    0x461066
  0046105d: 51                                              push   ecx
  0046105e: e8 fd 0f fe ff                                  call   0x442060
  00461063: 83 c4 04                                        add    esp,0x4
  00461066: 8d b7 b0 03 00 00                               lea    esi,[edi+0x3b0]
  0046106c: 89 9f fc 03 00 00                               mov    DWORD PTR [edi+0x3fc],ebx
  00461072: 89 9f 00 04 00 00                               mov    DWORD PTR [edi+0x400],ebx
  00461078: 89 9f 04 04 00 00                               mov    DWORD PTR [edi+0x404],ebx
  0046107e: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00461081: c7 06 04 f5 4d 00                               mov    DWORD PTR [esi],0x4df504
  00461087: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  0046108a: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0046108e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00461091: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00461094: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00461098: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0046109b: 74 0a                                           je     0x4610a7
  0046109d: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004610a0: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004610a2: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004610a5: eb 07                                           jmp    0x4610ae
  004610a7: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  004610ae: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  004610b1: 74 09                                           je     0x4610bc
  004610b3: 8b ce                                           mov    ecx,esi
  004610b5: e8 56 19 00 00                                  call   0x462a10
  004610ba: eb dc                                           jmp    0x461098
  004610bc: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  004610bf: 74 04                                           je     0x4610c5
  004610c1: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  004610c5: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004610c8: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004610ce: 83 c6 08                                        add    esi,0x8
  004610d1: 56                                              push   esi
  004610d2: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  004610d8: 8d b7 68 03 00 00                               lea    esi,[edi+0x368]
  004610de: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004610e1: c7 06 6c e8 4d 00                               mov    DWORD PTR [esi],0x4de86c
  004610e7: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004610ea: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  004610ee: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004610f1: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004610f4: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004610f8: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  004610fb: 74 0a                                           je     0x461107
  004610fd: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00461100: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00461102: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00461105: eb 07                                           jmp    0x46110e
  00461107: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0046110e: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  00461111: 74 09                                           je     0x46111c
  00461113: 8b ce                                           mov    ecx,esi
  00461115: e8 36 34 fc ff                                  call   0x424550
  0046111a: eb dc                                           jmp    0x4610f8
  0046111c: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0046111f: 74 04                                           je     0x461125
  00461121: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  00461125: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00461128: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0046112e: 83 c6 08                                        add    esi,0x8
  00461131: 56                                              push   esi
  00461132: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00461138: 8d 8f b8 02 00 00                               lea    ecx,[edi+0x2b8]
  0046113e: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00461142: e8 19 86 fa ff                                  call   0x409760
  00461147: 8d 8f 48 02 00 00                               lea    ecx,[edi+0x248]
  0046114d: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00461151: e8 0a 86 fa ff                                  call   0x409760
  00461156: 8d b7 e8 00 00 00                               lea    esi,[edi+0xe8]
  0046115c: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0046115f: 8d 8e e0 00 00 00                               lea    ecx,[esi+0xe0]
  00461165: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  00461169: e8 f2 85 fa ff                                  call   0x409760
  0046116e: 8d 4e 70                                        lea    ecx,[esi+0x70]
  00461171: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  00461175: e8 e6 85 fa ff                                  call   0x409760
  0046117a: 8b ce                                           mov    ecx,esi
  0046117c: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00461180: e8 db 85 fa ff                                  call   0x409760
  00461185: 8d 4f 78                                        lea    ecx,[edi+0x78]
  00461188: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0046118b: e8 d0 85 fa ff                                  call   0x409760
  00461190: 8d 4f 08                                        lea    ecx,[edi+0x8]
  00461193: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0046119a: e8 c1 85 fa ff                                  call   0x409760
  0046119f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004611a2: 5f                                              pop    edi
  004611a3: 5e                                              pop    esi
  004611a4: 5b                                              pop    ebx
  004611a5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004611ac: 8b e5                                           mov    esp,ebp
  004611ae: 5d                                              pop    ebp
  004611af: c3                                              ret
  00462980: 8b 41 24                                        mov    eax,DWORD PTR [ecx+0x24]
  00462983: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00462986: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  0046298d: c6 41 34 08                                     mov    BYTE PTR [ecx+0x34],0x8
  00462991: c3                                              ret
  004629a0: 8b 51 40                                        mov    edx,DWORD PTR [ecx+0x40]
  004629a3: 85 d2                                           test   edx,edx
  004629a5: b8 01 00 00 00                                  mov    eax,0x1
  004629aa: 74 0a                                           je     0x4629b6
  004629ac: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004629af: 8b 12                                           mov    edx,DWORD PTR [edx]
  004629b1: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  004629b4: eb 03                                           jmp    0x4629b9
  004629b6: 89 41 40                                        mov    DWORD PTR [ecx+0x40],eax
  004629b9: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004629bc: 85 d2                                           test   edx,edx
  004629be: 75 14                                           jne    0x4629d4
  004629c0: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  004629c3: 85 c0                                           test   eax,eax
  004629c5: 74 04                                           je     0x4629cb
  004629c7: c6 41 34 07                                     mov    BYTE PTR [ecx+0x34],0x7
  004629cb: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  004629d2: 33 c0                                           xor    eax,eax
  004629d4: c3                                              ret
  00462a10: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00462a13: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  00462a16: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  00462a19: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  00462a1c: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00462a1f: 3b c2                                           cmp    eax,edx
  00462a21: 74 57                                           je     0x462a7a
  00462a23: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00462a26: 74 4e                                           je     0x462a76
  00462a28: 8b 10                                           mov    edx,DWORD PTR [eax]
  00462a2a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00462a2d: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00462a30: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00462a33: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00462a36: 8b 00                                           mov    eax,DWORD PTR [eax]
  00462a38: 89 02                                           mov    DWORD PTR [edx],eax
  00462a3a: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  00462a3d: 83 f8 01                                        cmp    eax,0x1
  00462a40: 75 16                                           jne    0x462a58
  00462a42: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00462a45: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00462a48: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00462a4b: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00462a4e: 51                                              push   ecx
  00462a4f: e8 0c f6 fd ff                                  call   0x442060
  00462a54: 83 c4 04                                        add    esp,0x4
  00462a57: c3                                              ret
  00462a58: 83 f8 02                                        cmp    eax,0x2
  00462a5b: 0f 85 8c 00 00 00                               jne    0x462aed
  00462a61: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00462a64: 8b 02                                           mov    eax,DWORD PTR [edx]
  00462a66: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00462a69: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00462a6c: 51                                              push   ecx
  00462a6d: e8 ee f5 fd ff                                  call   0x442060
  00462a72: 83 c4 04                                        add    esp,0x4
  00462a75: c3                                              ret
  00462a76: 3b c2                                           cmp    eax,edx
  00462a78: 75 34                                           jne    0x462aae
  00462a7a: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00462a7d: 74 34                                           je     0x462ab3
  00462a7f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00462a82: 33 d2                                           xor    edx,edx
  00462a84: 89 10                                           mov    DWORD PTR [eax],edx
  00462a86: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00462a89: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00462a8c: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  00462a8f: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00462a92: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00462a95: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00462a98: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  00462a9c: 75 4f                                           jne    0x462aed
  00462a9e: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00462aa1: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00462aa4: 51                                              push   ecx
  00462aa5: e8 b6 f5 fd ff                                  call   0x442060
  00462aaa: 83 c4 04                                        add    esp,0x4
  00462aad: c3                                              ret
  00462aae: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00462ab1: 75 2c                                           jne    0x462adf
  00462ab3: 3b c2                                           cmp    eax,edx
  00462ab5: 74 28                                           je     0x462adf
  00462ab7: 8b 00                                           mov    eax,DWORD PTR [eax]
  00462ab9: 33 d2                                           xor    edx,edx
  00462abb: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00462abe: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00462ac1: 8b 00                                           mov    eax,DWORD PTR [eax]
  00462ac3: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00462ac6: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  00462ac9: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  00462acd: 75 1e                                           jne    0x462aed
  00462acf: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00462ad2: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00462ad5: 51                                              push   ecx
  00462ad6: e8 85 f5 fd ff                                  call   0x442060
  00462adb: 83 c4 04                                        add    esp,0x4
  00462ade: c3                                              ret
  00462adf: 33 d2                                           xor    edx,edx
  00462ae1: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  00462ae4: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  00462ae7: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  00462aea: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00462aed: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00462af0: 51                                              push   ecx
  00462af1: e8 6a f5 fd ff                                  call   0x442060
  00462af6: 83 c4 04                                        add    esp,0x4
  00462af9: c3                                              ret
  00462b00: 56                                              push   esi
  00462b01: 8b f1                                           mov    esi,ecx
  00462b03: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00462b06: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  00462b09: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00462b0c: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  00462b0f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00462b12: 3b c1                                           cmp    eax,ecx
  00462b14: 74 3d                                           je     0x462b53
  00462b16: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00462b19: 74 34                                           je     0x462b4f
  00462b1b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00462b1d: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00462b20: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00462b23: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00462b26: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00462b29: 8b 10                                           mov    edx,DWORD PTR [eax]
  00462b2b: 89 11                                           mov    DWORD PTR [ecx],edx
  00462b2d: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00462b30: 83 f8 01                                        cmp    eax,0x1
  00462b33: 75 0b                                           jne    0x462b40
  00462b35: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00462b38: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00462b3b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00462b3e: eb 67                                           jmp    0x462ba7
  00462b40: 83 f8 02                                        cmp    eax,0x2
  00462b43: 75 62                                           jne    0x462ba7
  00462b45: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00462b48: 8b 02                                           mov    eax,DWORD PTR [edx]
  00462b4a: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00462b4d: eb 58                                           jmp    0x462ba7
  00462b4f: 3b c1                                           cmp    eax,ecx
  00462b51: 75 23                                           jne    0x462b76
  00462b53: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00462b56: 74 23                                           je     0x462b7b
  00462b58: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00462b5b: 33 c9                                           xor    ecx,ecx
  00462b5d: 89 0a                                           mov    DWORD PTR [edx],ecx
  00462b5f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00462b62: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00462b65: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  00462b68: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00462b6b: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  00462b6f: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00462b72: 75 33                                           jne    0x462ba7
  00462b74: eb 2e                                           jmp    0x462ba4
  00462b76: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00462b79: 75 1e                                           jne    0x462b99
  00462b7b: 3b c1                                           cmp    eax,ecx
  00462b7d: 74 1a                                           je     0x462b99
  00462b7f: 8b 00                                           mov    eax,DWORD PTR [eax]
  00462b81: 33 c9                                           xor    ecx,ecx
  00462b83: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00462b86: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00462b89: 8b 02                                           mov    eax,DWORD PTR [edx]
  00462b8b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00462b8e: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00462b91: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  00462b95: 75 10                                           jne    0x462ba7
  00462b97: eb 0b                                           jmp    0x462ba4
  00462b99: 33 c9                                           xor    ecx,ecx
  00462b9b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00462b9e: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  00462ba1: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  00462ba4: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  00462ba7: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  00462baa: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00462bad: 51                                              push   ecx
  00462bae: e8 ad f4 fd ff                                  call   0x442060
  00462bb3: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00462bb6: 52                                              push   edx
  00462bb7: e8 a4 f4 fd ff                                  call   0x442060
  00462bbc: 83 c4 08                                        add    esp,0x8
  00462bbf: 5e                                              pop    esi
  00462bc0: c3                                              ret
  00473f20: 55                                              push   ebp
  00473f21: 8b ec                                           mov    ebp,esp
  00473f23: 6a ff                                           push   0xffffffff
  00473f25: 68 43 8e 4d 00                                  push   0x4d8e43
  00473f2a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00473f30: 50                                              push   eax
  00473f31: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00473f38: 51                                              push   ecx
  00473f39: 56                                              push   esi
  00473f3a: 8b f1                                           mov    esi,ecx
  00473f3c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00473f3f: e8 7c 57 f9 ff                                  call   0x4096c0
  00473f44: 8d 4e 70                                        lea    ecx,[esi+0x70]
  00473f47: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00473f4e: e8 6d 57 f9 ff                                  call   0x4096c0
  00473f53: 8d 8e e0 00 00 00                               lea    ecx,[esi+0xe0]
  00473f59: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00473f5d: e8 5e 57 f9 ff                                  call   0x4096c0
  00473f62: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00473f65: 8b c6                                           mov    eax,esi
  00473f67: 5e                                              pop    esi
  00473f68: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00473f6f: 8b e5                                           mov    esp,ebp
  00473f71: 5d                                              pop    ebp
  00473f72: c3                                              ret
  00473f80: 55                                              push   ebp
  00473f81: 8b ec                                           mov    ebp,esp
  00473f83: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00473f89: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00473f8c: 6a ff                                           push   0xffffffff
  00473f8e: 68 5b 8e 4d 00                                  push   0x4d8e5b
  00473f93: 50                                              push   eax
  00473f94: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00473f9b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00473f9d: 53                                              push   ebx
  00473f9e: 56                                              push   esi
  00473f9f: 57                                              push   edi
  00473fa0: 33 db                                           xor    ebx,ebx
  00473fa2: 33 f6                                           xor    esi,esi
  00473fa4: ff 50 20                                        call   DWORD PTR [eax+0x20]
  00473fa7: 8b f8                                           mov    edi,eax
  00473fa9: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00473fac: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00473faf: 3b c2                                           cmp    eax,edx
  00473fb1: 74 18                                           je     0x473fcb
  00473fb3: 8d 48 02                                        lea    ecx,[eax+0x2]
  00473fb6: 33 c0                                           xor    eax,eax
  00473fb8: 66 8b 01                                        mov    ax,WORD PTR [ecx]
  00473fbb: 3b c6                                           cmp    eax,esi
  00473fbd: 76 02                                           jbe    0x473fc1
  00473fbf: 8b f0                                           mov    esi,eax
  00473fc1: 83 c1 1c                                        add    ecx,0x1c
  00473fc4: 8d 41 fe                                        lea    eax,[ecx-0x2]
  00473fc7: 3b c2                                           cmp    eax,edx
  00473fc9: 75 eb                                           jne    0x473fb6
  00473fcb: 8b 0d 38 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e38
  00473fd1: 46                                              inc    esi
  00473fd2: 89 71 50                                        mov    DWORD PTR [ecx+0x50],esi
  00473fd5: 8b 15 38 5e 51 00                               mov    edx,DWORD PTR ds:0x515e38
  00473fdb: 8b 72 50                                        mov    esi,DWORD PTR [edx+0x50]
  00473fde: 8d 04 76                                        lea    eax,[esi+esi*2]
  00473fe1: 8d 0c 86                                        lea    ecx,[esi+eax*4]
  00473fe4: 8d 14 8d 04 00 00 00                            lea    edx,[ecx*4+0x4]
  00473feb: 52                                              push   edx
  00473fec: e8 0f a5 05 00                                  call   0x4ce500
  00473ff1: 83 c4 04                                        add    esp,0x4
  00473ff4: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00473ff7: 3b c3                                           cmp    eax,ebx
  00473ff9: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00473ffc: 74 18                                           je     0x474016
  00473ffe: 68 a0 ec 4a 00                                  push   0x4aeca0
  00474003: 68 30 ec 4a 00                                  push   0x4aec30
  00474008: 56                                              push   esi
  00474009: 8d 58 04                                        lea    ebx,[eax+0x4]
  0047400c: 6a 34                                           push   0x34
  0047400e: 53                                              push   ebx
  0047400f: 89 30                                           mov    DWORD PTR [eax],esi
  00474011: e8 76 dd 05 00                                  call   0x4d1d8c
  00474016: a1 38 5e 51 00                                  mov    eax,ds:0x515e38
  0047401b: 89 58 54                                        mov    DWORD PTR [eax+0x54],ebx
  0047401e: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00474021: 3b 77 08                                        cmp    esi,DWORD PTR [edi+0x8]
  00474024: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0047402b: 74 3f                                           je     0x47406c
  0047402d: 8b 4e 18                                        mov    ecx,DWORD PTR [esi+0x18]
  00474030: 33 c0                                           xor    eax,eax
  00474032: 66 8b 46 02                                     mov    ax,WORD PTR [esi+0x2]
  00474036: 51                                              push   ecx
  00474037: 33 d2                                           xor    edx,edx
  00474039: 66 8b 56 16                                     mov    dx,WORD PTR [esi+0x16]
  0047403d: 33 c9                                           xor    ecx,ecx
  0047403f: 66 8b 4e 14                                     mov    cx,WORD PTR [esi+0x14]
  00474043: 50                                              push   eax
  00474044: 25 ff ff 00 00                                  and    eax,0xffff
  00474049: 52                                              push   edx
  0047404a: 8d 14 40                                        lea    edx,[eax+eax*2]
  0047404d: 51                                              push   ecx
  0047404e: 8b 0d 38 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e38
  00474054: 8d 04 90                                        lea    eax,[eax+edx*4]
  00474057: 8b 51 54                                        mov    edx,DWORD PTR [ecx+0x54]
  0047405a: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  0047405d: e8 8e ae 03 00                                  call   0x4aeef0
  00474062: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00474065: 83 c6 1c                                        add    esi,0x1c
  00474068: 3b f0                                           cmp    esi,eax
  0047406a: 75 c1                                           jne    0x47402d
  0047406c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0047406f: 5f                                              pop    edi
  00474070: 5e                                              pop    esi
  00474071: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00474078: 5b                                              pop    ebx
  00474079: 8b e5                                           mov    esp,ebp
  0047407b: 5d                                              pop    ebp
  0047407c: c2 04 00                                        ret    0x4
  00477890: 56                                              push   esi
  00477891: 8b f1                                           mov    esi,ecx
  00477893: 8d 46 08                                        lea    eax,[esi+0x8]
  00477896: 50                                              push   eax
  00477897: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0047789d: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  004778a4: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004778aa: 33 c0                                           xor    eax,eax
  004778ac: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004778af: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004778b2: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004778b5: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004778b8: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  004778bb: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  004778be: c7 06 04 f5 4d 00                               mov    DWORD PTR [esi],0x4df504
  004778c4: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004778c8: 8b c6                                           mov    eax,esi
  004778ca: 5e                                              pop    esi
  004778cb: c3                                              ret
  00489920: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00489923: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  00489926: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  00489929: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  0048992c: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0048992f: 3b c2                                           cmp    eax,edx
  00489931: 74 57                                           je     0x48998a
  00489933: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00489936: 74 4e                                           je     0x489986
  00489938: 8b 10                                           mov    edx,DWORD PTR [eax]
  0048993a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0048993d: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00489940: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00489943: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00489946: 8b 00                                           mov    eax,DWORD PTR [eax]
  00489948: 89 02                                           mov    DWORD PTR [edx],eax
  0048994a: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0048994d: 83 f8 01                                        cmp    eax,0x1
  00489950: 75 16                                           jne    0x489968
  00489952: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00489955: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00489958: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0048995b: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0048995e: 51                                              push   ecx
  0048995f: e8 fc 86 fb ff                                  call   0x442060
  00489964: 83 c4 04                                        add    esp,0x4
  00489967: c3                                              ret
  00489968: 83 f8 02                                        cmp    eax,0x2
  0048996b: 0f 85 8c 00 00 00                               jne    0x4899fd
  00489971: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00489974: 8b 02                                           mov    eax,DWORD PTR [edx]
  00489976: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00489979: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0048997c: 51                                              push   ecx
  0048997d: e8 de 86 fb ff                                  call   0x442060
  00489982: 83 c4 04                                        add    esp,0x4
  00489985: c3                                              ret
  00489986: 3b c2                                           cmp    eax,edx
  00489988: 75 34                                           jne    0x4899be
  0048998a: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0048998d: 74 34                                           je     0x4899c3
  0048998f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00489992: 33 d2                                           xor    edx,edx
  00489994: 89 10                                           mov    DWORD PTR [eax],edx
  00489996: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00489999: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0048999c: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  0048999f: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  004899a2: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004899a5: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  004899a8: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  004899ac: 75 4f                                           jne    0x4899fd
  004899ae: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  004899b1: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  004899b4: 51                                              push   ecx
  004899b5: e8 a6 86 fb ff                                  call   0x442060
  004899ba: 83 c4 04                                        add    esp,0x4
  004899bd: c3                                              ret
  004899be: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  004899c1: 75 2c                                           jne    0x4899ef
  004899c3: 3b c2                                           cmp    eax,edx
  004899c5: 74 28                                           je     0x4899ef
  004899c7: 8b 00                                           mov    eax,DWORD PTR [eax]
  004899c9: 33 d2                                           xor    edx,edx
  004899cb: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004899ce: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  004899d1: 8b 00                                           mov    eax,DWORD PTR [eax]
  004899d3: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  004899d6: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  004899d9: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  004899dd: 75 1e                                           jne    0x4899fd
  004899df: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  004899e2: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  004899e5: 51                                              push   ecx
  004899e6: e8 75 86 fb ff                                  call   0x442060
  004899eb: 83 c4 04                                        add    esp,0x4
  004899ee: c3                                              ret
  004899ef: 33 d2                                           xor    edx,edx
  004899f1: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  004899f4: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  004899f7: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  004899fa: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  004899fd: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00489a00: 51                                              push   ecx
  00489a01: e8 5a 86 fb ff                                  call   0x442060
  00489a06: 83 c4 04                                        add    esp,0x4
  00489a09: c3                                              ret
  00489a10: 56                                              push   esi
  00489a11: 8b f1                                           mov    esi,ecx
  00489a13: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00489a16: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  00489a19: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00489a1c: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  00489a1f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00489a22: 3b c1                                           cmp    eax,ecx
  00489a24: 74 3d                                           je     0x489a63
  00489a26: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00489a29: 74 34                                           je     0x489a5f
  00489a2b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00489a2d: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00489a30: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00489a33: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00489a36: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00489a39: 8b 10                                           mov    edx,DWORD PTR [eax]
  00489a3b: 89 11                                           mov    DWORD PTR [ecx],edx
  00489a3d: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00489a40: 83 f8 01                                        cmp    eax,0x1
  00489a43: 75 0b                                           jne    0x489a50
  00489a45: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00489a48: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00489a4b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00489a4e: eb 67                                           jmp    0x489ab7
  00489a50: 83 f8 02                                        cmp    eax,0x2
  00489a53: 75 62                                           jne    0x489ab7
  00489a55: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00489a58: 8b 02                                           mov    eax,DWORD PTR [edx]
  00489a5a: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00489a5d: eb 58                                           jmp    0x489ab7
  00489a5f: 3b c1                                           cmp    eax,ecx
  00489a61: 75 23                                           jne    0x489a86
  00489a63: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00489a66: 74 23                                           je     0x489a8b
  00489a68: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00489a6b: 33 c9                                           xor    ecx,ecx
  00489a6d: 89 0a                                           mov    DWORD PTR [edx],ecx
  00489a6f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00489a72: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00489a75: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  00489a78: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00489a7b: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  00489a7f: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00489a82: 75 33                                           jne    0x489ab7
  00489a84: eb 2e                                           jmp    0x489ab4
  00489a86: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00489a89: 75 1e                                           jne    0x489aa9
  00489a8b: 3b c1                                           cmp    eax,ecx
  00489a8d: 74 1a                                           je     0x489aa9
  00489a8f: 8b 00                                           mov    eax,DWORD PTR [eax]
  00489a91: 33 c9                                           xor    ecx,ecx
  00489a93: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00489a96: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00489a99: 8b 02                                           mov    eax,DWORD PTR [edx]
  00489a9b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00489a9e: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00489aa1: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  00489aa5: 75 10                                           jne    0x489ab7
  00489aa7: eb 0b                                           jmp    0x489ab4
  00489aa9: 33 c9                                           xor    ecx,ecx
  00489aab: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00489aae: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  00489ab1: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  00489ab4: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  00489ab7: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  00489aba: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00489abd: 51                                              push   ecx
  00489abe: e8 9d 85 fb ff                                  call   0x442060
  00489ac3: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00489ac6: 52                                              push   edx
  00489ac7: e8 94 85 fb ff                                  call   0x442060
  00489acc: 83 c4 08                                        add    esp,0x8
  00489acf: 5e                                              pop    esi
  00489ad0: c3                                              ret
  00489ae0: 8b 51 40                                        mov    edx,DWORD PTR [ecx+0x40]
  00489ae3: 85 d2                                           test   edx,edx
  00489ae5: b8 01 00 00 00                                  mov    eax,0x1
  00489aea: 74 0a                                           je     0x489af6
  00489aec: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00489aef: 8b 12                                           mov    edx,DWORD PTR [edx]
  00489af1: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  00489af4: eb 03                                           jmp    0x489af9
  00489af6: 89 41 40                                        mov    DWORD PTR [ecx+0x40],eax
  00489af9: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00489afc: 85 d2                                           test   edx,edx
  00489afe: 75 14                                           jne    0x489b14
  00489b00: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  00489b03: 85 c0                                           test   eax,eax
  00489b05: 74 04                                           je     0x489b0b
  00489b07: c6 41 34 07                                     mov    BYTE PTR [ecx+0x34],0x7
  00489b0b: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  00489b12: 33 c0                                           xor    eax,eax
  00489b14: c3                                              ret
  00489b50: 55                                              push   ebp
  00489b51: 8b ec                                           mov    ebp,esp
  00489b53: 56                                              push   esi
  00489b54: 8b f1                                           mov    esi,ecx
  00489b56: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00489b59: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00489b5c: 57                                              push   edi
  00489b5d: 33 ff                                           xor    edi,edi
  00489b5f: 42                                              inc    edx
  00489b60: 3b c7                                           cmp    eax,edi
  00489b62: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00489b65: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00489b68: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00489b6c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00489b6f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00489b72: 6a 0c                                           push   0xc
  00489b74: 75 35                                           jne    0x489bab
  00489b76: e8 75 84 fb ff                                  call   0x441ff0
  00489b7b: 83 c4 04                                        add    esp,0x4
  00489b7e: 3b c7                                           cmp    eax,edi
  00489b80: 74 07                                           je     0x489b89
  00489b82: 89 38                                           mov    DWORD PTR [eax],edi
  00489b84: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00489b87: eb 02                                           jmp    0x489b8b
  00489b89: 33 c0                                           xor    eax,eax
  00489b8b: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00489b8e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00489b91: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00489b94: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00489b97: 89 38                                           mov    DWORD PTR [eax],edi
  00489b99: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00489b9c: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00489b9f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00489ba2: 5f                                              pop    edi
  00489ba3: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00489ba6: 5e                                              pop    esi
  00489ba7: 5d                                              pop    ebp
  00489ba8: c2 04 00                                        ret    0x4
  00489bab: e8 40 84 fb ff                                  call   0x441ff0
  00489bb0: 83 c4 04                                        add    esp,0x4
  00489bb3: 3b c7                                           cmp    eax,edi
  00489bb5: 74 07                                           je     0x489bbe
  00489bb7: 89 38                                           mov    DWORD PTR [eax],edi
  00489bb9: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00489bbc: eb 02                                           jmp    0x489bc0
  00489bbe: 33 c0                                           xor    eax,eax
  00489bc0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00489bc3: 89 01                                           mov    DWORD PTR [ecx],eax
  00489bc5: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00489bc8: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00489bcb: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00489bce: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00489bd1: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00489bd4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00489bd7: 89 38                                           mov    DWORD PTR [eax],edi
  00489bd9: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00489bdc: 5f                                              pop    edi
  00489bdd: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00489be0: 5e                                              pop    esi
  00489be1: 5d                                              pop    ebp
  00489be2: c2 04 00                                        ret    0x4
  0048e6b0: 55                                              push   ebp
  0048e6b1: 8b ec                                           mov    ebp,esp
  0048e6b3: 57                                              push   edi
  0048e6b4: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0048e6b7: 33 c0                                           xor    eax,eax
  0048e6b9: d1 ef                                           shr    edi,1
  0048e6bb: 0f 84 16 01 00 00                               je     0x48e7d7
  0048e6c1: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0048e6c4: 56                                              push   esi
  0048e6c5: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0048e6c8: 33 d2                                           xor    edx,edx
  0048e6ca: 8a 16                                           mov    dl,BYTE PTR [esi]
  0048e6cc: 83 c2 d0                                        add    edx,0xffffffd0
  0048e6cf: 83 fa 16                                        cmp    edx,0x16
  0048e6d2: 77 61                                           ja     0x48e735
  0048e6d4: ff 24 95 dc e7 48 00                            jmp    DWORD PTR [edx*4+0x48e7dc]
  0048e735: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0048e739: 33 d2                                           xor    edx,edx
  0048e73b: 8a 56 01                                        mov    dl,BYTE PTR [esi+0x1]
  0048e73e: 83 c2 d0                                        add    edx,0xffffffd0
  0048e741: 83 fa 16                                        cmp    edx,0x16
  0048e744: 0f 87 80 00 00 00                               ja     0x48e7ca
  0048e74a: ff 24 95 38 e8 48 00                            jmp    DWORD PTR [edx*4+0x48e838]
  0048e7ca: 40                                              inc    eax
  0048e7cb: 83 c6 02                                        add    esi,0x2
  0048e7ce: 3b c7                                           cmp    eax,edi
  0048e7d0: 0f 82 f2 fe ff ff                               jb     0x48e6c8
  0048e7d6: 5e                                              pop    esi
  0048e7d7: 5f                                              pop    edi
  0048e7d8: 5d                                              pop    ebp
  0048e7d9: c3                                              ret
  0048fdc0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0048fdc2: 83 c0 08                                        add    eax,0x8
  0048fdc5: c3                                              ret
  0048fe10: 55                                              push   ebp
  0048fe11: 8b ec                                           mov    ebp,esp
  0048fe13: 6a ff                                           push   0xffffffff
  0048fe15: 68 3a a9 4d 00                                  push   0x4da93a
  0048fe1a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0048fe20: 50                                              push   eax
  0048fe21: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0048fe28: 83 ec 40                                        sub    esp,0x40
  0048fe2b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048fe2e: 53                                              push   ebx
  0048fe2f: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  0048fe32: 56                                              push   esi
  0048fe33: 57                                              push   edi
  0048fe34: 8b f9                                           mov    edi,ecx
  0048fe36: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0048fe39: 6a 24                                           push   0x24
  0048fe3b: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0048fe3e: e8 ad 21 fb ff                                  call   0x441ff0
  0048fe43: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0048fe46: 8b f0                                           mov    esi,eax
  0048fe48: 83 c4 04                                        add    esp,0x4
  0048fe4b: 85 d2                                           test   edx,edx
  0048fe4d: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  0048fe50: 8b c2                                           mov    eax,edx
  0048fe52: 75 02                                           jne    0x48fe56
  0048fe54: 8b c6                                           mov    eax,esi
  0048fe56: 85 db                                           test   ebx,ebx
  0048fe58: 89 06                                           mov    DWORD PTR [esi],eax
  0048fe5a: 8b c3                                           mov    eax,ebx
  0048fe5c: 75 02                                           jne    0x48fe60
  0048fe5e: 8b c6                                           mov    eax,esi
  0048fe60: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0048fe63: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0048fe66: b9 49 92 24 09                                  mov    ecx,0x9249249
  0048fe6b: 2b c8                                           sub    ecx,eax
  0048fe6d: 83 f9 01                                        cmp    ecx,0x1
  0048fe70: 73 50                                           jae    0x48fec2
  0048fe72: 8a 55 0b                                        mov    dl,BYTE PTR [ebp+0xb]
  0048fe75: 6a 00                                           push   0x0
  0048fe77: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0048fe7a: 88 55 d0                                        mov    BYTE PTR [ebp-0x30],dl
  0048fe7d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0048fe83: 83 c9 ff                                        or     ecx,0xffffffff
  0048fe86: 33 c0                                           xor    eax,eax
  0048fe88: bf ec 2a 50 00                                  mov    edi,0x502aec
  0048fe8d: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0048fe8f: f7 d1                                           not    ecx
  0048fe91: 49                                              dec    ecx
  0048fe92: 51                                              push   ecx
  0048fe93: 68 ec 2a 50 00                                  push   0x502aec
  0048fe98: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0048fe9b: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0048fea1: 8d 45 d0                                        lea    eax,[ebp-0x30]
  0048fea4: 50                                              push   eax
  0048fea5: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  0048fea8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0048feaf: e8 6c 55 f7 ff                                  call   0x405420
  0048feb4: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0048feb9: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  0048febc: 51                                              push   ecx
  0048febd: e8 94 1e 04 00                                  call   0x4d1d56
  0048fec2: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0048fec5: 40                                              inc    eax
  0048fec6: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  0048fec9: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0048fed0: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0048fed3: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  0048fed6: 85 c9                                           test   ecx,ecx
  0048fed8: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0048fedc: 74 0c                                           je     0x48feea
  0048fede: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0048fee1: 52                                              push   edx
  0048fee2: e8 09 0a 00 00                                  call   0x4908f0
  0048fee7: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0048feea: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  0048feed: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0048fef0: 89 31                                           mov    DWORD PTR [ecx],esi
  0048fef2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048fef5: 5f                                              pop    edi
  0048fef6: 5e                                              pop    esi
  0048fef7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048fefe: 5b                                              pop    ebx
  0048feff: 8b e5                                           mov    esp,ebp
  0048ff01: 5d                                              pop    ebp
  0048ff02: c2 08 00                                        ret    0x8
  00490980: 55                                              push   ebp
  00490981: 8b ec                                           mov    ebp,esp
  00490983: 56                                              push   esi
  00490984: 8b f1                                           mov    esi,ecx
  00490986: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00490989: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0049098c: 57                                              push   edi
  0049098d: 33 ff                                           xor    edi,edi
  0049098f: 42                                              inc    edx
  00490990: 3b c7                                           cmp    eax,edi
  00490992: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00490995: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00490998: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0049099c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0049099f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  004909a2: 6a 0c                                           push   0xc
  004909a4: 75 35                                           jne    0x4909db
  004909a6: e8 45 16 fb ff                                  call   0x441ff0
  004909ab: 83 c4 04                                        add    esp,0x4
  004909ae: 3b c7                                           cmp    eax,edi
  004909b0: 74 07                                           je     0x4909b9
  004909b2: 89 38                                           mov    DWORD PTR [eax],edi
  004909b4: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004909b7: eb 02                                           jmp    0x4909bb
  004909b9: 33 c0                                           xor    eax,eax
  004909bb: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004909be: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004909c1: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004909c4: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004909c7: 89 38                                           mov    DWORD PTR [eax],edi
  004909c9: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004909cc: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004909cf: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004909d2: 5f                                              pop    edi
  004909d3: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004909d6: 5e                                              pop    esi
  004909d7: 5d                                              pop    ebp
  004909d8: c2 04 00                                        ret    0x4
  004909db: e8 10 16 fb ff                                  call   0x441ff0
  004909e0: 83 c4 04                                        add    esp,0x4
  004909e3: 3b c7                                           cmp    eax,edi
  004909e5: 74 07                                           je     0x4909ee
  004909e7: 89 38                                           mov    DWORD PTR [eax],edi
  004909e9: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004909ec: eb 02                                           jmp    0x4909f0
  004909ee: 33 c0                                           xor    eax,eax
  004909f0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004909f3: 89 01                                           mov    DWORD PTR [ecx],eax
  004909f5: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004909f8: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004909fb: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004909fe: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00490a01: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00490a04: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00490a07: 89 38                                           mov    DWORD PTR [eax],edi
  00490a09: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00490a0c: 5f                                              pop    edi
  00490a0d: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00490a10: 5e                                              pop    esi
  00490a11: 5d                                              pop    ebp
  00490a12: c2 04 00                                        ret    0x4
  00495bd0: 55                                              push   ebp
  00495bd1: 8b ec                                           mov    ebp,esp
  00495bd3: 6a ff                                           push   0xffffffff
  00495bd5: 68 39 ac 4d 00                                  push   0x4dac39
  00495bda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00495be0: 50                                              push   eax
  00495be1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00495be8: 83 ec 48                                        sub    esp,0x48
  00495beb: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00495bee: 53                                              push   ebx
  00495bef: 56                                              push   esi
  00495bf0: 8b f1                                           mov    esi,ecx
  00495bf2: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00495bf4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00495bf7: 89 4d d8                                        mov    DWORD PTR [ebp-0x28],ecx
  00495bfa: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00495bfd: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  00495c00: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00495c03: 85 c9                                           test   ecx,ecx
  00495c05: 89 55 dc                                        mov    DWORD PTR [ebp-0x24],edx
  00495c08: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  00495c0b: 57                                              push   edi
  00495c0c: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00495c0f: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  00495c12: 75 04                                           jne    0x495c18
  00495c14: 33 ff                                           xor    edi,edi
  00495c16: eb 08                                           jmp    0x495c20
  00495c18: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  00495c1b: 2b f9                                           sub    edi,ecx
  00495c1d: c1 ff 04                                        sar    edi,0x4
  00495c20: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00495c23: 85 db                                           test   ebx,ebx
  00495c25: 0f 84 ea 02 00 00                               je     0x495f15
  00495c2b: 85 c9                                           test   ecx,ecx
  00495c2d: 75 04                                           jne    0x495c33
  00495c2f: 33 c0                                           xor    eax,eax
  00495c31: eb 08                                           jmp    0x495c3b
  00495c33: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495c36: 2b c1                                           sub    eax,ecx
  00495c38: c1 f8 04                                        sar    eax,0x4
  00495c3b: ba ff ff ff 0f                                  mov    edx,0xfffffff
  00495c40: 2b d0                                           sub    edx,eax
  00495c42: 3b d3                                           cmp    edx,ebx
  00495c44: 73 2f                                           jae    0x495c75
  00495c46: 68 80 05 50 00                                  push   0x500580
  00495c4b: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00495c4e: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00495c54: 8d 45 c8                                        lea    eax,[ebp-0x38]
  00495c57: 50                                              push   eax
  00495c58: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00495c5b: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00495c62: e8 b9 f7 f6 ff                                  call   0x405420
  00495c67: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00495c6c: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00495c6f: 51                                              push   ecx
  00495c70: e8 e1 c0 03 00                                  call   0x4d1d56
  00495c75: 85 c9                                           test   ecx,ecx
  00495c77: 75 04                                           jne    0x495c7d
  00495c79: 33 c0                                           xor    eax,eax
  00495c7b: eb 08                                           jmp    0x495c85
  00495c7d: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495c80: 2b c1                                           sub    eax,ecx
  00495c82: c1 f8 04                                        sar    eax,0x4
  00495c85: 03 c3                                           add    eax,ebx
  00495c87: 3b f8                                           cmp    edi,eax
  00495c89: 0f 83 42 01 00 00                               jae    0x495dd1
  00495c8f: 8b c7                                           mov    eax,edi
  00495c91: d1 e8                                           shr    eax,1
  00495c93: ba ff ff ff 0f                                  mov    edx,0xfffffff
  00495c98: 2b d0                                           sub    edx,eax
  00495c9a: 3b d7                                           cmp    edx,edi
  00495c9c: 73 04                                           jae    0x495ca2
  00495c9e: 33 ff                                           xor    edi,edi
  00495ca0: eb 02                                           jmp    0x495ca4
  00495ca2: 03 f8                                           add    edi,eax
  00495ca4: 85 c9                                           test   ecx,ecx
  00495ca6: 75 04                                           jne    0x495cac
  00495ca8: 33 c0                                           xor    eax,eax
  00495caa: eb 08                                           jmp    0x495cb4
  00495cac: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495caf: 2b c1                                           sub    eax,ecx
  00495cb1: c1 f8 04                                        sar    eax,0x4
  00495cb4: 03 c3                                           add    eax,ebx
  00495cb6: 3b f8                                           cmp    edi,eax
  00495cb8: 73 13                                           jae    0x495ccd
  00495cba: 85 c9                                           test   ecx,ecx
  00495cbc: 75 04                                           jne    0x495cc2
  00495cbe: 33 c0                                           xor    eax,eax
  00495cc0: eb 08                                           jmp    0x495cca
  00495cc2: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495cc5: 2b c1                                           sub    eax,ecx
  00495cc7: c1 f8 04                                        sar    eax,0x4
  00495cca: 8d 3c 18                                        lea    edi,[eax+ebx*1]
  00495ccd: 8b c7                                           mov    eax,edi
  00495ccf: c1 e0 04                                        shl    eax,0x4
  00495cd2: 50                                              push   eax
  00495cd3: e8 18 c3 fa ff                                  call   0x441ff0
  00495cd8: 83 c4 04                                        add    esp,0x4
  00495cdb: 50                                              push   eax
  00495cdc: 51                                              push   ecx
  00495cdd: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00495ce0: 8d 55 08                                        lea    edx,[ebp+0x8]
  00495ce3: 8b cc                                           mov    ecx,esp
  00495ce5: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00495ce8: 52                                              push   edx
  00495ce9: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00495cec: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00495cf3: e8 18 f8 ff ff                                  call   0x495510
  00495cf8: 51                                              push   ecx
  00495cf9: 8b c4                                           mov    eax,esp
  00495cfb: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00495cfe: 50                                              push   eax
  00495cff: 8b ce                                           mov    ecx,esi
  00495d01: e8 2a 02 00 00                                  call   0x495f30
  00495d06: 8b ce                                           mov    ecx,esi
  00495d08: e8 43 23 00 00                                  call   0x498050
  00495d0d: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00495d10: 51                                              push   ecx
  00495d11: 53                                              push   ebx
  00495d12: 50                                              push   eax
  00495d13: 8b ce                                           mov    ecx,esi
  00495d15: e8 d6 17 00 00                                  call   0x4974f0
  00495d1a: 50                                              push   eax
  00495d1b: 51                                              push   ecx
  00495d1c: 8b d4                                           mov    edx,esp
  00495d1e: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00495d21: 52                                              push   edx
  00495d22: 8b ce                                           mov    ecx,esi
  00495d24: e8 57 f5 ff ff                                  call   0x495280
  00495d29: 51                                              push   ecx
  00495d2a: 8d 45 08                                        lea    eax,[ebp+0x8]
  00495d2d: 8b cc                                           mov    ecx,esp
  00495d2f: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00495d32: 50                                              push   eax
  00495d33: e8 d8 f7 ff ff                                  call   0x495510
  00495d38: 8b ce                                           mov    ecx,esi
  00495d3a: e8 11 23 00 00                                  call   0x498050
  00495d3f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00495d42: 85 c0                                           test   eax,eax
  00495d44: 74 1a                                           je     0x495d60
  00495d46: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00495d49: 3b c1                                           cmp    eax,ecx
  00495d4b: 74 07                                           je     0x495d54
  00495d4d: 83 c0 10                                        add    eax,0x10
  00495d50: 3b c1                                           cmp    eax,ecx
  00495d52: 75 f9                                           jne    0x495d4d
  00495d54: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00495d57: 51                                              push   ecx
  00495d58: e8 03 c3 fa ff                                  call   0x442060
  00495d5d: 83 c4 04                                        add    esp,0x4
  00495d60: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00495d63: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00495d66: c1 e7 04                                        shl    edi,0x4
  00495d69: 03 fa                                           add    edi,edx
  00495d6b: 85 c9                                           test   ecx,ecx
  00495d6d: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00495d70: 75 22                                           jne    0x495d94
  00495d72: 33 c0                                           xor    eax,eax
  00495d74: 8b c3                                           mov    eax,ebx
  00495d76: c1 e0 04                                        shl    eax,0x4
  00495d79: 03 c2                                           add    eax,edx
  00495d7b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00495d7e: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00495d81: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00495d84: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00495d8b: 5f                                              pop    edi
  00495d8c: 5e                                              pop    esi
  00495d8d: 5b                                              pop    ebx
  00495d8e: 8b e5                                           mov    esp,ebp
  00495d90: 5d                                              pop    ebp
  00495d91: c2 0c 00                                        ret    0xc
  00495d94: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495d97: 2b c1                                           sub    eax,ecx
  00495d99: c1 f8 04                                        sar    eax,0x4
  00495d9c: 03 c3                                           add    eax,ebx
  00495d9e: c1 e0 04                                        shl    eax,0x4
  00495da1: 03 c2                                           add    eax,edx
  00495da3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00495da6: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00495da9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00495dac: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00495db3: 5f                                              pop    edi
  00495db4: 5e                                              pop    esi
  00495db5: 5b                                              pop    ebx
  00495db6: 8b e5                                           mov    esp,ebp
  00495db8: 5d                                              pop    ebp
  00495db9: c2 0c 00                                        ret    0xc
  00495dd1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495dd4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00495dd7: 8b d0                                           mov    edx,eax
  00495dd9: 2b d1                                           sub    edx,ecx
  00495ddb: c1 fa 04                                        sar    edx,0x4
  00495dde: 3b d3                                           cmp    edx,ebx
  00495de0: 0f 83 a1 00 00 00                               jae    0x495e87
  00495de6: 8b fb                                           mov    edi,ebx
  00495de8: c1 e7 04                                        shl    edi,0x4
  00495deb: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  00495dee: 50                                              push   eax
  00495def: 51                                              push   ecx
  00495df0: 8b cc                                           mov    ecx,esp
  00495df2: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495df5: 51                                              push   ecx
  00495df6: 8b ce                                           mov    ecx,esi
  00495df8: e8 83 f4 ff ff                                  call   0x495280
  00495dfd: 51                                              push   ecx
  00495dfe: 8d 55 08                                        lea    edx,[ebp+0x8]
  00495e01: 8b cc                                           mov    ecx,esp
  00495e03: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495e06: 52                                              push   edx
  00495e07: e8 04 f7 ff ff                                  call   0x495510
  00495e0c: 8b ce                                           mov    ecx,esi
  00495e0e: e8 3d 22 00 00                                  call   0x498050
  00495e13: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00495e16: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00495e19: 51                                              push   ecx
  00495e1a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00495e1d: 8b d0                                           mov    edx,eax
  00495e1f: 2b d1                                           sub    edx,ecx
  00495e21: c1 fa 04                                        sar    edx,0x4
  00495e24: 8b cb                                           mov    ecx,ebx
  00495e26: 2b ca                                           sub    ecx,edx
  00495e28: 51                                              push   ecx
  00495e29: 50                                              push   eax
  00495e2a: 8b ce                                           mov    ecx,esi
  00495e2c: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00495e33: e8 b8 16 00 00                                  call   0x4974f0
  00495e38: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00495e3b: 03 cf                                           add    ecx,edi
  00495e3d: 8d 55 d8                                        lea    edx,[ebp-0x28]
  00495e40: 52                                              push   edx
  00495e41: 51                                              push   ecx
  00495e42: 8b c4                                           mov    eax,esp
  00495e44: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495e47: 53                                              push   ebx
  00495e48: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00495e4b: 50                                              push   eax
  00495e4c: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00495e4f: 51                                              push   ecx
  00495e50: 8b ce                                           mov    ecx,esi
  00495e52: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00495e59: e8 22 f4 ff ff                                  call   0x495280
  00495e5e: 8b c8                                           mov    ecx,eax
  00495e60: e8 db 16 00 00                                  call   0x497540
  00495e65: 51                                              push   ecx
  00495e66: 8b cc                                           mov    ecx,esp
  00495e68: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00495e6b: e9 94 00 00 00                                  jmp    0x495f04
  00495e87: 50                                              push   eax
  00495e88: 51                                              push   ecx
  00495e89: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00495e8c: 8b cc                                           mov    ecx,esp
  00495e8e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495e91: 52                                              push   edx
  00495e92: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00495e95: e8 76 f6 ff ff                                  call   0x495510
  00495e9a: 51                                              push   ecx
  00495e9b: 8b c4                                           mov    eax,esp
  00495e9d: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495ea0: 53                                              push   ebx
  00495ea1: 50                                              push   eax
  00495ea2: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00495ea5: e8 96 16 00 00                                  call   0x497540
  00495eaa: 8b ce                                           mov    ecx,esi
  00495eac: e8 9f 21 00 00                                  call   0x498050
  00495eb1: 51                                              push   ecx
  00495eb2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00495eb5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495eb8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00495ebb: 8b c4                                           mov    eax,esp
  00495ebd: 51                                              push   ecx
  00495ebe: 8b d4                                           mov    edx,esp
  00495ec0: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495ec3: 53                                              push   ebx
  00495ec4: 89 08                                           mov    DWORD PTR [eax],ecx
  00495ec6: 52                                              push   edx
  00495ec7: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00495eca: e8 71 16 00 00                                  call   0x497540
  00495ecf: 51                                              push   ecx
  00495ed0: 8d 45 08                                        lea    eax,[ebp+0x8]
  00495ed3: 8b cc                                           mov    ecx,esp
  00495ed5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495ed8: 50                                              push   eax
  00495ed9: e8 32 f6 ff ff                                  call   0x495510
  00495ede: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00495ee1: 51                                              push   ecx
  00495ee2: e8 f9 21 00 00                                  call   0x4980e0
  00495ee7: 83 c4 10                                        add    esp,0x10
  00495eea: 8d 55 d8                                        lea    edx,[ebp-0x28]
  00495eed: 52                                              push   edx
  00495eee: 51                                              push   ecx
  00495eef: 8b c4                                           mov    eax,esp
  00495ef1: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495ef4: 53                                              push   ebx
  00495ef5: 50                                              push   eax
  00495ef6: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00495ef9: e8 42 00 00 00                                  call   0x495f40
  00495efe: 51                                              push   ecx
  00495eff: 8b cc                                           mov    ecx,esp
  00495f01: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00495f04: 8d 55 08                                        lea    edx,[ebp+0x8]
  00495f07: 52                                              push   edx
  00495f08: e8 03 f6 ff ff                                  call   0x495510
  00495f0d: e8 8e 21 00 00                                  call   0x4980a0
  00495f12: 83 c4 0c                                        add    esp,0xc
  00495f15: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00495f18: 5f                                              pop    edi
  00495f19: 5e                                              pop    esi
  00495f1a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00495f21: 5b                                              pop    ebx
  00495f22: 8b e5                                           mov    esp,ebp
  00495f24: 5d                                              pop    ebp
  00495f25: c2 0c 00                                        ret    0xc
  00499400: 8b c1                                           mov    eax,ecx
  00499402: c7 00 e0 f8 4d 00                               mov    DWORD PTR [eax],0x4df8e0
  00499408: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  0049940f: c3                                              ret
  0049fa90: 55                                              push   ebp
  0049fa91: 8b ec                                           mov    ebp,esp
  0049fa93: 51                                              push   ecx
  0049fa94: 8b c1                                           mov    eax,ecx
  0049fa96: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  0049fa99: 88 08                                           mov    BYTE PTR [eax],cl
  0049fa9b: 33 c9                                           xor    ecx,ecx
  0049fa9d: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0049faa0: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0049faa3: 89 48 0c                                        mov    DWORD PTR [eax+0xc],ecx
  0049faa6: 8b e5                                           mov    esp,ebp
  0049faa8: 5d                                              pop    ebp
  0049faa9: c3                                              ret
  0049fff0: 55                                              push   ebp
  0049fff1: 8b ec                                           mov    ebp,esp
  0049fff3: 6a ff                                           push   0xffffffff
  0049fff5: 68 79 b5 4d 00                                  push   0x4db579
  0049fffa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a0000: 50                                              push   eax
  004a0001: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a0008: 83 ec 60                                        sub    esp,0x60
  004a000b: 53                                              push   ebx
  004a000c: 56                                              push   esi
  004a000d: 57                                              push   edi
  004a000e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a0011: 8b f1                                           mov    esi,ecx
  004a0013: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a0016: 57                                              push   edi
  004a0017: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  004a001a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a001d: e8 9e bc ff ff                                  call   0x49bcc0
  004a0022: 83 c7 18                                        add    edi,0x18
  004a0025: 57                                              push   edi
  004a0026: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004a0029: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a0030: e8 eb 1a 00 00                                  call   0x4a1b20
  004a0035: c7 45 94 68 f9 4d 00                            mov    DWORD PTR [ebp-0x6c],0x4df968
  004a003c: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a003f: 85 c9                                           test   ecx,ecx
  004a0041: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a0048: 75 04                                           jne    0x4a004e
  004a004a: 33 ff                                           xor    edi,edi
  004a004c: eb 1b                                           jmp    0x4a0069
  004a004e: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a0051: 2b d1                                           sub    edx,ecx
  004a0053: b8 67 66 66 66                                  mov    eax,0x66666667
  004a0058: f7 ea                                           imul   edx
  004a005a: c1 fa 04                                        sar    edx,0x4
  004a005d: 8b c2                                           mov    eax,edx
  004a005f: c1 e8 1f                                        shr    eax,0x1f
  004a0062: 03 d0                                           add    edx,eax
  004a0064: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a0067: 8b fa                                           mov    edi,edx
  004a0069: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004a006c: 85 db                                           test   ebx,ebx
  004a006e: 0f 84 95 03 00 00                               je     0x4a0409
  004a0074: 85 c9                                           test   ecx,ecx
  004a0076: 75 04                                           jne    0x4a007c
  004a0078: 33 d2                                           xor    edx,edx
  004a007a: eb 16                                           jmp    0x4a0092
  004a007c: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a007f: 2b d1                                           sub    edx,ecx
  004a0081: b8 67 66 66 66                                  mov    eax,0x66666667
  004a0086: f7 ea                                           imul   edx
  004a0088: c1 fa 04                                        sar    edx,0x4
  004a008b: 8b c2                                           mov    eax,edx
  004a008d: c1 e8 1f                                        shr    eax,0x1f
  004a0090: 03 d0                                           add    edx,eax
  004a0092: b8 66 66 66 06                                  mov    eax,0x6666666
  004a0097: 2b c2                                           sub    eax,edx
  004a0099: 3b c3                                           cmp    eax,ebx
  004a009b: 73 2c                                           jae    0x4a00c9
  004a009d: 68 80 05 50 00                                  push   0x500580
  004a00a2: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a00a5: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004a00ab: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a00ae: 51                                              push   ecx
  004a00af: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004a00b2: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a00b6: e8 65 53 f6 ff                                  call   0x405420
  004a00bb: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004a00c0: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004a00c3: 52                                              push   edx
  004a00c4: e8 8d 1c 03 00                                  call   0x4d1d56
  004a00c9: 85 c9                                           test   ecx,ecx
  004a00cb: 75 04                                           jne    0x4a00d1
  004a00cd: 33 d2                                           xor    edx,edx
  004a00cf: eb 16                                           jmp    0x4a00e7
  004a00d1: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a00d4: 2b d1                                           sub    edx,ecx
  004a00d6: b8 67 66 66 66                                  mov    eax,0x66666667
  004a00db: f7 ea                                           imul   edx
  004a00dd: c1 fa 04                                        sar    edx,0x4
  004a00e0: 8b c2                                           mov    eax,edx
  004a00e2: c1 e8 1f                                        shr    eax,0x1f
  004a00e5: 03 d0                                           add    edx,eax
  004a00e7: 03 d3                                           add    edx,ebx
  004a00e9: 3b fa                                           cmp    edi,edx
  004a00eb: 0f 83 9a 01 00 00                               jae    0x4a028b
  004a00f1: 8b c7                                           mov    eax,edi
  004a00f3: d1 e8                                           shr    eax,1
  004a00f5: ba 66 66 66 06                                  mov    edx,0x6666666
  004a00fa: 2b d0                                           sub    edx,eax
  004a00fc: 3b d7                                           cmp    edx,edi
  004a00fe: 73 0c                                           jae    0x4a010c
  004a0100: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004a0107: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a010a: eb 05                                           jmp    0x4a0111
  004a010c: 03 f8                                           add    edi,eax
  004a010e: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a0111: 85 c9                                           test   ecx,ecx
  004a0113: 75 04                                           jne    0x4a0119
  004a0115: 33 d2                                           xor    edx,edx
  004a0117: eb 16                                           jmp    0x4a012f
  004a0119: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a011c: 2b d1                                           sub    edx,ecx
  004a011e: b8 67 66 66 66                                  mov    eax,0x66666667
  004a0123: f7 ea                                           imul   edx
  004a0125: c1 fa 04                                        sar    edx,0x4
  004a0128: 8b c2                                           mov    eax,edx
  004a012a: c1 e8 1f                                        shr    eax,0x1f
  004a012d: 03 d0                                           add    edx,eax
  004a012f: 03 d3                                           add    edx,ebx
  004a0131: 3b fa                                           cmp    edi,edx
  004a0133: 73 25                                           jae    0x4a015a
  004a0135: 85 c9                                           test   ecx,ecx
  004a0137: 75 04                                           jne    0x4a013d
  004a0139: 33 d2                                           xor    edx,edx
  004a013b: eb 16                                           jmp    0x4a0153
  004a013d: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a0140: 2b d1                                           sub    edx,ecx
  004a0142: b8 67 66 66 66                                  mov    eax,0x66666667
  004a0147: f7 ea                                           imul   edx
  004a0149: c1 fa 04                                        sar    edx,0x4
  004a014c: 8b ca                                           mov    ecx,edx
  004a014e: c1 e9 1f                                        shr    ecx,0x1f
  004a0151: 03 d1                                           add    edx,ecx
  004a0153: 03 d3                                           add    edx,ebx
  004a0155: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a0158: 8b fa                                           mov    edi,edx
  004a015a: 8d 14 bf                                        lea    edx,[edi+edi*4]
  004a015d: c1 e2 03                                        shl    edx,0x3
  004a0160: 52                                              push   edx
  004a0161: e8 8a 1e fa ff                                  call   0x441ff0
  004a0166: 8b f8                                           mov    edi,eax
  004a0168: 83 c4 04                                        add    esp,0x4
  004a016b: 57                                              push   edi
  004a016c: 51                                              push   ecx
  004a016d: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a0170: 8b cc                                           mov    ecx,esp
  004a0172: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a0175: 50                                              push   eax
  004a0176: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004a0179: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a017c: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004a0180: e8 5b fb ff ff                                  call   0x49fce0
  004a0185: 51                                              push   ecx
  004a0186: 8b cc                                           mov    ecx,esp
  004a0188: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a018b: 51                                              push   ecx
  004a018c: 8b ce                                           mov    ecx,esi
  004a018e: e8 9d 02 00 00                                  call   0x4a0430
  004a0193: 8b ce                                           mov    ecx,esi
  004a0195: e8 f6 26 00 00                                  call   0x4a2890
  004a019a: 8d 55 94                                        lea    edx,[ebp-0x6c]
  004a019d: 52                                              push   edx
  004a019e: 53                                              push   ebx
  004a019f: 50                                              push   eax
  004a01a0: 8b ce                                           mov    ecx,esi
  004a01a2: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a01a5: e8 76 1a 00 00                                  call   0x4a1c20
  004a01aa: 50                                              push   eax
  004a01ab: 51                                              push   ecx
  004a01ac: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a01af: 8b c4                                           mov    eax,esp
  004a01b1: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a01b4: 50                                              push   eax
  004a01b5: 8b ce                                           mov    ecx,esi
  004a01b7: e8 c4 f8 ff ff                                  call   0x49fa80
  004a01bc: 51                                              push   ecx
  004a01bd: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a01c0: 8b cc                                           mov    ecx,esp
  004a01c2: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a01c5: 52                                              push   edx
  004a01c6: e8 15 fb ff ff                                  call   0x49fce0
  004a01cb: 8b ce                                           mov    ecx,esi
  004a01cd: e8 be 26 00 00                                  call   0x4a2890
  004a01d2: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a01d5: 85 c0                                           test   eax,eax
  004a01d7: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a01de: 74 2d                                           je     0x4a020d
  004a01e0: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a01e3: 8b f8                                           mov    edi,eax
  004a01e5: 3b f9                                           cmp    edi,ecx
  004a01e7: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a01ea: 74 12                                           je     0x4a01fe
  004a01ec: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a01ee: 6a 00                                           push   0x0
  004a01f0: 8b cf                                           mov    ecx,edi
  004a01f2: ff 10                                           call   DWORD PTR [eax]
  004a01f4: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a01f7: 83 c7 28                                        add    edi,0x28
  004a01fa: 3b f8                                           cmp    edi,eax
  004a01fc: 75 ee                                           jne    0x4a01ec
  004a01fe: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a0201: 50                                              push   eax
  004a0202: e8 59 1e fa ff                                  call   0x442060
  004a0207: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004a020a: 83 c4 04                                        add    esp,0x4
  004a020d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a0210: 8d 0c 80                                        lea    ecx,[eax+eax*4]
  004a0213: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a0216: 85 c0                                           test   eax,eax
  004a0218: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a021b: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a021e: 75 15                                           jne    0x4a0235
  004a0220: 33 d2                                           xor    edx,edx
  004a0222: 03 da                                           add    ebx,edx
  004a0224: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  004a0227: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a022a: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004a022d: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a0230: e9 d4 01 00 00                                  jmp    0x4a0409
  004a0235: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a0238: 2b c8                                           sub    ecx,eax
  004a023a: b8 67 66 66 66                                  mov    eax,0x66666667
  004a023f: f7 e9                                           imul   ecx
  004a0241: c1 fa 04                                        sar    edx,0x4
  004a0244: 8b c2                                           mov    eax,edx
  004a0246: c1 e8 1f                                        shr    eax,0x1f
  004a0249: 03 d0                                           add    edx,eax
  004a024b: 03 da                                           add    ebx,edx
  004a024d: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  004a0250: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a0253: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004a0256: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a0259: e9 ab 01 00 00                                  jmp    0x4a0409
  004a028b: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a028e: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a0291: 8b cf                                           mov    ecx,edi
  004a0293: 2b ca                                           sub    ecx,edx
  004a0295: b8 67 66 66 66                                  mov    eax,0x66666667
  004a029a: f7 e9                                           imul   ecx
  004a029c: c1 fa 04                                        sar    edx,0x4
  004a029f: 8b ca                                           mov    ecx,edx
  004a02a1: c1 e9 1f                                        shr    ecx,0x1f
  004a02a4: 03 d1                                           add    edx,ecx
  004a02a6: 3b d3                                           cmp    edx,ebx
  004a02a8: 0f 83 cd 00 00 00                               jae    0x4a037b
  004a02ae: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a02b1: 8d 3c 9b                                        lea    edi,[ebx+ebx*4]
  004a02b4: c1 e7 03                                        shl    edi,0x3
  004a02b7: 8d 04 17                                        lea    eax,[edi+edx*1]
  004a02ba: 50                                              push   eax
  004a02bb: 51                                              push   ecx
  004a02bc: 8b cc                                           mov    ecx,esp
  004a02be: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a02c1: 51                                              push   ecx
  004a02c2: 8b ce                                           mov    ecx,esi
  004a02c4: e8 b7 f7 ff ff                                  call   0x49fa80
  004a02c9: 51                                              push   ecx
  004a02ca: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a02cd: 8b cc                                           mov    ecx,esp
  004a02cf: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a02d2: 52                                              push   edx
  004a02d3: e8 08 fa ff ff                                  call   0x49fce0
  004a02d8: 8b ce                                           mov    ecx,esi
  004a02da: e8 b1 25 00 00                                  call   0x4a2890
  004a02df: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a02e2: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a02e5: 2b ca                                           sub    ecx,edx
  004a02e7: 8d 45 94                                        lea    eax,[ebp-0x6c]
  004a02ea: 50                                              push   eax
  004a02eb: b8 67 66 66 66                                  mov    eax,0x66666667
  004a02f0: f7 e9                                           imul   ecx
  004a02f2: c1 fa 04                                        sar    edx,0x4
  004a02f5: 8b ca                                           mov    ecx,edx
  004a02f7: c1 e9 1f                                        shr    ecx,0x1f
  004a02fa: 03 d1                                           add    edx,ecx
  004a02fc: 8b c3                                           mov    eax,ebx
  004a02fe: 2b c2                                           sub    eax,edx
  004a0300: 50                                              push   eax
  004a0301: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a0304: 50                                              push   eax
  004a0305: 8b ce                                           mov    ecx,esi
  004a0307: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004a030b: e8 10 19 00 00                                  call   0x4a1c20
  004a0310: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a0313: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  004a0316: 51                                              push   ecx
  004a0317: 51                                              push   ecx
  004a0318: 8b d4                                           mov    edx,esp
  004a031a: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004a031d: 03 c7                                           add    eax,edi
  004a031f: 53                                              push   ebx
  004a0320: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a0323: 52                                              push   edx
  004a0324: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a0327: 50                                              push   eax
  004a0328: 8b ce                                           mov    ecx,esi
  004a032a: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a0331: e8 4a f7 ff ff                                  call   0x49fa80
  004a0336: 8b c8                                           mov    ecx,eax
  004a0338: e8 43 1a 00 00                                  call   0x4a1d80
  004a033d: 51                                              push   ecx
  004a033e: 8b cc                                           mov    ecx,esp
  004a0340: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0343: e9 b0 00 00 00                                  jmp    0x4a03f8
  004a037b: 57                                              push   edi
  004a037c: 51                                              push   ecx
  004a037d: 8d 55 0c                                        lea    edx,[ebp+0xc]
  004a0380: 8b cc                                           mov    ecx,esp
  004a0382: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0385: 52                                              push   edx
  004a0386: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a0389: e8 52 f9 ff ff                                  call   0x49fce0
  004a038e: 51                                              push   ecx
  004a038f: 8b c4                                           mov    eax,esp
  004a0391: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a0394: 53                                              push   ebx
  004a0395: 50                                              push   eax
  004a0396: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a0399: e8 e2 19 00 00                                  call   0x4a1d80
  004a039e: 8b ce                                           mov    ecx,esi
  004a03a0: e8 eb 24 00 00                                  call   0x4a2890
  004a03a5: 51                                              push   ecx
  004a03a6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a03a9: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a03ac: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a03af: 8b c4                                           mov    eax,esp
  004a03b1: 51                                              push   ecx
  004a03b2: 8b d4                                           mov    edx,esp
  004a03b4: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a03b7: 53                                              push   ebx
  004a03b8: 89 08                                           mov    DWORD PTR [eax],ecx
  004a03ba: 52                                              push   edx
  004a03bb: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a03be: e8 bd 19 00 00                                  call   0x4a1d80
  004a03c3: 51                                              push   ecx
  004a03c4: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a03c7: 8b cc                                           mov    ecx,esp
  004a03c9: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a03cc: 50                                              push   eax
  004a03cd: e8 0e f9 ff ff                                  call   0x49fce0
  004a03d2: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004a03d5: 51                                              push   ecx
  004a03d6: e8 c5 29 00 00                                  call   0x4a2da0
  004a03db: 83 c4 10                                        add    esp,0x10
  004a03de: 8d 55 94                                        lea    edx,[ebp-0x6c]
  004a03e1: 52                                              push   edx
  004a03e2: 51                                              push   ecx
  004a03e3: 8b c4                                           mov    eax,esp
  004a03e5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a03e8: 53                                              push   ebx
  004a03e9: 50                                              push   eax
  004a03ea: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004a03ed: e8 4e 00 00 00                                  call   0x4a0440
  004a03f2: 51                                              push   ecx
  004a03f3: 8b cc                                           mov    ecx,esp
  004a03f5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a03f8: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a03fb: 52                                              push   edx
  004a03fc: e8 df f8 ff ff                                  call   0x49fce0
  004a0401: e8 9a 25 00 00                                  call   0x4a29a0
  004a0406: 83 c4 0c                                        add    esp,0xc
  004a0409: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  004a040c: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004a0413: e8 68 52 00 00                                  call   0x4a5680
  004a0418: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a041b: 5f                                              pop    edi
  004a041c: 5e                                              pop    esi
  004a041d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a0424: 5b                                              pop    ebx
  004a0425: 8b e5                                           mov    esp,ebp
  004a0427: 5d                                              pop    ebp
  004a0428: c2 0c 00                                        ret    0xc
  004a19f0: 55                                              push   ebp
  004a19f1: 8b ec                                           mov    ebp,esp
  004a19f3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004a19f6: 56                                              push   esi
  004a19f7: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  004a19fa: 57                                              push   edi
  004a19fb: 8b f8                                           mov    edi,eax
  004a19fd: 8a 46 21                                        mov    al,BYTE PTR [esi+0x21]
  004a1a00: 84 c0                                           test   al,al
  004a1a02: 75 2f                                           jne    0x4a1a33
  004a1a04: 53                                              push   ebx
  004a1a05: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a1a08: 8d 46 0c                                        lea    eax,[esi+0xc]
  004a1a0b: 53                                              push   ebx
  004a1a0c: 50                                              push   eax
  004a1a0d: ff 15 18 e5 4d 00                               call   DWORD PTR ds:0x4de518
  004a1a13: 83 c4 08                                        add    esp,0x8
  004a1a16: 84 c0                                           test   al,al
  004a1a18: 74 05                                           je     0x4a1a1f
  004a1a1a: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  004a1a1d: eb 04                                           jmp    0x4a1a23
  004a1a1f: 8b fe                                           mov    edi,esi
  004a1a21: 8b 36                                           mov    esi,DWORD PTR [esi]
  004a1a23: 8a 46 21                                        mov    al,BYTE PTR [esi+0x21]
  004a1a26: 84 c0                                           test   al,al
  004a1a28: 74 de                                           je     0x4a1a08
  004a1a2a: 5b                                              pop    ebx
  004a1a2b: 8b c7                                           mov    eax,edi
  004a1a2d: 5f                                              pop    edi
  004a1a2e: 5e                                              pop    esi
  004a1a2f: 5d                                              pop    ebp
  004a1a30: c2 04 00                                        ret    0x4
  004a1a33: 8b c7                                           mov    eax,edi
  004a1a35: 5f                                              pop    edi
  004a1a36: 5e                                              pop    esi
  004a1a37: 5d                                              pop    ebp
  004a1a38: c2 04 00                                        ret    0x4
  004a1a40: 55                                              push   ebp
  004a1a41: 8b ec                                           mov    ebp,esp
  004a1a43: 8a 55 0c                                        mov    dl,BYTE PTR [ebp+0xc]
  004a1a46: 8b c1                                           mov    eax,ecx
  004a1a48: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a1a4b: 8a 09                                           mov    cl,BYTE PTR [ecx]
  004a1a4d: 88 08                                           mov    BYTE PTR [eax],cl
  004a1a4f: 88 50 01                                        mov    BYTE PTR [eax+0x1],dl
  004a1a52: 5d                                              pop    ebp
  004a1a53: c2 08 00                                        ret    0x8
  004a5b60: 55                                              push   ebp
  004a5b61: 8b ec                                           mov    ebp,esp
  004a5b63: 6a ff                                           push   0xffffffff
  004a5b65: 68 39 bb 4d 00                                  push   0x4dbb39
  004a5b6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a5b70: 50                                              push   eax
  004a5b71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a5b78: 83 ec 60                                        sub    esp,0x60
  004a5b7b: 53                                              push   ebx
  004a5b7c: 56                                              push   esi
  004a5b7d: 57                                              push   edi
  004a5b7e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a5b81: 8b f1                                           mov    esi,ecx
  004a5b83: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a5b86: 57                                              push   edi
  004a5b87: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  004a5b8a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a5b8d: e8 2e 61 ff ff                                  call   0x49bcc0
  004a5b92: 83 c7 18                                        add    edi,0x18
  004a5b95: 57                                              push   edi
  004a5b96: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004a5b99: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a5ba0: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a5ba6: c7 45 94 e8 f9 4d 00                            mov    DWORD PTR [ebp-0x6c],0x4df9e8
  004a5bad: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a5bb0: 85 c9                                           test   ecx,ecx
  004a5bb2: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a5bb9: 75 04                                           jne    0x4a5bbf
  004a5bbb: 33 ff                                           xor    edi,edi
  004a5bbd: eb 1b                                           jmp    0x4a5bda
  004a5bbf: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a5bc2: 2b d1                                           sub    edx,ecx
  004a5bc4: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5bc9: f7 ea                                           imul   edx
  004a5bcb: c1 fa 04                                        sar    edx,0x4
  004a5bce: 8b c2                                           mov    eax,edx
  004a5bd0: c1 e8 1f                                        shr    eax,0x1f
  004a5bd3: 03 d0                                           add    edx,eax
  004a5bd5: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a5bd8: 8b fa                                           mov    edi,edx
  004a5bda: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004a5bdd: 85 db                                           test   ebx,ebx
  004a5bdf: 0f 84 95 03 00 00                               je     0x4a5f7a
  004a5be5: 85 c9                                           test   ecx,ecx
  004a5be7: 75 04                                           jne    0x4a5bed
  004a5be9: 33 d2                                           xor    edx,edx
  004a5beb: eb 16                                           jmp    0x4a5c03
  004a5bed: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a5bf0: 2b d1                                           sub    edx,ecx
  004a5bf2: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5bf7: f7 ea                                           imul   edx
  004a5bf9: c1 fa 04                                        sar    edx,0x4
  004a5bfc: 8b c2                                           mov    eax,edx
  004a5bfe: c1 e8 1f                                        shr    eax,0x1f
  004a5c01: 03 d0                                           add    edx,eax
  004a5c03: b8 66 66 66 06                                  mov    eax,0x6666666
  004a5c08: 2b c2                                           sub    eax,edx
  004a5c0a: 3b c3                                           cmp    eax,ebx
  004a5c0c: 73 2c                                           jae    0x4a5c3a
  004a5c0e: 68 80 05 50 00                                  push   0x500580
  004a5c13: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a5c16: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004a5c1c: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a5c1f: 51                                              push   ecx
  004a5c20: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004a5c23: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a5c27: e8 f4 f7 f5 ff                                  call   0x405420
  004a5c2c: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004a5c31: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004a5c34: 52                                              push   edx
  004a5c35: e8 1c c1 02 00                                  call   0x4d1d56
  004a5c3a: 85 c9                                           test   ecx,ecx
  004a5c3c: 75 04                                           jne    0x4a5c42
  004a5c3e: 33 d2                                           xor    edx,edx
  004a5c40: eb 16                                           jmp    0x4a5c58
  004a5c42: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a5c45: 2b d1                                           sub    edx,ecx
  004a5c47: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5c4c: f7 ea                                           imul   edx
  004a5c4e: c1 fa 04                                        sar    edx,0x4
  004a5c51: 8b c2                                           mov    eax,edx
  004a5c53: c1 e8 1f                                        shr    eax,0x1f
  004a5c56: 03 d0                                           add    edx,eax
  004a5c58: 03 d3                                           add    edx,ebx
  004a5c5a: 3b fa                                           cmp    edi,edx
  004a5c5c: 0f 83 9a 01 00 00                               jae    0x4a5dfc
  004a5c62: 8b c7                                           mov    eax,edi
  004a5c64: d1 e8                                           shr    eax,1
  004a5c66: ba 66 66 66 06                                  mov    edx,0x6666666
  004a5c6b: 2b d0                                           sub    edx,eax
  004a5c6d: 3b d7                                           cmp    edx,edi
  004a5c6f: 73 0c                                           jae    0x4a5c7d
  004a5c71: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004a5c78: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a5c7b: eb 05                                           jmp    0x4a5c82
  004a5c7d: 03 f8                                           add    edi,eax
  004a5c7f: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a5c82: 85 c9                                           test   ecx,ecx
  004a5c84: 75 04                                           jne    0x4a5c8a
  004a5c86: 33 d2                                           xor    edx,edx
  004a5c88: eb 16                                           jmp    0x4a5ca0
  004a5c8a: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a5c8d: 2b d1                                           sub    edx,ecx
  004a5c8f: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5c94: f7 ea                                           imul   edx
  004a5c96: c1 fa 04                                        sar    edx,0x4
  004a5c99: 8b c2                                           mov    eax,edx
  004a5c9b: c1 e8 1f                                        shr    eax,0x1f
  004a5c9e: 03 d0                                           add    edx,eax
  004a5ca0: 03 d3                                           add    edx,ebx
  004a5ca2: 3b fa                                           cmp    edi,edx
  004a5ca4: 73 25                                           jae    0x4a5ccb
  004a5ca6: 85 c9                                           test   ecx,ecx
  004a5ca8: 75 04                                           jne    0x4a5cae
  004a5caa: 33 d2                                           xor    edx,edx
  004a5cac: eb 16                                           jmp    0x4a5cc4
  004a5cae: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a5cb1: 2b d1                                           sub    edx,ecx
  004a5cb3: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5cb8: f7 ea                                           imul   edx
  004a5cba: c1 fa 04                                        sar    edx,0x4
  004a5cbd: 8b ca                                           mov    ecx,edx
  004a5cbf: c1 e9 1f                                        shr    ecx,0x1f
  004a5cc2: 03 d1                                           add    edx,ecx
  004a5cc4: 03 d3                                           add    edx,ebx
  004a5cc6: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a5cc9: 8b fa                                           mov    edi,edx
  004a5ccb: 8d 14 bf                                        lea    edx,[edi+edi*4]
  004a5cce: c1 e2 03                                        shl    edx,0x3
  004a5cd1: 52                                              push   edx
  004a5cd2: e8 19 c3 f9 ff                                  call   0x441ff0
  004a5cd7: 8b f8                                           mov    edi,eax
  004a5cd9: 83 c4 04                                        add    esp,0x4
  004a5cdc: 57                                              push   edi
  004a5cdd: 51                                              push   ecx
  004a5cde: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a5ce1: 8b cc                                           mov    ecx,esp
  004a5ce3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a5ce6: 50                                              push   eax
  004a5ce7: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004a5cea: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a5ced: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004a5cf1: e8 5a fe ff ff                                  call   0x4a5b50
  004a5cf6: 51                                              push   ecx
  004a5cf7: 8b cc                                           mov    ecx,esp
  004a5cf9: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a5cfc: 51                                              push   ecx
  004a5cfd: 8b ce                                           mov    ecx,esi
  004a5cff: e8 9c 02 00 00                                  call   0x4a5fa0
  004a5d04: 8b ce                                           mov    ecx,esi
  004a5d06: e8 c5 03 00 00                                  call   0x4a60d0
  004a5d0b: 8d 55 94                                        lea    edx,[ebp-0x6c]
  004a5d0e: 52                                              push   edx
  004a5d0f: 53                                              push   ebx
  004a5d10: 50                                              push   eax
  004a5d11: 8b ce                                           mov    ecx,esi
  004a5d13: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a5d16: e8 b5 02 00 00                                  call   0x4a5fd0
  004a5d1b: 50                                              push   eax
  004a5d1c: 51                                              push   ecx
  004a5d1d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a5d20: 8b c4                                           mov    eax,esp
  004a5d22: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a5d25: 50                                              push   eax
  004a5d26: 8b ce                                           mov    ecx,esi
  004a5d28: e8 a3 fd ff ff                                  call   0x4a5ad0
  004a5d2d: 51                                              push   ecx
  004a5d2e: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a5d31: 8b cc                                           mov    ecx,esp
  004a5d33: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a5d36: 52                                              push   edx
  004a5d37: e8 14 fe ff ff                                  call   0x4a5b50
  004a5d3c: 8b ce                                           mov    ecx,esi
  004a5d3e: e8 8d 03 00 00                                  call   0x4a60d0
  004a5d43: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a5d46: 85 c0                                           test   eax,eax
  004a5d48: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a5d4f: 74 2d                                           je     0x4a5d7e
  004a5d51: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a5d54: 8b f8                                           mov    edi,eax
  004a5d56: 3b f9                                           cmp    edi,ecx
  004a5d58: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a5d5b: 74 12                                           je     0x4a5d6f
  004a5d5d: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a5d5f: 6a 00                                           push   0x0
  004a5d61: 8b cf                                           mov    ecx,edi
  004a5d63: ff 10                                           call   DWORD PTR [eax]
  004a5d65: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a5d68: 83 c7 28                                        add    edi,0x28
  004a5d6b: 3b f8                                           cmp    edi,eax
  004a5d6d: 75 ee                                           jne    0x4a5d5d
  004a5d6f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a5d72: 50                                              push   eax
  004a5d73: e8 e8 c2 f9 ff                                  call   0x442060
  004a5d78: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004a5d7b: 83 c4 04                                        add    esp,0x4
  004a5d7e: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a5d81: 8d 0c 80                                        lea    ecx,[eax+eax*4]
  004a5d84: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a5d87: 85 c0                                           test   eax,eax
  004a5d89: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a5d8c: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a5d8f: 75 15                                           jne    0x4a5da6
  004a5d91: 33 d2                                           xor    edx,edx
  004a5d93: 03 da                                           add    ebx,edx
  004a5d95: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  004a5d98: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a5d9b: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004a5d9e: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a5da1: e9 d4 01 00 00                                  jmp    0x4a5f7a
  004a5da6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a5da9: 2b c8                                           sub    ecx,eax
  004a5dab: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5db0: f7 e9                                           imul   ecx
  004a5db2: c1 fa 04                                        sar    edx,0x4
  004a5db5: 8b c2                                           mov    eax,edx
  004a5db7: c1 e8 1f                                        shr    eax,0x1f
  004a5dba: 03 d0                                           add    edx,eax
  004a5dbc: 03 da                                           add    ebx,edx
  004a5dbe: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  004a5dc1: 8d 14 cf                                        lea    edx,[edi+ecx*8]
  004a5dc4: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004a5dc7: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a5dca: e9 ab 01 00 00                                  jmp    0x4a5f7a
  004a5dfc: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a5dff: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a5e02: 8b cf                                           mov    ecx,edi
  004a5e04: 2b ca                                           sub    ecx,edx
  004a5e06: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5e0b: f7 e9                                           imul   ecx
  004a5e0d: c1 fa 04                                        sar    edx,0x4
  004a5e10: 8b ca                                           mov    ecx,edx
  004a5e12: c1 e9 1f                                        shr    ecx,0x1f
  004a5e15: 03 d1                                           add    edx,ecx
  004a5e17: 3b d3                                           cmp    edx,ebx
  004a5e19: 0f 83 cd 00 00 00                               jae    0x4a5eec
  004a5e1f: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a5e22: 8d 3c 9b                                        lea    edi,[ebx+ebx*4]
  004a5e25: c1 e7 03                                        shl    edi,0x3
  004a5e28: 8d 04 17                                        lea    eax,[edi+edx*1]
  004a5e2b: 50                                              push   eax
  004a5e2c: 51                                              push   ecx
  004a5e2d: 8b cc                                           mov    ecx,esp
  004a5e2f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5e32: 51                                              push   ecx
  004a5e33: 8b ce                                           mov    ecx,esi
  004a5e35: e8 96 fc ff ff                                  call   0x4a5ad0
  004a5e3a: 51                                              push   ecx
  004a5e3b: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a5e3e: 8b cc                                           mov    ecx,esp
  004a5e40: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5e43: 52                                              push   edx
  004a5e44: e8 07 fd ff ff                                  call   0x4a5b50
  004a5e49: 8b ce                                           mov    ecx,esi
  004a5e4b: e8 80 02 00 00                                  call   0x4a60d0
  004a5e50: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a5e53: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a5e56: 2b ca                                           sub    ecx,edx
  004a5e58: 8d 45 94                                        lea    eax,[ebp-0x6c]
  004a5e5b: 50                                              push   eax
  004a5e5c: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5e61: f7 e9                                           imul   ecx
  004a5e63: c1 fa 04                                        sar    edx,0x4
  004a5e66: 8b ca                                           mov    ecx,edx
  004a5e68: c1 e9 1f                                        shr    ecx,0x1f
  004a5e6b: 03 d1                                           add    edx,ecx
  004a5e6d: 8b c3                                           mov    eax,ebx
  004a5e6f: 2b c2                                           sub    eax,edx
  004a5e71: 50                                              push   eax
  004a5e72: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a5e75: 50                                              push   eax
  004a5e76: 8b ce                                           mov    ecx,esi
  004a5e78: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004a5e7c: e8 4f 01 00 00                                  call   0x4a5fd0
  004a5e81: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a5e84: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  004a5e87: 51                                              push   ecx
  004a5e88: 51                                              push   ecx
  004a5e89: 8b d4                                           mov    edx,esp
  004a5e8b: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004a5e8e: 03 c7                                           add    eax,edi
  004a5e90: 53                                              push   ebx
  004a5e91: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a5e94: 52                                              push   edx
  004a5e95: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a5e98: 50                                              push   eax
  004a5e99: 8b ce                                           mov    ecx,esi
  004a5e9b: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a5ea2: e8 29 fc ff ff                                  call   0x4a5ad0
  004a5ea7: 8b c8                                           mov    ecx,eax
  004a5ea9: e8 02 02 00 00                                  call   0x4a60b0
  004a5eae: 51                                              push   ecx
  004a5eaf: 8b cc                                           mov    ecx,esp
  004a5eb1: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5eb4: e9 b0 00 00 00                                  jmp    0x4a5f69
  004a5eec: 57                                              push   edi
  004a5eed: 51                                              push   ecx
  004a5eee: 8d 55 0c                                        lea    edx,[ebp+0xc]
  004a5ef1: 8b cc                                           mov    ecx,esp
  004a5ef3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5ef6: 52                                              push   edx
  004a5ef7: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a5efa: e8 51 fc ff ff                                  call   0x4a5b50
  004a5eff: 51                                              push   ecx
  004a5f00: 8b c4                                           mov    eax,esp
  004a5f02: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5f05: 53                                              push   ebx
  004a5f06: 50                                              push   eax
  004a5f07: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a5f0a: e8 a1 01 00 00                                  call   0x4a60b0
  004a5f0f: 8b ce                                           mov    ecx,esi
  004a5f11: e8 ba 01 00 00                                  call   0x4a60d0
  004a5f16: 51                                              push   ecx
  004a5f17: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a5f1a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5f1d: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a5f20: 8b c4                                           mov    eax,esp
  004a5f22: 51                                              push   ecx
  004a5f23: 8b d4                                           mov    edx,esp
  004a5f25: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5f28: 53                                              push   ebx
  004a5f29: 89 08                                           mov    DWORD PTR [eax],ecx
  004a5f2b: 52                                              push   edx
  004a5f2c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a5f2f: e8 7c 01 00 00                                  call   0x4a60b0
  004a5f34: 51                                              push   ecx
  004a5f35: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a5f38: 8b cc                                           mov    ecx,esp
  004a5f3a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5f3d: 50                                              push   eax
  004a5f3e: e8 0d fc ff ff                                  call   0x4a5b50
  004a5f43: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004a5f46: 51                                              push   ecx
  004a5f47: e8 e4 03 00 00                                  call   0x4a6330
  004a5f4c: 83 c4 10                                        add    esp,0x10
  004a5f4f: 8d 55 94                                        lea    edx,[ebp-0x6c]
  004a5f52: 52                                              push   edx
  004a5f53: 51                                              push   ecx
  004a5f54: 8b c4                                           mov    eax,esp
  004a5f56: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5f59: 53                                              push   ebx
  004a5f5a: 50                                              push   eax
  004a5f5b: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004a5f5e: e8 4d 00 00 00                                  call   0x4a5fb0
  004a5f63: 51                                              push   ecx
  004a5f64: 8b cc                                           mov    ecx,esp
  004a5f66: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a5f69: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a5f6c: 52                                              push   edx
  004a5f6d: e8 de fb ff ff                                  call   0x4a5b50
  004a5f72: e8 39 02 00 00                                  call   0x4a61b0
  004a5f77: 83 c4 0c                                        add    esp,0xc
  004a5f7a: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  004a5f7d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004a5f84: e8 97 05 00 00                                  call   0x4a6520
  004a5f89: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a5f8c: 5f                                              pop    edi
  004a5f8d: 5e                                              pop    esi
  004a5f8e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a5f95: 5b                                              pop    ebx
  004a5f96: 8b e5                                           mov    esp,ebp
  004a5f98: 5d                                              pop    ebp
  004a5f99: c2 0c 00                                        ret    0xc
  004a77e0: 55                                              push   ebp
  004a77e1: 8b ec                                           mov    ebp,esp
  004a77e3: 6a ff                                           push   0xffffffff
  004a77e5: 68 59 bd 4d 00                                  push   0x4dbd59
  004a77ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a77f0: 50                                              push   eax
  004a77f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a77f8: 83 ec 64                                        sub    esp,0x64
  004a77fb: 53                                              push   ebx
  004a77fc: 56                                              push   esi
  004a77fd: 57                                              push   edi
  004a77fe: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a7801: 8b f1                                           mov    esi,ecx
  004a7803: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a7806: 57                                              push   edi
  004a7807: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004a780a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a780d: e8 ae 44 ff ff                                  call   0x49bcc0
  004a7812: 8d 47 18                                        lea    eax,[edi+0x18]
  004a7815: 50                                              push   eax
  004a7816: 8d 4d a8                                        lea    ecx,[ebp-0x58]
  004a7819: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a7820: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004a7826: 8b 4f 28                                        mov    ecx,DWORD PTR [edi+0x28]
  004a7829: 89 4d b8                                        mov    DWORD PTR [ebp-0x48],ecx
  004a782c: c7 45 90 08 fa 4d 00                            mov    DWORD PTR [ebp-0x70],0x4dfa08
  004a7833: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a7836: 85 c9                                           test   ecx,ecx
  004a7838: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a783f: 75 04                                           jne    0x4a7845
  004a7841: 33 ff                                           xor    edi,edi
  004a7843: eb 1b                                           jmp    0x4a7860
  004a7845: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a7848: 2b d1                                           sub    edx,ecx
  004a784a: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004a784f: f7 ea                                           imul   edx
  004a7851: c1 fa 03                                        sar    edx,0x3
  004a7854: 8b c2                                           mov    eax,edx
  004a7856: c1 e8 1f                                        shr    eax,0x1f
  004a7859: 03 d0                                           add    edx,eax
  004a785b: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a785e: 8b fa                                           mov    edi,edx
  004a7860: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004a7863: 85 db                                           test   ebx,ebx
  004a7865: 0f 84 91 03 00 00                               je     0x4a7bfc
  004a786b: 85 c9                                           test   ecx,ecx
  004a786d: 75 04                                           jne    0x4a7873
  004a786f: 33 d2                                           xor    edx,edx
  004a7871: eb 16                                           jmp    0x4a7889
  004a7873: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a7876: 2b d1                                           sub    edx,ecx
  004a7878: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004a787d: f7 ea                                           imul   edx
  004a787f: c1 fa 03                                        sar    edx,0x3
  004a7882: 8b c2                                           mov    eax,edx
  004a7884: c1 e8 1f                                        shr    eax,0x1f
  004a7887: 03 d0                                           add    edx,eax
  004a7889: b8 5d 74 d1 05                                  mov    eax,0x5d1745d
  004a788e: 2b c2                                           sub    eax,edx
  004a7890: 3b c3                                           cmp    eax,ebx
  004a7892: 73 2c                                           jae    0x4a78c0
  004a7894: 68 80 05 50 00                                  push   0x500580
  004a7899: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a789c: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004a78a2: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004a78a5: 51                                              push   ecx
  004a78a6: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004a78a9: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a78ad: e8 6e db f5 ff                                  call   0x405420
  004a78b2: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004a78b7: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004a78ba: 52                                              push   edx
  004a78bb: e8 96 a4 02 00                                  call   0x4d1d56
  004a78c0: 85 c9                                           test   ecx,ecx
  004a78c2: 75 04                                           jne    0x4a78c8
  004a78c4: 33 d2                                           xor    edx,edx
  004a78c6: eb 16                                           jmp    0x4a78de
  004a78c8: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a78cb: 2b d1                                           sub    edx,ecx
  004a78cd: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004a78d2: f7 ea                                           imul   edx
  004a78d4: c1 fa 03                                        sar    edx,0x3
  004a78d7: 8b c2                                           mov    eax,edx
  004a78d9: c1 e8 1f                                        shr    eax,0x1f
  004a78dc: 03 d0                                           add    edx,eax
  004a78de: 03 d3                                           add    edx,ebx
  004a78e0: 3b fa                                           cmp    edi,edx
  004a78e2: 0f 83 90 01 00 00                               jae    0x4a7a78
  004a78e8: 8b c7                                           mov    eax,edi
  004a78ea: d1 e8                                           shr    eax,1
  004a78ec: ba 5d 74 d1 05                                  mov    edx,0x5d1745d
  004a78f1: 2b d0                                           sub    edx,eax
  004a78f3: 3b d7                                           cmp    edx,edi
  004a78f5: 73 0c                                           jae    0x4a7903
  004a78f7: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004a78fe: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a7901: eb 05                                           jmp    0x4a7908
  004a7903: 03 f8                                           add    edi,eax
  004a7905: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a7908: 85 c9                                           test   ecx,ecx
  004a790a: 75 04                                           jne    0x4a7910
  004a790c: 33 d2                                           xor    edx,edx
  004a790e: eb 16                                           jmp    0x4a7926
  004a7910: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a7913: 2b d1                                           sub    edx,ecx
  004a7915: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004a791a: f7 ea                                           imul   edx
  004a791c: c1 fa 03                                        sar    edx,0x3
  004a791f: 8b c2                                           mov    eax,edx
  004a7921: c1 e8 1f                                        shr    eax,0x1f
  004a7924: 03 d0                                           add    edx,eax
  004a7926: 03 d3                                           add    edx,ebx
  004a7928: 3b fa                                           cmp    edi,edx
  004a792a: 73 25                                           jae    0x4a7951
  004a792c: 85 c9                                           test   ecx,ecx
  004a792e: 75 04                                           jne    0x4a7934
  004a7930: 33 d2                                           xor    edx,edx
  004a7932: eb 16                                           jmp    0x4a794a
  004a7934: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a7937: 2b d1                                           sub    edx,ecx
  004a7939: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004a793e: f7 ea                                           imul   edx
  004a7940: c1 fa 03                                        sar    edx,0x3
  004a7943: 8b ca                                           mov    ecx,edx
  004a7945: c1 e9 1f                                        shr    ecx,0x1f
  004a7948: 03 d1                                           add    edx,ecx
  004a794a: 03 d3                                           add    edx,ebx
  004a794c: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a794f: 8b fa                                           mov    edi,edx
  004a7951: 8d 14 bf                                        lea    edx,[edi+edi*4]
  004a7954: 8d 04 57                                        lea    eax,[edi+edx*2]
  004a7957: c1 e0 02                                        shl    eax,0x2
  004a795a: 50                                              push   eax
  004a795b: e8 90 a6 f9 ff                                  call   0x441ff0
  004a7960: 83 c4 04                                        add    esp,0x4
  004a7963: 50                                              push   eax
  004a7964: 51                                              push   ecx
  004a7965: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a7968: 8b cc                                           mov    ecx,esp
  004a796a: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a796d: 52                                              push   edx
  004a796e: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004a7971: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a7974: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004a7978: e8 53 fe ff ff                                  call   0x4a77d0
  004a797d: 51                                              push   ecx
  004a797e: 8b c4                                           mov    eax,esp
  004a7980: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a7983: 50                                              push   eax
  004a7984: 8b ce                                           mov    ecx,esi
  004a7986: e8 95 02 00 00                                  call   0x4a7c20
  004a798b: 8b ce                                           mov    ecx,esi
  004a798d: e8 ce 03 00 00                                  call   0x4a7d60
  004a7992: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004a7995: 51                                              push   ecx
  004a7996: 53                                              push   ebx
  004a7997: 50                                              push   eax
  004a7998: 8b ce                                           mov    ecx,esi
  004a799a: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a799d: e8 ae 02 00 00                                  call   0x4a7c50
  004a79a2: 50                                              push   eax
  004a79a3: 51                                              push   ecx
  004a79a4: 8b d4                                           mov    edx,esp
  004a79a6: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a79a9: 52                                              push   edx
  004a79aa: 8b ce                                           mov    ecx,esi
  004a79ac: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004a79af: e8 8c fd ff ff                                  call   0x4a7740
  004a79b4: 51                                              push   ecx
  004a79b5: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a79b8: 8b cc                                           mov    ecx,esp
  004a79ba: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004a79bd: 50                                              push   eax
  004a79be: e8 0d fe ff ff                                  call   0x4a77d0
  004a79c3: 8b ce                                           mov    ecx,esi
  004a79c5: e8 96 03 00 00                                  call   0x4a7d60
  004a79ca: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a79cd: 85 c0                                           test   eax,eax
  004a79cf: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a79d6: 74 2d                                           je     0x4a7a05
  004a79d8: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a79db: 8b f8                                           mov    edi,eax
  004a79dd: 3b f9                                           cmp    edi,ecx
  004a79df: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a79e2: 74 12                                           je     0x4a79f6
  004a79e4: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a79e6: 6a 00                                           push   0x0
  004a79e8: 8b cf                                           mov    ecx,edi
  004a79ea: ff 12                                           call   DWORD PTR [edx]
  004a79ec: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a79ef: 83 c7 2c                                        add    edi,0x2c
  004a79f2: 3b f8                                           cmp    edi,eax
  004a79f4: 75 ee                                           jne    0x4a79e4
  004a79f6: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a79f9: 50                                              push   eax
  004a79fa: e8 61 a6 f9 ff                                  call   0x442060
  004a79ff: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a7a02: 83 c4 04                                        add    esp,0x4
  004a7a05: 8d 04 bf                                        lea    eax,[edi+edi*4]
  004a7a08: 8d 0c 47                                        lea    ecx,[edi+eax*2]
  004a7a0b: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004a7a0e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a7a11: 85 c0                                           test   eax,eax
  004a7a13: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004a7a16: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a7a19: 75 04                                           jne    0x4a7a1f
  004a7a1b: 33 d2                                           xor    edx,edx
  004a7a1d: eb 16                                           jmp    0x4a7a35
  004a7a1f: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a7a22: 2b c8                                           sub    ecx,eax
  004a7a24: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004a7a29: f7 e9                                           imul   ecx
  004a7a2b: c1 fa 03                                        sar    edx,0x3
  004a7a2e: 8b c2                                           mov    eax,edx
  004a7a30: c1 e8 1f                                        shr    eax,0x1f
  004a7a33: 03 d0                                           add    edx,eax
  004a7a35: 03 da                                           add    ebx,edx
  004a7a37: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  004a7a3a: 8d 14 4b                                        lea    edx,[ebx+ecx*2]
  004a7a3d: 8d 04 97                                        lea    eax,[edi+edx*4]
  004a7a40: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a7a43: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a7a46: e9 b1 01 00 00                                  jmp    0x4a7bfc
  004a7a78: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004a7a7b: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a7a7e: 8b d7                                           mov    edx,edi
  004a7a80: 2b d1                                           sub    edx,ecx
  004a7a82: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004a7a87: f7 ea                                           imul   edx
  004a7a89: c1 fa 03                                        sar    edx,0x3
  004a7a8c: 8b c2                                           mov    eax,edx
  004a7a8e: c1 e8 1f                                        shr    eax,0x1f
  004a7a91: 03 d0                                           add    edx,eax
  004a7a93: 3b d3                                           cmp    edx,ebx
  004a7a95: 0f 83 d3 00 00 00                               jae    0x4a7b6e
  004a7a9b: 8d 14 9b                                        lea    edx,[ebx+ebx*4]
  004a7a9e: 8d 3c 53                                        lea    edi,[ebx+edx*2]
  004a7aa1: c1 e7 02                                        shl    edi,0x2
  004a7aa4: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  004a7aa7: 50                                              push   eax
  004a7aa8: 51                                              push   ecx
  004a7aa9: 8b cc                                           mov    ecx,esp
  004a7aab: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7aae: 51                                              push   ecx
  004a7aaf: 8b ce                                           mov    ecx,esi
  004a7ab1: e8 8a fc ff ff                                  call   0x4a7740
  004a7ab6: 51                                              push   ecx
  004a7ab7: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a7aba: 8b cc                                           mov    ecx,esp
  004a7abc: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7abf: 52                                              push   edx
  004a7ac0: e8 0b fd ff ff                                  call   0x4a77d0
  004a7ac5: 8b ce                                           mov    ecx,esi
  004a7ac7: e8 94 02 00 00                                  call   0x4a7d60
  004a7acc: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a7acf: 8d 45 90                                        lea    eax,[ebp-0x70]
  004a7ad2: 50                                              push   eax
  004a7ad3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a7ad6: 8b d1                                           mov    edx,ecx
  004a7ad8: 2b d0                                           sub    edx,eax
  004a7ada: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004a7adf: f7 ea                                           imul   edx
  004a7ae1: c1 fa 03                                        sar    edx,0x3
  004a7ae4: 8b c2                                           mov    eax,edx
  004a7ae6: c1 e8 1f                                        shr    eax,0x1f
  004a7ae9: 03 d0                                           add    edx,eax
  004a7aeb: 8b c3                                           mov    eax,ebx
  004a7aed: 2b c2                                           sub    eax,edx
  004a7aef: 50                                              push   eax
  004a7af0: 51                                              push   ecx
  004a7af1: 8b ce                                           mov    ecx,esi
  004a7af3: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004a7af7: e8 54 01 00 00                                  call   0x4a7c50
  004a7afc: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a7aff: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004a7b02: 51                                              push   ecx
  004a7b03: 51                                              push   ecx
  004a7b04: 8b d4                                           mov    edx,esp
  004a7b06: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004a7b09: 03 c7                                           add    eax,edi
  004a7b0b: 53                                              push   ebx
  004a7b0c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a7b0f: 52                                              push   edx
  004a7b10: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a7b13: 50                                              push   eax
  004a7b14: 8b ce                                           mov    ecx,esi
  004a7b16: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004a7b1d: e8 1e fc ff ff                                  call   0x4a7740
  004a7b22: 8b c8                                           mov    ecx,eax
  004a7b24: e8 17 02 00 00                                  call   0x4a7d40
  004a7b29: 51                                              push   ecx
  004a7b2a: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a7b2d: 8b cc                                           mov    ecx,esp
  004a7b2f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7b32: 52                                              push   edx
  004a7b33: e9 b7 00 00 00                                  jmp    0x4a7bef
  004a7b6e: 57                                              push   edi
  004a7b6f: 51                                              push   ecx
  004a7b70: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004a7b73: 8b cc                                           mov    ecx,esp
  004a7b75: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7b78: 50                                              push   eax
  004a7b79: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004a7b7c: e8 4f fc ff ff                                  call   0x4a77d0
  004a7b81: 51                                              push   ecx
  004a7b82: 8b cc                                           mov    ecx,esp
  004a7b84: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7b87: 53                                              push   ebx
  004a7b88: 51                                              push   ecx
  004a7b89: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a7b8c: e8 af 01 00 00                                  call   0x4a7d40
  004a7b91: 8b ce                                           mov    ecx,esi
  004a7b93: e8 c8 01 00 00                                  call   0x4a7d60
  004a7b98: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004a7b9b: 51                                              push   ecx
  004a7b9c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a7b9f: 8b c4                                           mov    eax,esp
  004a7ba1: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7ba4: 51                                              push   ecx
  004a7ba5: 89 10                                           mov    DWORD PTR [eax],edx
  004a7ba7: 8b c4                                           mov    eax,esp
  004a7ba9: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7bac: 53                                              push   ebx
  004a7bad: 50                                              push   eax
  004a7bae: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004a7bb1: e8 8a 01 00 00                                  call   0x4a7d40
  004a7bb6: 51                                              push   ecx
  004a7bb7: 8d 55 08                                        lea    edx,[ebp+0x8]
  004a7bba: 8b cc                                           mov    ecx,esp
  004a7bbc: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7bbf: 52                                              push   edx
  004a7bc0: e8 0b fc ff ff                                  call   0x4a77d0
  004a7bc5: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004a7bc8: 50                                              push   eax
  004a7bc9: e8 f2 03 00 00                                  call   0x4a7fc0
  004a7bce: 83 c4 10                                        add    esp,0x10
  004a7bd1: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004a7bd4: 51                                              push   ecx
  004a7bd5: 51                                              push   ecx
  004a7bd6: 8b d4                                           mov    edx,esp
  004a7bd8: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7bdb: 53                                              push   ebx
  004a7bdc: 52                                              push   edx
  004a7bdd: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004a7be0: e8 4b 00 00 00                                  call   0x4a7c30
  004a7be5: 51                                              push   ecx
  004a7be6: 8d 45 08                                        lea    eax,[ebp+0x8]
  004a7be9: 8b cc                                           mov    ecx,esp
  004a7beb: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004a7bee: 50                                              push   eax
  004a7bef: e8 dc fb ff ff                                  call   0x4a77d0
  004a7bf4: e8 47 02 00 00                                  call   0x4a7e40
  004a7bf9: 83 c4 0c                                        add    esp,0xc
  004a7bfc: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004a7bff: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004a7c06: e8 a5 f2 ff ff                                  call   0x4a6eb0
  004a7c0b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a7c0e: 5f                                              pop    edi
  004a7c0f: 5e                                              pop    esi
  004a7c10: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a7c17: 5b                                              pop    ebx
  004a7c18: 8b e5                                           mov    esp,ebp
  004a7c1a: 5d                                              pop    ebp
  004a7c1b: c2 0c 00                                        ret    0xc
  004a81b0: 8b 41 18                                        mov    eax,DWORD PTR [ecx+0x18]
  004a81b3: c3                                              ret
  004aa020: 55                                              push   ebp
  004aa021: 8b ec                                           mov    ebp,esp
  004aa023: 8b c1                                           mov    eax,ecx
  004aa025: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004aa028: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004aa02a: 89 10                                           mov    DWORD PTR [eax],edx
  004aa02c: 5d                                              pop    ebp
  004aa02d: c2 04 00                                        ret    0x4
  004aa030: 55                                              push   ebp
  004aa031: 8b ec                                           mov    ebp,esp
  004aa033: 6a ff                                           push   0xffffffff
  004aa035: 68 c9 c1 4d 00                                  push   0x4dc1c9
  004aa03a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004aa040: 50                                              push   eax
  004aa041: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004aa048: 83 ec 64                                        sub    esp,0x64
  004aa04b: 53                                              push   ebx
  004aa04c: 56                                              push   esi
  004aa04d: 57                                              push   edi
  004aa04e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa051: 8b f1                                           mov    esi,ecx
  004aa053: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004aa056: 57                                              push   edi
  004aa057: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004aa05a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004aa05d: e8 5e 1c ff ff                                  call   0x49bcc0
  004aa062: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  004aa065: 83 c7 1c                                        add    edi,0x1c
  004aa068: 57                                              push   edi
  004aa069: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004aa06c: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004aa073: 89 45 a8                                        mov    DWORD PTR [ebp-0x58],eax
  004aa076: e8 35 10 00 00                                  call   0x4ab0b0
  004aa07b: c7 45 90 28 fa 4d 00                            mov    DWORD PTR [ebp-0x70],0x4dfa28
  004aa082: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004aa085: 85 c9                                           test   ecx,ecx
  004aa087: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004aa08e: 75 04                                           jne    0x4aa094
  004aa090: 33 ff                                           xor    edi,edi
  004aa092: eb 1b                                           jmp    0x4aa0af
  004aa094: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004aa097: 2b d1                                           sub    edx,ecx
  004aa099: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004aa09e: f7 ea                                           imul   edx
  004aa0a0: c1 fa 03                                        sar    edx,0x3
  004aa0a3: 8b c2                                           mov    eax,edx
  004aa0a5: c1 e8 1f                                        shr    eax,0x1f
  004aa0a8: 03 d0                                           add    edx,eax
  004aa0aa: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004aa0ad: 8b fa                                           mov    edi,edx
  004aa0af: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004aa0b2: 85 db                                           test   ebx,ebx
  004aa0b4: 0f 84 91 03 00 00                               je     0x4aa44b
  004aa0ba: 85 c9                                           test   ecx,ecx
  004aa0bc: 75 04                                           jne    0x4aa0c2
  004aa0be: 33 d2                                           xor    edx,edx
  004aa0c0: eb 16                                           jmp    0x4aa0d8
  004aa0c2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004aa0c5: 2b d1                                           sub    edx,ecx
  004aa0c7: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004aa0cc: f7 ea                                           imul   edx
  004aa0ce: c1 fa 03                                        sar    edx,0x3
  004aa0d1: 8b c2                                           mov    eax,edx
  004aa0d3: c1 e8 1f                                        shr    eax,0x1f
  004aa0d6: 03 d0                                           add    edx,eax
  004aa0d8: b8 5d 74 d1 05                                  mov    eax,0x5d1745d
  004aa0dd: 2b c2                                           sub    eax,edx
  004aa0df: 3b c3                                           cmp    eax,ebx
  004aa0e1: 73 2c                                           jae    0x4aa10f
  004aa0e3: 68 80 05 50 00                                  push   0x500580
  004aa0e8: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004aa0eb: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004aa0f1: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004aa0f4: 51                                              push   ecx
  004aa0f5: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  004aa0f8: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004aa0fc: e8 1f b3 f5 ff                                  call   0x405420
  004aa101: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004aa106: 8d 55 bc                                        lea    edx,[ebp-0x44]
  004aa109: 52                                              push   edx
  004aa10a: e8 47 7c 02 00                                  call   0x4d1d56
  004aa10f: 85 c9                                           test   ecx,ecx
  004aa111: 75 04                                           jne    0x4aa117
  004aa113: 33 d2                                           xor    edx,edx
  004aa115: eb 16                                           jmp    0x4aa12d
  004aa117: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004aa11a: 2b d1                                           sub    edx,ecx
  004aa11c: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004aa121: f7 ea                                           imul   edx
  004aa123: c1 fa 03                                        sar    edx,0x3
  004aa126: 8b c2                                           mov    eax,edx
  004aa128: c1 e8 1f                                        shr    eax,0x1f
  004aa12b: 03 d0                                           add    edx,eax
  004aa12d: 03 d3                                           add    edx,ebx
  004aa12f: 3b fa                                           cmp    edi,edx
  004aa131: 0f 83 90 01 00 00                               jae    0x4aa2c7
  004aa137: 8b c7                                           mov    eax,edi
  004aa139: d1 e8                                           shr    eax,1
  004aa13b: ba 5d 74 d1 05                                  mov    edx,0x5d1745d
  004aa140: 2b d0                                           sub    edx,eax
  004aa142: 3b d7                                           cmp    edx,edi
  004aa144: 73 0c                                           jae    0x4aa152
  004aa146: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  004aa14d: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa150: eb 05                                           jmp    0x4aa157
  004aa152: 03 f8                                           add    edi,eax
  004aa154: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004aa157: 85 c9                                           test   ecx,ecx
  004aa159: 75 04                                           jne    0x4aa15f
  004aa15b: 33 d2                                           xor    edx,edx
  004aa15d: eb 16                                           jmp    0x4aa175
  004aa15f: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004aa162: 2b d1                                           sub    edx,ecx
  004aa164: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004aa169: f7 ea                                           imul   edx
  004aa16b: c1 fa 03                                        sar    edx,0x3
  004aa16e: 8b c2                                           mov    eax,edx
  004aa170: c1 e8 1f                                        shr    eax,0x1f
  004aa173: 03 d0                                           add    edx,eax
  004aa175: 03 d3                                           add    edx,ebx
  004aa177: 3b fa                                           cmp    edi,edx
  004aa179: 73 25                                           jae    0x4aa1a0
  004aa17b: 85 c9                                           test   ecx,ecx
  004aa17d: 75 04                                           jne    0x4aa183
  004aa17f: 33 d2                                           xor    edx,edx
  004aa181: eb 16                                           jmp    0x4aa199
  004aa183: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004aa186: 2b d1                                           sub    edx,ecx
  004aa188: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004aa18d: f7 ea                                           imul   edx
  004aa18f: c1 fa 03                                        sar    edx,0x3
  004aa192: 8b ca                                           mov    ecx,edx
  004aa194: c1 e9 1f                                        shr    ecx,0x1f
  004aa197: 03 d1                                           add    edx,ecx
  004aa199: 03 d3                                           add    edx,ebx
  004aa19b: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004aa19e: 8b fa                                           mov    edi,edx
  004aa1a0: 8d 14 bf                                        lea    edx,[edi+edi*4]
  004aa1a3: 8d 04 57                                        lea    eax,[edi+edx*2]
  004aa1a6: c1 e0 02                                        shl    eax,0x2
  004aa1a9: 50                                              push   eax
  004aa1aa: e8 41 7e f9 ff                                  call   0x441ff0
  004aa1af: 83 c4 04                                        add    esp,0x4
  004aa1b2: 50                                              push   eax
  004aa1b3: 51                                              push   ecx
  004aa1b4: 8d 55 08                                        lea    edx,[ebp+0x8]
  004aa1b7: 8b cc                                           mov    ecx,esp
  004aa1b9: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004aa1bc: 52                                              push   edx
  004aa1bd: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004aa1c0: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004aa1c3: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004aa1c7: e8 f4 fc ff ff                                  call   0x4a9ec0
  004aa1cc: 51                                              push   ecx
  004aa1cd: 8b c4                                           mov    eax,esp
  004aa1cf: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004aa1d2: 50                                              push   eax
  004aa1d3: 8b ce                                           mov    ecx,esi
  004aa1d5: e8 96 02 00 00                                  call   0x4aa470
  004aa1da: 8b ce                                           mov    ecx,esi
  004aa1dc: e8 df 18 00 00                                  call   0x4abac0
  004aa1e1: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004aa1e4: 51                                              push   ecx
  004aa1e5: 53                                              push   ebx
  004aa1e6: 50                                              push   eax
  004aa1e7: 8b ce                                           mov    ecx,esi
  004aa1e9: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004aa1ec: e8 bf 0f 00 00                                  call   0x4ab1b0
  004aa1f1: 50                                              push   eax
  004aa1f2: 51                                              push   ecx
  004aa1f3: 8b d4                                           mov    edx,esp
  004aa1f5: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004aa1f8: 52                                              push   edx
  004aa1f9: 8b ce                                           mov    ecx,esi
  004aa1fb: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004aa1fe: e8 1d fb ff ff                                  call   0x4a9d20
  004aa203: 51                                              push   ecx
  004aa204: 8d 45 08                                        lea    eax,[ebp+0x8]
  004aa207: 8b cc                                           mov    ecx,esp
  004aa209: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004aa20c: 50                                              push   eax
  004aa20d: e8 ae fc ff ff                                  call   0x4a9ec0
  004aa212: 8b ce                                           mov    ecx,esi
  004aa214: e8 a7 18 00 00                                  call   0x4abac0
  004aa219: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004aa21c: 85 c0                                           test   eax,eax
  004aa21e: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004aa225: 74 2d                                           je     0x4aa254
  004aa227: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004aa22a: 8b f8                                           mov    edi,eax
  004aa22c: 3b f9                                           cmp    edi,ecx
  004aa22e: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004aa231: 74 12                                           je     0x4aa245
  004aa233: 8b 17                                           mov    edx,DWORD PTR [edi]
  004aa235: 6a 00                                           push   0x0
  004aa237: 8b cf                                           mov    ecx,edi
  004aa239: ff 12                                           call   DWORD PTR [edx]
  004aa23b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004aa23e: 83 c7 2c                                        add    edi,0x2c
  004aa241: 3b f8                                           cmp    edi,eax
  004aa243: 75 ee                                           jne    0x4aa233
  004aa245: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004aa248: 50                                              push   eax
  004aa249: e8 12 7e f9 ff                                  call   0x442060
  004aa24e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004aa251: 83 c4 04                                        add    esp,0x4
  004aa254: 8d 04 bf                                        lea    eax,[edi+edi*4]
  004aa257: 8d 0c 47                                        lea    ecx,[edi+eax*2]
  004aa25a: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  004aa25d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004aa260: 85 c0                                           test   eax,eax
  004aa262: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  004aa265: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004aa268: 75 04                                           jne    0x4aa26e
  004aa26a: 33 d2                                           xor    edx,edx
  004aa26c: eb 16                                           jmp    0x4aa284
  004aa26e: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004aa271: 2b c8                                           sub    ecx,eax
  004aa273: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004aa278: f7 e9                                           imul   ecx
  004aa27a: c1 fa 03                                        sar    edx,0x3
  004aa27d: 8b c2                                           mov    eax,edx
  004aa27f: c1 e8 1f                                        shr    eax,0x1f
  004aa282: 03 d0                                           add    edx,eax
  004aa284: 03 da                                           add    ebx,edx
  004aa286: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  004aa289: 8d 14 4b                                        lea    edx,[ebx+ecx*2]
  004aa28c: 8d 04 97                                        lea    eax,[edi+edx*4]
  004aa28f: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004aa292: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004aa295: e9 b1 01 00 00                                  jmp    0x4aa44b
  004aa2c7: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  004aa2ca: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004aa2cd: 8b d7                                           mov    edx,edi
  004aa2cf: 2b d1                                           sub    edx,ecx
  004aa2d1: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004aa2d6: f7 ea                                           imul   edx
  004aa2d8: c1 fa 03                                        sar    edx,0x3
  004aa2db: 8b c2                                           mov    eax,edx
  004aa2dd: c1 e8 1f                                        shr    eax,0x1f
  004aa2e0: 03 d0                                           add    edx,eax
  004aa2e2: 3b d3                                           cmp    edx,ebx
  004aa2e4: 0f 83 d3 00 00 00                               jae    0x4aa3bd
  004aa2ea: 8d 14 9b                                        lea    edx,[ebx+ebx*4]
  004aa2ed: 8d 3c 53                                        lea    edi,[ebx+edx*2]
  004aa2f0: c1 e7 02                                        shl    edi,0x2
  004aa2f3: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  004aa2f6: 50                                              push   eax
  004aa2f7: 51                                              push   ecx
  004aa2f8: 8b cc                                           mov    ecx,esp
  004aa2fa: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa2fd: 51                                              push   ecx
  004aa2fe: 8b ce                                           mov    ecx,esi
  004aa300: e8 1b fa ff ff                                  call   0x4a9d20
  004aa305: 51                                              push   ecx
  004aa306: 8d 55 08                                        lea    edx,[ebp+0x8]
  004aa309: 8b cc                                           mov    ecx,esp
  004aa30b: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa30e: 52                                              push   edx
  004aa30f: e8 ac fb ff ff                                  call   0x4a9ec0
  004aa314: 8b ce                                           mov    ecx,esi
  004aa316: e8 a5 17 00 00                                  call   0x4abac0
  004aa31b: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004aa31e: 8d 45 90                                        lea    eax,[ebp-0x70]
  004aa321: 50                                              push   eax
  004aa322: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aa325: 8b d1                                           mov    edx,ecx
  004aa327: 2b d0                                           sub    edx,eax
  004aa329: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004aa32e: f7 ea                                           imul   edx
  004aa330: c1 fa 03                                        sar    edx,0x3
  004aa333: 8b c2                                           mov    eax,edx
  004aa335: c1 e8 1f                                        shr    eax,0x1f
  004aa338: 03 d0                                           add    edx,eax
  004aa33a: 8b c3                                           mov    eax,ebx
  004aa33c: 2b c2                                           sub    eax,edx
  004aa33e: 50                                              push   eax
  004aa33f: 51                                              push   ecx
  004aa340: 8b ce                                           mov    ecx,esi
  004aa342: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004aa346: e8 65 0e 00 00                                  call   0x4ab1b0
  004aa34b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004aa34e: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004aa351: 51                                              push   ecx
  004aa352: 51                                              push   ecx
  004aa353: 8b d4                                           mov    edx,esp
  004aa355: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004aa358: 03 c7                                           add    eax,edi
  004aa35a: 53                                              push   ebx
  004aa35b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004aa35e: 52                                              push   edx
  004aa35f: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004aa362: 50                                              push   eax
  004aa363: 8b ce                                           mov    ecx,esi
  004aa365: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004aa36c: e8 af f9 ff ff                                  call   0x4a9d20
  004aa371: 8b c8                                           mov    ecx,eax
  004aa373: e8 98 0f 00 00                                  call   0x4ab310
  004aa378: 51                                              push   ecx
  004aa379: 8d 55 08                                        lea    edx,[ebp+0x8]
  004aa37c: 8b cc                                           mov    ecx,esp
  004aa37e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa381: 52                                              push   edx
  004aa382: e9 b7 00 00 00                                  jmp    0x4aa43e
  004aa3bd: 57                                              push   edi
  004aa3be: 51                                              push   ecx
  004aa3bf: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004aa3c2: 8b cc                                           mov    ecx,esp
  004aa3c4: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa3c7: 50                                              push   eax
  004aa3c8: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004aa3cb: e8 f0 fa ff ff                                  call   0x4a9ec0
  004aa3d0: 51                                              push   ecx
  004aa3d1: 8b cc                                           mov    ecx,esp
  004aa3d3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa3d6: 53                                              push   ebx
  004aa3d7: 51                                              push   ecx
  004aa3d8: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004aa3db: e8 30 0f 00 00                                  call   0x4ab310
  004aa3e0: 8b ce                                           mov    ecx,esi
  004aa3e2: e8 d9 16 00 00                                  call   0x4abac0
  004aa3e7: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004aa3ea: 51                                              push   ecx
  004aa3eb: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004aa3ee: 8b c4                                           mov    eax,esp
  004aa3f0: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa3f3: 51                                              push   ecx
  004aa3f4: 89 10                                           mov    DWORD PTR [eax],edx
  004aa3f6: 8b c4                                           mov    eax,esp
  004aa3f8: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa3fb: 53                                              push   ebx
  004aa3fc: 50                                              push   eax
  004aa3fd: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004aa400: e8 0b 0f 00 00                                  call   0x4ab310
  004aa405: 51                                              push   ecx
  004aa406: 8d 55 08                                        lea    edx,[ebp+0x8]
  004aa409: 8b cc                                           mov    ecx,esp
  004aa40b: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa40e: 52                                              push   edx
  004aa40f: e8 ac fa ff ff                                  call   0x4a9ec0
  004aa414: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004aa417: 50                                              push   eax
  004aa418: e8 13 1d 00 00                                  call   0x4ac130
  004aa41d: 83 c4 10                                        add    esp,0x10
  004aa420: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004aa423: 51                                              push   ecx
  004aa424: 51                                              push   ecx
  004aa425: 8b d4                                           mov    edx,esp
  004aa427: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa42a: 53                                              push   ebx
  004aa42b: 52                                              push   edx
  004aa42c: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004aa42f: e8 4c 00 00 00                                  call   0x4aa480
  004aa434: 51                                              push   ecx
  004aa435: 8d 45 08                                        lea    eax,[ebp+0x8]
  004aa438: 8b cc                                           mov    ecx,esp
  004aa43a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004aa43d: 50                                              push   eax
  004aa43e: e8 7d fa ff ff                                  call   0x4a9ec0
  004aa443: e8 88 17 00 00                                  call   0x4abbd0
  004aa448: 83 c4 0c                                        add    esp,0xc
  004aa44b: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004aa44e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004aa455: e8 f6 cd ff ff                                  call   0x4a7250
  004aa45a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004aa45d: 5f                                              pop    edi
  004aa45e: 5e                                              pop    esi
  004aa45f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004aa466: 5b                                              pop    ebx
  004aa467: 8b e5                                           mov    esp,ebp
  004aa469: 5d                                              pop    ebp
  004aa46a: c2 0c 00                                        ret    0xc
  004ab080: 55                                              push   ebp
  004ab081: 8b ec                                           mov    ebp,esp
  004ab083: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004ab086: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ab089: 89 08                                           mov    DWORD PTR [eax],ecx
  004ab08b: 5d                                              pop    ebp
  004ab08c: c2 04 00                                        ret    0x4
  004ab090: 55                                              push   ebp
  004ab091: 8b ec                                           mov    ebp,esp
  004ab093: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ab096: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004ab098: 8d 14 c0                                        lea    edx,[eax+eax*8]
  004ab09b: 8d 04 50                                        lea    eax,[eax+edx*2]
  004ab09e: 8d 04 40                                        lea    eax,[eax+eax*2]
  004ab0a1: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004ab0a4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ab0a7: 89 10                                           mov    DWORD PTR [eax],edx
  004ab0a9: 5d                                              pop    ebp
  004ab0aa: c2 08 00                                        ret    0x8
  004ab330: 55                                              push   ebp
  004ab331: 8b ec                                           mov    ebp,esp
  004ab333: 53                                              push   ebx
  004ab334: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004ab337: 8a 03                                           mov    al,BYTE PTR [ebx]
  004ab339: 56                                              push   esi
  004ab33a: 8b f1                                           mov    esi,ecx
  004ab33c: 57                                              push   edi
  004ab33d: 88 06                                           mov    BYTE PTR [esi],al
  004ab33f: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ab342: 33 ff                                           xor    edi,edi
  004ab344: 3b c7                                           cmp    eax,edi
  004ab346: 75 04                                           jne    0x4ab34c
  004ab348: 33 d2                                           xor    edx,edx
  004ab34a: eb 18                                           jmp    0x4ab364
  004ab34c: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ab34f: 2b c8                                           sub    ecx,eax
  004ab351: b8 93 24 49 92                                  mov    eax,0x92492493
  004ab356: f7 e9                                           imul   ecx
  004ab358: 03 d1                                           add    edx,ecx
  004ab35a: c1 fa 04                                        sar    edx,0x4
  004ab35d: 8b c2                                           mov    eax,edx
  004ab35f: c1 e8 1f                                        shr    eax,0x1f
  004ab362: 03 d0                                           add    edx,eax
  004ab364: 3b d7                                           cmp    edx,edi
  004ab366: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004ab369: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004ab36c: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ab36f: 74 33                                           je     0x4ab3a4
  004ab371: 8d 3c d5 00 00 00 00                            lea    edi,[edx*8+0x0]
  004ab378: 2b fa                                           sub    edi,edx
  004ab37a: c1 e7 02                                        shl    edi,0x2
  004ab37d: 57                                              push   edi
  004ab37e: e8 6d 6c f9 ff                                  call   0x441ff0
  004ab383: 83 c4 04                                        add    esp,0x4
  004ab386: 03 f8                                           add    edi,eax
  004ab388: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004ab38b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ab38e: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ab391: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ab394: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004ab397: 50                                              push   eax
  004ab398: 51                                              push   ecx
  004ab399: 53                                              push   ebx
  004ab39a: 8b ce                                           mov    ecx,esi
  004ab39c: e8 cf 18 00 00                                  call   0x4acc70
  004ab3a1: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ab3a4: 5f                                              pop    edi
  004ab3a5: 8b c6                                           mov    eax,esi
  004ab3a7: 5e                                              pop    esi
  004ab3a8: 5b                                              pop    ebx
  004ab3a9: 5d                                              pop    ebp
  004ab3aa: c2 04 00                                        ret    0x4
  004ab430: 55                                              push   ebp
  004ab431: 8b ec                                           mov    ebp,esp
  004ab433: 6a ff                                           push   0xffffffff
  004ab435: 68 ca c3 4d 00                                  push   0x4dc3ca
  004ab43a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004ab440: 50                                              push   eax
  004ab441: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004ab448: 83 ec 08                                        sub    esp,0x8
  004ab44b: 53                                              push   ebx
  004ab44c: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004ab44f: 56                                              push   esi
  004ab450: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004ab453: 57                                              push   edi
  004ab454: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004ab457: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004ab45a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004ab45d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004ab464: 85 ff                                           test   edi,edi
  004ab466: 0f 86 98 01 00 00                               jbe    0x4ab604
  004ab46c: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004ab46f: 85 f6                                           test   esi,esi
  004ab471: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004ab475: 74 08                                           je     0x4ab47f
  004ab477: 53                                              push   ebx
  004ab478: 8b ce                                           mov    ecx,esi
  004ab47a: e8 a1 01 00 00                                  call   0x4ab620
  004ab47f: 4f                                              dec    edi
  004ab480: 81 c6 e4 00 00 00                               add    esi,0xe4
  004ab486: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004ab48a: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004ab48d: eb d5                                           jmp    0x4ab464
  004ab604: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ab607: 5f                                              pop    edi
  004ab608: 8b c6                                           mov    eax,esi
  004ab60a: 5e                                              pop    esi
  004ab60b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ab612: 5b                                              pop    ebx
  004ab613: 8b e5                                           mov    esp,ebp
  004ab615: 5d                                              pop    ebp
  004ab616: c2 0c 00                                        ret    0xc
  004ab9c0: 55                                              push   ebp
  004ab9c1: 8b ec                                           mov    ebp,esp
  004ab9c3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ab9c6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004ab9c8: 8d 14 c0                                        lea    edx,[eax+eax*8]
  004ab9cb: 8d 04 50                                        lea    eax,[eax+edx*2]
  004ab9ce: 8d 04 40                                        lea    eax,[eax+eax*2]
  004ab9d1: c1 e0 02                                        shl    eax,0x2
  004ab9d4: 2b c8                                           sub    ecx,eax
  004ab9d6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ab9d9: 89 08                                           mov    DWORD PTR [eax],ecx
  004ab9db: 5d                                              pop    ebp
  004ab9dc: c2 08 00                                        ret    0x8
  004ac420: 55                                              push   ebp
  004ac421: 8b ec                                           mov    ebp,esp
  004ac423: 6a ff                                           push   0xffffffff
  004ac425: 68 5a c5 4d 00                                  push   0x4dc55a
  004ac42a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004ac430: 50                                              push   eax
  004ac431: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004ac438: 83 ec 08                                        sub    esp,0x8
  004ac43b: 53                                              push   ebx
  004ac43c: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004ac43f: 56                                              push   esi
  004ac440: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004ac443: 57                                              push   edi
  004ac444: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004ac447: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004ac44a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004ac44d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004ac454: 3b fb                                           cmp    edi,ebx
  004ac456: 0f 84 9d 01 00 00                               je     0x4ac5f9
  004ac45c: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  004ac45f: 85 f6                                           test   esi,esi
  004ac461: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004ac465: 74 08                                           je     0x4ac46f
  004ac467: 57                                              push   edi
  004ac468: 8b ce                                           mov    ecx,esi
  004ac46a: e8 b1 f1 ff ff                                  call   0x4ab620
  004ac46f: 81 c6 e4 00 00 00                               add    esi,0xe4
  004ac475: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004ac479: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004ac47c: 81 c7 e4 00 00 00                               add    edi,0xe4
  004ac482: eb d0                                           jmp    0x4ac454
  004ac5f9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004ac5fc: 5f                                              pop    edi
  004ac5fd: 8b c6                                           mov    eax,esi
  004ac5ff: 5e                                              pop    esi
  004ac600: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004ac607: 5b                                              pop    ebx
  004ac608: 8b e5                                           mov    esp,ebp
  004ac60a: 5d                                              pop    ebp
  004ac60b: c2 0c 00                                        ret    0xc
  004ac610: 55                                              push   ebp
  004ac611: 8b ec                                           mov    ebp,esp
  004ac613: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ac616: 56                                              push   esi
  004ac617: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004ac61a: 3b f0                                           cmp    esi,eax
  004ac61c: 0f 84 b3 02 00 00                               je     0x4ac8d5
  004ac622: 53                                              push   ebx
  004ac623: 57                                              push   edi
  004ac624: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004ac627: 3b f7                                           cmp    esi,edi
  004ac629: 0f 84 f8 00 00 00                               je     0x4ac727
  004ac62f: 8b cf                                           mov    ecx,edi
  004ac631: e8 aa 02 00 00                                  call   0x4ac8e0
  004ac636: 85 c0                                           test   eax,eax
  004ac638: 8b ce                                           mov    ecx,esi
  004ac63a: 75 0a                                           jne    0x4ac646
  004ac63c: e8 3f d8 ff ff                                  call   0x4a9e80
  004ac641: e9 e1 00 00 00                                  jmp    0x4ac727
  004ac646: e8 95 02 00 00                                  call   0x4ac8e0
  004ac64b: 8b cf                                           mov    ecx,edi
  004ac64d: 8b d8                                           mov    ebx,eax
  004ac64f: e8 8c 02 00 00                                  call   0x4ac8e0
  004ac654: 3b c3                                           cmp    eax,ebx
  004ac656: 77 3b                                           ja     0x4ac693
  004ac658: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ac65b: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004ac65e: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004ac661: 52                                              push   edx
  004ac662: 50                                              push   eax
  004ac663: 51                                              push   ecx
  004ac664: e8 c7 0f 00 00                                  call   0x4ad630
  004ac669: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ac66c: 83 c4 0c                                        add    esp,0xc
  004ac66f: 51                                              push   ecx
  004ac670: 50                                              push   eax
  004ac671: 8b ce                                           mov    ecx,esi
  004ac673: e8 98 02 00 00                                  call   0x4ac910
  004ac678: 8b cf                                           mov    ecx,edi
  004ac67a: e8 61 02 00 00                                  call   0x4ac8e0
  004ac67f: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004ac682: 8d 14 80                                        lea    edx,[eax+eax*4]
  004ac685: 8d 04 50                                        lea    eax,[eax+edx*2]
  004ac688: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004ac68b: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004ac68e: e9 94 00 00 00                                  jmp    0x4ac727
  004ac693: 8b ce                                           mov    ecx,esi
  004ac695: e8 a6 02 00 00                                  call   0x4ac940
  004ac69a: 8b cf                                           mov    ecx,edi
  004ac69c: 8b d8                                           mov    ebx,eax
  004ac69e: e8 3d 02 00 00                                  call   0x4ac8e0
  004ac6a3: 3b c3                                           cmp    eax,ebx
  004ac6a5: 77 3c                                           ja     0x4ac6e3
  004ac6a7: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004ac6aa: 8b ce                                           mov    ecx,esi
  004ac6ac: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004ac6af: e8 2c 02 00 00                                  call   0x4ac8e0
  004ac6b4: 50                                              push   eax
  004ac6b5: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004ac6b8: 51                                              push   ecx
  004ac6b9: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004ac6bc: e8 4f 0f 00 00                                  call   0x4ad610
  004ac6c1: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ac6c4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ac6c7: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004ac6ca: 52                                              push   edx
  004ac6cb: 51                                              push   ecx
  004ac6cc: 50                                              push   eax
  004ac6cd: e8 5e 0f 00 00                                  call   0x4ad630
  004ac6d2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ac6d5: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004ac6d8: 83 c4 0c                                        add    esp,0xc
  004ac6db: 52                                              push   edx
  004ac6dc: 50                                              push   eax
  004ac6dd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ac6e0: 50                                              push   eax
  004ac6e1: eb 3a                                           jmp    0x4ac71d
  004ac6e3: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ac6e6: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ac6e9: 51                                              push   ecx
  004ac6ea: 52                                              push   edx
  004ac6eb: 8b ce                                           mov    ecx,esi
  004ac6ed: e8 1e 02 00 00                                  call   0x4ac910
  004ac6f2: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ac6f5: 50                                              push   eax
  004ac6f6: e8 65 59 f9 ff                                  call   0x442060
  004ac6fb: 83 c4 04                                        add    esp,0x4
  004ac6fe: 8b cf                                           mov    ecx,edi
  004ac700: e8 db 01 00 00                                  call   0x4ac8e0
  004ac705: 50                                              push   eax
  004ac706: 8b ce                                           mov    ecx,esi
  004ac708: e8 23 d7 ff ff                                  call   0x4a9e30
  004ac70d: 84 c0                                           test   al,al
  004ac70f: 74 16                                           je     0x4ac727
  004ac711: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ac714: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004ac717: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004ac71a: 52                                              push   edx
  004ac71b: 50                                              push   eax
  004ac71c: 51                                              push   ecx
  004ac71d: 8b ce                                           mov    ecx,esi
  004ac71f: e8 3c 04 00 00                                  call   0x4acb60
  004ac724: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ac727: 8d 47 10                                        lea    eax,[edi+0x10]
  004ac72a: 50                                              push   eax
  004ac72b: 8d 4e 10                                        lea    ecx,[esi+0x10]
  004ac72e: e8 8d 0c 00 00                                  call   0x4ad3c0
  004ac733: 8a 47 20                                        mov    al,BYTE PTR [edi+0x20]
  004ac736: 88 46 20                                        mov    BYTE PTR [esi+0x20],al
  004ac739: 8b 4f 24                                        mov    ecx,DWORD PTR [edi+0x24]
  004ac73c: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  004ac73f: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004ac745: 8b 02                                           mov    eax,DWORD PTR [edx]
  004ac747: 50                                              push   eax
  004ac748: 6a 00                                           push   0x0
  004ac74a: 8d 47 28                                        lea    eax,[edi+0x28]
  004ac74d: 50                                              push   eax
  004ac74e: 8d 4e 28                                        lea    ecx,[esi+0x28]
  004ac751: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac757: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004ac75d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004ac75f: 52                                              push   edx
  004ac760: 6a 00                                           push   0x0
  004ac762: 8d 47 38                                        lea    eax,[edi+0x38]
  004ac765: 50                                              push   eax
  004ac766: 8d 4e 38                                        lea    ecx,[esi+0x38]
  004ac769: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac76f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ac774: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ac776: 51                                              push   ecx
  004ac777: 6a 00                                           push   0x0
  004ac779: 8d 47 48                                        lea    eax,[edi+0x48]
  004ac77c: 50                                              push   eax
  004ac77d: 8d 4e 48                                        lea    ecx,[esi+0x48]
  004ac780: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac786: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004ac78c: 8b 02                                           mov    eax,DWORD PTR [edx]
  004ac78e: 50                                              push   eax
  004ac78f: 6a 00                                           push   0x0
  004ac791: 8d 47 58                                        lea    eax,[edi+0x58]
  004ac794: 50                                              push   eax
  004ac795: 8d 4e 58                                        lea    ecx,[esi+0x58]
  004ac798: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac79e: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004ac7a4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004ac7a6: 52                                              push   edx
  004ac7a7: 6a 00                                           push   0x0
  004ac7a9: 8d 47 68                                        lea    eax,[edi+0x68]
  004ac7ac: 50                                              push   eax
  004ac7ad: 8d 4e 68                                        lea    ecx,[esi+0x68]
  004ac7b0: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac7b6: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ac7bb: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ac7bd: 51                                              push   ecx
  004ac7be: 6a 00                                           push   0x0
  004ac7c0: 8d 47 78                                        lea    eax,[edi+0x78]
  004ac7c3: 50                                              push   eax
  004ac7c4: 8d 4e 78                                        lea    ecx,[esi+0x78]
  004ac7c7: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac7cd: 8b 97 88 00 00 00                               mov    edx,DWORD PTR [edi+0x88]
  004ac7d3: 89 96 88 00 00 00                               mov    DWORD PTR [esi+0x88],edx
  004ac7d9: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ac7de: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ac7e0: 51                                              push   ecx
  004ac7e1: 6a 00                                           push   0x0
  004ac7e3: 8d 87 8c 00 00 00                               lea    eax,[edi+0x8c]
  004ac7e9: 50                                              push   eax
  004ac7ea: 8d 8e 8c 00 00 00                               lea    ecx,[esi+0x8c]
  004ac7f0: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac7f6: 8b 97 9c 00 00 00                               mov    edx,DWORD PTR [edi+0x9c]
  004ac7fc: 89 96 9c 00 00 00                               mov    DWORD PTR [esi+0x9c],edx
  004ac802: 8b 87 a0 00 00 00                               mov    eax,DWORD PTR [edi+0xa0]
  004ac808: 89 86 a0 00 00 00                               mov    DWORD PTR [esi+0xa0],eax
  004ac80e: 8b 8f a4 00 00 00                               mov    ecx,DWORD PTR [edi+0xa4]
  004ac814: 89 8e a4 00 00 00                               mov    DWORD PTR [esi+0xa4],ecx
  004ac81a: 8b 97 a8 00 00 00                               mov    edx,DWORD PTR [edi+0xa8]
  004ac820: 89 96 a8 00 00 00                               mov    DWORD PTR [esi+0xa8],edx
  004ac826: 8b 87 ac 00 00 00                               mov    eax,DWORD PTR [edi+0xac]
  004ac82c: 89 86 ac 00 00 00                               mov    DWORD PTR [esi+0xac],eax
  004ac832: 8b 8f b0 00 00 00                               mov    ecx,DWORD PTR [edi+0xb0]
  004ac838: 89 8e b0 00 00 00                               mov    DWORD PTR [esi+0xb0],ecx
  004ac83e: 8b 97 b4 00 00 00                               mov    edx,DWORD PTR [edi+0xb4]
  004ac844: 89 96 b4 00 00 00                               mov    DWORD PTR [esi+0xb4],edx
  004ac84a: 8b 87 b8 00 00 00                               mov    eax,DWORD PTR [edi+0xb8]
  004ac850: 89 86 b8 00 00 00                               mov    DWORD PTR [esi+0xb8],eax
  004ac856: 8a 8f bc 00 00 00                               mov    cl,BYTE PTR [edi+0xbc]
  004ac85c: 88 8e bc 00 00 00                               mov    BYTE PTR [esi+0xbc],cl
  004ac862: 8a 97 bd 00 00 00                               mov    dl,BYTE PTR [edi+0xbd]
  004ac868: 88 96 bd 00 00 00                               mov    BYTE PTR [esi+0xbd],dl
  004ac86e: 8a 87 be 00 00 00                               mov    al,BYTE PTR [edi+0xbe]
  004ac874: 88 86 be 00 00 00                               mov    BYTE PTR [esi+0xbe],al
  004ac87a: 8b 8f c0 00 00 00                               mov    ecx,DWORD PTR [edi+0xc0]
  004ac880: 89 8e c0 00 00 00                               mov    DWORD PTR [esi+0xc0],ecx
  004ac886: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004ac88c: 8b 02                                           mov    eax,DWORD PTR [edx]
  004ac88e: 50                                              push   eax
  004ac88f: 6a 00                                           push   0x0
  004ac891: 8d 87 c4 00 00 00                               lea    eax,[edi+0xc4]
  004ac897: 50                                              push   eax
  004ac898: 8d 8e c4 00 00 00                               lea    ecx,[esi+0xc4]
  004ac89e: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac8a4: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004ac8aa: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004ac8ac: 52                                              push   edx
  004ac8ad: 6a 00                                           push   0x0
  004ac8af: 8d 87 d4 00 00 00                               lea    eax,[edi+0xd4]
  004ac8b5: 50                                              push   eax
  004ac8b6: 8d 8e d4 00 00 00                               lea    ecx,[esi+0xd4]
  004ac8bc: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac8c2: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ac8c5: 81 c6 e4 00 00 00                               add    esi,0xe4
  004ac8cb: 3b f0                                           cmp    esi,eax
  004ac8cd: 0f 85 54 fd ff ff                               jne    0x4ac627
  004ac8d3: 5f                                              pop    edi
  004ac8d4: 5b                                              pop    ebx
  004ac8d5: 5e                                              pop    esi
  004ac8d6: 5d                                              pop    ebp
  004ac8d7: c3                                              ret
  004ac970: 55                                              push   ebp
  004ac971: 8b ec                                           mov    ebp,esp
  004ac973: 53                                              push   ebx
  004ac974: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004ac977: 56                                              push   esi
  004ac978: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004ac97b: 3b de                                           cmp    ebx,esi
  004ac97d: 0f 84 c2 01 00 00                               je     0x4acb45
  004ac983: 57                                              push   edi
  004ac984: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  004ac987: 81 ee e4 00 00 00                               sub    esi,0xe4
  004ac98d: 81 ef e4 00 00 00                               sub    edi,0xe4
  004ac993: 56                                              push   esi
  004ac994: 8b cf                                           mov    ecx,edi
  004ac996: e8 65 03 00 00                                  call   0x4acd00
  004ac99b: 8d 46 10                                        lea    eax,[esi+0x10]
  004ac99e: 50                                              push   eax
  004ac99f: 8d 4f 10                                        lea    ecx,[edi+0x10]
  004ac9a2: e8 19 0a 00 00                                  call   0x4ad3c0
  004ac9a7: 8a 4e 20                                        mov    cl,BYTE PTR [esi+0x20]
  004ac9aa: 88 4f 20                                        mov    BYTE PTR [edi+0x20],cl
  004ac9ad: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  004ac9b0: 89 57 24                                        mov    DWORD PTR [edi+0x24],edx
  004ac9b3: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ac9b8: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ac9ba: 51                                              push   ecx
  004ac9bb: 6a 00                                           push   0x0
  004ac9bd: 8d 56 28                                        lea    edx,[esi+0x28]
  004ac9c0: 52                                              push   edx
  004ac9c1: 8d 4f 28                                        lea    ecx,[edi+0x28]
  004ac9c4: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac9ca: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ac9cf: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ac9d1: 51                                              push   ecx
  004ac9d2: 6a 00                                           push   0x0
  004ac9d4: 8d 56 38                                        lea    edx,[esi+0x38]
  004ac9d7: 52                                              push   edx
  004ac9d8: 8d 4f 38                                        lea    ecx,[edi+0x38]
  004ac9db: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac9e1: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ac9e6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ac9e8: 51                                              push   ecx
  004ac9e9: 6a 00                                           push   0x0
  004ac9eb: 8d 56 48                                        lea    edx,[esi+0x48]
  004ac9ee: 52                                              push   edx
  004ac9ef: 8d 4f 48                                        lea    ecx,[edi+0x48]
  004ac9f2: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ac9f8: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004ac9fd: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004ac9ff: 51                                              push   ecx
  004aca00: 6a 00                                           push   0x0
  004aca02: 8d 56 58                                        lea    edx,[esi+0x58]
  004aca05: 52                                              push   edx
  004aca06: 8d 4f 58                                        lea    ecx,[edi+0x58]
  004aca09: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004aca0f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004aca14: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004aca16: 51                                              push   ecx
  004aca17: 6a 00                                           push   0x0
  004aca19: 8d 56 68                                        lea    edx,[esi+0x68]
  004aca1c: 52                                              push   edx
  004aca1d: 8d 4f 68                                        lea    ecx,[edi+0x68]
  004aca20: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004aca26: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004aca2b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004aca2d: 51                                              push   ecx
  004aca2e: 6a 00                                           push   0x0
  004aca30: 8d 56 78                                        lea    edx,[esi+0x78]
  004aca33: 52                                              push   edx
  004aca34: 8d 4f 78                                        lea    ecx,[edi+0x78]
  004aca37: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004aca3d: 8b 86 88 00 00 00                               mov    eax,DWORD PTR [esi+0x88]
  004aca43: 89 87 88 00 00 00                               mov    DWORD PTR [edi+0x88],eax
  004aca49: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004aca4f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004aca51: 52                                              push   edx
  004aca52: 6a 00                                           push   0x0
  004aca54: 8d 86 8c 00 00 00                               lea    eax,[esi+0x8c]
  004aca5a: 50                                              push   eax
  004aca5b: 8d 8f 8c 00 00 00                               lea    ecx,[edi+0x8c]
  004aca61: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004aca67: 8b 8e 9c 00 00 00                               mov    ecx,DWORD PTR [esi+0x9c]
  004aca6d: 89 8f 9c 00 00 00                               mov    DWORD PTR [edi+0x9c],ecx
  004aca73: 8b 96 a0 00 00 00                               mov    edx,DWORD PTR [esi+0xa0]
  004aca79: 89 97 a0 00 00 00                               mov    DWORD PTR [edi+0xa0],edx
  004aca7f: 8b 86 a4 00 00 00                               mov    eax,DWORD PTR [esi+0xa4]
  004aca85: 89 87 a4 00 00 00                               mov    DWORD PTR [edi+0xa4],eax
  004aca8b: 8b 8e a8 00 00 00                               mov    ecx,DWORD PTR [esi+0xa8]
  004aca91: 89 8f a8 00 00 00                               mov    DWORD PTR [edi+0xa8],ecx
  004aca97: 8b 96 ac 00 00 00                               mov    edx,DWORD PTR [esi+0xac]
  004aca9d: 89 97 ac 00 00 00                               mov    DWORD PTR [edi+0xac],edx
  004acaa3: 8b 86 b0 00 00 00                               mov    eax,DWORD PTR [esi+0xb0]
  004acaa9: 89 87 b0 00 00 00                               mov    DWORD PTR [edi+0xb0],eax
  004acaaf: 8b 8e b4 00 00 00                               mov    ecx,DWORD PTR [esi+0xb4]
  004acab5: 89 8f b4 00 00 00                               mov    DWORD PTR [edi+0xb4],ecx
  004acabb: 8b 96 b8 00 00 00                               mov    edx,DWORD PTR [esi+0xb8]
  004acac1: 89 97 b8 00 00 00                               mov    DWORD PTR [edi+0xb8],edx
  004acac7: 8a 86 bc 00 00 00                               mov    al,BYTE PTR [esi+0xbc]
  004acacd: 88 87 bc 00 00 00                               mov    BYTE PTR [edi+0xbc],al
  004acad3: 8a 8e bd 00 00 00                               mov    cl,BYTE PTR [esi+0xbd]
  004acad9: 88 8f bd 00 00 00                               mov    BYTE PTR [edi+0xbd],cl
  004acadf: 8a 96 be 00 00 00                               mov    dl,BYTE PTR [esi+0xbe]
  004acae5: 88 97 be 00 00 00                               mov    BYTE PTR [edi+0xbe],dl
  004acaeb: 8b 86 c0 00 00 00                               mov    eax,DWORD PTR [esi+0xc0]
  004acaf1: 89 87 c0 00 00 00                               mov    DWORD PTR [edi+0xc0],eax
  004acaf7: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004acafd: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004acaff: 52                                              push   edx
  004acb00: 6a 00                                           push   0x0
  004acb02: 8d 86 c4 00 00 00                               lea    eax,[esi+0xc4]
  004acb08: 50                                              push   eax
  004acb09: 8d 8f c4 00 00 00                               lea    ecx,[edi+0xc4]
  004acb0f: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004acb15: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004acb1b: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004acb1d: 52                                              push   edx
  004acb1e: 6a 00                                           push   0x0
  004acb20: 8d 86 d4 00 00 00                               lea    eax,[esi+0xd4]
  004acb26: 50                                              push   eax
  004acb27: 8d 8f d4 00 00 00                               lea    ecx,[edi+0xd4]
  004acb2d: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004acb33: 3b f3                                           cmp    esi,ebx
  004acb35: 0f 85 4c fe ff ff                               jne    0x4ac987
  004acb3b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004acb3e: 89 38                                           mov    DWORD PTR [eax],edi
  004acb40: 5f                                              pop    edi
  004acb41: 5e                                              pop    esi
  004acb42: 5b                                              pop    ebx
  004acb43: 5d                                              pop    ebp
  004acb44: c3                                              ret
  004acb45: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004acb48: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004acb4b: 5e                                              pop    esi
  004acb4c: 89 08                                           mov    DWORD PTR [eax],ecx
  004acb4e: 5b                                              pop    ebx
  004acb4f: 5d                                              pop    ebp
  004acb50: c3                                              ret
  004acb60: 55                                              push   ebp
  004acb61: 8b ec                                           mov    ebp,esp
  004acb63: 6a ff                                           push   0xffffffff
  004acb65: 68 89 c5 4d 00                                  push   0x4dc589
  004acb6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004acb70: 50                                              push   eax
  004acb71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004acb78: 83 ec 08                                        sub    esp,0x8
  004acb7b: 53                                              push   ebx
  004acb7c: 56                                              push   esi
  004acb7d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004acb80: 57                                              push   edi
  004acb81: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004acb84: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004acb87: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004acb8a: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004acb91: 3b 75 0c                                        cmp    esi,DWORD PTR [ebp+0xc]
  004acb94: 0f 84 ba 00 00 00                               je     0x4acc54
  004acb9a: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004acb9d: 85 ff                                           test   edi,edi
  004acb9f: 74 7f                                           je     0x4acc20
  004acba1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004acba4: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004acba7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004acbaa: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004acbad: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004acbb0: 89 57 0c                                        mov    DWORD PTR [edi+0xc],edx
  004acbb3: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004acbb6: 89 47 10                                        mov    DWORD PTR [edi+0x10],eax
  004acbb9: 8a 4e 14                                        mov    cl,BYTE PTR [esi+0x14]
  004acbbc: 88 4f 14                                        mov    BYTE PTR [edi+0x14],cl
  004acbbf: c7 07 28 f9 4d 00                               mov    DWORD PTR [edi],0x4df928
  004acbc5: 8b 56 18                                        mov    edx,DWORD PTR [esi+0x18]
  004acbc8: 89 57 18                                        mov    DWORD PTR [edi+0x18],edx
  004acbcb: 8a 46 1c                                        mov    al,BYTE PTR [esi+0x1c]
  004acbce: 8d 5f 1c                                        lea    ebx,[edi+0x1c]
  004acbd1: 88 03                                           mov    BYTE PTR [ebx],al
  004acbd3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004acbd6: 85 c0                                           test   eax,eax
  004acbd8: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004acbdc: 75 04                                           jne    0x4acbe2
  004acbde: 33 d2                                           xor    edx,edx
  004acbe0: eb 16                                           jmp    0x4acbf8
  004acbe2: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  004acbe5: 2b c8                                           sub    ecx,eax
  004acbe7: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004acbec: f7 e9                                           imul   ecx
  004acbee: c1 fa 03                                        sar    edx,0x3
  004acbf1: 8b c2                                           mov    eax,edx
  004acbf3: c1 e8 1f                                        shr    eax,0x1f
  004acbf6: 03 d0                                           add    edx,eax
  004acbf8: 52                                              push   edx
  004acbf9: 8b cb                                           mov    ecx,ebx
  004acbfb: e8 c0 e6 ff ff                                  call   0x4ab2c0
  004acc00: 84 c0                                           test   al,al
  004acc02: 74 16                                           je     0x4acc1a
  004acc04: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004acc07: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004acc0a: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004acc0d: 52                                              push   edx
  004acc0e: 50                                              push   eax
  004acc0f: 51                                              push   ecx
  004acc10: 8b cb                                           mov    ecx,ebx
  004acc12: e8 c9 ed ff ff                                  call   0x4ab9e0
  004acc17: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004acc1a: c7 07 28 fa 4d 00                               mov    DWORD PTR [edi],0x4dfa28
  004acc20: 83 c7 2c                                        add    edi,0x2c
  004acc23: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004acc27: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004acc2a: 83 c6 2c                                        add    esi,0x2c
  004acc2d: e9 5f ff ff ff                                  jmp    0x4acb91
  004acc54: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004acc57: 8b c7                                           mov    eax,edi
  004acc59: 5f                                              pop    edi
  004acc5a: 5e                                              pop    esi
  004acc5b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004acc62: 5b                                              pop    ebx
  004acc63: 8b e5                                           mov    esp,ebp
  004acc65: 5d                                              pop    ebp
  004acc66: c2 0c 00                                        ret    0xc
  004accd0: 55                                              push   ebp
  004accd1: 8b ec                                           mov    ebp,esp
  004accd3: 56                                              push   esi
  004accd4: 8b f1                                           mov    esi,ecx
  004accd6: e8 b5 c2 ff ff                                  call   0x4a8f90
  004accdb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004accdf: 74 09                                           je     0x4accea
  004acce1: 56                                              push   esi
  004acce2: e8 79 53 f9 ff                                  call   0x442060
  004acce7: 83 c4 04                                        add    esp,0x4
  004accea: 8b c6                                           mov    eax,esi
  004accec: 5e                                              pop    esi
  004acced: 5d                                              pop    ebp
  004accee: c2 04 00                                        ret    0x4
  004ada90: 55                                              push   ebp
  004ada91: 8b ec                                           mov    ebp,esp
  004ada93: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ada96: 56                                              push   esi
  004ada97: 8b f1                                           mov    esi,ecx
  004ada99: 50                                              push   eax
  004ada9a: e8 a1 fd ff ff                                  call   0x4ad840
  004ada9f: 8a 4d 0b                                        mov    cl,BYTE PTR [ebp+0xb]
  004adaa2: 33 c0                                           xor    eax,eax
  004adaa4: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004adaa7: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004adaaa: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004adaad: 88 4e 18                                        mov    BYTE PTR [esi+0x18],cl
  004adab0: c7 06 8c fa 4d 00                               mov    DWORD PTR [esi],0x4dfa8c
  004adab6: 8b c6                                           mov    eax,esi
  004adab8: 5e                                              pop    esi
  004adab9: 5d                                              pop    ebp
  004adaba: c2 04 00                                        ret    0x4
  004b69b0: 55                                              push   ebp
  004b69b1: 8b ec                                           mov    ebp,esp
  004b69b3: 53                                              push   ebx
  004b69b4: 8b d9                                           mov    ebx,ecx
  004b69b6: 8b 43 48                                        mov    eax,DWORD PTR [ebx+0x48]
  004b69b9: 85 c0                                           test   eax,eax
  004b69bb: 56                                              push   esi
  004b69bc: 75 04                                           jne    0x4b69c2
  004b69be: 33 f6                                           xor    esi,esi
  004b69c0: eb 02                                           jmp    0x4b69c4
  004b69c2: 8b 30                                           mov    esi,DWORD PTR [eax]
  004b69c4: 3b 73 48                                        cmp    esi,DWORD PTR [ebx+0x48]
  004b69c7: 74 21                                           je     0x4b69ea
  004b69c9: 57                                              push   edi
  004b69ca: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004b69cd: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004b69d0: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004b69d3: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004b69d6: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004b69d9: 51                                              push   ecx
  004b69da: 50                                              push   eax
  004b69db: 8b cf                                           mov    ecx,edi
  004b69dd: e8 be e6 ff ff                                  call   0x4b50a0
  004b69e2: 8b 36                                           mov    esi,DWORD PTR [esi]
  004b69e4: 3b 73 48                                        cmp    esi,DWORD PTR [ebx+0x48]
  004b69e7: 75 e4                                           jne    0x4b69cd
  004b69e9: 5f                                              pop    edi
  004b69ea: 5e                                              pop    esi
  004b69eb: 5b                                              pop    ebx
  004b69ec: 5d                                              pop    ebp
  004b69ed: c2 04 00                                        ret    0x4
  004ba350: 8d 41 30                                        lea    eax,[ecx+0x30]
  004ba353: c3                                              ret
  004c4860: 55                                              push   ebp
  004c4861: 8b ec                                           mov    ebp,esp
  004c4863: 6a ff                                           push   0xffffffff
  004c4865: 68 80 d6 4d 00                                  push   0x4dd680
  004c486a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004c4870: 50                                              push   eax
  004c4871: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004c4878: 83 ec 48                                        sub    esp,0x48
  004c487b: 53                                              push   ebx
  004c487c: 56                                              push   esi
  004c487d: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004c4880: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c4882: 57                                              push   edi
  004c4883: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004c4886: 51                                              push   ecx
  004c4887: 8b ce                                           mov    ecx,esi
  004c4889: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004c488c: 33 d2                                           xor    edx,edx
  004c488e: 66 8b 50 08                                     mov    dx,WORD PTR [eax+0x8]
  004c4892: 52                                              push   edx
  004c4893: e8 28 d6 fa ff                                  call   0x471ec0
  004c4898: 8b f8                                           mov    edi,eax
  004c489a: 83 c4 04                                        add    esp,0x4
  004c489d: 85 ff                                           test   edi,edi
  004c489f: 0f 84 ac 01 00 00                               je     0x4c4a51
  004c48a5: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c48a7: 6a 00                                           push   0x0
  004c48a9: 6a 1e                                           push   0x1e
  004c48ab: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004c48ae: 51                                              push   ecx
  004c48af: 8b ce                                           mov    ecx,esi
  004c48b1: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004c48b4: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004c48b6: 83 ec 0c                                        sub    esp,0xc
  004c48b9: 8b d4                                           mov    edx,esp
  004c48bb: 89 0a                                           mov    DWORD PTR [edx],ecx
  004c48bd: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004c48c0: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004c48c3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004c48c6: 8b cf                                           mov    ecx,edi
  004c48c8: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  004c48cb: e8 80 d6 fe ff                                  call   0x4b1f50
  004c48d0: 8b d8                                           mov    ebx,eax
  004c48d2: 85 db                                           test   ebx,ebx
  004c48d4: 0f 84 77 01 00 00                               je     0x4c4a51
  004c48da: 8b 4b 24                                        mov    ecx,DWORD PTR [ebx+0x24]
  004c48dd: 89 4b 20                                        mov    DWORD PTR [ebx+0x20],ecx
  004c48e0: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  004c48e7: c6 43 34 08                                     mov    BYTE PTR [ebx+0x34],0x8
  004c48eb: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  004c48ee: 85 c0                                           test   eax,eax
  004c48f0: 74 0a                                           je     0x4c48fc
  004c48f2: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  004c48f5: 8b 02                                           mov    eax,DWORD PTR [edx]
  004c48f7: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  004c48fa: eb 07                                           jmp    0x4c4903
  004c48fc: c7 43 40 01 00 00 00                            mov    DWORD PTR [ebx+0x40],0x1
  004c4903: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  004c4906: 85 c0                                           test   eax,eax
  004c4908: 0f 84 29 01 00 00                               je     0x4c4a37
  004c490e: 8b 78 08                                        mov    edi,DWORD PTR [eax+0x8]
  004c4911: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004c4914: 8b 17                                           mov    edx,DWORD PTR [edi]
  004c4916: 6a 00                                           push   0x0
  004c4918: 50                                              push   eax
  004c4919: 8b cf                                           mov    ecx,edi
  004c491b: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004c491e: 85 c0                                           test   eax,eax
  004c4920: 74 c9                                           je     0x4c48eb
  004c4922: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004c4925: 85 c0                                           test   eax,eax
  004c4927: 0f 84 b5 00 00 00                               je     0x4c49e2
  004c492d: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c492f: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004c4932: 50                                              push   eax
  004c4933: 8b ce                                           mov    ecx,esi
  004c4935: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004c4938: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c493b: e8 b0 14 fc ff                                  call   0x485df0
  004c4940: 6a 40                                           push   0x40
  004c4942: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c4945: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004c494c: e8 ff 17 fc ff                                  call   0x486150
  004c4951: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004c4954: 51                                              push   ecx
  004c4955: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c4958: e8 f3 17 fc ff                                  call   0x486150
  004c495d: 8b cf                                           mov    ecx,edi
  004c495f: e8 9c 6d fc ff                                  call   0x48b700
  004c4964: 50                                              push   eax
  004c4965: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c4968: e8 83 18 fc ff                                  call   0x4861f0
  004c496d: 8b cf                                           mov    ecx,edi
  004c496f: e8 8c 6d fc ff                                  call   0x48b700
  004c4974: 50                                              push   eax
  004c4975: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c4978: e8 73 18 fc ff                                  call   0x4861f0
  004c497d: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  004c4980: 52                                              push   edx
  004c4981: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c4984: e8 c7 17 fc ff                                  call   0x486150
  004c4989: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004c498c: 50                                              push   eax
  004c498d: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c4990: e8 bb 17 fc ff                                  call   0x486150
  004c4995: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004c4998: 51                                              push   ecx
  004c4999: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c499c: e8 af 17 fc ff                                  call   0x486150
  004c49a1: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004c49a4: 52                                              push   edx
  004c49a5: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c49a8: e8 a3 17 fc ff                                  call   0x486150
  004c49ad: e8 5e de f9 ff                                  call   0x462810
  004c49b2: 50                                              push   eax
  004c49b3: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c49b6: e8 35 18 fc ff                                  call   0x4861f0
  004c49bb: 6a 00                                           push   0x0
  004c49bd: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c49c0: e8 2b 18 fc ff                                  call   0x4861f0
  004c49c5: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c49c7: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c49ca: 51                                              push   ecx
  004c49cb: 8b ce                                           mov    ecx,esi
  004c49cd: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  004c49d3: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c49d6: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004c49dd: e8 9e 14 fc ff                                  call   0x485e80
  004c49e2: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004c49e5: e8 06 14 fc ff                                  call   0x485df0
  004c49ea: 6a 0b                                           push   0xb
  004c49ec: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004c49ef: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004c49f6: e8 55 17 fc ff                                  call   0x486150
  004c49fb: 6a 00                                           push   0x0
  004c49fd: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004c4a00: e8 ab 17 fc ff                                  call   0x4861b0
  004c4a05: 8b cf                                           mov    ecx,edi
  004c4a07: e8 f4 6c fc ff                                  call   0x48b700
  004c4a0c: 50                                              push   eax
  004c4a0d: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004c4a10: e8 db 17 fc ff                                  call   0x4861f0
  004c4a15: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c4a17: 8d 45 ac                                        lea    eax,[ebp-0x54]
  004c4a1a: 50                                              push   eax
  004c4a1b: 8b ce                                           mov    ecx,esi
  004c4a1d: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  004c4a23: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004c4a26: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004c4a2d: e8 4e 14 fc ff                                  call   0x485e80
  004c4a32: e9 b4 fe ff ff                                  jmp    0x4c48eb
  004c4a37: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  004c4a3a: 85 c0                                           test   eax,eax
  004c4a3c: 74 04                                           je     0x4c4a42
  004c4a3e: c6 43 34 07                                     mov    BYTE PTR [ebx+0x34],0x7
  004c4a42: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  004c4a49: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004c4a4b: 6a 01                                           push   0x1
  004c4a4d: 8b cb                                           mov    ecx,ebx
  004c4a4f: ff 12                                           call   DWORD PTR [edx]
  004c4a51: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c4a54: 5f                                              pop    edi
  004c4a55: 5e                                              pop    esi
  004c4a56: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c4a5d: 5b                                              pop    ebx
  004c4a5e: 8b e5                                           mov    esp,ebp
  004c4a60: 5d                                              pop    ebp
  004c4a61: c3                                              ret
  004c4a70: 55                                              push   ebp
  004c4a71: 8b ec                                           mov    ebp,esp
  004c4a73: 6a ff                                           push   0xffffffff
  004c4a75: 68 98 d6 4d 00                                  push   0x4dd698
  004c4a7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004c4a80: 50                                              push   eax
  004c4a81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004c4a88: 83 ec 3c                                        sub    esp,0x3c
  004c4a8b: 53                                              push   ebx
  004c4a8c: 56                                              push   esi
  004c4a8d: 57                                              push   edi
  004c4a8e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004c4a91: 8b 07                                           mov    eax,DWORD PTR [edi]
  004c4a93: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004c4a96: 51                                              push   ecx
  004c4a97: 8b cf                                           mov    ecx,edi
  004c4a99: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004c4a9c: 33 d2                                           xor    edx,edx
  004c4a9e: 66 8b 50 08                                     mov    dx,WORD PTR [eax+0x8]
  004c4aa2: 52                                              push   edx
  004c4aa3: e8 18 d4 fa ff                                  call   0x471ec0
  004c4aa8: 8b f0                                           mov    esi,eax
  004c4aaa: 83 c4 04                                        add    esp,0x4
  004c4aad: 85 f6                                           test   esi,esi
  004c4aaf: 0f 84 95 01 00 00                               je     0x4c4c4a
  004c4ab5: 8b 07                                           mov    eax,DWORD PTR [edi]
  004c4ab7: 6a 00                                           push   0x0
  004c4ab9: 6a 1e                                           push   0x1e
  004c4abb: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004c4abe: 51                                              push   ecx
  004c4abf: 8b cf                                           mov    ecx,edi
  004c4ac1: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004c4ac4: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004c4ac6: 83 ec 0c                                        sub    esp,0xc
  004c4ac9: 8b d4                                           mov    edx,esp
  004c4acb: 89 0a                                           mov    DWORD PTR [edx],ecx
  004c4acd: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004c4ad0: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004c4ad3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004c4ad6: 8b ce                                           mov    ecx,esi
  004c4ad8: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  004c4adb: e8 70 d4 fe ff                                  call   0x4b1f50
  004c4ae0: 8b d8                                           mov    ebx,eax
  004c4ae2: 85 db                                           test   ebx,ebx
  004c4ae4: 0f 84 60 01 00 00                               je     0x4c4c4a
  004c4aea: 8b 4b 24                                        mov    ecx,DWORD PTR [ebx+0x24]
  004c4aed: 89 4b 20                                        mov    DWORD PTR [ebx+0x20],ecx
  004c4af0: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  004c4af7: c6 43 34 08                                     mov    BYTE PTR [ebx+0x34],0x8
  004c4afb: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  004c4afe: 85 c0                                           test   eax,eax
  004c4b00: 74 0a                                           je     0x4c4b0c
  004c4b02: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  004c4b05: 8b 02                                           mov    eax,DWORD PTR [edx]
  004c4b07: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  004c4b0a: eb 07                                           jmp    0x4c4b13
  004c4b0c: c7 43 40 01 00 00 00                            mov    DWORD PTR [ebx+0x40],0x1
  004c4b13: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  004c4b16: 85 c0                                           test   eax,eax
  004c4b18: 0f 84 12 01 00 00                               je     0x4c4c30
  004c4b1e: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  004c4b21: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004c4b24: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c4b26: 6a 00                                           push   0x0
  004c4b28: 50                                              push   eax
  004c4b29: 8b ce                                           mov    ecx,esi
  004c4b2b: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004c4b2e: 85 c0                                           test   eax,eax
  004c4b30: 74 c9                                           je     0x4c4afb
  004c4b32: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4b35: e8 b6 12 fc ff                                  call   0x485df0
  004c4b3a: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c4b3c: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4b3f: 51                                              push   ecx
  004c4b40: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004c4b43: 50                                              push   eax
  004c4b44: 8b ce                                           mov    ecx,esi
  004c4b46: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004c4b4d: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004c4b50: 8b 10                                           mov    edx,DWORD PTR [eax]
  004c4b52: 83 ec 0c                                        sub    esp,0xc
  004c4b55: 8b cc                                           mov    ecx,esp
  004c4b57: 89 11                                           mov    DWORD PTR [ecx],edx
  004c4b59: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004c4b5c: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004c4b5f: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004c4b62: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004c4b65: 8b ce                                           mov    ecx,esi
  004c4b67: e8 34 ad fc ff                                  call   0x48f8a0
  004c4b6c: 8b 17                                           mov    edx,DWORD PTR [edi]
  004c4b6e: 8d 45 b8                                        lea    eax,[ebp-0x48]
  004c4b71: 50                                              push   eax
  004c4b72: 8b cf                                           mov    ecx,edi
  004c4b74: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  004c4b7a: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004c4b7d: 85 c0                                           test   eax,eax
  004c4b7f: 0f 84 97 00 00 00                               je     0x4c4c1c
  004c4b85: 8b 17                                           mov    edx,DWORD PTR [edi]
  004c4b87: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004c4b8a: 50                                              push   eax
  004c4b8b: 8b cf                                           mov    ecx,edi
  004c4b8d: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004c4b90: 6a 40                                           push   0x40
  004c4b92: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4b95: e8 b6 15 fc ff                                  call   0x486150
  004c4b9a: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004c4b9d: 51                                              push   ecx
  004c4b9e: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4ba1: e8 aa 15 fc ff                                  call   0x486150
  004c4ba6: 8b ce                                           mov    ecx,esi
  004c4ba8: e8 53 6b fc ff                                  call   0x48b700
  004c4bad: 50                                              push   eax
  004c4bae: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4bb1: e8 3a 16 fc ff                                  call   0x4861f0
  004c4bb6: 8b ce                                           mov    ecx,esi
  004c4bb8: e8 43 6b fc ff                                  call   0x48b700
  004c4bbd: 50                                              push   eax
  004c4bbe: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4bc1: e8 2a 16 fc ff                                  call   0x4861f0
  004c4bc6: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  004c4bc9: 52                                              push   edx
  004c4bca: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4bcd: e8 7e 15 fc ff                                  call   0x486150
  004c4bd2: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004c4bd5: 50                                              push   eax
  004c4bd6: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4bd9: e8 72 15 fc ff                                  call   0x486150
  004c4bde: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004c4be1: 51                                              push   ecx
  004c4be2: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4be5: e8 66 15 fc ff                                  call   0x486150
  004c4bea: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004c4bed: 52                                              push   edx
  004c4bee: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4bf1: e8 5a 15 fc ff                                  call   0x486150
  004c4bf6: e8 15 dc f9 ff                                  call   0x462810
  004c4bfb: 50                                              push   eax
  004c4bfc: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4bff: e8 ec 15 fc ff                                  call   0x4861f0
  004c4c04: 6a 00                                           push   0x0
  004c4c06: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4c09: e8 e2 15 fc ff                                  call   0x4861f0
  004c4c0e: 8b 07                                           mov    eax,DWORD PTR [edi]
  004c4c10: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4c13: 51                                              push   ecx
  004c4c14: 8b cf                                           mov    ecx,edi
  004c4c16: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  004c4c1c: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004c4c1f: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004c4c26: e8 55 12 fc ff                                  call   0x485e80
  004c4c2b: e9 cb fe ff ff                                  jmp    0x4c4afb
  004c4c30: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  004c4c33: 85 c0                                           test   eax,eax
  004c4c35: 74 04                                           je     0x4c4c3b
  004c4c37: c6 43 34 07                                     mov    BYTE PTR [ebx+0x34],0x7
  004c4c3b: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  004c4c42: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004c4c44: 6a 01                                           push   0x1
  004c4c46: 8b cb                                           mov    ecx,ebx
  004c4c48: ff 12                                           call   DWORD PTR [edx]
  004c4c4a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c4c4d: 5f                                              pop    edi
  004c4c4e: 5e                                              pop    esi
  004c4c4f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c4c56: 5b                                              pop    ebx
  004c4c57: 8b e5                                           mov    esp,ebp
  004c4c59: 5d                                              pop    ebp
  004c4c5a: c3                                              ret
  004c5f90: 55                                              push   ebp
  004c5f91: 8b ec                                           mov    ebp,esp
  004c5f93: 6a ff                                           push   0xffffffff
  004c5f95: 68 c9 d8 4d 00                                  push   0x4dd8c9
  004c5f9a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004c5fa0: 50                                              push   eax
  004c5fa1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004c5fa8: 51                                              push   ecx
  004c5fa9: 56                                              push   esi
  004c5faa: 8b f1                                           mov    esi,ecx
  004c5fac: 8d 4e 10                                        lea    ecx,[esi+0x10]
  004c5faf: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004c5fb2: c7 06 d4 e5 4d 00                               mov    DWORD PTR [esi],0x4de5d4
  004c5fb8: e8 03 37 f4 ff                                  call   0x4096c0
  004c5fbd: 8d 8e 80 00 00 00                               lea    ecx,[esi+0x80]
  004c5fc3: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004c5fca: e8 f1 36 f4 ff                                  call   0x4096c0
  004c5fcf: 8d 8e f0 00 00 00                               lea    ecx,[esi+0xf0]
  004c5fd5: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004c5fd9: e8 e2 36 f4 ff                                  call   0x4096c0
  004c5fde: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c5fe1: c7 06 cc fd 4d 00                               mov    DWORD PTR [esi],0x4dfdcc
  004c5fe7: 8b c6                                           mov    eax,esi
  004c5fe9: 5e                                              pop    esi
  004c5fea: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c5ff1: 8b e5                                           mov    esp,ebp
  004c5ff3: 5d                                              pop    ebp
  004c5ff4: c3                                              ret
  004c6a90: 55                                              push   ebp
  004c6a91: 8b ec                                           mov    ebp,esp
  004c6a93: 6a ff                                           push   0xffffffff
  004c6a95: 68 d8 d9 4d 00                                  push   0x4dd9d8
  004c6a9a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004c6aa0: 50                                              push   eax
  004c6aa1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004c6aa8: 83 ec 24                                        sub    esp,0x24
  004c6aab: 53                                              push   ebx
  004c6aac: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004c6aaf: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004c6ab1: 56                                              push   esi
  004c6ab2: 57                                              push   edi
  004c6ab3: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004c6ab6: 51                                              push   ecx
  004c6ab7: 8b cb                                           mov    ecx,ebx
  004c6ab9: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004c6abc: 33 d2                                           xor    edx,edx
  004c6abe: 66 8b 50 08                                     mov    dx,WORD PTR [eax+0x8]
  004c6ac2: 52                                              push   edx
  004c6ac3: e8 f8 b3 fa ff                                  call   0x471ec0
  004c6ac8: 8b f0                                           mov    esi,eax
  004c6aca: 83 c4 04                                        add    esp,0x4
  004c6acd: 85 f6                                           test   esi,esi
  004c6acf: 0f 84 e9 00 00 00                               je     0x4c6bbe
  004c6ad5: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004c6ad7: 6a 00                                           push   0x0
  004c6ad9: 6a 1e                                           push   0x1e
  004c6adb: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004c6ade: 51                                              push   ecx
  004c6adf: 8b cb                                           mov    ecx,ebx
  004c6ae1: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004c6ae4: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004c6ae6: 83 ec 0c                                        sub    esp,0xc
  004c6ae9: 8b d4                                           mov    edx,esp
  004c6aeb: 89 0a                                           mov    DWORD PTR [edx],ecx
  004c6aed: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004c6af0: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004c6af3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004c6af6: 8b ce                                           mov    ecx,esi
  004c6af8: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  004c6afb: e8 50 b4 fe ff                                  call   0x4b1f50
  004c6b00: 8b f8                                           mov    edi,eax
  004c6b02: 85 ff                                           test   edi,edi
  004c6b04: 0f 84 b4 00 00 00                               je     0x4c6bbe
  004c6b0a: 8b 4f 24                                        mov    ecx,DWORD PTR [edi+0x24]
  004c6b0d: 89 4f 20                                        mov    DWORD PTR [edi+0x20],ecx
  004c6b10: c7 47 40 00 00 00 00                            mov    DWORD PTR [edi+0x40],0x0
  004c6b17: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  004c6b1b: 8b 47 40                                        mov    eax,DWORD PTR [edi+0x40]
  004c6b1e: 85 c0                                           test   eax,eax
  004c6b20: 74 0a                                           je     0x4c6b2c
  004c6b22: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  004c6b25: 8b 02                                           mov    eax,DWORD PTR [edx]
  004c6b27: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  004c6b2a: eb 07                                           jmp    0x4c6b33
  004c6b2c: c7 47 40 01 00 00 00                            mov    DWORD PTR [edi+0x40],0x1
  004c6b33: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  004c6b36: 85 c0                                           test   eax,eax
  004c6b38: 74 6a                                           je     0x4c6ba4
  004c6b3a: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  004c6b3d: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c6b3f: 6a 00                                           push   0x0
  004c6b41: 68 54 4e 00 00                                  push   0x4e54
  004c6b46: 8b ce                                           mov    ecx,esi
  004c6b48: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004c6b4b: 85 c0                                           test   eax,eax
  004c6b4d: 75 cc                                           jne    0x4c6b1b
  004c6b4f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004c6b52: e8 99 f2 fb ff                                  call   0x485df0
  004c6b57: 6a 0b                                           push   0xb
  004c6b59: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004c6b5c: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004c6b63: e8 e8 f5 fb ff                                  call   0x486150
  004c6b68: 6a 00                                           push   0x0
  004c6b6a: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004c6b6d: e8 3e f6 fb ff                                  call   0x4861b0
  004c6b72: 8b cb                                           mov    ecx,ebx
  004c6b74: e8 87 4b fc ff                                  call   0x48b700
  004c6b79: 50                                              push   eax
  004c6b7a: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004c6b7d: e8 6e f6 fb ff                                  call   0x4861f0
  004c6b82: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c6b84: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004c6b87: 51                                              push   ecx
  004c6b88: 8b ce                                           mov    ecx,esi
  004c6b8a: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  004c6b90: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004c6b93: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004c6b9a: e8 e1 f2 fb ff                                  call   0x485e80
  004c6b9f: e9 77 ff ff ff                                  jmp    0x4c6b1b
  004c6ba4: 8b 47 40                                        mov    eax,DWORD PTR [edi+0x40]
  004c6ba7: 85 c0                                           test   eax,eax
  004c6ba9: 74 04                                           je     0x4c6baf
  004c6bab: c6 47 34 07                                     mov    BYTE PTR [edi+0x34],0x7
  004c6baf: c7 47 40 00 00 00 00                            mov    DWORD PTR [edi+0x40],0x0
  004c6bb6: 8b 17                                           mov    edx,DWORD PTR [edi]
  004c6bb8: 6a 01                                           push   0x1
  004c6bba: 8b cf                                           mov    ecx,edi
  004c6bbc: ff 12                                           call   DWORD PTR [edx]
  004c6bbe: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c6bc1: 5f                                              pop    edi
  004c6bc2: 5e                                              pop    esi
  004c6bc3: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c6bca: 5b                                              pop    ebx
  004c6bcb: 8b e5                                           mov    esp,ebp
  004c6bcd: 5d                                              pop    ebp
  004c6bce: c2 04 00                                        ret    0x4
  004c70f0: 55                                              push   ebp
  004c70f1: 8b ec                                           mov    ebp,esp
  004c70f3: 6a ff                                           push   0xffffffff
  004c70f5: 68 59 da 4d 00                                  push   0x4dda59
  004c70fa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004c7100: 50                                              push   eax
  004c7101: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004c7108: 51                                              push   ecx
  004c7109: 56                                              push   esi
  004c710a: 8b f1                                           mov    esi,ecx
  004c710c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004c710f: c7 06 e8 fd 4d 00                               mov    DWORD PTR [esi],0x4dfde8
  004c7115: 8d 8e f0 00 00 00                               lea    ecx,[esi+0xf0]
  004c711b: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004c7122: e8 39 26 f4 ff                                  call   0x409760
  004c7127: 8d 8e 80 00 00 00                               lea    ecx,[esi+0x80]
  004c712d: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004c7131: e8 2a 26 f4 ff                                  call   0x409760
  004c7136: 8d 4e 10                                        lea    ecx,[esi+0x10]
  004c7139: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004c7140: e8 1b 26 f4 ff                                  call   0x409760
  004c7145: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c7148: 5e                                              pop    esi
  004c7149: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c7150: 8b e5                                           mov    esp,ebp
  004c7152: 5d                                              pop    ebp
  004c7153: c3                                              ret
  004ce454: ff 25 e0 e3 4d 00                               jmp    DWORD PTR ds:0x4de3e0
  004ce45a: ff 25 c4 e3 4d 00                               jmp    DWORD PTR ds:0x4de3c4
  004ce472: ff 25 c8 e3 4d 00                               jmp    DWORD PTR ds:0x4de3c8
  004ce478: ff 25 c0 e3 4d 00                               jmp    DWORD PTR ds:0x4de3c0
  004d1a88: ff 25 58 e2 4d 00                               jmp    DWORD PTR ds:0x4de258
