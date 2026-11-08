; PASSE 80 - Comptes, sessions, personnages et gestionnaire
; SHA256 binaire 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 3813 instructions depuis 59 entrees exportees; chemins indirects exclus.

; ===== 0x004015B0 ?DeletePlayer@Players@@QAEXXZ =====
  004015b0: c7 81 18 01 00 00 01 00 00 00                   mov    DWORD PTR [ecx+0x118],0x1
  004015ba: c3                                              ret

; ===== 0x004015C0 ?Delete@Players@@QAEHXZ =====
  004015c0: 8b 81 18 01 00 00                               mov    eax,DWORD PTR [ecx+0x118]
  004015c6: c3                                              ret

; ===== 0x004015D0 ?CreditDeduction@Players@@QAEHXZ =====
  004015d0: 8a 51 41                                        mov    dl,BYTE PTR [ecx+0x41]
  004015d3: 33 c0                                           xor    eax,eax
  004015d5: 84 d2                                           test   dl,dl
  004015d7: 0f 95 c0                                        setne  al
  004015da: c3                                              ret

; ===== 0x004015E0 ?CanPVP@Players@@QAE_NXZ =====
  004015e0: 8a 41 79                                        mov    al,BYTE PTR [ecx+0x79]
  004015e3: c3                                              ret

; ===== 0x004015F0 ?SetPVP@Players@@QAEX_N@Z =====
  004015f0: 55                                              push   ebp
  004015f1: 8b ec                                           mov    ebp,esp
  004015f3: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  004015f6: 88 41 79                                        mov    BYTE PTR [ecx+0x79],al
  004015f9: 5d                                              pop    ebp
  004015fa: c2 04 00                                        ret    0x4

; ===== 0x00401600 ?SetRadiusPortID@Players@@QAEXK@Z =====
  00401600: 55                                              push   ebp
  00401601: 8b ec                                           mov    ebp,esp
  00401603: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00401606: 89 41 7c                                        mov    DWORD PTR [ecx+0x7c],eax
  00401609: 5d                                              pop    ebp
  0040160a: c2 04 00                                        ret    0x4

; ===== 0x00401610 ?TogglePage@Players@@QAEX_N@Z =====
  00401610: 55                                              push   ebp
  00401611: 8b ec                                           mov    ebp,esp
  00401613: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  00401616: 88 41 78                                        mov    BYTE PTR [ecx+0x78],al
  00401619: 5d                                              pop    ebp
  0040161a: c2 04 00                                        ret    0x4

; ===== 0x00401620 ?PageState@Players@@QAE_NXZ =====
  00401620: 8a 41 78                                        mov    al,BYTE PTR [ecx+0x78]
  00401623: c3                                              ret

; ===== 0x00401630 ?SetFullPVP@Players@@QAEX_N@Z =====
  00401630: 55                                              push   ebp
  00401631: 8b ec                                           mov    ebp,esp
  00401633: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  00401636: 88 41 7a                                        mov    BYTE PTR [ecx+0x7a],al
  00401639: 5d                                              pop    ebp
  0040163a: c2 04 00                                        ret    0x4

; ===== 0x00401640 ?IsFullPVP@Players@@QAE_NXZ =====
  00401640: 8a 41 7a                                        mov    al,BYTE PTR [ecx+0x7a]
  00401643: c3                                              ret

; ===== 0x00401650 ??0Players@@QAE@ABV0@@Z =====
  00401650: 55                                              push   ebp
  00401651: 8b ec                                           mov    ebp,esp
  00401653: 6a ff                                           push   0xffffffff
  00401655: 68 24 2f 4d 00                                  push   0x4d2f24
  0040165a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00401660: 50                                              push   eax
  00401661: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00401668: 51                                              push   ecx
  00401669: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040166c: 53                                              push   ebx
  0040166d: 8b d9                                           mov    ebx,ecx
  0040166f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00401672: 56                                              push   esi
  00401673: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00401676: 57                                              push   edi
  00401677: 8d 70 08                                        lea    esi,[eax+0x8]
  0040167a: 8d 7b 08                                        lea    edi,[ebx+0x8]
  0040167d: b9 06 00 00 00                                  mov    ecx,0x6
  00401682: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00401684: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  00401687: c7 03 8c e5 4d 00                               mov    DWORD PTR [ebx],0x4de58c
  0040168d: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00401690: 89 53 20                                        mov    DWORD PTR [ebx+0x20],edx
  00401693: 8d 48 24                                        lea    ecx,[eax+0x24]
  00401696: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00401698: 8d 53 24                                        lea    edx,[ebx+0x24]
  0040169b: 89 32                                           mov    DWORD PTR [edx],esi
  0040169d: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004016a0: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  004016a3: 8b 71 08                                        mov    esi,DWORD PTR [ecx+0x8]
  004016a6: 89 72 08                                        mov    DWORD PTR [edx+0x8],esi
  004016a9: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  004016ac: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  004016af: 8b 50 34                                        mov    edx,DWORD PTR [eax+0x34]
  004016b2: 89 53 34                                        mov    DWORD PTR [ebx+0x34],edx
  004016b5: 8b 48 38                                        mov    ecx,DWORD PTR [eax+0x38]
  004016b8: 89 4b 38                                        mov    DWORD PTR [ebx+0x38],ecx
  004016bb: 8b 50 3c                                        mov    edx,DWORD PTR [eax+0x3c]
  004016be: 89 53 3c                                        mov    DWORD PTR [ebx+0x3c],edx
  004016c1: 8a 48 40                                        mov    cl,BYTE PTR [eax+0x40]
  004016c4: 88 4b 40                                        mov    BYTE PTR [ebx+0x40],cl
  004016c7: 8a 50 41                                        mov    dl,BYTE PTR [eax+0x41]
  004016ca: 88 53 41                                        mov    BYTE PTR [ebx+0x41],dl
  004016cd: 8b 48 44                                        mov    ecx,DWORD PTR [eax+0x44]
  004016d0: 89 4b 44                                        mov    DWORD PTR [ebx+0x44],ecx
  004016d3: 8b 50 48                                        mov    edx,DWORD PTR [eax+0x48]
  004016d6: 89 53 48                                        mov    DWORD PTR [ebx+0x48],edx
  004016d9: 8b 48 4c                                        mov    ecx,DWORD PTR [eax+0x4c]
  004016dc: 89 4b 4c                                        mov    DWORD PTR [ebx+0x4c],ecx
  004016df: 8b 50 50                                        mov    edx,DWORD PTR [eax+0x50]
  004016e2: 89 53 50                                        mov    DWORD PTR [ebx+0x50],edx
  004016e5: 8b 48 54                                        mov    ecx,DWORD PTR [eax+0x54]
  004016e8: 89 4b 54                                        mov    DWORD PTR [ebx+0x54],ecx
  004016eb: 8b 50 58                                        mov    edx,DWORD PTR [eax+0x58]
  004016ee: 89 53 58                                        mov    DWORD PTR [ebx+0x58],edx
  004016f1: 8b 48 5c                                        mov    ecx,DWORD PTR [eax+0x5c]
  004016f4: 89 4b 5c                                        mov    DWORD PTR [ebx+0x5c],ecx
  004016f7: 8b 50 60                                        mov    edx,DWORD PTR [eax+0x60]
  004016fa: 89 53 60                                        mov    DWORD PTR [ebx+0x60],edx
  004016fd: 8b 48 64                                        mov    ecx,DWORD PTR [eax+0x64]
  00401700: 89 4b 64                                        mov    DWORD PTR [ebx+0x64],ecx
  00401703: 8b 50 68                                        mov    edx,DWORD PTR [eax+0x68]
  00401706: 89 53 68                                        mov    DWORD PTR [ebx+0x68],edx
  00401709: 8a 48 6c                                        mov    cl,BYTE PTR [eax+0x6c]
  0040170c: 88 4b 6c                                        mov    BYTE PTR [ebx+0x6c],cl
  0040170f: 8b 50 70                                        mov    edx,DWORD PTR [eax+0x70]
  00401712: 89 53 70                                        mov    DWORD PTR [ebx+0x70],edx
  00401715: 8b 48 74                                        mov    ecx,DWORD PTR [eax+0x74]
  00401718: 89 4b 74                                        mov    DWORD PTR [ebx+0x74],ecx
  0040171b: 8a 50 78                                        mov    dl,BYTE PTR [eax+0x78]
  0040171e: 88 53 78                                        mov    BYTE PTR [ebx+0x78],dl
  00401721: 8a 48 79                                        mov    cl,BYTE PTR [eax+0x79]
  00401724: 88 4b 79                                        mov    BYTE PTR [ebx+0x79],cl
  00401727: 8a 50 7a                                        mov    dl,BYTE PTR [eax+0x7a]
  0040172a: 88 53 7a                                        mov    BYTE PTR [ebx+0x7a],dl
  0040172d: 8b 48 7c                                        mov    ecx,DWORD PTR [eax+0x7c]
  00401730: 89 4b 7c                                        mov    DWORD PTR [ebx+0x7c],ecx
  00401733: 8b 90 80 00 00 00                               mov    edx,DWORD PTR [eax+0x80]
  00401739: 89 93 80 00 00 00                               mov    DWORD PTR [ebx+0x80],edx
  0040173f: 8b 88 84 00 00 00                               mov    ecx,DWORD PTR [eax+0x84]
  00401745: 89 8b 84 00 00 00                               mov    DWORD PTR [ebx+0x84],ecx
  0040174b: 8b 90 88 00 00 00                               mov    edx,DWORD PTR [eax+0x88]
  00401751: 89 93 88 00 00 00                               mov    DWORD PTR [ebx+0x88],edx
  00401757: 8a 88 8c 00 00 00                               mov    cl,BYTE PTR [eax+0x8c]
  0040175d: 88 8b 8c 00 00 00                               mov    BYTE PTR [ebx+0x8c],cl
  00401763: 8b 90 90 00 00 00                               mov    edx,DWORD PTR [eax+0x90]
  00401769: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00401770: 89 93 90 00 00 00                               mov    DWORD PTR [ebx+0x90],edx
  00401776: 8b 88 94 00 00 00                               mov    ecx,DWORD PTR [eax+0x94]
  0040177c: 89 8b 94 00 00 00                               mov    DWORD PTR [ebx+0x94],ecx
  00401782: 8b 90 98 00 00 00                               mov    edx,DWORD PTR [eax+0x98]
  00401788: 89 93 98 00 00 00                               mov    DWORD PTR [ebx+0x98],edx
  0040178e: 8b 88 9c 00 00 00                               mov    ecx,DWORD PTR [eax+0x9c]
  00401794: 89 8b 9c 00 00 00                               mov    DWORD PTR [ebx+0x9c],ecx
  0040179a: 8b 90 a0 00 00 00                               mov    edx,DWORD PTR [eax+0xa0]
  004017a0: 89 93 a0 00 00 00                               mov    DWORD PTR [ebx+0xa0],edx
  004017a6: 8b 88 a4 00 00 00                               mov    ecx,DWORD PTR [eax+0xa4]
  004017ac: 05 a8 00 00 00                                  add    eax,0xa8
  004017b1: 89 8b a4 00 00 00                               mov    DWORD PTR [ebx+0xa4],ecx
  004017b7: 50                                              push   eax
  004017b8: 8d 8b a8 00 00 00                               lea    ecx,[ebx+0xa8]
  004017be: e8 89 02 0d 00                                  call   0x4d1a4c
  004017c3: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004017c6: 8d 96 ac 00 00 00                               lea    edx,[esi+0xac]
  004017cc: 52                                              push   edx
  004017cd: 8d 8b ac 00 00 00                               lea    ecx,[ebx+0xac]
  004017d3: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004017d7: e8 70 02 0d 00                                  call   0x4d1a4c
  004017dc: 8d 86 b0 00 00 00                               lea    eax,[esi+0xb0]
  004017e2: 50                                              push   eax
  004017e3: 8d 8b b0 00 00 00                               lea    ecx,[ebx+0xb0]
  004017e9: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004017ed: e8 5a 02 0d 00                                  call   0x4d1a4c
  004017f2: 8b 8e b8 00 00 00                               mov    ecx,DWORD PTR [esi+0xb8]
  004017f8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004017fb: 89 8b b8 00 00 00                               mov    DWORD PTR [ebx+0xb8],ecx
  00401801: 81 c6 bc 00 00 00                               add    esi,0xbc
  00401807: 8d bb bc 00 00 00                               lea    edi,[ebx+0xbc]
  0040180d: ba 8c e5 4d 00                                  mov    edx,0x4de58c
  00401812: b9 06 00 00 00                                  mov    ecx,0x6
  00401817: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00401819: 89 93 b4 00 00 00                               mov    DWORD PTR [ebx+0xb4],edx
  0040181f: 8b 88 d4 00 00 00                               mov    ecx,DWORD PTR [eax+0xd4]
  00401825: 89 8b d4 00 00 00                               mov    DWORD PTR [ebx+0xd4],ecx
  0040182b: 8b 88 d8 00 00 00                               mov    ecx,DWORD PTR [eax+0xd8]
  00401831: 89 8b d8 00 00 00                               mov    DWORD PTR [ebx+0xd8],ecx
  00401837: 8b 88 dc 00 00 00                               mov    ecx,DWORD PTR [eax+0xdc]
  0040183d: 89 8b dc 00 00 00                               mov    DWORD PTR [ebx+0xdc],ecx
  00401843: 8b 88 e0 00 00 00                               mov    ecx,DWORD PTR [eax+0xe0]
  00401849: 89 8b e0 00 00 00                               mov    DWORD PTR [ebx+0xe0],ecx
  0040184f: 8b 88 e4 00 00 00                               mov    ecx,DWORD PTR [eax+0xe4]
  00401855: 89 8b e4 00 00 00                               mov    DWORD PTR [ebx+0xe4],ecx
  0040185b: 8a 88 e8 00 00 00                               mov    cl,BYTE PTR [eax+0xe8]
  00401861: 88 8b e8 00 00 00                               mov    BYTE PTR [ebx+0xe8],cl
  00401867: 8b 88 ec 00 00 00                               mov    ecx,DWORD PTR [eax+0xec]
  0040186d: 89 8b ec 00 00 00                               mov    DWORD PTR [ebx+0xec],ecx
  00401873: 8b 88 f0 00 00 00                               mov    ecx,DWORD PTR [eax+0xf0]
  00401879: 89 8b f0 00 00 00                               mov    DWORD PTR [ebx+0xf0],ecx
  0040187f: 8b 88 f4 00 00 00                               mov    ecx,DWORD PTR [eax+0xf4]
  00401885: 89 8b f4 00 00 00                               mov    DWORD PTR [ebx+0xf4],ecx
  0040188b: c7 83 b4 00 00 00 ac e5 4d 00                   mov    DWORD PTR [ebx+0xb4],0x4de5ac
  00401895: 8b 88 fc 00 00 00                               mov    ecx,DWORD PTR [eax+0xfc]
  0040189b: 89 8b fc 00 00 00                               mov    DWORD PTR [ebx+0xfc],ecx
  004018a1: 8d b0 00 01 00 00                               lea    esi,[eax+0x100]
  004018a7: 8d bb 00 01 00 00                               lea    edi,[ebx+0x100]
  004018ad: b9 06 00 00 00                                  mov    ecx,0x6
  004018b2: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004018b4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004018b7: 89 93 f8 00 00 00                               mov    DWORD PTR [ebx+0xf8],edx
  004018bd: 8b 90 18 01 00 00                               mov    edx,DWORD PTR [eax+0x118]
  004018c3: 5f                                              pop    edi
  004018c4: 89 93 18 01 00 00                               mov    DWORD PTR [ebx+0x118],edx
  004018ca: c7 03 9c e5 4d 00                               mov    DWORD PTR [ebx],0x4de59c
  004018d0: 5e                                              pop    esi
  004018d1: 8b c3                                           mov    eax,ebx
  004018d3: 5b                                              pop    ebx
  004018d4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004018db: 8b e5                                           mov    esp,ebp
  004018dd: 5d                                              pop    ebp
  004018de: c2 04 00                                        ret    0x4

; ===== 0x00425480 ?GetUserCount@CPlayerManager@@SAHXZ =====
  00425480: a1 a4 4a 51 00                                  mov    eax,ds:0x514aa4
  00425485: c3                                              ret

; ===== 0x00452660 ?GetGlobalBroadcastAddress@CPlayerManager@@SAXAAV?$vector@Usockaddr_in@@V?$allocator@Usockaddr_in@@@std@@@std@@PAVSendPacketVisitor@@_N@Z =====
  00452660: 55                                              push   ebp
  00452661: 8b ec                                           mov    ebp,esp
  00452663: 83 ec 08                                        sub    esp,0x8
  00452666: a1 c0 4a 51 00                                  mov    eax,ds:0x514ac0
  0045266b: 85 c0                                           test   eax,eax
  0045266d: 53                                              push   ebx
  0045266e: 56                                              push   esi
  0045266f: 57                                              push   edi
  00452670: 0f 85 bc 00 00 00                               jne    0x452732
  00452676: 50                                              push   eax
  00452677: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0045267a: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0045267d: 58                                              pop    eax
  0045267e: e8 7d 1b fe ff                                  call   0x434200
  00452683: 8b 10                                           mov    edx,DWORD PTR [eax]
  00452685: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00452688: 51                                              push   ecx
  00452689: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0045268c: 68 38 4a 51 00                                  push   0x514a38
  00452691: 51                                              push   ecx
  00452692: 8b c8                                           mov    ecx,eax
  00452694: ff 12                                           call   DWORD PTR [edx]
  00452696: 68 40 4a 51 00                                  push   0x514a40
  0045269b: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  004526a1: e8 5a 1b fe ff                                  call   0x434200
  004526a6: 8b 10                                           mov    edx,DWORD PTR [eax]
  004526a8: 68 3c 4a 51 00                                  push   0x514a3c
  004526ad: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004526b0: 51                                              push   ecx
  004526b1: 8b c8                                           mov    ecx,eax
  004526b3: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004526b6: a1 a8 4a 51 00                                  mov    eax,ds:0x514aa8
  004526bb: 33 ff                                           xor    edi,edi
  004526bd: 85 c0                                           test   eax,eax
  004526bf: 7e 55                                           jle    0x452716
  004526c1: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004526c4: 8b 15 a0 4a 51 00                               mov    edx,DWORD PTR ds:0x514aa0
  004526ca: 8b 34 ba                                        mov    esi,DWORD PTR [edx+edi*4]
  004526cd: 85 f6                                           test   esi,esi
  004526cf: 74 3b                                           je     0x45270c
  004526d1: 8b 46 44                                        mov    eax,DWORD PTR [esi+0x44]
  004526d4: 85 c0                                           test   eax,eax
  004526d6: 75 07                                           jne    0x4526df
  004526d8: 8a 45 10                                        mov    al,BYTE PTR [ebp+0x10]
  004526db: 84 c0                                           test   al,al
  004526dd: 75 2d                                           jne    0x45270c
  004526df: 85 db                                           test   ebx,ebx
  004526e1: 74 0e                                           je     0x4526f1
  004526e3: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004526e6: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004526e8: 51                                              push   ecx
  004526e9: 8b cb                                           mov    ecx,ebx
  004526eb: ff 10                                           call   DWORD PTR [eax]
  004526ed: 84 c0                                           test   al,al
  004526ef: 74 1b                                           je     0x45270c
  004526f1: 83 c6 24                                        add    esi,0x24
  004526f4: 56                                              push   esi
  004526f5: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004526f8: 51                                              push   ecx
  004526f9: 54                                              push   esp
  004526fa: 8b ce                                           mov    ecx,esi
  004526fc: e8 cf eb fd ff                                  call   0x4312d0
  00452701: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00452704: 52                                              push   edx
  00452705: 8b ce                                           mov    ecx,esi
  00452707: e8 a4 ed fd ff                                  call   0x4314b0
  0045270c: a1 a8 4a 51 00                                  mov    eax,ds:0x514aa8
  00452711: 47                                              inc    edi
  00452712: 3b f8                                           cmp    edi,eax
  00452714: 7c ae                                           jl     0x4526c4
  00452716: e8 e5 1a fe ff                                  call   0x434200
  0045271b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045271d: 68 3c 4a 51 00                                  push   0x514a3c
  00452722: 8b c8                                           mov    ecx,eax
  00452724: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00452727: 68 40 4a 51 00                                  push   0x514a40
  0045272c: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00452732: 5f                                              pop    edi
  00452733: 5e                                              pop    esi
  00452734: 5b                                              pop    ebx
  00452735: 8b e5                                           mov    esp,ebp
  00452737: 5d                                              pop    ebp
  00452738: c3                                              ret

; ===== 0x00452740 ?GetLocalBroadcastAddress@CPlayerManager@@SAXAAV?$vector@Usockaddr_in@@V?$allocator@Usockaddr_in@@@std@@@std@@UWorldPos@@HPAVSendPacketVisitor@@@Z =====
  00452740: 55                                              push   ebp
  00452741: 8b ec                                           mov    ebp,esp
  00452743: 83 ec 14                                        sub    esp,0x14
  00452746: a1 c0 4a 51 00                                  mov    eax,ds:0x514ac0
  0045274b: 85 c0                                           test   eax,eax
  0045274d: 53                                              push   ebx
  0045274e: 56                                              push   esi
  0045274f: 57                                              push   edi
  00452750: 0f 85 04 01 00 00                               jne    0x45285a
  00452756: 50                                              push   eax
  00452757: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0045275a: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0045275d: 58                                              pop    eax
  0045275e: e8 9d 1a fe ff                                  call   0x434200
  00452763: 8b 10                                           mov    edx,DWORD PTR [eax]
  00452765: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00452768: 51                                              push   ecx
  00452769: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0045276c: 68 38 4a 51 00                                  push   0x514a38
  00452771: 51                                              push   ecx
  00452772: 8b c8                                           mov    ecx,eax
  00452774: ff 12                                           call   DWORD PTR [edx]
  00452776: 68 40 4a 51 00                                  push   0x514a40
  0045277b: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00452781: e8 7a 1a fe ff                                  call   0x434200
  00452786: 8b 10                                           mov    edx,DWORD PTR [eax]
  00452788: 68 3c 4a 51 00                                  push   0x514a3c
  0045278d: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00452790: 51                                              push   ecx
  00452791: 8b c8                                           mov    ecx,eax
  00452793: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00452796: 8b 0d a8 4a 51 00                               mov    ecx,DWORD PTR ds:0x514aa8
  0045279c: 33 c0                                           xor    eax,eax
  0045279e: 85 c9                                           test   ecx,ecx
  004527a0: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004527a3: 0f 8e 95 00 00 00                               jle    0x45283e
  004527a9: 8b 7d 1c                                        mov    edi,DWORD PTR [ebp+0x1c]
  004527ac: 8b 15 a0 4a 51 00                               mov    edx,DWORD PTR ds:0x514aa0
  004527b2: 8b 34 82                                        mov    esi,DWORD PTR [edx+eax*4]
  004527b5: 85 f6                                           test   esi,esi
  004527b7: 74 70                                           je     0x452829
  004527b9: 8b 46 44                                        mov    eax,DWORD PTR [esi+0x44]
  004527bc: 85 c0                                           test   eax,eax
  004527be: 74 69                                           je     0x452829
  004527c0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004527c3: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004527c5: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004527c8: 52                                              push   edx
  004527c9: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004527cc: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  004527cf: 8b d0                                           mov    edx,eax
  004527d1: 8b 02                                           mov    eax,DWORD PTR [edx]
  004527d3: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004527d6: 39 5a 08                                        cmp    DWORD PTR [edx+0x8],ebx
  004527d9: 75 4e                                           jne    0x452829
  004527db: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004527de: 8b 5d 18                                        mov    ebx,DWORD PTR [ebp+0x18]
  004527e1: 2b c2                                           sub    eax,edx
  004527e3: 99                                              cdq
  004527e4: 33 c2                                           xor    eax,edx
  004527e6: 2b c2                                           sub    eax,edx
  004527e8: 3b c3                                           cmp    eax,ebx
  004527ea: 7f 3d                                           jg     0x452829
  004527ec: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004527ef: 8b c1                                           mov    eax,ecx
  004527f1: 2b c2                                           sub    eax,edx
  004527f3: 99                                              cdq
  004527f4: 33 c2                                           xor    eax,edx
  004527f6: 2b c2                                           sub    eax,edx
  004527f8: 3b c3                                           cmp    eax,ebx
  004527fa: 7f 2d                                           jg     0x452829
  004527fc: 85 ff                                           test   edi,edi
  004527fe: 74 0e                                           je     0x45280e
  00452800: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00452803: 8b 07                                           mov    eax,DWORD PTR [edi]
  00452805: 51                                              push   ecx
  00452806: 8b cf                                           mov    ecx,edi
  00452808: ff 10                                           call   DWORD PTR [eax]
  0045280a: 84 c0                                           test   al,al
  0045280c: 74 1b                                           je     0x452829
  0045280e: 83 c6 24                                        add    esi,0x24
  00452811: 56                                              push   esi
  00452812: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00452815: 51                                              push   ecx
  00452816: 54                                              push   esp
  00452817: 8b ce                                           mov    ecx,esi
  00452819: e8 b2 ea fd ff                                  call   0x4312d0
  0045281e: 8d 55 1c                                        lea    edx,[ebp+0x1c]
  00452821: 52                                              push   edx
  00452822: 8b ce                                           mov    ecx,esi
  00452824: e8 87 ec fd ff                                  call   0x4314b0
  00452829: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0045282c: 8b 0d a8 4a 51 00                               mov    ecx,DWORD PTR ds:0x514aa8
  00452832: 40                                              inc    eax
  00452833: 3b c1                                           cmp    eax,ecx
  00452835: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00452838: 0f 8c 6e ff ff ff                               jl     0x4527ac
  0045283e: e8 bd 19 fe ff                                  call   0x434200
  00452843: 8b 10                                           mov    edx,DWORD PTR [eax]
  00452845: 68 3c 4a 51 00                                  push   0x514a3c
  0045284a: 8b c8                                           mov    ecx,eax
  0045284c: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0045284f: 68 40 4a 51 00                                  push   0x514a40
  00452854: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  0045285a: 5f                                              pop    edi
  0045285b: 5e                                              pop    esi
  0045285c: 5b                                              pop    ebx
  0045285d: 8b e5                                           mov    esp,ebp
  0045285f: 5d                                              pop    ebp
  00452860: c3                                              ret

; ===== 0x004531E0 ?PageUser@CPlayerManager@@SAHPAVPlayers@@AAVCString@@V3@2_N@Z =====
  004531e0: 55                                              push   ebp
  004531e1: 8b ec                                           mov    ebp,esp
  004531e3: 6a ff                                           push   0xffffffff
  004531e5: 68 b8 6c 4d 00                                  push   0x4d6cb8
  004531ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004531f0: 50                                              push   eax
  004531f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004531f8: 83 ec 24                                        sub    esp,0x24
  004531fb: 53                                              push   ebx
  004531fc: 56                                              push   esi
  004531fd: 57                                              push   edi
  004531fe: 8b 0d c0 4a 51 00                               mov    ecx,DWORD PTR ds:0x514ac0
  00453204: 85 c9                                           test   ecx,ecx
  00453206: b8 01 00 00 00                                  mov    eax,0x1
  0045320b: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0045320e: 74 2e                                           je     0x45323e
  00453210: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00453213: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00453217: e8 24 e8 07 00                                  call   0x4d1a40
  0045321c: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  0045321f: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00453226: e8 15 e8 07 00                                  call   0x4d1a40
  0045322b: 33 c0                                           xor    eax,eax
  0045322d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00453230: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00453237: 5f                                              pop    edi
  00453238: 5e                                              pop    esi
  00453239: 5b                                              pop    ebx
  0045323a: 8b e5                                           mov    esp,ebp
  0045323c: 5d                                              pop    ebp
  0045323d: c3                                              ret
  0045323e: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00453241: 33 ff                                           xor    edi,edi
  00453243: 50                                              push   eax
  00453244: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00453247: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0045324a: 58                                              pop    eax
  0045324b: e8 b0 0f fe ff                                  call   0x434200
  00453250: 8b 10                                           mov    edx,DWORD PTR [eax]
  00453252: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00453255: 51                                              push   ecx
  00453256: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00453259: 68 38 4a 51 00                                  push   0x514a38
  0045325e: 51                                              push   ecx
  0045325f: 8b c8                                           mov    ecx,eax
  00453261: ff 12                                           call   DWORD PTR [edx]
  00453263: 68 40 4a 51 00                                  push   0x514a40
  00453268: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  0045326e: e8 8d 0f fe ff                                  call   0x434200
  00453273: 8b 10                                           mov    edx,DWORD PTR [eax]
  00453275: 68 3c 4a 51 00                                  push   0x514a3c
  0045327a: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0045327d: 51                                              push   ecx
  0045327e: 8b c8                                           mov    ecx,eax
  00453280: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00453283: 8b 0d a8 4a 51 00                               mov    ecx,DWORD PTR ds:0x514aa8
  00453289: 33 c0                                           xor    eax,eax
  0045328b: 85 c9                                           test   ecx,ecx
  0045328d: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00453290: 0f 8e f2 02 00 00                               jle    0x453588
  00453296: 8b 15 a0 4a 51 00                               mov    edx,DWORD PTR ds:0x514aa0
  0045329c: 8b 1c 82                                        mov    ebx,DWORD PTR [edx+eax*4]
  0045329f: 85 db                                           test   ebx,ebx
  004532a1: 0f 84 86 00 00 00                               je     0x45332d
  004532a7: 8b 4b 68                                        mov    ecx,DWORD PTR [ebx+0x68]
  004532aa: 85 c9                                           test   ecx,ecx
  004532ac: 74 07                                           je     0x4532b5
  004532ae: 8a 4d 18                                        mov    cl,BYTE PTR [ebp+0x18]
  004532b1: 84 c9                                           test   cl,cl
  004532b3: 74 78                                           je     0x45332d
  004532b5: 8b 4b 20                                        mov    ecx,DWORD PTR [ebx+0x20]
  004532b8: 8d 45 f0                                        lea    eax,[ebp-0x10]
  004532bb: 50                                              push   eax
  004532bc: e8 8f a7 fc ff                                  call   0x41da50
  004532c1: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004532c4: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004532c8: e8 a9 e7 07 00                                  call   0x4d1a76
  004532cd: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004532d0: 8b ce                                           mov    ecx,esi
  004532d2: e8 9f e7 07 00                                  call   0x4d1a76
  004532d7: 8b 06                                           mov    eax,DWORD PTR [esi]
  004532d9: 50                                              push   eax
  004532da: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004532dd: e8 00 e8 07 00                                  call   0x4d1ae2
  004532e2: 85 c0                                           test   eax,eax
  004532e4: 75 38                                           jne    0x45331e
  004532e6: 85 ff                                           test   edi,edi
  004532e8: 74 32                                           je     0x45331c
  004532ea: 8b 36                                           mov    esi,DWORD PTR [esi]
  004532ec: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  004532ef: 8a 10                                           mov    dl,BYTE PTR [eax]
  004532f1: 8a ca                                           mov    cl,dl
  004532f3: 3a 16                                           cmp    dl,BYTE PTR [esi]
  004532f5: 75 1c                                           jne    0x453313
  004532f7: 84 c9                                           test   cl,cl
  004532f9: 74 14                                           je     0x45330f
  004532fb: 8a 50 01                                        mov    dl,BYTE PTR [eax+0x1]
  004532fe: 8a ca                                           mov    cl,dl
  00453300: 3a 56 01                                        cmp    dl,BYTE PTR [esi+0x1]
  00453303: 75 0e                                           jne    0x453313
  00453305: 83 c0 02                                        add    eax,0x2
  00453308: 83 c6 02                                        add    esi,0x2
  0045330b: 84 c9                                           test   cl,cl
  0045330d: 75 e0                                           jne    0x4532ef
  0045330f: 33 c0                                           xor    eax,eax
  00453311: eb 05                                           jmp    0x453318
  00453313: 1b c0                                           sbb    eax,eax
  00453315: 83 d8 ff                                        sbb    eax,0xffffffff
  00453318: 85 c0                                           test   eax,eax
  0045331a: 75 02                                           jne    0x45331e
  0045331c: 8b fb                                           mov    edi,ebx
  0045331e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00453321: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00453325: e8 16 e7 07 00                                  call   0x4d1a40
  0045332a: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0045332d: 8b 0d a8 4a 51 00                               mov    ecx,DWORD PTR ds:0x514aa8
  00453333: 40                                              inc    eax
  00453334: 3b c1                                           cmp    eax,ecx
  00453336: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00453339: 0f 8c 57 ff ff ff                               jl     0x453296
  0045333f: 85 ff                                           test   edi,edi
  00453341: 0f 84 41 02 00 00                               je     0x453588
  00453347: 8a 47 78                                        mov    al,BYTE PTR [edi+0x78]
  0045334a: 84 c0                                           test   al,al
  0045334c: 0f 85 92 00 00 00                               jne    0x4533e4
  00453352: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00453355: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00453358: 50                                              push   eax
  00453359: e8 f2 a6 fc ff                                  call   0x41da50
  0045335e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00453361: 50                                              push   eax
  00453362: 8b cf                                           mov    ecx,edi
  00453364: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00453368: e8 d9 e6 07 00                                  call   0x4d1a46
  0045336d: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00453370: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00453374: e8 c7 e6 07 00                                  call   0x4d1a40
  00453379: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  0045337c: e8 dd e6 07 00                                  call   0x4d1a5e
  00453381: 8b 17                                           mov    edx,DWORD PTR [edi]
  00453383: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00453386: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00453389: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0045338b: 52                                              push   edx
  0045338c: 68 58 13 51 00                                  push   0x511358
  00453391: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00453395: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0045339b: 50                                              push   eax
  0045339c: 68 d5 1b 00 00                                  push   0x1bd5
  004533a1: e8 4a a6 fe ff                                  call   0x43d9f0
  004533a6: 83 c4 0c                                        add    esp,0xc
  004533a9: 50                                              push   eax
  004533aa: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  004533ad: 51                                              push   ecx
  004533ae: e8 e1 e6 07 00                                  call   0x4d1a94
  004533b3: 83 c4 08                                        add    esp,0x8
  004533b6: 8d 55 18                                        lea    edx,[ebp+0x18]
  004533b9: 8b cc                                           mov    ecx,esp
  004533bb: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004533be: 52                                              push   edx
  004533bf: e8 88 e6 07 00                                  call   0x4d1a4c
  004533c4: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004533c7: e8 c4 fa fc ff                                  call   0x422e90
  004533cc: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  004533cf: c7 45 ec 00 00 00 00                            mov    DWORD PTR [ebp-0x14],0x0
  004533d6: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004533da: e8 61 e6 07 00                                  call   0x4d1a40
  004533df: e9 04 02 00 00                                  jmp    0x4535e8
  004533e4: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  004533e7: e8 72 e6 07 00                                  call   0x4d1a5e
  004533ec: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004533ef: 8b 46 60                                        mov    eax,DWORD PTR [esi+0x60]
  004533f2: 85 c0                                           test   eax,eax
  004533f4: b3 05                                           mov    bl,0x5
  004533f6: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004533f9: 75 21                                           jne    0x45341c
  004533fb: 8b cf                                           mov    ecx,edi
  004533fd: e8 de 16 00 00                                  call   0x454ae0
  00453402: 83 e0 40                                        and    eax,0x40
  00453405: 33 c9                                           xor    ecx,ecx
  00453407: 0b c1                                           or     eax,ecx
  00453409: 0f 84 3a 01 00 00                               je     0x453549
  0045340f: 68 98 61 50 00                                  push   0x506198
  00453414: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  00453417: e8 3c e6 07 00                                  call   0x4d1a58
  0045341c: 8d 45 14                                        lea    eax,[ebp+0x14]
  0045341f: 50                                              push   eax
  00453420: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  00453423: 51                                              push   ecx
  00453424: 8d 55 08                                        lea    edx,[ebp+0x8]
  00453427: 52                                              push   edx
  00453428: e8 cd e6 07 00                                  call   0x4d1afa
  0045342d: 50                                              push   eax
  0045342e: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00453431: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  00453435: e8 0c e6 07 00                                  call   0x4d1a46
  0045343a: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045343d: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00453440: e8 fb e5 07 00                                  call   0x4d1a40
  00453445: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00453448: 8d 45 08                                        lea    eax,[ebp+0x8]
  0045344b: 50                                              push   eax
  0045344c: e8 ff a5 fc ff                                  call   0x41da50
  00453451: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00453454: 50                                              push   eax
  00453455: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  00453459: e8 e8 e5 07 00                                  call   0x4d1a46
  0045345e: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00453461: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00453464: e8 d7 e5 07 00                                  call   0x4d1a40
  00453469: 6a 07                                           push   0x7
  0045346b: e8 a0 e8 01 00                                  call   0x471d10
  00453470: 83 c4 04                                        add    esp,0x4
  00453473: 85 c0                                           test   eax,eax
  00453475: 74 40                                           je     0x4534b7
  00453477: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0045347a: 51                                              push   ecx
  0045347b: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  0045347e: e8 cd a5 fc ff                                  call   0x41da50
  00453483: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00453486: 8b 00                                           mov    eax,DWORD PTR [eax]
  00453488: 52                                              push   edx
  00453489: 50                                              push   eax
  0045348a: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045348d: 50                                              push   eax
  0045348e: 68 70 61 50 00                                  push   0x506170
  00453493: 6a 40                                           push   0x40
  00453495: 6a 07                                           push   0x7
  00453497: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0045349b: e8 70 e8 01 00                                  call   0x471d10
  004534a0: 83 c4 04                                        add    esp,0x4
  004534a3: 50                                              push   eax
  004534a4: e8 47 b6 07 00                                  call   0x4ceaf0
  004534a9: 83 c4 18                                        add    esp,0x18
  004534ac: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004534af: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004534b2: e8 89 e5 07 00                                  call   0x4d1a40
  004534b7: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004534ba: e8 31 29 03 00                                  call   0x485df0
  004534bf: 6a 1d                                           push   0x1d
  004534c1: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004534c4: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  004534c8: e8 83 2c 03 00                                  call   0x486150
  004534cd: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004534d0: 51                                              push   ecx
  004534d1: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004534d4: e8 77 2e 03 00                                  call   0x486350
  004534d9: 8d 55 14                                        lea    edx,[ebp+0x14]
  004534dc: 52                                              push   edx
  004534dd: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004534e0: e8 6b 2e 03 00                                  call   0x486350
  004534e5: 6a 01                                           push   0x1
  004534e7: 6a 00                                           push   0x0
  004534e9: 6a 00                                           push   0x0
  004534eb: 83 c8 ff                                        or     eax,0xffffffff
  004534ee: 83 ec 0c                                        sub    esp,0xc
  004534f1: 8b f4                                           mov    esi,esp
  004534f3: 89 06                                           mov    DWORD PTR [esi],eax
  004534f5: 83 c9 ff                                        or     ecx,0xffffffff
  004534f8: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004534fb: 6a ff                                           push   0xffffffff
  004534fd: 83 ca ff                                        or     edx,0xffffffff
  00453500: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00453503: 83 c7 24                                        add    edi,0x24
  00453506: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00453508: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0045350b: 83 ec 10                                        sub    esp,0x10
  0045350e: 8b c4                                           mov    eax,esp
  00453510: 89 08                                           mov    DWORD PTR [eax],ecx
  00453512: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00453515: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00453518: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  0045351b: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0045351e: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  00453521: 8d 45 d0                                        lea    eax,[ebp-0x30]
  00453524: 50                                              push   eax
  00453525: e8 56 de ff ff                                  call   0x451380
  0045352a: 83 c4 30                                        add    esp,0x30
  0045352d: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453530: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00453533: e8 48 29 03 00                                  call   0x485e80
  00453538: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  0045353b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045353f: e8 fc e4 07 00                                  call   0x4d1a40
  00453544: e9 9f 00 00 00                                  jmp    0x4535e8
  00453549: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0045354c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045354e: 68 58 13 51 00                                  push   0x511358
  00453553: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  00453559: 50                                              push   eax
  0045355a: 68 04 1c 00 00                                  push   0x1c04
  0045355f: e8 8c a4 fe ff                                  call   0x43d9f0
  00453564: 83 c4 08                                        add    esp,0x8
  00453567: 8b cc                                           mov    ecx,esp
  00453569: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  0045356c: 50                                              push   eax
  0045356d: e8 f2 e4 07 00                                  call   0x4d1a64
  00453572: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00453575: e8 16 f9 fc ff                                  call   0x422e90
  0045357a: 8d 4d 18                                        lea    ecx,[ebp+0x18]
  0045357d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00453581: e8 ba e4 07 00                                  call   0x4d1a40
  00453586: eb 60                                           jmp    0x4535e8
  00453588: 68 58 13 51 00                                  push   0x511358
  0045358d: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00453590: e8 c3 e4 07 00                                  call   0x4d1a58
  00453595: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453598: e8 53 28 03 00                                  call   0x485df0
  0045359d: 6a 1d                                           push   0x1d
  0045359f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004535a2: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  004535a6: e8 a5 2b 03 00                                  call   0x486150
  004535ab: 8d 45 14                                        lea    eax,[ebp+0x14]
  004535ae: 50                                              push   eax
  004535af: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004535b2: e8 99 2d 03 00                                  call   0x486350
  004535b7: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  004535ba: 51                                              push   ecx
  004535bb: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004535be: e8 8d 2d 03 00                                  call   0x486350
  004535c3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004535c6: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  004535c9: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004535cb: 8d 55 d0                                        lea    edx,[ebp-0x30]
  004535ce: 52                                              push   edx
  004535cf: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  004535d5: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004535d8: c7 45 ec 00 00 00 00                            mov    DWORD PTR [ebp-0x14],0x0
  004535df: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004535e3: e8 98 28 03 00                                  call   0x485e80
  004535e8: e8 13 0c fe ff                                  call   0x434200
  004535ed: 8b 10                                           mov    edx,DWORD PTR [eax]
  004535ef: 68 3c 4a 51 00                                  push   0x514a3c
  004535f4: 8b c8                                           mov    ecx,eax
  004535f6: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004535f9: 68 40 4a 51 00                                  push   0x514a40
  004535fe: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00453604: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00453607: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0045360b: e8 30 e4 07 00                                  call   0x4d1a40
  00453610: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00453613: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045361a: e8 21 e4 07 00                                  call   0x4d1a40
  0045361f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00453622: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00453625: 5f                                              pop    edi
  00453626: 5e                                              pop    esi
  00453627: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045362e: 5b                                              pop    ebx
  0045362f: 8b e5                                           mov    esp,ebp
  00453631: 5d                                              pop    ebp
  00453632: c3                                              ret

; ===== 0x00453640 ?MSComGetUserList@CPlayerManager@@SA_NEAAPAEAAH@Z =====
  00453640: 55                                              push   ebp
  00453641: 8b ec                                           mov    ebp,esp
  00453643: 6a ff                                           push   0xffffffff
  00453645: 68 e8 6c 4d 00                                  push   0x4d6ce8
  0045364a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00453650: 50                                              push   eax
  00453651: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00453658: 83 ec 24                                        sub    esp,0x24
  0045365b: a1 c0 4a 51 00                                  mov    eax,ds:0x514ac0
  00453660: 85 c0                                           test   eax,eax
  00453662: 56                                              push   esi
  00453663: 57                                              push   edi
  00453664: 74 12                                           je     0x453678
  00453666: 32 c0                                           xor    al,al
  00453668: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045366b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00453672: 5f                                              pop    edi
  00453673: 5e                                              pop    esi
  00453674: 8b e5                                           mov    esp,ebp
  00453676: 5d                                              pop    ebp
  00453677: c3                                              ret
  00453678: 80 7d 08 f0                                     cmp    BYTE PTR [ebp+0x8],0xf0
  0045367c: 74 12                                           je     0x453690
  0045367e: 32 c0                                           xor    al,al
  00453680: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00453683: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045368a: 5f                                              pop    edi
  0045368b: 5e                                              pop    esi
  0045368c: 8b e5                                           mov    esp,ebp
  0045368e: 5d                                              pop    ebp
  0045368f: c3                                              ret
  00453690: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00453693: e8 c6 e3 07 00                                  call   0x4d1a5e
  00453698: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045369b: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004536a2: e8 49 27 03 00                                  call   0x485df0
  004536a7: 6a 70                                           push   0x70
  004536a9: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004536ac: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004536b0: e8 fb 2a 03 00                                  call   0x4861b0
  004536b5: 6a 54                                           push   0x54
  004536b7: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004536ba: e8 f1 2a 03 00                                  call   0x4861b0
  004536bf: 6a 68                                           push   0x68
  004536c1: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004536c4: e8 e7 2a 03 00                                  call   0x4861b0
  004536c9: 6a 65                                           push   0x65
  004536cb: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004536ce: e8 dd 2a 03 00                                  call   0x4861b0
  004536d3: 6a 20                                           push   0x20
  004536d5: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004536d8: e8 d3 2a 03 00                                  call   0x4861b0
  004536dd: 6a 34                                           push   0x34
  004536df: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004536e2: e8 c9 2a 03 00                                  call   0x4861b0
  004536e7: 6a 74                                           push   0x74
  004536e9: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004536ec: e8 bf 2a 03 00                                  call   0x4861b0
  004536f1: 6a 68                                           push   0x68
  004536f3: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004536f6: e8 b5 2a 03 00                                  call   0x4861b0
  004536fb: 6a 20                                           push   0x20
  004536fd: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453700: e8 ab 2a 03 00                                  call   0x4861b0
  00453705: 6a 43                                           push   0x43
  00453707: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045370a: e8 a1 2a 03 00                                  call   0x4861b0
  0045370f: 6a 6f                                           push   0x6f
  00453711: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453714: e8 97 2a 03 00                                  call   0x4861b0
  00453719: 6a 6d                                           push   0x6d
  0045371b: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045371e: e8 8d 2a 03 00                                  call   0x4861b0
  00453723: 6a 69                                           push   0x69
  00453725: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453728: e8 83 2a 03 00                                  call   0x4861b0
  0045372d: 6a 6e                                           push   0x6e
  0045372f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453732: e8 79 2a 03 00                                  call   0x4861b0
  00453737: 6a 67                                           push   0x67
  00453739: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045373c: e8 6f 2a 03 00                                  call   0x4861b0
  00453741: 6a 00                                           push   0x0
  00453743: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453746: e8 65 2a 03 00                                  call   0x4861b0
  0045374b: 50                                              push   eax
  0045374c: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0045374f: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00453752: 58                                              pop    eax
  00453753: e8 a8 0a fe ff                                  call   0x434200
  00453758: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045375a: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0045375d: 51                                              push   ecx
  0045375e: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00453761: 68 38 4a 51 00                                  push   0x514a38
  00453766: 51                                              push   ecx
  00453767: 8b c8                                           mov    ecx,eax
  00453769: ff 12                                           call   DWORD PTR [edx]
  0045376b: 68 40 4a 51 00                                  push   0x514a40
  00453770: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00453776: e8 85 0a fe ff                                  call   0x434200
  0045377b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045377d: 68 3c 4a 51 00                                  push   0x514a3c
  00453782: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00453785: 51                                              push   ecx
  00453786: 8b c8                                           mov    ecx,eax
  00453788: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0045378b: a1 a8 4a 51 00                                  mov    eax,ds:0x514aa8
  00453790: 33 ff                                           xor    edi,edi
  00453792: 85 c0                                           test   eax,eax
  00453794: 7e 76                                           jle    0x45380c
  00453796: 8b 15 a0 4a 51 00                               mov    edx,DWORD PTR ds:0x514aa0
  0045379c: 8b 0c ba                                        mov    ecx,DWORD PTR [edx+edi*4]
  0045379f: 85 c9                                           test   ecx,ecx
  004537a1: 74 5f                                           je     0x453802
  004537a3: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004537a6: 50                                              push   eax
  004537a7: e8 64 36 00 00                                  call   0x456e10
  004537ac: 50                                              push   eax
  004537ad: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004537b0: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004537b4: e8 8d e2 07 00                                  call   0x4d1a46
  004537b9: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004537bc: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004537c0: e8 7b e2 07 00                                  call   0x4d1a40
  004537c5: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004537c8: 8b 48 f8                                        mov    ecx,DWORD PTR [eax-0x8]
  004537cb: 33 f6                                           xor    esi,esi
  004537cd: 85 c9                                           test   ecx,ecx
  004537cf: 7e 1d                                           jle    0x4537ee
  004537d1: 8a 0c 06                                        mov    cl,BYTE PTR [esi+eax*1]
  004537d4: 88 4d ec                                        mov    BYTE PTR [ebp-0x14],cl
  004537d7: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004537da: 52                                              push   edx
  004537db: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004537de: e8 cd 29 03 00                                  call   0x4861b0
  004537e3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004537e6: 8b 48 f8                                        mov    ecx,DWORD PTR [eax-0x8]
  004537e9: 46                                              inc    esi
  004537ea: 3b f1                                           cmp    esi,ecx
  004537ec: 7c e3                                           jl     0x4537d1
  004537ee: 6a 00                                           push   0x0
  004537f0: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004537f3: e8 b8 29 03 00                                  call   0x4861b0
  004537f8: 6a 00                                           push   0x0
  004537fa: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004537fd: e8 ae 29 03 00                                  call   0x4861b0
  00453802: a1 a8 4a 51 00                                  mov    eax,ds:0x514aa8
  00453807: 47                                              inc    edi
  00453808: 3b f8                                           cmp    edi,eax
  0045380a: 7c 8a                                           jl     0x453796
  0045380c: e8 ef 09 fe ff                                  call   0x434200
  00453811: 8b 10                                           mov    edx,DWORD PTR [eax]
  00453813: 68 3c 4a 51 00                                  push   0x514a3c
  00453818: 8b c8                                           mov    ecx,eax
  0045381a: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0045381d: 68 40 4a 51 00                                  push   0x514a40
  00453822: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00453828: 6a 00                                           push   0x0
  0045382a: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045382d: e8 7e 29 03 00                                  call   0x4861b0
  00453832: 6a 00                                           push   0x0
  00453834: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453837: e8 74 29 03 00                                  call   0x4861b0
  0045383c: 6a 00                                           push   0x0
  0045383e: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453841: e8 6a 29 03 00                                  call   0x4861b0
  00453846: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00453849: 56                                              push   esi
  0045384a: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0045384d: 50                                              push   eax
  0045384e: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00453851: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  00453858: e8 d3 31 03 00                                  call   0x486a30
  0045385d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0045385f: 83 c2 fc                                        add    edx,0xfffffffc
  00453862: 8b c2                                           mov    eax,edx
  00453864: 50                                              push   eax
  00453865: 89 16                                           mov    DWORD PTR [esi],edx
  00453867: e8 94 ac 07 00                                  call   0x4ce500
  0045386c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0045386f: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00453872: 89 01                                           mov    DWORD PTR [ecx],eax
  00453874: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00453876: 8b f8                                           mov    edi,eax
  00453878: 8b c1                                           mov    eax,ecx
  0045387a: c1 e9 02                                        shr    ecx,0x2
  0045387d: 8d 72 04                                        lea    esi,[edx+0x4]
  00453880: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00453882: 8b c8                                           mov    ecx,eax
  00453884: 83 e1 03                                        and    ecx,0x3
  00453887: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00453889: 83 c4 04                                        add    esp,0x4
  0045388c: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0045388f: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00453893: e8 e8 25 03 00                                  call   0x485e80
  00453898: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045389b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004538a2: e8 99 e1 07 00                                  call   0x4d1a40
  004538a7: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004538aa: 5f                                              pop    edi
  004538ab: b0 01                                           mov    al,0x1
  004538ad: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004538b4: 5e                                              pop    esi
  004538b5: 8b e5                                           mov    esp,ebp
  004538b7: 5d                                              pop    ebp
  004538b8: c3                                              ret

; ===== 0x004538C0 ?PacketUserList@CPlayerManager@@SAXPAVPlayers@@@Z =====
  004538c0: 55                                              push   ebp
  004538c1: 8b ec                                           mov    ebp,esp
  004538c3: 6a ff                                           push   0xffffffff
  004538c5: 68 40 6d 4d 00                                  push   0x4d6d40
  004538ca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004538d0: 50                                              push   eax
  004538d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004538d8: 83 ec 74                                        sub    esp,0x74
  004538db: a1 c0 4a 51 00                                  mov    eax,ds:0x514ac0
  004538e0: 53                                              push   ebx
  004538e1: 33 db                                           xor    ebx,ebx
  004538e3: 3b c3                                           cmp    eax,ebx
  004538e5: 56                                              push   esi
  004538e6: 57                                              push   edi
  004538e7: 0f 85 9f 03 00 00                               jne    0x453c8c
  004538ed: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004538f0: e8 fb 24 03 00                                  call   0x485df0
  004538f5: 68 58 13 51 00                                  push   0x511358
  004538fa: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004538fd: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00453900: e8 5f e1 07 00                                  call   0x4d1a64
  00453905: 6a 33                                           push   0x33
  00453907: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0045390a: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045390e: e8 3d 28 03 00                                  call   0x486150
  00453913: 8d 45 88                                        lea    eax,[ebp-0x78]
  00453916: 50                                              push   eax
  00453917: c7 45 80 8c e5 4d 00                            mov    DWORD PTR [ebp-0x80],0x4de58c
  0045391e: c7 45 84 ff ff ff ff                            mov    DWORD PTR [ebp-0x7c],0xffffffff
  00453925: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0045392b: 89 5d a4                                        mov    DWORD PTR [ebp-0x5c],ebx
  0045392e: 89 5d a8                                        mov    DWORD PTR [ebp-0x58],ebx
  00453931: 89 5d ac                                        mov    DWORD PTR [ebp-0x54],ebx
  00453934: 89 5d b0                                        mov    DWORD PTR [ebp-0x50],ebx
  00453937: c7 45 80 08 f4 4d 00                            mov    DWORD PTR [ebp-0x80],0x4df408
  0045393e: 89 5d c0                                        mov    DWORD PTR [ebp-0x40],ebx
  00453941: c6 45 b4 08                                     mov    BYTE PTR [ebp-0x4c],0x8
  00453945: 89 5d b8                                        mov    DWORD PTR [ebp-0x48],ebx
  00453948: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045394c: 50                                              push   eax
  0045394d: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00453950: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00453953: 58                                              pop    eax
  00453954: e8 a7 08 fe ff                                  call   0x434200
  00453959: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045395b: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0045395e: 51                                              push   ecx
  0045395f: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00453962: 68 38 4a 51 00                                  push   0x514a38
  00453967: 51                                              push   ecx
  00453968: 8b c8                                           mov    ecx,eax
  0045396a: ff 12                                           call   DWORD PTR [edx]
  0045396c: 68 40 4a 51 00                                  push   0x514a40
  00453971: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00453977: e8 84 08 fe ff                                  call   0x434200
  0045397c: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045397e: 68 3c 4a 51 00                                  push   0x514a3c
  00453983: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00453986: 51                                              push   ecx
  00453987: 8b c8                                           mov    ecx,eax
  00453989: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0045398c: a1 a8 4a 51 00                                  mov    eax,ds:0x514aa8
  00453991: 33 ff                                           xor    edi,edi
  00453993: 3b c3                                           cmp    eax,ebx
  00453995: 7e 3b                                           jle    0x4539d2
  00453997: 8b 15 a0 4a 51 00                               mov    edx,DWORD PTR ds:0x514aa0
  0045399d: 8b 34 ba                                        mov    esi,DWORD PTR [edx+edi*4]
  004539a0: 3b f3                                           cmp    esi,ebx
  004539a2: 74 24                                           je     0x4539c8
  004539a4: 39 5e 44                                        cmp    DWORD PTR [esi+0x44],ebx
  004539a7: 74 05                                           je     0x4539ae
  004539a9: 39 5e 68                                        cmp    DWORD PTR [esi+0x68],ebx
  004539ac: 74 11                                           je     0x4539bf
  004539ae: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004539b1: e8 2a 11 00 00                                  call   0x454ae0
  004539b6: 83 e2 02                                        and    edx,0x2
  004539b9: 33 c0                                           xor    eax,eax
  004539bb: 0b c2                                           or     eax,edx
  004539bd: 74 09                                           je     0x4539c8
  004539bf: 56                                              push   esi
  004539c0: 8d 4d 80                                        lea    ecx,[ebp-0x80]
  004539c3: e8 a8 0a 00 00                                  call   0x454470
  004539c8: a1 a8 4a 51 00                                  mov    eax,ds:0x514aa8
  004539cd: 47                                              inc    edi
  004539ce: 3b f8                                           cmp    edi,eax
  004539d0: 7c c5                                           jl     0x453997
  004539d2: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  004539d5: 50                                              push   eax
  004539d6: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004539d9: e8 72 27 03 00                                  call   0x486150
  004539de: 8b 4d a4                                        mov    ecx,DWORD PTR [ebp-0x5c]
  004539e1: 89 4d a0                                        mov    DWORD PTR [ebp-0x60],ecx
  004539e4: 89 5d c0                                        mov    DWORD PTR [ebp-0x40],ebx
  004539e7: c6 45 b4 08                                     mov    BYTE PTR [ebp-0x4c],0x8
  004539eb: 8b 4d c0                                        mov    ecx,DWORD PTR [ebp-0x40]
  004539ee: 3b cb                                           cmp    ecx,ebx
  004539f0: 74 0a                                           je     0x4539fc
  004539f2: 8b 55 a0                                        mov    edx,DWORD PTR [ebp-0x60]
  004539f5: 8b 02                                           mov    eax,DWORD PTR [edx]
  004539f7: 89 45 a0                                        mov    DWORD PTR [ebp-0x60],eax
  004539fa: eb 0b                                           jmp    0x453a07
  004539fc: 8b 45 a0                                        mov    eax,DWORD PTR [ebp-0x60]
  004539ff: b9 01 00 00 00                                  mov    ecx,0x1
  00453a04: 89 4d c0                                        mov    DWORD PTR [ebp-0x40],ecx
  00453a07: 3b c3                                           cmp    eax,ebx
  00453a09: 0f 84 30 01 00 00                               je     0x453b3f
  00453a0f: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  00453a12: 39 5e 68                                        cmp    DWORD PTR [esi+0x68],ebx
  00453a15: 0f 84 a1 00 00 00                               je     0x453abc
  00453a1b: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00453a1e: e8 3b e0 07 00                                  call   0x4d1a5e
  00453a23: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00453a26: 50                                              push   eax
  00453a27: 8b ce                                           mov    ecx,esi
  00453a29: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00453a2d: e8 2e 52 00 00                                  call   0x458c60
  00453a32: 50                                              push   eax
  00453a33: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00453a36: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00453a3a: e8 07 e0 07 00                                  call   0x4d1a46
  00453a3f: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00453a42: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00453a46: e8 f5 df 07 00                                  call   0x4d1a40
  00453a4b: 68 ac 61 50 00                                  push   0x5061ac
  00453a50: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00453a53: e8 fa df 07 00                                  call   0x4d1a52
  00453a58: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00453a5b: 51                                              push   ecx
  00453a5c: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00453a5f: e8 ec 28 03 00                                  call   0x486350
  00453a64: 39 5e 44                                        cmp    DWORD PTR [esi+0x44],ebx
  00453a67: 74 36                                           je     0x453a9f
  00453a69: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00453a6c: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  00453a6f: 52                                              push   edx
  00453a70: e8 db 9f fc ff                                  call   0x41da50
  00453a75: 50                                              push   eax
  00453a76: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00453a79: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00453a7d: e8 ce 28 03 00                                  call   0x486350
  00453a82: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00453a85: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00453a89: e8 b2 df 07 00                                  call   0x4d1a40
  00453a8e: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00453a91: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00453a95: e8 a6 df 07 00                                  call   0x4d1a40
  00453a9a: e9 4c ff ff ff                                  jmp    0x4539eb
  00453a9f: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00453aa2: 50                                              push   eax
  00453aa3: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00453aa6: e8 a5 28 03 00                                  call   0x486350
  00453aab: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00453aae: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00453ab2: e8 89 df 07 00                                  call   0x4d1a40
  00453ab7: e9 2f ff ff ff                                  jmp    0x4539eb
  00453abc: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00453abf: e8 1c 10 00 00                                  call   0x454ae0
  00453ac4: 83 e2 02                                        and    edx,0x2
  00453ac7: 33 c0                                           xor    eax,eax
  00453ac9: 0b c2                                           or     eax,edx
  00453acb: 74 26                                           je     0x453af3
  00453acd: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00453ad0: 51                                              push   ecx
  00453ad1: 8b ce                                           mov    ecx,esi
  00453ad3: e8 88 51 00 00                                  call   0x458c60
  00453ad8: 50                                              push   eax
  00453ad9: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00453adc: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  00453ae0: e8 6b 28 03 00                                  call   0x486350
  00453ae5: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00453ae8: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00453aec: e8 4f df 07 00                                  call   0x4d1a40
  00453af1: eb 0c                                           jmp    0x453aff
  00453af3: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00453af6: 52                                              push   edx
  00453af7: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00453afa: e8 51 28 03 00                                  call   0x486350
  00453aff: 39 5e 44                                        cmp    DWORD PTR [esi+0x44],ebx
  00453b02: 74 2a                                           je     0x453b2e
  00453b04: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00453b07: 8d 45 dc                                        lea    eax,[ebp-0x24]
  00453b0a: 50                                              push   eax
  00453b0b: e8 40 9f fc ff                                  call   0x41da50
  00453b10: 50                                              push   eax
  00453b11: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00453b14: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  00453b18: e8 33 28 03 00                                  call   0x486350
  00453b1d: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00453b20: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00453b24: e8 17 df 07 00                                  call   0x4d1a40
  00453b29: e9 bd fe ff ff                                  jmp    0x4539eb
  00453b2e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00453b31: 51                                              push   ecx
  00453b32: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00453b35: e8 16 28 03 00                                  call   0x486350
  00453b3a: e9 ac fe ff ff                                  jmp    0x4539eb
  00453b3f: 3b cb                                           cmp    ecx,ebx
  00453b41: 74 04                                           je     0x453b47
  00453b43: c6 45 b4 07                                     mov    BYTE PTR [ebp-0x4c],0x7
  00453b47: 89 5d c0                                        mov    DWORD PTR [ebp-0x40],ebx
  00453b4a: e8 b1 06 fe ff                                  call   0x434200
  00453b4f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00453b51: 68 3c 4a 51 00                                  push   0x514a3c
  00453b56: 8b c8                                           mov    ecx,eax
  00453b58: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00453b5b: 68 40 4a 51 00                                  push   0x514a40
  00453b60: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00453b66: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00453b69: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00453b6c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00453b6e: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  00453b71: 50                                              push   eax
  00453b72: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00453b78: 8b 55 a4                                        mov    edx,DWORD PTR [ebp-0x5c]
  00453b7b: 8b c2                                           mov    eax,edx
  00453b7d: 33 c9                                           xor    ecx,ecx
  00453b7f: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00453b83: c7 45 80 08 f4 4d 00                            mov    DWORD PTR [ebp-0x80],0x4df408
  00453b8a: 89 45 a0                                        mov    DWORD PTR [ebp-0x60],eax
  00453b8d: 89 4d c0                                        mov    DWORD PTR [ebp-0x40],ecx
  00453b90: c6 45 b4 08                                     mov    BYTE PTR [ebp-0x4c],0x8
  00453b94: be 01 00 00 00                                  mov    esi,0x1
  00453b99: 3b cb                                           cmp    ecx,ebx
  00453b9b: 74 07                                           je     0x453ba4
  00453b9d: 8b 00                                           mov    eax,DWORD PTR [eax]
  00453b9f: 89 45 a0                                        mov    DWORD PTR [ebp-0x60],eax
  00453ba2: eb 05                                           jmp    0x453ba9
  00453ba4: 8b ce                                           mov    ecx,esi
  00453ba6: 89 4d c0                                        mov    DWORD PTR [ebp-0x40],ecx
  00453ba9: 3b c3                                           cmp    eax,ebx
  00453bab: 0f 84 a5 00 00 00                               je     0x453c56
  00453bb1: ff 4d b8                                        dec    DWORD PTR [ebp-0x48]
  00453bb4: 8b 4d a8                                        mov    ecx,DWORD PTR [ebp-0x58]
  00453bb7: 3b c1                                           cmp    eax,ecx
  00453bb9: 89 45 ac                                        mov    DWORD PTR [ebp-0x54],eax
  00453bbc: 74 37                                           je     0x453bf5
  00453bbe: 3b c2                                           cmp    eax,edx
  00453bc0: 74 53                                           je     0x453c15
  00453bc2: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00453bc4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00453bc7: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00453bca: 8b 45 a0                                        mov    eax,DWORD PTR [ebp-0x60]
  00453bcd: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00453bd0: 8b 10                                           mov    edx,DWORD PTR [eax]
  00453bd2: 89 11                                           mov    DWORD PTR [ecx],edx
  00453bd4: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  00453bd7: 3b c6                                           cmp    eax,esi
  00453bd9: 75 0b                                           jne    0x453be6
  00453bdb: 8b 45 a0                                        mov    eax,DWORD PTR [ebp-0x60]
  00453bde: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00453be1: 89 4d a0                                        mov    DWORD PTR [ebp-0x60],ecx
  00453be4: eb 56                                           jmp    0x453c3c
  00453be6: 83 f8 02                                        cmp    eax,0x2
  00453be9: 75 51                                           jne    0x453c3c
  00453beb: 8b 55 a0                                        mov    edx,DWORD PTR [ebp-0x60]
  00453bee: 8b 02                                           mov    eax,DWORD PTR [edx]
  00453bf0: 89 45 a0                                        mov    DWORD PTR [ebp-0x60],eax
  00453bf3: eb 47                                           jmp    0x453c3c
  00453bf5: 3b c2                                           cmp    eax,edx
  00453bf7: 74 1c                                           je     0x453c15
  00453bf9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00453bfc: 89 19                                           mov    DWORD PTR [ecx],ebx
  00453bfe: 8b 45 a0                                        mov    eax,DWORD PTR [ebp-0x60]
  00453c01: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00453c04: 89 55 a8                                        mov    DWORD PTR [ebp-0x58],edx
  00453c07: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00453c0a: 89 45 a0                                        mov    DWORD PTR [ebp-0x60],eax
  00453c0d: 83 7d c0 02                                     cmp    DWORD PTR [ebp-0x40],0x2
  00453c11: 75 29                                           jne    0x453c3c
  00453c13: eb 24                                           jmp    0x453c39
  00453c15: 3b c1                                           cmp    eax,ecx
  00453c17: 74 17                                           je     0x453c30
  00453c19: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00453c1b: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00453c1e: 8b 55 a0                                        mov    edx,DWORD PTR [ebp-0x60]
  00453c21: 8b 02                                           mov    eax,DWORD PTR [edx]
  00453c23: 89 45 a0                                        mov    DWORD PTR [ebp-0x60],eax
  00453c26: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00453c29: 39 75 c0                                        cmp    DWORD PTR [ebp-0x40],esi
  00453c2c: 75 0e                                           jne    0x453c3c
  00453c2e: eb 09                                           jmp    0x453c39
  00453c30: 89 5d a0                                        mov    DWORD PTR [ebp-0x60],ebx
  00453c33: 89 5d a4                                        mov    DWORD PTR [ebp-0x5c],ebx
  00453c36: 89 5d a8                                        mov    DWORD PTR [ebp-0x58],ebx
  00453c39: 89 5d c0                                        mov    DWORD PTR [ebp-0x40],ebx
  00453c3c: 8b 45 ac                                        mov    eax,DWORD PTR [ebp-0x54]
  00453c3f: 50                                              push   eax
  00453c40: e8 1b e4 fe ff                                  call   0x442060
  00453c45: 8b 45 a0                                        mov    eax,DWORD PTR [ebp-0x60]
  00453c48: 8b 55 a4                                        mov    edx,DWORD PTR [ebp-0x5c]
  00453c4b: 8b 4d c0                                        mov    ecx,DWORD PTR [ebp-0x40]
  00453c4e: 83 c4 04                                        add    esp,0x4
  00453c51: e9 43 ff ff ff                                  jmp    0x453b99
  00453c56: 3b cb                                           cmp    ecx,ebx
  00453c58: 74 04                                           je     0x453c5e
  00453c5a: c6 45 b4 07                                     mov    BYTE PTR [ebp-0x4c],0x7
  00453c5e: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  00453c61: 51                                              push   ecx
  00453c62: 89 5d c0                                        mov    DWORD PTR [ebp-0x40],ebx
  00453c65: c7 45 80 8c e5 4d 00                            mov    DWORD PTR [ebp-0x80],0x4de58c
  00453c6c: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00453c72: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00453c75: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00453c78: e8 c3 dd 07 00                                  call   0x4d1a40
  00453c7d: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00453c80: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00453c87: e8 f4 21 03 00                                  call   0x485e80
  00453c8c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00453c8f: 5f                                              pop    edi
  00453c90: 5e                                              pop    esi
  00453c91: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00453c98: 5b                                              pop    ebx
  00453c99: 8b e5                                           mov    esp,ebp
  00453c9b: 5d                                              pop    ebp
  00453c9c: c3                                              ret

; ===== 0x00454260 ?RefreshSystemChannels@CPlayerManager@@SAXXZ =====
  00454260: 55                                              push   ebp
  00454261: 8b ec                                           mov    ebp,esp
  00454263: 6a ff                                           push   0xffffffff
  00454265: 68 e8 6d 4d 00                                  push   0x4d6de8
  0045426a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00454270: 50                                              push   eax
  00454271: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00454278: 51                                              push   ecx
  00454279: a1 38 4a 51 00                                  mov    eax,ds:0x514a38
  0045427e: 56                                              push   esi
  0045427f: b9 38 4a 51 00                                  mov    ecx,0x514a38
  00454284: c7 45 f0 38 4a 51 00                            mov    DWORD PTR [ebp-0x10],0x514a38
  0045428b: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0045428e: a1 a8 4a 51 00                                  mov    eax,ds:0x514aa8
  00454293: 33 f6                                           xor    esi,esi
  00454295: 85 c0                                           test   eax,eax
  00454297: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045429e: 7e 24                                           jle    0x4542c4
  004542a0: 8b 0d a0 4a 51 00                               mov    ecx,DWORD PTR ds:0x514aa0
  004542a6: 8b 04 b1                                        mov    eax,DWORD PTR [ecx+esi*4]
  004542a9: 85 c0                                           test   eax,eax
  004542ab: 74 0d                                           je     0x4542ba
  004542ad: 50                                              push   eax
  004542ae: e8 9d fd ff ff                                  call   0x454050
  004542b3: 8b c8                                           mov    ecx,eax
  004542b5: e8 26 32 fd ff                                  call   0x4274e0
  004542ba: a1 a8 4a 51 00                                  mov    eax,ds:0x514aa8
  004542bf: 46                                              inc    esi
  004542c0: 3b f0                                           cmp    esi,eax
  004542c2: 7c dc                                           jl     0x4542a0
  004542c4: 8b 15 38 4a 51 00                               mov    edx,DWORD PTR ds:0x514a38
  004542ca: b9 38 4a 51 00                                  mov    ecx,0x514a38
  004542cf: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004542d6: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004542d9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004542dc: 5e                                              pop    esi
  004542dd: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004542e4: 8b e5                                           mov    esp,ebp
  004542e6: 5d                                              pop    ebp
  004542e7: c3                                              ret

; ===== 0x00454580 ??0Players@@QAE@XZ =====
  00454580: 55                                              push   ebp
  00454581: 8b ec                                           mov    ebp,esp
  00454583: 6a ff                                           push   0xffffffff
  00454585: 68 59 6e 4d 00                                  push   0x4d6e59
  0045458a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00454590: 50                                              push   eax
  00454591: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00454598: 83 ec 08                                        sub    esp,0x8
  0045459b: 53                                              push   ebx
  0045459c: 56                                              push   esi
  0045459d: 8b f1                                           mov    esi,ecx
  0045459f: 57                                              push   edi
  004545a0: 8b 3d dc e0 4d 00                               mov    edi,DWORD PTR ds:0x4de0dc
  004545a6: 8d 46 08                                        lea    eax,[esi+0x8]
  004545a9: 50                                              push   eax
  004545aa: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004545ad: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004545b3: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  004545ba: ff d7                                           call   edi
  004545bc: 33 db                                           xor    ebx,ebx
  004545be: 8d 8e a8 00 00 00                               lea    ecx,[esi+0xa8]
  004545c4: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004545c7: e8 92 d4 07 00                                  call   0x4d1a5e
  004545cc: 8d 8e ac 00 00 00                               lea    ecx,[esi+0xac]
  004545d2: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004545d6: e8 83 d4 07 00                                  call   0x4d1a5e
  004545db: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  004545e1: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004545e5: e8 74 d4 07 00                                  call   0x4d1a5e
  004545ea: 8d 8e bc 00 00 00                               lea    ecx,[esi+0xbc]
  004545f0: 51                                              push   ecx
  004545f1: c7 86 b4 00 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0xb4],0x4de58c
  004545fb: c7 86 b8 00 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0xb8],0xffffffff
  00454605: ff d7                                           call   edi
  00454607: 89 9e d8 00 00 00                               mov    DWORD PTR [esi+0xd8],ebx
  0045460d: 89 9e dc 00 00 00                               mov    DWORD PTR [esi+0xdc],ebx
  00454613: 89 9e e0 00 00 00                               mov    DWORD PTR [esi+0xe0],ebx
  00454619: 89 9e e4 00 00 00                               mov    DWORD PTR [esi+0xe4],ebx
  0045461f: c7 86 b4 00 00 00 ac e5 4d 00                   mov    DWORD PTR [esi+0xb4],0x4de5ac
  00454629: 89 9e f4 00 00 00                               mov    DWORD PTR [esi+0xf4],ebx
  0045462f: c6 86 e8 00 00 00 08                            mov    BYTE PTR [esi+0xe8],0x8
  00454636: 89 9e ec 00 00 00                               mov    DWORD PTR [esi+0xec],ebx
  0045463c: 8d 96 00 01 00 00                               lea    edx,[esi+0x100]
  00454642: 52                                              push   edx
  00454643: c7 86 f8 00 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0xf8],0x4de58c
  0045464d: c7 86 fc 00 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0xfc],0xffffffff
  00454657: ff d7                                           call   edi
  00454659: 68 28 04 00 00                                  push   0x428
  0045465e: c7 06 9c e5 4d 00                               mov    DWORD PTR [esi],0x4de59c
  00454664: 89 5e 74                                        mov    DWORD PTR [esi+0x74],ebx
  00454667: 88 5e 6c                                        mov    BYTE PTR [esi+0x6c],bl
  0045466a: 89 5e 44                                        mov    DWORD PTR [esi+0x44],ebx
  0045466d: 89 5e 4c                                        mov    DWORD PTR [esi+0x4c],ebx
  00454670: 89 5e 64                                        mov    DWORD PTR [esi+0x64],ebx
  00454673: 89 5e 48                                        mov    DWORD PTR [esi+0x48],ebx
  00454676: e8 75 d9 fe ff                                  call   0x441ff0
  0045467b: 83 c4 04                                        add    esp,0x4
  0045467e: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00454681: 3b c3                                           cmp    eax,ebx
  00454683: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  00454687: 74 09                                           je     0x454692
  00454689: 8b c8                                           mov    ecx,eax
  0045468b: e8 e0 e0 fb ff                                  call   0x412770
  00454690: eb 02                                           jmp    0x454694
  00454692: 33 c0                                           xor    eax,eax
  00454694: 56                                              push   esi
  00454695: 8b c8                                           mov    ecx,eax
  00454697: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0045469b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0045469e: e8 ed e8 fb ff                                  call   0x412f90
  004546a3: b8 01 00 00 00                                  mov    eax,0x1
  004546a8: 89 46 54                                        mov    DWORD PTR [esi+0x54],eax
  004546ab: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  004546ae: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004546b1: 83 c8 ff                                        or     eax,0xffffffff
  004546b4: 89 86 9c 00 00 00                               mov    DWORD PTR [esi+0x9c],eax
  004546ba: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  004546bd: 89 46 3c                                        mov    DWORD PTR [esi+0x3c],eax
  004546c0: 8d 86 98 00 00 00                               lea    eax,[esi+0x98]
  004546c6: 89 9e a0 00 00 00                               mov    DWORD PTR [esi+0xa0],ebx
  004546cc: 50                                              push   eax
  004546cd: 89 9e a4 00 00 00                               mov    DWORD PTR [esi+0xa4],ebx
  004546d3: 89 5e 50                                        mov    DWORD PTR [esi+0x50],ebx
  004546d6: 89 5e 68                                        mov    DWORD PTR [esi+0x68],ebx
  004546d9: 89 5e 5c                                        mov    DWORD PTR [esi+0x5c],ebx
  004546dc: 88 5e 41                                        mov    BYTE PTR [esi+0x41],bl
  004546df: 89 5e 34                                        mov    DWORD PTR [esi+0x34],ebx
  004546e2: c6 46 40 06                                     mov    BYTE PTR [esi+0x40],0x6
  004546e6: 89 9e 94 00 00 00                               mov    DWORD PTR [esi+0x94],ebx
  004546ec: 89 9e 18 01 00 00                               mov    DWORD PTR [esi+0x118],ebx
  004546f2: 89 9e 90 00 00 00                               mov    DWORD PTR [esi+0x90],ebx
  004546f8: 88 9e 8c 00 00 00                               mov    BYTE PTR [esi+0x8c],bl
  004546fe: ff 15 78 e3 4d 00                               call   DWORD PTR ds:0x4de378
  00454704: 8b 0d d0 4c 51 00                               mov    ecx,DWORD PTR ds:0x514cd0
  0045470a: 89 8e 80 00 00 00                               mov    DWORD PTR [esi+0x80],ecx
  00454710: a1 d0 4c 51 00                                  mov    eax,ds:0x514cd0
  00454715: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00454718: 83 c4 04                                        add    esp,0x4
  0045471b: 40                                              inc    eax
  0045471c: a3 d0 4c 51 00                                  mov    ds:0x514cd0,eax
  00454721: 89 9e 84 00 00 00                               mov    DWORD PTR [esi+0x84],ebx
  00454727: 89 9e 88 00 00 00                               mov    DWORD PTR [esi+0x88],ebx
  0045472d: 88 5e 7a                                        mov    BYTE PTR [esi+0x7a],bl
  00454730: 5f                                              pop    edi
  00454731: c6 46 79 01                                     mov    BYTE PTR [esi+0x79],0x1
  00454735: c6 46 78 01                                     mov    BYTE PTR [esi+0x78],0x1
  00454739: 8b c6                                           mov    eax,esi
  0045473b: 5e                                              pop    esi
  0045473c: 5b                                              pop    ebx
  0045473d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00454744: 8b e5                                           mov    esp,ebp
  00454746: 5d                                              pop    ebp
  00454747: c3                                              ret

; ===== 0x00454750 ??1Players@@UAE@XZ =====
  00454750: 55                                              push   ebp
  00454751: 8b ec                                           mov    ebp,esp
  00454753: 6a ff                                           push   0xffffffff
  00454755: 68 c6 6e 4d 00                                  push   0x4d6ec6
  0045475a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00454760: 50                                              push   eax
  00454761: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00454768: 83 ec 08                                        sub    esp,0x8
  0045476b: 53                                              push   ebx
  0045476c: 56                                              push   esi
  0045476d: 57                                              push   edi
  0045476e: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  00454771: c7 01 9c e5 4d 00                               mov    DWORD PTR [ecx],0x4de59c
  00454777: 8b 81 d8 00 00 00                               mov    eax,DWORD PTR [ecx+0xd8]
  0045477d: 8d b1 b4 00 00 00                               lea    esi,[ecx+0xb4]
  00454783: 33 db                                           xor    ebx,ebx
  00454785: c7 45 fc 05 00 00 00                            mov    DWORD PTR [ebp-0x4],0x5
  0045478c: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0045478f: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00454792: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00454796: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  00454799: 74 0a                                           je     0x4547a5
  0045479b: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0045479e: 8b 02                                           mov    eax,DWORD PTR [edx]
  004547a0: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004547a3: eb 07                                           jmp    0x4547ac
  004547a5: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  004547ac: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004547af: 3b c3                                           cmp    eax,ebx
  004547b1: 0f 84 d1 00 00 00                               je     0x454888
  004547b7: 8b 7e 38                                        mov    edi,DWORD PTR [esi+0x38]
  004547ba: 8b c8                                           mov    ecx,eax
  004547bc: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004547bf: 89 4e 2c                                        mov    DWORD PTR [esi+0x2c],ecx
  004547c2: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  004547c5: 4f                                              dec    edi
  004547c6: 3b c1                                           cmp    eax,ecx
  004547c8: 89 7e 38                                        mov    DWORD PTR [esi+0x38],edi
  004547cb: 74 3d                                           je     0x45480a
  004547cd: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004547d0: 74 34                                           je     0x454806
  004547d2: 8b 10                                           mov    edx,DWORD PTR [eax]
  004547d4: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004547d7: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004547da: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004547dd: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004547e0: 8b 10                                           mov    edx,DWORD PTR [eax]
  004547e2: 89 11                                           mov    DWORD PTR [ecx],edx
  004547e4: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  004547e7: 83 f8 01                                        cmp    eax,0x1
  004547ea: 75 0b                                           jne    0x4547f7
  004547ec: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004547ef: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004547f2: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  004547f5: eb 63                                           jmp    0x45485a
  004547f7: 83 f8 02                                        cmp    eax,0x2
  004547fa: 75 5e                                           jne    0x45485a
  004547fc: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004547ff: 8b 02                                           mov    eax,DWORD PTR [edx]
  00454801: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454804: eb 54                                           jmp    0x45485a
  00454806: 3b c1                                           cmp    eax,ecx
  00454808: 75 23                                           jne    0x45482d
  0045480a: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0045480d: 74 23                                           je     0x454832
  0045480f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00454812: 89 19                                           mov    DWORD PTR [ecx],ebx
  00454814: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00454817: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0045481a: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0045481d: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  00454821: 8b ca                                           mov    ecx,edx
  00454823: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00454826: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00454829: 75 2f                                           jne    0x45485a
  0045482b: eb 2a                                           jmp    0x454857
  0045482d: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00454830: 75 1c                                           jne    0x45484e
  00454832: 3b c1                                           cmp    eax,ecx
  00454834: 74 18                                           je     0x45484e
  00454836: 8b 00                                           mov    eax,DWORD PTR [eax]
  00454838: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0045483b: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0045483e: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00454840: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454843: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00454846: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  0045484a: 75 0e                                           jne    0x45485a
  0045484c: eb 09                                           jmp    0x454857
  0045484e: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  00454851: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  00454854: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  00454857: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0045485a: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0045485d: 8b 7a 08                                        mov    edi,DWORD PTR [edx+0x8]
  00454860: 3b fb                                           cmp    edi,ebx
  00454862: 74 10                                           je     0x454874
  00454864: 8b cf                                           mov    ecx,edi
  00454866: e8 d5 d1 07 00                                  call   0x4d1a40
  0045486b: 57                                              push   edi
  0045486c: e8 ef d7 fe ff                                  call   0x442060
  00454871: 83 c4 04                                        add    esp,0x4
  00454874: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  00454877: 50                                              push   eax
  00454878: e8 e3 d7 fe ff                                  call   0x442060
  0045487d: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00454880: 83 c4 04                                        add    esp,0x4
  00454883: e9 0e ff ff ff                                  jmp    0x454796
  00454888: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0045488b: 74 04                                           je     0x454891
  0045488d: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  00454891: 8b 3d e0 e0 4d 00                               mov    edi,DWORD PTR ds:0x4de0e0
  00454897: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0045489a: c7 81 f8 00 00 00 8c e5 4d 00                   mov    DWORD PTR [ecx+0xf8],0x4de58c
  004548a4: 81 c1 00 01 00 00                               add    ecx,0x100
  004548aa: 51                                              push   ecx
  004548ab: ff d7                                           call   edi
  004548ad: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004548b0: c7 06 ac e5 4d 00                               mov    DWORD PTR [esi],0x4de5ac
  004548b6: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  004548b9: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004548bd: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  004548c0: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004548c3: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004548c7: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  004548ca: 74 0a                                           je     0x4548d6
  004548cc: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004548cf: 8b 02                                           mov    eax,DWORD PTR [edx]
  004548d1: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004548d4: eb 07                                           jmp    0x4548dd
  004548d6: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  004548dd: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  004548e0: 74 09                                           je     0x4548eb
  004548e2: 8b ce                                           mov    ecx,esi
  004548e4: e8 c7 45 00 00                                  call   0x458eb0
  004548e9: eb dc                                           jmp    0x4548c7
  004548eb: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  004548ee: 74 04                                           je     0x4548f4
  004548f0: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  004548f4: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004548f7: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004548fd: 83 c6 08                                        add    esi,0x8
  00454900: 56                                              push   esi
  00454901: ff d7                                           call   edi
  00454903: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00454906: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  0045490c: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00454910: e8 2b d1 07 00                                  call   0x4d1a40
  00454915: 8d 8e ac 00 00 00                               lea    ecx,[esi+0xac]
  0045491b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045491f: e8 1c d1 07 00                                  call   0x4d1a40
  00454924: 8d 8e a8 00 00 00                               lea    ecx,[esi+0xa8]
  0045492a: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0045492d: e8 0e d1 07 00                                  call   0x4d1a40
  00454932: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00454938: 83 c6 08                                        add    esi,0x8
  0045493b: 56                                              push   esi
  0045493c: ff d7                                           call   edi
  0045493e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00454941: 5f                                              pop    edi
  00454942: 5e                                              pop    esi
  00454943: 5b                                              pop    ebx
  00454944: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045494b: 8b e5                                           mov    esp,ebp
  0045494d: 5d                                              pop    ebp
  0045494e: c3                                              ret

; ===== 0x00454950 ?QuotedAccount@Players@@SAPADQADAAVCString@@@Z =====
  00454950: 55                                              push   ebp
  00454951: 8b ec                                           mov    ebp,esp
  00454953: 53                                              push   ebx
  00454954: 56                                              push   esi
  00454955: 57                                              push   edi
  00454956: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00454959: 8b 07                                           mov    eax,DWORD PTR [edi]
  0045495b: 8b 58 f8                                        mov    ebx,DWORD PTR [eax-0x8]
  0045495e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00454961: 33 c9                                           xor    ecx,ecx
  00454963: 33 f6                                           xor    esi,esi
  00454965: 85 db                                           test   ebx,ebx
  00454967: 7e 17                                           jle    0x454980
  00454969: 8b 17                                           mov    edx,DWORD PTR [edi]
  0045496b: 8a 14 32                                        mov    dl,BYTE PTR [edx+esi*1]
  0045496e: 80 fa 27                                        cmp    dl,0x27
  00454971: 88 14 01                                        mov    BYTE PTR [ecx+eax*1],dl
  00454974: 75 04                                           jne    0x45497a
  00454976: 41                                              inc    ecx
  00454977: 88 14 01                                        mov    BYTE PTR [ecx+eax*1],dl
  0045497a: 41                                              inc    ecx
  0045497b: 46                                              inc    esi
  0045497c: 3b f3                                           cmp    esi,ebx
  0045497e: 7c e9                                           jl     0x454969
  00454980: 5f                                              pop    edi
  00454981: 5e                                              pop    esi
  00454982: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  00454986: 5b                                              pop    ebx
  00454987: 5d                                              pop    ebp
  00454988: c3                                              ret

; ===== 0x00454990 ?InitializeODBC@Players@@SAXXZ =====
  00454990: 55                                              push   ebp
  00454991: 8b ec                                           mov    ebp,esp
  00454993: 81 ec 00 08 00 00                               sub    esp,0x800
  00454999: a1 c4 42 51 00                                  mov    eax,ds:0x5142c4
  0045499e: 8b 0d c0 42 51 00                               mov    ecx,DWORD PTR ds:0x5142c0
  004549a4: 50                                              push   eax
  004549a5: 51                                              push   ecx
  004549a6: 68 d4 11 50 00                                  push   0x5011d4
  004549ab: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004549b0: e8 7b a0 ff ff                                  call   0x44ea30
  004549b5: 8b 15 20 42 51 00                               mov    edx,DWORD PTR ds:0x514220
  004549bb: 6a 00                                           push   0x0
  004549bd: 52                                              push   edx
  004549be: 8d 85 00 f8 ff ff                               lea    eax,[ebp-0x800]
  004549c4: 68 04 62 50 00                                  push   0x506204
  004549c9: 50                                              push   eax
  004549ca: c6 85 00 f8 ff ff 00                            mov    BYTE PTR [ebp-0x800],0x0
  004549d1: e8 6a ef fa ff                                  call   0x403940
  004549d6: 83 c4 0c                                        add    esp,0xc
  004549d9: 50                                              push   eax
  004549da: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004549df: e8 9c a3 ff ff                                  call   0x44ed80
  004549e4: 8b e5                                           mov    esp,ebp
  004549e6: 5d                                              pop    ebp
  004549e7: c3                                              ret

; ===== 0x004549F0 ?DestroyODBC@Players@@SAXXZ =====
  004549f0: 55                                              push   ebp
  004549f1: 8b ec                                           mov    ebp,esp
  004549f3: 81 ec 00 08 00 00                               sub    esp,0x800
  004549f9: a1 20 42 51 00                                  mov    eax,ds:0x514220
  004549fe: 6a 00                                           push   0x0
  00454a00: 50                                              push   eax
  00454a01: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  00454a07: 68 04 62 50 00                                  push   0x506204
  00454a0c: 51                                              push   ecx
  00454a0d: c6 85 00 f8 ff ff 00                            mov    BYTE PTR [ebp-0x800],0x0
  00454a14: e8 27 ef fa ff                                  call   0x403940
  00454a19: 83 c4 0c                                        add    esp,0xc
  00454a1c: 50                                              push   eax
  00454a1d: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00454a22: e8 59 a3 ff ff                                  call   0x44ed80
  00454a27: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00454a2c: e8 3f a2 ff ff                                  call   0x44ec70
  00454a31: 8b e5                                           mov    esp,ebp
  00454a33: 5d                                              pop    ebp
  00454a34: c3                                              ret

; ===== 0x00454A40 ?GetIP@Players@@QAE?AVCString@@XZ =====
  00454a40: 55                                              push   ebp
  00454a41: 8b ec                                           mov    ebp,esp
  00454a43: 51                                              push   ecx
  00454a44: 8b 41 28                                        mov    eax,DWORD PTR [ecx+0x28]
  00454a47: 56                                              push   esi
  00454a48: 50                                              push   eax
  00454a49: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00454a50: e8 ad da 07 00                                  call   0x4d2502
  00454a55: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00454a58: 50                                              push   eax
  00454a59: 8b ce                                           mov    ecx,esi
  00454a5b: e8 04 d0 07 00                                  call   0x4d1a64
  00454a60: 8b c6                                           mov    eax,esi
  00454a62: 5e                                              pop    esi
  00454a63: 8b e5                                           mov    esp,ebp
  00454a65: 5d                                              pop    ebp
  00454a66: c2 04 00                                        ret    0x4

; ===== 0x00454A70 ?GetPort@Players@@QAEHXZ =====
  00454a70: 33 c0                                           xor    eax,eax
  00454a72: 66 8b 41 26                                     mov    ax,WORD PTR [ecx+0x26]
  00454a76: 50                                              push   eax
  00454a77: e8 ce da 07 00                                  call   0x4d254a
  00454a7c: 25 ff ff 00 00                                  and    eax,0xffff
  00454a81: c3                                              ret

; ===== 0x00454A90 ?IsGod@Players@@QAEHXZ =====
  00454a90: 8b 41 64                                        mov    eax,DWORD PTR [ecx+0x64]
  00454a93: c3                                              ret

; ===== 0x00454AA0 ?SetGodMode@Players@@QAEXH@Z =====
  00454aa0: 55                                              push   ebp
  00454aa1: 8b ec                                           mov    ebp,esp
  00454aa3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00454aa6: 89 41 64                                        mov    DWORD PTR [ecx+0x64],eax
  00454aa9: 5d                                              pop    ebp
  00454aaa: c2 04 00                                        ret    0x4

; ===== 0x00454AB0 ?SetInGame@Players@@QAEXH@Z =====
  00454ab0: 55                                              push   ebp
  00454ab1: 8b ec                                           mov    ebp,esp
  00454ab3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00454ab6: 89 41 44                                        mov    DWORD PTR [ecx+0x44],eax
  00454ab9: 5d                                              pop    ebp
  00454aba: c2 04 00                                        ret    0x4

; ===== 0x00454AC0 ?SetGodFlags@Players@@QAEX_K@Z =====
  00454ac0: 55                                              push   ebp
  00454ac1: 8b ec                                           mov    ebp,esp
  00454ac3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00454ac6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00454ac9: 89 81 a0 00 00 00                               mov    DWORD PTR [ecx+0xa0],eax
  00454acf: 89 91 a4 00 00 00                               mov    DWORD PTR [ecx+0xa4],edx
  00454ad5: 5d                                              pop    ebp
  00454ad6: c2 08 00                                        ret    0x8

; ===== 0x00454AE0 ?GetGodFlags@Players@@QAE_KXZ =====
  00454ae0: 8b 81 a0 00 00 00                               mov    eax,DWORD PTR [ecx+0xa0]
  00454ae6: 8b 91 a4 00 00 00                               mov    edx,DWORD PTR [ecx+0xa4]
  00454aec: c3                                              ret

; ===== 0x00454AF0 ?NbPlayers@Players@@QAEIXZ =====
  00454af0: 8b 81 ec 00 00 00                               mov    eax,DWORD PTR [ecx+0xec]
  00454af6: c3                                              ret

; ===== 0x00455D40 ?WriteCreditDeduction@Players@@QAEXXZ =====
  00455d40: 55                                              push   ebp
  00455d41: 8b ec                                           mov    ebp,esp
  00455d43: 6a ff                                           push   0xffffffff
  00455d45: 68 f6 70 4d 00                                  push   0x4d70f6
  00455d4a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00455d50: 50                                              push   eax
  00455d51: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00455d58: 81 ec 18 04 00 00                               sub    esp,0x418
  00455d5e: 53                                              push   ebx
  00455d5f: 56                                              push   esi
  00455d60: 57                                              push   edi
  00455d61: 8b f9                                           mov    edi,ecx
  00455d63: 8a 47 41                                        mov    al,BYTE PTR [edi+0x41]
  00455d66: 33 db                                           xor    ebx,ebx
  00455d68: 3a c3                                           cmp    al,bl
  00455d6a: 0f 84 a8 02 00 00                               je     0x456018
  00455d70: a0 24 42 51 00                                  mov    al,ds:0x514224
  00455d75: 3a c3                                           cmp    al,bl
  00455d77: 0f 85 a3 00 00 00                               jne    0x455e20
  00455d7d: 6a 1c                                           push   0x1c
  00455d7f: e8 6c c2 fe ff                                  call   0x441ff0
  00455d84: 8b f0                                           mov    esi,eax
  00455d86: 83 c4 04                                        add    esp,0x4
  00455d89: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  00455d8c: 3b f3                                           cmp    esi,ebx
  00455d8e: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00455d91: 74 09                                           je     0x455d9c
  00455d93: 8b ce                                           mov    ecx,esi
  00455d95: e8 c4 bc 07 00                                  call   0x4d1a5e
  00455d9a: eb 02                                           jmp    0x455d9e
  00455d9c: 33 f6                                           xor    esi,esi
  00455d9e: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00455da1: 83 cb ff                                        or     ebx,0xffffffff
  00455da4: 50                                              push   eax
  00455da5: 8b cf                                           mov    ecx,edi
  00455da7: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00455daa: e8 b1 2e 00 00                                  call   0x458c60
  00455daf: 50                                              push   eax
  00455db0: 8b ce                                           mov    ecx,esi
  00455db2: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00455db9: e8 88 bc 07 00                                  call   0x4d1a46
  00455dbe: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00455dc1: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00455dc4: e8 77 bc 07 00                                  call   0x4d1a40
  00455dc9: 8b 8f 80 00 00 00                               mov    ecx,DWORD PTR [edi+0x80]
  00455dcf: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00455dd2: 8b cf                                           mov    ecx,edi
  00455dd4: e8 e7 1a 00 00                                  call   0x4578c0
  00455dd9: e8 9c bf 07 00                                  call   0x4d1d7a
  00455dde: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00455de1: 83 c7 24                                        add    edi,0x24
  00455de4: 8b 07                                           mov    eax,DWORD PTR [edi]
  00455de6: 8d 56 0c                                        lea    edx,[esi+0xc]
  00455de9: 89 02                                           mov    DWORD PTR [edx],eax
  00455deb: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00455dee: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00455df1: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00455df4: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  00455df7: 8b 4f 0c                                        mov    ecx,DWORD PTR [edi+0xc]
  00455dfa: 56                                              push   esi
  00455dfb: 68 50 51 45 00                                  push   0x455150
  00455e00: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  00455e03: e8 a8 04 fb ff                                  call   0x4062b0
  00455e08: 8b c8                                           mov    ecx,eax
  00455e0a: e8 21 03 fb ff                                  call   0x406130
  00455e0f: 5f                                              pop    edi
  00455e10: 5e                                              pop    esi
  00455e11: 5b                                              pop    ebx
  00455e12: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00455e15: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00455e1c: 8b e5                                           mov    esp,ebp
  00455e1e: 5d                                              pop    ebp
  00455e1f: c3                                              ret
  00455e20: 39 1d 48 42 51 00                               cmp    DWORD PTR ds:0x514248,ebx
  00455e26: 0f 84 ec 01 00 00                               je     0x456018
  00455e2c: 3c 01                                           cmp    al,0x1
  00455e2e: 0f 85 e4 01 00 00                               jne    0x456018
  00455e34: 8b 15 2c 42 51 00                               mov    edx,DWORD PTR ds:0x51422c
  00455e3a: 39 5a f8                                        cmp    DWORD PTR [edx-0x8],ebx
  00455e3d: 0f 84 d5 01 00 00                               je     0x456018
  00455e43: e8 68 28 02 00                                  call   0x4786b0
  00455e48: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00455e4b: 8d 45 dc                                        lea    eax,[ebp-0x24]
  00455e4e: 50                                              push   eax
  00455e4f: ff 15 78 e3 4d 00                               call   DWORD PTR ds:0x4de378
  00455e55: 8b 8f 98 00 00 00                               mov    ecx,DWORD PTR [edi+0x98]
  00455e5b: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  00455e5e: 51                                              push   ecx
  00455e5f: 52                                              push   edx
  00455e60: ff 15 f8 e2 4d 00                               call   DWORD PTR ds:0x4de2f8
  00455e66: e8 0f bf 07 00                                  call   0x4d1d7a
  00455e6b: 8b 8f 9c 00 00 00                               mov    ecx,DWORD PTR [edi+0x9c]
  00455e71: 2b c8                                           sub    ecx,eax
  00455e73: b8 00 00 00 00                                  mov    eax,0x0
  00455e78: 0f 98 c0                                        sets   al
  00455e7b: 6a 44                                           push   0x44
  00455e7d: 48                                              dec    eax
  00455e7e: 23 c1                                           and    eax,ecx
  00455e80: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  00455e83: e8 68 c1 fe ff                                  call   0x441ff0
  00455e88: 8b f0                                           mov    esi,eax
  00455e8a: 83 c4 10                                        add    esp,0x10
  00455e8d: 3b f3                                           cmp    esi,ebx
  00455e8f: 74 35                                           je     0x455ec6
  00455e91: 8d 4e 08                                        lea    ecx,[esi+0x8]
  00455e94: 51                                              push   ecx
  00455e95: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00455e9b: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00455ea2: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00455ea8: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  00455eab: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  00455eae: 89 5e 2c                                        mov    DWORD PTR [esi+0x2c],ebx
  00455eb1: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  00455eb4: c7 06 88 e8 4d 00                               mov    DWORD PTR [esi],0x4de888
  00455eba: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00455ebd: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00455ec1: 89 5e 38                                        mov    DWORD PTR [esi+0x38],ebx
  00455ec4: eb 02                                           jmp    0x455ec8
  00455ec6: 33 f6                                           xor    esi,esi
  00455ec8: 8d 55 e0                                        lea    edx,[ebp-0x20]
  00455ecb: 52                                              push   edx
  00455ecc: 8b cf                                           mov    ecx,edi
  00455ece: e8 3d 0f 00 00                                  call   0x456e10
  00455ed3: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00455ed5: 8b 51 f8                                        mov    edx,DWORD PTR [ecx-0x8]
  00455ed8: 33 c9                                           xor    ecx,ecx
  00455eda: 33 ff                                           xor    edi,edi
  00455edc: 3b d3                                           cmp    edx,ebx
  00455ede: 89 55 f0                                        mov    DWORD PTR [ebp-0x10],edx
  00455ee1: 7e 22                                           jle    0x455f05
  00455ee3: 8b 10                                           mov    edx,DWORD PTR [eax]
  00455ee5: 8a 14 3a                                        mov    dl,BYTE PTR [edx+edi*1]
  00455ee8: 80 fa 27                                        cmp    dl,0x27
  00455eeb: 88 94 0d dc fb ff ff                            mov    BYTE PTR [ebp+ecx*1-0x424],dl
  00455ef2: 75 08                                           jne    0x455efc
  00455ef4: 41                                              inc    ecx
  00455ef5: 88 94 0d dc fb ff ff                            mov    BYTE PTR [ebp+ecx*1-0x424],dl
  00455efc: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00455eff: 41                                              inc    ecx
  00455f00: 47                                              inc    edi
  00455f01: 3b fa                                           cmp    edi,edx
  00455f03: 7c de                                           jl     0x455ee3
  00455f05: 88 9c 0d dc fb ff ff                            mov    BYTE PTR [ebp+ecx*1-0x424],bl
  00455f0c: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00455f0f: e8 2c bb 07 00                                  call   0x4d1a40
  00455f14: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00455f17: e8 42 bb 07 00                                  call   0x4d1a5e
  00455f1c: 8b 0d 28 42 51 00                               mov    ecx,DWORD PTR ds:0x514228
  00455f22: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  00455f25: 8d 85 dc fb ff ff                               lea    eax,[ebp-0x424]
  00455f2b: 50                                              push   eax
  00455f2c: a1 2c 42 51 00                                  mov    eax,ds:0x51422c
  00455f31: 51                                              push   ecx
  00455f32: 8b 0d 44 42 51 00                               mov    ecx,DWORD PTR ds:0x514244
  00455f38: 52                                              push   edx
  00455f39: 50                                              push   eax
  00455f3a: 51                                              push   ecx
  00455f3b: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00455f3e: 68 20 66 50 00                                  push   0x506620
  00455f43: 52                                              push   edx
  00455f44: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00455f4b: e8 44 bb 07 00                                  call   0x4d1a94
  00455f50: 6a 08                                           push   0x8
  00455f52: e8 99 c0 fe ff                                  call   0x441ff0
  00455f57: 8b f8                                           mov    edi,eax
  00455f59: 83 c4 20                                        add    esp,0x20
  00455f5c: 89 7d e4                                        mov    DWORD PTR [ebp-0x1c],edi
  00455f5f: 3b fb                                           cmp    edi,ebx
  00455f61: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00455f65: 74 0a                                           je     0x455f71
  00455f67: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00455f6a: e8 ef ba 07 00                                  call   0x4d1a5e
  00455f6f: eb 02                                           jmp    0x455f73
  00455f71: 33 ff                                           xor    edi,edi
  00455f73: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00455f76: 50                                              push   eax
  00455f77: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00455f7a: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00455f7e: e8 c3 ba 07 00                                  call   0x4d1a46
  00455f83: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00455f86: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00455f89: 42                                              inc    edx
  00455f8a: 3b c3                                           cmp    eax,ebx
  00455f8c: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00455f8f: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00455f92: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00455f96: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00455f99: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00455f9c: 6a 0c                                           push   0xc
  00455f9e: 75 28                                           jne    0x455fc8
  00455fa0: e8 4b c0 fe ff                                  call   0x441ff0
  00455fa5: 83 c4 04                                        add    esp,0x4
  00455fa8: 3b c3                                           cmp    eax,ebx
  00455faa: 74 07                                           je     0x455fb3
  00455fac: 89 18                                           mov    DWORD PTR [eax],ebx
  00455fae: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00455fb1: eb 02                                           jmp    0x455fb5
  00455fb3: 33 c0                                           xor    eax,eax
  00455fb5: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00455fb8: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00455fbb: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00455fbe: 89 18                                           mov    DWORD PTR [eax],ebx
  00455fc0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00455fc3: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00455fc6: eb 2b                                           jmp    0x455ff3
  00455fc8: e8 23 c0 fe ff                                  call   0x441ff0
  00455fcd: 83 c4 04                                        add    esp,0x4
  00455fd0: 3b c3                                           cmp    eax,ebx
  00455fd2: 74 07                                           je     0x455fdb
  00455fd4: 89 18                                           mov    DWORD PTR [eax],ebx
  00455fd6: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00455fd9: eb 02                                           jmp    0x455fdd
  00455fdb: 33 c0                                           xor    eax,eax
  00455fdd: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00455fe0: 89 02                                           mov    DWORD PTR [edx],eax
  00455fe2: 8b 4e 2c                                        mov    ecx,DWORD PTR [esi+0x2c]
  00455fe5: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00455fe8: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00455feb: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00455fee: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00455ff1: 89 1a                                           mov    DWORD PTR [edx],ebx
  00455ff3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00455ff6: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00455ff9: 68 14 66 50 00                                  push   0x506614
  00455ffe: 53                                              push   ebx
  00455fff: 53                                              push   ebx
  00456000: 56                                              push   esi
  00456001: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  00456004: e8 e7 91 ff ff                                  call   0x44f1f0
  00456009: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0045600c: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456013: e8 28 ba 07 00                                  call   0x4d1a40
  00456018: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045601b: 5f                                              pop    edi
  0045601c: 5e                                              pop    esi
  0045601d: 5b                                              pop    ebx
  0045601e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00456025: 8b e5                                           mov    esp,ebp
  00456027: 5d                                              pop    ebp
  00456028: c3                                              ret

; ===== 0x00456030 ?LoadAccount@Players@@QAEHVCString@@@Z =====
  00456030: 55                                              push   ebp
  00456031: 8b ec                                           mov    ebp,esp
  00456033: 6a ff                                           push   0xffffffff
  00456035: 68 34 71 4d 00                                  push   0x4d7134
  0045603a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00456040: 50                                              push   eax
  00456041: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00456048: 81 ec 2c 04 00 00                               sub    esp,0x42c
  0045604e: 53                                              push   ebx
  0045604f: 56                                              push   esi
  00456050: 57                                              push   edi
  00456051: 8b f1                                           mov    esi,ecx
  00456053: 33 ff                                           xor    edi,edi
  00456055: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00456058: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0045605b: e8 fe b9 07 00                                  call   0x4d1a5e
  00456060: 8b 86 d8 00 00 00                               mov    eax,DWORD PTR [esi+0xd8]
  00456066: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045606a: 89 86 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],eax
  00456070: 89 be f4 00 00 00                               mov    DWORD PTR [esi+0xf4],edi
  00456076: c6 86 e8 00 00 00 08                            mov    BYTE PTR [esi+0xe8],0x8
  0045607d: 39 be f4 00 00 00                               cmp    DWORD PTR [esi+0xf4],edi
  00456083: 74 10                                           je     0x456095
  00456085: 8b 8e d4 00 00 00                               mov    ecx,DWORD PTR [esi+0xd4]
  0045608b: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0045608d: 89 96 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],edx
  00456093: eb 0a                                           jmp    0x45609f
  00456095: c7 86 f4 00 00 00 01 00 00 00                   mov    DWORD PTR [esi+0xf4],0x1
  0045609f: 8b 86 d4 00 00 00                               mov    eax,DWORD PTR [esi+0xd4]
  004560a5: 3b c7                                           cmp    eax,edi
  004560a7: 0f 84 27 01 00 00                               je     0x4561d4
  004560ad: 8b 9e ec 00 00 00                               mov    ebx,DWORD PTR [esi+0xec]
  004560b3: 8b 8e dc 00 00 00                               mov    ecx,DWORD PTR [esi+0xdc]
  004560b9: 89 86 e0 00 00 00                               mov    DWORD PTR [esi+0xe0],eax
  004560bf: 8b 86 d4 00 00 00                               mov    eax,DWORD PTR [esi+0xd4]
  004560c5: 4b                                              dec    ebx
  004560c6: 3b c1                                           cmp    eax,ecx
  004560c8: 89 9e ec 00 00 00                               mov    DWORD PTR [esi+0xec],ebx
  004560ce: 74 59                                           je     0x456129
  004560d0: 3b 86 d8 00 00 00                               cmp    eax,DWORD PTR [esi+0xd8]
  004560d6: 74 4d                                           je     0x456125
  004560d8: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004560da: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004560dd: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004560e0: 8b 86 d4 00 00 00                               mov    eax,DWORD PTR [esi+0xd4]
  004560e6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004560e9: 8b 10                                           mov    edx,DWORD PTR [eax]
  004560eb: 89 11                                           mov    DWORD PTR [ecx],edx
  004560ed: 8b 86 f4 00 00 00                               mov    eax,DWORD PTR [esi+0xf4]
  004560f3: 83 f8 01                                        cmp    eax,0x1
  004560f6: 75 14                                           jne    0x45610c
  004560f8: 8b 86 d4 00 00 00                               mov    eax,DWORD PTR [esi+0xd4]
  004560fe: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00456101: 89 8e d4 00 00 00                               mov    DWORD PTR [esi+0xd4],ecx
  00456107: e9 97 00 00 00                                  jmp    0x4561a3
  0045610c: 83 f8 02                                        cmp    eax,0x2
  0045610f: 0f 85 8e 00 00 00                               jne    0x4561a3
  00456115: 8b 96 d4 00 00 00                               mov    edx,DWORD PTR [esi+0xd4]
  0045611b: 8b 02                                           mov    eax,DWORD PTR [edx]
  0045611d: 89 86 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],eax
  00456123: eb 7e                                           jmp    0x4561a3
  00456125: 3b c1                                           cmp    eax,ecx
  00456127: 75 32                                           jne    0x45615b
  00456129: 3b 86 d8 00 00 00                               cmp    eax,DWORD PTR [esi+0xd8]
  0045612f: 74 32                                           je     0x456163
  00456131: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00456134: 89 39                                           mov    DWORD PTR [ecx],edi
  00456136: 8b 96 d4 00 00 00                               mov    edx,DWORD PTR [esi+0xd4]
  0045613c: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0045613f: 89 86 dc 00 00 00                               mov    DWORD PTR [esi+0xdc],eax
  00456145: 83 be f4 00 00 00 02                            cmp    DWORD PTR [esi+0xf4],0x2
  0045614c: 8b ca                                           mov    ecx,edx
  0045614e: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00456151: 89 96 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],edx
  00456157: 75 4a                                           jne    0x4561a3
  00456159: eb 42                                           jmp    0x45619d
  0045615b: 3b 86 d8 00 00 00                               cmp    eax,DWORD PTR [esi+0xd8]
  00456161: 75 28                                           jne    0x45618b
  00456163: 3b c1                                           cmp    eax,ecx
  00456165: 74 24                                           je     0x45618b
  00456167: 8b 00                                           mov    eax,DWORD PTR [eax]
  00456169: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0045616c: 8b 8e d4 00 00 00                               mov    ecx,DWORD PTR [esi+0xd4]
  00456172: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00456174: 89 86 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],eax
  0045617a: 89 86 d8 00 00 00                               mov    DWORD PTR [esi+0xd8],eax
  00456180: 83 be f4 00 00 00 01                            cmp    DWORD PTR [esi+0xf4],0x1
  00456187: 75 1a                                           jne    0x4561a3
  00456189: eb 12                                           jmp    0x45619d
  0045618b: 89 be d4 00 00 00                               mov    DWORD PTR [esi+0xd4],edi
  00456191: 89 be d8 00 00 00                               mov    DWORD PTR [esi+0xd8],edi
  00456197: 89 be dc 00 00 00                               mov    DWORD PTR [esi+0xdc],edi
  0045619d: 89 be f4 00 00 00                               mov    DWORD PTR [esi+0xf4],edi
  004561a3: 8b 96 e0 00 00 00                               mov    edx,DWORD PTR [esi+0xe0]
  004561a9: 8b 5a 08                                        mov    ebx,DWORD PTR [edx+0x8]
  004561ac: 3b df                                           cmp    ebx,edi
  004561ae: 74 10                                           je     0x4561c0
  004561b0: 8b cb                                           mov    ecx,ebx
  004561b2: e8 89 b8 07 00                                  call   0x4d1a40
  004561b7: 53                                              push   ebx
  004561b8: e8 a3 be fe ff                                  call   0x442060
  004561bd: 83 c4 04                                        add    esp,0x4
  004561c0: 8b 86 e0 00 00 00                               mov    eax,DWORD PTR [esi+0xe0]
  004561c6: 50                                              push   eax
  004561c7: e8 94 be fe ff                                  call   0x442060
  004561cc: 83 c4 04                                        add    esp,0x4
  004561cf: e9 a9 fe ff ff                                  jmp    0x45607d
  004561d4: 39 be f4 00 00 00                               cmp    DWORD PTR [esi+0xf4],edi
  004561da: 74 07                                           je     0x4561e3
  004561dc: c6 86 e8 00 00 00 07                            mov    BYTE PTR [esi+0xe8],0x7
  004561e3: 57                                              push   edi
  004561e4: 57                                              push   edi
  004561e5: 8b ce                                           mov    ecx,esi
  004561e7: 89 be f4 00 00 00                               mov    DWORD PTR [esi+0xf4],edi
  004561ed: e8 ce e8 ff ff                                  call   0x454ac0
  004561f2: 68 02 00 00 80                                  push   0x80000002
  004561f7: 68 b8 67 50 00                                  push   0x5067b8
  004561fc: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004561ff: 68 a8 44 50 00                                  push   0x5044a8
  00456204: 51                                              push   ecx
  00456205: e8 86 0d fb ff                                  call   0x406f90
  0045620a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0045620d: 83 c4 10                                        add    esp,0x10
  00456210: 3b c7                                           cmp    eax,edi
  00456212: 75 05                                           jne    0x456219
  00456214: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00456219: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0045621c: 50                                              push   eax
  0045621d: 52                                              push   edx
  0045621e: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  00456224: 83 c4 08                                        add    esp,0x8
  00456227: 8b d8                                           mov    ebx,eax
  00456229: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0045622c: f7 db                                           neg    ebx
  0045622e: 1a db                                           sbb    bl,bl
  00456230: fe c3                                           inc    bl
  00456232: 3b c7                                           cmp    eax,edi
  00456234: 74 1c                                           je     0x456252
  00456236: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00456239: 8a 01                                           mov    al,BYTE PTR [ecx]
  0045623b: 84 c0                                           test   al,al
  0045623d: 74 0a                                           je     0x456249
  0045623f: 3c ff                                           cmp    al,0xff
  00456241: 74 06                                           je     0x456249
  00456243: fe c8                                           dec    al
  00456245: 88 01                                           mov    BYTE PTR [ecx],al
  00456247: eb 09                                           jmp    0x456252
  00456249: 51                                              push   ecx
  0045624a: e8 11 be fe ff                                  call   0x442060
  0045624f: 83 c4 04                                        add    esp,0x4
  00456252: 84 db                                           test   bl,bl
  00456254: 74 13                                           je     0x456269
  00456256: 6a 04                                           push   0x4
  00456258: 57                                              push   edi
  00456259: 8b ce                                           mov    ecx,esi
  0045625b: e8 60 e8 ff ff                                  call   0x454ac0
  00456260: 6a 01                                           push   0x1
  00456262: 8b ce                                           mov    ecx,esi
  00456264: e8 37 e8 ff ff                                  call   0x454aa0
  00456269: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  0045626e: e8 0d 87 ff ff                                  call   0x44e980
  00456273: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00456276: e8 35 07 00 00                                  call   0x4569b0
  0045627b: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0045627e: 50                                              push   eax
  0045627f: 8b ce                                           mov    ecx,esi
  00456281: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00456285: e8 86 0b 00 00                                  call   0x456e10
  0045628a: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045628c: 50                                              push   eax
  0045628d: 68 8c 67 50 00                                  push   0x50678c
  00456292: 68 00 08 00 00                                  push   0x800
  00456297: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0045629b: e8 a0 ba 01 00                                  call   0x471d40
  004562a0: 83 c4 0c                                        add    esp,0xc
  004562a3: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004562a6: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004562aa: e8 91 b7 07 00                                  call   0x4d1a40
  004562af: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004562b2: 51                                              push   ecx
  004562b3: 8b ce                                           mov    ecx,esi
  004562b5: e8 56 0b 00 00                                  call   0x456e10
  004562ba: 8b 10                                           mov    edx,DWORD PTR [eax]
  004562bc: 8b 7a f8                                        mov    edi,DWORD PTR [edx-0x8]
  004562bf: 33 c9                                           xor    ecx,ecx
  004562c1: 33 d2                                           xor    edx,edx
  004562c3: 85 ff                                           test   edi,edi
  004562c5: 7e 1f                                           jle    0x4562e6
  004562c7: 8b 18                                           mov    ebx,DWORD PTR [eax]
  004562c9: 8a 1c 1a                                        mov    bl,BYTE PTR [edx+ebx*1]
  004562cc: 80 fb 27                                        cmp    bl,0x27
  004562cf: 88 9c 0d c8 fb ff ff                            mov    BYTE PTR [ebp+ecx*1-0x438],bl
  004562d6: 75 08                                           jne    0x4562e0
  004562d8: 41                                              inc    ecx
  004562d9: 88 9c 0d c8 fb ff ff                            mov    BYTE PTR [ebp+ecx*1-0x438],bl
  004562e0: 41                                              inc    ecx
  004562e1: 42                                              inc    edx
  004562e2: 3b d7                                           cmp    edx,edi
  004562e4: 7c e1                                           jl     0x4562c7
  004562e6: c6 84 0d c8 fb ff ff 00                         mov    BYTE PTR [ebp+ecx*1-0x438],0x0
  004562ee: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004562f1: e8 4a b7 07 00                                  call   0x4d1a40
  004562f6: 68 64 67 50 00                                  push   0x506764
  004562fb: 68 00 08 00 00                                  push   0x800
  00456300: e8 3b ba 01 00                                  call   0x471d40
  00456305: 83 c4 08                                        add    esp,0x8
  00456308: 8d 85 c8 fb ff ff                               lea    eax,[ebp-0x438]
  0045630e: 50                                              push   eax
  0045630f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00456312: 68 08 67 50 00                                  push   0x506708
  00456317: 51                                              push   ecx
  00456318: e8 77 b7 07 00                                  call   0x4d1a94
  0045631d: 83 c4 0c                                        add    esp,0xc
  00456320: 68 e4 66 50 00                                  push   0x5066e4
  00456325: 68 00 08 00 00                                  push   0x800
  0045632a: e8 11 ba 01 00                                  call   0x471d40
  0045632f: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00456332: 83 c4 08                                        add    esp,0x8
  00456335: 6a 00                                           push   0x0
  00456337: 52                                              push   edx
  00456338: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  0045633d: e8 3e 8a ff ff                                  call   0x44ed80
  00456342: 68 cc 66 50 00                                  push   0x5066cc
  00456347: 68 00 08 00 00                                  push   0x800
  0045634c: e8 ef b9 01 00                                  call   0x471d40
  00456351: 83 c4 08                                        add    esp,0x8
  00456354: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00456359: e8 02 8a ff ff                                  call   0x44ed60
  0045635e: 85 c0                                           test   eax,eax
  00456360: 0f 84 20 01 00 00                               je     0x456486
  00456366: 6a 14                                           push   0x14
  00456368: 8d 45 c8                                        lea    eax,[ebp-0x38]
  0045636b: 50                                              push   eax
  0045636c: 6a 01                                           push   0x1
  0045636e: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00456373: e8 a8 8d ff ff                                  call   0x44f120
  00456378: 6a 08                                           push   0x8
  0045637a: e8 71 bc fe ff                                  call   0x441ff0
  0045637f: 8b d8                                           mov    ebx,eax
  00456381: 83 c4 04                                        add    esp,0x4
  00456384: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  00456387: 33 ff                                           xor    edi,edi
  00456389: 3b df                                           cmp    ebx,edi
  0045638b: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0045638f: 74 09                                           je     0x45639a
  00456391: 8b cb                                           mov    ecx,ebx
  00456393: e8 c6 b6 07 00                                  call   0x4d1a5e
  00456398: eb 02                                           jmp    0x45639c
  0045639a: 33 db                                           xor    ebx,ebx
  0045639c: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045639f: 51                                              push   ecx
  004563a0: 8b cb                                           mov    ecx,ebx
  004563a2: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004563a6: e8 ad b6 07 00                                  call   0x4d1a58
  004563ab: 8d 53 06                                        lea    edx,[ebx+0x6]
  004563ae: 52                                              push   edx
  004563af: 6a 02                                           push   0x2
  004563b1: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004563b6: e8 35 8c ff ff                                  call   0x44eff0
  004563bb: 8d 43 04                                        lea    eax,[ebx+0x4]
  004563be: 50                                              push   eax
  004563bf: 6a 03                                           push   0x3
  004563c1: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004563c6: e8 25 8c ff ff                                  call   0x44eff0
  004563cb: 8b 86 dc 00 00 00                               mov    eax,DWORD PTR [esi+0xdc]
  004563d1: 8b 96 ec 00 00 00                               mov    edx,DWORD PTR [esi+0xec]
  004563d7: 42                                              inc    edx
  004563d8: 3b c7                                           cmp    eax,edi
  004563da: 89 86 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],eax
  004563e0: 89 be f4 00 00 00                               mov    DWORD PTR [esi+0xf4],edi
  004563e6: c6 86 e8 00 00 00 08                            mov    BYTE PTR [esi+0xe8],0x8
  004563ed: 89 86 e0 00 00 00                               mov    DWORD PTR [esi+0xe0],eax
  004563f3: 89 96 ec 00 00 00                               mov    DWORD PTR [esi+0xec],edx
  004563f9: 6a 0c                                           push   0xc
  004563fb: 75 34                                           jne    0x456431
  004563fd: e8 ee bb fe ff                                  call   0x441ff0
  00456402: 83 c4 04                                        add    esp,0x4
  00456405: 3b c7                                           cmp    eax,edi
  00456407: 74 07                                           je     0x456410
  00456409: 89 38                                           mov    DWORD PTR [eax],edi
  0045640b: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0045640e: eb 02                                           jmp    0x456412
  00456410: 33 c0                                           xor    eax,eax
  00456412: 89 86 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],eax
  00456418: 89 86 dc 00 00 00                               mov    DWORD PTR [esi+0xdc],eax
  0045641e: 89 86 d8 00 00 00                               mov    DWORD PTR [esi+0xd8],eax
  00456424: 89 38                                           mov    DWORD PTR [eax],edi
  00456426: 8b 8e d4 00 00 00                               mov    ecx,DWORD PTR [esi+0xd4]
  0045642c: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0045642f: eb 3a                                           jmp    0x45646b
  00456431: e8 ba bb fe ff                                  call   0x441ff0
  00456436: 83 c4 04                                        add    esp,0x4
  00456439: 3b c7                                           cmp    eax,edi
  0045643b: 74 07                                           je     0x456444
  0045643d: 89 38                                           mov    DWORD PTR [eax],edi
  0045643f: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00456442: eb 02                                           jmp    0x456446
  00456444: 33 c0                                           xor    eax,eax
  00456446: 8b 96 d4 00 00 00                               mov    edx,DWORD PTR [esi+0xd4]
  0045644c: 89 02                                           mov    DWORD PTR [edx],eax
  0045644e: 8b 8e e0 00 00 00                               mov    ecx,DWORD PTR [esi+0xe0]
  00456454: 89 86 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],eax
  0045645a: 89 86 dc 00 00 00                               mov    DWORD PTR [esi+0xdc],eax
  00456460: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00456463: 8b 96 d4 00 00 00                               mov    edx,DWORD PTR [esi+0xd4]
  00456469: 89 3a                                           mov    DWORD PTR [edx],edi
  0045646b: 8b 86 d4 00 00 00                               mov    eax,DWORD PTR [esi+0xd4]
  00456471: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00456476: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  00456479: e8 e2 88 ff ff                                  call   0x44ed60
  0045647e: 85 c0                                           test   eax,eax
  00456480: 0f 85 e0 fe ff ff                               jne    0x456366
  00456486: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  0045648b: e8 e0 88 ff ff                                  call   0x44ed70
  00456490: 8d 8d c8 fb ff ff                               lea    ecx,[ebp-0x438]
  00456496: 51                                              push   ecx
  00456497: 8d 55 ec                                        lea    edx,[ebp-0x14]
  0045649a: 68 8c 66 50 00                                  push   0x50668c
  0045649f: 52                                              push   edx
  004564a0: e8 ef b5 07 00                                  call   0x4d1a94
  004564a5: 83 c4 0c                                        add    esp,0xc
  004564a8: 68 74 66 50 00                                  push   0x506674
  004564ad: 68 00 08 00 00                                  push   0x800
  004564b2: e8 89 b8 01 00                                  call   0x471d40
  004564b7: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004564ba: 83 c4 08                                        add    esp,0x8
  004564bd: 33 db                                           xor    ebx,ebx
  004564bf: 53                                              push   ebx
  004564c0: 50                                              push   eax
  004564c1: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004564c6: e8 b5 88 ff ff                                  call   0x44ed80
  004564cb: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004564d0: e8 8b 88 ff ff                                  call   0x44ed60
  004564d5: 85 c0                                           test   eax,eax
  004564d7: 0f 84 f7 00 00 00                               je     0x4565d4
  004564dd: eb 02                                           jmp    0x4564e1
  004564df: 33 db                                           xor    ebx,ebx
  004564e1: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004564e4: 51                                              push   ecx
  004564e5: bf 01 00 00 00                                  mov    edi,0x1
  004564ea: 57                                              push   edi
  004564eb: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004564f0: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  004564f3: e8 f8 8a ff ff                                  call   0x44eff0
  004564f8: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004564fb: 66 3d 40 00                                     cmp    ax,0x40
  004564ff: 0f 83 82 00 00 00                               jae    0x456587
  00456505: 25 ff ff 00 00                                  and    eax,0xffff
  0045650a: 99                                              cdq
  0045650b: 8b ce                                           mov    ecx,esi
  0045650d: 8b d8                                           mov    ebx,eax
  0045650f: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  00456512: e8 c9 e5 ff ff                                  call   0x454ae0
  00456517: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0045651a: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  0045651d: 8b cb                                           mov    ecx,ebx
  0045651f: 8b c7                                           mov    eax,edi
  00456521: 33 d2                                           xor    edx,edx
  00456523: e8 78 ba 07 00                                  call   0x4d1fa0
  00456528: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0045652b: 0b c8                                           or     ecx,eax
  0045652d: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00456530: 0b c2                                           or     eax,edx
  00456532: 50                                              push   eax
  00456533: 51                                              push   ecx
  00456534: 8b ce                                           mov    ecx,esi
  00456536: e8 85 e5 ff ff                                  call   0x454ac0
  0045653b: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0045653e: 66 3d 0a 00                                     cmp    ax,0xa
  00456542: 89 7e 64                                        mov    DWORD PTR [esi+0x64],edi
  00456545: 76 1d                                           jbe    0x456564
  00456547: 66 3d 14 00                                     cmp    ax,0x14
  0045654b: 73 1b                                           jae    0x456568
  0045654d: 8b ce                                           mov    ecx,esi
  0045654f: e8 8c e5 ff ff                                  call   0x454ae0
  00456554: 0d 00 04 00 00                                  or     eax,0x400
  00456559: 52                                              push   edx
  0045655a: 50                                              push   eax
  0045655b: 8b ce                                           mov    ecx,esi
  0045655d: e8 5e e5 ff ff                                  call   0x454ac0
  00456562: eb 5c                                           jmp    0x4565c0
  00456564: 66 3d 14 00                                     cmp    ax,0x14
  00456568: 76 56                                           jbe    0x4565c0
  0045656a: 66 3d 1a 00                                     cmp    ax,0x1a
  0045656e: 73 50                                           jae    0x4565c0
  00456570: 8b ce                                           mov    ecx,esi
  00456572: e8 69 e5 ff ff                                  call   0x454ae0
  00456577: 0d 00 00 10 00                                  or     eax,0x100000
  0045657c: 52                                              push   edx
  0045657d: 50                                              push   eax
  0045657e: 8b ce                                           mov    ecx,esi
  00456580: e8 3b e5 ff ff                                  call   0x454ac0
  00456585: eb 39                                           jmp    0x4565c0
  00456587: 25 ff ff 00 00                                  and    eax,0xffff
  0045658c: 05 f0 d8 ff ff                                  add    eax,0xffffd8f0
  00456591: 83 f8 06                                        cmp    eax,0x6
  00456594: 77 2a                                           ja     0x4565c0
  00456596: ff 24 85 90 69 45 00                            jmp    DWORD PTR [eax*4+0x456990]
  004565c0: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004565c5: e8 96 87 ff ff                                  call   0x44ed60
  004565ca: 85 c0                                           test   eax,eax
  004565cc: 0f 85 0d ff ff ff                               jne    0x4564df
  004565d2: 33 db                                           xor    ebx,ebx
  004565d4: 68 5c 66 50 00                                  push   0x50665c
  004565d9: 68 00 08 00 00                                  push   0x800
  004565de: e8 5d b7 01 00                                  call   0x471d40
  004565e3: 68 02 00 00 80                                  push   0x80000002
  004565e8: 68 b8 67 50 00                                  push   0x5067b8
  004565ed: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004565f0: 68 a8 44 50 00                                  push   0x5044a8
  004565f5: 51                                              push   ecx
  004565f6: e8 95 09 fb ff                                  call   0x406f90
  004565fb: 83 c4 18                                        add    esp,0x18
  004565fe: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00456601: 3b c3                                           cmp    eax,ebx
  00456603: 8b 1d d8 e4 4d 00                               mov    ebx,DWORD PTR ds:0x4de4d8
  00456609: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0045660d: 74 02                                           je     0x456611
  0045660f: 8b d8                                           mov    ebx,eax
  00456611: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  00456614: 52                                              push   edx
  00456615: 8b ce                                           mov    ecx,esi
  00456617: e8 44 26 00 00                                  call   0x458c60
  0045661c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045661e: 53                                              push   ebx
  0045661f: 50                                              push   eax
  00456620: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  00456626: 83 c4 08                                        add    esp,0x8
  00456629: 8b d8                                           mov    ebx,eax
  0045662b: f7 db                                           neg    ebx
  0045662d: 1a db                                           sbb    bl,bl
  0045662f: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00456632: fe c3                                           inc    bl
  00456634: e8 07 b4 07 00                                  call   0x4d1a40
  00456639: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0045663c: 33 ff                                           xor    edi,edi
  0045663e: 3b c7                                           cmp    eax,edi
  00456640: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00456644: 74 1c                                           je     0x456662
  00456646: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00456649: 8a 01                                           mov    al,BYTE PTR [ecx]
  0045664b: 84 c0                                           test   al,al
  0045664d: 74 0a                                           je     0x456659
  0045664f: 3c ff                                           cmp    al,0xff
  00456651: 74 06                                           je     0x456659
  00456653: fe c8                                           dec    al
  00456655: 88 01                                           mov    BYTE PTR [ecx],al
  00456657: eb 09                                           jmp    0x456662
  00456659: 51                                              push   ecx
  0045665a: e8 01 ba fe ff                                  call   0x442060
  0045665f: 83 c4 04                                        add    esp,0x4
  00456662: 84 db                                           test   bl,bl
  00456664: 89 7d d0                                        mov    DWORD PTR [ebp-0x30],edi
  00456667: 89 7d d4                                        mov    DWORD PTR [ebp-0x2c],edi
  0045666a: 89 7d d8                                        mov    DWORD PTR [ebp-0x28],edi
  0045666d: 0f 84 b6 02 00 00                               je     0x456929
  00456673: 8b ce                                           mov    ecx,esi
  00456675: e8 66 e4 ff ff                                  call   0x454ae0
  0045667a: 0d 00 04 00 00                                  or     eax,0x400
  0045667f: 52                                              push   edx
  00456680: 50                                              push   eax
  00456681: 8b ce                                           mov    ecx,esi
  00456683: e8 38 e4 ff ff                                  call   0x454ac0
  00456688: 8b ce                                           mov    ecx,esi
  0045668a: e8 51 e4 ff ff                                  call   0x454ae0
  0045668f: 0d 00 00 10 00                                  or     eax,0x100000
  00456694: 52                                              push   edx
  00456695: 50                                              push   eax
  00456696: 8b ce                                           mov    ecx,esi
  00456698: e8 23 e4 ff ff                                  call   0x454ac0
  0045669d: 8b ce                                           mov    ecx,esi
  0045669f: e8 3c e4 ff ff                                  call   0x454ae0
  004566a4: 0d 00 00 00 10                                  or     eax,0x10000000
  004566a9: 52                                              push   edx
  004566aa: 50                                              push   eax
  004566ab: 8b ce                                           mov    ecx,esi
  004566ad: e8 0e e4 ff ff                                  call   0x454ac0
  004566b2: 8b ce                                           mov    ecx,esi
  004566b4: e8 27 e4 ff ff                                  call   0x454ae0
  004566b9: 0d 00 00 01 00                                  or     eax,0x10000
  004566be: 52                                              push   edx
  004566bf: 50                                              push   eax
  004566c0: 8b ce                                           mov    ecx,esi
  004566c2: e8 f9 e3 ff ff                                  call   0x454ac0
  004566c7: 8b ce                                           mov    ecx,esi
  004566c9: e8 12 e4 ff ff                                  call   0x454ae0
  004566ce: 0d 00 00 08 00                                  or     eax,0x80000
  004566d3: 52                                              push   edx
  004566d4: 50                                              push   eax
  004566d5: 8b ce                                           mov    ecx,esi
  004566d7: e8 e4 e3 ff ff                                  call   0x454ac0
  004566dc: 8b ce                                           mov    ecx,esi
  004566de: e8 fd e3 ff ff                                  call   0x454ae0
  004566e3: 0d 00 10 00 00                                  or     eax,0x1000
  004566e8: 52                                              push   edx
  004566e9: 50                                              push   eax
  004566ea: 8b ce                                           mov    ecx,esi
  004566ec: e8 cf e3 ff ff                                  call   0x454ac0
  004566f1: 8b ce                                           mov    ecx,esi
  004566f3: e8 e8 e3 ff ff                                  call   0x454ae0
  004566f8: 0d 00 20 00 00                                  or     eax,0x2000
  004566fd: 52                                              push   edx
  004566fe: 50                                              push   eax
  004566ff: 8b ce                                           mov    ecx,esi
  00456701: e8 ba e3 ff ff                                  call   0x454ac0
  00456706: 8b ce                                           mov    ecx,esi
  00456708: e8 d3 e3 ff ff                                  call   0x454ae0
  0045670d: 0d 00 80 00 00                                  or     eax,0x8000
  00456712: 52                                              push   edx
  00456713: 50                                              push   eax
  00456714: 8b ce                                           mov    ecx,esi
  00456716: e8 a5 e3 ff ff                                  call   0x454ac0
  0045671b: 8b ce                                           mov    ecx,esi
  0045671d: e8 be e3 ff ff                                  call   0x454ae0
  00456722: 0d 00 00 04 00                                  or     eax,0x40000
  00456727: 52                                              push   edx
  00456728: 50                                              push   eax
  00456729: 8b ce                                           mov    ecx,esi
  0045672b: e8 90 e3 ff ff                                  call   0x454ac0
  00456730: 8b ce                                           mov    ecx,esi
  00456732: e8 a9 e3 ff ff                                  call   0x454ae0
  00456737: 0d 00 00 02 00                                  or     eax,0x20000
  0045673c: 52                                              push   edx
  0045673d: 50                                              push   eax
  0045673e: 8b ce                                           mov    ecx,esi
  00456740: e8 7b e3 ff ff                                  call   0x454ac0
  00456745: 8b ce                                           mov    ecx,esi
  00456747: e8 94 e3 ff ff                                  call   0x454ae0
  0045674c: 0d 00 08 00 00                                  or     eax,0x800
  00456751: 52                                              push   edx
  00456752: 50                                              push   eax
  00456753: 8b ce                                           mov    ecx,esi
  00456755: e8 66 e3 ff ff                                  call   0x454ac0
  0045675a: 8b ce                                           mov    ecx,esi
  0045675c: e8 7f e3 ff ff                                  call   0x454ae0
  00456761: 0d 00 40 00 00                                  or     eax,0x4000
  00456766: 52                                              push   edx
  00456767: 50                                              push   eax
  00456768: 8b ce                                           mov    ecx,esi
  0045676a: e8 51 e3 ff ff                                  call   0x454ac0
  0045676f: 8b ce                                           mov    ecx,esi
  00456771: e8 6a e3 ff ff                                  call   0x454ae0
  00456776: 0d 00 00 00 20                                  or     eax,0x20000000
  0045677b: 52                                              push   edx
  0045677c: 50                                              push   eax
  0045677d: 8b ce                                           mov    ecx,esi
  0045677f: e8 3c e3 ff ff                                  call   0x454ac0
  00456784: 8b ce                                           mov    ecx,esi
  00456786: e8 55 e3 ff ff                                  call   0x454ae0
  0045678b: 83 ca 04                                        or     edx,0x4
  0045678e: 52                                              push   edx
  0045678f: 50                                              push   eax
  00456790: 8b ce                                           mov    ecx,esi
  00456792: e8 29 e3 ff ff                                  call   0x454ac0
  00456797: 8b ce                                           mov    ecx,esi
  00456799: e8 42 e3 ff ff                                  call   0x454ae0
  0045679e: 0d 00 00 00 04                                  or     eax,0x4000000
  004567a3: 52                                              push   edx
  004567a4: 50                                              push   eax
  004567a5: 8b ce                                           mov    ecx,esi
  004567a7: e8 14 e3 ff ff                                  call   0x454ac0
  004567ac: 8b ce                                           mov    ecx,esi
  004567ae: e8 2d e3 ff ff                                  call   0x454ae0
  004567b3: 83 c8 40                                        or     eax,0x40
  004567b6: 52                                              push   edx
  004567b7: 50                                              push   eax
  004567b8: 8b ce                                           mov    ecx,esi
  004567ba: e8 01 e3 ff ff                                  call   0x454ac0
  004567bf: 8b ce                                           mov    ecx,esi
  004567c1: e8 1a e3 ff ff                                  call   0x454ae0
  004567c6: 83 ca 02                                        or     edx,0x2
  004567c9: 52                                              push   edx
  004567ca: 50                                              push   eax
  004567cb: 8b ce                                           mov    ecx,esi
  004567cd: e8 ee e2 ff ff                                  call   0x454ac0
  004567d2: 8b ce                                           mov    ecx,esi
  004567d4: e8 07 e3 ff ff                                  call   0x454ae0
  004567d9: 0d 00 02 00 00                                  or     eax,0x200
  004567de: 52                                              push   edx
  004567df: 50                                              push   eax
  004567e0: 8b ce                                           mov    ecx,esi
  004567e2: e8 d9 e2 ff ff                                  call   0x454ac0
  004567e7: 8b ce                                           mov    ecx,esi
  004567e9: e8 f2 e2 ff ff                                  call   0x454ae0
  004567ee: 83 ca 01                                        or     edx,0x1
  004567f1: 52                                              push   edx
  004567f2: 50                                              push   eax
  004567f3: 8b ce                                           mov    ecx,esi
  004567f5: e8 c6 e2 ff ff                                  call   0x454ac0
  004567fa: 8b ce                                           mov    ecx,esi
  004567fc: e8 df e2 ff ff                                  call   0x454ae0
  00456801: 0d 00 00 00 08                                  or     eax,0x8000000
  00456806: 52                                              push   edx
  00456807: 50                                              push   eax
  00456808: 8b ce                                           mov    ecx,esi
  0045680a: e8 b1 e2 ff ff                                  call   0x454ac0
  0045680f: 8b ce                                           mov    ecx,esi
  00456811: e8 ca e2 ff ff                                  call   0x454ae0
  00456816: 83 c8 20                                        or     eax,0x20
  00456819: 52                                              push   edx
  0045681a: 50                                              push   eax
  0045681b: 8b ce                                           mov    ecx,esi
  0045681d: e8 9e e2 ff ff                                  call   0x454ac0
  00456822: 8b ce                                           mov    ecx,esi
  00456824: e8 b7 e2 ff ff                                  call   0x454ae0
  00456829: 0d 00 01 00 00                                  or     eax,0x100
  0045682e: 52                                              push   edx
  0045682f: 50                                              push   eax
  00456830: 8b ce                                           mov    ecx,esi
  00456832: e8 89 e2 ff ff                                  call   0x454ac0
  00456837: 8b ce                                           mov    ecx,esi
  00456839: e8 a2 e2 ff ff                                  call   0x454ae0
  0045683e: 0d 80 00 00 00                                  or     eax,0x80
  00456843: 52                                              push   edx
  00456844: 50                                              push   eax
  00456845: 8b ce                                           mov    ecx,esi
  00456847: e8 74 e2 ff ff                                  call   0x454ac0
  0045684c: 8b ce                                           mov    ecx,esi
  0045684e: e8 8d e2 ff ff                                  call   0x454ae0
  00456853: 83 c8 04                                        or     eax,0x4
  00456856: 52                                              push   edx
  00456857: 50                                              push   eax
  00456858: 8b ce                                           mov    ecx,esi
  0045685a: e8 61 e2 ff ff                                  call   0x454ac0
  0045685f: 8b ce                                           mov    ecx,esi
  00456861: e8 7a e2 ff ff                                  call   0x454ae0
  00456866: 83 c8 08                                        or     eax,0x8
  00456869: 52                                              push   edx
  0045686a: 50                                              push   eax
  0045686b: 8b ce                                           mov    ecx,esi
  0045686d: e8 4e e2 ff ff                                  call   0x454ac0
  00456872: 8b ce                                           mov    ecx,esi
  00456874: e8 67 e2 ff ff                                  call   0x454ae0
  00456879: 0d 00 00 00 02                                  or     eax,0x2000000
  0045687e: 52                                              push   edx
  0045687f: 50                                              push   eax
  00456880: 8b ce                                           mov    ecx,esi
  00456882: e8 39 e2 ff ff                                  call   0x454ac0
  00456887: 8b ce                                           mov    ecx,esi
  00456889: e8 52 e2 ff ff                                  call   0x454ae0
  0045688e: 0d 00 00 40 00                                  or     eax,0x400000
  00456893: 52                                              push   edx
  00456894: 50                                              push   eax
  00456895: 8b ce                                           mov    ecx,esi
  00456897: e8 24 e2 ff ff                                  call   0x454ac0
  0045689c: 8b ce                                           mov    ecx,esi
  0045689e: e8 3d e2 ff ff                                  call   0x454ae0
  004568a3: 0d 00 00 00 01                                  or     eax,0x1000000
  004568a8: 52                                              push   edx
  004568a9: 50                                              push   eax
  004568aa: 8b ce                                           mov    ecx,esi
  004568ac: e8 0f e2 ff ff                                  call   0x454ac0
  004568b1: 8b ce                                           mov    ecx,esi
  004568b3: e8 28 e2 ff ff                                  call   0x454ae0
  004568b8: 0d 00 00 80 00                                  or     eax,0x800000
  004568bd: 52                                              push   edx
  004568be: 50                                              push   eax
  004568bf: 8b ce                                           mov    ecx,esi
  004568c1: e8 fa e1 ff ff                                  call   0x454ac0
  004568c6: 8b ce                                           mov    ecx,esi
  004568c8: e8 13 e2 ff ff                                  call   0x454ae0
  004568cd: 0d 00 00 20 00                                  or     eax,0x200000
  004568d2: 52                                              push   edx
  004568d3: 50                                              push   eax
  004568d4: 8b ce                                           mov    ecx,esi
  004568d6: e8 e5 e1 ff ff                                  call   0x454ac0
  004568db: 8b ce                                           mov    ecx,esi
  004568dd: e8 fe e1 ff ff                                  call   0x454ae0
  004568e2: 83 c8 10                                        or     eax,0x10
  004568e5: 52                                              push   edx
  004568e6: 50                                              push   eax
  004568e7: 8b ce                                           mov    ecx,esi
  004568e9: e8 d2 e1 ff ff                                  call   0x454ac0
  004568ee: 8b ce                                           mov    ecx,esi
  004568f0: e8 eb e1 ff ff                                  call   0x454ae0
  004568f5: 0d 00 00 00 40                                  or     eax,0x40000000
  004568fa: 52                                              push   edx
  004568fb: 50                                              push   eax
  004568fc: 8b ce                                           mov    ecx,esi
  004568fe: e8 bd e1 ff ff                                  call   0x454ac0
  00456903: 8b ce                                           mov    ecx,esi
  00456905: e8 d6 e1 ff ff                                  call   0x454ae0
  0045690a: 83 ca 08                                        or     edx,0x8
  0045690d: 52                                              push   edx
  0045690e: 50                                              push   eax
  0045690f: 8b ce                                           mov    ecx,esi
  00456911: e8 aa e1 ff ff                                  call   0x454ac0
  00456916: 8b ce                                           mov    ecx,esi
  00456918: e8 c3 e1 ff ff                                  call   0x454ae0
  0045691d: 83 ca 20                                        or     edx,0x20
  00456920: 52                                              push   edx
  00456921: 50                                              push   eax
  00456922: 8b ce                                           mov    ecx,esi
  00456924: e8 97 e1 ff ff                                  call   0x454ac0
  00456929: 68 44 66 50 00                                  push   0x506644
  0045692e: 68 00 08 00 00                                  push   0x800
  00456933: e8 08 b4 01 00                                  call   0x471d40
  00456938: 83 c4 08                                        add    esp,0x8
  0045693b: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00456940: e8 2b 84 ff ff                                  call   0x44ed70
  00456945: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  0045694a: e8 81 80 ff ff                                  call   0x44e9d0
  0045694f: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00456952: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00456956: e8 75 00 00 00                                  call   0x4569d0
  0045695b: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0045695e: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00456962: e8 d9 b0 07 00                                  call   0x4d1a40
  00456967: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045696a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456971: e8 ca b0 07 00                                  call   0x4d1a40
  00456976: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00456979: 5f                                              pop    edi
  0045697a: 5e                                              pop    esi
  0045697b: b8 01 00 00 00                                  mov    eax,0x1
  00456980: 5b                                              pop    ebx
  00456981: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00456988: 8b e5                                           mov    esp,ebp
  0045698a: 5d                                              pop    ebp
  0045698b: c2 04 00                                        ret    0x4

; ===== 0x004569F0 ?AddPlayer@Players@@QAEXVCString@@GG@Z =====
  004569f0: 55                                              push   ebp
  004569f1: 8b ec                                           mov    ebp,esp
  004569f3: 6a ff                                           push   0xffffffff
  004569f5: 68 53 71 4d 00                                  push   0x4d7153
  004569fa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00456a00: 50                                              push   eax
  00456a01: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00456a08: 51                                              push   ecx
  00456a09: 53                                              push   ebx
  00456a0a: 56                                              push   esi
  00456a0b: 57                                              push   edi
  00456a0c: 8b 81 b4 00 00 00                               mov    eax,DWORD PTR [ecx+0xb4]
  00456a12: 8d b1 b4 00 00 00                               lea    esi,[ecx+0xb4]
  00456a18: 33 db                                           xor    ebx,ebx
  00456a1a: 8b ce                                           mov    ecx,esi
  00456a1c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00456a1f: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00456a22: 6a 08                                           push   0x8
  00456a24: e8 c7 b5 fe ff                                  call   0x441ff0
  00456a29: 8b f8                                           mov    edi,eax
  00456a2b: 83 c4 04                                        add    esp,0x4
  00456a2e: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00456a31: 3b fb                                           cmp    edi,ebx
  00456a33: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00456a37: 74 09                                           je     0x456a42
  00456a39: 8b cf                                           mov    ecx,edi
  00456a3b: e8 1e b0 07 00                                  call   0x4d1a5e
  00456a40: eb 02                                           jmp    0x456a44
  00456a42: 33 ff                                           xor    edi,edi
  00456a44: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456a47: 51                                              push   ecx
  00456a48: 8b cf                                           mov    ecx,edi
  00456a4a: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00456a4d: e8 f4 af 07 00                                  call   0x4d1a46
  00456a52: 66 8b 55 0c                                     mov    dx,WORD PTR [ebp+0xc]
  00456a56: 66 8b 45 10                                     mov    ax,WORD PTR [ebp+0x10]
  00456a5a: 66 89 57 06                                     mov    WORD PTR [edi+0x6],dx
  00456a5e: 66 89 47 04                                     mov    WORD PTR [edi+0x4],ax
  00456a62: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00456a65: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00456a68: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00456a6b: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00456a6f: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00456a72: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00456a75: 42                                              inc    edx
  00456a76: 3b c3                                           cmp    eax,ebx
  00456a78: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00456a7b: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00456a7e: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00456a82: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00456a85: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00456a88: 6a 0c                                           push   0xc
  00456a8a: 75 28                                           jne    0x456ab4
  00456a8c: e8 5f b5 fe ff                                  call   0x441ff0
  00456a91: 83 c4 04                                        add    esp,0x4
  00456a94: 3b c3                                           cmp    eax,ebx
  00456a96: 74 07                                           je     0x456a9f
  00456a98: 89 18                                           mov    DWORD PTR [eax],ebx
  00456a9a: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00456a9d: eb 02                                           jmp    0x456aa1
  00456a9f: 33 c0                                           xor    eax,eax
  00456aa1: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00456aa4: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00456aa7: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00456aaa: 89 18                                           mov    DWORD PTR [eax],ebx
  00456aac: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00456aaf: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  00456ab2: eb 2b                                           jmp    0x456adf
  00456ab4: e8 37 b5 fe ff                                  call   0x441ff0
  00456ab9: 83 c4 04                                        add    esp,0x4
  00456abc: 3b c3                                           cmp    eax,ebx
  00456abe: 74 07                                           je     0x456ac7
  00456ac0: 89 18                                           mov    DWORD PTR [eax],ebx
  00456ac2: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00456ac5: eb 02                                           jmp    0x456ac9
  00456ac7: 33 c0                                           xor    eax,eax
  00456ac9: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00456acc: 89 01                                           mov    DWORD PTR [ecx],eax
  00456ace: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00456ad1: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00456ad4: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00456ad7: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00456ada: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00456add: 89 18                                           mov    DWORD PTR [eax],ebx
  00456adf: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00456ae2: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00456ae5: 8b 16                                           mov    edx,DWORD PTR [esi]
  00456ae7: 8b ce                                           mov    ecx,esi
  00456ae9: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00456aec: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456aef: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456af6: e8 45 af 07 00                                  call   0x4d1a40
  00456afb: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00456afe: 5f                                              pop    edi
  00456aff: 5e                                              pop    esi
  00456b00: 5b                                              pop    ebx
  00456b01: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00456b08: 8b e5                                           mov    esp,ebp
  00456b0a: 5d                                              pop    ebp
  00456b0b: c2 0c 00                                        ret    0xc

; ===== 0x00456B10 ?ModifyPlayer@Players@@QAEXVCString@@GG@Z =====
  00456b10: 55                                              push   ebp
  00456b11: 8b ec                                           mov    ebp,esp
  00456b13: 6a ff                                           push   0xffffffff
  00456b15: 68 68 71 4d 00                                  push   0x4d7168
  00456b1a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00456b20: 50                                              push   eax
  00456b21: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00456b28: 51                                              push   ecx
  00456b29: 53                                              push   ebx
  00456b2a: 56                                              push   esi
  00456b2b: 8b f1                                           mov    esi,ecx
  00456b2d: 57                                              push   edi
  00456b2e: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00456b31: 8b 86 b4 00 00 00                               mov    eax,DWORD PTR [esi+0xb4]
  00456b37: 8d be b4 00 00 00                               lea    edi,[esi+0xb4]
  00456b3d: 33 db                                           xor    ebx,ebx
  00456b3f: 8b cf                                           mov    ecx,edi
  00456b41: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00456b44: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00456b47: 8b 4f 24                                        mov    ecx,DWORD PTR [edi+0x24]
  00456b4a: 89 4f 20                                        mov    DWORD PTR [edi+0x20],ecx
  00456b4d: 89 5f 40                                        mov    DWORD PTR [edi+0x40],ebx
  00456b50: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  00456b54: eb 03                                           jmp    0x456b59
  00456b56: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00456b59: 8b 96 d4 00 00 00                               mov    edx,DWORD PTR [esi+0xd4]
  00456b5f: 8b 52 08                                        mov    edx,DWORD PTR [edx+0x8]
  00456b62: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00456b65: 8b 02                                           mov    eax,DWORD PTR [edx]
  00456b67: 8a 18                                           mov    bl,BYTE PTR [eax]
  00456b69: 8a cb                                           mov    cl,bl
  00456b6b: 3a 1e                                           cmp    bl,BYTE PTR [esi]
  00456b6d: 75 1c                                           jne    0x456b8b
  00456b6f: 84 c9                                           test   cl,cl
  00456b71: 74 14                                           je     0x456b87
  00456b73: 8a 58 01                                        mov    bl,BYTE PTR [eax+0x1]
  00456b76: 8a cb                                           mov    cl,bl
  00456b78: 3a 5e 01                                        cmp    bl,BYTE PTR [esi+0x1]
  00456b7b: 75 0e                                           jne    0x456b8b
  00456b7d: 83 c0 02                                        add    eax,0x2
  00456b80: 83 c6 02                                        add    esi,0x2
  00456b83: 84 c9                                           test   cl,cl
  00456b85: 75 e0                                           jne    0x456b67
  00456b87: 33 c0                                           xor    eax,eax
  00456b89: eb 05                                           jmp    0x456b90
  00456b8b: 1b c0                                           sbb    eax,eax
  00456b8d: 83 d8 ff                                        sbb    eax,0xffffffff
  00456b90: 85 c0                                           test   eax,eax
  00456b92: 75 10                                           jne    0x456ba4
  00456b94: 66 8b 45 0c                                     mov    ax,WORD PTR [ebp+0xc]
  00456b98: 66 8b 4d 10                                     mov    cx,WORD PTR [ebp+0x10]
  00456b9c: 66 89 42 06                                     mov    WORD PTR [edx+0x6],ax
  00456ba0: 66 89 4a 04                                     mov    WORD PTR [edx+0x4],cx
  00456ba4: 8b 47 40                                        mov    eax,DWORD PTR [edi+0x40]
  00456ba7: 85 c0                                           test   eax,eax
  00456ba9: 74 0a                                           je     0x456bb5
  00456bab: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  00456bae: 8b 02                                           mov    eax,DWORD PTR [edx]
  00456bb0: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00456bb3: eb 07                                           jmp    0x456bbc
  00456bb5: c7 47 40 01 00 00 00                            mov    DWORD PTR [edi+0x40],0x1
  00456bbc: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00456bbf: 85 c0                                           test   eax,eax
  00456bc1: 75 93                                           jne    0x456b56
  00456bc3: 8b 47 40                                        mov    eax,DWORD PTR [edi+0x40]
  00456bc6: 85 c0                                           test   eax,eax
  00456bc8: 74 04                                           je     0x456bce
  00456bca: c6 47 34 07                                     mov    BYTE PTR [edi+0x34],0x7
  00456bce: c7 47 40 00 00 00 00                            mov    DWORD PTR [edi+0x40],0x0
  00456bd5: 8b 17                                           mov    edx,DWORD PTR [edi]
  00456bd7: 8b cf                                           mov    ecx,edi
  00456bd9: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00456bdc: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456bdf: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456be6: e8 55 ae 07 00                                  call   0x4d1a40
  00456beb: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00456bee: 5f                                              pop    edi
  00456bef: 5e                                              pop    esi
  00456bf0: 5b                                              pop    ebx
  00456bf1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00456bf8: 8b e5                                           mov    esp,ebp
  00456bfa: 5d                                              pop    ebp
  00456bfb: c2 0c 00                                        ret    0xc

; ===== 0x00456C00 ?RemovePlayer@Players@@QAEXVCString@@@Z =====
  00456c00: 55                                              push   ebp
  00456c01: 8b ec                                           mov    ebp,esp
  00456c03: 6a ff                                           push   0xffffffff
  00456c05: 68 88 71 4d 00                                  push   0x4d7188
  00456c0a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00456c10: 50                                              push   eax
  00456c11: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00456c18: 51                                              push   ecx
  00456c19: 53                                              push   ebx
  00456c1a: 56                                              push   esi
  00456c1b: 57                                              push   edi
  00456c1c: 8b f9                                           mov    edi,ecx
  00456c1e: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00456c21: 8b 87 b4 00 00 00                               mov    eax,DWORD PTR [edi+0xb4]
  00456c27: 8d b7 b4 00 00 00                               lea    esi,[edi+0xb4]
  00456c2d: 33 db                                           xor    ebx,ebx
  00456c2f: 8b ce                                           mov    ecx,esi
  00456c31: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00456c34: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00456c37: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00456c3a: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00456c3d: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00456c40: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00456c44: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  00456c47: 74 0a                                           je     0x456c53
  00456c49: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00456c4c: 8b 02                                           mov    eax,DWORD PTR [edx]
  00456c4e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00456c51: eb 07                                           jmp    0x456c5a
  00456c53: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  00456c5a: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  00456c5d: 0f 84 ee 00 00 00                               je     0x456d51
  00456c63: 8b 8f d4 00 00 00                               mov    ecx,DWORD PTR [edi+0xd4]
  00456c69: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00456c6c: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00456c6f: 8b 02                                           mov    eax,DWORD PTR [edx]
  00456c71: 51                                              push   ecx
  00456c72: 50                                              push   eax
  00456c73: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  00456c79: 83 c4 08                                        add    esp,0x8
  00456c7c: 85 c0                                           test   eax,eax
  00456c7e: 75 c4                                           jne    0x456c44
  00456c80: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00456c83: 8b 7e 38                                        mov    edi,DWORD PTR [esi+0x38]
  00456c86: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  00456c89: 4f                                              dec    edi
  00456c8a: 8b c2                                           mov    eax,edx
  00456c8c: 3b c1                                           cmp    eax,ecx
  00456c8e: 89 56 2c                                        mov    DWORD PTR [esi+0x2c],edx
  00456c91: 89 7e 38                                        mov    DWORD PTR [esi+0x38],edi
  00456c94: 74 3d                                           je     0x456cd3
  00456c96: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00456c99: 74 34                                           je     0x456ccf
  00456c9b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00456c9d: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00456ca0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00456ca3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00456ca6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00456ca9: 8b 10                                           mov    edx,DWORD PTR [eax]
  00456cab: 89 11                                           mov    DWORD PTR [ecx],edx
  00456cad: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00456cb0: 83 f8 01                                        cmp    eax,0x1
  00456cb3: 75 0b                                           jne    0x456cc0
  00456cb5: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00456cb8: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00456cbb: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00456cbe: eb 63                                           jmp    0x456d23
  00456cc0: 83 f8 02                                        cmp    eax,0x2
  00456cc3: 75 5e                                           jne    0x456d23
  00456cc5: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00456cc8: 8b 02                                           mov    eax,DWORD PTR [edx]
  00456cca: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00456ccd: eb 54                                           jmp    0x456d23
  00456ccf: 3b c1                                           cmp    eax,ecx
  00456cd1: 75 23                                           jne    0x456cf6
  00456cd3: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00456cd6: 74 23                                           je     0x456cfb
  00456cd8: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00456cdb: 89 19                                           mov    DWORD PTR [ecx],ebx
  00456cdd: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00456ce0: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00456ce3: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00456ce6: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  00456cea: 8b ca                                           mov    ecx,edx
  00456cec: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00456cef: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00456cf2: 75 2f                                           jne    0x456d23
  00456cf4: eb 2a                                           jmp    0x456d20
  00456cf6: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00456cf9: 75 1c                                           jne    0x456d17
  00456cfb: 3b c1                                           cmp    eax,ecx
  00456cfd: 74 18                                           je     0x456d17
  00456cff: 8b 00                                           mov    eax,DWORD PTR [eax]
  00456d01: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00456d04: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00456d07: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00456d09: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00456d0c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00456d0f: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  00456d13: 75 0e                                           jne    0x456d23
  00456d15: eb 09                                           jmp    0x456d20
  00456d17: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  00456d1a: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  00456d1d: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  00456d20: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00456d23: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00456d26: 8b 7a 08                                        mov    edi,DWORD PTR [edx+0x8]
  00456d29: 3b fb                                           cmp    edi,ebx
  00456d2b: 74 10                                           je     0x456d3d
  00456d2d: 8b cf                                           mov    ecx,edi
  00456d2f: e8 0c ad 07 00                                  call   0x4d1a40
  00456d34: 57                                              push   edi
  00456d35: e8 26 b3 fe ff                                  call   0x442060
  00456d3a: 83 c4 04                                        add    esp,0x4
  00456d3d: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  00456d40: 50                                              push   eax
  00456d41: e8 1a b3 fe ff                                  call   0x442060
  00456d46: 8b 7d f0                                        mov    edi,DWORD PTR [ebp-0x10]
  00456d49: 83 c4 04                                        add    esp,0x4
  00456d4c: e9 f3 fe ff ff                                  jmp    0x456c44
  00456d51: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  00456d54: 74 04                                           je     0x456d5a
  00456d56: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  00456d5a: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00456d5d: 8b 16                                           mov    edx,DWORD PTR [esi]
  00456d5f: 8b ce                                           mov    ecx,esi
  00456d61: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00456d64: 53                                              push   ebx
  00456d65: 8b cf                                           mov    ecx,edi
  00456d67: e8 94 dd ff ff                                  call   0x454b00
  00456d6c: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456d6f: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456d76: e8 c5 ac 07 00                                  call   0x4d1a40
  00456d7b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00456d7e: 5f                                              pop    edi
  00456d7f: 5e                                              pop    esi
  00456d80: 5b                                              pop    ebx
  00456d81: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00456d88: 8b e5                                           mov    esp,ebp
  00456d8a: 5d                                              pop    ebp
  00456d8b: c2 04 00                                        ret    0x4

; ===== 0x00456D90 ?GetPwd@Players@@QBE?AVCString@@XZ =====
  00456d90: 55                                              push   ebp
  00456d91: 8b ec                                           mov    ebp,esp
  00456d93: 51                                              push   ecx
  00456d94: 56                                              push   esi
  00456d95: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00456d98: 81 c1 ac 00 00 00                               add    ecx,0xac
  00456d9e: 51                                              push   ecx
  00456d9f: 8b ce                                           mov    ecx,esi
  00456da1: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00456da8: e8 9f ac 07 00                                  call   0x4d1a4c
  00456dad: 8b c6                                           mov    eax,esi
  00456daf: 5e                                              pop    esi
  00456db0: 8b e5                                           mov    esp,ebp
  00456db2: 5d                                              pop    ebp
  00456db3: c2 04 00                                        ret    0x4

; ===== 0x00456DC0 ?SetPwd@Players@@QAEXVCString@@@Z =====
  00456dc0: 55                                              push   ebp
  00456dc1: 8b ec                                           mov    ebp,esp
  00456dc3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00456dc9: 6a ff                                           push   0xffffffff
  00456dcb: 68 a8 71 4d 00                                  push   0x4d71a8
  00456dd0: 50                                              push   eax
  00456dd1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00456dd8: 8d 45 08                                        lea    eax,[ebp+0x8]
  00456ddb: 50                                              push   eax
  00456ddc: 81 c1 ac 00 00 00                               add    ecx,0xac
  00456de2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00456de9: e8 58 ac 07 00                                  call   0x4d1a46
  00456dee: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456df1: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456df8: e8 43 ac 07 00                                  call   0x4d1a40
  00456dfd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00456e00: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00456e07: 8b e5                                           mov    esp,ebp
  00456e09: 5d                                              pop    ebp
  00456e0a: c2 04 00                                        ret    0x4

; ===== 0x00456E10 ?GetAccount@Players@@QBE?AVCString@@XZ =====
  00456e10: 55                                              push   ebp
  00456e11: 8b ec                                           mov    ebp,esp
  00456e13: 51                                              push   ecx
  00456e14: 56                                              push   esi
  00456e15: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00456e18: 81 c1 a8 00 00 00                               add    ecx,0xa8
  00456e1e: 51                                              push   ecx
  00456e1f: 8b ce                                           mov    ecx,esi
  00456e21: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00456e28: e8 1f ac 07 00                                  call   0x4d1a4c
  00456e2d: 8b c6                                           mov    eax,esi
  00456e2f: 5e                                              pop    esi
  00456e30: 8b e5                                           mov    esp,ebp
  00456e32: 5d                                              pop    ebp
  00456e33: c2 04 00                                        ret    0x4

; ===== 0x00456E40 ?SetAccount@Players@@QAEXVCString@@@Z =====
  00456e40: 55                                              push   ebp
  00456e41: 8b ec                                           mov    ebp,esp
  00456e43: 6a ff                                           push   0xffffffff
  00456e45: 68 d8 71 4d 00                                  push   0x4d71d8
  00456e4a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00456e50: 50                                              push   eax
  00456e51: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00456e58: 51                                              push   ecx
  00456e59: 56                                              push   esi
  00456e5a: 57                                              push   edi
  00456e5b: 8b f9                                           mov    edi,ecx
  00456e5d: 6a 40                                           push   0x40
  00456e5f: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456e62: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00456e69: e8 a4 ac 07 00                                  call   0x4d1b12
  00456e6e: 8b f0                                           mov    esi,eax
  00456e70: 83 fe ff                                        cmp    esi,0xffffffff
  00456e73: 74 77                                           je     0x456eec
  00456e75: a0 7c 42 51 00                                  mov    al,ds:0x51427c
  00456e7a: 84 c0                                           test   al,al
  00456e7c: 74 2b                                           je     0x456ea9
  00456e7e: 56                                              push   esi
  00456e7f: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00456e82: 50                                              push   eax
  00456e83: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456e86: e8 75 ac 07 00                                  call   0x4d1b00
  00456e8b: 50                                              push   eax
  00456e8c: 8d 8f a8 00 00 00                               lea    ecx,[edi+0xa8]
  00456e92: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00456e96: e8 ab ab 07 00                                  call   0x4d1a46
  00456e9b: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00456e9e: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00456ea2: e8 99 ab 07 00                                  call   0x4d1a40
  00456ea7: eb 0f                                           jmp    0x456eb8
  00456ea9: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456eac: 51                                              push   ecx
  00456ead: 8d 8f a8 00 00 00                               lea    ecx,[edi+0xa8]
  00456eb3: e8 8e ab 07 00                                  call   0x4d1a46
  00456eb8: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00456ebb: 8b 42 f8                                        mov    eax,DWORD PTR [edx-0x8]
  00456ebe: 2b c6                                           sub    eax,esi
  00456ec0: 48                                              dec    eax
  00456ec1: 50                                              push   eax
  00456ec2: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00456ec5: 50                                              push   eax
  00456ec6: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456ec9: e8 3e ac 07 00                                  call   0x4d1b0c
  00456ece: 50                                              push   eax
  00456ecf: 8d 8f b0 00 00 00                               lea    ecx,[edi+0xb0]
  00456ed5: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00456ed9: e8 68 ab 07 00                                  call   0x4d1a46
  00456ede: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00456ee1: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00456ee5: e8 56 ab 07 00                                  call   0x4d1a40
  00456eea: eb 0f                                           jmp    0x456efb
  00456eec: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456eef: 51                                              push   ecx
  00456ef0: 8d 8f a8 00 00 00                               lea    ecx,[edi+0xa8]
  00456ef6: e8 4b ab 07 00                                  call   0x4d1a46
  00456efb: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00456efe: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456f05: e8 36 ab 07 00                                  call   0x4d1a40
  00456f0a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00456f0d: 5f                                              pop    edi
  00456f0e: 5e                                              pop    esi
  00456f0f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00456f16: 8b e5                                           mov    esp,ebp
  00456f18: 5d                                              pop    ebp
  00456f19: c2 04 00                                        ret    0x4

; ===== 0x00456F20 ?GetPCs@Players@@QAEPAV?$TemplateList@UCStringAndRace@@@@XZ =====
  00456f20: 8d 81 b4 00 00 00                               lea    eax,[ecx+0xb4]
  00456f26: c3                                              ret

; ===== 0x00456F30 ?UseDeathLock@Players@@QAEXXZ =====
  00456f30: 55                                              push   ebp
  00456f31: 8b ec                                           mov    ebp,esp
  00456f33: 6a ff                                           push   0xffffffff
  00456f35: 68 00 72 4d 00                                  push   0x4d7200
  00456f3a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00456f40: 50                                              push   eax
  00456f41: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00456f48: 83 ec 08                                        sub    esp,0x8
  00456f4b: 56                                              push   esi
  00456f4c: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00456f4f: 8b f1                                           mov    esi,ecx
  00456f51: 50                                              push   eax
  00456f52: e8 b9 fe ff ff                                  call   0x456e10
  00456f57: 8b 00                                           mov    eax,DWORD PTR [eax]
  00456f59: 50                                              push   eax
  00456f5a: 68 24 68 50 00                                  push   0x506824
  00456f5f: 68 00 08 00 00                                  push   0x800
  00456f64: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00456f6b: e8 d0 ad 01 00                                  call   0x471d40
  00456f70: 83 c4 0c                                        add    esp,0xc
  00456f73: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00456f76: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456f7d: e8 be aa 07 00                                  call   0x4d1a40
  00456f82: 8b 56 74                                        mov    edx,DWORD PTR [esi+0x74]
  00456f85: 42                                              inc    edx
  00456f86: 8d 8e f8 00 00 00                               lea    ecx,[esi+0xf8]
  00456f8c: 89 56 74                                        mov    DWORD PTR [esi+0x74],edx
  00456f8f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00456f91: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00456f94: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00456f97: 50                                              push   eax
  00456f98: 8b ce                                           mov    ecx,esi
  00456f9a: e8 71 fe ff ff                                  call   0x456e10
  00456f9f: 8b 4e 74                                        mov    ecx,DWORD PTR [esi+0x74]
  00456fa2: 8b 00                                           mov    eax,DWORD PTR [eax]
  00456fa4: 51                                              push   ecx
  00456fa5: 50                                              push   eax
  00456fa6: 68 00 68 50 00                                  push   0x506800
  00456fab: 68 00 08 00 00                                  push   0x800
  00456fb0: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00456fb7: e8 84 ad 01 00                                  call   0x471d40
  00456fbc: 83 c4 10                                        add    esp,0x10
  00456fbf: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00456fc2: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00456fc9: e8 72 aa 07 00                                  call   0x4d1a40
  00456fce: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00456fd1: 5e                                              pop    esi
  00456fd2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00456fd9: 8b e5                                           mov    esp,ebp
  00456fdb: 5d                                              pop    ebp
  00456fdc: c3                                              ret

; ===== 0x00456FE0 ?UseUnlock@Players@@QAEXPBDH@Z =====
  00456fe0: 55                                              push   ebp
  00456fe1: 8b ec                                           mov    ebp,esp
  00456fe3: 6a ff                                           push   0xffffffff
  00456fe5: 68 18 72 4d 00                                  push   0x4d7218
  00456fea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00456ff0: 50                                              push   eax
  00456ff1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00456ff8: 51                                              push   ecx
  00456ff9: 56                                              push   esi
  00456ffa: 8b f1                                           mov    esi,ecx
  00456ffc: 8b 56 74                                        mov    edx,DWORD PTR [esi+0x74]
  00456fff: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00457002: 4a                                              dec    edx
  00457003: 50                                              push   eax
  00457004: 89 56 74                                        mov    DWORD PTR [esi+0x74],edx
  00457007: e8 04 fe ff ff                                  call   0x456e10
  0045700c: 8b 4e 74                                        mov    ecx,DWORD PTR [esi+0x74]
  0045700f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00457012: 8b 00                                           mov    eax,DWORD PTR [eax]
  00457014: 51                                              push   ecx
  00457015: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00457018: 52                                              push   edx
  00457019: 51                                              push   ecx
  0045701a: 50                                              push   eax
  0045701b: 68 3c 68 50 00                                  push   0x50683c
  00457020: 68 00 08 00 00                                  push   0x800
  00457025: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045702c: e8 0f ad 01 00                                  call   0x471d40
  00457031: 83 c4 18                                        add    esp,0x18
  00457034: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00457037: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045703e: e8 fd a9 07 00                                  call   0x4d1a40
  00457043: 8b 96 f8 00 00 00                               mov    edx,DWORD PTR [esi+0xf8]
  00457049: 8d 8e f8 00 00 00                               lea    ecx,[esi+0xf8]
  0045704f: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00457052: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00457055: 5e                                              pop    esi
  00457056: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045705d: 8b e5                                           mov    esp,ebp
  0045705f: 5d                                              pop    ebp
  00457060: c2 08 00                                        ret    0x8

; ===== 0x00457070 ?UsePicklock@Players@@QAEHPBDH@Z =====
  00457070: 55                                              push   ebp
  00457071: 8b ec                                           mov    ebp,esp
  00457073: 6a ff                                           push   0xffffffff
  00457075: 68 38 72 4d 00                                  push   0x4d7238
  0045707a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00457080: 50                                              push   eax
  00457081: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00457088: 51                                              push   ecx
  00457089: 56                                              push   esi
  0045708a: 8b f1                                           mov    esi,ecx
  0045708c: 8b 86 f8 00 00 00                               mov    eax,DWORD PTR [esi+0xf8]
  00457092: 8d 8e f8 00 00 00                               lea    ecx,[esi+0xf8]
  00457098: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0045709b: 85 c0                                           test   eax,eax
  0045709d: 74 5b                                           je     0x4570fa
  0045709f: ff 46 74                                        inc    DWORD PTR [esi+0x74]
  004570a2: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004570a5: 51                                              push   ecx
  004570a6: 8b ce                                           mov    ecx,esi
  004570a8: e8 63 fd ff ff                                  call   0x456e10
  004570ad: 8b 56 74                                        mov    edx,DWORD PTR [esi+0x74]
  004570b0: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004570b3: 8b 00                                           mov    eax,DWORD PTR [eax]
  004570b5: 52                                              push   edx
  004570b6: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004570b9: 51                                              push   ecx
  004570ba: 52                                              push   edx
  004570bb: 50                                              push   eax
  004570bc: 68 68 68 50 00                                  push   0x506868
  004570c1: 68 00 08 00 00                                  push   0x800
  004570c6: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004570cd: e8 6e ac 01 00                                  call   0x471d40
  004570d2: 83 c4 18                                        add    esp,0x18
  004570d5: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004570d8: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004570df: e8 5c a9 07 00                                  call   0x4d1a40
  004570e4: b8 01 00 00 00                                  mov    eax,0x1
  004570e9: 5e                                              pop    esi
  004570ea: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004570ed: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004570f4: 8b e5                                           mov    esp,ebp
  004570f6: 5d                                              pop    ebp
  004570f7: c2 08 00                                        ret    0x8
  004570fa: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004570fd: 33 c0                                           xor    eax,eax
  004570ff: 5e                                              pop    esi
  00457100: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00457107: 8b e5                                           mov    esp,ebp
  00457109: 5d                                              pop    ebp
  0045710a: c2 08 00                                        ret    0x8

; ===== 0x00457110 ?IsLoading@Players@@QAE_NXZ =====
  00457110: 8b 51 74                                        mov    edx,DWORD PTR [ecx+0x74]
  00457113: 33 c0                                           xor    eax,eax
  00457115: 3b c2                                           cmp    eax,edx
  00457117: 1b c0                                           sbb    eax,eax
  00457119: f7 d8                                           neg    eax
  0045711b: c3                                              ret

; ===== 0x00457120 ?SetCredits@Players@@QAEXK@Z =====
  00457120: 55                                              push   ebp
  00457121: 8b ec                                           mov    ebp,esp
  00457123: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00457126: 89 81 9c 00 00 00                               mov    DWORD PTR [ecx+0x9c],eax
  0045712c: 5d                                              pop    ebp
  0045712d: c2 04 00                                        ret    0x4

; ===== 0x00457130 ?GetCredits@Players@@QAEKXZ =====
  00457130: 8b 81 9c 00 00 00                               mov    eax,DWORD PTR [ecx+0x9c]
  00457136: c3                                              ret

; ===== 0x00457940 ?SetNextSave@Players@@QAEXXZ =====
  00457940: 56                                              push   esi
  00457941: 57                                              push   edi
  00457942: 6a 03                                           push   0x3
  00457944: 8b f1                                           mov    esi,ecx
  00457946: 6a 00                                           push   0x0
  00457948: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0045794d: e8 4e 17 00 00                                  call   0x4590a0
  00457952: 83 c0 07                                        add    eax,0x7
  00457955: 8d 04 40                                        lea    eax,[eax+eax*2]
  00457958: 8d 04 80                                        lea    eax,[eax+eax*4]
  0045795b: 8d 3c 80                                        lea    edi,[eax+eax*4]
  0045795e: c1 e7 04                                        shl    edi,0x4
  00457961: e8 2a a9 01 00                                  call   0x472290
  00457966: 03 f8                                           add    edi,eax
  00457968: 89 be 94 00 00 00                               mov    DWORD PTR [esi+0x94],edi
  0045796e: 5f                                              pop    edi
  0045796f: 5e                                              pop    esi
  00457970: c3                                              ret

; ===== 0x00457980 ?ResetIdle@Players@@QAEXXZ =====
  00457980: 56                                              push   esi
  00457981: 8b f1                                           mov    esi,ecx
  00457983: e8 08 a9 01 00                                  call   0x472290
  00457988: 8b 0d 38 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e38
  0045798e: 03 41 48                                        add    eax,DWORD PTR [ecx+0x48]
  00457991: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  00457994: c6 46 6c 00                                     mov    BYTE PTR [esi+0x6c],0x0
  00457998: 5e                                              pop    esi
  00457999: c3                                              ret

; ===== 0x004579A0 ?IsIdle@Players@@QAEHXZ =====
  004579a0: 55                                              push   ebp
  004579a1: 8b ec                                           mov    ebp,esp
  004579a3: 6a ff                                           push   0xffffffff
  004579a5: 68 48 73 4d 00                                  push   0x4d7348
  004579aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004579b0: 50                                              push   eax
  004579b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004579b8: 83 ec 20                                        sub    esp,0x20
  004579bb: 56                                              push   esi
  004579bc: 8b f1                                           mov    esi,ecx
  004579be: 8a 86 8c 00 00 00                               mov    al,BYTE PTR [esi+0x8c]
  004579c4: 84 c0                                           test   al,al
  004579c6: 0f 85 b8 00 00 00                               jne    0x457a84
  004579cc: e8 bf a8 01 00                                  call   0x472290
  004579d1: 39 46 70                                        cmp    DWORD PTR [esi+0x70],eax
  004579d4: 76 0e                                           jbe    0x4579e4
  004579d6: e8 b5 a8 01 00                                  call   0x472290
  004579db: 39 46 38                                        cmp    DWORD PTR [esi+0x38],eax
  004579de: 0f 83 eb 00 00 00                               jae    0x457acf
  004579e4: e8 a7 a8 01 00                                  call   0x472290
  004579e9: 8b 0d 38 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e38
  004579ef: 03 41 48                                        add    eax,DWORD PTR [ecx+0x48]
  004579f2: 8a 56 6c                                        mov    dl,BYTE PTR [esi+0x6c]
  004579f5: fe c2                                           inc    dl
  004579f7: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004579fa: 88 56 6c                                        mov    BYTE PTR [esi+0x6c],dl
  004579fd: 8a c2                                           mov    al,dl
  004579ff: 8b 15 38 5e 51 00                               mov    edx,DWORD PTR ds:0x515e38
  00457a05: 3a 42 4c                                        cmp    al,BYTE PTR [edx+0x4c]
  00457a08: 76 33                                           jbe    0x457a3d
  00457a0a: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00457a0d: 50                                              push   eax
  00457a0e: 8b ce                                           mov    ecx,esi
  00457a10: e8 4b 12 00 00                                  call   0x458c60
  00457a15: 8b 00                                           mov    eax,DWORD PTR [eax]
  00457a17: 50                                              push   eax
  00457a18: 68 14 69 50 00                                  push   0x506914
  00457a1d: 68 00 08 00 00                                  push   0x800
  00457a22: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00457a29: e8 12 a3 01 00                                  call   0x471d40
  00457a2e: 83 c4 0c                                        add    esp,0xc
  00457a31: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00457a38: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00457a3b: eb 3b                                           jmp    0x457a78
  00457a3d: e8 4e a8 01 00                                  call   0x472290
  00457a42: 39 46 38                                        cmp    DWORD PTR [esi+0x38],eax
  00457a45: 73 51                                           jae    0x457a98
  00457a47: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00457a4a: 51                                              push   ecx
  00457a4b: 8b ce                                           mov    ecx,esi
  00457a4d: e8 0e 12 00 00                                  call   0x458c60
  00457a52: 8b 00                                           mov    eax,DWORD PTR [eax]
  00457a54: 50                                              push   eax
  00457a55: 68 e4 68 50 00                                  push   0x5068e4
  00457a5a: 68 00 08 00 00                                  push   0x800
  00457a5f: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00457a66: e8 d5 a2 01 00                                  call   0x471d40
  00457a6b: 83 c4 0c                                        add    esp,0xc
  00457a6e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00457a75: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00457a78: e8 c3 9f 07 00                                  call   0x4d1a40
  00457a7d: c6 86 8c 00 00 00 01                            mov    BYTE PTR [esi+0x8c],0x1
  00457a84: b8 01 00 00 00                                  mov    eax,0x1
  00457a89: 5e                                              pop    esi
  00457a8a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00457a8d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00457a94: 8b e5                                           mov    esp,ebp
  00457a96: 5d                                              pop    ebp
  00457a97: c3                                              ret
  00457a98: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00457a9b: e8 50 e3 02 00                                  call   0x485df0
  00457aa0: 6a 0a                                           push   0xa
  00457aa2: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00457aa5: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00457aac: e8 9f e6 02 00                                  call   0x486150
  00457ab1: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00457ab4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00457ab6: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  00457ab9: 50                                              push   eax
  00457aba: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00457ac0: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00457ac3: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00457aca: e8 b1 e3 02 00                                  call   0x485e80
  00457acf: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00457ad2: 33 c0                                           xor    eax,eax
  00457ad4: 5e                                              pop    esi
  00457ad5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00457adc: 8b e5                                           mov    esp,ebp
  00457ade: 5d                                              pop    ebp
  00457adf: c3                                              ret

; ===== 0x004581F0 ?QueryAuthWatchDog@Players@@QAEXXZ =====
  004581f0: 55                                              push   ebp
  004581f1: 8b ec                                           mov    ebp,esp
  004581f3: 6a ff                                           push   0xffffffff
  004581f5: 68 3b 74 4d 00                                  push   0x4d743b
  004581fa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00458200: 50                                              push   eax
  00458201: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00458208: 83 ec 0c                                        sub    esp,0xc
  0045820b: 57                                              push   edi
  0045820c: 8b f9                                           mov    edi,ecx
  0045820e: 8a 47 41                                        mov    al,BYTE PTR [edi+0x41]
  00458211: 84 c0                                           test   al,al
  00458213: 0f 84 1f 01 00 00                               je     0x458338
  00458219: a0 24 42 51 00                                  mov    al,ds:0x514224
  0045821e: 84 c0                                           test   al,al
  00458220: 0f 85 12 01 00 00                               jne    0x458338
  00458226: e8 65 a0 01 00                                  call   0x472290
  0045822b: 3b 47 3c                                        cmp    eax,DWORD PTR [edi+0x3c]
  0045822e: 0f 82 04 01 00 00                               jb     0x458338
  00458234: e8 57 a0 01 00                                  call   0x472290
  00458239: 05 e0 2e 00 00                                  add    eax,0x2ee0
  0045823e: 89 47 3c                                        mov    DWORD PTR [edi+0x3c],eax
  00458241: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00458244: 50                                              push   eax
  00458245: 8b cf                                           mov    ecx,edi
  00458247: e8 14 0a 00 00                                  call   0x458c60
  0045824c: 8b 0d 70 42 51 00                               mov    ecx,DWORD PTR ds:0x514270
  00458252: 8b 41 f8                                        mov    eax,DWORD PTR [ecx-0x8]
  00458255: 85 c0                                           test   eax,eax
  00458257: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0045825e: 74 4f                                           je     0x4582af
  00458260: 68 10 66 50 00                                  push   0x506610
  00458265: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00458268: e8 99 98 07 00                                  call   0x4d1b06
  0045826d: 83 f8 ff                                        cmp    eax,0xffffffff
  00458270: 74 26                                           je     0x458298
  00458272: 50                                              push   eax
  00458273: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00458276: 52                                              push   edx
  00458277: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0045827a: e8 81 98 07 00                                  call   0x4d1b00
  0045827f: 50                                              push   eax
  00458280: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00458283: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00458287: e8 ba 97 07 00                                  call   0x4d1a46
  0045828c: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0045828f: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00458293: e8 a8 97 07 00                                  call   0x4d1a40
  00458298: 6a 40                                           push   0x40
  0045829a: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0045829d: e8 ec 97 07 00                                  call   0x4d1a8e
  004582a2: 68 70 42 51 00                                  push   0x514270
  004582a7: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004582aa: e8 09 98 07 00                                  call   0x4d1ab8
  004582af: 56                                              push   esi
  004582b0: 6a 1c                                           push   0x1c
  004582b2: e8 39 9d fe ff                                  call   0x441ff0
  004582b7: 8b f0                                           mov    esi,eax
  004582b9: 83 c4 04                                        add    esp,0x4
  004582bc: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  004582bf: 85 f6                                           test   esi,esi
  004582c1: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004582c5: 74 0a                                           je     0x4582d1
  004582c7: 8d 4e 10                                        lea    ecx,[esi+0x10]
  004582ca: e8 8f 97 07 00                                  call   0x4d1a5e
  004582cf: eb 02                                           jmp    0x4582d3
  004582d1: 33 f6                                           xor    esi,esi
  004582d3: 8b 87 80 00 00 00                               mov    eax,DWORD PTR [edi+0x80]
  004582d9: 8b cf                                           mov    ecx,edi
  004582db: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004582df: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004582e2: e8 d9 f5 ff ff                                  call   0x4578c0
  004582e7: e8 8e 9a 07 00                                  call   0x4d1d7a
  004582ec: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004582ef: 83 c7 24                                        add    edi,0x24
  004582f2: 8b 17                                           mov    edx,DWORD PTR [edi]
  004582f4: 8b ce                                           mov    ecx,esi
  004582f6: 89 11                                           mov    DWORD PTR [ecx],edx
  004582f8: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004582fb: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  004582fe: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00458301: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00458304: 8b 47 0c                                        mov    eax,DWORD PTR [edi+0xc]
  00458307: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  0045830a: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0045830d: 51                                              push   ecx
  0045830e: 8d 4e 10                                        lea    ecx,[esi+0x10]
  00458311: e8 30 97 07 00                                  call   0x4d1a46
  00458316: 56                                              push   esi
  00458317: 68 e0 7a 45 00                                  push   0x457ae0
  0045831c: e8 8f df fa ff                                  call   0x4062b0
  00458321: 8b c8                                           mov    ecx,eax
  00458323: e8 08 de fa ff                                  call   0x406130
  00458328: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0045832b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00458332: e8 09 97 07 00                                  call   0x4d1a40
  00458337: 5e                                              pop    esi
  00458338: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045833b: 5f                                              pop    edi
  0045833c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00458343: 8b e5                                           mov    esp,ebp
  00458345: 5d                                              pop    ebp
  00458346: c3                                              ret

; ===== 0x00458350 ?CanShout@Players@@QAE_NXZ =====
  00458350: 56                                              push   esi
  00458351: 8b f1                                           mov    esi,ecx
  00458353: e8 38 9f 01 00                                  call   0x472290
  00458358: 3b 86 90 00 00 00                               cmp    eax,DWORD PTR [esi+0x90]
  0045835e: 1a c0                                           sbb    al,al
  00458360: fe c0                                           inc    al
  00458362: 5e                                              pop    esi
  00458363: c3                                              ret

; ===== 0x00458370 ?ToggleShout@Players@@QAEXXZ =====
  00458370: 56                                              push   esi
  00458371: 57                                              push   edi
  00458372: 8b f1                                           mov    esi,ecx
  00458374: e8 67 c7 ff ff                                  call   0x454ae0
  00458379: 83 e2 08                                        and    edx,0x8
  0045837c: 33 c0                                           xor    eax,eax
  0045837e: 0b c2                                           or     eax,edx
  00458380: 74 0d                                           je     0x45838f
  00458382: 5f                                              pop    edi
  00458383: c7 86 90 00 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x90],0x0
  0045838d: 5e                                              pop    esi
  0045838e: c3                                              ret
  0045838f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00458392: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00458394: 6a 00                                           push   0x0
  00458396: 68 44 4e 00 00                                  push   0x4e44
  0045839b: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0045839e: 8b f8                                           mov    edi,eax
  004583a0: 85 ff                                           test   edi,edi
  004583a2: 74 14                                           je     0x4583b8
  004583a4: e8 e7 9e 01 00                                  call   0x472290
  004583a9: 8d 0c bf                                        lea    ecx,[edi+edi*4]
  004583ac: 8d 14 88                                        lea    edx,[eax+ecx*4]
  004583af: 5f                                              pop    edi
  004583b0: 89 96 90 00 00 00                               mov    DWORD PTR [esi+0x90],edx
  004583b6: 5e                                              pop    esi
  004583b7: c3                                              ret
  004583b8: 68 02 00 00 80                                  push   0x80000002
  004583bd: 68 f8 61 50 00                                  push   0x5061f8
  004583c2: 68 60 11 50 00                                  push   0x501160
  004583c7: e8 c4 ed fa ff                                  call   0x407190
  004583cc: 83 c4 0c                                        add    esp,0xc
  004583cf: 8d 3c 80                                        lea    edi,[eax+eax*4]
  004583d2: e8 b9 9e 01 00                                  call   0x472290
  004583d7: 8d 04 b8                                        lea    eax,[eax+edi*4]
  004583da: 5f                                              pop    edi
  004583db: 89 86 90 00 00 00                               mov    DWORD PTR [esi+0x90],eax
  004583e1: 5e                                              pop    esi
  004583e2: c3                                              ret

; ===== 0x00458790 ?CanPage@Players@@QAE_NXZ =====
  00458790: 56                                              push   esi
  00458791: 8b f1                                           mov    esi,ecx
  00458793: e8 f8 9a 01 00                                  call   0x472290
  00458798: 39 86 84 00 00 00                               cmp    DWORD PTR [esi+0x84],eax
  0045879e: 77 38                                           ja     0x4587d8
  004587a0: e8 eb 9a 01 00                                  call   0x472290
  004587a5: 8b 96 84 00 00 00                               mov    edx,DWORD PTR [esi+0x84]
  004587ab: 8b c8                                           mov    ecx,eax
  004587ad: 2b ca                                           sub    ecx,edx
  004587af: b8 89 88 88 88                                  mov    eax,0x88888889
  004587b4: f7 e1                                           mul    ecx
  004587b6: 8b 86 88 00 00 00                               mov    eax,DWORD PTR [esi+0x88]
  004587bc: c1 ea 05                                        shr    edx,0x5
  004587bf: 42                                              inc    edx
  004587c0: 3b c2                                           cmp    eax,edx
  004587c2: 76 0a                                           jbe    0x4587ce
  004587c4: 2b c2                                           sub    eax,edx
  004587c6: 89 86 88 00 00 00                               mov    DWORD PTR [esi+0x88],eax
  004587cc: eb 0a                                           jmp    0x4587d8
  004587ce: c7 86 88 00 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x88],0x0
  004587d8: 83 be 88 00 00 00 02                            cmp    DWORD PTR [esi+0x88],0x2
  004587df: 72 14                                           jb     0x4587f5
  004587e1: 8b ce                                           mov    ecx,esi
  004587e3: e8 f8 c2 ff ff                                  call   0x454ae0
  004587e8: 83 e2 08                                        and    edx,0x8
  004587eb: 33 c0                                           xor    eax,eax
  004587ed: 0b c2                                           or     eax,edx
  004587ef: 75 04                                           jne    0x4587f5
  004587f1: 32 c0                                           xor    al,al
  004587f3: 5e                                              pop    esi
  004587f4: c3                                              ret
  004587f5: b0 01                                           mov    al,0x1
  004587f7: 5e                                              pop    esi
  004587f8: c3                                              ret

; ===== 0x00458800 ?PageNotification@Players@@QAEXXZ =====
  00458800: 56                                              push   esi
  00458801: 8b f1                                           mov    esi,ecx
  00458803: e8 88 9a 01 00                                  call   0x472290
  00458808: 83 c0 3c                                        add    eax,0x3c
  0045880b: 89 86 84 00 00 00                               mov    DWORD PTR [esi+0x84],eax
  00458811: ff 86 88 00 00 00                               inc    DWORD PTR [esi+0x88]
  00458817: 5e                                              pop    esi
  00458818: c3                                              ret

; ===== 0x004588B0 ?NameExists@Players@@SA_NABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z =====
  004588b0: 55                                              push   ebp
  004588b1: 8b ec                                           mov    ebp,esp
  004588b3: 81 ec 00 08 00 00                               sub    esp,0x800
  004588b9: 53                                              push   ebx
  004588ba: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004588bf: c6 85 00 f8 ff ff 00                            mov    BYTE PTR [ebp-0x800],0x0
  004588c6: b3 01                                           mov    bl,0x1
  004588c8: e8 b3 60 ff ff                                  call   0x44e980
  004588cd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004588d0: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004588d3: 85 c0                                           test   eax,eax
  004588d5: 75 05                                           jne    0x4588dc
  004588d7: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004588dc: 6a 00                                           push   0x0
  004588de: 50                                              push   eax
  004588df: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  004588e5: 68 78 6a 50 00                                  push   0x506a78
  004588ea: 51                                              push   ecx
  004588eb: e8 50 b0 fa ff                                  call   0x403940
  004588f0: 83 c4 0c                                        add    esp,0xc
  004588f3: 50                                              push   eax
  004588f4: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  004588f9: e8 82 64 ff ff                                  call   0x44ed80
  004588fe: 85 c0                                           test   eax,eax
  00458900: 74 1a                                           je     0x45891c
  00458902: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00458907: e8 54 64 ff ff                                  call   0x44ed60
  0045890c: 85 c0                                           test   eax,eax
  0045890e: 75 02                                           jne    0x458912
  00458910: 32 db                                           xor    bl,bl
  00458912: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00458917: e8 54 64 ff ff                                  call   0x44ed70
  0045891c: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00458921: e8 aa 60 ff ff                                  call   0x44e9d0
  00458926: 8a c3                                           mov    al,bl
  00458928: 5b                                              pop    ebx
  00458929: 8b e5                                           mov    esp,ebp
  0045892b: 5d                                              pop    ebp
  0045892c: c3                                              ret

; ===== 0x00458930 ?AccountLoggonFailed@Players@@SAXABVCString@@@Z =====
  00458930: 55                                              push   ebp
  00458931: 8b ec                                           mov    ebp,esp
  00458933: 6a ff                                           push   0xffffffff
  00458935: 68 b3 74 4d 00                                  push   0x4d74b3
  0045893a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00458940: 50                                              push   eax
  00458941: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00458948: 51                                              push   ecx
  00458949: 53                                              push   ebx
  0045894a: 56                                              push   esi
  0045894b: 57                                              push   edi
  0045894c: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0045894f: e8 0a 91 07 00                                  call   0x4d1a5e
  00458954: 33 db                                           xor    ebx,ebx
  00458956: 6a 44                                           push   0x44
  00458958: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0045895b: e8 90 96 fe ff                                  call   0x441ff0
  00458960: 8b f0                                           mov    esi,eax
  00458962: 83 c4 04                                        add    esp,0x4
  00458965: 3b f3                                           cmp    esi,ebx
  00458967: 74 35                                           je     0x45899e
  00458969: 8d 46 08                                        lea    eax,[esi+0x8]
  0045896c: 50                                              push   eax
  0045896d: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00458973: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  0045897a: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00458980: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  00458983: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  00458986: 89 5e 2c                                        mov    DWORD PTR [esi+0x2c],ebx
  00458989: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  0045898c: c7 06 88 e8 4d 00                               mov    DWORD PTR [esi],0x4de888
  00458992: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00458995: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00458999: 89 5e 38                                        mov    DWORD PTR [esi+0x38],ebx
  0045899c: eb 02                                           jmp    0x4589a0
  0045899e: 33 f6                                           xor    esi,esi
  004589a0: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004589a3: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004589a5: 52                                              push   edx
  004589a6: 8d 45 f0                                        lea    eax,[ebp-0x10]
  004589a9: 68 e4 69 50 00                                  push   0x5069e4
  004589ae: 50                                              push   eax
  004589af: e8 e0 90 07 00                                  call   0x4d1a94
  004589b4: 6a 08                                           push   0x8
  004589b6: e8 35 96 fe ff                                  call   0x441ff0
  004589bb: 8b f8                                           mov    edi,eax
  004589bd: 83 c4 10                                        add    esp,0x10
  004589c0: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004589c3: 3b fb                                           cmp    edi,ebx
  004589c5: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004589c9: 74 0a                                           je     0x4589d5
  004589cb: 8d 4f 04                                        lea    ecx,[edi+0x4]
  004589ce: e8 8b 90 07 00                                  call   0x4d1a5e
  004589d3: eb 02                                           jmp    0x4589d7
  004589d5: 33 ff                                           xor    edi,edi
  004589d7: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004589da: 51                                              push   ecx
  004589db: 8d 4f 04                                        lea    ecx,[edi+0x4]
  004589de: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004589e1: e8 60 90 07 00                                  call   0x4d1a46
  004589e6: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  004589e9: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  004589ec: 42                                              inc    edx
  004589ed: 3b c3                                           cmp    eax,ebx
  004589ef: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004589f2: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004589f5: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004589f9: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004589fc: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  004589ff: 6a 0c                                           push   0xc
  00458a01: 75 28                                           jne    0x458a2b
  00458a03: e8 e8 95 fe ff                                  call   0x441ff0
  00458a08: 83 c4 04                                        add    esp,0x4
  00458a0b: 3b c3                                           cmp    eax,ebx
  00458a0d: 74 07                                           je     0x458a16
  00458a0f: 89 18                                           mov    DWORD PTR [eax],ebx
  00458a11: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00458a14: eb 02                                           jmp    0x458a18
  00458a16: 33 c0                                           xor    eax,eax
  00458a18: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00458a1b: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00458a1e: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00458a21: 89 18                                           mov    DWORD PTR [eax],ebx
  00458a23: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00458a26: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  00458a29: eb 2b                                           jmp    0x458a56
  00458a2b: e8 c0 95 fe ff                                  call   0x441ff0
  00458a30: 83 c4 04                                        add    esp,0x4
  00458a33: 3b c3                                           cmp    eax,ebx
  00458a35: 74 07                                           je     0x458a3e
  00458a37: 89 18                                           mov    DWORD PTR [eax],ebx
  00458a39: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00458a3c: eb 02                                           jmp    0x458a40
  00458a3e: 33 c0                                           xor    eax,eax
  00458a40: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00458a43: 89 01                                           mov    DWORD PTR [ecx],eax
  00458a45: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00458a48: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00458a4b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00458a4e: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00458a51: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00458a54: 89 18                                           mov    DWORD PTR [eax],ebx
  00458a56: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00458a59: 68 34 62 50 00                                  push   0x506234
  00458a5e: 53                                              push   ebx
  00458a5f: 53                                              push   ebx
  00458a60: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00458a63: 56                                              push   esi
  00458a64: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00458a69: e8 82 67 ff ff                                  call   0x44f1f0
  00458a6e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00458a71: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00458a78: e8 c3 8f 07 00                                  call   0x4d1a40
  00458a7d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00458a80: 5f                                              pop    edi
  00458a81: 5e                                              pop    esi
  00458a82: 5b                                              pop    ebx
  00458a83: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00458a8a: 8b e5                                           mov    esp,ebp
  00458a8c: 5d                                              pop    ebp
  00458a8d: c3                                              ret

; ===== 0x00458C30 ?GetRealm@Players@@QBE?AVCString@@XZ =====
  00458c30: 55                                              push   ebp
  00458c31: 8b ec                                           mov    ebp,esp
  00458c33: 51                                              push   ecx
  00458c34: 56                                              push   esi
  00458c35: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00458c38: 81 c1 b0 00 00 00                               add    ecx,0xb0
  00458c3e: 51                                              push   ecx
  00458c3f: 8b ce                                           mov    ecx,esi
  00458c41: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00458c48: e8 ff 8d 07 00                                  call   0x4d1a4c
  00458c4d: 8b c6                                           mov    eax,esi
  00458c4f: 5e                                              pop    esi
  00458c50: 8b e5                                           mov    esp,ebp
  00458c52: 5d                                              pop    ebp
  00458c53: c2 04 00                                        ret    0x4

; ===== 0x00458C60 ?GetFullAccountName@Players@@QBE?AVCString@@XZ =====
  00458c60: 55                                              push   ebp
  00458c61: 8b ec                                           mov    ebp,esp
  00458c63: 6a ff                                           push   0xffffffff
  00458c65: 68 e8 74 4d 00                                  push   0x4d74e8
  00458c6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00458c70: 50                                              push   eax
  00458c71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00458c78: 51                                              push   ecx
  00458c79: a0 7c 42 51 00                                  mov    al,ds:0x51427c
  00458c7e: 84 c0                                           test   al,al
  00458c80: 56                                              push   esi
  00458c81: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  00458c88: 74 6f                                           je     0x458cf9
  00458c8a: 8b 81 b0 00 00 00                               mov    eax,DWORD PTR [ecx+0xb0]
  00458c90: 8b 50 f8                                        mov    edx,DWORD PTR [eax-0x8]
  00458c93: 85 d2                                           test   edx,edx
  00458c95: 8d b1 b0 00 00 00                               lea    esi,[ecx+0xb0]
  00458c9b: 74 5c                                           je     0x458cf9
  00458c9d: 81 c1 a8 00 00 00                               add    ecx,0xa8
  00458ca3: 51                                              push   ecx
  00458ca4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00458ca7: e8 a0 8d 07 00                                  call   0x4d1a4c
  00458cac: 68 10 66 50 00                                  push   0x506610
  00458cb1: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00458cb4: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00458cbb: e8 92 8d 07 00                                  call   0x4d1a52
  00458cc0: 56                                              push   esi
  00458cc1: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00458cc4: e8 ef 8d 07 00                                  call   0x4d1ab8
  00458cc9: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00458ccc: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00458ccf: 51                                              push   ecx
  00458cd0: 8b ce                                           mov    ecx,esi
  00458cd2: e8 75 8d 07 00                                  call   0x4d1a4c
  00458cd7: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00458cda: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00458ce1: e8 5a 8d 07 00                                  call   0x4d1a40
  00458ce6: 8b c6                                           mov    eax,esi
  00458ce8: 5e                                              pop    esi
  00458ce9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00458cec: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00458cf3: 8b e5                                           mov    esp,ebp
  00458cf5: 5d                                              pop    ebp
  00458cf6: c2 04 00                                        ret    0x4
  00458cf9: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00458cfc: 81 c1 a8 00 00 00                               add    ecx,0xa8
  00458d02: 51                                              push   ecx
  00458d03: 8b ce                                           mov    ecx,esi
  00458d05: e8 42 8d 07 00                                  call   0x4d1a4c
  00458d0a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00458d0d: 8b c6                                           mov    eax,esi
  00458d0f: 5e                                              pop    esi
  00458d10: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00458d17: 8b e5                                           mov    esp,ebp
  00458d19: 5d                                              pop    ebp
  00458d1a: c2 04 00                                        ret    0x4

