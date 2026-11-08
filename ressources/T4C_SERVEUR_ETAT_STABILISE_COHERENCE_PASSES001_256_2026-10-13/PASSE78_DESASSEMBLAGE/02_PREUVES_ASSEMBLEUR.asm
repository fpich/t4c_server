; PASSE 78 - Personnages : actions, etats, equipement et combat
; SHA256 binaire 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 8131 instructions depuis 92 entrees exportees; chemins indirects exclus.

; ===== 0x004014A0 ?SetStatPoints@Character@@QAEXG@Z =====
  004014a0: 55                                              push   ebp
  004014a1: 8b ec                                           mov    ebp,esp
  004014a3: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  004014a7: 66 89 81 e2 01 00 00                            mov    WORD PTR [ecx+0x1e2],ax
  004014ae: 5d                                              pop    ebp
  004014af: c2 04 00                                        ret    0x4

; ===== 0x004014C0 ?SetTitle@Character@@QAEXVCString@@@Z =====
  004014c0: 55                                              push   ebp
  004014c1: 8b ec                                           mov    ebp,esp
  004014c3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004014c9: 6a ff                                           push   0xffffffff
  004014cb: 68 c8 2e 4d 00                                  push   0x4d2ec8
  004014d0: 50                                              push   eax
  004014d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004014d8: 8d 45 08                                        lea    eax,[ebp+0x8]
  004014db: 50                                              push   eax
  004014dc: 81 c1 64 01 00 00                               add    ecx,0x164
  004014e2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004014e9: e8 58 05 0d 00                                  call   0x4d1a46
  004014ee: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004014f1: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004014f8: e8 43 05 0d 00                                  call   0x4d1a40
  004014fd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00401500: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00401507: 8b e5                                           mov    esp,ebp
  00401509: 5d                                              pop    ebp
  0040150a: c2 04 00                                        ret    0x4

; ===== 0x00401510 ?GetListingMiscDesc@Character@@QAE?AVCString@@XZ =====
  00401510: 55                                              push   ebp
  00401511: 8b ec                                           mov    ebp,esp
  00401513: 51                                              push   ecx
  00401514: 56                                              push   esi
  00401515: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00401518: 81 c1 68 01 00 00                               add    ecx,0x168
  0040151e: 51                                              push   ecx
  0040151f: 8b ce                                           mov    ecx,esi
  00401521: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00401528: e8 1f 05 0d 00                                  call   0x4d1a4c
  0040152d: 8b c6                                           mov    eax,esi
  0040152f: 5e                                              pop    esi
  00401530: 8b e5                                           mov    esp,ebp
  00401532: 5d                                              pop    ebp
  00401533: c2 04 00                                        ret    0x4

; ===== 0x00401540 ?SetListingMiscDesc@Character@@QAEXVCString@@@Z =====
  00401540: 55                                              push   ebp
  00401541: 8b ec                                           mov    ebp,esp
  00401543: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00401549: 6a ff                                           push   0xffffffff
  0040154b: 68 e8 2e 4d 00                                  push   0x4d2ee8
  00401550: 50                                              push   eax
  00401551: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00401558: 8d 45 08                                        lea    eax,[ebp+0x8]
  0040155b: 50                                              push   eax
  0040155c: 81 c1 68 01 00 00                               add    ecx,0x168
  00401562: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00401569: e8 d8 04 0d 00                                  call   0x4d1a46
  0040156e: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00401571: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00401578: e8 c3 04 0d 00                                  call   0x4d1a40
  0040157d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00401580: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00401587: 8b e5                                           mov    esp,ebp
  00401589: 5d                                              pop    ebp
  0040158a: c2 04 00                                        ret    0x4

; ===== 0x00401590 ?SetGameOpContext@Character@@QAEXPAV1@@Z =====
  00401590: 55                                              push   ebp
  00401591: 8b ec                                           mov    ebp,esp
  00401593: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00401596: 89 81 28 01 00 00                               mov    DWORD PTR [ecx+0x128],eax
  0040159c: 5d                                              pop    ebp
  0040159d: c2 04 00                                        ret    0x4

; ===== 0x004015A0 ?GetGameOpContext@Character@@QAEPAV1@XZ =====
  004015a0: 8b 81 28 01 00 00                               mov    eax,DWORD PTR [ecx+0x128]
  004015a6: c3                                              ret

; ===== 0x00412430 ?AutoConfigUpdate@Character@@CAXXZ =====
  00412430: 55                                              push   ebp
  00412431: 8b ec                                           mov    ebp,esp
  00412433: 6a ff                                           push   0xffffffff
  00412435: 68 a4 38 4d 00                                  push   0x4d38a4
  0041243a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00412440: 50                                              push   eax
  00412441: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00412448: 81 ec 34 01 00 00                               sub    esp,0x134
  0041244e: 53                                              push   ebx
  0041244f: 56                                              push   esi
  00412450: 57                                              push   edi
  00412451: 8d 8d c0 fe ff ff                               lea    ecx,[ebp-0x140]
  00412457: e8 34 6d 04 00                                  call   0x459190
  0041245c: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0041245f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00412466: e8 f3 f5 0b 00                                  call   0x4d1a5e
  0041246b: 68 60 11 50 00                                  push   0x501160
  00412470: 68 02 00 00 80                                  push   0x80000002
  00412475: 8d 8d c0 fe ff ff                               lea    ecx,[ebp-0x140]
  0041247b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041247f: e8 8c 6d 04 00                                  call   0x459210
  00412484: 50                                              push   eax
  00412485: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00412488: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0041248b: 58                                              pop    eax
  0041248c: e8 6f 1d 02 00                                  call   0x434200
  00412491: 8b 10                                           mov    edx,DWORD PTR [eax]
  00412493: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00412496: 51                                              push   ecx
  00412497: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0041249a: 68 78 1a 51 00                                  push   0x511a78
  0041249f: 51                                              push   ecx
  004124a0: 8b c8                                           mov    ecx,eax
  004124a2: ff 12                                           call   DWORD PTR [edx]
  004124a4: 68 80 1a 51 00                                  push   0x511a80
  004124a9: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  004124af: e8 4c 1d 02 00                                  call   0x434200
  004124b4: 8b 10                                           mov    edx,DWORD PTR [eax]
  004124b6: 68 7c 1a 51 00                                  push   0x511a7c
  004124bb: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004124be: 51                                              push   ecx
  004124bf: 8b c8                                           mov    ecx,eax
  004124c1: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004124c4: 8b 15 a0 1a 51 00                               mov    edx,DWORD PTR ds:0x511aa0
  004124ca: 51                                              push   ecx
  004124cb: 8b c4                                           mov    eax,esp
  004124cd: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004124d0: 51                                              push   ecx
  004124d1: 89 10                                           mov    DWORD PTR [eax],edx
  004124d3: 8b c4                                           mov    eax,esp
  004124d5: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  004124d8: 50                                              push   eax
  004124d9: b9 98 1a 51 00                                  mov    ecx,0x511a98
  004124de: e8 2d 06 01 00                                  call   0x422b10
  004124e3: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004124e6: 51                                              push   ecx
  004124e7: b9 98 1a 51 00                                  mov    ecx,0x511a98
  004124ec: e8 3f 06 01 00                                  call   0x422b30
  004124f1: 68 58 11 50 00                                  push   0x501158
  004124f6: 68 48 11 50 00                                  push   0x501148
  004124fb: 8d 8d c0 fe ff ff                               lea    ecx,[ebp-0x140]
  00412501: c7 45 f0 01 00 00 00                            mov    DWORD PTR [ebp-0x10],0x1
  00412508: e8 a3 6d 04 00                                  call   0x4592b0
  0041250d: 50                                              push   eax
  0041250e: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00412511: e8 4e f5 0b 00                                  call   0x4d1a64
  00412516: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  00412519: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0041251d: be 58 11 50 00                                  mov    esi,0x501158
  00412522: 8b c7                                           mov    eax,edi
  00412524: 8a 10                                           mov    dl,BYTE PTR [eax]
  00412526: 8a 1e                                           mov    bl,BYTE PTR [esi]
  00412528: 8a ca                                           mov    cl,dl
  0041252a: 3a d3                                           cmp    dl,bl
  0041252c: 75 1e                                           jne    0x41254c
  0041252e: 84 c9                                           test   cl,cl
  00412530: 74 16                                           je     0x412548
  00412532: 8a 50 01                                        mov    dl,BYTE PTR [eax+0x1]
  00412535: 8a 5e 01                                        mov    bl,BYTE PTR [esi+0x1]
  00412538: 8a ca                                           mov    cl,dl
  0041253a: 3a d3                                           cmp    dl,bl
  0041253c: 75 0e                                           jne    0x41254c
  0041253e: 83 c0 02                                        add    eax,0x2
  00412541: 83 c6 02                                        add    esi,0x2
  00412544: 84 c9                                           test   cl,cl
  00412546: 75 dc                                           jne    0x412524
  00412548: 33 c0                                           xor    eax,eax
  0041254a: eb 05                                           jmp    0x412551
  0041254c: 1b c0                                           sbb    eax,eax
  0041254e: 83 d8 ff                                        sbb    eax,0xffffffff
  00412551: 85 c0                                           test   eax,eax
  00412553: 0f 84 35 01 00 00                               je     0x41268e
  00412559: 8a 45 e3                                        mov    al,BYTE PTR [ebp-0x1d]
  0041255c: 6a 00                                           push   0x0
  0041255e: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00412561: 8b f7                                           mov    esi,edi
  00412563: 88 45 d0                                        mov    BYTE PTR [ebp-0x30],al
  00412566: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0041256c: 83 c9 ff                                        or     ecx,0xffffffff
  0041256f: 33 c0                                           xor    eax,eax
  00412571: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00412573: f7 d1                                           not    ecx
  00412575: 49                                              dec    ecx
  00412576: 8b d9                                           mov    ebx,ecx
  00412578: 56                                              push   esi
  00412579: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  0041257c: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  00412582: 84 c0                                           test   al,al
  00412584: 74 16                                           je     0x41259c
  00412586: 8b 55 d4                                        mov    edx,DWORD PTR [ebp-0x2c]
  00412589: 53                                              push   ebx
  0041258a: 2b f2                                           sub    esi,edx
  0041258c: 56                                              push   esi
  0041258d: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00412590: 51                                              push   ecx
  00412591: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00412594: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0041259a: eb 2d                                           jmp    0x4125c9
  0041259c: 6a 01                                           push   0x1
  0041259e: 53                                              push   ebx
  0041259f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004125a2: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004125a8: 84 c0                                           test   al,al
  004125aa: 74 1d                                           je     0x4125c9
  004125ac: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  004125af: 8b cb                                           mov    ecx,ebx
  004125b1: 8b d1                                           mov    edx,ecx
  004125b3: c1 e9 02                                        shr    ecx,0x2
  004125b6: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004125b8: 8b ca                                           mov    ecx,edx
  004125ba: 83 e1 03                                        and    ecx,0x3
  004125bd: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004125bf: 53                                              push   ebx
  004125c0: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  004125c3: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004125c9: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004125cc: 50                                              push   eax
  004125cd: 51                                              push   ecx
  004125ce: 54                                              push   esp
  004125cf: b9 98 1a 51 00                                  mov    ecx,0x511a98
  004125d4: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004125d8: e8 43 05 01 00                                  call   0x422b20
  004125dd: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004125e0: 51                                              push   ecx
  004125e1: b9 98 1a 51 00                                  mov    ecx,0x511a98
  004125e6: e8 15 0e 01 00                                  call   0x423400
  004125eb: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004125ee: 33 db                                           xor    ebx,ebx
  004125f0: 3b c3                                           cmp    eax,ebx
  004125f2: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004125f6: 74 1c                                           je     0x412614
  004125f8: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004125fb: 8a 01                                           mov    al,BYTE PTR [ecx]
  004125fd: 84 c0                                           test   al,al
  004125ff: 74 0a                                           je     0x41260b
  00412601: 3c ff                                           cmp    al,0xff
  00412603: 74 06                                           je     0x41260b
  00412605: fe c8                                           dec    al
  00412607: 88 01                                           mov    BYTE PTR [ecx],al
  00412609: eb 09                                           jmp    0x412614
  0041260b: 51                                              push   ecx
  0041260c: e8 4f fa 02 00                                  call   0x442060
  00412611: 83 c4 04                                        add    esp,0x4
  00412614: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00412617: 40                                              inc    eax
  00412618: 50                                              push   eax
  00412619: 8d 55 e8                                        lea    edx,[ebp-0x18]
  0041261c: 68 38 11 50 00                                  push   0x501138
  00412621: 52                                              push   edx
  00412622: 89 5d d4                                        mov    DWORD PTR [ebp-0x2c],ebx
  00412625: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  00412628: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0041262b: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0041262e: e8 61 f4 0b 00                                  call   0x4d1a94
  00412633: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00412636: 83 c4 0c                                        add    esp,0xc
  00412639: 68 58 11 50 00                                  push   0x501158
  0041263e: 50                                              push   eax
  0041263f: 8d 8d c0 fe ff ff                               lea    ecx,[ebp-0x140]
  00412645: e8 66 6c 04 00                                  call   0x4592b0
  0041264a: 50                                              push   eax
  0041264b: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041264e: e8 05 f4 0b 00                                  call   0x4d1a58
  00412653: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  00412656: be 58 11 50 00                                  mov    esi,0x501158
  0041265b: 8b c7                                           mov    eax,edi
  0041265d: 8a 10                                           mov    dl,BYTE PTR [eax]
  0041265f: 8a ca                                           mov    cl,dl
  00412661: 3a 16                                           cmp    dl,BYTE PTR [esi]
  00412663: 75 1c                                           jne    0x412681
  00412665: 84 c9                                           test   cl,cl
  00412667: 74 14                                           je     0x41267d
  00412669: 8a 50 01                                        mov    dl,BYTE PTR [eax+0x1]
  0041266c: 8a ca                                           mov    cl,dl
  0041266e: 3a 56 01                                        cmp    dl,BYTE PTR [esi+0x1]
  00412671: 75 0e                                           jne    0x412681
  00412673: 83 c0 02                                        add    eax,0x2
  00412676: 83 c6 02                                        add    esi,0x2
  00412679: 84 c9                                           test   cl,cl
  0041267b: 75 e0                                           jne    0x41265d
  0041267d: 33 c0                                           xor    eax,eax
  0041267f: eb 05                                           jmp    0x412686
  00412681: 1b c0                                           sbb    eax,eax
  00412683: 83 d8 ff                                        sbb    eax,0xffffffff
  00412686: 3b c3                                           cmp    eax,ebx
  00412688: 0f 85 cb fe ff ff                               jne    0x412559
  0041268e: e8 6d 1b 02 00                                  call   0x434200
  00412693: 8b 10                                           mov    edx,DWORD PTR [eax]
  00412695: 68 7c 1a 51 00                                  push   0x511a7c
  0041269a: 8b c8                                           mov    ecx,eax
  0041269c: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0041269f: 68 80 1a 51 00                                  push   0x511a80
  004126a4: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  004126aa: 68 2c 11 50 00                                  push   0x50112c
  004126af: 68 20 11 50 00                                  push   0x501120
  004126b4: 8d 8d c0 fe ff ff                               lea    ecx,[ebp-0x140]
  004126ba: e8 f1 6b 04 00                                  call   0x4592b0
  004126bf: 51                                              push   ecx
  004126c0: 8b cc                                           mov    ecx,esp
  004126c2: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004126c5: 50                                              push   eax
  004126c6: e8 99 f3 0b 00                                  call   0x4d1a64
  004126cb: b9 a8 1a 51 00                                  mov    ecx,0x511aa8
  004126d0: e8 2b 72 ff ff                                  call   0x409900
  004126d5: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004126d8: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004126dc: e8 5f f3 0b 00                                  call   0x4d1a40
  004126e1: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004126e4: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004126e8: e8 53 f3 0b 00                                  call   0x4d1a40
  004126ed: 8d 8d c0 fe ff ff                               lea    ecx,[ebp-0x140]
  004126f3: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004126fa: e8 a1 6a 04 00                                  call   0x4591a0
  004126ff: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00412702: 5f                                              pop    edi
  00412703: 5e                                              pop    esi
  00412704: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041270b: 5b                                              pop    ebx
  0041270c: 8b e5                                           mov    esp,ebp
  0041270e: 5d                                              pop    ebp
  0041270f: c3                                              ret

; ===== 0x00412710 ?DestroyEquipment@Character@@AAEXXZ =====
  00412710: 56                                              push   esi
  00412711: 57                                              push   edi
  00412712: bf 01 00 00 00                                  mov    edi,0x1
  00412717: 8d b1 a0 01 00 00                               lea    esi,[ecx+0x1a0]
  0041271d: 83 3e 00                                        cmp    DWORD PTR [esi],0x0
  00412720: 74 31                                           je     0x412753
  00412722: 83 ff 10                                        cmp    edi,0x10
  00412725: 7d 1c                                           jge    0x412743
  00412727: b9 10 00 00 00                                  mov    ecx,0x10
  0041272c: 8d 46 04                                        lea    eax,[esi+0x4]
  0041272f: 2b cf                                           sub    ecx,edi
  00412731: 8b 10                                           mov    edx,DWORD PTR [eax]
  00412733: 3b 16                                           cmp    edx,DWORD PTR [esi]
  00412735: 75 06                                           jne    0x41273d
  00412737: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0041273d: 83 c0 04                                        add    eax,0x4
  00412740: 49                                              dec    ecx
  00412741: 75 ee                                           jne    0x412731
  00412743: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00412745: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00412747: ff 90 c4 01 00 00                               call   DWORD PTR [eax+0x1c4]
  0041274d: c7 06 00 00 00 00                               mov    DWORD PTR [esi],0x0
  00412753: 83 c6 04                                        add    esi,0x4
  00412756: 47                                              inc    edi
  00412757: 8d 4f ff                                        lea    ecx,[edi-0x1]
  0041275a: 83 f9 10                                        cmp    ecx,0x10
  0041275d: 7c be                                           jl     0x41271d
  0041275f: 5f                                              pop    edi
  00412760: 5e                                              pop    esi
  00412761: c3                                              ret

; ===== 0x00412770 ??0Character@@QAE@XZ =====
  00412770: 55                                              push   ebp
  00412771: 8b ec                                           mov    ebp,esp
  00412773: 6a ff                                           push   0xffffffff
  00412775: 68 32 39 4d 00                                  push   0x4d3932
  0041277a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00412780: 50                                              push   eax
  00412781: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00412788: 83 ec 0c                                        sub    esp,0xc
  0041278b: 53                                              push   ebx
  0041278c: 56                                              push   esi
  0041278d: 57                                              push   edi
  0041278e: 8b f1                                           mov    esi,ecx
  00412790: 33 db                                           xor    ebx,ebx
  00412792: 53                                              push   ebx
  00412793: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00412796: e8 45 82 07 00                                  call   0x48a9e0
  0041279b: 8d 8e 58 01 00 00                               lea    ecx,[esi+0x158]
  004127a1: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004127a4: 89 9e 28 01 00 00                               mov    DWORD PTR [esi+0x128],ebx
  004127aa: e8 af f2 0b 00                                  call   0x4d1a5e
  004127af: 8d 8e 5c 01 00 00                               lea    ecx,[esi+0x15c]
  004127b5: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004127b9: e8 a0 f2 0b 00                                  call   0x4d1a5e
  004127be: 8d 8e 60 01 00 00                               lea    ecx,[esi+0x160]
  004127c4: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004127c8: e8 91 f2 0b 00                                  call   0x4d1a5e
  004127cd: 8d 8e 64 01 00 00                               lea    ecx,[esi+0x164]
  004127d3: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004127d7: e8 82 f2 0b 00                                  call   0x4d1a5e
  004127dc: 8d 8e 68 01 00 00                               lea    ecx,[esi+0x168]
  004127e2: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004127e6: e8 73 f2 0b 00                                  call   0x4d1a5e
  004127eb: 8a 4d f3                                        mov    cl,BYTE PTR [ebp-0xd]
  004127ee: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  004127f1: 8d be 8c 01 00 00                               lea    edi,[esi+0x18c]
  004127f7: 6a 01                                           push   0x1
  004127f9: 88 4f 01                                        mov    BYTE PTR [edi+0x1],cl
  004127fc: 53                                              push   ebx
  004127fd: 8b cf                                           mov    ecx,edi
  004127ff: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00412803: 88 07                                           mov    BYTE PTR [edi],al
  00412805: e8 46 14 01 00                                  call   0x423c50
  0041280a: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  0041280d: c6 40 15 01                                     mov    BYTE PTR [eax+0x15],0x1
  00412811: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00412814: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00412817: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0041281a: 89 00                                           mov    DWORD PTR [eax],eax
  0041281c: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0041281f: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00412822: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00412825: 68 00 44 42 00                                  push   0x424400
  0041282a: 68 c0 43 42 00                                  push   0x4243c0
  0041282f: 6a 07                                           push   0x7
  00412831: 6a 44                                           push   0x44
  00412833: 8d 96 e4 01 00 00                               lea    edx,[esi+0x1e4]
  00412839: 52                                              push   edx
  0041283a: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0041283e: e8 49 f5 0b 00                                  call   0x4d1d8c
  00412843: 8d 86 c8 03 00 00                               lea    eax,[esi+0x3c8]
  00412849: 50                                              push   eax
  0041284a: c7 86 c0 03 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0x3c0],0x4de58c
  00412854: c7 86 c4 03 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0x3c4],0xffffffff
  0041285e: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00412864: 89 9e e4 03 00 00                               mov    DWORD PTR [esi+0x3e4],ebx
  0041286a: 89 9e e8 03 00 00                               mov    DWORD PTR [esi+0x3e8],ebx
  00412870: 89 9e ec 03 00 00                               mov    DWORD PTR [esi+0x3ec],ebx
  00412876: 89 9e f0 03 00 00                               mov    DWORD PTR [esi+0x3f0],ebx
  0041287c: c7 86 c0 03 00 00 6c e8 4d 00                   mov    DWORD PTR [esi+0x3c0],0x4de86c
  00412886: 89 9e 00 04 00 00                               mov    DWORD PTR [esi+0x400],ebx
  0041288c: c6 86 f4 03 00 00 08                            mov    BYTE PTR [esi+0x3f4],0x8
  00412893: 89 9e f8 03 00 00                               mov    DWORD PTR [esi+0x3f8],ebx
  00412899: b8 01 00 00 00                                  mov    eax,0x1
  0041289e: 89 86 08 04 00 00                               mov    DWORD PTR [esi+0x408],eax
  004128a4: 89 9e 0c 04 00 00                               mov    DWORD PTR [esi+0x40c],ebx
  004128aa: 89 86 10 04 00 00                               mov    DWORD PTR [esi+0x410],eax
  004128b0: 89 9e 14 04 00 00                               mov    DWORD PTR [esi+0x414],ebx
  004128b6: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  004128ba: c7 06 8c e6 4d 00                               mov    DWORD PTR [esi],0x4de68c
  004128c0: c7 46 30 7c e6 4d 00                            mov    DWORD PTR [esi+0x30],0x4de67c
  004128c7: 53                                              push   ebx
  004128c8: 50                                              push   eax
  004128c9: 50                                              push   eax
  004128ca: 53                                              push   ebx
  004128cb: ff 15 28 e1 4d 00                               call   DWORD PTR ds:0x4de128
  004128d1: 8b ce                                           mov    ecx,esi
  004128d3: 89 86 20 01 00 00                               mov    DWORD PTR [esi+0x120],eax
  004128d9: e8 f2 cb 07 00                                  call   0x48f4d0
  004128de: 8b ce                                           mov    ecx,esi
  004128e0: 83 c8 02                                        or     eax,0x2
  004128e3: 50                                              push   eax
  004128e4: e8 f7 cb 07 00                                  call   0x48f4e0
  004128e9: e8 72 b1 02 00                                  call   0x43da60
  004128ee: 6a 03                                           push   0x3
  004128f0: 8b ce                                           mov    ecx,esi
  004128f2: 66 89 86 1c 01 00 00                            mov    WORD PTR [esi+0x11c],ax
  004128f9: e8 12 91 07 00                                  call   0x48ba10
  004128fe: 6a 02                                           push   0x2
  00412900: 8b ce                                           mov    ecx,esi
  00412902: 89 9e 80 01 00 00                               mov    DWORD PTR [esi+0x180],ebx
  00412908: 89 9e 7c 01 00 00                               mov    DWORD PTR [esi+0x17c],ebx
  0041290e: 89 9e 88 01 00 00                               mov    DWORD PTR [esi+0x188],ebx
  00412914: 89 9e 84 01 00 00                               mov    DWORD PTR [esi+0x184],ebx
  0041291a: e8 41 cb 07 00                                  call   0x48f460
  0041291f: 68 58 13 51 00                                  push   0x511358
  00412924: 8d 8e 58 01 00 00                               lea    ecx,[esi+0x158]
  0041292a: 88 5e 58                                        mov    BYTE PTR [esi+0x58],bl
  0041292d: 89 9e 70 01 00 00                               mov    DWORD PTR [esi+0x170],ebx
  00412933: 89 9e 98 01 00 00                               mov    DWORD PTR [esi+0x198],ebx
  00412939: 89 9e 78 01 00 00                               mov    DWORD PTR [esi+0x178],ebx
  0041293f: 89 9e 6c 01 00 00                               mov    DWORD PTR [esi+0x16c],ebx
  00412945: e8 0e f1 0b 00                                  call   0x4d1a58
  0041294a: 51                                              push   ecx
  0041294b: 8b cc                                           mov    ecx,esp
  0041294d: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00412950: 68 58 13 51 00                                  push   0x511358
  00412955: e8 0a f1 0b 00                                  call   0x4d1a64
  0041295a: 8b ce                                           mov    ecx,esi
  0041295c: e8 4f b0 00 00                                  call   0x41d9b0
  00412961: 83 ec 0c                                        sub    esp,0xc
  00412964: 83 c8 ff                                        or     eax,0xffffffff
  00412967: 8b fc                                           mov    edi,esp
  00412969: 83 c9 ff                                        or     ecx,0xffffffff
  0041296c: 89 07                                           mov    DWORD PTR [edi],eax
  0041296e: 89 4f 04                                        mov    DWORD PTR [edi+0x4],ecx
  00412971: 83 ca ff                                        or     edx,0xffffffff
  00412974: 8b ce                                           mov    ecx,esi
  00412976: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  00412979: e8 32 8d 07 00                                  call   0x48b6b0
  0041297e: 53                                              push   ebx
  0041297f: 6a 01                                           push   0x1
  00412981: 8b ce                                           mov    ecx,esi
  00412983: 89 9e 98 01 00 00                               mov    DWORD PTR [esi+0x198],ebx
  00412989: e8 32 87 07 00                                  call   0x48b0c0
  0041298e: 6a 44                                           push   0x44
  00412990: e8 5b f6 02 00                                  call   0x441ff0
  00412995: 8b f8                                           mov    edi,eax
  00412997: 83 c4 04                                        add    esp,0x4
  0041299a: 3b fb                                           cmp    edi,ebx
  0041299c: 74 35                                           je     0x4129d3
  0041299e: 8d 4f 08                                        lea    ecx,[edi+0x8]
  004129a1: 51                                              push   ecx
  004129a2: c7 07 8c e5 4d 00                               mov    DWORD PTR [edi],0x4de58c
  004129a8: c7 47 04 ff ff ff ff                            mov    DWORD PTR [edi+0x4],0xffffffff
  004129af: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004129b5: 89 5f 24                                        mov    DWORD PTR [edi+0x24],ebx
  004129b8: 89 5f 28                                        mov    DWORD PTR [edi+0x28],ebx
  004129bb: 89 5f 2c                                        mov    DWORD PTR [edi+0x2c],ebx
  004129be: 89 5f 30                                        mov    DWORD PTR [edi+0x30],ebx
  004129c1: c7 07 6c e6 4d 00                               mov    DWORD PTR [edi],0x4de66c
  004129c7: 89 5f 40                                        mov    DWORD PTR [edi+0x40],ebx
  004129ca: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  004129ce: 89 5f 38                                        mov    DWORD PTR [edi+0x38],ebx
  004129d1: eb 02                                           jmp    0x4129d5
  004129d3: 33 ff                                           xor    edi,edi
  004129d5: 89 be 9c 01 00 00                               mov    DWORD PTR [esi+0x19c],edi
  004129db: 33 c0                                           xor    eax,eax
  004129dd: 8d be a0 01 00 00                               lea    edi,[esi+0x1a0]
  004129e3: b9 10 00 00 00                                  mov    ecx,0x10
  004129e8: f3 ab                                           rep stos DWORD PTR es:[edi],eax
  004129ea: 53                                              push   ebx
  004129eb: 53                                              push   ebx
  004129ec: 8b ce                                           mov    ecx,esi
  004129ee: 66 89 9e e2 01 00 00                            mov    WORD PTR [esi+0x1e2],bx
  004129f5: 66 89 9e e0 01 00 00                            mov    WORD PTR [esi+0x1e0],bx
  004129fc: e8 ef a7 00 00                                  call   0x41d1f0
  00412a01: 8b 16                                           mov    edx,DWORD PTR [esi]
  00412a03: 68 24 13 00 00                                  push   0x1324
  00412a08: 68 45 4e 00 00                                  push   0x4e45
  00412a0d: 8b ce                                           mov    ecx,esi
  00412a0f: 89 9e 48 01 00 00                               mov    DWORD PTR [esi+0x148],ebx
  00412a15: 88 5e 7e                                        mov    BYTE PTR [esi+0x7e],bl
  00412a18: 89 9e 80 00 00 00                               mov    DWORD PTR [esi+0x80],ebx
  00412a1e: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00412a21: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00412a24: 89 9e 24 01 00 00                               mov    DWORD PTR [esi+0x124],ebx
  00412a2a: 88 9e 74 01 00 00                               mov    BYTE PTR [esi+0x174],bl
  00412a30: 89 9e 18 01 00 00                               mov    DWORD PTR [esi+0x118],ebx
  00412a36: 5f                                              pop    edi
  00412a37: 8b c6                                           mov    eax,esi
  00412a39: 5e                                              pop    esi
  00412a3a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00412a41: 5b                                              pop    ebx
  00412a42: 8b e5                                           mov    esp,ebp
  00412a44: 5d                                              pop    ebp
  00412a45: c3                                              ret

; ===== 0x00412B90 ??1Character@@EAE@XZ =====
  00412b90: 55                                              push   ebp
  00412b91: 8b ec                                           mov    ebp,esp
  00412b93: 6a ff                                           push   0xffffffff
  00412b95: 68 ca 39 4d 00                                  push   0x4d39ca
  00412b9a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00412ba0: 50                                              push   eax
  00412ba1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00412ba8: 83 ec 4c                                        sub    esp,0x4c
  00412bab: 53                                              push   ebx
  00412bac: 8b d9                                           mov    ebx,ecx
  00412bae: 56                                              push   esi
  00412baf: 57                                              push   edi
  00412bb0: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  00412bb3: c7 03 8c e6 4d 00                               mov    DWORD PTR [ebx],0x4de68c
  00412bb9: c7 43 30 7c e6 4d 00                            mov    DWORD PTR [ebx+0x30],0x4de67c
  00412bc0: 8b 83 9c 01 00 00                               mov    eax,DWORD PTR [ebx+0x19c]
  00412bc6: 85 c0                                           test   eax,eax
  00412bc8: c7 45 fc 08 00 00 00                            mov    DWORD PTR [ebp-0x4],0x8
  00412bcf: 0f 84 7e 01 00 00                               je     0x412d53
  00412bd5: 8b 48 24                                        mov    ecx,DWORD PTR [eax+0x24]
  00412bd8: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00412bdb: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  00412be2: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  00412be6: 8b 83 9c 01 00 00                               mov    eax,DWORD PTR [ebx+0x19c]
  00412bec: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  00412bef: 85 c9                                           test   ecx,ecx
  00412bf1: 74 0a                                           je     0x412bfd
  00412bf3: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00412bf6: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00412bf8: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00412bfb: eb 07                                           jmp    0x412c04
  00412bfd: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  00412c04: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00412c07: 85 c9                                           test   ecx,ecx
  00412c09: 0f 84 22 01 00 00                               je     0x412d31
  00412c0f: 8b 93 9c 01 00 00                               mov    edx,DWORD PTR [ebx+0x19c]
  00412c15: 8b 42 20                                        mov    eax,DWORD PTR [edx+0x20]
  00412c18: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00412c1b: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00412c1d: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  00412c23: 8b 83 9c 01 00 00                               mov    eax,DWORD PTR [ebx+0x19c]
  00412c29: 8b 78 38                                        mov    edi,DWORD PTR [eax+0x38]
  00412c2c: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00412c2f: 8b 50 28                                        mov    edx,DWORD PTR [eax+0x28]
  00412c32: 4f                                              dec    edi
  00412c33: 3b ca                                           cmp    ecx,edx
  00412c35: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  00412c38: 89 78 38                                        mov    DWORD PTR [eax+0x38],edi
  00412c3b: 74 5f                                           je     0x412c9c
  00412c3d: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  00412c40: 74 56                                           je     0x412c98
  00412c42: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00412c44: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00412c47: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00412c4a: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00412c4d: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00412c50: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00412c52: 89 0a                                           mov    DWORD PTR [edx],ecx
  00412c54: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  00412c57: 83 f9 01                                        cmp    ecx,0x1
  00412c5a: 75 1a                                           jne    0x412c76
  00412c5c: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00412c5f: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00412c62: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00412c65: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00412c68: 50                                              push   eax
  00412c69: e8 f2 f3 02 00                                  call   0x442060
  00412c6e: 83 c4 04                                        add    esp,0x4
  00412c71: e9 70 ff ff ff                                  jmp    0x412be6
  00412c76: 83 f9 02                                        cmp    ecx,0x2
  00412c79: 0f 85 a1 00 00 00                               jne    0x412d20
  00412c7f: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00412c82: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00412c84: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00412c87: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00412c8a: 50                                              push   eax
  00412c8b: e8 d0 f3 02 00                                  call   0x442060
  00412c90: 83 c4 04                                        add    esp,0x4
  00412c93: e9 4e ff ff ff                                  jmp    0x412be6
  00412c98: 3b ca                                           cmp    ecx,edx
  00412c9a: 75 3b                                           jne    0x412cd7
  00412c9c: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  00412c9f: 74 3b                                           je     0x412cdc
  00412ca1: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00412ca4: c7 02 00 00 00 00                               mov    DWORD PTR [edx],0x0
  00412caa: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00412cad: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00412cb0: 89 50 28                                        mov    DWORD PTR [eax+0x28],edx
  00412cb3: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00412cb6: 83 78 40 02                                     cmp    DWORD PTR [eax+0x40],0x2
  00412cba: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  00412cbd: 75 61                                           jne    0x412d20
  00412cbf: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  00412cc6: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00412cc9: 50                                              push   eax
  00412cca: e8 91 f3 02 00                                  call   0x442060
  00412ccf: 83 c4 04                                        add    esp,0x4
  00412cd2: e9 0f ff ff ff                                  jmp    0x412be6
  00412cd7: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  00412cda: 75 36                                           jne    0x412d12
  00412cdc: 3b ca                                           cmp    ecx,edx
  00412cde: 74 32                                           je     0x412d12
  00412ce0: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00412ce2: c7 41 04 00 00 00 00                            mov    DWORD PTR [ecx+0x4],0x0
  00412ce9: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00412cec: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00412cee: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00412cf1: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  00412cf4: 83 78 40 01                                     cmp    DWORD PTR [eax+0x40],0x1
  00412cf8: 75 26                                           jne    0x412d20
  00412cfa: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  00412d01: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00412d04: 50                                              push   eax
  00412d05: e8 56 f3 02 00                                  call   0x442060
  00412d0a: 83 c4 04                                        add    esp,0x4
  00412d0d: e9 d4 fe ff ff                                  jmp    0x412be6
  00412d12: 33 c9                                           xor    ecx,ecx
  00412d14: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00412d17: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  00412d1a: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  00412d1d: 89 48 40                                        mov    DWORD PTR [eax+0x40],ecx
  00412d20: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00412d23: 50                                              push   eax
  00412d24: e8 37 f3 02 00                                  call   0x442060
  00412d29: 83 c4 04                                        add    esp,0x4
  00412d2c: e9 b5 fe ff ff                                  jmp    0x412be6
  00412d31: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  00412d34: 85 c9                                           test   ecx,ecx
  00412d36: 74 04                                           je     0x412d3c
  00412d38: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  00412d3c: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  00412d43: 8b 8b 9c 01 00 00                               mov    ecx,DWORD PTR [ebx+0x19c]
  00412d49: 85 c9                                           test   ecx,ecx
  00412d4b: 74 06                                           je     0x412d53
  00412d4d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00412d4f: 6a 01                                           push   0x1
  00412d51: ff 12                                           call   DWORD PTR [edx]
  00412d53: bf 01 00 00 00                                  mov    edi,0x1
  00412d58: 8d b3 a0 01 00 00                               lea    esi,[ebx+0x1a0]
  00412d5e: 83 3e 00                                        cmp    DWORD PTR [esi],0x0
  00412d61: 74 31                                           je     0x412d94
  00412d63: 83 ff 10                                        cmp    edi,0x10
  00412d66: 7d 1c                                           jge    0x412d84
  00412d68: b9 10 00 00 00                                  mov    ecx,0x10
  00412d6d: 8d 46 04                                        lea    eax,[esi+0x4]
  00412d70: 2b cf                                           sub    ecx,edi
  00412d72: 8b 10                                           mov    edx,DWORD PTR [eax]
  00412d74: 3b 16                                           cmp    edx,DWORD PTR [esi]
  00412d76: 75 06                                           jne    0x412d7e
  00412d78: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  00412d7e: 83 c0 04                                        add    eax,0x4
  00412d81: 49                                              dec    ecx
  00412d82: 75 ee                                           jne    0x412d72
  00412d84: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00412d86: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00412d88: ff 90 c4 01 00 00                               call   DWORD PTR [eax+0x1c4]
  00412d8e: c7 06 00 00 00 00                               mov    DWORD PTR [esi],0x0
  00412d94: 83 c6 04                                        add    esi,0x4
  00412d97: 47                                              inc    edi
  00412d98: 8d 4f ff                                        lea    ecx,[edi-0x1]
  00412d9b: 83 f9 10                                        cmp    ecx,0x10
  00412d9e: 7c be                                           jl     0x412d5e
  00412da0: 8d 4d a8                                        lea    ecx,[ebp-0x58]
  00412da3: e8 48 00 01 00                                  call   0x422df0
  00412da8: 33 ff                                           xor    edi,edi
  00412daa: 89 7d cc                                        mov    DWORD PTR [ebp-0x34],edi
  00412dad: 89 7d d0                                        mov    DWORD PTR [ebp-0x30],edi
  00412db0: 89 7d d4                                        mov    DWORD PTR [ebp-0x2c],edi
  00412db3: 89 7d d8                                        mov    DWORD PTR [ebp-0x28],edi
  00412db6: c7 45 a8 6c e8 4d 00                            mov    DWORD PTR [ebp-0x58],0x4de86c
  00412dbd: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00412dc0: c6 45 dc 08                                     mov    BYTE PTR [ebp-0x24],0x8
  00412dc4: 89 7d e0                                        mov    DWORD PTR [ebp-0x20],edi
  00412dc7: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  00412dcb: 8d b3 04 02 00 00                               lea    esi,[ebx+0x204]
  00412dd1: c7 45 ec 07 00 00 00                            mov    DWORD PTR [ebp-0x14],0x7
  00412dd8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00412ddb: 89 16                                           mov    DWORD PTR [esi],edx
  00412ddd: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  00412de0: c6 46 14 08                                     mov    BYTE PTR [esi+0x14],0x8
  00412de4: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00412de7: 3b cf                                           cmp    ecx,edi
  00412de9: 8d 46 e0                                        lea    eax,[esi-0x20]
  00412dec: 74 0a                                           je     0x412df8
  00412dee: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00412df1: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00412df3: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  00412df6: eb 07                                           jmp    0x412dff
  00412df8: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  00412dff: 39 78 20                                        cmp    DWORD PTR [eax+0x20],edi
  00412e02: 74 6e                                           je     0x412e72
  00412e04: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  00412e07: 33 d2                                           xor    edx,edx
  00412e09: 33 c9                                           xor    ecx,ecx
  00412e0b: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  00412e0e: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  00412e11: c6 45 dc 08                                     mov    BYTE PTR [ebp-0x24],0x8
  00412e15: eb 03                                           jmp    0x412e1a
  00412e17: 8b 5d f0                                        mov    ebx,DWORD PTR [ebp-0x10]
  00412e1a: 33 ff                                           xor    edi,edi
  00412e1c: 3b cf                                           cmp    ecx,edi
  00412e1e: 74 07                                           je     0x412e27
  00412e20: 8b 00                                           mov    eax,DWORD PTR [eax]
  00412e22: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  00412e25: eb 08                                           jmp    0x412e2f
  00412e27: b9 01 00 00 00                                  mov    ecx,0x1
  00412e2c: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  00412e2f: 3b c7                                           cmp    eax,edi
  00412e31: 74 15                                           je     0x412e48
  00412e33: 3b d7                                           cmp    edx,edi
  00412e35: 75 ad                                           jne    0x412de4
  00412e37: 8b 3e                                           mov    edi,DWORD PTR [esi]
  00412e39: 8b 58 08                                        mov    ebx,DWORD PTR [eax+0x8]
  00412e3c: 3b 5f 08                                        cmp    ebx,DWORD PTR [edi+0x8]
  00412e3f: 75 d6                                           jne    0x412e17
  00412e41: ba 01 00 00 00                                  mov    edx,0x1
  00412e46: eb cf                                           jmp    0x412e17
  00412e48: 3b cf                                           cmp    ecx,edi
  00412e4a: 74 04                                           je     0x412e50
  00412e4c: c6 45 dc 07                                     mov    BYTE PTR [ebp-0x24],0x7
  00412e50: 3b d7                                           cmp    edx,edi
  00412e52: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00412e55: 75 8d                                           jne    0x412de4
  00412e57: 8b 06                                           mov    eax,DWORD PTR [esi]
  00412e59: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00412e5c: 51                                              push   ecx
  00412e5d: 8d 4d a8                                        lea    ecx,[ebp-0x58]
  00412e60: e8 9b 23 01 00                                  call   0x425200
  00412e65: 8d 4e e0                                        lea    ecx,[esi-0x20]
  00412e68: e8 d3 17 01 00                                  call   0x424640
  00412e6d: e9 72 ff ff ff                                  jmp    0x412de4
  00412e72: 39 78 40                                        cmp    DWORD PTR [eax+0x40],edi
  00412e75: 74 04                                           je     0x412e7b
  00412e77: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  00412e7b: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  00412e7e: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00412e81: 83 c6 44                                        add    esi,0x44
  00412e84: 48                                              dec    eax
  00412e85: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00412e88: 0f 85 4a ff ff ff                               jne    0x412dd8
  00412e8e: 8b 93 e4 03 00 00                               mov    edx,DWORD PTR [ebx+0x3e4]
  00412e94: 8d b3 c0 03 00 00                               lea    esi,[ebx+0x3c0]
  00412e9a: 8b ce                                           mov    ecx,esi
  00412e9c: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00412e9f: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00412ea2: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00412ea6: e8 65 18 01 00                                  call   0x424710
  00412eab: 85 c0                                           test   eax,eax
  00412ead: 74 12                                           je     0x412ec1
  00412eaf: 8b ce                                           mov    ecx,esi
  00412eb1: e8 8a 17 01 00                                  call   0x424640
  00412eb6: 8b ce                                           mov    ecx,esi
  00412eb8: e8 53 18 01 00                                  call   0x424710
  00412ebd: 85 c0                                           test   eax,eax
  00412ebf: 75 ee                                           jne    0x412eaf
  00412ec1: 8b 83 20 01 00 00                               mov    eax,DWORD PTR [ebx+0x120]
  00412ec7: 50                                              push   eax
  00412ec8: ff 15 38 e1 4d 00                               call   DWORD PTR ds:0x4de138
  00412ece: 68 42 4e 00 00                                  push   0x4e42
  00412ed3: 8b cb                                           mov    ecx,ebx
  00412ed5: e8 86 2a 02 00                                  call   0x435960
  00412eda: 68 56 4e 00 00                                  push   0x4e56
  00412edf: 8b cb                                           mov    ecx,ebx
  00412ee1: e8 7a 2a 02 00                                  call   0x435960
  00412ee6: 8d 4d a8                                        lea    ecx,[ebp-0x58]
  00412ee9: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  00412eed: e8 0e 15 01 00                                  call   0x424400
  00412ef2: 8b ce                                           mov    ecx,esi
  00412ef4: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  00412ef8: e8 03 15 01 00                                  call   0x424400
  00412efd: 68 00 44 42 00                                  push   0x424400
  00412f02: 6a 07                                           push   0x7
  00412f04: 6a 44                                           push   0x44
  00412f06: 8d 8b e4 01 00 00                               lea    ecx,[ebx+0x1e4]
  00412f0c: 51                                              push   ecx
  00412f0d: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  00412f11: e8 7a ec 0b 00                                  call   0x4d1b90
  00412f16: 8d 8b 8c 01 00 00                               lea    ecx,[ebx+0x18c]
  00412f1c: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00412f20: e8 4b f9 00 00                                  call   0x422870
  00412f25: 8d 8b 68 01 00 00                               lea    ecx,[ebx+0x168]
  00412f2b: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00412f2f: e8 0c eb 0b 00                                  call   0x4d1a40
  00412f34: 8d 8b 64 01 00 00                               lea    ecx,[ebx+0x164]
  00412f3a: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00412f3e: e8 fd ea 0b 00                                  call   0x4d1a40
  00412f43: 8d 8b 60 01 00 00                               lea    ecx,[ebx+0x160]
  00412f49: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00412f4d: e8 ee ea 0b 00                                  call   0x4d1a40
  00412f52: 8d 8b 5c 01 00 00                               lea    ecx,[ebx+0x15c]
  00412f58: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00412f5c: e8 df ea 0b 00                                  call   0x4d1a40
  00412f61: 8d 8b 58 01 00 00                               lea    ecx,[ebx+0x158]
  00412f67: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00412f6b: e8 d0 ea 0b 00                                  call   0x4d1a40
  00412f70: 8b cb                                           mov    ecx,ebx
  00412f72: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00412f79: e8 f2 7c 07 00                                  call   0x48ac70
  00412f7e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00412f81: 5f                                              pop    edi
  00412f82: 5e                                              pop    esi
  00412f83: 5b                                              pop    ebx
  00412f84: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00412f8b: 8b e5                                           mov    esp,ebp
  00412f8d: 5d                                              pop    ebp
  00412f8e: c3                                              ret

; ===== 0x00412F90 ?SetPlayer@Character@@QAEXPAVPlayers@@@Z =====
  00412f90: 55                                              push   ebp
  00412f91: 8b ec                                           mov    ebp,esp
  00412f93: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00412f96: 89 81 78 01 00 00                               mov    DWORD PTR [ecx+0x178],eax
  00412f9c: 5d                                              pop    ebp
  00412f9d: c2 04 00                                        ret    0x4

; ===== 0x00412FA0 ?GetODBC@Character@@SAPAVcODBCMage@@XZ =====
  00412fa0: b8 78 16 51 00                                  mov    eax,0x511678
  00412fa5: c3                                              ret

; ===== 0x004133B0 ?DestroyODBC@Character@@SAXXZ =====
  004133b0: b9 78 16 51 00                                  mov    ecx,0x511678
  004133b5: e8 b6 b8 03 00                                  call   0x44ec70
  004133ba: b9 78 18 51 00                                  mov    ecx,0x511878
  004133bf: e9 ac b8 03 00                                  jmp    0x44ec70

; ===== 0x00413460 ?InitXPchart@Character@@SAXXZ =====
  00413460: 55                                              push   ebp
  00413461: 8b ec                                           mov    ebp,esp
  00413463: 83 ec 08                                        sub    esp,0x8
  00413466: 53                                              push   ebx
  00413467: 56                                              push   esi
  00413468: 57                                              push   edi
  00413469: 68 30 24 41 00                                  push   0x412430
  0041346e: e8 fd 41 ff ff                                  call   0x407670
  00413473: 83 c4 04                                        add    esp,0x4
  00413476: e8 b5 ef ff ff                                  call   0x412430
  0041347b: 33 f6                                           xor    esi,esi
  0041347d: bf 0a 00 00 00                                  mov    edi,0xa
  00413482: 89 35 18 1b 51 00                               mov    DWORD PTR ds:0x511b18,esi
  00413488: 89 35 1c 1b 51 00                               mov    DWORD PTR ds:0x511b1c,esi
  0041348e: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00413495: bb 20 1b 51 00                                  mov    ebx,0x511b20
  0041349a: 81 fb 60 1c 51 00                               cmp    ebx,0x511c60
  004134a0: 7f 28                                           jg     0x4134ca
  004134a2: db 45 fc                                        fild   DWORD PTR [ebp-0x4]
  004134a5: dd 05 80 e8 4d 00                               fld    QWORD PTR ds:0x4de880
  004134ab: e8 d0 e8 0b 00                                  call   0x4d1d80
  004134b0: 8d 86 e8 03 00 00                               lea    eax,[esi+0x3e8]
  004134b6: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004134b9: db 45 f8                                        fild   DWORD PTR [ebp-0x8]
  004134bc: de c9                                           fmulp  st(1),st
  004134be: e8 b7 e8 0b 00                                  call   0x4d1d7a
  004134c3: 03 f7                                           add    esi,edi
  004134c5: e9 50 01 00 00                                  jmp    0x41361a
  004134ca: 81 fb a0 1d 51 00                               cmp    ebx,0x511da0
  004134d0: 7f 29                                           jg     0x4134fb
  004134d2: db 45 fc                                        fild   DWORD PTR [ebp-0x4]
  004134d5: dd 05 80 e8 4d 00                               fld    QWORD PTR ds:0x4de880
  004134db: e8 a0 e8 0b 00                                  call   0x4d1d80
  004134e0: 8d 8e e8 03 00 00                               lea    ecx,[esi+0x3e8]
  004134e6: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004134e9: db 45 f8                                        fild   DWORD PTR [ebp-0x8]
  004134ec: de c9                                           fmulp  st(1),st
  004134ee: e8 87 e8 0b 00                                  call   0x4d1d7a
  004134f3: 03 f7                                           add    esi,edi
  004134f5: 47                                              inc    edi
  004134f6: e9 1f 01 00 00                                  jmp    0x41361a
  004134fb: 81 fb e0 1e 51 00                               cmp    ebx,0x511ee0
  00413501: 7f 2b                                           jg     0x41352e
  00413503: db 45 fc                                        fild   DWORD PTR [ebp-0x4]
  00413506: dd 05 80 e8 4d 00                               fld    QWORD PTR ds:0x4de880
  0041350c: e8 6f e8 0b 00                                  call   0x4d1d80
  00413511: 8d 96 e8 03 00 00                               lea    edx,[esi+0x3e8]
  00413517: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  0041351a: db 45 f8                                        fild   DWORD PTR [ebp-0x8]
  0041351d: de c9                                           fmulp  st(1),st
  0041351f: e8 56 e8 0b 00                                  call   0x4d1d7a
  00413524: 03 f7                                           add    esi,edi
  00413526: 83 c7 04                                        add    edi,0x4
  00413529: e9 ec 00 00 00                                  jmp    0x41361a
  0041352e: 81 fb 80 1f 51 00                               cmp    ebx,0x511f80
  00413534: 7f 2b                                           jg     0x413561
  00413536: db 45 fc                                        fild   DWORD PTR [ebp-0x4]
  00413539: dd 05 80 e8 4d 00                               fld    QWORD PTR ds:0x4de880
  0041353f: e8 3c e8 0b 00                                  call   0x4d1d80
  00413544: 8d 86 e8 03 00 00                               lea    eax,[esi+0x3e8]
  0041354a: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0041354d: db 45 f8                                        fild   DWORD PTR [ebp-0x8]
  00413550: de c9                                           fmulp  st(1),st
  00413552: e8 23 e8 0b 00                                  call   0x4d1d7a
  00413557: 03 f7                                           add    esi,edi
  00413559: 83 c7 10                                        add    edi,0x10
  0041355c: e9 b9 00 00 00                                  jmp    0x41361a
  00413561: 81 fb 20 20 51 00                               cmp    ebx,0x512020
  00413567: 7f 2b                                           jg     0x413594
  00413569: db 45 fc                                        fild   DWORD PTR [ebp-0x4]
  0041356c: dd 05 80 e8 4d 00                               fld    QWORD PTR ds:0x4de880
  00413572: e8 09 e8 0b 00                                  call   0x4d1d80
  00413577: 8d 8e e8 03 00 00                               lea    ecx,[esi+0x3e8]
  0041357d: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  00413580: db 45 f8                                        fild   DWORD PTR [ebp-0x8]
  00413583: de c9                                           fmulp  st(1),st
  00413585: e8 f0 e7 0b 00                                  call   0x4d1d7a
  0041358a: 03 f7                                           add    esi,edi
  0041358c: 83 c7 40                                        add    edi,0x40
  0041358f: e9 86 00 00 00                                  jmp    0x41361a
  00413594: 81 fb c0 20 51 00                               cmp    ebx,0x5120c0
  0041359a: 7f 2b                                           jg     0x4135c7
  0041359c: db 45 fc                                        fild   DWORD PTR [ebp-0x4]
  0041359f: dd 05 80 e8 4d 00                               fld    QWORD PTR ds:0x4de880
  004135a5: e8 d6 e7 0b 00                                  call   0x4d1d80
  004135aa: 8d 96 e8 03 00 00                               lea    edx,[esi+0x3e8]
  004135b0: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004135b3: db 45 f8                                        fild   DWORD PTR [ebp-0x8]
  004135b6: de c9                                           fmulp  st(1),st
  004135b8: e8 bd e7 0b 00                                  call   0x4d1d7a
  004135bd: 03 f7                                           add    esi,edi
  004135bf: 81 c7 00 01 00 00                               add    edi,0x100
  004135c5: eb 53                                           jmp    0x41361a
  004135c7: 81 fb 10 21 51 00                               cmp    ebx,0x512110
  004135cd: db 45 fc                                        fild   DWORD PTR [ebp-0x4]
  004135d0: dd 05 80 e8 4d 00                               fld    QWORD PTR ds:0x4de880
  004135d6: 7f 22                                           jg     0x4135fa
  004135d8: e8 a3 e7 0b 00                                  call   0x4d1d80
  004135dd: 8d 86 e8 03 00 00                               lea    eax,[esi+0x3e8]
  004135e3: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004135e6: db 45 f8                                        fild   DWORD PTR [ebp-0x8]
  004135e9: de c9                                           fmulp  st(1),st
  004135eb: e8 8a e7 0b 00                                  call   0x4d1d7a
  004135f0: 03 f7                                           add    esi,edi
  004135f2: 81 c7 00 04 00 00                               add    edi,0x400
  004135f8: eb 20                                           jmp    0x41361a
  004135fa: e8 81 e7 0b 00                                  call   0x4d1d80
  004135ff: 8d 8e e8 03 00 00                               lea    ecx,[esi+0x3e8]
  00413605: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  00413608: db 45 f8                                        fild   DWORD PTR [ebp-0x8]
  0041360b: de c9                                           fmulp  st(1),st
  0041360d: e8 68 e7 0b 00                                  call   0x4d1d7a
  00413612: 03 f7                                           add    esi,edi
  00413614: 81 c7 00 10 00 00                               add    edi,0x1000
  0041361a: 89 03                                           mov    DWORD PTR [ebx],eax
  0041361c: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0041361f: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  00413622: 42                                              inc    edx
  00413623: 83 c3 08                                        add    ebx,0x8
  00413626: 81 fb 58 21 51 00                               cmp    ebx,0x512158
  0041362c: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0041362f: 0f 8c 65 fe ff ff                               jl     0x41349a
  00413635: 5f                                              pop    edi
  00413636: 5e                                              pop    esi
  00413637: 5b                                              pop    ebx
  00413638: 8b e5                                           mov    esp,ebp
  0041363a: 5d                                              pop    ebp
  0041363b: c3                                              ret

; ===== 0x00413640 ?roll_stats@Character@@QAEHXZ =====
  00413640: 55                                              push   ebp
  00413641: 8b ec                                           mov    ebp,esp
  00413643: 83 ec 10                                        sub    esp,0x10
  00413646: 53                                              push   ebx
  00413647: 56                                              push   esi
  00413648: 8b f1                                           mov    esi,ecx
  0041364a: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041364c: 57                                              push   edi
  0041364d: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  00413653: 66 3d 02 00                                     cmp    ax,0x2
  00413657: 0f 83 d1 02 00 00                               jae    0x41392e
  0041365d: a1 40 e6 4d 00                                  mov    eax,ds:0x4de640
  00413662: 8b 0d 44 e6 4d 00                               mov    ecx,DWORD PTR ds:0x4de644
  00413668: 8b 15 48 e6 4d 00                               mov    edx,DWORD PTR ds:0x4de648
  0041366e: 8b 3e                                           mov    edi,DWORD PTR [esi]
  00413670: 83 ec 0c                                        sub    esp,0xc
  00413673: 8b dc                                           mov    ebx,esp
  00413675: 89 03                                           mov    DWORD PTR [ebx],eax
  00413677: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  0041367a: 8b ce                                           mov    ecx,esi
  0041367c: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0041367f: ff 57 20                                        call   DWORD PTR [edi+0x20]
  00413682: 8b 16                                           mov    edx,DWORD PTR [esi]
  00413684: 8b ce                                           mov    ecx,esi
  00413686: ff 52 14                                        call   DWORD PTR [edx+0x14]
  00413689: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041368b: 6a 00                                           push   0x0
  0041368d: 6a 00                                           push   0x0
  0041368f: 8b ce                                           mov    ecx,esi
  00413691: ff 50 50                                        call   DWORD PTR [eax+0x50]
  00413694: 6a 04                                           push   0x4
  00413696: 6a 00                                           push   0x0
  00413698: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041369d: e8 fe 59 04 00                                  call   0x4590a0
  004136a2: 33 c9                                           xor    ecx,ecx
  004136a4: 8a 8e 20 04 00 00                               mov    cl,BYTE PTR [esi+0x420]
  004136aa: 83 e1 0f                                        and    ecx,0xf
  004136ad: 8d 54 08 06                                     lea    edx,[eax+ecx*1+0x6]
  004136b1: 52                                              push   edx
  004136b2: 8b ce                                           mov    ecx,esi
  004136b4: e8 07 ac 07 00                                  call   0x48e2c0
  004136b9: 6a 04                                           push   0x4
  004136bb: 6a 00                                           push   0x0
  004136bd: b9 34 5e 51 00                                  mov    ecx,0x515e34
  004136c2: e8 d9 59 04 00                                  call   0x4590a0
  004136c7: 8b 8e 20 04 00 00                               mov    ecx,DWORD PTR [esi+0x420]
  004136cd: c1 e9 0c                                        shr    ecx,0xc
  004136d0: 83 e1 0f                                        and    ecx,0xf
  004136d3: 8d 54 08 06                                     lea    edx,[eax+ecx*1+0x6]
  004136d7: 52                                              push   edx
  004136d8: 8b ce                                           mov    ecx,esi
  004136da: e8 f1 ab 07 00                                  call   0x48e2d0
  004136df: 6a 04                                           push   0x4
  004136e1: 6a 00                                           push   0x0
  004136e3: b9 34 5e 51 00                                  mov    ecx,0x515e34
  004136e8: e8 b3 59 04 00                                  call   0x4590a0
  004136ed: 8b 8e 20 04 00 00                               mov    ecx,DWORD PTR [esi+0x420]
  004136f3: c1 e9 04                                        shr    ecx,0x4
  004136f6: 83 e1 0f                                        and    ecx,0xf
  004136f9: 8d 54 08 06                                     lea    edx,[eax+ecx*1+0x6]
  004136fd: 52                                              push   edx
  004136fe: 8b ce                                           mov    ecx,esi
  00413700: e8 ab ab 07 00                                  call   0x48e2b0
  00413705: 6a 04                                           push   0x4
  00413707: 6a 00                                           push   0x0
  00413709: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041370e: e8 8d 59 04 00                                  call   0x4590a0
  00413713: 8b 8e 20 04 00 00                               mov    ecx,DWORD PTR [esi+0x420]
  00413719: c1 e9 08                                        shr    ecx,0x8
  0041371c: 83 e1 0f                                        and    ecx,0xf
  0041371f: 8d 54 08 06                                     lea    edx,[eax+ecx*1+0x6]
  00413723: 52                                              push   edx
  00413724: 8b ce                                           mov    ecx,esi
  00413726: e8 75 ab 07 00                                  call   0x48e2a0
  0041372b: 6a 04                                           push   0x4
  0041372d: 6a 00                                           push   0x0
  0041372f: b9 34 5e 51 00                                  mov    ecx,0x515e34
  00413734: e8 67 59 04 00                                  call   0x4590a0
  00413739: 8b 8e 20 04 00 00                               mov    ecx,DWORD PTR [esi+0x420]
  0041373f: c1 e9 14                                        shr    ecx,0x14
  00413742: 83 e1 0f                                        and    ecx,0xf
  00413745: 8d 54 08 06                                     lea    edx,[eax+ecx*1+0x6]
  00413749: 52                                              push   edx
  0041374a: 8b ce                                           mov    ecx,esi
  0041374c: e8 8f ab 07 00                                  call   0x48e2e0
  00413751: 8b ce                                           mov    ecx,esi
  00413753: e8 f8 a9 07 00                                  call   0x48e150
  00413758: 66 3d 16 00                                     cmp    ax,0x16
  0041375c: 76 07                                           jbe    0x413765
  0041375e: b8 16 00 00 00                                  mov    eax,0x16
  00413763: eb 0c                                           jmp    0x413771
  00413765: 8b ce                                           mov    ecx,esi
  00413767: e8 e4 a9 07 00                                  call   0x48e150
  0041376c: 25 ff ff 00 00                                  and    eax,0xffff
  00413771: 50                                              push   eax
  00413772: 8b ce                                           mov    ecx,esi
  00413774: e8 47 ab 07 00                                  call   0x48e2c0
  00413779: 8b ce                                           mov    ecx,esi
  0041377b: e8 30 aa 07 00                                  call   0x48e1b0
  00413780: 66 3d 16 00                                     cmp    ax,0x16
  00413784: 76 07                                           jbe    0x41378d
  00413786: b8 16 00 00 00                                  mov    eax,0x16
  0041378b: eb 0c                                           jmp    0x413799
  0041378d: 8b ce                                           mov    ecx,esi
  0041378f: e8 1c aa 07 00                                  call   0x48e1b0
  00413794: 25 ff ff 00 00                                  and    eax,0xffff
  00413799: 50                                              push   eax
  0041379a: 8b ce                                           mov    ecx,esi
  0041379c: e8 2f ab 07 00                                  call   0x48e2d0
  004137a1: 8b ce                                           mov    ecx,esi
  004137a3: e8 e8 a9 07 00                                  call   0x48e190
  004137a8: 66 3d 16 00                                     cmp    ax,0x16
  004137ac: 76 07                                           jbe    0x4137b5
  004137ae: b8 16 00 00 00                                  mov    eax,0x16
  004137b3: eb 0c                                           jmp    0x4137c1
  004137b5: 8b ce                                           mov    ecx,esi
  004137b7: e8 d4 a9 07 00                                  call   0x48e190
  004137bc: 25 ff ff 00 00                                  and    eax,0xffff
  004137c1: 50                                              push   eax
  004137c2: 8b ce                                           mov    ecx,esi
  004137c4: e8 e7 aa 07 00                                  call   0x48e2b0
  004137c9: 8b ce                                           mov    ecx,esi
  004137cb: e8 a0 a9 07 00                                  call   0x48e170
  004137d0: 66 3d 16 00                                     cmp    ax,0x16
  004137d4: 76 07                                           jbe    0x4137dd
  004137d6: b8 16 00 00 00                                  mov    eax,0x16
  004137db: eb 0c                                           jmp    0x4137e9
  004137dd: 8b ce                                           mov    ecx,esi
  004137df: e8 8c a9 07 00                                  call   0x48e170
  004137e4: 25 ff ff 00 00                                  and    eax,0xffff
  004137e9: 50                                              push   eax
  004137ea: 8b ce                                           mov    ecx,esi
  004137ec: e8 af aa 07 00                                  call   0x48e2a0
  004137f1: 8b ce                                           mov    ecx,esi
  004137f3: e8 d8 a9 07 00                                  call   0x48e1d0
  004137f8: 66 3d 16 00                                     cmp    ax,0x16
  004137fc: 76 07                                           jbe    0x413805
  004137fe: b8 16 00 00 00                                  mov    eax,0x16
  00413803: eb 0c                                           jmp    0x413811
  00413805: 8b ce                                           mov    ecx,esi
  00413807: e8 c4 a9 07 00                                  call   0x48e1d0
  0041380c: 25 ff ff 00 00                                  and    eax,0xffff
  00413811: 50                                              push   eax
  00413812: 8b ce                                           mov    ecx,esi
  00413814: e8 c7 aa 07 00                                  call   0x48e2e0
  00413819: 6a 0f                                           push   0xf
  0041381b: 8b ce                                           mov    ecx,esi
  0041381d: e8 ce aa 07 00                                  call   0x48e2f0
  00413822: 6a 0f                                           push   0xf
  00413824: 8b ce                                           mov    ecx,esi
  00413826: e8 d5 aa 07 00                                  call   0x48e300
  0041382b: 8b 3e                                           mov    edi,DWORD PTR [esi]
  0041382d: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00413830: 50                                              push   eax
  00413831: b9 34 5e 51 00                                  mov    ecx,0x515e34
  00413836: c7 45 f0 02 00 00 00                            mov    DWORD PTR [ebp-0x10],0x2
  0041383d: c7 45 f4 05 00 00 00                            mov    DWORD PTR [ebp-0xc],0x5
  00413844: c7 45 f8 00 00 00 00                            mov    DWORD PTR [ebp-0x8],0x0
  0041384b: e8 d0 58 04 00                                  call   0x459120
  00413850: 8b ce                                           mov    ecx,esi
  00413852: 8b d8                                           mov    ebx,eax
  00413854: e8 37 a9 07 00                                  call   0x48e190
  00413859: 25 ff ff 00 00                                  and    eax,0xffff
  0041385e: 8d 4c 03 30                                     lea    ecx,[ebx+eax*1+0x30]
  00413862: 51                                              push   ecx
  00413863: 8b ce                                           mov    ecx,esi
  00413865: ff 97 d4 00 00 00                               call   DWORD PTR [edi+0xd4]
  0041386b: 8b 3e                                           mov    edi,DWORD PTR [esi]
  0041386d: 6a 00                                           push   0x0
  0041386f: 8b ce                                           mov    ecx,esi
  00413871: ff 97 cc 00 00 00                               call   DWORD PTR [edi+0xcc]
  00413877: 50                                              push   eax
  00413878: 8b ce                                           mov    ecx,esi
  0041387a: ff 97 dc 00 00 00                               call   DWORD PTR [edi+0xdc]
  00413880: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00413882: 8b ce                                           mov    ecx,esi
  00413884: e8 a7 a9 07 00                                  call   0x48e230
  00413889: 33 c9                                           xor    ecx,ecx
  0041388b: 66 8b c8                                        mov    cx,ax
  0041388e: b8 56 55 55 55                                  mov    eax,0x55555556
  00413893: 81 e1 ff ff 00 00                               and    ecx,0xffff
  00413899: d1 e1                                           shl    ecx,1
  0041389b: f7 e9                                           imul   ecx
  0041389d: 8b fa                                           mov    edi,edx
  0041389f: c1 ea 1f                                        shr    edx,0x1f
  004138a2: 8b ce                                           mov    ecx,esi
  004138a4: 03 fa                                           add    edi,edx
  004138a6: e8 c5 a9 07 00                                  call   0x48e270
  004138ab: 33 c9                                           xor    ecx,ecx
  004138ad: 66 8b c8                                        mov    cx,ax
  004138b0: b8 56 55 55 55                                  mov    eax,0x55555556
  004138b5: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004138b8: 6a 05                                           push   0x5
  004138ba: 6a 00                                           push   0x0
  004138bc: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004138c2: f7 e9                                           imul   ecx
  004138c4: 8b da                                           mov    ebx,edx
  004138c6: 03 d7                                           add    edx,edi
  004138c8: c1 eb 1f                                        shr    ebx,0x1f
  004138cb: b9 34 5e 51 00                                  mov    ecx,0x515e34
  004138d0: 03 da                                           add    ebx,edx
  004138d2: e8 c9 57 04 00                                  call   0x4590a0
  004138d7: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004138da: 8d 44 03 0a                                     lea    eax,[ebx+eax*1+0xa]
  004138de: 50                                              push   eax
  004138df: 8b ce                                           mov    ecx,esi
  004138e1: ff 92 e8 00 00 00                               call   DWORD PTR [edx+0xe8]
  004138e7: 8b 3e                                           mov    edi,DWORD PTR [esi]
  004138e9: 6a 01                                           push   0x1
  004138eb: 8b ce                                           mov    ecx,esi
  004138ed: ff 97 e0 00 00 00                               call   DWORD PTR [edi+0xe0]
  004138f3: 8b ce                                           mov    ecx,esi
  004138f5: 50                                              push   eax
  004138f6: ff 97 f0 00 00 00                               call   DWORD PTR [edi+0xf0]
  004138fc: 6a 00                                           push   0x0
  004138fe: 6a 00                                           push   0x0
  00413900: 6a 00                                           push   0x0
  00413902: 6a 00                                           push   0x0
  00413904: 6a 00                                           push   0x0
  00413906: 6a 00                                           push   0x0
  00413908: 6a 00                                           push   0x0
  0041390a: 6a 00                                           push   0x0
  0041390c: 56                                              push   esi
  0041390d: b9 a8 1a 51 00                                  mov    ecx,0x511aa8
  00413912: e8 39 8a ff ff                                  call   0x40c350
  00413917: e8 5e e4 0b 00                                  call   0x4d1d7a
  0041391c: 89 86 98 01 00 00                               mov    DWORD PTR [esi+0x198],eax
  00413922: b8 01 00 00 00                                  mov    eax,0x1
  00413927: 5f                                              pop    edi
  00413928: 5e                                              pop    esi
  00413929: 5b                                              pop    ebx
  0041392a: 8b e5                                           mov    esp,ebp
  0041392c: 5d                                              pop    ebp
  0041392d: c3                                              ret
  0041392e: 5f                                              pop    edi
  0041392f: 5e                                              pop    esi
  00413930: 33 c0                                           xor    eax,eax
  00413932: 5b                                              pop    ebx
  00413933: 8b e5                                           mov    esp,ebp
  00413935: 5d                                              pop    ebp
  00413936: c3                                              ret

; ===== 0x00413940 ?IsNameValid@Character@@SA_NAAVCString@@@Z =====
  00413940: 55                                              push   ebp
  00413941: 8b ec                                           mov    ebp,esp
  00413943: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00413949: 6a ff                                           push   0xffffffff
  0041394b: 68 18 3a 4d 00                                  push   0x4d3a18
  00413950: 50                                              push   eax
  00413951: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00413958: 53                                              push   ebx
  00413959: 56                                              push   esi
  0041395a: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0041395d: 8b ce                                           mov    ecx,esi
  0041395f: e8 18 e1 0b 00                                  call   0x4d1a7c
  00413964: 8b ce                                           mov    ecx,esi
  00413966: e8 17 e1 0b 00                                  call   0x4d1a82
  0041396b: 68 18 12 50 00                                  push   0x501218
  00413970: 8d 45 08                                        lea    eax,[ebp+0x8]
  00413973: 50                                              push   eax
  00413974: 8b ce                                           mov    ecx,esi
  00413976: e8 1f e1 0b 00                                  call   0x4d1a9a
  0041397b: 8b 36                                           mov    esi,DWORD PTR [esi]
  0041397d: 8b 46 f8                                        mov    eax,DWORD PTR [esi-0x8]
  00413980: 83 f8 01                                        cmp    eax,0x1
  00413983: 7e 55                                           jle    0x4139da
  00413985: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00413988: 8a 10                                           mov    dl,BYTE PTR [eax]
  0041398a: 8a 1e                                           mov    bl,BYTE PTR [esi]
  0041398c: 8a ca                                           mov    cl,dl
  0041398e: 3a d3                                           cmp    dl,bl
  00413990: 75 1e                                           jne    0x4139b0
  00413992: 84 c9                                           test   cl,cl
  00413994: 74 16                                           je     0x4139ac
  00413996: 8a 50 01                                        mov    dl,BYTE PTR [eax+0x1]
  00413999: 8a 5e 01                                        mov    bl,BYTE PTR [esi+0x1]
  0041399c: 8a ca                                           mov    cl,dl
  0041399e: 3a d3                                           cmp    dl,bl
  004139a0: 75 0e                                           jne    0x4139b0
  004139a2: 83 c0 02                                        add    eax,0x2
  004139a5: 83 c6 02                                        add    esi,0x2
  004139a8: 84 c9                                           test   cl,cl
  004139aa: 75 dc                                           jne    0x413988
  004139ac: 33 c0                                           xor    eax,eax
  004139ae: eb 05                                           jmp    0x4139b5
  004139b0: 1b c0                                           sbb    eax,eax
  004139b2: 83 d8 ff                                        sbb    eax,0xffffffff
  004139b5: 85 c0                                           test   eax,eax
  004139b7: 75 21                                           jne    0x4139da
  004139b9: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004139bc: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004139c3: e8 78 e0 0b 00                                  call   0x4d1a40
  004139c8: b0 01                                           mov    al,0x1
  004139ca: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004139cd: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004139d4: 5e                                              pop    esi
  004139d5: 5b                                              pop    ebx
  004139d6: 8b e5                                           mov    esp,ebp
  004139d8: 5d                                              pop    ebp
  004139d9: c3                                              ret
  004139da: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004139dd: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004139e4: e8 57 e0 0b 00                                  call   0x4d1a40
  004139e9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004139ec: 5e                                              pop    esi
  004139ed: 32 c0                                           xor    al,al
  004139ef: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004139f6: 5b                                              pop    ebx
  004139f7: 8b e5                                           mov    esp,ebp
  004139f9: 5d                                              pop    ebp
  004139fa: c3                                              ret

; ===== 0x00413A00 ?load_character@Character@@QAEDVCString@@0PAE@Z =====
  00413a00: 55                                              push   ebp
  00413a01: 8b ec                                           mov    ebp,esp
  00413a03: 6a ff                                           push   0xffffffff
  00413a05: 68 50 3a 4d 00                                  push   0x4d3a50
  00413a0a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00413a10: 50                                              push   eax
  00413a11: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00413a18: 83 ec 14                                        sub    esp,0x14
  00413a1b: 53                                              push   ebx
  00413a1c: 56                                              push   esi
  00413a1d: 57                                              push   edi
  00413a1e: 8b f1                                           mov    esi,ecx
  00413a20: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00413a27: e8 24 95 00 00                                  call   0x41cf50
  00413a2c: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00413a2f: e8 2a e0 0b 00                                  call   0x4d1a5e
  00413a34: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00413a37: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00413a3b: e8 6c e0 0b 00                                  call   0x4d1aac
  00413a40: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00413a43: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00413a47: e8 36 e0 0b 00                                  call   0x4d1a82
  00413a4c: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00413a4f: e8 28 e0 0b 00                                  call   0x4d1a7c
  00413a54: 8d 45 08                                        lea    eax,[ebp+0x8]
  00413a57: 50                                              push   eax
  00413a58: e8 e3 fe ff ff                                  call   0x413940
  00413a5d: 83 c4 04                                        add    esp,0x4
  00413a60: 84 c0                                           test   al,al
  00413a62: 0f 84 da 01 00 00                               je     0x413c42
  00413a68: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00413a6b: 85 db                                           test   ebx,ebx
  00413a6d: 0f 84 f4 00 00 00                               je     0x413b67
  00413a73: 8b be 78 01 00 00                               mov    edi,DWORD PTR [esi+0x178]
  00413a79: 85 ff                                           test   edi,edi
  00413a7b: 0f 84 9e 00 00 00                               je     0x413b1f
  00413a81: 8b cf                                           mov    ecx,edi
  00413a83: e8 68 10 04 00                                  call   0x454af0
  00413a88: 83 f8 03                                        cmp    eax,0x3
  00413a8b: 72 48                                           jb     0x413ad5
  00413a8d: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00413a90: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00413a94: e8 0d e0 0b 00                                  call   0x4d1aa6
  00413a99: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00413a9c: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00413aa0: e8 9b df 0b 00                                  call   0x4d1a40
  00413aa5: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00413aa8: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00413aac: e8 8f df 0b 00                                  call   0x4d1a40
  00413ab1: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00413ab4: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00413abb: e8 80 df 0b 00                                  call   0x4d1a40
  00413ac0: b0 04                                           mov    al,0x4
  00413ac2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00413ac5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00413acc: 5f                                              pop    edi
  00413acd: 5e                                              pop    esi
  00413ace: 5b                                              pop    ebx
  00413acf: 8b e5                                           mov    esp,ebp
  00413ad1: 5d                                              pop    ebp
  00413ad2: c2 0c 00                                        ret    0xc
  00413ad5: 53                                              push   ebx
  00413ad6: 51                                              push   ecx
  00413ad7: 8d 55 08                                        lea    edx,[ebp+0x8]
  00413ada: 8b cc                                           mov    ecx,esp
  00413adc: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00413adf: 52                                              push   edx
  00413ae0: e8 67 df 0b 00                                  call   0x4d1a4c
  00413ae5: 8b ce                                           mov    ecx,esi
  00413ae7: e8 24 21 00 00                                  call   0x415c10
  00413aec: 85 c0                                           test   eax,eax
  00413aee: 74 2f                                           je     0x413b1f
  00413af0: 6a 01                                           push   0x1
  00413af2: 6a 00                                           push   0x0
  00413af4: 51                                              push   ecx
  00413af5: 8d 45 08                                        lea    eax,[ebp+0x8]
  00413af8: 8b cc                                           mov    ecx,esp
  00413afa: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00413afd: 50                                              push   eax
  00413afe: e8 49 df 0b 00                                  call   0x4d1a4c
  00413b03: 8b cf                                           mov    ecx,edi
  00413b05: e8 e6 2e 04 00                                  call   0x4569f0
  00413b0a: 6a 00                                           push   0x0
  00413b0c: 8b cf                                           mov    ecx,edi
  00413b0e: e8 ed 0f 04 00                                  call   0x454b00
  00413b13: c7 47 50 01 00 00 00                            mov    DWORD PTR [edi+0x50],0x1
  00413b1a: e9 db 00 00 00                                  jmp    0x413bfa
  00413b1f: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00413b22: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00413b26: e8 7b df 0b 00                                  call   0x4d1aa6
  00413b2b: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00413b2e: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00413b32: e8 09 df 0b 00                                  call   0x4d1a40
  00413b37: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00413b3a: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00413b3e: e8 fd de 0b 00                                  call   0x4d1a40
  00413b43: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00413b46: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00413b4d: e8 ee de 0b 00                                  call   0x4d1a40
  00413b52: b0 05                                           mov    al,0x5
  00413b54: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00413b57: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00413b5e: 5f                                              pop    edi
  00413b5f: 5e                                              pop    esi
  00413b60: 5b                                              pop    ebx
  00413b61: 8b e5                                           mov    esp,ebp
  00413b63: 5d                                              pop    ebp
  00413b64: c2 0c 00                                        ret    0xc
  00413b67: 51                                              push   ecx
  00413b68: 8d 55 08                                        lea    edx,[ebp+0x8]
  00413b6b: 8b cc                                           mov    ecx,esp
  00413b6d: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00413b70: 52                                              push   edx
  00413b71: e8 d6 de 0b 00                                  call   0x4d1a4c
  00413b76: 8b 06                                           mov    eax,DWORD PTR [esi]
  00413b78: 8b ce                                           mov    ecx,esi
  00413b7a: ff 50 4c                                        call   DWORD PTR [eax+0x4c]
  00413b7d: 51                                              push   ecx
  00413b7e: 8d 55 08                                        lea    edx,[ebp+0x8]
  00413b81: 8b cc                                           mov    ecx,esp
  00413b83: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00413b86: 52                                              push   edx
  00413b87: e8 c0 de 0b 00                                  call   0x4d1a4c
  00413b8c: 8b ce                                           mov    ecx,esi
  00413b8e: e8 dd 0f 00 00                                  call   0x414b70
  00413b93: 8b d8                                           mov    ebx,eax
  00413b95: 85 db                                           test   ebx,ebx
  00413b97: 74 48                                           je     0x413be1
  00413b99: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00413b9c: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00413ba0: e8 01 df 0b 00                                  call   0x4d1aa6
  00413ba5: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00413ba8: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00413bac: e8 8f de 0b 00                                  call   0x4d1a40
  00413bb1: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00413bb4: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00413bb8: e8 83 de 0b 00                                  call   0x4d1a40
  00413bbd: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00413bc0: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00413bc7: e8 74 de 0b 00                                  call   0x4d1a40
  00413bcc: 8a c3                                           mov    al,bl
  00413bce: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00413bd1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00413bd8: 5f                                              pop    edi
  00413bd9: 5e                                              pop    esi
  00413bda: 5b                                              pop    ebx
  00413bdb: 8b e5                                           mov    esp,ebp
  00413bdd: 5d                                              pop    ebp
  00413bde: c2 0c 00                                        ret    0xc
  00413be1: 8b 8e 78 01 00 00                               mov    ecx,DWORD PTR [esi+0x178]
  00413be7: 85 c9                                           test   ecx,ecx
  00413be9: 74 05                                           je     0x413bf0
  00413beb: e8 00 48 04 00                                  call   0x4583f0
  00413bf0: c7 86 48 01 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x148],0x1
  00413bfa: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00413bfd: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00413c01: e8 a0 de 0b 00                                  call   0x4d1aa6
  00413c06: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00413c09: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00413c0d: e8 2e de 0b 00                                  call   0x4d1a40
  00413c12: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00413c15: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00413c19: e8 22 de 0b 00                                  call   0x4d1a40
  00413c1e: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00413c21: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00413c28: e8 13 de 0b 00                                  call   0x4d1a40
  00413c2d: 32 c0                                           xor    al,al
  00413c2f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00413c32: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00413c39: 5f                                              pop    edi
  00413c3a: 5e                                              pop    esi
  00413c3b: 5b                                              pop    ebx
  00413c3c: 8b e5                                           mov    esp,ebp
  00413c3e: 5d                                              pop    ebp
  00413c3f: c2 0c 00                                        ret    0xc
  00413c42: 8d 8e 58 01 00 00                               lea    ecx,[esi+0x158]
  00413c48: e8 53 de 0b 00                                  call   0x4d1aa0
  00413c4d: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00413c50: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00413c54: e8 4d de 0b 00                                  call   0x4d1aa6
  00413c59: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00413c5c: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00413c60: e8 db dd 0b 00                                  call   0x4d1a40
  00413c65: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00413c68: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00413c6c: e8 cf dd 0b 00                                  call   0x4d1a40
  00413c71: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00413c74: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00413c7b: e8 c0 dd 0b 00                                  call   0x4d1a40
  00413c80: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00413c83: 5f                                              pop    edi
  00413c84: 5e                                              pop    esi
  00413c85: b0 08                                           mov    al,0x8
  00413c87: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00413c8e: 5b                                              pop    ebx
  00413c8f: 8b e5                                           mov    esp,ebp
  00413c91: 5d                                              pop    ebp
  00413c92: c2 0c 00                                        ret    0xc

; ===== 0x00415C10 ?CreateCharacter@Character@@AAEHVCString@@PAE@Z =====
  00415c10: 55                                              push   ebp
  00415c11: 8b ec                                           mov    ebp,esp
  00415c13: 6a ff                                           push   0xffffffff
  00415c15: 68 0e 3c 4d 00                                  push   0x4d3c0e
  00415c1a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00415c20: 50                                              push   eax
  00415c21: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00415c28: 81 ec 3c 04 00 00                               sub    esp,0x43c
  00415c2e: 53                                              push   ebx
  00415c2f: 56                                              push   esi
  00415c30: 57                                              push   edi
  00415c31: 8b f1                                           mov    esi,ecx
  00415c33: 8b 9e 78 01 00 00                               mov    ebx,DWORD PTR [esi+0x178]
  00415c39: 33 ff                                           xor    edi,edi
  00415c3b: 3b df                                           cmp    ebx,edi
  00415c3d: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00415c40: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00415c43: 0f 84 5a 0c 00 00                               je     0x4168a3
  00415c49: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00415c4c: e8 31 be 0b 00                                  call   0x4d1a82
  00415c51: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00415c54: e8 23 be 0b 00                                  call   0x4d1a7c
  00415c59: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00415c5c: e8 fd bd 0b 00                                  call   0x4d1a5e
  00415c61: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00415c64: 50                                              push   eax
  00415c65: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00415c68: 68 34 1e 50 00                                  push   0x501e34
  00415c6d: 51                                              push   ecx
  00415c6e: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00415c72: e8 1d be 0b 00                                  call   0x4d1a94
  00415c77: 83 c4 0c                                        add    esp,0xc
  00415c7a: b9 78 18 51 00                                  mov    ecx,0x511878
  00415c7f: e8 fc 8c 03 00                                  call   0x44e980
  00415c84: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  00415c87: 57                                              push   edi
  00415c88: 52                                              push   edx
  00415c89: b9 78 18 51 00                                  mov    ecx,0x511878
  00415c8e: e8 ed 90 03 00                                  call   0x44ed80
  00415c93: b9 78 18 51 00                                  mov    ecx,0x511878
  00415c98: e8 c3 90 03 00                                  call   0x44ed60
  00415c9d: 85 c0                                           test   eax,eax
  00415c9f: 0f 85 de 0b 00 00                               jne    0x416883
  00415ca5: b9 78 18 51 00                                  mov    ecx,0x511878
  00415caa: e8 c1 90 03 00                                  call   0x44ed70
  00415caf: 6a 02                                           push   0x2
  00415cb1: e8 5a c0 05 00                                  call   0x471d10
  00415cb6: 83 c4 04                                        add    esp,0x4
  00415cb9: 85 c0                                           test   eax,eax
  00415cbb: 74 3c                                           je     0x415cf9
  00415cbd: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00415cc0: 50                                              push   eax
  00415cc1: 8b cb                                           mov    ecx,ebx
  00415cc3: e8 98 2f 04 00                                  call   0x458c60
  00415cc8: 8b 00                                           mov    eax,DWORD PTR [eax]
  00415cca: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00415ccd: 50                                              push   eax
  00415cce: 51                                              push   ecx
  00415ccf: 68 10 1e 50 00                                  push   0x501e10
  00415cd4: 6a 40                                           push   0x40
  00415cd6: 6a 02                                           push   0x2
  00415cd8: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00415cdc: e8 2f c0 05 00                                  call   0x471d10
  00415ce1: 83 c4 04                                        add    esp,0x4
  00415ce4: 50                                              push   eax
  00415ce5: e8 06 8e 0b 00                                  call   0x4ceaf0
  00415cea: 83 c4 14                                        add    esp,0x14
  00415ced: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00415cf0: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00415cf4: e8 47 bd 0b 00                                  call   0x4d1a40
  00415cf9: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  00415cff: 8b 50 24                                        mov    edx,DWORD PTR [eax+0x24]
  00415d02: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  00415d05: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  00415d08: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  00415d0c: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  00415d12: 39 78 40                                        cmp    DWORD PTR [eax+0x40],edi
  00415d15: 74 0f                                           je     0x415d26
  00415d17: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00415d1a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00415d1c: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  00415d1f: bb 01 00 00 00                                  mov    ebx,0x1
  00415d24: eb 08                                           jmp    0x415d2e
  00415d26: bb 01 00 00 00                                  mov    ebx,0x1
  00415d2b: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  00415d2e: 39 78 20                                        cmp    DWORD PTR [eax+0x20],edi
  00415d31: 0f 84 0d 01 00 00                               je     0x415e44
  00415d37: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  00415d3d: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00415d40: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00415d43: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00415d45: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  00415d4b: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  00415d51: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00415d54: 8b 50 28                                        mov    edx,DWORD PTR [eax+0x28]
  00415d57: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  00415d5a: ff 48 38                                        dec    DWORD PTR [eax+0x38]
  00415d5d: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00415d60: 3b ca                                           cmp    ecx,edx
  00415d62: 74 5e                                           je     0x415dc2
  00415d64: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  00415d67: 74 55                                           je     0x415dbe
  00415d69: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00415d6b: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00415d6e: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00415d71: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00415d74: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00415d77: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00415d79: 89 0a                                           mov    DWORD PTR [edx],ecx
  00415d7b: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  00415d7e: 3b cb                                           cmp    ecx,ebx
  00415d80: 75 1a                                           jne    0x415d9c
  00415d82: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00415d85: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00415d88: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00415d8b: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00415d8e: 50                                              push   eax
  00415d8f: e8 cc c2 02 00                                  call   0x442060
  00415d94: 83 c4 04                                        add    esp,0x4
  00415d97: e9 70 ff ff ff                                  jmp    0x415d0c
  00415d9c: 83 f9 02                                        cmp    ecx,0x2
  00415d9f: 0f 85 8e 00 00 00                               jne    0x415e33
  00415da5: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00415da8: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00415daa: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00415dad: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00415db0: 50                                              push   eax
  00415db1: e8 aa c2 02 00                                  call   0x442060
  00415db6: 83 c4 04                                        add    esp,0x4
  00415db9: e9 4e ff ff ff                                  jmp    0x415d0c
  00415dbe: 3b ca                                           cmp    ecx,edx
  00415dc0: 75 33                                           jne    0x415df5
  00415dc2: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  00415dc5: 74 33                                           je     0x415dfa
  00415dc7: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00415dca: 89 3a                                           mov    DWORD PTR [edx],edi
  00415dcc: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00415dcf: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00415dd2: 89 50 28                                        mov    DWORD PTR [eax+0x28],edx
  00415dd5: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00415dd8: 83 78 40 02                                     cmp    DWORD PTR [eax+0x40],0x2
  00415ddc: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  00415ddf: 75 52                                           jne    0x415e33
  00415de1: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  00415de4: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00415de7: 50                                              push   eax
  00415de8: e8 73 c2 02 00                                  call   0x442060
  00415ded: 83 c4 04                                        add    esp,0x4
  00415df0: e9 17 ff ff ff                                  jmp    0x415d0c
  00415df5: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  00415df8: 75 2d                                           jne    0x415e27
  00415dfa: 3b ca                                           cmp    ecx,edx
  00415dfc: 74 29                                           je     0x415e27
  00415dfe: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00415e00: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00415e03: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00415e06: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00415e08: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00415e0b: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  00415e0e: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  00415e11: 75 20                                           jne    0x415e33
  00415e13: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  00415e16: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00415e19: 50                                              push   eax
  00415e1a: e8 41 c2 02 00                                  call   0x442060
  00415e1f: 83 c4 04                                        add    esp,0x4
  00415e22: e9 e5 fe ff ff                                  jmp    0x415d0c
  00415e27: 89 78 20                                        mov    DWORD PTR [eax+0x20],edi
  00415e2a: 89 78 24                                        mov    DWORD PTR [eax+0x24],edi
  00415e2d: 89 78 28                                        mov    DWORD PTR [eax+0x28],edi
  00415e30: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  00415e33: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00415e36: 50                                              push   eax
  00415e37: e8 24 c2 02 00                                  call   0x442060
  00415e3c: 83 c4 04                                        add    esp,0x4
  00415e3f: e9 c8 fe ff ff                                  jmp    0x415d0c
  00415e44: 39 78 40                                        cmp    DWORD PTR [eax+0x40],edi
  00415e47: 74 04                                           je     0x415e4d
  00415e49: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  00415e4d: 56                                              push   esi
  00415e4e: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  00415e51: e8 7a d5 ff ff                                  call   0x4133d0
  00415e56: 83 c4 04                                        add    esp,0x4
  00415e59: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00415e5c: 51                                              push   ecx
  00415e5d: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00415e60: e8 ab 0f 04 00                                  call   0x456e10
  00415e65: 50                                              push   eax
  00415e66: 8d 95 b8 fb ff ff                               lea    edx,[ebp-0x448]
  00415e6c: 52                                              push   edx
  00415e6d: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00415e71: e8 da ea 03 00                                  call   0x454950
  00415e76: 83 c4 08                                        add    esp,0x8
  00415e79: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00415e7c: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00415e80: e8 bb bb 0b 00                                  call   0x4d1a40
  00415e85: 8b 06                                           mov    eax,DWORD PTR [esi]
  00415e87: 53                                              push   ebx
  00415e88: 8b ce                                           mov    ecx,esi
  00415e8a: ff 90 40 01 00 00                               call   DWORD PTR [eax+0x140]
  00415e90: 51                                              push   ecx
  00415e91: 8d 55 08                                        lea    edx,[ebp+0x8]
  00415e94: 8b cc                                           mov    ecx,esp
  00415e96: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00415e99: 52                                              push   edx
  00415e9a: e8 ad bb 0b 00                                  call   0x4d1a4c
  00415e9f: 8b 06                                           mov    eax,DWORD PTR [esi]
  00415ea1: 8b ce                                           mov    ecx,esi
  00415ea3: ff 50 4c                                        call   DWORD PTR [eax+0x4c]
  00415ea6: 68 20 01 00 00                                  push   0x120
  00415eab: 66 89 9e 84 00 00 00                            mov    WORD PTR [esi+0x84],bx
  00415eb2: 89 be 80 00 00 00                               mov    DWORD PTR [esi+0x80],edi
  00415eb8: e8 33 c1 02 00                                  call   0x441ff0
  00415ebd: 83 c4 04                                        add    esp,0x4
  00415ec0: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00415ec3: 3b c7                                           cmp    eax,edi
  00415ec5: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00415ec9: 74 0b                                           je     0x415ed6
  00415ecb: 8b c8                                           mov    ecx,eax
  00415ecd: e8 ae 5e 03 00                                  call   0x44bd80
  00415ed2: 8b d8                                           mov    ebx,eax
  00415ed4: eb 02                                           jmp    0x415ed8
  00415ed6: 33 db                                           xor    ebx,ebx
  00415ed8: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00415eda: 68 b0 9c 00 00                                  push   0x9cb0
  00415edf: 6a 03                                           push   0x3
  00415ee1: 8b cb                                           mov    ecx,ebx
  00415ee3: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00415ee7: ff 52 18                                        call   DWORD PTR [edx+0x18]
  00415eea: 85 c0                                           test   eax,eax
  00415eec: 0f 84 8f 00 00 00                               je     0x415f81
  00415ef2: 8b be 9c 01 00 00                               mov    edi,DWORD PTR [esi+0x19c]
  00415ef8: 8b cf                                           mov    ecx,edi
  00415efa: e8 31 f5 00 00                                  call   0x425430
  00415eff: 8b 57 38                                        mov    edx,DWORD PTR [edi+0x38]
  00415f02: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00415f05: 42                                              inc    edx
  00415f06: 85 c0                                           test   eax,eax
  00415f08: 89 47 2c                                        mov    DWORD PTR [edi+0x2c],eax
  00415f0b: 89 57 38                                        mov    DWORD PTR [edi+0x38],edx
  00415f0e: 6a 0c                                           push   0xc
  00415f10: 75 30                                           jne    0x415f42
  00415f12: e8 d9 c0 02 00                                  call   0x441ff0
  00415f17: 33 c9                                           xor    ecx,ecx
  00415f19: 83 c4 04                                        add    esp,0x4
  00415f1c: 3b c1                                           cmp    eax,ecx
  00415f1e: 74 07                                           je     0x415f27
  00415f20: 89 08                                           mov    DWORD PTR [eax],ecx
  00415f22: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00415f25: eb 02                                           jmp    0x415f29
  00415f27: 33 c0                                           xor    eax,eax
  00415f29: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00415f2c: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  00415f2f: 89 47 24                                        mov    DWORD PTR [edi+0x24],eax
  00415f32: 89 08                                           mov    DWORD PTR [eax],ecx
  00415f34: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00415f37: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00415f3a: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00415f3d: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00415f40: eb 49                                           jmp    0x415f8b
  00415f42: e8 a9 c0 02 00                                  call   0x441ff0
  00415f47: 83 c4 04                                        add    esp,0x4
  00415f4a: 85 c0                                           test   eax,eax
  00415f4c: 74 0f                                           je     0x415f5d
  00415f4e: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  00415f54: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  00415f5b: eb 02                                           jmp    0x415f5f
  00415f5d: 33 c0                                           xor    eax,eax
  00415f5f: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00415f62: 89 01                                           mov    DWORD PTR [ecx],eax
  00415f64: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  00415f67: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00415f6a: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  00415f6d: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00415f70: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00415f73: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  00415f79: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00415f7c: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00415f7f: eb 0a                                           jmp    0x415f8b
  00415f81: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00415f83: 8b cb                                           mov    ecx,ebx
  00415f85: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  00415f8b: 50                                              push   eax
  00415f8c: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00415f8f: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00415f92: 58                                              pop    eax
  00415f93: e8 68 e2 01 00                                  call   0x434200
  00415f98: 8b 10                                           mov    edx,DWORD PTR [eax]
  00415f9a: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00415f9d: 51                                              push   ecx
  00415f9e: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00415fa1: 68 78 1a 51 00                                  push   0x511a78
  00415fa6: 51                                              push   ecx
  00415fa7: 8b c8                                           mov    ecx,eax
  00415fa9: ff 12                                           call   DWORD PTR [edx]
  00415fab: 68 80 1a 51 00                                  push   0x511a80
  00415fb0: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00415fb6: e8 45 e2 01 00                                  call   0x434200
  00415fbb: 8b 10                                           mov    edx,DWORD PTR [eax]
  00415fbd: 68 7c 1a 51 00                                  push   0x511a7c
  00415fc2: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00415fc5: 51                                              push   ecx
  00415fc6: 8b c8                                           mov    ecx,eax
  00415fc8: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00415fcb: a1 9c 1a 51 00                                  mov    eax,ds:0x511a9c
  00415fd0: 3b 05 a0 1a 51 00                               cmp    eax,DWORD PTR ds:0x511aa0
  00415fd6: 89 45 dc                                        mov    DWORD PTR [ebp-0x24],eax
  00415fd9: 0f 84 2b 01 00 00                               je     0x41610a
  00415fdf: 6a 01                                           push   0x1
  00415fe1: 6a 03                                           push   0x3
  00415fe3: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00415fe6: e8 e5 cb 00 00                                  call   0x422bd0
  00415feb: 8b c8                                           mov    ecx,eax
  00415fed: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  00415ff3: 51                                              push   ecx
  00415ff4: 8b cc                                           mov    ecx,esp
  00415ff6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00415ff9: 50                                              push   eax
  00415ffa: e8 65 ba 0b 00                                  call   0x4d1a64
  00415fff: e8 cc 42 07 00                                  call   0x48a2d0
  00416004: 83 c4 0c                                        add    esp,0xc
  00416007: 8b f8                                           mov    edi,eax
  00416009: 66 85 ff                                        test   di,di
  0041600c: 0f 84 e1 00 00 00                               je     0x4160f3
  00416012: 68 20 01 00 00                                  push   0x120
  00416017: e8 d4 bf 02 00                                  call   0x441ff0
  0041601c: 83 c4 04                                        add    esp,0x4
  0041601f: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00416022: 85 c0                                           test   eax,eax
  00416024: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00416028: 74 0b                                           je     0x416035
  0041602a: 8b c8                                           mov    ecx,eax
  0041602c: e8 4f 5d 03 00                                  call   0x44bd80
  00416031: 8b d8                                           mov    ebx,eax
  00416033: eb 02                                           jmp    0x416037
  00416035: 33 db                                           xor    ebx,ebx
  00416037: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00416039: 81 e7 ff ff 00 00                               and    edi,0xffff
  0041603f: 57                                              push   edi
  00416040: 6a 03                                           push   0x3
  00416042: 8b cb                                           mov    ecx,ebx
  00416044: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00416048: ff 52 18                                        call   DWORD PTR [edx+0x18]
  0041604b: 85 c0                                           test   eax,eax
  0041604d: 0f 84 96 00 00 00                               je     0x4160e9
  00416053: 8b be 9c 01 00 00                               mov    edi,DWORD PTR [esi+0x19c]
  00416059: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  0041605c: 8b 57 38                                        mov    edx,DWORD PTR [edi+0x38]
  0041605f: 42                                              inc    edx
  00416060: 85 c0                                           test   eax,eax
  00416062: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00416065: c7 47 40 00 00 00 00                            mov    DWORD PTR [edi+0x40],0x0
  0041606c: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  00416070: 89 47 2c                                        mov    DWORD PTR [edi+0x2c],eax
  00416073: 89 57 38                                        mov    DWORD PTR [edi+0x38],edx
  00416076: 6a 0c                                           push   0xc
  00416078: 75 30                                           jne    0x4160aa
  0041607a: e8 71 bf 02 00                                  call   0x441ff0
  0041607f: 33 c9                                           xor    ecx,ecx
  00416081: 83 c4 04                                        add    esp,0x4
  00416084: 3b c1                                           cmp    eax,ecx
  00416086: 74 07                                           je     0x41608f
  00416088: 89 08                                           mov    DWORD PTR [eax],ecx
  0041608a: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0041608d: eb 02                                           jmp    0x416091
  0041608f: 33 c0                                           xor    eax,eax
  00416091: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  00416094: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  00416097: 89 47 24                                        mov    DWORD PTR [edi+0x24],eax
  0041609a: 89 08                                           mov    DWORD PTR [eax],ecx
  0041609c: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  0041609f: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004160a2: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  004160a5: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004160a8: eb 49                                           jmp    0x4160f3
  004160aa: e8 41 bf 02 00                                  call   0x441ff0
  004160af: 83 c4 04                                        add    esp,0x4
  004160b2: 85 c0                                           test   eax,eax
  004160b4: 74 0f                                           je     0x4160c5
  004160b6: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  004160bc: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  004160c3: eb 02                                           jmp    0x4160c7
  004160c5: 33 c0                                           xor    eax,eax
  004160c7: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  004160ca: 89 01                                           mov    DWORD PTR [ecx],eax
  004160cc: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  004160cf: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  004160d2: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  004160d5: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004160d8: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  004160db: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  004160e1: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  004160e4: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004160e7: eb 0a                                           jmp    0x4160f3
  004160e9: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004160eb: 8b cb                                           mov    ecx,ebx
  004160ed: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  004160f3: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  004160f6: 8b 0d a0 1a 51 00                               mov    ecx,DWORD PTR ds:0x511aa0
  004160fc: 83 c0 10                                        add    eax,0x10
  004160ff: 3b c1                                           cmp    eax,ecx
  00416101: 89 45 dc                                        mov    DWORD PTR [ebp-0x24],eax
  00416104: 0f 85 d5 fe ff ff                               jne    0x415fdf
  0041610a: e8 f1 e0 01 00                                  call   0x434200
  0041610f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00416111: 68 7c 1a 51 00                                  push   0x511a7c
  00416116: 8b c8                                           mov    ecx,eax
  00416118: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0041611b: 68 80 1a 51 00                                  push   0x511a80
  00416120: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00416126: 66 8b 9e e0 01 00 00                            mov    bx,WORD PTR [esi+0x1e0]
  0041612d: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00416130: e8 29 b9 0b 00                                  call   0x4d1a5e
  00416135: 8b 3e                                           mov    edi,DWORD PTR [esi]
  00416137: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0041613b: 66 c7 86 e0 01 00 00 ff ff                      mov    WORD PTR [esi+0x1e0],0xffff
  00416144: e8 17 79 02 00                                  call   0x43da60
  00416149: 8b ce                                           mov    ecx,esi
  0041614b: 50                                              push   eax
  0041614c: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041614f: 50                                              push   eax
  00416150: ff 57 48                                        call   DWORD PTR [edi+0x48]
  00416153: 8b 38                                           mov    edi,DWORD PTR [eax]
  00416155: 8b ce                                           mov    ecx,esi
  00416157: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0041615b: e8 a0 55 07 00                                  call   0x48b700
  00416160: 50                                              push   eax
  00416161: 57                                              push   edi
  00416162: 6a 23                                           push   0x23
  00416164: 68 d0 1d 50 00                                  push   0x501dd0
  00416169: 68 00 02 00 00                                  push   0x200
  0041616e: e8 cd bb 05 00                                  call   0x471d40
  00416173: 83 c4 14                                        add    esp,0x14
  00416176: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00416179: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0041617d: e8 be b8 0b 00                                  call   0x4d1a40
  00416182: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00416185: 51                                              push   ecx
  00416186: 6a 00                                           push   0x0
  00416188: 6a 0f                                           push   0xf
  0041618a: 6a 23                                           push   0x23
  0041618c: 8b ce                                           mov    ecx,esi
  0041618e: e8 2d 7f 00 00                                  call   0x41e0c0
  00416193: 85 c0                                           test   eax,eax
  00416195: 74 07                                           je     0x41619e
  00416197: c7 40 04 0f 00 00 00                            mov    DWORD PTR [eax+0x4],0xf
  0041619e: 8b 16                                           mov    edx,DWORD PTR [esi]
  004161a0: 68 24 13 00 00                                  push   0x1324
  004161a5: 68 45 4e 00 00                                  push   0x4e45
  004161aa: 8b ce                                           mov    ecx,esi
  004161ac: 66 89 9e e0 01 00 00                            mov    WORD PTR [esi+0x1e0],bx
  004161b3: 33 ff                                           xor    edi,edi
  004161b5: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004161b8: 33 c0                                           xor    eax,eax
  004161ba: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004161bd: 33 c9                                           xor    ecx,ecx
  004161bf: 8a 0c 10                                        mov    cl,BYTE PTR [eax+edx*1]
  004161c2: 03 f9                                           add    edi,ecx
  004161c4: 40                                              inc    eax
  004161c5: 83 f8 05                                        cmp    eax,0x5
  004161c8: 7c f0                                           jl     0x4161ba
  004161ca: 83 ff 04                                        cmp    edi,0x4
  004161cd: 0f 85 a1 04 00 00                               jne    0x416674
  004161d3: 33 c9                                           xor    ecx,ecx
  004161d5: 8b fa                                           mov    edi,edx
  004161d7: 8a 0f                                           mov    cl,BYTE PTR [edi]
  004161d9: b8 01 00 00 00                                  mov    eax,0x1
  004161de: 33 d2                                           xor    edx,edx
  004161e0: 8a 14 38                                        mov    dl,BYTE PTR [eax+edi*1]
  004161e3: 3b d1                                           cmp    edx,ecx
  004161e5: 7e 09                                           jle    0x4161f0
  004161e7: 33 c9                                           xor    ecx,ecx
  004161e9: 66 89 46 7c                                     mov    WORD PTR [esi+0x7c],ax
  004161ed: 8a 0c 38                                        mov    cl,BYTE PTR [eax+edi*1]
  004161f0: 40                                              inc    eax
  004161f1: 83 f8 05                                        cmp    eax,0x5
  004161f4: 7c e8                                           jl     0x4161de
  004161f6: 8a 47 05                                        mov    al,BYTE PTR [edi+0x5]
  004161f9: 84 c0                                           test   al,al
  004161fb: 74 18                                           je     0x416215
  004161fd: 3c 01                                           cmp    al,0x1
  004161ff: 75 14                                           jne    0x416215
  00416201: 8b 16                                           mov    edx,DWORD PTR [esi]
  00416203: 6a 01                                           push   0x1
  00416205: 8b ce                                           mov    ecx,esi
  00416207: ff 92 b4 01 00 00                               call   DWORD PTR [edx+0x1b4]
  0041620d: 66 c7 46 7c 1c 27                               mov    WORD PTR [esi+0x7c],0x271c
  00416213: eb 12                                           jmp    0x416227
  00416215: 8b 06                                           mov    eax,DWORD PTR [esi]
  00416217: 6a 00                                           push   0x0
  00416219: 8b ce                                           mov    ecx,esi
  0041621b: ff 90 b4 01 00 00                               call   DWORD PTR [eax+0x1b4]
  00416221: 66 c7 46 7c 1b 27                               mov    WORD PTR [esi+0x7c],0x271b
  00416227: 81 a6 20 04 00 00 00 00 00 f0                   and    DWORD PTR [esi+0x420],0xf0000000
  00416231: 33 c0                                           xor    eax,eax
  00416233: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00416236: eb 03                                           jmp    0x41623b
  00416238: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041623b: 33 c9                                           xor    ecx,ecx
  0041623d: 83 f8 04                                        cmp    eax,0x4
  00416240: 8a 0c 38                                        mov    cl,BYTE PTR [eax+edi*1]
  00416243: 89 4d ec                                        mov    DWORD PTR [ebp-0x14],ecx
  00416246: 0f 87 18 04 00 00                               ja     0x416664
  0041624c: ff 24 85 c8 68 41 00                            jmp    DWORD PTR [eax*4+0x4168c8]
  00416664: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416667: 40                                              inc    eax
  00416668: 83 f8 05                                        cmp    eax,0x5
  0041666b: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0041666e: 0f 8c c4 fb ff ff                               jl     0x416238
  00416674: 8b ce                                           mov    ecx,esi
  00416676: e8 c5 cf ff ff                                  call   0x413640
  0041667b: 8b ce                                           mov    ecx,esi
  0041667d: e8 9e bd ff ff                                  call   0x412420
  00416682: 8b be 68 01 00 00                               mov    edi,DWORD PTR [esi+0x168]
  00416688: 8b 9e 64 01 00 00                               mov    ebx,DWORD PTR [esi+0x164]
  0041668e: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00416691: 50                                              push   eax
  00416692: 8b ce                                           mov    ecx,esi
  00416694: e8 b7 73 00 00                                  call   0x41da50
  00416699: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041669b: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0041669e: 8b ce                                           mov    ecx,esi
  004166a0: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  004166a4: e8 57 50 07 00                                  call   0x48b700
  004166a9: 50                                              push   eax
  004166aa: 8b 86 80 00 00 00                               mov    eax,DWORD PTR [esi+0x80]
  004166b0: 33 d2                                           xor    edx,edx
  004166b2: 8a 56 7e                                        mov    dl,BYTE PTR [esi+0x7e]
  004166b5: 57                                              push   edi
  004166b6: 33 c9                                           xor    ecx,ecx
  004166b8: 66 8b 4e 7c                                     mov    cx,WORD PTR [esi+0x7c]
  004166bc: 53                                              push   ebx
  004166bd: 52                                              push   edx
  004166be: 50                                              push   eax
  004166bf: 33 d2                                           xor    edx,edx
  004166c1: 66 8b 96 84 00 00 00                            mov    dx,WORD PTR [esi+0x84]
  004166c8: 51                                              push   ecx
  004166c9: 33 c0                                           xor    eax,eax
  004166cb: 66 8b 86 e2 01 00 00                            mov    ax,WORD PTR [esi+0x1e2]
  004166d2: 33 c9                                           xor    ecx,ecx
  004166d4: 66 8b 8e e0 01 00 00                            mov    cx,WORD PTR [esi+0x1e0]
  004166db: 52                                              push   edx
  004166dc: 8b 16                                           mov    edx,DWORD PTR [esi]
  004166de: 50                                              push   eax
  004166df: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004166e2: 51                                              push   ecx
  004166e3: 50                                              push   eax
  004166e4: 8b ce                                           mov    ecx,esi
  004166e6: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004166e9: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004166ec: 8b 16                                           mov    edx,DWORD PTR [esi]
  004166ee: 51                                              push   ecx
  004166ef: 8d 45 b8                                        lea    eax,[ebp-0x48]
  004166f2: 50                                              push   eax
  004166f3: 8b ce                                           mov    ecx,esi
  004166f5: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004166f8: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004166fb: 8b 16                                           mov    edx,DWORD PTR [esi]
  004166fd: 51                                              push   ecx
  004166fe: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  00416701: 50                                              push   eax
  00416702: 8b ce                                           mov    ecx,esi
  00416704: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00416707: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00416709: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041670b: 51                                              push   ecx
  0041670c: 8b ce                                           mov    ecx,esi
  0041670e: ff 92 04 01 00 00                               call   DWORD PTR [edx+0x104]
  00416714: 50                                              push   eax
  00416715: 8b 06                                           mov    eax,DWORD PTR [esi]
  00416717: 8b ce                                           mov    ecx,esi
  00416719: ff 90 e4 00 00 00                               call   DWORD PTR [eax+0xe4]
  0041671f: 8b 16                                           mov    edx,DWORD PTR [esi]
  00416721: 8b ce                                           mov    ecx,esi
  00416723: 25 ff ff 00 00                                  and    eax,0xffff
  00416728: 50                                              push   eax
  00416729: ff 92 ec 00 00 00                               call   DWORD PTR [edx+0xec]
  0041672f: 8b ce                                           mov    ecx,esi
  00416731: 25 ff ff 00 00                                  and    eax,0xffff
  00416736: 50                                              push   eax
  00416737: 8b 06                                           mov    eax,DWORD PTR [esi]
  00416739: ff 90 d0 00 00 00                               call   DWORD PTR [eax+0xd0]
  0041673f: 8b 16                                           mov    edx,DWORD PTR [esi]
  00416741: 50                                              push   eax
  00416742: 8b ce                                           mov    ecx,esi
  00416744: ff 92 d8 00 00 00                               call   DWORD PTR [edx+0xd8]
  0041674a: 50                                              push   eax
  0041674b: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041674d: 8b ce                                           mov    ecx,esi
  0041674f: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  00416755: 8b 16                                           mov    edx,DWORD PTR [esi]
  00416757: 8b ce                                           mov    ecx,esi
  00416759: 25 ff ff 00 00                                  and    eax,0xffff
  0041675e: 50                                              push   eax
  0041675f: ff 52 54                                        call   DWORD PTR [edx+0x54]
  00416762: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00416765: 89 55 ec                                        mov    DWORD PTR [ebp-0x14],edx
  00416768: df 6d e8                                        fild   QWORD PTR [ebp-0x18]
  0041676b: 83 ec 08                                        sub    esp,0x8
  0041676e: 8b ce                                           mov    ecx,esi
  00416770: dd 1c 24                                        fstp   QWORD PTR [esp]
  00416773: e8 18 7b 07 00                                  call   0x48e290
  00416778: 8b ce                                           mov    ecx,esi
  0041677a: 25 ff ff 00 00                                  and    eax,0xffff
  0041677f: 50                                              push   eax
  00416780: e8 fb 7a 07 00                                  call   0x48e280
  00416785: 8b ce                                           mov    ecx,esi
  00416787: 25 ff ff 00 00                                  and    eax,0xffff
  0041678c: 50                                              push   eax
  0041678d: e8 de 7a 07 00                                  call   0x48e270
  00416792: 8b ce                                           mov    ecx,esi
  00416794: 25 ff ff 00 00                                  and    eax,0xffff
  00416799: 50                                              push   eax
  0041679a: e8 91 7a 07 00                                  call   0x48e230
  0041679f: 8b ce                                           mov    ecx,esi
  004167a1: 25 ff ff 00 00                                  and    eax,0xffff
  004167a6: 50                                              push   eax
  004167a7: e8 b4 7a 07 00                                  call   0x48e260
  004167ac: 8b ce                                           mov    ecx,esi
  004167ae: 25 ff ff 00 00                                  and    eax,0xffff
  004167b3: 50                                              push   eax
  004167b4: e8 87 7a 07 00                                  call   0x48e240
  004167b9: 8b ce                                           mov    ecx,esi
  004167bb: 25 ff ff 00 00                                  and    eax,0xffff
  004167c0: 50                                              push   eax
  004167c1: e8 8a 7a 07 00                                  call   0x48e250
  004167c6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004167c9: 25 ff ff 00 00                                  and    eax,0xffff
  004167ce: 50                                              push   eax
  004167cf: 8d 85 b8 fb ff ff                               lea    eax,[ebp-0x448]
  004167d5: 50                                              push   eax
  004167d6: 51                                              push   ecx
  004167d7: 8b ce                                           mov    ecx,esi
  004167d9: e8 22 4f 07 00                                  call   0x48b700
  004167de: 50                                              push   eax
  004167df: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  004167e2: 68 2c 1c 50 00                                  push   0x501c2c
  004167e7: 52                                              push   edx
  004167e8: e8 a7 b2 0b 00                                  call   0x4d1a94
  004167ed: 81 c4 80 00 00 00                               add    esp,0x80
  004167f3: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004167f6: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004167fa: e8 41 b2 0b 00                                  call   0x4d1a40
  004167ff: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00416802: 6a 00                                           push   0x0
  00416804: 50                                              push   eax
  00416805: b9 78 18 51 00                                  mov    ecx,0x511878
  0041680a: e8 71 85 03 00                                  call   0x44ed80
  0041680f: 85 c0                                           test   eax,eax
  00416811: 74 64                                           je     0x416877
  00416813: b9 78 18 51 00                                  mov    ecx,0x511878
  00416818: e8 03 85 03 00                                  call   0x44ed20
  0041681d: b9 78 18 51 00                                  mov    ecx,0x511878
  00416822: e8 49 85 03 00                                  call   0x44ed70
  00416827: b9 78 18 51 00                                  mov    ecx,0x511878
  0041682c: e8 9f 81 03 00                                  call   0x44e9d0
  00416831: 8b ce                                           mov    ecx,esi
  00416833: e8 e8 bb ff ff                                  call   0x412420
  00416838: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0041683b: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041683f: e8 fc b1 0b 00                                  call   0x4d1a40
  00416844: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00416847: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0041684b: e8 f0 b1 0b 00                                  call   0x4d1a40
  00416850: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00416853: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041685a: e8 e1 b1 0b 00                                  call   0x4d1a40
  0041685f: b8 01 00 00 00                                  mov    eax,0x1
  00416864: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00416867: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041686e: 5f                                              pop    edi
  0041686f: 5e                                              pop    esi
  00416870: 5b                                              pop    ebx
  00416871: 8b e5                                           mov    esp,ebp
  00416873: 5d                                              pop    ebp
  00416874: c2 08 00                                        ret    0x8
  00416877: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0041687a: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041687e: e8 bd b1 0b 00                                  call   0x4d1a40
  00416883: b9 78 18 51 00                                  mov    ecx,0x511878
  00416888: e8 e3 84 03 00                                  call   0x44ed70
  0041688d: b9 78 18 51 00                                  mov    ecx,0x511878
  00416892: e8 39 81 03 00                                  call   0x44e9d0
  00416897: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041689a: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0041689e: e8 9d b1 0b 00                                  call   0x4d1a40
  004168a3: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004168a6: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004168ad: e8 8e b1 0b 00                                  call   0x4d1a40
  004168b2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004168b5: 5f                                              pop    edi
  004168b6: 5e                                              pop    esi
  004168b7: 33 c0                                           xor    eax,eax
  004168b9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004168c0: 5b                                              pop    ebx
  004168c1: 8b e5                                           mov    esp,ebp
  004168c3: 5d                                              pop    ebp
  004168c4: c2 08 00                                        ret    0x8

; ===== 0x004168E0 ?DeleteCharacter@Character@@QAEDVCString@@0H@Z =====
  004168e0: 55                                              push   ebp
  004168e1: 8b ec                                           mov    ebp,esp
  004168e3: 6a ff                                           push   0xffffffff
  004168e5: 68 48 3c 4d 00                                  push   0x4d3c48
  004168ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004168f0: 50                                              push   eax
  004168f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004168f8: 83 ec 3c                                        sub    esp,0x3c
  004168fb: 53                                              push   ebx
  004168fc: 56                                              push   esi
  004168fd: 57                                              push   edi
  004168fe: 8b f9                                           mov    edi,ecx
  00416900: 89 7d e4                                        mov    DWORD PTR [ebp-0x1c],edi
  00416903: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00416906: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0041690d: e8 4c b1 0b 00                                  call   0x4d1a5e
  00416912: 33 db                                           xor    ebx,ebx
  00416914: b9 78 18 51 00                                  mov    ecx,0x511878
  00416919: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0041691d: 33 f6                                           xor    esi,esi
  0041691f: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00416922: e8 59 80 03 00                                  call   0x44e980
  00416927: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041692a: 50                                              push   eax
  0041692b: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041692e: 68 54 1f 50 00                                  push   0x501f54
  00416933: 51                                              push   ecx
  00416934: e8 5b b1 0b 00                                  call   0x4d1a94
  00416939: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0041693c: 83 c4 0c                                        add    esp,0xc
  0041693f: 53                                              push   ebx
  00416940: 52                                              push   edx
  00416941: b9 78 18 51 00                                  mov    ecx,0x511878
  00416946: e8 35 84 03 00                                  call   0x44ed80
  0041694b: b9 78 18 51 00                                  mov    ecx,0x511878
  00416950: e8 0b 84 03 00                                  call   0x44ed60
  00416955: 85 c0                                           test   eax,eax
  00416957: 0f 84 e3 03 00 00                               je     0x416d40
  0041695d: 6a 14                                           push   0x14
  0041695f: 8d 45 d0                                        lea    eax,[ebp-0x30]
  00416962: 50                                              push   eax
  00416963: 6a 01                                           push   0x1
  00416965: b9 78 18 51 00                                  mov    ecx,0x511878
  0041696a: e8 b1 87 03 00                                  call   0x44f120
  0041696f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00416972: 51                                              push   ecx
  00416973: 6a 02                                           push   0x2
  00416975: b9 78 18 51 00                                  mov    ecx,0x511878
  0041697a: e8 91 85 03 00                                  call   0x44ef10
  0041697f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00416982: 52                                              push   edx
  00416983: 8d 45 d0                                        lea    eax,[ebp-0x30]
  00416986: 50                                              push   eax
  00416987: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  0041698d: 83 c4 08                                        add    esp,0x8
  00416990: 85 c0                                           test   eax,eax
  00416992: 0f 85 58 03 00 00                               jne    0x416cf0
  00416998: 6a 02                                           push   0x2
  0041699a: e8 71 b3 05 00                                  call   0x471d10
  0041699f: 83 c4 04                                        add    esp,0x4
  004169a2: 85 c0                                           test   eax,eax
  004169a4: 74 44                                           je     0x4169ea
  004169a6: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004169a9: 51                                              push   ecx
  004169aa: 8b 8f 78 01 00 00                               mov    ecx,DWORD PTR [edi+0x178]
  004169b0: e8 8b e0 03 00                                  call   0x454a40
  004169b5: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004169b8: 8b 00                                           mov    eax,DWORD PTR [eax]
  004169ba: 52                                              push   edx
  004169bb: 50                                              push   eax
  004169bc: 8d 45 d0                                        lea    eax,[ebp-0x30]
  004169bf: 50                                              push   eax
  004169c0: 68 28 1f 50 00                                  push   0x501f28
  004169c5: 6a 40                                           push   0x40
  004169c7: 6a 02                                           push   0x2
  004169c9: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004169cd: e8 3e b3 05 00                                  call   0x471d10
  004169d2: 83 c4 04                                        add    esp,0x4
  004169d5: 50                                              push   eax
  004169d6: e8 15 81 0b 00                                  call   0x4ceaf0
  004169db: 83 c4 18                                        add    esp,0x18
  004169de: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004169e1: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004169e5: e8 56 b0 0b 00                                  call   0x4d1a40
  004169ea: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004169ed: 51                                              push   ecx
  004169ee: 8d 55 f0                                        lea    edx,[ebp-0x10]
  004169f1: 68 f4 1e 50 00                                  push   0x501ef4
  004169f6: 52                                              push   edx
  004169f7: e8 98 b0 0b 00                                  call   0x4d1a94
  004169fc: 83 c4 0c                                        add    esp,0xc
  004169ff: b9 78 18 51 00                                  mov    ecx,0x511878
  00416a04: e8 67 83 03 00                                  call   0x44ed70
  00416a09: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416a0c: 53                                              push   ebx
  00416a0d: 50                                              push   eax
  00416a0e: b9 78 18 51 00                                  mov    ecx,0x511878
  00416a13: e8 68 83 03 00                                  call   0x44ed80
  00416a18: 85 c0                                           test   eax,eax
  00416a1a: 75 05                                           jne    0x416a21
  00416a1c: be 01 00 00 00                                  mov    esi,0x1
  00416a21: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00416a24: 51                                              push   ecx
  00416a25: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00416a28: 68 7c 17 50 00                                  push   0x50177c
  00416a2d: 52                                              push   edx
  00416a2e: e8 61 b0 0b 00                                  call   0x4d1a94
  00416a33: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416a36: 83 c4 0c                                        add    esp,0xc
  00416a39: 53                                              push   ebx
  00416a3a: 50                                              push   eax
  00416a3b: b9 78 18 51 00                                  mov    ecx,0x511878
  00416a40: e8 3b 83 03 00                                  call   0x44ed80
  00416a45: 85 c0                                           test   eax,eax
  00416a47: 75 05                                           jne    0x416a4e
  00416a49: be 01 00 00 00                                  mov    esi,0x1
  00416a4e: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00416a51: 51                                              push   ecx
  00416a52: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00416a55: 68 50 17 50 00                                  push   0x501750
  00416a5a: 52                                              push   edx
  00416a5b: e8 34 b0 0b 00                                  call   0x4d1a94
  00416a60: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416a63: 83 c4 0c                                        add    esp,0xc
  00416a66: 53                                              push   ebx
  00416a67: 50                                              push   eax
  00416a68: b9 78 18 51 00                                  mov    ecx,0x511878
  00416a6d: e8 0e 83 03 00                                  call   0x44ed80
  00416a72: 85 c0                                           test   eax,eax
  00416a74: 75 05                                           jne    0x416a7b
  00416a76: be 01 00 00 00                                  mov    esi,0x1
  00416a7b: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00416a7e: 51                                              push   ecx
  00416a7f: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00416a82: 68 a4 17 50 00                                  push   0x5017a4
  00416a87: 52                                              push   edx
  00416a88: e8 07 b0 0b 00                                  call   0x4d1a94
  00416a8d: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416a90: 83 c4 0c                                        add    esp,0xc
  00416a93: 53                                              push   ebx
  00416a94: 50                                              push   eax
  00416a95: b9 78 18 51 00                                  mov    ecx,0x511878
  00416a9a: e8 e1 82 03 00                                  call   0x44ed80
  00416a9f: 85 c0                                           test   eax,eax
  00416aa1: 75 05                                           jne    0x416aa8
  00416aa3: be 01 00 00 00                                  mov    esi,0x1
  00416aa8: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00416aab: 51                                              push   ecx
  00416aac: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00416aaf: 68 c8 1e 50 00                                  push   0x501ec8
  00416ab4: 52                                              push   edx
  00416ab5: e8 da af 0b 00                                  call   0x4d1a94
  00416aba: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416abd: 83 c4 0c                                        add    esp,0xc
  00416ac0: 53                                              push   ebx
  00416ac1: 50                                              push   eax
  00416ac2: b9 78 18 51 00                                  mov    ecx,0x511878
  00416ac7: e8 b4 82 03 00                                  call   0x44ed80
  00416acc: 85 c0                                           test   eax,eax
  00416ace: 75 05                                           jne    0x416ad5
  00416ad0: be 01 00 00 00                                  mov    esi,0x1
  00416ad5: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00416ad8: 51                                              push   ecx
  00416ad9: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00416adc: 68 9c 1e 50 00                                  push   0x501e9c
  00416ae1: 52                                              push   edx
  00416ae2: e8 ad af 0b 00                                  call   0x4d1a94
  00416ae7: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416aea: 83 c4 0c                                        add    esp,0xc
  00416aed: 53                                              push   ebx
  00416aee: 50                                              push   eax
  00416aef: b9 78 18 51 00                                  mov    ecx,0x511878
  00416af4: e8 87 82 03 00                                  call   0x44ed80
  00416af9: 85 c0                                           test   eax,eax
  00416afb: 75 05                                           jne    0x416b02
  00416afd: be 01 00 00 00                                  mov    esi,0x1
  00416b02: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00416b05: 51                                              push   ecx
  00416b06: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00416b09: 68 70 1e 50 00                                  push   0x501e70
  00416b0e: 52                                              push   edx
  00416b0f: e8 80 af 0b 00                                  call   0x4d1a94
  00416b14: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416b17: 83 c4 0c                                        add    esp,0xc
  00416b1a: 53                                              push   ebx
  00416b1b: 50                                              push   eax
  00416b1c: b9 78 18 51 00                                  mov    ecx,0x511878
  00416b21: e8 5a 82 03 00                                  call   0x44ed80
  00416b26: 85 c0                                           test   eax,eax
  00416b28: 0f 84 68 01 00 00                               je     0x416c96
  00416b2e: 3b f3                                           cmp    esi,ebx
  00416b30: 0f 85 60 01 00 00                               jne    0x416c96
  00416b36: 8b b7 78 01 00 00                               mov    esi,DWORD PTR [edi+0x178]
  00416b3c: 3b f3                                           cmp    esi,ebx
  00416b3e: 74 16                                           je     0x416b56
  00416b40: 51                                              push   ecx
  00416b41: 8d 55 08                                        lea    edx,[ebp+0x8]
  00416b44: 8b cc                                           mov    ecx,esp
  00416b46: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00416b49: 52                                              push   edx
  00416b4a: e8 fd ae 0b 00                                  call   0x4d1a4c
  00416b4f: 8b ce                                           mov    ecx,esi
  00416b51: e8 aa 00 04 00                                  call   0x456c00
  00416b56: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00416b59: e8 92 f2 06 00                                  call   0x485df0
  00416b5e: 8b ce                                           mov    ecx,esi
  00416b60: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00416b64: e8 b7 03 04 00                                  call   0x456f20
  00416b69: 6a 1a                                           push   0x1a
  00416b6b: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00416b6e: 8b f0                                           mov    esi,eax
  00416b70: e8 db f5 06 00                                  call   0x486150
  00416b75: 8b 46 38                                        mov    eax,DWORD PTR [esi+0x38]
  00416b78: 50                                              push   eax
  00416b79: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00416b7c: e8 2f f6 06 00                                  call   0x4861b0
  00416b81: 8b 06                                           mov    eax,DWORD PTR [esi]
  00416b83: 8b ce                                           mov    ecx,esi
  00416b85: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00416b88: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00416b8b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00416b8e: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00416b91: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00416b95: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00416b98: 85 c0                                           test   eax,eax
  00416b9a: 74 0a                                           je     0x416ba6
  00416b9c: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00416b9f: 8b 02                                           mov    eax,DWORD PTR [edx]
  00416ba1: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00416ba4: eb 07                                           jmp    0x416bad
  00416ba6: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  00416bad: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00416bb0: 85 c0                                           test   eax,eax
  00416bb2: 74 55                                           je     0x416c09
  00416bb4: 8b 58 08                                        mov    ebx,DWORD PTR [eax+0x8]
  00416bb7: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  00416bb9: 8b 51 f8                                        mov    edx,DWORD PTR [ecx-0x8]
  00416bbc: 52                                              push   edx
  00416bbd: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00416bc0: e8 eb f5 06 00                                  call   0x4861b0
  00416bc5: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00416bc7: 8b 48 f8                                        mov    ecx,DWORD PTR [eax-0x8]
  00416bca: 33 ff                                           xor    edi,edi
  00416bcc: 85 c9                                           test   ecx,ecx
  00416bce: 7e 16                                           jle    0x416be6
  00416bd0: 8a 04 38                                        mov    al,BYTE PTR [eax+edi*1]
  00416bd3: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00416bd6: 50                                              push   eax
  00416bd7: e8 d4 f5 06 00                                  call   0x4861b0
  00416bdc: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00416bde: 8b 48 f8                                        mov    ecx,DWORD PTR [eax-0x8]
  00416be1: 47                                              inc    edi
  00416be2: 3b f9                                           cmp    edi,ecx
  00416be4: 7c ea                                           jl     0x416bd0
  00416be6: 33 c9                                           xor    ecx,ecx
  00416be8: 66 8b 4b 06                                     mov    cx,WORD PTR [ebx+0x6]
  00416bec: 51                                              push   ecx
  00416bed: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00416bf0: e8 5b f5 06 00                                  call   0x486150
  00416bf5: 33 d2                                           xor    edx,edx
  00416bf7: 66 8b 53 04                                     mov    dx,WORD PTR [ebx+0x4]
  00416bfb: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00416bfe: 52                                              push   edx
  00416bff: e8 4c f5 06 00                                  call   0x486150
  00416c04: 8b 7d e4                                        mov    edi,DWORD PTR [ebp-0x1c]
  00416c07: eb 8c                                           jmp    0x416b95
  00416c09: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00416c0c: 85 c0                                           test   eax,eax
  00416c0e: 74 04                                           je     0x416c14
  00416c10: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  00416c14: 8b 06                                           mov    eax,DWORD PTR [esi]
  00416c16: 8b ce                                           mov    ecx,esi
  00416c18: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  00416c1f: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00416c22: 8b 17                                           mov    edx,DWORD PTR [edi]
  00416c24: 8d 45 b8                                        lea    eax,[ebp-0x48]
  00416c27: 50                                              push   eax
  00416c28: 8b cf                                           mov    ecx,edi
  00416c2a: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00416c30: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00416c33: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00416c37: e8 44 f2 06 00                                  call   0x485e80
  00416c3c: b9 78 18 51 00                                  mov    ecx,0x511878
  00416c41: e8 da 80 03 00                                  call   0x44ed20
  00416c46: b9 78 18 51 00                                  mov    ecx,0x511878
  00416c4b: e8 20 81 03 00                                  call   0x44ed70
  00416c50: b9 78 18 51 00                                  mov    ecx,0x511878
  00416c55: e8 76 7d 03 00                                  call   0x44e9d0
  00416c5a: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00416c5d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00416c61: e8 da ad 0b 00                                  call   0x4d1a40
  00416c66: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00416c69: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00416c6d: e8 ce ad 0b 00                                  call   0x4d1a40
  00416c72: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00416c75: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00416c7c: e8 bf ad 0b 00                                  call   0x4d1a40
  00416c81: 32 c0                                           xor    al,al
  00416c83: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00416c86: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00416c8d: 5f                                              pop    edi
  00416c8e: 5e                                              pop    esi
  00416c8f: 5b                                              pop    ebx
  00416c90: 8b e5                                           mov    esp,ebp
  00416c92: 5d                                              pop    ebp
  00416c93: c2 0c 00                                        ret    0xc
  00416c96: b9 78 18 51 00                                  mov    ecx,0x511878
  00416c9b: e8 a0 80 03 00                                  call   0x44ed40
  00416ca0: b9 78 18 51 00                                  mov    ecx,0x511878
  00416ca5: e8 c6 80 03 00                                  call   0x44ed70
  00416caa: b9 78 18 51 00                                  mov    ecx,0x511878
  00416caf: e8 1c 7d 03 00                                  call   0x44e9d0
  00416cb4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00416cb7: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00416cbb: e8 80 ad 0b 00                                  call   0x4d1a40
  00416cc0: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00416cc3: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00416cc7: e8 74 ad 0b 00                                  call   0x4d1a40
  00416ccc: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00416ccf: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00416cd6: e8 65 ad 0b 00                                  call   0x4d1a40
  00416cdb: b0 03                                           mov    al,0x3
  00416cdd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00416ce0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00416ce7: 5f                                              pop    edi
  00416ce8: 5e                                              pop    esi
  00416ce9: 5b                                              pop    ebx
  00416cea: 8b e5                                           mov    esp,ebp
  00416cec: 5d                                              pop    ebp
  00416ced: c2 0c 00                                        ret    0xc
  00416cf0: b9 78 18 51 00                                  mov    ecx,0x511878
  00416cf5: e8 76 80 03 00                                  call   0x44ed70
  00416cfa: b9 78 18 51 00                                  mov    ecx,0x511878
  00416cff: e8 cc 7c 03 00                                  call   0x44e9d0
  00416d04: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00416d07: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00416d0b: e8 30 ad 0b 00                                  call   0x4d1a40
  00416d10: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00416d13: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00416d17: e8 24 ad 0b 00                                  call   0x4d1a40
  00416d1c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00416d1f: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00416d26: e8 15 ad 0b 00                                  call   0x4d1a40
  00416d2b: b0 02                                           mov    al,0x2
  00416d2d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00416d30: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00416d37: 5f                                              pop    edi
  00416d38: 5e                                              pop    esi
  00416d39: 5b                                              pop    ebx
  00416d3a: 8b e5                                           mov    esp,ebp
  00416d3c: 5d                                              pop    ebp
  00416d3d: c2 0c 00                                        ret    0xc
  00416d40: b9 78 18 51 00                                  mov    ecx,0x511878
  00416d45: e8 26 80 03 00                                  call   0x44ed70
  00416d4a: b9 78 18 51 00                                  mov    ecx,0x511878
  00416d4f: e8 7c 7c 03 00                                  call   0x44e9d0
  00416d54: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00416d57: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00416d5b: e8 e0 ac 0b 00                                  call   0x4d1a40
  00416d60: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00416d63: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00416d67: e8 d4 ac 0b 00                                  call   0x4d1a40
  00416d6c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00416d6f: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00416d76: e8 c5 ac 0b 00                                  call   0x4d1a40
  00416d7b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00416d7e: 5f                                              pop    edi
  00416d7f: 5e                                              pop    esi
  00416d80: b0 01                                           mov    al,0x1
  00416d82: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00416d89: 5b                                              pop    ebx
  00416d8a: 8b e5                                           mov    esp,ebp
  00416d8c: 5d                                              pop    ebp
  00416d8d: c2 0c 00                                        ret    0xc

; ===== 0x00416D90 ?GetUnit@Character@@QAEXUWorldPos@@PAVUnit@@@Z =====
  00416d90: 55                                              push   ebp
  00416d91: 8b ec                                           mov    ebp,esp
  00416d93: 6a ff                                           push   0xffffffff
  00416d95: 68 73 3c 4d 00                                  push   0x4d3c73
  00416d9a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00416da0: 50                                              push   eax
  00416da1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00416da8: 83 ec 2c                                        sub    esp,0x2c
  00416dab: 53                                              push   ebx
  00416dac: 56                                              push   esi
  00416dad: 57                                              push   edi
  00416dae: 8b f9                                           mov    edi,ecx
  00416db0: e8 cb 8e 00 00                                  call   0x41fc80
  00416db5: 8b 75 14                                        mov    esi,DWORD PTR [ebp+0x14]
  00416db8: 8b ce                                           mov    ecx,esi
  00416dba: e8 b1 48 07 00                                  call   0x48b670
  00416dbf: 3c 03                                           cmp    al,0x3
  00416dc1: 0f 85 6b 02 00 00                               jne    0x417032
  00416dc7: 8b 06                                           mov    eax,DWORD PTR [esi]
  00416dc9: 68 53 4e 00 00                                  push   0x4e53
  00416dce: 8b ce                                           mov    ecx,esi
  00416dd0: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00416dd3: 8b 16                                           mov    edx,DWORD PTR [esi]
  00416dd5: 6a 00                                           push   0x0
  00416dd7: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00416dda: 50                                              push   eax
  00416ddb: 57                                              push   edi
  00416ddc: 6a 00                                           push   0x0
  00416dde: 56                                              push   esi
  00416ddf: 6a 03                                           push   0x3
  00416de1: 8b ce                                           mov    ecx,esi
  00416de3: c7 45 e8 02 00 00 00                            mov    DWORD PTR [ebp-0x18],0x2
  00416dea: ff 52 24                                        call   DWORD PTR [edx+0x24]
  00416ded: 8b ce                                           mov    ecx,esi
  00416def: e8 5c 69 07 00                                  call   0x48d750
  00416df4: a8 01                                           test   al,0x1
  00416df6: 74 31                                           je     0x416e29
  00416df8: 6a 01                                           push   0x1
  00416dfa: 8b ce                                           mov    ecx,esi
  00416dfc: e8 9f 56 03 00                                  call   0x44c4a0
  00416e01: 8b ce                                           mov    ecx,esi
  00416e03: e8 e8 55 03 00                                  call   0x44c3f0
  00416e08: 85 c0                                           test   eax,eax
  00416e0a: 75 1d                                           jne    0x416e29
  00416e0c: 8b 16                                           mov    edx,DWORD PTR [esi]
  00416e0e: 8b ce                                           mov    ecx,esi
  00416e10: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  00416e16: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00416e19: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00416e20: 5f                                              pop    edi
  00416e21: 5e                                              pop    esi
  00416e22: 5b                                              pop    ebx
  00416e23: 8b e5                                           mov    esp,ebp
  00416e25: 5d                                              pop    ebp
  00416e26: c2 10 00                                        ret    0x10
  00416e29: 8b 06                                           mov    eax,DWORD PTR [esi]
  00416e2b: 8b ce                                           mov    ecx,esi
  00416e2d: ff 50 28                                        call   DWORD PTR [eax+0x28]
  00416e30: 8b 0d 5c 05 4e 00                               mov    ecx,DWORD PTR ds:0x4e055c
  00416e36: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  00416e38: 75 39                                           jne    0x416e73
  00416e3a: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  00416e3c: 6a 01                                           push   0x1
  00416e3e: 8b cf                                           mov    ecx,edi
  00416e40: ff 93 04 01 00 00                               call   DWORD PTR [ebx+0x104]
  00416e46: 8b d0                                           mov    edx,eax
  00416e48: 8b ce                                           mov    ecx,esi
  00416e4a: 89 55 14                                        mov    DWORD PTR [ebp+0x14],edx
  00416e4d: e8 9e 55 03 00                                  call   0x44c3f0
  00416e52: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00416e55: 03 d0                                           add    edx,eax
  00416e57: 52                                              push   edx
  00416e58: 8b cf                                           mov    ecx,edi
  00416e5a: ff 93 08 01 00 00                               call   DWORD PTR [ebx+0x108]
  00416e60: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00416e63: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00416e6a: 5f                                              pop    edi
  00416e6b: 5e                                              pop    esi
  00416e6c: 5b                                              pop    ebx
  00416e6d: 8b e5                                           mov    esp,ebp
  00416e6f: 5d                                              pop    ebp
  00416e70: c2 10 00                                        ret    0x10
  00416e73: 8b 06                                           mov    eax,DWORD PTR [esi]
  00416e75: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00416e78: 51                                              push   ecx
  00416e79: 6a 00                                           push   0x0
  00416e7b: 6a 00                                           push   0x0
  00416e7d: 6a 00                                           push   0x0
  00416e7f: 6a 00                                           push   0x0
  00416e81: 6a 14                                           push   0x14
  00416e83: 8b ce                                           mov    ecx,esi
  00416e85: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  00416e8c: ff 50 24                                        call   DWORD PTR [eax+0x24]
  00416e8f: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00416e92: 85 c0                                           test   eax,eax
  00416e94: 0f 84 98 01 00 00                               je     0x417032
  00416e9a: 8b 48 18                                        mov    ecx,DWORD PTR [eax+0x18]
  00416e9d: 85 c9                                           test   ecx,ecx
  00416e9f: 75 08                                           jne    0x416ea9
  00416ea1: 83 cb ff                                        or     ebx,0xffffffff
  00416ea4: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00416ea7: eb 2e                                           jmp    0x416ed7
  00416ea9: 8b 17                                           mov    edx,DWORD PTR [edi]
  00416eab: 8b cf                                           mov    ecx,edi
  00416ead: ff 92 9c 01 00 00                               call   DWORD PTR [edx+0x19c]
  00416eb3: 8b d8                                           mov    ebx,eax
  00416eb5: 8b 07                                           mov    eax,DWORD PTR [edi]
  00416eb7: 8b cf                                           mov    ecx,edi
  00416eb9: ff 90 98 01 00 00                               call   DWORD PTR [eax+0x198]
  00416ebf: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00416ec2: 2b d8                                           sub    ebx,eax
  00416ec4: 8b c3                                           mov    eax,ebx
  00416ec6: 99                                              cdq
  00416ec7: f7 79 18                                        idiv   DWORD PTR [ecx+0x18]
  00416eca: 8b d8                                           mov    ebx,eax
  00416ecc: 85 db                                           test   ebx,ebx
  00416ece: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00416ed1: 0f 84 5b 01 00 00                               je     0x417032
  00416ed7: 8b ce                                           mov    ecx,esi
  00416ed9: e8 12 55 03 00                                  call   0x44c3f0
  00416ede: 3b c3                                           cmp    eax,ebx
  00416ee0: 0f 86 c1 00 00 00                               jbe    0x416fa7
  00416ee6: 8b ce                                           mov    ecx,esi
  00416ee8: e8 03 55 03 00                                  call   0x44c3f0
  00416eed: 2b c3                                           sub    eax,ebx
  00416eef: 68 20 01 00 00                                  push   0x120
  00416ef4: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  00416ef7: e8 f4 b0 02 00                                  call   0x441ff0
  00416efc: 83 c4 04                                        add    esp,0x4
  00416eff: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  00416f02: 85 c0                                           test   eax,eax
  00416f04: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00416f0b: 74 09                                           je     0x416f16
  00416f0d: 8b c8                                           mov    ecx,eax
  00416f0f: e8 6c 4e 03 00                                  call   0x44bd80
  00416f14: eb 02                                           jmp    0x416f18
  00416f16: 33 c0                                           xor    eax,eax
  00416f18: 8b 16                                           mov    edx,DWORD PTR [esi]
  00416f1a: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00416f1c: 8b ce                                           mov    ecx,esi
  00416f1e: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  00416f21: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00416f28: ff 52 28                                        call   DWORD PTR [edx+0x28]
  00416f2b: 50                                              push   eax
  00416f2c: 8b c3                                           mov    eax,ebx
  00416f2e: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  00416f31: 6a 03                                           push   0x3
  00416f33: 8b cb                                           mov    ecx,ebx
  00416f35: ff 50 18                                        call   DWORD PTR [eax+0x18]
  00416f38: 85 c0                                           test   eax,eax
  00416f3a: 74 61                                           je     0x416f9d
  00416f3c: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  00416f3f: 51                                              push   ecx
  00416f40: 8b cb                                           mov    ecx,ebx
  00416f42: e8 b9 54 03 00                                  call   0x44c400
  00416f47: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00416f4a: 52                                              push   edx
  00416f4b: e8 70 af 05 00                                  call   0x471ec0
  00416f50: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00416f53: 83 c4 04                                        add    esp,0x4
  00416f56: 53                                              push   ebx
  00416f57: 83 ec 0c                                        sub    esp,0xc
  00416f5a: 8b cc                                           mov    ecx,esp
  00416f5c: 89 11                                           mov    DWORD PTR [ecx],edx
  00416f5e: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00416f61: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00416f64: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00416f67: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00416f6a: 8b c8                                           mov    ecx,eax
  00416f6c: e8 9f 81 09 00                                  call   0x4af110
  00416f71: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00416f74: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00416f77: 6a 01                                           push   0x1
  00416f79: 83 ec 0c                                        sub    esp,0xc
  00416f7c: 8b c4                                           mov    eax,esp
  00416f7e: 89 08                                           mov    DWORD PTR [eax],ecx
  00416f80: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00416f83: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00416f86: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00416f89: 8b cb                                           mov    ecx,ebx
  00416f8b: e8 50 88 07 00                                  call   0x48f7e0
  00416f90: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00416f93: 52                                              push   edx
  00416f94: 8b ce                                           mov    ecx,esi
  00416f96: e8 65 54 03 00                                  call   0x44c400
  00416f9b: eb 0a                                           jmp    0x416fa7
  00416f9d: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00416f9f: 8b cb                                           mov    ecx,ebx
  00416fa1: ff 90 c4 01 00 00                               call   DWORD PTR [eax+0x1c4]
  00416fa7: 56                                              push   esi
  00416fa8: 8b cf                                           mov    ecx,edi
  00416faa: e8 71 9d 00 00                                  call   0x420d20
  00416faf: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00416fb2: e8 39 ee 06 00                                  call   0x485df0
  00416fb7: 6a 12                                           push   0x12
  00416fb9: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00416fbc: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00416fc3: e8 88 f1 06 00                                  call   0x486150
  00416fc8: 6a 00                                           push   0x0
  00416fca: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00416fcd: e8 de f1 06 00                                  call   0x4861b0
  00416fd2: 8b cf                                           mov    ecx,edi
  00416fd4: e8 27 47 07 00                                  call   0x48b700
  00416fd9: 50                                              push   eax
  00416fda: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00416fdd: e8 0e f2 06 00                                  call   0x4861f0
  00416fe2: 8b 17                                           mov    edx,DWORD PTR [edi]
  00416fe4: 6a 00                                           push   0x0
  00416fe6: 8d 45 c8                                        lea    eax,[ebp-0x38]
  00416fe9: 50                                              push   eax
  00416fea: 8b cf                                           mov    ecx,edi
  00416fec: ff 92 6c 01 00 00                               call   DWORD PTR [edx+0x16c]
  00416ff2: 8b 17                                           mov    edx,DWORD PTR [edi]
  00416ff4: 8d 45 c8                                        lea    eax,[ebp-0x38]
  00416ff7: 50                                              push   eax
  00416ff8: 8b cf                                           mov    ecx,edi
  00416ffa: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00417000: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00417003: e8 b8 ee 06 00                                  call   0x485ec0
  00417008: 6a 00                                           push   0x0
  0041700a: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0041700d: 51                                              push   ecx
  0041700e: 8b cf                                           mov    ecx,edi
  00417010: e8 5b 28 00 00                                  call   0x419870
  00417015: 8b 17                                           mov    edx,DWORD PTR [edi]
  00417017: 8d 45 c8                                        lea    eax,[ebp-0x38]
  0041701a: 50                                              push   eax
  0041701b: 8b cf                                           mov    ecx,edi
  0041701d: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00417023: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00417026: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041702d: e8 4e ee 06 00                                  call   0x485e80
  00417032: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00417035: 5f                                              pop    edi
  00417036: 5e                                              pop    esi
  00417037: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041703e: 5b                                              pop    ebx
  0041703f: 8b e5                                           mov    esp,ebp
  00417041: 5d                                              pop    ebp
  00417042: c2 10 00                                        ret    0x10

; ===== 0x00417050 ?can_get@Character@@QAEHUWorldPos@@PAVObjects@@@Z =====
  00417050: 55                                              push   ebp
  00417051: 8b ec                                           mov    ebp,esp
  00417053: 6a ff                                           push   0xffffffff
  00417055: 68 a0 3c 4d 00                                  push   0x4d3ca0
  0041705a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00417060: 50                                              push   eax
  00417061: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00417068: 83 ec 2c                                        sub    esp,0x2c
  0041706b: 53                                              push   ebx
  0041706c: 56                                              push   esi
  0041706d: 57                                              push   edi
  0041706e: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  00417071: 8b f1                                           mov    esi,ecx
  00417073: 8b cf                                           mov    ecx,edi
  00417075: e8 f6 45 07 00                                  call   0x48b670
  0041707a: 3c 03                                           cmp    al,0x3
  0041707c: 74 5b                                           je     0x4170d9
  0041707e: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  00417080: e8 db 69 02 00                                  call   0x43da60
  00417085: 8b cf                                           mov    ecx,edi
  00417087: 50                                              push   eax
  00417088: 8d 45 ec                                        lea    eax,[ebp-0x14]
  0041708b: 50                                              push   eax
  0041708c: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041708f: 8b f8                                           mov    edi,eax
  00417091: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00417094: 51                                              push   ecx
  00417095: 33 db                                           xor    ebx,ebx
  00417097: 8b ce                                           mov    ecx,esi
  00417099: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0041709c: e8 af 69 00 00                                  call   0x41da50
  004170a1: 8b 17                                           mov    edx,DWORD PTR [edi]
  004170a3: 8b 00                                           mov    eax,DWORD PTR [eax]
  004170a5: 52                                              push   edx
  004170a6: 50                                              push   eax
  004170a7: 68 9c 1f 50 00                                  push   0x501f9c
  004170ac: 6a 20                                           push   0x20
  004170ae: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004170b2: e8 89 ac 05 00                                  call   0x471d40
  004170b7: 83 c4 10                                        add    esp,0x10
  004170ba: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004170bd: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004170c0: e8 7b a9 0b 00                                  call   0x4d1a40
  004170c5: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004170c8: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004170cf: e8 6c a9 0b 00                                  call   0x4d1a40
  004170d4: e9 49 01 00 00                                  jmp    0x417222
  004170d9: 8b 17                                           mov    edx,DWORD PTR [edi]
  004170db: 33 db                                           xor    ebx,ebx
  004170dd: 8d 45 14                                        lea    eax,[ebp+0x14]
  004170e0: 50                                              push   eax
  004170e1: 53                                              push   ebx
  004170e2: 53                                              push   ebx
  004170e3: 53                                              push   ebx
  004170e4: 53                                              push   ebx
  004170e5: 6a 14                                           push   0x14
  004170e7: 8b cf                                           mov    ecx,edi
  004170e9: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  004170ec: ff 52 24                                        call   DWORD PTR [edx+0x24]
  004170ef: 39 5d 14                                        cmp    DWORD PTR [ebp+0x14],ebx
  004170f2: 0f 84 2a 01 00 00                               je     0x417222
  004170f8: 8b 16                                           mov    edx,DWORD PTR [esi]
  004170fa: 8b ce                                           mov    ecx,esi
  004170fc: ff 92 9c 01 00 00                               call   DWORD PTR [edx+0x19c]
  00417102: 8b f8                                           mov    edi,eax
  00417104: 8b 06                                           mov    eax,DWORD PTR [esi]
  00417106: 8b ce                                           mov    ecx,esi
  00417108: ff 90 98 01 00 00                               call   DWORD PTR [eax+0x198]
  0041710e: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00417111: 2b f8                                           sub    edi,eax
  00417113: 3b 79 18                                        cmp    edi,DWORD PTR [ecx+0x18]
  00417116: 7c 7a                                           jl     0x417192
  00417118: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041711a: 53                                              push   ebx
  0041711b: 68 39 4e 00 00                                  push   0x4e39
  00417120: 8b ce                                           mov    ecx,esi
  00417122: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00417125: 8b 06                                           mov    eax,DWORD PTR [esi]
  00417127: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0041712a: 51                                              push   ecx
  0041712b: 8b ce                                           mov    ecx,esi
  0041712d: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  00417130: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00417132: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00417135: 2b d1                                           sub    edx,ecx
  00417137: 8b c2                                           mov    eax,edx
  00417139: 99                                              cdq
  0041713a: 33 c2                                           xor    eax,edx
  0041713c: 2b c2                                           sub    eax,edx
  0041713e: 83 f8 03                                        cmp    eax,0x3
  00417141: 0f 8d db 00 00 00                               jge    0x417222
  00417147: 8b 06                                           mov    eax,DWORD PTR [esi]
  00417149: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0041714c: 51                                              push   ecx
  0041714d: 8b ce                                           mov    ecx,esi
  0041714f: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  00417152: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  00417155: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00417158: 2b d3                                           sub    edx,ebx
  0041715a: 8b c2                                           mov    eax,edx
  0041715c: 99                                              cdq
  0041715d: 33 c2                                           xor    eax,edx
  0041715f: 2b c2                                           sub    eax,edx
  00417161: 83 f8 03                                        cmp    eax,0x3
  00417164: 0f 8d b8 00 00 00                               jge    0x417222
  0041716a: 33 c0                                           xor    eax,eax
  0041716c: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0041716f: 8b 40 14                                        mov    eax,DWORD PTR [eax+0x14]
  00417172: f6 d0                                           not    al
  00417174: 5f                                              pop    edi
  00417175: 5e                                              pop    esi
  00417176: 5b                                              pop    ebx
  00417177: 25 ff 00 00 00                                  and    eax,0xff
  0041717c: c1 e8 04                                        shr    eax,0x4
  0041717f: 83 e0 01                                        and    eax,0x1
  00417182: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00417185: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041718c: 8b e5                                           mov    esp,ebp
  0041718e: 5d                                              pop    ebp
  0041718f: c2 10 00                                        ret    0x10
  00417192: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00417195: e8 56 ec 06 00                                  call   0x485df0
  0041719a: bb 02 00 00 00                                  mov    ebx,0x2
  0041719f: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004171a2: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004171a5: e8 b4 a8 0b 00                                  call   0x4d1a5e
  004171aa: 33 c9                                           xor    ecx,ecx
  004171ac: 66 8b 8e 1c 01 00 00                            mov    cx,WORD PTR [esi+0x11c]
  004171b3: 68 58 13 51 00                                  push   0x511358
  004171b8: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004171bc: 51                                              push   ecx
  004171bd: 6a 11                                           push   0x11
  004171bf: e8 2c 68 02 00                                  call   0x43d9f0
  004171c4: 83 c4 0c                                        add    esp,0xc
  004171c7: 50                                              push   eax
  004171c8: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004171cb: e8 88 a8 0b 00                                  call   0x4d1a58
  004171d0: 6a 3f                                           push   0x3f
  004171d2: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004171d5: e8 76 ef 06 00                                  call   0x486150
  004171da: 6a 1e                                           push   0x1e
  004171dc: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004171df: e8 6c ef 06 00                                  call   0x486150
  004171e4: 6a 03                                           push   0x3
  004171e6: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004171e9: e8 62 ef 06 00                                  call   0x486150
  004171ee: 8d 55 10                                        lea    edx,[ebp+0x10]
  004171f1: 52                                              push   edx
  004171f2: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004171f5: e8 56 f1 06 00                                  call   0x486350
  004171fa: 8b 06                                           mov    eax,DWORD PTR [esi]
  004171fc: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004171ff: 51                                              push   ecx
  00417200: 8b ce                                           mov    ecx,esi
  00417202: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  00417208: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0041720b: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0041720e: e8 2d a8 0b 00                                  call   0x4d1a40
  00417213: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00417216: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041721d: e8 5e ec 06 00                                  call   0x485e80
  00417222: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00417225: 5f                                              pop    edi
  00417226: 5e                                              pop    esi
  00417227: 33 c0                                           xor    eax,eax
  00417229: 5b                                              pop    ebx
  0041722a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00417231: 8b e5                                           mov    esp,ebp
  00417233: 5d                                              pop    ebp
  00417234: c2 10 00                                        ret    0x10

; ===== 0x00417AC0 ?god_create_object@Character@@QAEKG@Z =====
  00417ac0: 55                                              push   ebp
  00417ac1: 8b ec                                           mov    ebp,esp
  00417ac3: 6a ff                                           push   0xffffffff
  00417ac5: 68 eb 3c 4d 00                                  push   0x4d3ceb
  00417aca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00417ad0: 50                                              push   eax
  00417ad1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00417ad8: 83 ec 08                                        sub    esp,0x8
  00417adb: 53                                              push   ebx
  00417adc: 56                                              push   esi
  00417add: 57                                              push   edi
  00417ade: 8b f1                                           mov    esi,ecx
  00417ae0: 68 20 01 00 00                                  push   0x120
  00417ae5: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00417ae8: e8 03 a5 02 00                                  call   0x441ff0
  00417aed: 83 c4 04                                        add    esp,0x4
  00417af0: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00417af3: 33 db                                           xor    ebx,ebx
  00417af5: 3b c3                                           cmp    eax,ebx
  00417af7: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00417afa: 74 0b                                           je     0x417b07
  00417afc: 8b c8                                           mov    ecx,eax
  00417afe: e8 7d 42 03 00                                  call   0x44bd80
  00417b03: 8b f8                                           mov    edi,eax
  00417b05: eb 02                                           jmp    0x417b09
  00417b07: 33 ff                                           xor    edi,edi
  00417b09: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00417b0c: 8b 07                                           mov    eax,DWORD PTR [edi]
  00417b0e: 81 e1 ff ff 00 00                               and    ecx,0xffff
  00417b14: 51                                              push   ecx
  00417b15: 6a 03                                           push   0x3
  00417b17: 8b cf                                           mov    ecx,edi
  00417b19: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00417b20: ff 50 18                                        call   DWORD PTR [eax+0x18]
  00417b23: 8b 8e 9c 01 00 00                               mov    ecx,DWORD PTR [esi+0x19c]
  00417b29: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00417b2b: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00417b2e: 8b b6 9c 01 00 00                               mov    esi,DWORD PTR [esi+0x19c]
  00417b34: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00417b37: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00417b3a: 42                                              inc    edx
  00417b3b: 3b c3                                           cmp    eax,ebx
  00417b3d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00417b40: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00417b43: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00417b47: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00417b4a: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00417b4d: 6a 0c                                           push   0xc
  00417b4f: 75 28                                           jne    0x417b79
  00417b51: e8 9a a4 02 00                                  call   0x441ff0
  00417b56: 83 c4 04                                        add    esp,0x4
  00417b59: 3b c3                                           cmp    eax,ebx
  00417b5b: 74 07                                           je     0x417b64
  00417b5d: 89 18                                           mov    DWORD PTR [eax],ebx
  00417b5f: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00417b62: eb 02                                           jmp    0x417b66
  00417b64: 33 c0                                           xor    eax,eax
  00417b66: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00417b69: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00417b6c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00417b6f: 89 18                                           mov    DWORD PTR [eax],ebx
  00417b71: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00417b74: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00417b77: eb 2b                                           jmp    0x417ba4
  00417b79: e8 72 a4 02 00                                  call   0x441ff0
  00417b7e: 83 c4 04                                        add    esp,0x4
  00417b81: 3b c3                                           cmp    eax,ebx
  00417b83: 74 07                                           je     0x417b8c
  00417b85: 89 18                                           mov    DWORD PTR [eax],ebx
  00417b87: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00417b8a: eb 02                                           jmp    0x417b8e
  00417b8c: 33 c0                                           xor    eax,eax
  00417b8e: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00417b91: 89 01                                           mov    DWORD PTR [ecx],eax
  00417b93: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00417b96: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00417b99: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00417b9c: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00417b9f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00417ba2: 89 18                                           mov    DWORD PTR [eax],ebx
  00417ba4: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00417ba7: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00417baa: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00417bad: 8b 8a 9c 01 00 00                               mov    ecx,DWORD PTR [edx+0x19c]
  00417bb3: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00417bb5: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00417bb8: 8b cf                                           mov    ecx,edi
  00417bba: e8 41 3b 07 00                                  call   0x48b700
  00417bbf: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00417bc2: 5f                                              pop    edi
  00417bc3: 5e                                              pop    esi
  00417bc4: 5b                                              pop    ebx
  00417bc5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00417bcc: 8b e5                                           mov    esp,ebp
  00417bce: 5d                                              pop    ebp
  00417bcf: c2 04 00                                        ret    0x4

; ===== 0x00419950 ?memorize_spell@Character@@QAEDEGK@Z =====
  00419950: 0c ff                                           or     al,0xff
  00419952: c2 0c 00                                        ret    0xc

; ===== 0x00419960 ?UseSpellEnergy@Character@@UAEHG@Z =====
  00419960: 55                                              push   ebp
  00419961: 8b ec                                           mov    ebp,esp
  00419963: 56                                              push   esi
  00419964: 8b f1                                           mov    esi,ecx
  00419966: 8b 06                                           mov    eax,DWORD PTR [esi]
  00419968: ff 90 ec 00 00 00                               call   DWORD PTR [eax+0xec]
  0041996e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00419971: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419973: 81 e1 ff ff 00 00                               and    ecx,0xffff
  00419979: 6a 01                                           push   0x1
  0041997b: 25 ff ff 00 00                                  and    eax,0xffff
  00419980: 2b c1                                           sub    eax,ecx
  00419982: b9 00 00 00 00                                  mov    ecx,0x0
  00419987: 0f 98 c1                                        sets   cl
  0041998a: 49                                              dec    ecx
  0041998b: 23 c8                                           and    ecx,eax
  0041998d: 51                                              push   ecx
  0041998e: 8b ce                                           mov    ecx,esi
  00419990: ff 92 f0 00 00 00                               call   DWORD PTR [edx+0xf0]
  00419996: b8 01 00 00 00                                  mov    eax,0x1
  0041999b: 5e                                              pop    esi
  0041999c: 5d                                              pop    ebp
  0041999d: c2 04 00                                        ret    0x4

; ===== 0x004199A0 ?CastSpell@Character@@QAEHGPAVUnit@@@Z =====
  004199a0: 55                                              push   ebp
  004199a1: 8b ec                                           mov    ebp,esp
  004199a3: 6a ff                                           push   0xffffffff
  004199a5: 68 d0 3e 4d 00                                  push   0x4d3ed0
  004199aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004199b0: 50                                              push   eax
  004199b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004199b8: 83 ec 58                                        sub    esp,0x58
  004199bb: 53                                              push   ebx
  004199bc: 56                                              push   esi
  004199bd: 57                                              push   edi
  004199be: 8b f1                                           mov    esi,ecx
  004199c0: c7 45 ec 00 00 00 00                            mov    DWORD PTR [ebp-0x14],0x0
  004199c7: e8 b4 62 00 00                                  call   0x41fc80
  004199cc: 8b 06                                           mov    eax,DWORD PTR [esi]
  004199ce: 8b ce                                           mov    ecx,esi
  004199d0: ff 90 d8 01 00 00                               call   DWORD PTR [eax+0x1d8]
  004199d6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004199d9: 57                                              push   edi
  004199da: e8 51 88 04 00                                  call   0x462230
  004199df: 8b 16                                           mov    edx,DWORD PTR [esi]
  004199e1: 8b d8                                           mov    ebx,eax
  004199e3: 8b c7                                           mov    eax,edi
  004199e5: 25 ff ff 00 00                                  and    eax,0xffff
  004199ea: 83 c4 04                                        add    esp,0x4
  004199ed: 50                                              push   eax
  004199ee: 8b ce                                           mov    ecx,esi
  004199f0: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  004199f3: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004199f6: ff 92 70 01 00 00                               call   DWORD PTR [edx+0x170]
  004199fc: 85 db                                           test   ebx,ebx
  004199fe: c6 45 f3 00                                     mov    BYTE PTR [ebp-0xd],0x0
  00419a02: 0f 84 13 03 00 00                               je     0x419d1b
  00419a08: 85 c0                                           test   eax,eax
  00419a0a: 0f 84 0b 03 00 00                               je     0x419d1b
  00419a10: 8a 83 40 02 00 00                               mov    al,BYTE PTR [ebx+0x240]
  00419a16: 84 c0                                           test   al,al
  00419a18: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00419a1b: 74 04                                           je     0x419a21
  00419a1d: 3b fe                                           cmp    edi,esi
  00419a1f: 75 12                                           jne    0x419a33
  00419a21: 84 c0                                           test   al,al
  00419a23: 75 0e                                           jne    0x419a33
  00419a25: 8b 86 08 04 00 00                               mov    eax,DWORD PTR [esi+0x408]
  00419a2b: 85 c0                                           test   eax,eax
  00419a2d: 75 04                                           jne    0x419a33
  00419a2f: c6 45 f3 01                                     mov    BYTE PTR [ebp-0xd],0x1
  00419a33: 8b 06                                           mov    eax,DWORD PTR [esi]
  00419a35: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  00419a38: 51                                              push   ecx
  00419a39: 8b ce                                           mov    ecx,esi
  00419a3b: ff 50 70                                        call   DWORD PTR [eax+0x70]
  00419a3e: e8 4d 88 05 00                                  call   0x472290
  00419a43: 39 45 c0                                        cmp    DWORD PTR [ebp-0x40],eax
  00419a46: 0f 87 19 02 00 00                               ja     0x419c65
  00419a4c: 6a 00                                           push   0x0
  00419a4e: 6a 00                                           push   0x0
  00419a50: 6a 00                                           push   0x0
  00419a52: 6a 00                                           push   0x0
  00419a54: 6a 00                                           push   0x0
  00419a56: 6a 00                                           push   0x0
  00419a58: 6a 00                                           push   0x0
  00419a5a: 57                                              push   edi
  00419a5b: 56                                              push   esi
  00419a5c: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  00419a5f: e8 ec 28 ff ff                                  call   0x40c350
  00419a64: e8 11 83 0b 00                                  call   0x4d1d7a
  00419a69: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419a6b: 8b ce                                           mov    ecx,esi
  00419a6d: 8b d8                                           mov    ebx,eax
  00419a6f: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  00419a72: ff 92 ec 00 00 00                               call   DWORD PTR [edx+0xec]
  00419a78: 66 3b c3                                        cmp    ax,bx
  00419a7b: 0f 82 43 01 00 00                               jb     0x419bc4
  00419a81: 85 ff                                           test   edi,edi
  00419a83: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  00419a85: 75 59                                           jne    0x419ae0
  00419a87: e8 d4 3f 02 00                                  call   0x43da60
  00419a8c: 33 c9                                           xor    ecx,ecx
  00419a8e: 50                                              push   eax
  00419a8f: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00419a92: 50                                              push   eax
  00419a93: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  00419a96: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00419a98: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00419a9b: 51                                              push   ecx
  00419a9c: 8b ce                                           mov    ecx,esi
  00419a9e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00419aa5: e8 a6 3f 00 00                                  call   0x41da50
  00419aaa: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  00419aad: 8b 00                                           mov    eax,DWORD PTR [eax]
  00419aaf: 53                                              push   ebx
  00419ab0: 52                                              push   edx
  00419ab1: 50                                              push   eax
  00419ab2: 68 30 20 50 00                                  push   0x502030
  00419ab7: 68 00 04 00 00                                  push   0x400
  00419abc: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00419ac0: e8 7b 82 05 00                                  call   0x471d40
  00419ac5: 83 c4 14                                        add    esp,0x14
  00419ac8: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00419acb: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00419acf: e8 6c 7f 0b 00                                  call   0x4d1a40
  00419ad4: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00419adb: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00419ade: eb 57                                           jmp    0x419b37
  00419ae0: e8 7b 3f 02 00                                  call   0x43da60
  00419ae5: 8b cf                                           mov    ecx,edi
  00419ae7: 50                                              push   eax
  00419ae8: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00419aeb: 50                                              push   eax
  00419aec: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  00419aef: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00419af1: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00419af4: 51                                              push   ecx
  00419af5: 8b ce                                           mov    ecx,esi
  00419af7: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00419afe: e8 4d 3f 00 00                                  call   0x41da50
  00419b03: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  00419b06: 8b 00                                           mov    eax,DWORD PTR [eax]
  00419b08: 53                                              push   ebx
  00419b09: 52                                              push   edx
  00419b0a: 50                                              push   eax
  00419b0b: 68 04 20 50 00                                  push   0x502004
  00419b10: 68 00 04 00 00                                  push   0x400
  00419b15: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00419b19: e8 22 82 05 00                                  call   0x471d40
  00419b1e: 83 c4 14                                        add    esp,0x14
  00419b21: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00419b24: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00419b28: e8 13 7f 0b 00                                  call   0x4d1a40
  00419b2d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00419b34: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00419b37: e8 04 7f 0b 00                                  call   0x4d1a40
  00419b3c: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  00419b3f: 8a 88 40 02 00 00                               mov    cl,BYTE PTR [eax+0x240]
  00419b45: 84 c9                                           test   cl,cl
  00419b47: 74 0b                                           je     0x419b54
  00419b49: 3b fe                                           cmp    edi,esi
  00419b4b: 75 07                                           jne    0x419b54
  00419b4d: 8b ce                                           mov    ecx,esi
  00419b4f: e8 ec 62 00 00                                  call   0x41fe40
  00419b54: 8b 17                                           mov    edx,DWORD PTR [edi]
  00419b56: 8d 45 d0                                        lea    eax,[ebp-0x30]
  00419b59: 50                                              push   eax
  00419b5a: 8b cf                                           mov    ecx,edi
  00419b5c: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00419b5f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00419b61: 83 ec 0c                                        sub    esp,0xc
  00419b64: 8b cc                                           mov    ecx,esp
  00419b66: 89 11                                           mov    DWORD PTR [ecx],edx
  00419b68: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00419b6b: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00419b6e: 57                                              push   edi
  00419b6f: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00419b72: 6a 00                                           push   0x0
  00419b74: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00419b77: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00419b7a: 56                                              push   esi
  00419b7b: 51                                              push   ecx
  00419b7c: e8 df 79 04 00                                  call   0x461560
  00419b81: 8b f8                                           mov    edi,eax
  00419b83: 83 c4 1c                                        add    esp,0x1c
  00419b86: 85 ff                                           test   edi,edi
  00419b88: 74 13                                           je     0x419b9d
  00419b8a: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  00419b8d: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419b8f: 50                                              push   eax
  00419b90: 8b ce                                           mov    ecx,esi
  00419b92: ff 92 80 01 00 00                               call   DWORD PTR [edx+0x180]
  00419b98: e9 5b 01 00 00                                  jmp    0x419cf8
  00419b9d: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  00419ba0: 84 c0                                           test   al,al
  00419ba2: 0f 85 57 01 00 00                               jne    0x419cff
  00419ba8: 8b ce                                           mov    ecx,esi
  00419baa: e8 91 62 00 00                                  call   0x41fe40
  00419baf: 8b c7                                           mov    eax,edi
  00419bb1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00419bb4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00419bbb: 5f                                              pop    edi
  00419bbc: 5e                                              pop    esi
  00419bbd: 5b                                              pop    ebx
  00419bbe: 8b e5                                           mov    esp,ebp
  00419bc0: 5d                                              pop    ebp
  00419bc1: c2 08 00                                        ret    0x8
  00419bc4: 8b 86 08 04 00 00                               mov    eax,DWORD PTR [esi+0x408]
  00419bca: 85 c0                                           test   eax,eax
  00419bcc: 75 07                                           jne    0x419bd5
  00419bce: 8b ce                                           mov    ecx,esi
  00419bd0: e8 6b 62 00 00                                  call   0x41fe40
  00419bd5: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00419bd8: e8 13 c2 06 00                                  call   0x485df0
  00419bdd: bb 04 00 00 00                                  mov    ebx,0x4
  00419be2: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00419be5: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00419be8: e8 71 7e 0b 00                                  call   0x4d1a5e
  00419bed: 33 c9                                           xor    ecx,ecx
  00419bef: 66 8b 8e 1c 01 00 00                            mov    cx,WORD PTR [esi+0x11c]
  00419bf6: 68 58 13 51 00                                  push   0x511358
  00419bfb: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00419bff: 51                                              push   ecx
  00419c00: 6a 13                                           push   0x13
  00419c02: e8 e9 3d 02 00                                  call   0x43d9f0
  00419c07: 83 c4 0c                                        add    esp,0xc
  00419c0a: 50                                              push   eax
  00419c0b: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00419c0e: e8 45 7e 0b 00                                  call   0x4d1a58
  00419c13: 6a 3f                                           push   0x3f
  00419c15: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00419c18: e8 33 c5 06 00                                  call   0x486150
  00419c1d: 6a 1e                                           push   0x1e
  00419c1f: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00419c22: e8 29 c5 06 00                                  call   0x486150
  00419c27: 6a 03                                           push   0x3
  00419c29: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00419c2c: e8 1f c5 06 00                                  call   0x486150
  00419c31: 8d 55 08                                        lea    edx,[ebp+0x8]
  00419c34: 52                                              push   edx
  00419c35: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00419c38: e8 13 c7 06 00                                  call   0x486350
  00419c3d: 8b 06                                           mov    eax,DWORD PTR [esi]
  00419c3f: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00419c42: 51                                              push   ecx
  00419c43: 8b ce                                           mov    ecx,esi
  00419c45: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  00419c4b: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00419c4e: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00419c51: e8 ea 7d 0b 00                                  call   0x4d1a40
  00419c56: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00419c5d: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00419c60: e9 8b 00 00 00                                  jmp    0x419cf0
  00419c65: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  00419c68: e8 83 c1 06 00                                  call   0x485df0
  00419c6d: bb 06 00 00 00                                  mov    ebx,0x6
  00419c72: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00419c75: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00419c78: e8 e1 7d 0b 00                                  call   0x4d1a5e
  00419c7d: 33 d2                                           xor    edx,edx
  00419c7f: 66 8b 96 1c 01 00 00                            mov    dx,WORD PTR [esi+0x11c]
  00419c86: 68 58 13 51 00                                  push   0x511358
  00419c8b: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  00419c8f: 52                                              push   edx
  00419c90: 6a 12                                           push   0x12
  00419c92: e8 59 3d 02 00                                  call   0x43d9f0
  00419c97: 83 c4 0c                                        add    esp,0xc
  00419c9a: 50                                              push   eax
  00419c9b: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00419c9e: e8 b5 7d 0b 00                                  call   0x4d1a58
  00419ca3: 6a 3f                                           push   0x3f
  00419ca5: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  00419ca8: e8 a3 c4 06 00                                  call   0x486150
  00419cad: 6a 1e                                           push   0x1e
  00419caf: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  00419cb2: e8 99 c4 06 00                                  call   0x486150
  00419cb7: 6a 03                                           push   0x3
  00419cb9: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  00419cbc: e8 8f c4 06 00                                  call   0x486150
  00419cc1: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00419cc4: 50                                              push   eax
  00419cc5: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  00419cc8: e8 83 c6 06 00                                  call   0x486350
  00419ccd: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419ccf: 8d 45 9c                                        lea    eax,[ebp-0x64]
  00419cd2: 50                                              push   eax
  00419cd3: 8b ce                                           mov    ecx,esi
  00419cd5: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00419cdb: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00419cde: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00419ce1: e8 5a 7d 0b 00                                  call   0x4d1a40
  00419ce6: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00419ced: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  00419cf0: e8 8b c1 06 00                                  call   0x485e80
  00419cf5: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  00419cf8: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  00419cfb: 84 c0                                           test   al,al
  00419cfd: 74 07                                           je     0x419d06
  00419cff: 8b ce                                           mov    ecx,esi
  00419d01: e8 7a 61 00 00                                  call   0x41fe80
  00419d06: 8b c7                                           mov    eax,edi
  00419d08: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00419d0b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00419d12: 5f                                              pop    edi
  00419d13: 5e                                              pop    esi
  00419d14: 5b                                              pop    ebx
  00419d15: 8b e5                                           mov    esp,ebp
  00419d17: 5d                                              pop    ebp
  00419d18: c2 08 00                                        ret    0x8
  00419d1b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00419d1e: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00419d21: 5f                                              pop    edi
  00419d22: 5e                                              pop    esi
  00419d23: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00419d2a: 5b                                              pop    ebx
  00419d2b: 8b e5                                           mov    esp,ebp
  00419d2d: 5d                                              pop    ebp
  00419d2e: c2 08 00                                        ret    0x8

; ===== 0x00419D40 ?CastSpell@Character@@QAEHGUWorldPos@@@Z =====
  00419d40: 55                                              push   ebp
  00419d41: 8b ec                                           mov    ebp,esp
  00419d43: 6a ff                                           push   0xffffffff
  00419d45: 68 10 3f 4d 00                                  push   0x4d3f10
  00419d4a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00419d50: 50                                              push   eax
  00419d51: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00419d58: 83 ec 48                                        sub    esp,0x48
  00419d5b: 53                                              push   ebx
  00419d5c: 56                                              push   esi
  00419d5d: 57                                              push   edi
  00419d5e: 8b f1                                           mov    esi,ecx
  00419d60: e8 1b 5f 00 00                                  call   0x41fc80
  00419d65: 8b 06                                           mov    eax,DWORD PTR [esi]
  00419d67: 8b ce                                           mov    ecx,esi
  00419d69: ff 90 d8 01 00 00                               call   DWORD PTR [eax+0x1d8]
  00419d6f: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00419d72: 57                                              push   edi
  00419d73: e8 b8 84 04 00                                  call   0x462230
  00419d78: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419d7a: 83 c4 04                                        add    esp,0x4
  00419d7d: 81 e7 ff ff 00 00                               and    edi,0xffff
  00419d83: 57                                              push   edi
  00419d84: 8b ce                                           mov    ecx,esi
  00419d86: 8b d8                                           mov    ebx,eax
  00419d88: ff 92 70 01 00 00                               call   DWORD PTR [edx+0x170]
  00419d8e: 85 db                                           test   ebx,ebx
  00419d90: 0f 84 7f 02 00 00                               je     0x41a015
  00419d96: 85 c0                                           test   eax,eax
  00419d98: 0f 84 77 02 00 00                               je     0x41a015
  00419d9e: 8b 06                                           mov    eax,DWORD PTR [esi]
  00419da0: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00419da3: 51                                              push   ecx
  00419da4: 8b ce                                           mov    ecx,esi
  00419da6: ff 50 70                                        call   DWORD PTR [eax+0x70]
  00419da9: e8 e2 84 05 00                                  call   0x472290
  00419dae: 39 45 d0                                        cmp    DWORD PTR [ebp-0x30],eax
  00419db1: 0f 87 ce 01 00 00                               ja     0x419f85
  00419db7: 6a 00                                           push   0x0
  00419db9: 6a 00                                           push   0x0
  00419dbb: 6a 00                                           push   0x0
  00419dbd: 6a 00                                           push   0x0
  00419dbf: 6a 00                                           push   0x0
  00419dc1: 6a 00                                           push   0x0
  00419dc3: 6a 00                                           push   0x0
  00419dc5: 6a 00                                           push   0x0
  00419dc7: 56                                              push   esi
  00419dc8: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  00419dcb: e8 80 25 ff ff                                  call   0x40c350
  00419dd0: e8 a5 7f 0b 00                                  call   0x4d1d7a
  00419dd5: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419dd7: 8b ce                                           mov    ecx,esi
  00419dd9: 8b d8                                           mov    ebx,eax
  00419ddb: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00419dde: ff 92 ec 00 00 00                               call   DWORD PTR [edx+0xec]
  00419de4: 66 3b c3                                        cmp    ax,bx
  00419de7: 0f 82 f3 00 00 00                               jb     0x419ee0
  00419ded: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00419df0: 85 c0                                           test   eax,eax
  00419df2: 75 4e                                           jne    0x419e42
  00419df4: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00419df7: 85 c0                                           test   eax,eax
  00419df9: 75 47                                           jne    0x419e42
  00419dfb: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00419dfe: 50                                              push   eax
  00419dff: 8b ce                                           mov    ecx,esi
  00419e01: e8 4a 3c 00 00                                  call   0x41da50
  00419e06: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00419e08: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419e0a: 8d 45 e0                                        lea    eax,[ebp-0x20]
  00419e0d: 50                                              push   eax
  00419e0e: 8b ce                                           mov    ecx,esi
  00419e10: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00419e17: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00419e1a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00419e1d: 51                                              push   ecx
  00419e1e: 6a 00                                           push   0x0
  00419e20: 6a 00                                           push   0x0
  00419e22: 57                                              push   edi
  00419e23: 53                                              push   ebx
  00419e24: 68 94 20 50 00                                  push   0x502094
  00419e29: 68 00 04 00 00                                  push   0x400
  00419e2e: e8 0d 7f 05 00                                  call   0x471d40
  00419e33: 83 c4 1c                                        add    esp,0x1c
  00419e36: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00419e3d: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00419e40: eb 49                                           jmp    0x419e8b
  00419e42: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00419e45: 52                                              push   edx
  00419e46: 8b ce                                           mov    ecx,esi
  00419e48: e8 03 3c 00 00                                  call   0x41da50
  00419e4d: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00419e4f: 8b 06                                           mov    eax,DWORD PTR [esi]
  00419e51: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00419e54: 51                                              push   ecx
  00419e55: 8b ce                                           mov    ecx,esi
  00419e57: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00419e5e: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  00419e61: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  00419e64: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00419e67: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00419e6a: 52                                              push   edx
  00419e6b: 50                                              push   eax
  00419e6c: 51                                              push   ecx
  00419e6d: 57                                              push   edi
  00419e6e: 53                                              push   ebx
  00419e6f: 68 60 20 50 00                                  push   0x502060
  00419e74: 68 00 04 00 00                                  push   0x400
  00419e79: e8 c2 7e 05 00                                  call   0x471d40
  00419e7e: 83 c4 1c                                        add    esp,0x1c
  00419e81: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00419e88: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00419e8b: e8 b0 7b 0b 00                                  call   0x4d1a40
  00419e90: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00419e93: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00419e96: 83 ec 0c                                        sub    esp,0xc
  00419e99: 8b d4                                           mov    edx,esp
  00419e9b: 89 02                                           mov    DWORD PTR [edx],eax
  00419e9d: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  00419ea0: 6a 00                                           push   0x0
  00419ea2: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00419ea5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00419ea8: 6a 00                                           push   0x0
  00419eaa: 56                                              push   esi
  00419eab: 51                                              push   ecx
  00419eac: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  00419eaf: e8 ac 76 04 00                                  call   0x461560
  00419eb4: 8b f8                                           mov    edi,eax
  00419eb6: 83 c4 1c                                        add    esp,0x1c
  00419eb9: 85 ff                                           test   edi,edi
  00419ebb: 74 0e                                           je     0x419ecb
  00419ebd: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00419ec0: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419ec2: 50                                              push   eax
  00419ec3: 8b ce                                           mov    ecx,esi
  00419ec5: ff 92 80 01 00 00                               call   DWORD PTR [edx+0x180]
  00419ecb: 8b c7                                           mov    eax,edi
  00419ecd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00419ed0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00419ed7: 5f                                              pop    edi
  00419ed8: 5e                                              pop    esi
  00419ed9: 5b                                              pop    ebx
  00419eda: 8b e5                                           mov    esp,ebp
  00419edc: 5d                                              pop    ebp
  00419edd: c2 10 00                                        ret    0x10
  00419ee0: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00419ee3: e8 08 bf 06 00                                  call   0x485df0
  00419ee8: bb 02 00 00 00                                  mov    ebx,0x2
  00419eed: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00419ef0: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00419ef3: e8 66 7b 0b 00                                  call   0x4d1a5e
  00419ef8: 33 c9                                           xor    ecx,ecx
  00419efa: 66 8b 8e 1c 01 00 00                            mov    cx,WORD PTR [esi+0x11c]
  00419f01: 68 58 13 51 00                                  push   0x511358
  00419f06: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00419f0a: 51                                              push   ecx
  00419f0b: 6a 13                                           push   0x13
  00419f0d: e8 de 3a 02 00                                  call   0x43d9f0
  00419f12: 83 c4 0c                                        add    esp,0xc
  00419f15: 50                                              push   eax
  00419f16: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00419f19: e8 3a 7b 0b 00                                  call   0x4d1a58
  00419f1e: 6a 3f                                           push   0x3f
  00419f20: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00419f23: e8 28 c2 06 00                                  call   0x486150
  00419f28: 6a 1e                                           push   0x1e
  00419f2a: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00419f2d: e8 1e c2 06 00                                  call   0x486150
  00419f32: 6a 03                                           push   0x3
  00419f34: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00419f37: e8 14 c2 06 00                                  call   0x486150
  00419f3c: 8d 55 08                                        lea    edx,[ebp+0x8]
  00419f3f: 52                                              push   edx
  00419f40: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00419f43: e8 08 c4 06 00                                  call   0x486350
  00419f48: 8b 06                                           mov    eax,DWORD PTR [esi]
  00419f4a: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00419f4d: 51                                              push   ecx
  00419f4e: 8b ce                                           mov    ecx,esi
  00419f50: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  00419f56: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00419f59: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00419f5c: e8 df 7a 0b 00                                  call   0x4d1a40
  00419f61: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00419f64: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00419f6b: e8 10 bf 06 00                                  call   0x485e80
  00419f70: 33 c0                                           xor    eax,eax
  00419f72: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00419f75: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00419f7c: 5f                                              pop    edi
  00419f7d: 5e                                              pop    esi
  00419f7e: 5b                                              pop    ebx
  00419f7f: 8b e5                                           mov    esp,ebp
  00419f81: 5d                                              pop    ebp
  00419f82: c2 10 00                                        ret    0x10
  00419f85: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00419f88: e8 63 be 06 00                                  call   0x485df0
  00419f8d: bb 04 00 00 00                                  mov    ebx,0x4
  00419f92: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00419f95: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00419f98: e8 c1 7a 0b 00                                  call   0x4d1a5e
  00419f9d: 33 d2                                           xor    edx,edx
  00419f9f: 66 8b 96 1c 01 00 00                            mov    dx,WORD PTR [esi+0x11c]
  00419fa6: 68 58 13 51 00                                  push   0x511358
  00419fab: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00419faf: 52                                              push   edx
  00419fb0: 6a 12                                           push   0x12
  00419fb2: e8 39 3a 02 00                                  call   0x43d9f0
  00419fb7: 83 c4 0c                                        add    esp,0xc
  00419fba: 50                                              push   eax
  00419fbb: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00419fbe: e8 95 7a 0b 00                                  call   0x4d1a58
  00419fc3: 6a 3f                                           push   0x3f
  00419fc5: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00419fc8: e8 83 c1 06 00                                  call   0x486150
  00419fcd: 6a 1e                                           push   0x1e
  00419fcf: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00419fd2: e8 79 c1 06 00                                  call   0x486150
  00419fd7: 6a 03                                           push   0x3
  00419fd9: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00419fdc: e8 6f c1 06 00                                  call   0x486150
  00419fe1: 8d 45 14                                        lea    eax,[ebp+0x14]
  00419fe4: 50                                              push   eax
  00419fe5: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00419fe8: e8 63 c3 06 00                                  call   0x486350
  00419fed: 8b 16                                           mov    edx,DWORD PTR [esi]
  00419fef: 8d 45 ac                                        lea    eax,[ebp-0x54]
  00419ff2: 50                                              push   eax
  00419ff3: 8b ce                                           mov    ecx,esi
  00419ff5: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00419ffb: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00419ffe: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0041a001: e8 3a 7a 0b 00                                  call   0x4d1a40
  0041a006: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  0041a009: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041a010: e8 6b be 06 00                                  call   0x485e80
  0041a015: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041a018: 5f                                              pop    edi
  0041a019: 5e                                              pop    esi
  0041a01a: 33 c0                                           xor    eax,eax
  0041a01c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041a023: 5b                                              pop    ebx
  0041a024: 8b e5                                           mov    esp,ebp
  0041a026: 5d                                              pop    ebp
  0041a027: c2 10 00                                        ret    0x10

; ===== 0x0041AAF0 ?GetPlayer@Character@@QAEPAVPlayers@@XZ =====
  0041aaf0: 8b 81 78 01 00 00                               mov    eax,DWORD PTR [ecx+0x178]
  0041aaf6: c3                                              ret

; ===== 0x0041AB00 ?TrainUnit@Character@@UAEXXZ =====
  0041ab00: 55                                              push   ebp
  0041ab01: 8b ec                                           mov    ebp,esp
  0041ab03: 6a ff                                           push   0xffffffff
  0041ab05: 68 a0 3f 4d 00                                  push   0x4d3fa0
  0041ab0a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041ab10: 50                                              push   eax
  0041ab11: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041ab18: 83 ec 38                                        sub    esp,0x38
  0041ab1b: 56                                              push   esi
  0041ab1c: 8b f1                                           mov    esi,ecx
  0041ab1e: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ab20: 57                                              push   edi
  0041ab21: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041ab27: 8b f8                                           mov    edi,eax
  0041ab29: 66 81 ff c8 00                                  cmp    di,0xc8
  0041ab2e: 0f 83 ad 03 00 00                               jae    0x41aee1
  0041ab34: 66 85 ff                                        test   di,di
  0041ab37: 75 0a                                           jne    0x41ab43
  0041ab39: c7 45 e8 01 00 00 00                            mov    DWORD PTR [ebp-0x18],0x1
  0041ab40: 8b 7d e8                                        mov    edi,DWORD PTR [ebp-0x18]
  0041ab43: 53                                              push   ebx
  0041ab44: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0041ab47: e8 a4 b2 06 00                                  call   0x485df0
  0041ab4c: 6a 2c                                           push   0x2c
  0041ab4e: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0041ab51: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041ab58: e8 f3 b5 06 00                                  call   0x486150
  0041ab5d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ab5f: 8b ce                                           mov    ecx,esi
  0041ab61: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0041ab64: 8b c2                                           mov    eax,edx
  0041ab66: 52                                              push   edx
  0041ab67: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0041ab6a: c1 f8 1f                                        sar    eax,0x1f
  0041ab6d: e8 7e b6 06 00                                  call   0x4861f0
  0041ab72: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ab74: 8b ce                                           mov    ecx,esi
  0041ab76: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0041ab79: 50                                              push   eax
  0041ab7a: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0041ab7d: e8 6e b6 06 00                                  call   0x4861f0
  0041ab82: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ab84: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0041ab87: 51                                              push   ecx
  0041ab88: 8b ce                                           mov    ecx,esi
  0041ab8a: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  0041ab90: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ab92: 8b ce                                           mov    ecx,esi
  0041ab94: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0041ab97: 8b cf                                           mov    ecx,edi
  0041ab99: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0041ab9f: 8b 1c cd 1c 1b 51 00                            mov    ebx,DWORD PTR [ecx*8+0x511b1c]
  0041aba6: 3b da                                           cmp    ebx,edx
  0041aba8: 8d 0c cd 18 1b 51 00                            lea    ecx,[ecx*8+0x511b18]
  0041abaf: 0f 8f 1c 03 00 00                               jg     0x41aed1
  0041abb5: 7c 0a                                           jl     0x41abc1
  0041abb7: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041abb9: 3b d0                                           cmp    edx,eax
  0041abbb: 0f 83 10 03 00 00                               jae    0x41aed1
  0041abc1: 66 81 ff c8 00                                  cmp    di,0xc8
  0041abc6: 0f 83 05 03 00 00                               jae    0x41aed1
  0041abcc: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041abcf: e8 8a 6e 0b 00                                  call   0x4d1a5e
  0041abd4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041abd7: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041abdb: e8 7e 6e 0b 00                                  call   0x4d1a5e
  0041abe0: 47                                              inc    edi
  0041abe1: 57                                              push   edi
  0041abe2: 8b ce                                           mov    ecx,esi
  0041abe4: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0041abe8: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  0041abeb: e8 20 17 07 00                                  call   0x48c310
  0041abf0: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0041abf3: 50                                              push   eax
  0041abf4: 8b ce                                           mov    ecx,esi
  0041abf6: e8 55 2e 00 00                                  call   0x41da50
  0041abfb: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041abfd: 81 e7 ff ff 00 00                               and    edi,0xffff
  0041ac03: 57                                              push   edi
  0041ac04: 50                                              push   eax
  0041ac05: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041ac08: 68 44 21 50 00                                  push   0x502144
  0041ac0d: 51                                              push   ecx
  0041ac0e: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0041ac12: e8 7d 6e 0b 00                                  call   0x4d1a94
  0041ac17: 83 c4 10                                        add    esp,0x10
  0041ac1a: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041ac1d: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0041ac21: e8 1a 6e 0b 00                                  call   0x4d1a40
  0041ac26: 66 83 86 e2 01 00 00 05                         add    WORD PTR [esi+0x1e2],0x5
  0041ac2e: b8 67 66 66 66                                  mov    eax,0x66666667
  0041ac33: f7 ef                                           imul   edi
  0041ac35: c1 fa 02                                        sar    edx,0x2
  0041ac38: 8b c2                                           mov    eax,edx
  0041ac3a: c1 e8 1f                                        shr    eax,0x1f
  0041ac3d: 66 0f b6 8c 02 08 11 50 00                      movzx  cx,BYTE PTR [edx+eax*1+0x501108]
  0041ac46: 66 01 8e e0 01 00 00                            add    WORD PTR [esi+0x1e0],cx
  0041ac4d: 8d 94 02 08 11 50 00                            lea    edx,[edx+eax*1+0x501108]
  0041ac54: 33 c0                                           xor    eax,eax
  0041ac56: 8a 02                                           mov    al,BYTE PTR [edx]
  0041ac58: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041ac5b: 50                                              push   eax
  0041ac5c: 68 14 21 50 00                                  push   0x502114
  0041ac61: 51                                              push   ecx
  0041ac62: e8 2d 6e 0b 00                                  call   0x4d1a94
  0041ac67: 83 c4 0c                                        add    esp,0xc
  0041ac6a: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041ac6d: 52                                              push   edx
  0041ac6e: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041ac71: e8 42 6e 0b 00                                  call   0x4d1ab8
  0041ac76: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ac78: 8b ce                                           mov    ecx,esi
  0041ac7a: ff 90 d0 00 00 00                               call   DWORD PTR [eax+0xd0]
  0041ac80: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ac82: 8b ce                                           mov    ecx,esi
  0041ac84: 8b d8                                           mov    ebx,eax
  0041ac86: ff 92 d8 00 00 00                               call   DWORD PTR [edx+0xd8]
  0041ac8c: 8b ce                                           mov    ecx,esi
  0041ac8e: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0041ac91: c7 45 d4 01 00 00 00                            mov    DWORD PTR [ebp-0x2c],0x1
  0041ac98: c7 45 d8 03 00 00 00                            mov    DWORD PTR [ebp-0x28],0x3
  0041ac9f: c7 45 dc 00 00 00 00                            mov    DWORD PTR [ebp-0x24],0x0
  0041aca6: e8 95 35 07 00                                  call   0x48e240
  0041acab: 33 c9                                           xor    ecx,ecx
  0041acad: 66 8b c8                                        mov    cx,ax
  0041acb0: b8 67 66 66 66                                  mov    eax,0x66666667
  0041acb5: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0041acbb: f7 e9                                           imul   ecx
  0041acbd: 8b fa                                           mov    edi,edx
  0041acbf: c1 ff 03                                        sar    edi,0x3
  0041acc2: 8b c7                                           mov    eax,edi
  0041acc4: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0041acc7: c1 e8 1f                                        shr    eax,0x1f
  0041acca: 51                                              push   ecx
  0041accb: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041acd0: 03 f8                                           add    edi,eax
  0041acd2: e8 49 e4 03 00                                  call   0x459120
  0041acd7: 8d 44 07 05                                     lea    eax,[edi+eax*1+0x5]
  0041acdb: 03 d8                                           add    ebx,eax
  0041acdd: 8b 7d e4                                        mov    edi,DWORD PTR [ebp-0x1c]
  0041ace0: 53                                              push   ebx
  0041ace1: 03 f8                                           add    edi,eax
  0041ace3: 57                                              push   edi
  0041ace4: 50                                              push   eax
  0041ace5: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041ace8: 68 e8 20 50 00                                  push   0x5020e8
  0041aced: 52                                              push   edx
  0041acee: e8 a1 6d 0b 00                                  call   0x4d1a94
  0041acf3: 83 c4 14                                        add    esp,0x14
  0041acf6: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041acf9: 50                                              push   eax
  0041acfa: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041acfd: e8 b6 6d 0b 00                                  call   0x4d1ab8
  0041ad02: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ad04: 53                                              push   ebx
  0041ad05: 8b ce                                           mov    ecx,esi
  0041ad07: ff 92 d4 00 00 00                               call   DWORD PTR [edx+0xd4]
  0041ad0d: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ad0f: 6a 01                                           push   0x1
  0041ad11: 57                                              push   edi
  0041ad12: 8b ce                                           mov    ecx,esi
  0041ad14: ff 90 dc 00 00 00                               call   DWORD PTR [eax+0xdc]
  0041ad1a: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ad1c: 8b ce                                           mov    ecx,esi
  0041ad1e: ff 92 e4 00 00 00                               call   DWORD PTR [edx+0xe4]
  0041ad24: 8b ce                                           mov    ecx,esi
  0041ad26: 8b d8                                           mov    ebx,eax
  0041ad28: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ad2a: ff 90 ec 00 00 00                               call   DWORD PTR [eax+0xec]
  0041ad30: 8b ce                                           mov    ecx,esi
  0041ad32: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0041ad35: e8 36 35 07 00                                  call   0x48e270
  0041ad3a: 33 c9                                           xor    ecx,ecx
  0041ad3c: 66 8b c8                                        mov    cx,ax
  0041ad3f: b8 89 88 88 88                                  mov    eax,0x88888889
  0041ad44: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0041ad4a: f7 e9                                           imul   ecx
  0041ad4c: 8b fa                                           mov    edi,edx
  0041ad4e: 03 f9                                           add    edi,ecx
  0041ad50: c1 ff 05                                        sar    edi,0x5
  0041ad53: 8b cf                                           mov    ecx,edi
  0041ad55: c1 e9 1f                                        shr    ecx,0x1f
  0041ad58: 03 f9                                           add    edi,ecx
  0041ad5a: 8b ce                                           mov    ecx,esi
  0041ad5c: e8 cf 34 07 00                                  call   0x48e230
  0041ad61: 33 c9                                           xor    ecx,ecx
  0041ad63: 66 8b c8                                        mov    cx,ax
  0041ad66: b8 89 88 88 88                                  mov    eax,0x88888889
  0041ad6b: 6a 03                                           push   0x3
  0041ad6d: 6a 01                                           push   0x1
  0041ad6f: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0041ad75: f7 e9                                           imul   ecx
  0041ad77: 03 d1                                           add    edx,ecx
  0041ad79: c1 fa 04                                        sar    edx,0x4
  0041ad7c: 8b c2                                           mov    eax,edx
  0041ad7e: c1 e8 1f                                        shr    eax,0x1f
  0041ad81: 03 d7                                           add    edx,edi
  0041ad83: 03 c2                                           add    eax,edx
  0041ad85: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041ad8a: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0041ad8d: e8 0e e3 03 00                                  call   0x4590a0
  0041ad92: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  0041ad95: 8b 7d e0                                        mov    edi,DWORD PTR [ebp-0x20]
  0041ad98: 8d 44 02 02                                     lea    eax,[edx+eax*1+0x2]
  0041ad9c: 03 d8                                           add    ebx,eax
  0041ad9e: 03 f8                                           add    edi,eax
  0041ada0: 8b cb                                           mov    ecx,ebx
  0041ada2: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0041ada8: 51                                              push   ecx
  0041ada9: 8b d7                                           mov    edx,edi
  0041adab: 81 e2 ff ff 00 00                               and    edx,0xffff
  0041adb1: 52                                              push   edx
  0041adb2: 25 ff ff 00 00                                  and    eax,0xffff
  0041adb7: 50                                              push   eax
  0041adb8: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041adbb: 68 bc 20 50 00                                  push   0x5020bc
  0041adc0: 50                                              push   eax
  0041adc1: e8 ce 6c 0b 00                                  call   0x4d1a94
  0041adc6: 83 c4 14                                        add    esp,0x14
  0041adc9: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041adcc: 51                                              push   ecx
  0041adcd: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041add0: e8 e3 6c 0b 00                                  call   0x4d1ab8
  0041add5: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041add7: 53                                              push   ebx
  0041add8: 8b ce                                           mov    ecx,esi
  0041adda: ff 92 e8 00 00 00                               call   DWORD PTR [edx+0xe8]
  0041ade0: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ade2: bb 01 00 00 00                                  mov    ebx,0x1
  0041ade7: 53                                              push   ebx
  0041ade8: 57                                              push   edi
  0041ade9: 8b ce                                           mov    ecx,esi
  0041adeb: ff 90 f0 00 00 00                               call   DWORD PTR [eax+0xf0]
  0041adf1: 8b 8e 5c 03 00 00                               mov    ecx,DWORD PTR [esi+0x35c]
  0041adf7: 33 ff                                           xor    edi,edi
  0041adf9: 89 8e 58 03 00 00                               mov    DWORD PTR [esi+0x358],ecx
  0041adff: 89 be 78 03 00 00                               mov    DWORD PTR [esi+0x378],edi
  0041ae05: c6 86 6c 03 00 00 08                            mov    BYTE PTR [esi+0x36c],0x8
  0041ae0c: 39 be 78 03 00 00                               cmp    DWORD PTR [esi+0x378],edi
  0041ae12: 74 10                                           je     0x41ae24
  0041ae14: 8b 96 58 03 00 00                               mov    edx,DWORD PTR [esi+0x358]
  0041ae1a: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041ae1c: 89 86 58 03 00 00                               mov    DWORD PTR [esi+0x358],eax
  0041ae22: eb 06                                           jmp    0x41ae2a
  0041ae24: 89 9e 78 03 00 00                               mov    DWORD PTR [esi+0x378],ebx
  0041ae2a: 8b 86 58 03 00 00                               mov    eax,DWORD PTR [esi+0x358]
  0041ae30: 3b c7                                           cmp    eax,edi
  0041ae32: 74 1a                                           je     0x41ae4e
  0041ae34: 8b c8                                           mov    ecx,eax
  0041ae36: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0041ae39: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041ae3b: 50                                              push   eax
  0041ae3c: 57                                              push   edi
  0041ae3d: 57                                              push   edi
  0041ae3e: 57                                              push   edi
  0041ae3f: 57                                              push   edi
  0041ae40: 56                                              push   esi
  0041ae41: 6a 20                                           push   0x20
  0041ae43: 52                                              push   edx
  0041ae44: e8 b7 51 04 00                                  call   0x460000
  0041ae49: 83 c4 20                                        add    esp,0x20
  0041ae4c: eb be                                           jmp    0x41ae0c
  0041ae4e: 39 be 78 03 00 00                               cmp    DWORD PTR [esi+0x378],edi
  0041ae54: 74 07                                           je     0x41ae5d
  0041ae56: c6 86 6c 03 00 00 07                            mov    BYTE PTR [esi+0x36c],0x7
  0041ae5d: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0041ae60: 89 be 78 03 00 00                               mov    DWORD PTR [esi+0x378],edi
  0041ae66: e8 55 b0 06 00                                  call   0x485ec0
  0041ae6b: 6a 02                                           push   0x2
  0041ae6d: e8 9e 6e 05 00                                  call   0x471d10
  0041ae72: 83 c4 04                                        add    esp,0x4
  0041ae75: 85 c0                                           test   eax,eax
  0041ae77: 74 19                                           je     0x41ae92
  0041ae79: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0041ae7c: 50                                              push   eax
  0041ae7d: 6a 40                                           push   0x40
  0041ae7f: 6a 02                                           push   0x2
  0041ae81: e8 8a 6e 05 00                                  call   0x471d10
  0041ae86: 83 c4 04                                        add    esp,0x4
  0041ae89: 50                                              push   eax
  0041ae8a: e8 61 3c 0b 00                                  call   0x4ceaf0
  0041ae8f: 83 c4 0c                                        add    esp,0xc
  0041ae92: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0041ae95: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ae97: 50                                              push   eax
  0041ae98: 8b ce                                           mov    ecx,esi
  0041ae9a: ff 92 40 01 00 00                               call   DWORD PTR [edx+0x140]
  0041aea0: 8b ce                                           mov    ecx,esi
  0041aea2: e8 19 4e 00 00                                  call   0x41fcc0
  0041aea7: 85 c0                                           test   eax,eax
  0041aea9: 74 0e                                           je     0x41aeb9
  0041aeab: 8b ce                                           mov    ecx,esi
  0041aead: e8 0e 4e 00 00                                  call   0x41fcc0
  0041aeb2: 8b c8                                           mov    ecx,eax
  0041aeb4: e8 a7 fe 01 00                                  call   0x43ad60
  0041aeb9: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041aebc: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041aec0: e8 7b 6b 0b 00                                  call   0x4d1a40
  0041aec5: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041aec8: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0041aecc: e8 6f 6b 0b 00                                  call   0x4d1a40
  0041aed1: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0041aed4: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041aedb: e8 a0 af 06 00                                  call   0x485e80
  0041aee0: 5b                                              pop    ebx
  0041aee1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041aee4: 5f                                              pop    edi
  0041aee5: 5e                                              pop    esi
  0041aee6: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041aeed: 8b e5                                           mov    esp,ebp
  0041aeef: 5d                                              pop    ebp
  0041aef0: c3                                              ret

; ===== 0x0041CF30 ?Kill@Character@@QAEHXZ =====
  0041cf30: 8b 81 6c 01 00 00                               mov    eax,DWORD PTR [ecx+0x16c]
  0041cf36: c3                                              ret

; ===== 0x0041CF40 ?GetCorpse@Character@@UAEGXZ =====
  0041cf40: 66 8b 81 84 00 00 00                            mov    ax,WORD PTR [ecx+0x84]
  0041cf47: c3                                              ret

; ===== 0x0041CF50 ?reset_character@Character@@QAEXXZ =====
  0041cf50: 53                                              push   ebx
  0041cf51: 56                                              push   esi
  0041cf52: 57                                              push   edi
  0041cf53: 8b f1                                           mov    esi,ecx
  0041cf55: 8b 3e                                           mov    edi,DWORD PTR [esi]
  0041cf57: 83 ec 0c                                        sub    esp,0xc
  0041cf5a: 83 c8 ff                                        or     eax,0xffffffff
  0041cf5d: 8b dc                                           mov    ebx,esp
  0041cf5f: 83 c9 ff                                        or     ecx,0xffffffff
  0041cf62: 89 03                                           mov    DWORD PTR [ebx],eax
  0041cf64: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  0041cf67: 83 ca ff                                        or     edx,0xffffffff
  0041cf6a: 8b ce                                           mov    ecx,esi
  0041cf6c: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0041cf6f: ff 57 20                                        call   DWORD PTR [edi+0x20]
  0041cf72: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041cf74: 8b ce                                           mov    ecx,esi
  0041cf76: ff 50 14                                        call   DWORD PTR [eax+0x14]
  0041cf79: bb 01 00 00 00                                  mov    ebx,0x1
  0041cf7e: 8d be a0 01 00 00                               lea    edi,[esi+0x1a0]
  0041cf84: 83 3f 00                                        cmp    DWORD PTR [edi],0x0
  0041cf87: 74 31                                           je     0x41cfba
  0041cf89: 83 fb 10                                        cmp    ebx,0x10
  0041cf8c: 7d 1c                                           jge    0x41cfaa
  0041cf8e: b9 10 00 00 00                                  mov    ecx,0x10
  0041cf93: 8d 47 04                                        lea    eax,[edi+0x4]
  0041cf96: 2b cb                                           sub    ecx,ebx
  0041cf98: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041cf9a: 3b 17                                           cmp    edx,DWORD PTR [edi]
  0041cf9c: 75 06                                           jne    0x41cfa4
  0041cf9e: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0041cfa4: 83 c0 04                                        add    eax,0x4
  0041cfa7: 49                                              dec    ecx
  0041cfa8: 75 ee                                           jne    0x41cf98
  0041cfaa: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0041cfac: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041cfae: ff 90 c4 01 00 00                               call   DWORD PTR [eax+0x1c4]
  0041cfb4: c7 07 00 00 00 00                               mov    DWORD PTR [edi],0x0
  0041cfba: 83 c7 04                                        add    edi,0x4
  0041cfbd: 43                                              inc    ebx
  0041cfbe: 8d 4b ff                                        lea    ecx,[ebx-0x1]
  0041cfc1: 83 f9 10                                        cmp    ecx,0x10
  0041cfc4: 7c be                                           jl     0x41cf84
  0041cfc6: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041cfcc: 8b 50 24                                        mov    edx,DWORD PTR [eax+0x24]
  0041cfcf: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0041cfd2: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  0041cfd9: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  0041cfdd: bf 02 00 00 00                                  mov    edi,0x2
  0041cfe2: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041cfe8: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  0041cfeb: 85 c9                                           test   ecx,ecx
  0041cfed: 74 0a                                           je     0x41cff9
  0041cfef: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041cff2: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041cff4: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0041cff7: eb 07                                           jmp    0x41d000
  0041cff9: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  0041d000: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041d003: 85 c9                                           test   ecx,ecx
  0041d005: 0f 84 1f 01 00 00                               je     0x41d12a
  0041d00b: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041d011: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041d014: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0041d017: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041d019: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0041d01f: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041d025: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041d028: 8b 50 28                                        mov    edx,DWORD PTR [eax+0x28]
  0041d02b: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  0041d02e: ff 48 38                                        dec    DWORD PTR [eax+0x38]
  0041d031: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041d034: 3b ca                                           cmp    ecx,edx
  0041d036: 74 5e                                           je     0x41d096
  0041d038: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  0041d03b: 74 55                                           je     0x41d092
  0041d03d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041d03f: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0041d042: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041d045: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041d048: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0041d04b: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0041d04d: 89 0a                                           mov    DWORD PTR [edx],ecx
  0041d04f: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  0041d052: 83 f9 01                                        cmp    ecx,0x1
  0041d055: 75 1a                                           jne    0x41d071
  0041d057: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0041d05a: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0041d05d: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0041d060: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0041d063: 50                                              push   eax
  0041d064: e8 f7 4f 02 00                                  call   0x442060
  0041d069: 83 c4 04                                        add    esp,0x4
  0041d06c: e9 71 ff ff ff                                  jmp    0x41cfe2
  0041d071: 3b cf                                           cmp    ecx,edi
  0041d073: 0f 85 a0 00 00 00                               jne    0x41d119
  0041d079: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0041d07c: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0041d07e: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0041d081: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0041d084: 50                                              push   eax
  0041d085: e8 d6 4f 02 00                                  call   0x442060
  0041d08a: 83 c4 04                                        add    esp,0x4
  0041d08d: e9 50 ff ff ff                                  jmp    0x41cfe2
  0041d092: 3b ca                                           cmp    ecx,edx
  0041d094: 75 3a                                           jne    0x41d0d0
  0041d096: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  0041d099: 74 3a                                           je     0x41d0d5
  0041d09b: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0041d09e: c7 02 00 00 00 00                               mov    DWORD PTR [edx],0x0
  0041d0a4: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041d0a7: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0041d0aa: 89 50 28                                        mov    DWORD PTR [eax+0x28],edx
  0041d0ad: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0041d0b0: 39 78 40                                        cmp    DWORD PTR [eax+0x40],edi
  0041d0b3: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0041d0b6: 75 61                                           jne    0x41d119
  0041d0b8: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  0041d0bf: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0041d0c2: 50                                              push   eax
  0041d0c3: e8 98 4f 02 00                                  call   0x442060
  0041d0c8: 83 c4 04                                        add    esp,0x4
  0041d0cb: e9 12 ff ff ff                                  jmp    0x41cfe2
  0041d0d0: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  0041d0d3: 75 36                                           jne    0x41d10b
  0041d0d5: 3b ca                                           cmp    ecx,edx
  0041d0d7: 74 32                                           je     0x41d10b
  0041d0d9: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0041d0db: c7 41 04 00 00 00 00                            mov    DWORD PTR [ecx+0x4],0x0
  0041d0e2: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0041d0e5: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0041d0e7: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0041d0ea: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  0041d0ed: 83 78 40 01                                     cmp    DWORD PTR [eax+0x40],0x1
  0041d0f1: 75 26                                           jne    0x41d119
  0041d0f3: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  0041d0fa: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0041d0fd: 50                                              push   eax
  0041d0fe: e8 5d 4f 02 00                                  call   0x442060
  0041d103: 83 c4 04                                        add    esp,0x4
  0041d106: e9 d7 fe ff ff                                  jmp    0x41cfe2
  0041d10b: 33 c9                                           xor    ecx,ecx
  0041d10d: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0041d110: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  0041d113: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  0041d116: 89 48 40                                        mov    DWORD PTR [eax+0x40],ecx
  0041d119: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0041d11c: 50                                              push   eax
  0041d11d: e8 3e 4f 02 00                                  call   0x442060
  0041d122: 83 c4 04                                        add    esp,0x4
  0041d125: e9 b8 fe ff ff                                  jmp    0x41cfe2
  0041d12a: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  0041d12d: 85 c9                                           test   ecx,ecx
  0041d12f: 74 04                                           je     0x41d135
  0041d131: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  0041d135: 6a 00                                           push   0x0
  0041d137: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  0041d13e: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041d140: 6a 00                                           push   0x0
  0041d142: 8b ce                                           mov    ecx,esi
  0041d144: ff 92 dc 00 00 00                               call   DWORD PTR [edx+0xdc]
  0041d14a: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041d14c: 6a 01                                           push   0x1
  0041d14e: 8b ce                                           mov    ecx,esi
  0041d150: ff 90 d4 00 00 00                               call   DWORD PTR [eax+0xd4]
  0041d156: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041d158: 6a 01                                           push   0x1
  0041d15a: 33 ff                                           xor    edi,edi
  0041d15c: 57                                              push   edi
  0041d15d: 8b ce                                           mov    ecx,esi
  0041d15f: ff 92 f0 00 00 00                               call   DWORD PTR [edx+0xf0]
  0041d165: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041d167: 57                                              push   edi
  0041d168: 8b ce                                           mov    ecx,esi
  0041d16a: ff 90 e8 00 00 00                               call   DWORD PTR [eax+0xe8]
  0041d170: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041d172: 57                                              push   edi
  0041d173: 57                                              push   edi
  0041d174: 8b ce                                           mov    ecx,esi
  0041d176: ff 52 50                                        call   DWORD PTR [edx+0x50]
  0041d179: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041d17b: 57                                              push   edi
  0041d17c: 57                                              push   edi
  0041d17d: 8b ce                                           mov    ecx,esi
  0041d17f: ff 90 08 01 00 00                               call   DWORD PTR [eax+0x108]
  0041d185: 66 89 be e0 01 00 00                            mov    WORD PTR [esi+0x1e0],di
  0041d18c: 66 89 be e2 01 00 00                            mov    WORD PTR [esi+0x1e2],di
  0041d193: 66 89 be 84 00 00 00                            mov    WORD PTR [esi+0x84],di
  0041d19a: 66 89 7e 7c                                     mov    WORD PTR [esi+0x7c],di
  0041d19e: 5f                                              pop    edi
  0041d19f: 5e                                              pop    esi
  0041d1a0: 5b                                              pop    ebx
  0041d1a1: c3                                              ret

; ===== 0x0041D1B0 ?GetXP@Character@@UAE_JXZ =====
  0041d1b0: a1 58 14 51 00                                  mov    eax,ds:0x511458
  0041d1b5: 56                                              push   esi
  0041d1b6: 8b f1                                           mov    esi,ecx
  0041d1b8: 57                                              push   edi
  0041d1b9: b9 58 14 51 00                                  mov    ecx,0x511458
  0041d1be: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0041d1c1: 8b be 50 01 00 00                               mov    edi,DWORD PTR [esi+0x150]
  0041d1c7: 8b 15 58 14 51 00                               mov    edx,DWORD PTR ds:0x511458
  0041d1cd: 8b b6 54 01 00 00                               mov    esi,DWORD PTR [esi+0x154]
  0041d1d3: b9 58 14 51 00                                  mov    ecx,0x511458
  0041d1d8: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041d1db: 8b c7                                           mov    eax,edi
  0041d1dd: 5f                                              pop    edi
  0041d1de: 8b d6                                           mov    edx,esi
  0041d1e0: 5e                                              pop    esi
  0041d1e1: c3                                              ret

; ===== 0x0041D1F0 ?SetXP@Character@@UAEX_J@Z =====
  0041d1f0: 55                                              push   ebp
  0041d1f1: 8b ec                                           mov    ebp,esp
  0041d1f3: a1 58 14 51 00                                  mov    eax,ds:0x511458
  0041d1f8: 56                                              push   esi
  0041d1f9: 8b f1                                           mov    esi,ecx
  0041d1fb: b9 58 14 51 00                                  mov    ecx,0x511458
  0041d200: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0041d203: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0041d206: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0041d209: 89 8e 50 01 00 00                               mov    DWORD PTR [esi+0x150],ecx
  0041d20f: 89 96 54 01 00 00                               mov    DWORD PTR [esi+0x154],edx
  0041d215: a1 58 14 51 00                                  mov    eax,ds:0x511458
  0041d21a: b9 58 14 51 00                                  mov    ecx,0x511458
  0041d21f: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041d222: 5e                                              pop    esi
  0041d223: 5d                                              pop    ebp
  0041d224: c2 08 00                                        ret    0x8

; ===== 0x0041D230 ?GetBackpack@Character@@UAEPAV?$TemplateList@VUnit@@@@XZ =====
  0041d230: 8b 81 9c 01 00 00                               mov    eax,DWORD PTR [ecx+0x19c]
  0041d236: c3                                              ret

; ===== 0x0041D240 ?SetBackpack@Character@@UAEXPAV?$TemplateList@VUnit@@@@@Z =====
  0041d240: 55                                              push   ebp
  0041d241: 8b ec                                           mov    ebp,esp
  0041d243: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041d246: 89 81 9c 01 00 00                               mov    DWORD PTR [ecx+0x19c],eax
  0041d24c: 5d                                              pop    ebp
  0041d24d: c2 04 00                                        ret    0x4

; ===== 0x0041D5C0 ?GetClan@Character@@UAEGXZ =====
  0041d5c0: 66 8b 81 34 01 00 00                            mov    ax,WORD PTR [ecx+0x134]
  0041d5c7: c3                                              ret

; ===== 0x0041D5D0 ?SetClan@Character@@UAEXG@Z =====
  0041d5d0: 55                                              push   ebp
  0041d5d1: 8b ec                                           mov    ebp,esp
  0041d5d3: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  0041d5d7: 66 89 81 34 01 00 00                            mov    WORD PTR [ecx+0x134],ax
  0041d5de: 5d                                              pop    ebp
  0041d5df: c2 04 00                                        ret    0x4

; ===== 0x0041D5F0 ?GetTrueMaxHP@Character@@UAEKXZ =====
  0041d5f0: 8b 81 38 01 00 00                               mov    eax,DWORD PTR [ecx+0x138]
  0041d5f6: 85 c0                                           test   eax,eax
  0041d5f8: 75 05                                           jne    0x41d5ff
  0041d5fa: b8 01 00 00 00                                  mov    eax,0x1
  0041d5ff: c3                                              ret

; ===== 0x0041D600 ?SetMaxHP@Character@@UAEXK@Z =====
  0041d600: 55                                              push   ebp
  0041d601: 8b ec                                           mov    ebp,esp
  0041d603: 6a ff                                           push   0xffffffff
  0041d605: 68 d8 40 4d 00                                  push   0x4d40d8
  0041d60a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041d610: 50                                              push   eax
  0041d611: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041d618: 83 ec 18                                        sub    esp,0x18
  0041d61b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041d61e: 56                                              push   esi
  0041d61f: 8b f1                                           mov    esi,ecx
  0041d621: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0041d624: 89 86 38 01 00 00                               mov    DWORD PTR [esi+0x138],eax
  0041d62a: e8 c1 87 06 00                                  call   0x485df0
  0041d62f: 6a 21                                           push   0x21
  0041d631: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0041d634: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041d63b: e8 10 8b 06 00                                  call   0x486150
  0041d640: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041d642: 8b ce                                           mov    ecx,esi
  0041d644: ff 92 d8 00 00 00                               call   DWORD PTR [edx+0xd8]
  0041d64a: 50                                              push   eax
  0041d64b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0041d64e: e8 9d 8b 06 00                                  call   0x4861f0
  0041d653: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041d655: 8b ce                                           mov    ecx,esi
  0041d657: ff 90 cc 00 00 00                               call   DWORD PTR [eax+0xcc]
  0041d65d: 50                                              push   eax
  0041d65e: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0041d661: e8 8a 8b 06 00                                  call   0x4861f0
  0041d666: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041d668: 8d 45 dc                                        lea    eax,[ebp-0x24]
  0041d66b: 50                                              push   eax
  0041d66c: 8b ce                                           mov    ecx,esi
  0041d66e: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  0041d674: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0041d677: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041d67e: e8 fd 87 06 00                                  call   0x485e80
  0041d683: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041d686: 5e                                              pop    esi
  0041d687: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041d68e: 8b e5                                           mov    esp,ebp
  0041d690: 5d                                              pop    ebp
  0041d691: c2 04 00                                        ret    0x4

; ===== 0x0041D780 ?GetTrueMaxMana@Character@@UAEGXZ =====
  0041d780: 66 8b 81 40 01 00 00                            mov    ax,WORD PTR [ecx+0x140]
  0041d787: c3                                              ret

; ===== 0x0041D790 ?SetMaxMana@Character@@UAEXG@Z =====
  0041d790: 55                                              push   ebp
  0041d791: 8b ec                                           mov    ebp,esp
  0041d793: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  0041d797: 66 89 81 40 01 00 00                            mov    WORD PTR [ecx+0x140],ax
  0041d79e: 5d                                              pop    ebp
  0041d79f: c2 04 00                                        ret    0x4

; ===== 0x0041D7B0 ?GetMana@Character@@UAEGXZ =====
  0041d7b0: 66 8b 81 42 01 00 00                            mov    ax,WORD PTR [ecx+0x142]
  0041d7b7: c3                                              ret

; ===== 0x0041D850 ?GetGold@Character@@UAEHXZ =====
  0041d850: a1 58 14 51 00                                  mov    eax,ds:0x511458
  0041d855: 56                                              push   esi
  0041d856: 8b f1                                           mov    esi,ecx
  0041d858: b9 58 14 51 00                                  mov    ecx,0x511458
  0041d85d: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0041d860: 8b 15 58 14 51 00                               mov    edx,DWORD PTR ds:0x511458
  0041d866: 8b b6 98 01 00 00                               mov    esi,DWORD PTR [esi+0x198]
  0041d86c: b9 58 14 51 00                                  mov    ecx,0x511458
  0041d871: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041d874: 8b c6                                           mov    eax,esi
  0041d876: 5e                                              pop    esi
  0041d877: c3                                              ret

; ===== 0x0041D9B0 ?SetName@Character@@UAEXVCString@@@Z =====
  0041d9b0: 55                                              push   ebp
  0041d9b1: 8b ec                                           mov    ebp,esp
  0041d9b3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041d9b9: 6a ff                                           push   0xffffffff
  0041d9bb: 68 58 41 4d 00                                  push   0x4d4158
  0041d9c0: 50                                              push   eax
  0041d9c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041d9c8: 8d 45 08                                        lea    eax,[ebp+0x8]
  0041d9cb: 50                                              push   eax
  0041d9cc: 81 c1 5c 01 00 00                               add    ecx,0x15c
  0041d9d2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041d9d9: e8 68 40 0b 00                                  call   0x4d1a46
  0041d9de: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0041d9e1: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041d9e8: e8 53 40 0b 00                                  call   0x4d1a40
  0041d9ed: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041d9f0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041d9f7: 8b e5                                           mov    esp,ebp
  0041d9f9: 5d                                              pop    ebp
  0041d9fa: c2 04 00                                        ret    0x4

; ===== 0x0041DA00 ?GetName@Character@@UAE?AVCString@@G@Z =====
  0041da00: 55                                              push   ebp
  0041da01: 8b ec                                           mov    ebp,esp
  0041da03: 51                                              push   ecx
  0041da04: 8b 91 60 01 00 00                               mov    edx,DWORD PTR [ecx+0x160]
  0041da0a: 8d 81 60 01 00 00                               lea    eax,[ecx+0x160]
  0041da10: 56                                              push   esi
  0041da11: 8b 72 f8                                        mov    esi,DWORD PTR [edx-0x8]
  0041da14: 85 f6                                           test   esi,esi
  0041da16: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041da1d: 75 1a                                           jne    0x41da39
  0041da1f: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0041da22: 81 c1 5c 01 00 00                               add    ecx,0x15c
  0041da28: 51                                              push   ecx
  0041da29: 8b ce                                           mov    ecx,esi
  0041da2b: e8 1c 40 0b 00                                  call   0x4d1a4c
  0041da30: 8b c6                                           mov    eax,esi
  0041da32: 5e                                              pop    esi
  0041da33: 8b e5                                           mov    esp,ebp
  0041da35: 5d                                              pop    ebp
  0041da36: c2 08 00                                        ret    0x8
  0041da39: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0041da3c: 50                                              push   eax
  0041da3d: 8b ce                                           mov    ecx,esi
  0041da3f: e8 08 40 0b 00                                  call   0x4d1a4c
  0041da44: 8b c6                                           mov    eax,esi
  0041da46: 5e                                              pop    esi
  0041da47: 8b e5                                           mov    esp,ebp
  0041da49: 5d                                              pop    ebp
  0041da4a: c2 08 00                                        ret    0x8

; ===== 0x0041DA80 ?SetPseudoName@Character@@QAEXVCString@@@Z =====
  0041da80: 55                                              push   ebp
  0041da81: 8b ec                                           mov    ebp,esp
  0041da83: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041da89: 6a ff                                           push   0xffffffff
  0041da8b: 68 78 41 4d 00                                  push   0x4d4178
  0041da90: 50                                              push   eax
  0041da91: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041da98: 8d 45 08                                        lea    eax,[ebp+0x8]
  0041da9b: 50                                              push   eax
  0041da9c: 81 c1 60 01 00 00                               add    ecx,0x160
  0041daa2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041daa9: e8 98 3f 0b 00                                  call   0x4d1a46
  0041daae: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0041dab1: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041dab8: e8 83 3f 0b 00                                  call   0x4d1a40
  0041dabd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041dac0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041dac7: 8b e5                                           mov    esp,ebp
  0041dac9: 5d                                              pop    ebp
  0041daca: c2 04 00                                        ret    0x4

; ===== 0x0041DB30 ?UseSkillPnts@Character@@QAEHG@Z =====
  0041db30: 55                                              push   ebp
  0041db31: 8b ec                                           mov    ebp,esp
  0041db33: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041db36: 33 c0                                           xor    eax,eax
  0041db38: 66 8b 81 e0 01 00 00                            mov    ax,WORD PTR [ecx+0x1e0]
  0041db3f: 66 3b c2                                        cmp    ax,dx
  0041db42: 73 06                                           jae    0x41db4a
  0041db44: 33 c0                                           xor    eax,eax
  0041db46: 5d                                              pop    ebp
  0041db47: c2 04 00                                        ret    0x4
  0041db4a: 2b c2                                           sub    eax,edx
  0041db4c: 66 89 81 e0 01 00 00                            mov    WORD PTR [ecx+0x1e0],ax
  0041db53: b8 01 00 00 00                                  mov    eax,0x1
  0041db58: 5d                                              pop    ebp
  0041db59: c2 04 00                                        ret    0x4

; ===== 0x0041DB60 ?UseStatPnts@Character@@UAEHE@Z =====
  0041db60: 55                                              push   ebp
  0041db61: 8b ec                                           mov    ebp,esp
  0041db63: 66 0f b6 55 08                                  movzx  dx,BYTE PTR [ebp+0x8]
  0041db68: 33 c0                                           xor    eax,eax
  0041db6a: 66 8b 81 e2 01 00 00                            mov    ax,WORD PTR [ecx+0x1e2]
  0041db71: 66 3b c2                                        cmp    ax,dx
  0041db74: 73 06                                           jae    0x41db7c
  0041db76: 33 c0                                           xor    eax,eax
  0041db78: 5d                                              pop    ebp
  0041db79: c2 04 00                                        ret    0x4
  0041db7c: 2b c2                                           sub    eax,edx
  0041db7e: 66 89 81 e2 01 00 00                            mov    WORD PTR [ecx+0x1e2],ax
  0041db85: b8 01 00 00 00                                  mov    eax,0x1
  0041db8a: 5d                                              pop    ebp
  0041db8b: c2 04 00                                        ret    0x4

; ===== 0x0041DB90 ?TrainSkillPnt@Character@@QAEHHHG@Z =====
  0041db90: 55                                              push   ebp
  0041db91: 8b ec                                           mov    ebp,esp
  0041db93: 53                                              push   ebx
  0041db94: 56                                              push   esi
  0041db95: 8b d9                                           mov    ebx,ecx
  0041db97: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0041db9a: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0041db9c: 57                                              push   edi
  0041db9d: 51                                              push   ecx
  0041db9e: 8b cb                                           mov    ecx,ebx
  0041dba0: ff 90 70 01 00 00                               call   DWORD PTR [eax+0x170]
  0041dba6: 8b f8                                           mov    edi,eax
  0041dba8: 85 ff                                           test   edi,edi
  0041dbaa: 74 3d                                           je     0x41dbe9
  0041dbac: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0041dbaf: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0041dbb2: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0041dbb5: 25 ff ff 00 00                                  and    eax,0xffff
  0041dbba: 8d 14 31                                        lea    edx,[ecx+esi*1]
  0041dbbd: 3b d0                                           cmp    edx,eax
  0041dbbf: 7e 04                                           jle    0x41dbc5
  0041dbc1: 2b c1                                           sub    eax,ecx
  0041dbc3: 8b f0                                           mov    esi,eax
  0041dbc5: 85 f6                                           test   esi,esi
  0041dbc7: 7e 3b                                           jle    0x41dc04
  0041dbc9: 56                                              push   esi
  0041dbca: 8b cb                                           mov    ecx,ebx
  0041dbcc: e8 5f ff ff ff                                  call   0x41db30
  0041dbd1: 85 c0                                           test   eax,eax
  0041dbd3: 74 2f                                           je     0x41dc04
  0041dbd5: 81 7d 08 10 27 00 00                            cmp    DWORD PTR [ebp+0x8],0x2710
  0041dbdc: 7d 17                                           jge    0x41dbf5
  0041dbde: 56                                              push   esi
  0041dbdf: 57                                              push   edi
  0041dbe0: 53                                              push   ebx
  0041dbe1: e8 ba 2b 04 00                                  call   0x4607a0
  0041dbe6: 83 c4 0c                                        add    esp,0xc
  0041dbe9: 5f                                              pop    edi
  0041dbea: 5e                                              pop    esi
  0041dbeb: b8 01 00 00 00                                  mov    eax,0x1
  0041dbf0: 5b                                              pop    ebx
  0041dbf1: 5d                                              pop    ebp
  0041dbf2: c2 0c 00                                        ret    0xc
  0041dbf5: 01 77 04                                        add    DWORD PTR [edi+0x4],esi
  0041dbf8: 5f                                              pop    edi
  0041dbf9: 5e                                              pop    esi
  0041dbfa: b8 01 00 00 00                                  mov    eax,0x1
  0041dbff: 5b                                              pop    ebx
  0041dc00: 5d                                              pop    ebp
  0041dc01: c2 0c 00                                        ret    0xc
  0041dc04: 5f                                              pop    edi
  0041dc05: 5e                                              pop    esi
  0041dc06: 33 c0                                           xor    eax,eax
  0041dc08: 5b                                              pop    ebx
  0041dc09: 5d                                              pop    ebp
  0041dc0a: c2 0c 00                                        ret    0xc

; ===== 0x0041DC10 ?attack_hit@Character@@UAEHPAU_ATTACK_STRUCTURE@@PAVUnit@@@Z =====
  0041dc10: 55                                              push   ebp
  0041dc11: 8b ec                                           mov    ebp,esp
  0041dc13: 51                                              push   ecx
  0041dc14: 53                                              push   ebx
  0041dc15: 56                                              push   esi
  0041dc16: 57                                              push   edi
  0041dc17: 8b f1                                           mov    esi,ecx
  0041dc19: e8 62 20 00 00                                  call   0x41fc80
  0041dc1e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041dc21: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0041dc24: 57                                              push   edi
  0041dc25: 6a 00                                           push   0x0
  0041dc27: 53                                              push   ebx
  0041dc28: 6a 1c                                           push   0x1c
  0041dc2a: 8b ce                                           mov    ecx,esi
  0041dc2c: e8 df f4 06 00                                  call   0x48d110
  0041dc31: 8b 8e cc 01 00 00                               mov    ecx,DWORD PTR [esi+0x1cc]
  0041dc37: 85 c9                                           test   ecx,ecx
  0041dc39: 74 0f                                           je     0x41dc4a
  0041dc3b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041dc3d: 8d 55 fc                                        lea    edx,[ebp-0x4]
  0041dc40: 52                                              push   edx
  0041dc41: 53                                              push   ebx
  0041dc42: 57                                              push   edi
  0041dc43: 56                                              push   esi
  0041dc44: 51                                              push   ecx
  0041dc45: 6a 1c                                           push   0x1c
  0041dc47: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041dc4a: 8b 8e d0 01 00 00                               mov    ecx,DWORD PTR [esi+0x1d0]
  0041dc50: 85 c9                                           test   ecx,ecx
  0041dc52: 74 0f                                           je     0x41dc63
  0041dc54: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041dc56: 8d 55 fc                                        lea    edx,[ebp-0x4]
  0041dc59: 52                                              push   edx
  0041dc5a: 53                                              push   ebx
  0041dc5b: 57                                              push   edi
  0041dc5c: 56                                              push   esi
  0041dc5d: 51                                              push   ecx
  0041dc5e: 6a 1c                                           push   0x1c
  0041dc60: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041dc63: 8b 8e b8 01 00 00                               mov    ecx,DWORD PTR [esi+0x1b8]
  0041dc69: 85 c9                                           test   ecx,ecx
  0041dc6b: 74 0f                                           je     0x41dc7c
  0041dc6d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041dc6f: 8d 55 fc                                        lea    edx,[ebp-0x4]
  0041dc72: 52                                              push   edx
  0041dc73: 53                                              push   ebx
  0041dc74: 57                                              push   edi
  0041dc75: 56                                              push   esi
  0041dc76: 51                                              push   ecx
  0041dc77: 6a 1c                                           push   0x1c
  0041dc79: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041dc7c: 8b 8e bc 01 00 00                               mov    ecx,DWORD PTR [esi+0x1bc]
  0041dc82: 85 c9                                           test   ecx,ecx
  0041dc84: 74 0f                                           je     0x41dc95
  0041dc86: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041dc88: 8d 55 fc                                        lea    edx,[ebp-0x4]
  0041dc8b: 52                                              push   edx
  0041dc8c: 53                                              push   ebx
  0041dc8d: 57                                              push   edi
  0041dc8e: 56                                              push   esi
  0041dc8f: 51                                              push   ecx
  0041dc90: 6a 1c                                           push   0x1c
  0041dc92: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041dc95: 8b 8e c0 01 00 00                               mov    ecx,DWORD PTR [esi+0x1c0]
  0041dc9b: 85 c9                                           test   ecx,ecx
  0041dc9d: 74 0f                                           je     0x41dcae
  0041dc9f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041dca1: 8d 55 fc                                        lea    edx,[ebp-0x4]
  0041dca4: 52                                              push   edx
  0041dca5: 53                                              push   ebx
  0041dca6: 57                                              push   edi
  0041dca7: 56                                              push   esi
  0041dca8: 51                                              push   ecx
  0041dca9: 6a 1c                                           push   0x1c
  0041dcab: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041dcae: 8b 8e c4 01 00 00                               mov    ecx,DWORD PTR [esi+0x1c4]
  0041dcb4: 39 8e c0 01 00 00                               cmp    DWORD PTR [esi+0x1c0],ecx
  0041dcba: 74 13                                           je     0x41dccf
  0041dcbc: 85 c9                                           test   ecx,ecx
  0041dcbe: 74 0f                                           je     0x41dccf
  0041dcc0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041dcc2: 8d 55 fc                                        lea    edx,[ebp-0x4]
  0041dcc5: 52                                              push   edx
  0041dcc6: 53                                              push   ebx
  0041dcc7: 57                                              push   edi
  0041dcc8: 56                                              push   esi
  0041dcc9: 51                                              push   ecx
  0041dcca: 6a 1c                                           push   0x1c
  0041dccc: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041dccf: 8b 86 4c 02 00 00                               mov    eax,DWORD PTR [esi+0x24c]
  0041dcd5: 89 86 48 02 00 00                               mov    DWORD PTR [esi+0x248],eax
  0041dcdb: c7 86 68 02 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x268],0x0
  0041dce5: c6 86 5c 02 00 00 08                            mov    BYTE PTR [esi+0x25c],0x8
  0041dcec: 8b 86 68 02 00 00                               mov    eax,DWORD PTR [esi+0x268]
  0041dcf2: 85 c0                                           test   eax,eax
  0041dcf4: 74 10                                           je     0x41dd06
  0041dcf6: 8b 8e 48 02 00 00                               mov    ecx,DWORD PTR [esi+0x248]
  0041dcfc: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041dcfe: 89 96 48 02 00 00                               mov    DWORD PTR [esi+0x248],edx
  0041dd04: eb 0a                                           jmp    0x41dd10
  0041dd06: c7 86 68 02 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x268],0x1
  0041dd10: 8b 86 48 02 00 00                               mov    eax,DWORD PTR [esi+0x248]
  0041dd16: 85 c0                                           test   eax,eax
  0041dd18: 74 1a                                           je     0x41dd34
  0041dd1a: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041dd1d: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041dd1f: 50                                              push   eax
  0041dd20: 6a 00                                           push   0x0
  0041dd22: 53                                              push   ebx
  0041dd23: 57                                              push   edi
  0041dd24: 6a 00                                           push   0x0
  0041dd26: 56                                              push   esi
  0041dd27: 6a 02                                           push   0x2
  0041dd29: 51                                              push   ecx
  0041dd2a: e8 d1 22 04 00                                  call   0x460000
  0041dd2f: 83 c4 20                                        add    esp,0x20
  0041dd32: eb b8                                           jmp    0x41dcec
  0041dd34: 8b 86 68 02 00 00                               mov    eax,DWORD PTR [esi+0x268]
  0041dd3a: 85 c0                                           test   eax,eax
  0041dd3c: 74 07                                           je     0x41dd45
  0041dd3e: c6 86 5c 02 00 00 07                            mov    BYTE PTR [esi+0x25c],0x7
  0041dd45: 5f                                              pop    edi
  0041dd46: c7 86 68 02 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x268],0x0
  0041dd50: 5e                                              pop    esi
  0041dd51: 33 c0                                           xor    eax,eax
  0041dd53: 5b                                              pop    ebx
  0041dd54: 8b e5                                           mov    esp,ebp
  0041dd56: 5d                                              pop    ebp
  0041dd57: c2 08 00                                        ret    0x8

; ===== 0x0041DDE0 ?UseSkill@Character@@UAEHHPAVUnit@@PAX@Z =====
  0041dde0: 55                                              push   ebp
  0041dde1: 8b ec                                           mov    ebp,esp
  0041dde3: 83 ec 14                                        sub    esp,0x14
  0041dde6: 53                                              push   ebx
  0041dde7: 56                                              push   esi
  0041dde8: 57                                              push   edi
  0041dde9: 33 ff                                           xor    edi,edi
  0041ddeb: 8b f1                                           mov    esi,ecx
  0041dded: 89 7d f8                                        mov    DWORD PTR [ebp-0x8],edi
  0041ddf0: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0041ddf3: e8 88 1e 00 00                                  call   0x41fc80
  0041ddf8: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ddfa: 8b ce                                           mov    ecx,esi
  0041ddfc: ff 90 d8 01 00 00                               call   DWORD PTR [eax+0x1d8]
  0041de02: 8b 8e 08 02 00 00                               mov    ecx,DWORD PTR [esi+0x208]
  0041de08: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0041de0b: 89 8e 04 02 00 00                               mov    DWORD PTR [esi+0x204],ecx
  0041de11: 89 be 24 02 00 00                               mov    DWORD PTR [esi+0x224],edi
  0041de17: c6 86 18 02 00 00 08                            mov    BYTE PTR [esi+0x218],0x8
  0041de1e: 8b 86 24 02 00 00                               mov    eax,DWORD PTR [esi+0x224]
  0041de24: 85 c0                                           test   eax,eax
  0041de26: 74 10                                           je     0x41de38
  0041de28: 8b 96 04 02 00 00                               mov    edx,DWORD PTR [esi+0x204]
  0041de2e: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041de30: 89 86 04 02 00 00                               mov    DWORD PTR [esi+0x204],eax
  0041de36: eb 0a                                           jmp    0x41de42
  0041de38: c7 86 24 02 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x224],0x1
  0041de42: 8b 86 04 02 00 00                               mov    eax,DWORD PTR [esi+0x204]
  0041de48: 85 c0                                           test   eax,eax
  0041de4a: 74 5c                                           je     0x41dea8
  0041de4c: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  0041de4f: 85 c0                                           test   eax,eax
  0041de51: 75 70                                           jne    0x41dec3
  0041de53: 8b 8e 04 02 00 00                               mov    ecx,DWORD PTR [esi+0x204]
  0041de59: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  0041de5c: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041de5f: 39 17                                           cmp    DWORD PTR [edi],edx
  0041de61: 75 bb                                           jne    0x41de1e
  0041de63: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0041de65: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041de68: 51                                              push   ecx
  0041de69: 8b cb                                           mov    ecx,ebx
  0041de6b: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041de6e: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0041de71: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041de73: 57                                              push   edi
  0041de74: 52                                              push   edx
  0041de75: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041de78: 51                                              push   ecx
  0041de79: 53                                              push   ebx
  0041de7a: 6a 00                                           push   0x0
  0041de7c: 56                                              push   esi
  0041de7d: 68 01 01 00 00                                  push   0x101
  0041de82: 50                                              push   eax
  0041de83: e8 78 21 04 00                                  call   0x460000
  0041de88: 83 c4 20                                        add    esp,0x20
  0041de8b: 83 f8 01                                        cmp    eax,0x1
  0041de8e: c7 45 f8 01 00 00 00                            mov    DWORD PTR [ebp-0x8],0x1
  0041de95: 74 05                                           je     0x41de9c
  0041de97: 83 f8 04                                        cmp    eax,0x4
  0041de9a: 75 82                                           jne    0x41de1e
  0041de9c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0041dea3: e9 76 ff ff ff                                  jmp    0x41de1e
  0041dea8: 8b 86 24 02 00 00                               mov    eax,DWORD PTR [esi+0x224]
  0041deae: 85 c0                                           test   eax,eax
  0041deb0: 74 07                                           je     0x41deb9
  0041deb2: c6 86 18 02 00 00 07                            mov    BYTE PTR [esi+0x218],0x7
  0041deb9: c7 86 24 02 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x224],0x0
  0041dec3: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0041dec6: 5f                                              pop    edi
  0041dec7: 5e                                              pop    esi
  0041dec8: 5b                                              pop    ebx
  0041dec9: 8b e5                                           mov    esp,ebp
  0041decb: 5d                                              pop    ebp
  0041decc: c2 0c 00                                        ret    0xc

; ===== 0x0041DED0 ?UseSkill@Character@@UAEHHUWorldPos@@@Z =====
  0041ded0: 55                                              push   ebp
  0041ded1: 8b ec                                           mov    ebp,esp
  0041ded3: 53                                              push   ebx
  0041ded4: 56                                              push   esi
  0041ded5: 57                                              push   edi
  0041ded6: 8b f1                                           mov    esi,ecx
  0041ded8: 33 ff                                           xor    edi,edi
  0041deda: e8 a1 1d 00 00                                  call   0x41fc80
  0041dedf: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041dee1: 8b ce                                           mov    ecx,esi
  0041dee3: ff 90 d8 01 00 00                               call   DWORD PTR [eax+0x1d8]
  0041dee9: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041deec: 33 db                                           xor    ebx,ebx
  0041deee: 85 c0                                           test   eax,eax
  0041def0: 75 13                                           jne    0x41df05
  0041def2: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0041def5: 85 c0                                           test   eax,eax
  0041def7: 75 0c                                           jne    0x41df05
  0041def9: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0041defc: 85 c0                                           test   eax,eax
  0041defe: 75 05                                           jne    0x41df05
  0041df00: bb 80 00 00 00                                  mov    ebx,0x80
  0041df05: 8b 8e 08 02 00 00                               mov    ecx,DWORD PTR [esi+0x208]
  0041df0b: 83 cb 01                                        or     ebx,0x1
  0041df0e: 89 8e 04 02 00 00                               mov    DWORD PTR [esi+0x204],ecx
  0041df14: c7 86 24 02 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x224],0x0
  0041df1e: c6 86 18 02 00 00 08                            mov    BYTE PTR [esi+0x218],0x8
  0041df25: 8b 86 24 02 00 00                               mov    eax,DWORD PTR [esi+0x224]
  0041df2b: 85 c0                                           test   eax,eax
  0041df2d: 74 10                                           je     0x41df3f
  0041df2f: 8b 96 04 02 00 00                               mov    edx,DWORD PTR [esi+0x204]
  0041df35: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041df37: 89 86 04 02 00 00                               mov    DWORD PTR [esi+0x204],eax
  0041df3d: eb 0a                                           jmp    0x41df49
  0041df3f: c7 86 24 02 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x224],0x1
  0041df49: 8b 86 04 02 00 00                               mov    eax,DWORD PTR [esi+0x204]
  0041df4f: 85 c0                                           test   eax,eax
  0041df51: 74 2c                                           je     0x41df7f
  0041df53: 85 ff                                           test   edi,edi
  0041df55: 75 43                                           jne    0x41df9a
  0041df57: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041df5a: 8b c8                                           mov    ecx,eax
  0041df5c: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0041df5f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041df61: 3b ca                                           cmp    ecx,edx
  0041df63: 75 c0                                           jne    0x41df25
  0041df65: 50                                              push   eax
  0041df66: 57                                              push   edi
  0041df67: 8d 55 0c                                        lea    edx,[ebp+0xc]
  0041df6a: 52                                              push   edx
  0041df6b: 57                                              push   edi
  0041df6c: 57                                              push   edi
  0041df6d: 56                                              push   esi
  0041df6e: 53                                              push   ebx
  0041df6f: 51                                              push   ecx
  0041df70: e8 8b 20 04 00                                  call   0x460000
  0041df75: 83 c4 20                                        add    esp,0x20
  0041df78: bf 01 00 00 00                                  mov    edi,0x1
  0041df7d: eb a6                                           jmp    0x41df25
  0041df7f: 8b 86 24 02 00 00                               mov    eax,DWORD PTR [esi+0x224]
  0041df85: 85 c0                                           test   eax,eax
  0041df87: 74 07                                           je     0x41df90
  0041df89: c6 86 18 02 00 00 07                            mov    BYTE PTR [esi+0x218],0x7
  0041df90: c7 86 24 02 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x224],0x0
  0041df9a: 8b c7                                           mov    eax,edi
  0041df9c: 5f                                              pop    edi
  0041df9d: 5e                                              pop    esi
  0041df9e: 5b                                              pop    ebx
  0041df9f: 5d                                              pop    ebp
  0041dfa0: c2 10 00                                        ret    0x10

; ===== 0x0041DFB0 ?GetFaith@Character@@UAEGXZ =====
  0041dfb0: 66 8b 81 46 01 00 00                            mov    ax,WORD PTR [ecx+0x146]
  0041dfb7: c3                                              ret

; ===== 0x0041DFC0 ?GetMaxFaith@Character@@UAEGXZ =====
  0041dfc0: 33 c0                                           xor    eax,eax
  0041dfc2: 66 8b 81 44 01 00 00                            mov    ax,WORD PTR [ecx+0x144]
  0041dfc9: 66 85 c0                                        test   ax,ax
  0041dfcc: 74 06                                           je     0x41dfd4
  0041dfce: 25 ff ff 00 00                                  and    eax,0xffff
  0041dfd3: c3                                              ret
  0041dfd4: b8 01 00 00 00                                  mov    eax,0x1
  0041dfd9: c3                                              ret

; ===== 0x0041DFE0 ?SetFaith@Character@@UAEXG@Z =====
  0041dfe0: 55                                              push   ebp
  0041dfe1: 8b ec                                           mov    ebp,esp
  0041dfe3: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  0041dfe7: 66 89 81 46 01 00 00                            mov    WORD PTR [ecx+0x146],ax
  0041dfee: 5d                                              pop    ebp
  0041dfef: c2 04 00                                        ret    0x4

; ===== 0x0041E000 ?SetMaxFaith@Character@@UAEXG@Z =====
  0041e000: 55                                              push   ebp
  0041e001: 8b ec                                           mov    ebp,esp
  0041e003: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  0041e007: 66 89 81 44 01 00 00                            mov    WORD PTR [ecx+0x144],ax
  0041e00e: 5d                                              pop    ebp
  0041e00f: c2 04 00                                        ret    0x4

; ===== 0x0041E0C0 ?LearnSkill@Character@@QAEPAVUSER_SKILL@@KG_NAAVCString@@@Z =====
  0041e0c0: 55                                              push   ebp
  0041e0c1: 8b ec                                           mov    ebp,esp
  0041e0c3: 81 ec 04 04 00 00                               sub    esp,0x404
  0041e0c9: 53                                              push   ebx
  0041e0ca: 56                                              push   esi
  0041e0cb: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0041e0ce: 57                                              push   edi
  0041e0cf: 8b f9                                           mov    edi,ecx
  0041e0d1: 33 db                                           xor    ebx,ebx
  0041e0d3: 66 3b b7 e0 01 00 00                            cmp    si,WORD PTR [edi+0x1e0]
  0041e0da: 76 62                                           jbe    0x41e13e
  0041e0dc: 8a 45 10                                        mov    al,BYTE PTR [ebp+0x10]
  0041e0df: 84 c0                                           test   al,al
  0041e0e1: 74 2a                                           je     0x41e10d
  0041e0e3: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041e0e5: 68 58 13 51 00                                  push   0x511358
  0041e0ea: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0041e0f0: 50                                              push   eax
  0041e0f1: 6a 28                                           push   0x28
  0041e0f3: e8 f8 f8 01 00                                  call   0x43d9f0
  0041e0f8: 83 c4 08                                        add    esp,0x8
  0041e0fb: 8b cc                                           mov    ecx,esp
  0041e0fd: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0041e100: 50                                              push   eax
  0041e101: e8 5e 39 0b 00                                  call   0x4d1a64
  0041e106: 8b cf                                           mov    ecx,edi
  0041e108: e8 83 4d 00 00                                  call   0x422e90
  0041e10d: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041e110: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0041e113: 33 c9                                           xor    ecx,ecx
  0041e115: 66 8b 8f e0 01 00 00                            mov    cx,WORD PTR [edi+0x1e0]
  0041e11c: 81 e6 ff ff 00 00                               and    esi,0xffff
  0041e122: 51                                              push   ecx
  0041e123: 56                                              push   esi
  0041e124: 52                                              push   edx
  0041e125: 68 94 25 50 00                                  push   0x502594
  0041e12a: 50                                              push   eax
  0041e12b: e8 64 39 0b 00                                  call   0x4d1a94
  0041e130: 83 c4 14                                        add    esp,0x14
  0041e133: 33 c0                                           xor    eax,eax
  0041e135: 5f                                              pop    edi
  0041e136: 5e                                              pop    esi
  0041e137: 5b                                              pop    ebx
  0041e138: 8b e5                                           mov    esp,ebp
  0041e13a: 5d                                              pop    ebp
  0041e13b: c2 10 00                                        ret    0x10
  0041e13e: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0041e141: 81 fe 10 27 00 00                               cmp    esi,0x2710
  0041e147: 56                                              push   esi
  0041e148: 0f 83 06 04 00 00                               jae    0x41e554
  0041e14e: e8 3d 25 04 00                                  call   0x460690
  0041e153: 83 c4 04                                        add    esp,0x4
  0041e156: 85 c0                                           test   eax,eax
  0041e158: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0041e15b: 0f 84 c6 03 00 00                               je     0x41e527
  0041e161: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041e163: 56                                              push   esi
  0041e164: 8b cf                                           mov    ecx,edi
  0041e166: ff 92 70 01 00 00                               call   DWORD PTR [edx+0x170]
  0041e16c: 85 c0                                           test   eax,eax
  0041e16e: 0f 85 a8 03 00 00                               jne    0x41e51c
  0041e174: 6a 08                                           push   0x8
  0041e176: 33 f6                                           xor    esi,esi
  0041e178: e8 73 3e 02 00                                  call   0x441ff0
  0041e17d: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0041e180: 8b d8                                           mov    ebx,eax
  0041e182: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041e185: 89 03                                           mov    DWORD PTR [ebx],eax
  0041e187: c7 43 04 01 00 00 00                            mov    DWORD PTR [ebx+0x4],0x1
  0041e18e: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0041e191: 83 c4 04                                        add    esp,0x4
  0041e194: a8 81                                           test   al,0x81
  0041e196: 75 05                                           jne    0x41e19d
  0041e198: f6 c4 03                                        test   ah,0x3
  0041e19b: 74 25                                           je     0x41e1c2
  0041e19d: 8b 97 e4 01 00 00                               mov    edx,DWORD PTR [edi+0x1e4]
  0041e1a3: 8d b7 e4 01 00 00                               lea    esi,[edi+0x1e4]
  0041e1a9: 8b ce                                           mov    ecx,esi
  0041e1ab: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e1ae: 53                                              push   ebx
  0041e1af: 8b ce                                           mov    ecx,esi
  0041e1b1: e8 4a 70 00 00                                  call   0x425200
  0041e1b6: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041e1b8: 8b ce                                           mov    ecx,esi
  0041e1ba: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041e1bd: be 01 00 00 00                                  mov    esi,0x1
  0041e1c2: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0041e1c5: f6 41 08 02                                     test   BYTE PTR [ecx+0x8],0x2
  0041e1c9: 74 25                                           je     0x41e1f0
  0041e1cb: 8b 97 28 02 00 00                               mov    edx,DWORD PTR [edi+0x228]
  0041e1d1: 8d b7 28 02 00 00                               lea    esi,[edi+0x228]
  0041e1d7: 8b ce                                           mov    ecx,esi
  0041e1d9: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e1dc: 53                                              push   ebx
  0041e1dd: 8b ce                                           mov    ecx,esi
  0041e1df: e8 1c 70 00 00                                  call   0x425200
  0041e1e4: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041e1e6: 8b ce                                           mov    ecx,esi
  0041e1e8: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041e1eb: be 01 00 00 00                                  mov    esi,0x1
  0041e1f0: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0041e1f3: f6 41 08 04                                     test   BYTE PTR [ecx+0x8],0x4
  0041e1f7: 74 25                                           je     0x41e21e
  0041e1f9: 8b 97 6c 02 00 00                               mov    edx,DWORD PTR [edi+0x26c]
  0041e1ff: 8d b7 6c 02 00 00                               lea    esi,[edi+0x26c]
  0041e205: 8b ce                                           mov    ecx,esi
  0041e207: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e20a: 53                                              push   ebx
  0041e20b: 8b ce                                           mov    ecx,esi
  0041e20d: e8 ee 6f 00 00                                  call   0x425200
  0041e212: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041e214: 8b ce                                           mov    ecx,esi
  0041e216: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041e219: be 01 00 00 00                                  mov    esi,0x1
  0041e21e: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0041e221: f6 41 08 08                                     test   BYTE PTR [ecx+0x8],0x8
  0041e225: 74 25                                           je     0x41e24c
  0041e227: 8b 97 b0 02 00 00                               mov    edx,DWORD PTR [edi+0x2b0]
  0041e22d: 8d b7 b0 02 00 00                               lea    esi,[edi+0x2b0]
  0041e233: 8b ce                                           mov    ecx,esi
  0041e235: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e238: 53                                              push   ebx
  0041e239: 8b ce                                           mov    ecx,esi
  0041e23b: e8 c0 6f 00 00                                  call   0x425200
  0041e240: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041e242: 8b ce                                           mov    ecx,esi
  0041e244: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041e247: be 01 00 00 00                                  mov    esi,0x1
  0041e24c: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0041e24f: f6 41 08 10                                     test   BYTE PTR [ecx+0x8],0x10
  0041e253: 0f 84 9e 00 00 00                               je     0x41e2f7
  0041e259: 8b 97 f4 02 00 00                               mov    edx,DWORD PTR [edi+0x2f4]
  0041e25f: 8d b7 f4 02 00 00                               lea    esi,[edi+0x2f4]
  0041e265: 8b ce                                           mov    ecx,esi
  0041e267: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e26a: 8b ce                                           mov    ecx,esi
  0041e26c: e8 df 71 00 00                                  call   0x425450
  0041e271: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0041e274: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e277: 42                                              inc    edx
  0041e278: 85 c0                                           test   eax,eax
  0041e27a: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0041e27d: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  0041e280: 6a 0c                                           push   0xc
  0041e282: 75 2a                                           jne    0x41e2ae
  0041e284: e8 67 3d 02 00                                  call   0x441ff0
  0041e289: 33 c9                                           xor    ecx,ecx
  0041e28b: 83 c4 04                                        add    esp,0x4
  0041e28e: 3b c1                                           cmp    eax,ecx
  0041e290: 74 07                                           je     0x41e299
  0041e292: 89 08                                           mov    DWORD PTR [eax],ecx
  0041e294: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0041e297: eb 02                                           jmp    0x41e29b
  0041e299: 33 c0                                           xor    eax,eax
  0041e29b: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0041e29e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e2a1: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0041e2a4: 89 08                                           mov    DWORD PTR [eax],ecx
  0041e2a6: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e2a9: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0041e2ac: eb 37                                           jmp    0x41e2e5
  0041e2ae: e8 3d 3d 02 00                                  call   0x441ff0
  0041e2b3: 83 c4 04                                        add    esp,0x4
  0041e2b6: 85 c0                                           test   eax,eax
  0041e2b8: 74 0f                                           je     0x41e2c9
  0041e2ba: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0041e2c0: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  0041e2c7: eb 02                                           jmp    0x41e2cb
  0041e2c9: 33 c0                                           xor    eax,eax
  0041e2cb: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e2ce: 89 01                                           mov    DWORD PTR [ecx],eax
  0041e2d0: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0041e2d3: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0041e2d6: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e2d9: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041e2dc: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e2df: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0041e2e5: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e2e8: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0041e2eb: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041e2ed: 8b ce                                           mov    ecx,esi
  0041e2ef: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041e2f2: be 01 00 00 00                                  mov    esi,0x1
  0041e2f7: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0041e2fa: f6 40 08 20                                     test   BYTE PTR [eax+0x8],0x20
  0041e2fe: 0f 84 9e 00 00 00                               je     0x41e3a2
  0041e304: 8b 97 38 03 00 00                               mov    edx,DWORD PTR [edi+0x338]
  0041e30a: 8d b7 38 03 00 00                               lea    esi,[edi+0x338]
  0041e310: 8b ce                                           mov    ecx,esi
  0041e312: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e315: 8b ce                                           mov    ecx,esi
  0041e317: e8 34 71 00 00                                  call   0x425450
  0041e31c: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0041e31f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e322: 42                                              inc    edx
  0041e323: 85 c0                                           test   eax,eax
  0041e325: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0041e328: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  0041e32b: 6a 0c                                           push   0xc
  0041e32d: 75 2a                                           jne    0x41e359
  0041e32f: e8 bc 3c 02 00                                  call   0x441ff0
  0041e334: 33 c9                                           xor    ecx,ecx
  0041e336: 83 c4 04                                        add    esp,0x4
  0041e339: 3b c1                                           cmp    eax,ecx
  0041e33b: 74 07                                           je     0x41e344
  0041e33d: 89 08                                           mov    DWORD PTR [eax],ecx
  0041e33f: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0041e342: eb 02                                           jmp    0x41e346
  0041e344: 33 c0                                           xor    eax,eax
  0041e346: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0041e349: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e34c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0041e34f: 89 08                                           mov    DWORD PTR [eax],ecx
  0041e351: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e354: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0041e357: eb 37                                           jmp    0x41e390
  0041e359: e8 92 3c 02 00                                  call   0x441ff0
  0041e35e: 83 c4 04                                        add    esp,0x4
  0041e361: 85 c0                                           test   eax,eax
  0041e363: 74 0f                                           je     0x41e374
  0041e365: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0041e36b: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  0041e372: eb 02                                           jmp    0x41e376
  0041e374: 33 c0                                           xor    eax,eax
  0041e376: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e379: 89 01                                           mov    DWORD PTR [ecx],eax
  0041e37b: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0041e37e: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0041e381: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e384: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041e387: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e38a: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0041e390: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e393: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0041e396: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041e398: 8b ce                                           mov    ecx,esi
  0041e39a: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041e39d: be 01 00 00 00                                  mov    esi,0x1
  0041e3a2: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0041e3a5: f6 40 08 40                                     test   BYTE PTR [eax+0x8],0x40
  0041e3a9: 0f 84 2a 01 00 00                               je     0x41e4d9
  0041e3af: 8b 97 7c 03 00 00                               mov    edx,DWORD PTR [edi+0x37c]
  0041e3b5: 8d b7 7c 03 00 00                               lea    esi,[edi+0x37c]
  0041e3bb: 8b ce                                           mov    ecx,esi
  0041e3bd: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e3c0: 8b ce                                           mov    ecx,esi
  0041e3c2: e8 89 70 00 00                                  call   0x425450
  0041e3c7: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0041e3ca: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e3cd: 42                                              inc    edx
  0041e3ce: 85 c0                                           test   eax,eax
  0041e3d0: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0041e3d3: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  0041e3d6: 6a 0c                                           push   0xc
  0041e3d8: 75 2a                                           jne    0x41e404
  0041e3da: e8 11 3c 02 00                                  call   0x441ff0
  0041e3df: 33 c9                                           xor    ecx,ecx
  0041e3e1: 83 c4 04                                        add    esp,0x4
  0041e3e4: 3b c1                                           cmp    eax,ecx
  0041e3e6: 74 07                                           je     0x41e3ef
  0041e3e8: 89 08                                           mov    DWORD PTR [eax],ecx
  0041e3ea: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0041e3ed: eb 02                                           jmp    0x41e3f1
  0041e3ef: 33 c0                                           xor    eax,eax
  0041e3f1: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0041e3f4: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e3f7: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0041e3fa: 89 08                                           mov    DWORD PTR [eax],ecx
  0041e3fc: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e3ff: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0041e402: eb 37                                           jmp    0x41e43b
  0041e404: e8 e7 3b 02 00                                  call   0x441ff0
  0041e409: 83 c4 04                                        add    esp,0x4
  0041e40c: 85 c0                                           test   eax,eax
  0041e40e: 74 0f                                           je     0x41e41f
  0041e410: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0041e416: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  0041e41d: eb 02                                           jmp    0x41e421
  0041e41f: 33 c0                                           xor    eax,eax
  0041e421: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e424: 89 01                                           mov    DWORD PTR [ecx],eax
  0041e426: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0041e429: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0041e42c: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e42f: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041e432: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e435: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0041e43b: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e43e: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0041e441: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041e443: 8b ce                                           mov    ecx,esi
  0041e445: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041e448: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041e44b: 50                                              push   eax
  0041e44c: 68 74 25 50 00                                  push   0x502574
  0041e451: 68 00 04 00 00                                  push   0x400
  0041e456: e8 e5 38 05 00                                  call   0x471d40
  0041e45b: 66 8b 4d 0c                                     mov    cx,WORD PTR [ebp+0xc]
  0041e45f: 8a 45 10                                        mov    al,BYTE PTR [ebp+0x10]
  0041e462: 66 29 8f e0 01 00 00                            sub    WORD PTR [edi+0x1e0],cx
  0041e469: 83 c4 0c                                        add    esp,0xc
  0041e46c: 84 c0                                           test   al,al
  0041e46e: 0f 84 ed 02 00 00                               je     0x41e761
  0041e474: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041e476: 8b cf                                           mov    ecx,edi
  0041e478: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041e47e: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0041e481: 50                                              push   eax
  0041e482: e8 d9 1a 04 00                                  call   0x45ff60
  0041e487: 50                                              push   eax
  0041e488: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041e48a: 68 58 13 51 00                                  push   0x511358
  0041e48f: 8b cf                                           mov    ecx,edi
  0041e491: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0041e497: 50                                              push   eax
  0041e498: 68 a5 1e 00 00                                  push   0x1ea5
  0041e49d: e8 4e f5 01 00                                  call   0x43d9f0
  0041e4a2: 83 c4 0c                                        add    esp,0xc
  0041e4a5: 50                                              push   eax
  0041e4a6: 8d 8d fc fb ff ff                               lea    ecx,[ebp-0x404]
  0041e4ac: 51                                              push   ecx
  0041e4ad: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  0041e4b3: 83 c4 08                                        add    esp,0x8
  0041e4b6: 8d 95 fc fb ff ff                               lea    edx,[ebp-0x404]
  0041e4bc: 8b cc                                           mov    ecx,esp
  0041e4be: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0041e4c1: 52                                              push   edx
  0041e4c2: e8 9d 35 0b 00                                  call   0x4d1a64
  0041e4c7: 8b cf                                           mov    ecx,edi
  0041e4c9: e8 c2 49 00 00                                  call   0x422e90
  0041e4ce: 8b c3                                           mov    eax,ebx
  0041e4d0: 5f                                              pop    edi
  0041e4d1: 5e                                              pop    esi
  0041e4d2: 5b                                              pop    ebx
  0041e4d3: 8b e5                                           mov    esp,ebp
  0041e4d5: 5d                                              pop    ebp
  0041e4d6: c2 10 00                                        ret    0x10
  0041e4d9: 85 f6                                           test   esi,esi
  0041e4db: 0f 85 67 ff ff ff                               jne    0x41e448
  0041e4e1: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041e4e4: 50                                              push   eax
  0041e4e5: 68 3c 25 50 00                                  push   0x50253c
  0041e4ea: 6a 04                                           push   0x4
  0041e4ec: e8 4f 38 05 00                                  call   0x471d40
  0041e4f1: 53                                              push   ebx
  0041e4f2: e8 69 3b 02 00                                  call   0x442060
  0041e4f7: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0041e4fa: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0041e4fd: 83 c4 10                                        add    esp,0x10
  0041e500: 51                                              push   ecx
  0041e501: 68 0c 25 50 00                                  push   0x50250c
  0041e506: 52                                              push   edx
  0041e507: 33 db                                           xor    ebx,ebx
  0041e509: e8 86 35 0b 00                                  call   0x4d1a94
  0041e50e: 83 c4 0c                                        add    esp,0xc
  0041e511: 8b c3                                           mov    eax,ebx
  0041e513: 5f                                              pop    edi
  0041e514: 5e                                              pop    esi
  0041e515: 5b                                              pop    ebx
  0041e516: 8b e5                                           mov    esp,ebp
  0041e518: 5d                                              pop    ebp
  0041e519: c2 10 00                                        ret    0x10
  0041e51c: 56                                              push   esi
  0041e51d: 68 e8 24 50 00                                  push   0x5024e8
  0041e522: e9 2e 02 00 00                                  jmp    0x41e755
  0041e527: 56                                              push   esi
  0041e528: 68 b4 24 50 00                                  push   0x5024b4
  0041e52d: 6a 04                                           push   0x4
  0041e52f: e8 0c 38 05 00                                  call   0x471d40
  0041e534: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0041e537: 83 c4 0c                                        add    esp,0xc
  0041e53a: 56                                              push   esi
  0041e53b: 68 98 24 50 00                                  push   0x502498
  0041e540: 51                                              push   ecx
  0041e541: e8 4e 35 0b 00                                  call   0x4d1a94
  0041e546: 83 c4 0c                                        add    esp,0xc
  0041e549: 8b c3                                           mov    eax,ebx
  0041e54b: 5f                                              pop    edi
  0041e54c: 5e                                              pop    esi
  0041e54d: 5b                                              pop    ebx
  0041e54e: 8b e5                                           mov    esp,ebp
  0041e550: 5d                                              pop    ebp
  0041e551: c2 10 00                                        ret    0x10
  0041e554: e8 d7 3c 04 00                                  call   0x462230
  0041e559: 83 c4 04                                        add    esp,0x4
  0041e55c: 85 c0                                           test   eax,eax
  0041e55e: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0041e561: 0f 84 e8 01 00 00                               je     0x41e74f
  0041e567: 8b 97 c0 03 00 00                               mov    edx,DWORD PTR [edi+0x3c0]
  0041e56d: 8d b7 c0 03 00 00                               lea    esi,[edi+0x3c0]
  0041e573: 8b ce                                           mov    ecx,esi
  0041e575: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e578: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  0041e57b: 33 c0                                           xor    eax,eax
  0041e57d: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0041e580: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  0041e583: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0041e587: 8b 4e 40                                        mov    ecx,DWORD PTR [esi+0x40]
  0041e58a: 85 c9                                           test   ecx,ecx
  0041e58c: 74 0a                                           je     0x41e598
  0041e58e: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0041e591: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0041e593: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0041e596: eb 07                                           jmp    0x41e59f
  0041e598: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0041e59f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e5a2: 85 c9                                           test   ecx,ecx
  0041e5a4: 74 1f                                           je     0x41e5c5
  0041e5a6: 85 c0                                           test   eax,eax
  0041e5a8: 0f 85 7a 01 00 00                               jne    0x41e728
  0041e5ae: 8b 97 e0 03 00 00                               mov    edx,DWORD PTR [edi+0x3e0]
  0041e5b4: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  0041e5b7: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041e5ba: 39 11                                           cmp    DWORD PTR [ecx],edx
  0041e5bc: 75 c9                                           jne    0x41e587
  0041e5be: b8 01 00 00 00                                  mov    eax,0x1
  0041e5c3: eb c2                                           jmp    0x41e587
  0041e5c5: 8b 4e 40                                        mov    ecx,DWORD PTR [esi+0x40]
  0041e5c8: 85 c9                                           test   ecx,ecx
  0041e5ca: 74 04                                           je     0x41e5d0
  0041e5cc: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0041e5d0: 85 c0                                           test   eax,eax
  0041e5d2: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0041e5d9: 0f 85 49 01 00 00                               jne    0x41e728
  0041e5df: 6a 08                                           push   0x8
  0041e5e1: e8 0a 3a 02 00                                  call   0x441ff0
  0041e5e6: 66 8b 4d 0c                                     mov    cx,WORD PTR [ebp+0xc]
  0041e5ea: 8b d8                                           mov    ebx,eax
  0041e5ec: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041e5ef: 89 03                                           mov    DWORD PTR [ebx],eax
  0041e5f1: 8a 45 10                                        mov    al,BYTE PTR [ebp+0x10]
  0041e5f4: c7 43 04 01 00 00 00                            mov    DWORD PTR [ebx+0x4],0x1
  0041e5fb: 66 29 8f e0 01 00 00                            sub    WORD PTR [edi+0x1e0],cx
  0041e602: 83 c4 04                                        add    esp,0x4
  0041e605: 84 c0                                           test   al,al
  0041e607: 74 7f                                           je     0x41e688
  0041e609: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041e60b: 8b cf                                           mov    ecx,edi
  0041e60d: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041e613: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0041e616: 8b 91 00 04 00 00                               mov    edx,DWORD PTR [ecx+0x400]
  0041e61c: 85 d2                                           test   edx,edx
  0041e61e: 75 07                                           jne    0x41e627
  0041e620: b8 58 13 51 00                                  mov    eax,0x511358
  0041e625: eb 1a                                           jmp    0x41e641
  0041e627: 8b 89 fc 03 00 00                               mov    ecx,DWORD PTR [ecx+0x3fc]
  0041e62d: 85 c9                                           test   ecx,ecx
  0041e62f: 75 06                                           jne    0x41e637
  0041e631: 8b 0d d8 e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4d8
  0041e637: 50                                              push   eax
  0041e638: 51                                              push   ecx
  0041e639: e8 02 f5 01 00                                  call   0x43db40
  0041e63e: 83 c4 08                                        add    esp,0x8
  0041e641: 50                                              push   eax
  0041e642: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041e644: 68 58 13 51 00                                  push   0x511358
  0041e649: 8b cf                                           mov    ecx,edi
  0041e64b: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0041e651: 50                                              push   eax
  0041e652: 68 a4 1e 00 00                                  push   0x1ea4
  0041e657: e8 94 f3 01 00                                  call   0x43d9f0
  0041e65c: 83 c4 0c                                        add    esp,0xc
  0041e65f: 50                                              push   eax
  0041e660: 8d 8d fc fb ff ff                               lea    ecx,[ebp-0x404]
  0041e666: 51                                              push   ecx
  0041e667: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  0041e66d: 83 c4 08                                        add    esp,0x8
  0041e670: 8d 95 fc fb ff ff                               lea    edx,[ebp-0x404]
  0041e676: 8b cc                                           mov    ecx,esp
  0041e678: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0041e67b: 52                                              push   edx
  0041e67c: e8 e3 33 0b 00                                  call   0x4d1a64
  0041e681: 8b cf                                           mov    ecx,edi
  0041e683: e8 08 48 00 00                                  call   0x422e90
  0041e688: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  0041e68b: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0041e68e: 33 ff                                           xor    edi,edi
  0041e690: 42                                              inc    edx
  0041e691: 3b c7                                           cmp    eax,edi
  0041e693: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e696: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0041e699: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0041e69d: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0041e6a0: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  0041e6a3: 6a 0c                                           push   0xc
  0041e6a5: 75 3e                                           jne    0x41e6e5
  0041e6a7: e8 44 39 02 00                                  call   0x441ff0
  0041e6ac: 83 c4 04                                        add    esp,0x4
  0041e6af: 3b c7                                           cmp    eax,edi
  0041e6b1: 74 07                                           je     0x41e6ba
  0041e6b3: 89 38                                           mov    DWORD PTR [eax],edi
  0041e6b5: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0041e6b8: eb 02                                           jmp    0x41e6bc
  0041e6ba: 33 c0                                           xor    eax,eax
  0041e6bc: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e6bf: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0041e6c2: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0041e6c5: 89 38                                           mov    DWORD PTR [eax],edi
  0041e6c7: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e6ca: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0041e6cd: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e6d0: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0041e6d3: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041e6d5: 8b ce                                           mov    ecx,esi
  0041e6d7: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041e6da: 8b c3                                           mov    eax,ebx
  0041e6dc: 5f                                              pop    edi
  0041e6dd: 5e                                              pop    esi
  0041e6de: 5b                                              pop    ebx
  0041e6df: 8b e5                                           mov    esp,ebp
  0041e6e1: 5d                                              pop    ebp
  0041e6e2: c2 10 00                                        ret    0x10
  0041e6e5: e8 06 39 02 00                                  call   0x441ff0
  0041e6ea: 83 c4 04                                        add    esp,0x4
  0041e6ed: 3b c7                                           cmp    eax,edi
  0041e6ef: 74 07                                           je     0x41e6f8
  0041e6f1: 89 38                                           mov    DWORD PTR [eax],edi
  0041e6f3: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0041e6f6: eb 02                                           jmp    0x41e6fa
  0041e6f8: 33 c0                                           xor    eax,eax
  0041e6fa: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e6fd: 89 01                                           mov    DWORD PTR [ecx],eax
  0041e6ff: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0041e702: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041e705: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0041e708: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041e70b: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041e70e: 89 38                                           mov    DWORD PTR [eax],edi
  0041e710: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041e713: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0041e716: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041e718: 8b ce                                           mov    ecx,esi
  0041e71a: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041e71d: 8b c3                                           mov    eax,ebx
  0041e71f: 5f                                              pop    edi
  0041e720: 5e                                              pop    esi
  0041e721: 5b                                              pop    ebx
  0041e722: 8b e5                                           mov    esp,ebp
  0041e724: 5d                                              pop    ebp
  0041e725: c2 10 00                                        ret    0x10
  0041e728: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041e72b: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0041e72e: 52                                              push   edx
  0041e72f: 68 74 24 50 00                                  push   0x502474
  0041e734: 50                                              push   eax
  0041e735: e8 5a 33 0b 00                                  call   0x4d1a94
  0041e73a: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041e73c: 83 c4 0c                                        add    esp,0xc
  0041e73f: 8b ce                                           mov    ecx,esi
  0041e741: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041e744: 8b c3                                           mov    eax,ebx
  0041e746: 5f                                              pop    edi
  0041e747: 5e                                              pop    esi
  0041e748: 5b                                              pop    ebx
  0041e749: 8b e5                                           mov    esp,ebp
  0041e74b: 5d                                              pop    ebp
  0041e74c: c2 10 00                                        ret    0x10
  0041e74f: 56                                              push   esi
  0041e750: 68 58 24 50 00                                  push   0x502458
  0041e755: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0041e758: 50                                              push   eax
  0041e759: e8 36 33 0b 00                                  call   0x4d1a94
  0041e75e: 83 c4 0c                                        add    esp,0xc
  0041e761: 5f                                              pop    edi
  0041e762: 5e                                              pop    esi
  0041e763: 8b c3                                           mov    eax,ebx
  0041e765: 5b                                              pop    ebx
  0041e766: 8b e5                                           mov    esp,ebp
  0041e768: 5d                                              pop    ebp
  0041e769: c2 10 00                                        ret    0x10

; ===== 0x0041E770 ?GetSkill@Character@@UAEPAVUSER_SKILL@@K@Z =====
  0041e770: 55                                              push   ebp
  0041e771: 8b ec                                           mov    ebp,esp
  0041e773: 51                                              push   ecx
  0041e774: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041e777: 53                                              push   ebx
  0041e778: 56                                              push   esi
  0041e779: 33 f6                                           xor    esi,esi
  0041e77b: 33 db                                           xor    ebx,ebx
  0041e77d: 81 fa 10 27 00 00                               cmp    edx,0x2710
  0041e783: 57                                              push   edi
  0041e784: 72 7f                                           jb     0x41e805
  0041e786: 8b 81 e4 03 00 00                               mov    eax,DWORD PTR [ecx+0x3e4]
  0041e78c: 89 81 e0 03 00 00                               mov    DWORD PTR [ecx+0x3e0],eax
  0041e792: 89 b1 00 04 00 00                               mov    DWORD PTR [ecx+0x400],esi
  0041e798: c6 81 f4 03 00 00 08                            mov    BYTE PTR [ecx+0x3f4],0x8
  0041e79f: 39 b1 00 04 00 00                               cmp    DWORD PTR [ecx+0x400],esi
  0041e7a5: 74 10                                           je     0x41e7b7
  0041e7a7: 8b 81 e0 03 00 00                               mov    eax,DWORD PTR [ecx+0x3e0]
  0041e7ad: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041e7af: 89 81 e0 03 00 00                               mov    DWORD PTR [ecx+0x3e0],eax
  0041e7b5: eb 0a                                           jmp    0x41e7c1
  0041e7b7: c7 81 00 04 00 00 01 00 00 00                   mov    DWORD PTR [ecx+0x400],0x1
  0041e7c1: 8b 81 e0 03 00 00                               mov    eax,DWORD PTR [ecx+0x3e0]
  0041e7c7: 3b c6                                           cmp    eax,esi
  0041e7c9: 74 1a                                           je     0x41e7e5
  0041e7cb: 3b de                                           cmp    ebx,esi
  0041e7cd: 0f 85 a6 00 00 00                               jne    0x41e879
  0041e7d3: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041e7d6: 39 10                                           cmp    DWORD PTR [eax],edx
  0041e7d8: 75 c5                                           jne    0x41e79f
  0041e7da: 8b d8                                           mov    ebx,eax
  0041e7dc: c7 43 04 01 00 00 00                            mov    DWORD PTR [ebx+0x4],0x1
  0041e7e3: eb ba                                           jmp    0x41e79f
  0041e7e5: 39 b1 00 04 00 00                               cmp    DWORD PTR [ecx+0x400],esi
  0041e7eb: 74 07                                           je     0x41e7f4
  0041e7ed: c6 81 f4 03 00 00 07                            mov    BYTE PTR [ecx+0x3f4],0x7
  0041e7f4: 5f                                              pop    edi
  0041e7f5: 89 b1 00 04 00 00                               mov    DWORD PTR [ecx+0x400],esi
  0041e7fb: 5e                                              pop    esi
  0041e7fc: 8b c3                                           mov    eax,ebx
  0041e7fe: 5b                                              pop    ebx
  0041e7ff: 8b e5                                           mov    esp,ebp
  0041e801: 5d                                              pop    ebp
  0041e802: c2 04 00                                        ret    0x4
  0041e805: 8d b1 04 02 00 00                               lea    esi,[ecx+0x204]
  0041e80b: c7 45 fc 07 00 00 00                            mov    DWORD PTR [ebp-0x4],0x7
  0041e812: 8b 56 e0                                        mov    edx,DWORD PTR [esi-0x20]
  0041e815: 8d 7e e0                                        lea    edi,[esi-0x20]
  0041e818: 8b cf                                           mov    ecx,edi
  0041e81a: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041e81d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0041e820: 33 c9                                           xor    ecx,ecx
  0041e822: 89 06                                           mov    DWORD PTR [esi],eax
  0041e824: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0041e827: c6 46 14 08                                     mov    BYTE PTR [esi+0x14],0x8
  0041e82b: 39 4e 20                                        cmp    DWORD PTR [esi+0x20],ecx
  0041e82e: 74 0a                                           je     0x41e83a
  0041e830: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  0041e833: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041e835: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  0041e838: eb 07                                           jmp    0x41e841
  0041e83a: c7 46 20 01 00 00 00                            mov    DWORD PTR [esi+0x20],0x1
  0041e841: 39 4f 20                                        cmp    DWORD PTR [edi+0x20],ecx
  0041e844: 74 14                                           je     0x41e85a
  0041e846: 3b d9                                           cmp    ebx,ecx
  0041e848: 75 1c                                           jne    0x41e866
  0041e84a: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041e84c: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0041e84f: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041e852: 39 10                                           cmp    DWORD PTR [eax],edx
  0041e854: 75 d5                                           jne    0x41e82b
  0041e856: 8b d8                                           mov    ebx,eax
  0041e858: eb d1                                           jmp    0x41e82b
  0041e85a: 39 4e 20                                        cmp    DWORD PTR [esi+0x20],ecx
  0041e85d: 74 04                                           je     0x41e863
  0041e85f: c6 47 34 07                                     mov    BYTE PTR [edi+0x34],0x7
  0041e863: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0041e866: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041e868: 8b cf                                           mov    ecx,edi
  0041e86a: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041e86d: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0041e870: 83 c6 44                                        add    esi,0x44
  0041e873: 48                                              dec    eax
  0041e874: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0041e877: 75 99                                           jne    0x41e812
  0041e879: 5f                                              pop    edi
  0041e87a: 5e                                              pop    esi
  0041e87b: 8b c3                                           mov    eax,ebx
  0041e87d: 5b                                              pop    ebx
  0041e87e: 8b e5                                           mov    esp,ebp
  0041e880: 5d                                              pop    ebp
  0041e881: c2 04 00                                        ret    0x4

; ===== 0x0041E890 ?GetSkillLists@Character@@QAEPAV?$TemplateList@VUSER_SKILL@@@@XZ =====
  0041e890: 8d 81 e4 01 00 00                               lea    eax,[ecx+0x1e4]
  0041e896: c3                                              ret

; ===== 0x0041EC00 ?GetAgressivness@Character@@UAEDXZ =====
  0041ec00: 8a 81 2c 01 00 00                               mov    al,BYTE PTR [ecx+0x12c]
  0041ec06: c3                                              ret

; ===== 0x0041EC10 ?SetAgressivness@Character@@UAEXD@Z =====
  0041ec10: 55                                              push   ebp
  0041ec11: 8b ec                                           mov    ebp,esp
  0041ec13: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0041ec16: 88 81 2c 01 00 00                               mov    BYTE PTR [ecx+0x12c],al
  0041ec1c: 5d                                              pop    ebp
  0041ec1d: c2 04 00                                        ret    0x4

; ===== 0x0041EC20 ?GetEquipment@Character@@QAEPAPAVUnit@@XZ =====
  0041ec20: 8d 81 a0 01 00 00                               lea    eax,[ecx+0x1a0]
  0041ec26: c3                                              ret

; ===== 0x0041EC30 ?GetSpells@Character@@QAEPAV?$TemplateList@VUSER_SKILL@@@@XZ =====
  0041ec30: 8d 81 c0 03 00 00                               lea    eax,[ecx+0x3c0]
  0041ec36: c3                                              ret

; ===== 0x0041EC50 ?WaitForSaving@Character@@QAEXXZ =====
  0041ec50: 8b 81 20 01 00 00                               mov    eax,DWORD PTR [ecx+0x120]
  0041ec56: 6a ff                                           push   0xffffffff
  0041ec58: 50                                              push   eax
  0041ec59: ff 15 1c e1 4d 00                               call   DWORD PTR ds:0x4de11c
  0041ec5f: c3                                              ret

; ===== 0x0041EC60 ?SavingStart@Character@@AAEXXZ =====
  0041ec60: 55                                              push   ebp
  0041ec61: 8b ec                                           mov    ebp,esp
  0041ec63: 6a ff                                           push   0xffffffff
  0041ec65: 68 98 41 4d 00                                  push   0x4d4198
  0041ec6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041ec70: 50                                              push   eax
  0041ec71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041ec78: 51                                              push   ecx
  0041ec79: 56                                              push   esi
  0041ec7a: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041ec7d: 8b f1                                           mov    esi,ecx
  0041ec7f: 50                                              push   eax
  0041ec80: e8 cb ed ff ff                                  call   0x41da50
  0041ec85: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041ec87: 50                                              push   eax
  0041ec88: 68 2c 18 50 00                                  push   0x50182c
  0041ec8d: 68 00 08 00 00                                  push   0x800
  0041ec92: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041ec99: e8 a2 30 05 00                                  call   0x471d40
  0041ec9e: 83 c4 0c                                        add    esp,0xc
  0041eca1: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041eca4: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041ecab: e8 90 2d 0b 00                                  call   0x4d1a40
  0041ecb0: 8b 8e 20 01 00 00                               mov    ecx,DWORD PTR [esi+0x120]
  0041ecb6: 51                                              push   ecx
  0041ecb7: ff 15 3c e1 4d 00                               call   DWORD PTR ds:0x4de13c
  0041ecbd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041ecc0: 5e                                              pop    esi
  0041ecc1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041ecc8: 8b e5                                           mov    esp,ebp
  0041ecca: 5d                                              pop    ebp
  0041eccb: c3                                              ret

; ===== 0x0041ECD0 ?SavingStop@Character@@AAEXXZ =====
  0041ecd0: 55                                              push   ebp
  0041ecd1: 8b ec                                           mov    ebp,esp
  0041ecd3: 6a ff                                           push   0xffffffff
  0041ecd5: 68 b8 41 4d 00                                  push   0x4d41b8
  0041ecda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041ece0: 50                                              push   eax
  0041ece1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041ece8: 51                                              push   ecx
  0041ece9: 56                                              push   esi
  0041ecea: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041eced: 8b f1                                           mov    esi,ecx
  0041ecef: 50                                              push   eax
  0041ecf0: e8 5b ed ff ff                                  call   0x41da50
  0041ecf5: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041ecf7: 50                                              push   eax
  0041ecf8: 68 5c 12 50 00                                  push   0x50125c
  0041ecfd: 6a 04                                           push   0x4
  0041ecff: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041ed06: e8 35 30 05 00                                  call   0x471d40
  0041ed0b: 83 c4 0c                                        add    esp,0xc
  0041ed0e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041ed11: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041ed18: e8 23 2d 0b 00                                  call   0x4d1a40
  0041ed1d: 8b 8e 20 01 00 00                               mov    ecx,DWORD PTR [esi+0x120]
  0041ed23: 51                                              push   ecx
  0041ed24: ff 15 2c e1 4d 00                               call   DWORD PTR ds:0x4de12c
  0041ed2a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041ed2d: 5e                                              pop    esi
  0041ed2e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041ed35: 8b e5                                           mov    esp,ebp
  0041ed37: 5d                                              pop    ebp
  0041ed38: c3                                              ret

; ===== 0x0041ED40 ?PacketSkills@Character@@QAEXAAVTFCPacket@@_N@Z =====
  0041ed40: 55                                              push   ebp
  0041ed41: 8b ec                                           mov    ebp,esp
  0041ed43: 6a ff                                           push   0xffffffff
  0041ed45: 68 10 42 4d 00                                  push   0x4d4210
  0041ed4a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041ed50: 50                                              push   eax
  0041ed51: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041ed58: 83 ec 50                                        sub    esp,0x50
  0041ed5b: 53                                              push   ebx
  0041ed5c: 57                                              push   edi
  0041ed5d: 8b f9                                           mov    edi,ecx
  0041ed5f: 8b 8f 28 01 00 00                               mov    ecx,DWORD PTR [edi+0x128]
  0041ed65: 33 db                                           xor    ebx,ebx
  0041ed67: 3b cb                                           cmp    ecx,ebx
  0041ed69: 74 24                                           je     0x41ed8f
  0041ed6b: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  0041ed6e: 84 c0                                           test   al,al
  0041ed70: 75 1d                                           jne    0x41ed8f
  0041ed72: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041ed75: 6a 01                                           push   0x1
  0041ed77: 50                                              push   eax
  0041ed78: e8 c3 ff ff ff                                  call   0x41ed40
  0041ed7d: 5f                                              pop    edi
  0041ed7e: 5b                                              pop    ebx
  0041ed7f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041ed82: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041ed89: 8b e5                                           mov    esp,ebp
  0041ed8b: 5d                                              pop    ebp
  0041ed8c: c2 08 00                                        ret    0x8
  0041ed8f: 56                                              push   esi
  0041ed90: 8b cf                                           mov    ecx,edi
  0041ed92: e8 f9 fa ff ff                                  call   0x41e890
  0041ed97: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  0041ed9a: 51                                              push   ecx
  0041ed9b: 8b f0                                           mov    esi,eax
  0041ed9d: c7 45 a4 8c e5 4d 00                            mov    DWORD PTR [ebp-0x5c],0x4de58c
  0041eda4: c7 45 a8 ff ff ff ff                            mov    DWORD PTR [ebp-0x58],0xffffffff
  0041edab: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0041edb1: 89 5d c8                                        mov    DWORD PTR [ebp-0x38],ebx
  0041edb4: 89 5d cc                                        mov    DWORD PTR [ebp-0x34],ebx
  0041edb7: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041edba: 89 5d d4                                        mov    DWORD PTR [ebp-0x2c],ebx
  0041edbd: c7 45 a4 6c e8 4d 00                            mov    DWORD PTR [ebp-0x5c],0x4de86c
  0041edc4: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0041edc7: c6 45 d8 08                                     mov    BYTE PTR [ebp-0x28],0x8
  0041edcb: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0041edce: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0041edd1: 8d 5e 40                                        lea    ebx,[esi+0x40]
  0041edd4: c7 45 ec 07 00 00 00                            mov    DWORD PTR [ebp-0x14],0x7
  0041eddb: 8b 53 e4                                        mov    edx,DWORD PTR [ebx-0x1c]
  0041edde: 89 53 e0                                        mov    DWORD PTR [ebx-0x20],edx
  0041ede1: c7 03 00 00 00 00                               mov    DWORD PTR [ebx],0x0
  0041ede7: c6 43 f4 08                                     mov    BYTE PTR [ebx-0xc],0x8
  0041edeb: 8d 73 c0                                        lea    esi,[ebx-0x40]
  0041edee: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0041edf1: 85 c0                                           test   eax,eax
  0041edf3: 74 0a                                           je     0x41edff
  0041edf5: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041edf8: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041edfa: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0041edfd: eb 07                                           jmp    0x41ee06
  0041edff: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0041ee06: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041ee09: 85 c0                                           test   eax,eax
  0041ee0b: 0f 84 80 00 00 00                               je     0x41ee91
  0041ee11: 8b 53 e0                                        mov    edx,DWORD PTR [ebx-0x20]
  0041ee14: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0041ee17: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0041ee1a: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041ee1c: 50                                              push   eax
  0041ee1d: 8d 73 c0                                        lea    esi,[ebx-0x40]
  0041ee20: e8 6b 18 04 00                                  call   0x460690
  0041ee25: 83 c4 04                                        add    esp,0x4
  0041ee28: 85 c0                                           test   eax,eax
  0041ee2a: 74 c2                                           je     0x41edee
  0041ee2c: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  0041ee2f: 33 c9                                           xor    ecx,ecx
  0041ee31: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0041ee34: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041ee37: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0041ee3a: c6 45 d8 08                                     mov    BYTE PTR [ebp-0x28],0x8
  0041ee3e: 85 c9                                           test   ecx,ecx
  0041ee40: 74 07                                           je     0x41ee49
  0041ee42: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041ee44: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041ee47: eb 08                                           jmp    0x41ee51
  0041ee49: b9 01 00 00 00                                  mov    ecx,0x1
  0041ee4e: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0041ee51: 85 c0                                           test   eax,eax
  0041ee53: 74 11                                           je     0x41ee66
  0041ee55: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0041ee58: 39 50 08                                        cmp    DWORD PTR [eax+0x8],edx
  0041ee5b: 75 e1                                           jne    0x41ee3e
  0041ee5d: c7 45 0c 01 00 00 00                            mov    DWORD PTR [ebp+0xc],0x1
  0041ee64: eb d8                                           jmp    0x41ee3e
  0041ee66: 85 c9                                           test   ecx,ecx
  0041ee68: 74 04                                           je     0x41ee6e
  0041ee6a: c6 45 d8 07                                     mov    BYTE PTR [ebp-0x28],0x7
  0041ee6e: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041ee71: 85 c0                                           test   eax,eax
  0041ee73: c7 45 e4 00 00 00 00                            mov    DWORD PTR [ebp-0x1c],0x0
  0041ee7a: 0f 85 6e ff ff ff                               jne    0x41edee
  0041ee80: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0041ee83: 50                                              push   eax
  0041ee84: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  0041ee87: e8 74 63 00 00                                  call   0x425200
  0041ee8c: e9 5d ff ff ff                                  jmp    0x41edee
  0041ee91: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0041ee94: 85 c0                                           test   eax,eax
  0041ee96: 74 04                                           je     0x41ee9c
  0041ee98: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0041ee9c: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0041ee9f: 83 c3 44                                        add    ebx,0x44
  0041eea2: 48                                              dec    eax
  0041eea3: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0041eeaa: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0041eead: 0f 85 28 ff ff ff                               jne    0x41eddb
  0041eeb3: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0041eeb6: 6a 27                                           push   0x27
  0041eeb8: 8b ce                                           mov    ecx,esi
  0041eeba: e8 91 72 06 00                                  call   0x486150
  0041eebf: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0041eec2: 83 c1 02                                        add    ecx,0x2
  0041eec5: 51                                              push   ecx
  0041eec6: 8b ce                                           mov    ecx,esi
  0041eec8: e8 83 72 06 00                                  call   0x486150
  0041eecd: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0041eed0: e8 89 2b 0b 00                                  call   0x4d1a5e
  0041eed5: 6a 0c                                           push   0xc
  0041eed7: 8b ce                                           mov    ecx,esi
  0041eed9: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041eedd: e8 6e 72 06 00                                  call   0x486150
  0041eee2: 33 db                                           xor    ebx,ebx
  0041eee4: 53                                              push   ebx
  0041eee5: 8b ce                                           mov    ecx,esi
  0041eee7: e8 c4 72 06 00                                  call   0x4861b0
  0041eeec: 8b cf                                           mov    ecx,edi
  0041eeee: e8 fd f2 06 00                                  call   0x48e1f0
  0041eef3: 8b ce                                           mov    ecx,esi
  0041eef5: 50                                              push   eax
  0041eef6: e8 55 72 06 00                                  call   0x486150
  0041eefb: 8b cf                                           mov    ecx,edi
  0041eefd: e8 7e f3 06 00                                  call   0x48e280
  0041ef02: 8b ce                                           mov    ecx,esi
  0041ef04: 50                                              push   eax
  0041ef05: e8 46 72 06 00                                  call   0x486150
  0041ef0a: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041ef0c: 68 58 13 51 00                                  push   0x511358
  0041ef11: 8b cf                                           mov    ecx,edi
  0041ef13: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041ef19: 50                                              push   eax
  0041ef1a: 68 c1 01 00 00                                  push   0x1c1
  0041ef1f: e8 cc ea 01 00                                  call   0x43d9f0
  0041ef24: 83 c4 0c                                        add    esp,0xc
  0041ef27: 50                                              push   eax
  0041ef28: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041ef2b: e8 34 2b 0b 00                                  call   0x4d1a64
  0041ef30: 50                                              push   eax
  0041ef31: 8b ce                                           mov    ecx,esi
  0041ef33: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0041ef37: e8 14 74 06 00                                  call   0x486350
  0041ef3c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041ef3f: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041ef43: e8 f8 2a 0b 00                                  call   0x4d1a40
  0041ef48: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041ef4a: 68 58 13 51 00                                  push   0x511358
  0041ef4f: 8b cf                                           mov    ecx,edi
  0041ef51: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0041ef57: 50                                              push   eax
  0041ef58: 68 d1 1e 00 00                                  push   0x1ed1
  0041ef5d: e8 8e ea 01 00                                  call   0x43d9f0
  0041ef62: 83 c4 0c                                        add    esp,0xc
  0041ef65: 50                                              push   eax
  0041ef66: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041ef69: e8 f6 2a 0b 00                                  call   0x4d1a64
  0041ef6e: 50                                              push   eax
  0041ef6f: 8b ce                                           mov    ecx,esi
  0041ef71: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0041ef75: e8 d6 73 06 00                                  call   0x486350
  0041ef7a: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041ef7d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041ef81: e8 ba 2a 0b 00                                  call   0x4d1a40
  0041ef86: 6a 0b                                           push   0xb
  0041ef88: 8b ce                                           mov    ecx,esi
  0041ef8a: e8 c1 71 06 00                                  call   0x486150
  0041ef8f: 53                                              push   ebx
  0041ef90: 8b ce                                           mov    ecx,esi
  0041ef92: e8 19 72 06 00                                  call   0x4861b0
  0041ef97: 8b cf                                           mov    ecx,edi
  0041ef99: e8 72 f2 06 00                                  call   0x48e210
  0041ef9e: 8b ce                                           mov    ecx,esi
  0041efa0: 50                                              push   eax
  0041efa1: e8 aa 71 06 00                                  call   0x486150
  0041efa6: 8b cf                                           mov    ecx,edi
  0041efa8: e8 e3 f2 06 00                                  call   0x48e290
  0041efad: 50                                              push   eax
  0041efae: 8b ce                                           mov    ecx,esi
  0041efb0: e8 9b 71 06 00                                  call   0x486150
  0041efb5: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041efb7: 68 58 13 51 00                                  push   0x511358
  0041efbc: 8b cf                                           mov    ecx,edi
  0041efbe: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041efc4: 50                                              push   eax
  0041efc5: 68 c2 01 00 00                                  push   0x1c2
  0041efca: e8 21 ea 01 00                                  call   0x43d9f0
  0041efcf: 83 c4 0c                                        add    esp,0xc
  0041efd2: 50                                              push   eax
  0041efd3: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041efd6: e8 89 2a 0b 00                                  call   0x4d1a64
  0041efdb: 50                                              push   eax
  0041efdc: 8b ce                                           mov    ecx,esi
  0041efde: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0041efe2: e8 69 73 06 00                                  call   0x486350
  0041efe7: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041efea: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041efee: e8 4d 2a 0b 00                                  call   0x4d1a40
  0041eff3: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041eff5: 68 58 13 51 00                                  push   0x511358
  0041effa: 8b cf                                           mov    ecx,edi
  0041effc: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0041f002: 50                                              push   eax
  0041f003: 68 d2 1e 00 00                                  push   0x1ed2
  0041f008: e8 e3 e9 01 00                                  call   0x43d9f0
  0041f00d: 83 c4 0c                                        add    esp,0xc
  0041f010: 50                                              push   eax
  0041f011: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041f014: e8 4b 2a 0b 00                                  call   0x4d1a64
  0041f019: 50                                              push   eax
  0041f01a: 8b ce                                           mov    ecx,esi
  0041f01c: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0041f020: e8 2b 73 06 00                                  call   0x486350
  0041f025: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041f028: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041f02c: e8 0f 2a 0b 00                                  call   0x4d1a40
  0041f031: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  0041f034: 33 c9                                           xor    ecx,ecx
  0041f036: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041f039: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0041f03c: c6 45 d8 08                                     mov    BYTE PTR [ebp-0x28],0x8
  0041f040: 3b cb                                           cmp    ecx,ebx
  0041f042: 74 07                                           je     0x41f04b
  0041f044: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041f046: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041f049: eb 08                                           jmp    0x41f053
  0041f04b: b9 01 00 00 00                                  mov    ecx,0x1
  0041f050: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0041f053: 3b c3                                           cmp    eax,ebx
  0041f055: 0f 84 fc 00 00 00                               je     0x41f157
  0041f05b: 8b 58 08                                        mov    ebx,DWORD PTR [eax+0x8]
  0041f05e: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0041f060: 50                                              push   eax
  0041f061: e8 2a 16 04 00                                  call   0x460690
  0041f066: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0041f069: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0041f06b: 83 c4 04                                        add    esp,0x4
  0041f06e: 50                                              push   eax
  0041f06f: 8b ce                                           mov    ecx,esi
  0041f071: e8 da 70 06 00                                  call   0x486150
  0041f076: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041f079: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0041f07c: f6 c4 01                                        test   ah,0x1
  0041f07f: 74 04                                           je     0x41f085
  0041f081: 6a 03                                           push   0x3
  0041f083: eb 12                                           jmp    0x41f097
  0041f085: a8 80                                           test   al,0x80
  0041f087: 74 04                                           je     0x41f08d
  0041f089: 6a 02                                           push   0x2
  0041f08b: eb 0a                                           jmp    0x41f097
  0041f08d: a8 01                                           test   al,0x1
  0041f08f: 74 04                                           je     0x41f095
  0041f091: 6a 01                                           push   0x1
  0041f093: eb 02                                           jmp    0x41f097
  0041f095: 6a 00                                           push   0x0
  0041f097: 8b ce                                           mov    ecx,esi
  0041f099: e8 12 71 06 00                                  call   0x4861b0
  0041f09e: 33 d2                                           xor    edx,edx
  0041f0a0: 66 8b 13                                        mov    dx,WORD PTR [ebx]
  0041f0a3: 66 81 c2 10 27                                  add    dx,0x2710
  0041f0a8: 8b cf                                           mov    ecx,edi
  0041f0aa: 52                                              push   edx
  0041f0ab: e8 b0 ed 06 00                                  call   0x48de60
  0041f0b0: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0041f0b3: f7 d8                                           neg    eax
  0041f0b5: 3b c1                                           cmp    eax,ecx
  0041f0b7: 7e 07                                           jle    0x41f0c0
  0041f0b9: 33 c0                                           xor    eax,eax
  0041f0bb: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0041f0be: eb 04                                           jmp    0x41f0c4
  0041f0c0: 2b c8                                           sub    ecx,eax
  0041f0c2: 8b c1                                           mov    eax,ecx
  0041f0c4: 50                                              push   eax
  0041f0c5: 8b ce                                           mov    ecx,esi
  0041f0c7: e8 84 70 06 00                                  call   0x486150
  0041f0cc: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  0041f0cf: 53                                              push   ebx
  0041f0d0: 8b ce                                           mov    ecx,esi
  0041f0d2: e8 79 70 06 00                                  call   0x486150
  0041f0d7: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041f0d9: 8b cf                                           mov    ecx,edi
  0041f0db: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0041f0e1: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0041f0e4: 8b cb                                           mov    ecx,ebx
  0041f0e6: 50                                              push   eax
  0041f0e7: e8 74 0e 04 00                                  call   0x45ff60
  0041f0ec: 50                                              push   eax
  0041f0ed: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0041f0f0: e8 6f 29 0b 00                                  call   0x4d1a64
  0041f0f5: 50                                              push   eax
  0041f0f6: 8b ce                                           mov    ecx,esi
  0041f0f8: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0041f0fc: e8 4f 72 06 00                                  call   0x486350
  0041f101: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0041f104: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041f108: e8 33 29 0b 00                                  call   0x4d1a40
  0041f10d: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041f10f: 8b cf                                           mov    ecx,edi
  0041f111: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041f117: 68 58 13 51 00                                  push   0x511358
  0041f11c: 50                                              push   eax
  0041f11d: 8b 43 14                                        mov    eax,DWORD PTR [ebx+0x14]
  0041f120: 50                                              push   eax
  0041f121: e8 ca e8 01 00                                  call   0x43d9f0
  0041f126: 83 c4 0c                                        add    esp,0xc
  0041f129: 50                                              push   eax
  0041f12a: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041f12d: e8 32 29 0b 00                                  call   0x4d1a64
  0041f132: 50                                              push   eax
  0041f133: 8b ce                                           mov    ecx,esi
  0041f135: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0041f139: e8 12 72 06 00                                  call   0x486350
  0041f13e: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041f141: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041f145: e8 f6 28 0b 00                                  call   0x4d1a40
  0041f14a: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  0041f14d: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0041f150: 33 db                                           xor    ebx,ebx
  0041f152: e9 e9 fe ff ff                                  jmp    0x41f040
  0041f157: 3b cb                                           cmp    ecx,ebx
  0041f159: 5e                                              pop    esi
  0041f15a: 74 04                                           je     0x41f160
  0041f15c: c6 45 d8 07                                     mov    BYTE PTR [ebp-0x28],0x7
  0041f160: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0041f163: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0041f166: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0041f16a: e8 d1 28 0b 00                                  call   0x4d1a40
  0041f16f: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  0041f172: 8b c2                                           mov    eax,edx
  0041f174: 33 c9                                           xor    ecx,ecx
  0041f176: c7 45 a4 6c e8 4d 00                            mov    DWORD PTR [ebp-0x5c],0x4de86c
  0041f17d: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041f180: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0041f183: c6 45 d8 08                                     mov    BYTE PTR [ebp-0x28],0x8
  0041f187: 3b cb                                           cmp    ecx,ebx
  0041f189: 74 07                                           je     0x41f192
  0041f18b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041f18d: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041f190: eb 08                                           jmp    0x41f19a
  0041f192: b9 01 00 00 00                                  mov    ecx,0x1
  0041f197: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0041f19a: 3b c3                                           cmp    eax,ebx
  0041f19c: 0f 84 ab 00 00 00                               je     0x41f24d
  0041f1a2: 8b 7d dc                                        mov    edi,DWORD PTR [ebp-0x24]
  0041f1a5: 8b 4d cc                                        mov    ecx,DWORD PTR [ebp-0x34]
  0041f1a8: 4f                                              dec    edi
  0041f1a9: 3b c1                                           cmp    eax,ecx
  0041f1ab: 89 45 d0                                        mov    DWORD PTR [ebp-0x30],eax
  0041f1ae: 89 7d dc                                        mov    DWORD PTR [ebp-0x24],edi
  0041f1b1: 74 38                                           je     0x41f1eb
  0041f1b3: 3b c2                                           cmp    eax,edx
  0041f1b5: 74 54                                           je     0x41f20b
  0041f1b7: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041f1b9: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041f1bc: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0041f1bf: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  0041f1c2: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041f1c5: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041f1c7: 89 11                                           mov    DWORD PTR [ecx],edx
  0041f1c9: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0041f1cc: 83 f8 01                                        cmp    eax,0x1
  0041f1cf: 75 0b                                           jne    0x41f1dc
  0041f1d1: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  0041f1d4: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041f1d7: 89 4d c4                                        mov    DWORD PTR [ebp-0x3c],ecx
  0041f1da: eb 57                                           jmp    0x41f233
  0041f1dc: 83 f8 02                                        cmp    eax,0x2
  0041f1df: 75 52                                           jne    0x41f233
  0041f1e1: 8b 55 c4                                        mov    edx,DWORD PTR [ebp-0x3c]
  0041f1e4: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041f1e6: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041f1e9: eb 48                                           jmp    0x41f233
  0041f1eb: 3b c2                                           cmp    eax,edx
  0041f1ed: 74 1c                                           je     0x41f20b
  0041f1ef: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041f1f2: 89 19                                           mov    DWORD PTR [ecx],ebx
  0041f1f4: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  0041f1f7: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041f1fa: 89 55 cc                                        mov    DWORD PTR [ebp-0x34],edx
  0041f1fd: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041f200: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041f203: 83 7d e4 02                                     cmp    DWORD PTR [ebp-0x1c],0x2
  0041f207: 75 2a                                           jne    0x41f233
  0041f209: eb 25                                           jmp    0x41f230
  0041f20b: 3b c1                                           cmp    eax,ecx
  0041f20d: 74 18                                           je     0x41f227
  0041f20f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041f211: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0041f214: 8b 55 c4                                        mov    edx,DWORD PTR [ebp-0x3c]
  0041f217: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041f219: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0041f21c: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  0041f21f: 83 7d e4 01                                     cmp    DWORD PTR [ebp-0x1c],0x1
  0041f223: 75 0e                                           jne    0x41f233
  0041f225: eb 09                                           jmp    0x41f230
  0041f227: 89 5d c4                                        mov    DWORD PTR [ebp-0x3c],ebx
  0041f22a: 89 5d c8                                        mov    DWORD PTR [ebp-0x38],ebx
  0041f22d: 89 5d cc                                        mov    DWORD PTR [ebp-0x34],ebx
  0041f230: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0041f233: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0041f236: 50                                              push   eax
  0041f237: e8 24 2e 02 00                                  call   0x442060
  0041f23c: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  0041f23f: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  0041f242: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0041f245: 83 c4 04                                        add    esp,0x4
  0041f248: e9 3a ff ff ff                                  jmp    0x41f187
  0041f24d: 3b cb                                           cmp    ecx,ebx
  0041f24f: 74 04                                           je     0x41f255
  0041f251: c6 45 d8 07                                     mov    BYTE PTR [ebp-0x28],0x7
  0041f255: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  0041f258: 51                                              push   ecx
  0041f259: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0041f25c: c7 45 a4 8c e5 4d 00                            mov    DWORD PTR [ebp-0x5c],0x4de58c
  0041f263: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  0041f269: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041f26c: 5f                                              pop    edi
  0041f26d: 5b                                              pop    ebx
  0041f26e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041f275: 8b e5                                           mov    esp,ebp
  0041f277: 5d                                              pop    ebp
  0041f278: c2 08 00                                        ret    0x8

; ===== 0x0041F280 ?PacketSpells@Character@@QAEXAAVTFCPacket@@E_N@Z =====
  0041f280: 55                                              push   ebp
  0041f281: 8b ec                                           mov    ebp,esp
  0041f283: 6a ff                                           push   0xffffffff
  0041f285: 68 31 42 4d 00                                  push   0x4d4231
  0041f28a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041f290: 50                                              push   eax
  0041f291: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041f298: 83 ec 14                                        sub    esp,0x14
  0041f29b: 53                                              push   ebx
  0041f29c: 8b d9                                           mov    ebx,ecx
  0041f29e: 8b 83 28 01 00 00                               mov    eax,DWORD PTR [ebx+0x128]
  0041f2a4: 85 c0                                           test   eax,eax
  0041f2a6: 56                                              push   esi
  0041f2a7: 57                                              push   edi
  0041f2a8: 74 15                                           je     0x41f2bf
  0041f2aa: 8a 4d 10                                        mov    cl,BYTE PTR [ebp+0x10]
  0041f2ad: 84 c9                                           test   cl,cl
  0041f2af: 75 0e                                           jne    0x41f2bf
  0041f2b1: 8b d8                                           mov    ebx,eax
  0041f2b3: 8b 83 28 01 00 00                               mov    eax,DWORD PTR [ebx+0x128]
  0041f2b9: 85 c0                                           test   eax,eax
  0041f2bb: b1 01                                           mov    cl,0x1
  0041f2bd: 75 ee                                           jne    0x41f2ad
  0041f2bf: 8b cb                                           mov    ecx,ebx
  0041f2c1: e8 6a f9 ff ff                                  call   0x41ec30
  0041f2c6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0041f2c9: 8b f0                                           mov    esi,eax
  0041f2cb: 6a 3e                                           push   0x3e
  0041f2cd: 8b cf                                           mov    ecx,edi
  0041f2cf: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0041f2d2: e8 79 6e 06 00                                  call   0x486150
  0041f2d7: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041f2da: 50                                              push   eax
  0041f2db: 8b cf                                           mov    ecx,edi
  0041f2dd: e8 ce 6e 06 00                                  call   0x4861b0
  0041f2e2: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0041f2e4: 8b cb                                           mov    ecx,ebx
  0041f2e6: ff 92 ec 00 00 00                               call   DWORD PTR [edx+0xec]
  0041f2ec: 8b cf                                           mov    ecx,edi
  0041f2ee: 50                                              push   eax
  0041f2ef: e8 5c 6e 06 00                                  call   0x486150
  0041f2f4: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0041f2f6: 8b cb                                           mov    ecx,ebx
  0041f2f8: ff 90 e0 00 00 00                               call   DWORD PTR [eax+0xe0]
  0041f2fe: 8b cf                                           mov    ecx,edi
  0041f300: 50                                              push   eax
  0041f301: e8 4a 6e 06 00                                  call   0x486150
  0041f306: 8b 46 38                                        mov    eax,DWORD PTR [esi+0x38]
  0041f309: 50                                              push   eax
  0041f30a: 8b cf                                           mov    ecx,edi
  0041f30c: e8 3f 6e 06 00                                  call   0x486150
  0041f311: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041f313: 8b ce                                           mov    ecx,esi
  0041f315: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041f318: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  0041f31b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0041f31e: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0041f325: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0041f329: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0041f32c: 85 c0                                           test   eax,eax
  0041f32e: 74 0a                                           je     0x41f33a
  0041f330: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0041f333: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041f335: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0041f338: eb 07                                           jmp    0x41f341
  0041f33a: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0041f341: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0041f344: 85 c0                                           test   eax,eax
  0041f346: 0f 84 98 01 00 00                               je     0x41f4e4
  0041f34c: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041f34f: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0041f352: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041f354: 50                                              push   eax
  0041f355: e8 d6 2e 04 00                                  call   0x462230
  0041f35a: 8b f0                                           mov    esi,eax
  0041f35c: 83 c4 04                                        add    esp,0x4
  0041f35f: 85 f6                                           test   esi,esi
  0041f361: 0f 84 6c 01 00 00                               je     0x41f4d3
  0041f367: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041f36a: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041f36c: 50                                              push   eax
  0041f36d: 8b cf                                           mov    ecx,edi
  0041f36f: e8 dc 6d 06 00                                  call   0x486150
  0041f374: 8a 8e 3a 02 00 00                               mov    cl,BYTE PTR [esi+0x23a]
  0041f37a: 88 4d 0c                                        mov    BYTE PTR [ebp+0xc],cl
  0041f37d: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0041f380: 52                                              push   edx
  0041f381: 8b cf                                           mov    ecx,edi
  0041f383: e8 28 6e 06 00                                  call   0x4861b0
  0041f388: 6a 00                                           push   0x0
  0041f38a: 6a 00                                           push   0x0
  0041f38c: 6a 00                                           push   0x0
  0041f38e: 6a 00                                           push   0x0
  0041f390: 6a 00                                           push   0x0
  0041f392: 6a 00                                           push   0x0
  0041f394: 6a 00                                           push   0x0
  0041f396: 6a 00                                           push   0x0
  0041f398: 53                                              push   ebx
  0041f399: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0041f39c: e8 af cf fe ff                                  call   0x40c350
  0041f3a1: e8 d4 29 0b 00                                  call   0x4d1d7a
  0041f3a6: 8b cf                                           mov    ecx,edi
  0041f3a8: 50                                              push   eax
  0041f3a9: e8 a2 6d 06 00                                  call   0x486150
  0041f3ae: 6a 00                                           push   0x0
  0041f3b0: 6a 00                                           push   0x0
  0041f3b2: 6a 00                                           push   0x0
  0041f3b4: 6a 00                                           push   0x0
  0041f3b6: 6a 00                                           push   0x0
  0041f3b8: 6a 00                                           push   0x0
  0041f3ba: 6a 00                                           push   0x0
  0041f3bc: 6a 00                                           push   0x0
  0041f3be: 53                                              push   ebx
  0041f3bf: 8d 4e 78                                        lea    ecx,[esi+0x78]
  0041f3c2: e8 89 cf fe ff                                  call   0x40c350
  0041f3c7: e8 ae 29 0b 00                                  call   0x4d1d7a
  0041f3cc: 50                                              push   eax
  0041f3cd: 8b cf                                           mov    ecx,edi
  0041f3cf: e8 1c 6e 06 00                                  call   0x4861f0
  0041f3d4: 33 c0                                           xor    eax,eax
  0041f3d6: 66 8b 86 38 03 00 00                            mov    ax,WORD PTR [esi+0x338]
  0041f3dd: 8b cf                                           mov    ecx,edi
  0041f3df: 50                                              push   eax
  0041f3e0: e8 6b 6d 06 00                                  call   0x486150
  0041f3e5: 66 0f b6 8e 38 02 00 00                         movzx  cx,BYTE PTR [esi+0x238]
  0041f3ed: 51                                              push   ecx
  0041f3ee: 8b cf                                           mov    ecx,edi
  0041f3f0: e8 5b 6d 06 00                                  call   0x486150
  0041f3f5: 66 0f b6 96 39 02 00 00                         movzx  dx,BYTE PTR [esi+0x239]
  0041f3fd: 8b cf                                           mov    ecx,edi
  0041f3ff: 52                                              push   edx
  0041f400: e8 4b 6d 06 00                                  call   0x486150
  0041f405: 8b 86 44 02 00 00                               mov    eax,DWORD PTR [esi+0x244]
  0041f40b: 50                                              push   eax
  0041f40c: 8b cf                                           mov    ecx,edi
  0041f40e: e8 dd 6d 06 00                                  call   0x4861f0
  0041f413: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0041f415: 8b cb                                           mov    ecx,ebx
  0041f417: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041f41d: 8b ce                                           mov    ecx,esi
  0041f41f: 50                                              push   eax
  0041f420: 8d 45 e0                                        lea    eax,[ebp-0x20]
  0041f423: 50                                              push   eax
  0041f424: e8 e7 00 00 00                                  call   0x41f510
  0041f429: 50                                              push   eax
  0041f42a: 8b cf                                           mov    ecx,edi
  0041f42c: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0041f433: e8 f8 6e 06 00                                  call   0x486330
  0041f438: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0041f43b: 33 d2                                           xor    edx,edx
  0041f43d: 3b c2                                           cmp    eax,edx
  0041f43f: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041f446: 74 1e                                           je     0x41f466
  0041f448: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0041f44b: 8a 01                                           mov    al,BYTE PTR [ecx]
  0041f44d: 84 c0                                           test   al,al
  0041f44f: 74 0a                                           je     0x41f45b
  0041f451: 3c ff                                           cmp    al,0xff
  0041f453: 74 06                                           je     0x41f45b
  0041f455: fe c8                                           dec    al
  0041f457: 88 01                                           mov    BYTE PTR [ecx],al
  0041f459: eb 0b                                           jmp    0x41f466
  0041f45b: 51                                              push   ecx
  0041f45c: e8 ff 2b 02 00                                  call   0x442060
  0041f461: 83 c4 04                                        add    esp,0x4
  0041f464: 33 d2                                           xor    edx,edx
  0041f466: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  0041f469: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  0041f46c: 89 55 ec                                        mov    DWORD PTR [ebp-0x14],edx
  0041f46f: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0041f471: 8b cb                                           mov    ecx,ebx
  0041f473: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041f479: 8b 8e 00 04 00 00                               mov    ecx,DWORD PTR [esi+0x400]
  0041f47f: 85 c9                                           test   ecx,ecx
  0041f481: 75 07                                           jne    0x41f48a
  0041f483: b8 58 13 51 00                                  mov    eax,0x511358
  0041f488: eb 1a                                           jmp    0x41f4a4
  0041f48a: 8b b6 fc 03 00 00                               mov    esi,DWORD PTR [esi+0x3fc]
  0041f490: 85 f6                                           test   esi,esi
  0041f492: 75 06                                           jne    0x41f49a
  0041f494: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0041f49a: 50                                              push   eax
  0041f49b: 56                                              push   esi
  0041f49c: e8 9f e6 01 00                                  call   0x43db40
  0041f4a1: 83 c4 08                                        add    esp,0x8
  0041f4a4: 50                                              push   eax
  0041f4a5: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041f4a8: e8 b7 25 0b 00                                  call   0x4d1a64
  0041f4ad: 50                                              push   eax
  0041f4ae: 8b cf                                           mov    ecx,edi
  0041f4b0: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0041f4b7: e8 94 6e 06 00                                  call   0x486350
  0041f4bc: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041f4bf: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041f4c6: e8 75 25 0b 00                                  call   0x4d1a40
  0041f4cb: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0041f4ce: e9 56 fe ff ff                                  jmp    0x41f329
  0041f4d3: 6a 00                                           push   0x0
  0041f4d5: 8b cf                                           mov    ecx,edi
  0041f4d7: e8 74 6c 06 00                                  call   0x486150
  0041f4dc: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0041f4df: e9 45 fe ff ff                                  jmp    0x41f329
  0041f4e4: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0041f4e7: 85 c0                                           test   eax,eax
  0041f4e9: 74 04                                           je     0x41f4ef
  0041f4eb: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0041f4ef: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041f4f1: 8b ce                                           mov    ecx,esi
  0041f4f3: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0041f4fa: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041f4fd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041f500: 5f                                              pop    edi
  0041f501: 5e                                              pop    esi
  0041f502: 5b                                              pop    ebx
  0041f503: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041f50a: 8b e5                                           mov    esp,ebp
  0041f50c: 5d                                              pop    ebp
  0041f50d: c2 0c 00                                        ret    0xc

; ===== 0x0041F7B0 ?GetLang@Character@@UAEGXZ =====
  0041f7b0: 66 8b 81 1c 01 00 00                            mov    ax,WORD PTR [ecx+0x11c]
  0041f7b7: c3                                              ret

; ===== 0x0041F7C0 ?GetMaxWeight@Character@@UAEHXZ =====
  0041f7c0: 56                                              push   esi
  0041f7c1: 57                                              push   edi
  0041f7c2: 8b f1                                           mov    esi,ecx
  0041f7c4: e8 87 e9 06 00                                  call   0x48e150
  0041f7c9: 8b ce                                           mov    ecx,esi
  0041f7cb: 25 ff ff 00 00                                  and    eax,0xffff
  0041f7d0: 8d 04 80                                        lea    eax,[eax+eax*4]
  0041f7d3: 8d 04 80                                        lea    eax,[eax+eax*4]
  0041f7d6: 8d 3c 80                                        lea    edi,[eax+eax*4]
  0041f7d9: c1 e7 02                                        shl    edi,0x2
  0041f7dc: e8 6f e9 06 00                                  call   0x48e150
  0041f7e1: 66 8b c8                                        mov    cx,ax
  0041f7e4: 8b c7                                           mov    eax,edi
  0041f7e6: 99                                              cdq
  0041f7e7: 5f                                              pop    edi
  0041f7e8: 5e                                              pop    esi
  0041f7e9: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0041f7ef: 83 c1 64                                        add    ecx,0x64
  0041f7f2: f7 f9                                           idiv   ecx
  0041f7f4: c3                                              ret

; ===== 0x0041F800 ?GetWeight@Character@@UAEHXZ =====
  0041f800: 55                                              push   ebp
  0041f801: 8b ec                                           mov    ebp,esp
  0041f803: 51                                              push   ecx
  0041f804: 53                                              push   ebx
  0041f805: 56                                              push   esi
  0041f806: 8b f1                                           mov    esi,ecx
  0041f808: 8b 8e 9c 01 00 00                               mov    ecx,DWORD PTR [esi+0x19c]
  0041f80e: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041f810: 57                                              push   edi
  0041f811: 33 db                                           xor    ebx,ebx
  0041f813: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0041f816: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041f81c: 8b 48 24                                        mov    ecx,DWORD PTR [eax+0x24]
  0041f81f: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0041f822: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0041f825: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  0041f829: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041f82f: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  0041f832: 85 c9                                           test   ecx,ecx
  0041f834: 74 0a                                           je     0x41f840
  0041f836: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0041f839: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0041f83b: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0041f83e: eb 07                                           jmp    0x41f847
  0041f840: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  0041f847: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041f84a: 85 c9                                           test   ecx,ecx
  0041f84c: 74 2c                                           je     0x41f87a
  0041f84e: 8b 96 9c 01 00 00                               mov    edx,DWORD PTR [esi+0x19c]
  0041f854: 8b 42 20                                        mov    eax,DWORD PTR [edx+0x20]
  0041f857: 8b 78 08                                        mov    edi,DWORD PTR [eax+0x8]
  0041f85a: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041f85c: 8b cf                                           mov    ecx,edi
  0041f85e: ff 92 98 01 00 00                               call   DWORD PTR [edx+0x198]
  0041f864: 8b d0                                           mov    edx,eax
  0041f866: 8b cf                                           mov    ecx,edi
  0041f868: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0041f86b: e8 80 cb 02 00                                  call   0x44c3f0
  0041f870: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0041f873: 0f af c8                                        imul   ecx,eax
  0041f876: 03 d9                                           add    ebx,ecx
  0041f878: eb af                                           jmp    0x41f829
  0041f87a: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  0041f87d: 85 c9                                           test   ecx,ecx
  0041f87f: 74 04                                           je     0x41f885
  0041f881: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  0041f885: c7 40 40 00 00 00 00                            mov    DWORD PTR [eax+0x40],0x0
  0041f88c: 8b 8e 9c 01 00 00                               mov    ecx,DWORD PTR [esi+0x19c]
  0041f892: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041f894: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041f897: 33 ff                                           xor    edi,edi
  0041f899: 8b 8c be a0 01 00 00                            mov    ecx,DWORD PTR [esi+edi*4+0x1a0]
  0041f8a0: 85 c9                                           test   ecx,ecx
  0041f8a2: 74 27                                           je     0x41f8cb
  0041f8a4: 83 ff 09                                        cmp    edi,0x9
  0041f8a7: 75 18                                           jne    0x41f8c1
  0041f8a9: 8b 8e c4 01 00 00                               mov    ecx,DWORD PTR [esi+0x1c4]
  0041f8af: 39 8e c0 01 00 00                               cmp    DWORD PTR [esi+0x1c0],ecx
  0041f8b5: 74 14                                           je     0x41f8cb
  0041f8b7: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041f8b9: ff 90 98 01 00 00                               call   DWORD PTR [eax+0x198]
  0041f8bf: eb 08                                           jmp    0x41f8c9
  0041f8c1: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041f8c3: ff 92 98 01 00 00                               call   DWORD PTR [edx+0x198]
  0041f8c9: 03 d8                                           add    ebx,eax
  0041f8cb: 47                                              inc    edi
  0041f8cc: 83 ff 10                                        cmp    edi,0x10
  0041f8cf: 7c c8                                           jl     0x41f899
  0041f8d1: 5f                                              pop    edi
  0041f8d2: 5e                                              pop    esi
  0041f8d3: 8b c3                                           mov    eax,ebx
  0041f8d5: 5b                                              pop    ebx
  0041f8d6: 8b e5                                           mov    esp,ebp
  0041f8d8: 5d                                              pop    ebp
  0041f8d9: c3                                              ret

; ===== 0x0041FAA0 ?NextLevelXP@Character@@UAE_JXZ =====
  0041faa0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041faa2: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041faa8: 8b c8                                           mov    ecx,eax
  0041faaa: 66 81 f9 c8 00                                  cmp    cx,0xc8
  0041faaf: 72 07                                           jb     0x41fab8
  0041fab1: b9 c7 00 00 00                                  mov    ecx,0xc7
  0041fab6: eb 0a                                           jmp    0x41fac2
  0041fab8: 66 85 c9                                        test   cx,cx
  0041fabb: 75 05                                           jne    0x41fac2
  0041fabd: b9 01 00 00 00                                  mov    ecx,0x1
  0041fac2: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0041fac8: 8b 04 cd 18 1b 51 00                            mov    eax,DWORD PTR [ecx*8+0x511b18]
  0041facf: 8b 14 cd 1c 1b 51 00                            mov    edx,DWORD PTR [ecx*8+0x511b1c]
  0041fad6: c3                                              ret

; ===== 0x0041FAE0 ?PreviousLevelXP@Character@@QAE_JXZ =====
  0041fae0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041fae2: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041fae8: 33 c9                                           xor    ecx,ecx
  0041faea: 66 8b c8                                        mov    cx,ax
  0041faed: 49                                              dec    ecx
  0041faee: 66 81 f9 c8 00                                  cmp    cx,0xc8
  0041faf3: 72 07                                           jb     0x41fafc
  0041faf5: b9 c7 00 00 00                                  mov    ecx,0xc7
  0041fafa: eb 0a                                           jmp    0x41fb06
  0041fafc: 66 85 c9                                        test   cx,cx
  0041faff: 75 05                                           jne    0x41fb06
  0041fb01: b9 01 00 00 00                                  mov    ecx,0x1
  0041fb06: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0041fb0c: 8b 04 cd 18 1b 51 00                            mov    eax,DWORD PTR [ecx*8+0x511b18]
  0041fb13: 8b 14 cd 1c 1b 51 00                            mov    edx,DWORD PTR [ecx*8+0x511b1c]
  0041fb1a: c3                                              ret

; ===== 0x0041FB20 ?XPtoLevel@Character@@UAE_JXZ =====
  0041fb20: 56                                              push   esi
  0041fb21: 57                                              push   edi
  0041fb22: 8b f9                                           mov    edi,ecx
  0041fb24: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041fb26: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041fb2c: 8b f0                                           mov    esi,eax
  0041fb2e: 66 81 fe c8 00                                  cmp    si,0xc8
  0041fb33: 72 07                                           jb     0x41fb3c
  0041fb35: be c7 00 00 00                                  mov    esi,0xc7
  0041fb3a: eb 0a                                           jmp    0x41fb46
  0041fb3c: 66 85 f6                                        test   si,si
  0041fb3f: 75 05                                           jne    0x41fb46
  0041fb41: be 01 00 00 00                                  mov    esi,0x1
  0041fb46: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041fb48: 8b cf                                           mov    ecx,edi
  0041fb4a: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0041fb4d: 81 e6 ff ff 00 00                               and    esi,0xffff
  0041fb53: 8b 0c f5 18 1b 51 00                            mov    ecx,DWORD PTR [esi*8+0x511b18]
  0041fb5a: 8b 34 f5 1c 1b 51 00                            mov    esi,DWORD PTR [esi*8+0x511b1c]
  0041fb61: 2b c8                                           sub    ecx,eax
  0041fb63: 1b f2                                           sbb    esi,edx
  0041fb65: 5f                                              pop    edi
  0041fb66: 8b d6                                           mov    edx,esi
  0041fb68: 8b c1                                           mov    eax,ecx
  0041fb6a: 5e                                              pop    esi
  0041fb6b: c3                                              ret

; ===== 0x0041FC80 ?Disturbed@Character@@QAEXXZ =====
  0041fc80: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041fc82: 68 32 4e 00 00                                  push   0x4e32
  0041fc87: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041fc8a: c3                                              ret

; ===== 0x0041FC90 ?PreTranslateInGameMessage@Character@@QAE_NVCString@@@Z =====
  0041fc90: 55                                              push   ebp
  0041fc91: 8b ec                                           mov    ebp,esp
  0041fc93: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0041fc96: e8 a5 1d 0b 00                                  call   0x4d1a40
  0041fc9b: b0 01                                           mov    al,0x1
  0041fc9d: 5d                                              pop    ebp
  0041fc9e: c2 04 00                                        ret    0x4

; ===== 0x0041FCB0 ?SetGroup@Character@@QAEXPAVGroup@@@Z =====
  0041fcb0: 55                                              push   ebp
  0041fcb1: 8b ec                                           mov    ebp,esp
  0041fcb3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041fcb6: 89 81 24 01 00 00                               mov    DWORD PTR [ecx+0x124],eax
  0041fcbc: 5d                                              pop    ebp
  0041fcbd: c2 04 00                                        ret    0x4

; ===== 0x0041FCC0 ?GetGroup@Character@@QAEPAVGroup@@XZ =====
  0041fcc0: 8b 81 24 01 00 00                               mov    eax,DWORD PTR [ecx+0x124]
  0041fcc6: c3                                              ret

; ===== 0x0041FCD0 ?VaporizeUnit@Character@@UAEXXZ =====
  0041fcd0: 55                                              push   ebp
  0041fcd1: 8b ec                                           mov    ebp,esp
  0041fcd3: 83 ec 20                                        sub    esp,0x20
  0041fcd6: 8b d1                                           mov    edx,ecx
  0041fcd8: 57                                              push   edi
  0041fcd9: 33 c0                                           xor    eax,eax
  0041fcdb: b9 08 00 00 00                                  mov    ecx,0x8
  0041fce0: 8d 7d e0                                        lea    edi,[ebp-0x20]
  0041fce3: f3 ab                                           rep stos DWORD PTR es:[edi],eax
  0041fce5: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041fce7: 6a 00                                           push   0x0
  0041fce9: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0041fcec: 51                                              push   ecx
  0041fced: 8b ca                                           mov    ecx,edx
  0041fcef: ff 50 44                                        call   DWORD PTR [eax+0x44]
  0041fcf2: 5f                                              pop    edi
  0041fcf3: 8b e5                                           mov    esp,ebp
  0041fcf5: 5d                                              pop    ebp
  0041fcf6: c3                                              ret

; ===== 0x0041FD00 ?CopySpells@Character@@QAEXPAVUnit@@@Z =====
  0041fd00: 55                                              push   ebp
  0041fd01: 8b ec                                           mov    ebp,esp
  0041fd03: 56                                              push   esi
  0041fd04: 57                                              push   edi
  0041fd05: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0041fd08: 8b f1                                           mov    esi,ecx
  0041fd0a: 8b cf                                           mov    ecx,edi
  0041fd0c: e8 5f b9 06 00                                  call   0x48b670
  0041fd11: 3c 02                                           cmp    al,0x2
  0041fd13: 0f 85 aa 00 00 00                               jne    0x41fdc3
  0041fd19: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041fd1b: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0041fd1e: 51                                              push   ecx
  0041fd1f: 6a 00                                           push   0x0
  0041fd21: 6a 00                                           push   0x0
  0041fd23: 6a 00                                           push   0x0
  0041fd25: 57                                              push   edi
  0041fd26: 6a 14                                           push   0x14
  0041fd28: 8b cf                                           mov    ecx,edi
  0041fd2a: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0041fd2d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041fd30: 85 c0                                           test   eax,eax
  0041fd32: 0f 84 8b 00 00 00                               je     0x41fdc3
  0041fd38: 8b 96 e4 03 00 00                               mov    edx,DWORD PTR [esi+0x3e4]
  0041fd3e: 81 c6 c0 03 00 00                               add    esi,0x3c0
  0041fd44: 8b ce                                           mov    ecx,esi
  0041fd46: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0041fd49: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0041fd50: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0041fd54: e8 b7 49 00 00                                  call   0x424710
  0041fd59: 85 c0                                           test   eax,eax
  0041fd5b: 74 12                                           je     0x41fd6f
  0041fd5d: 8b ce                                           mov    ecx,esi
  0041fd5f: e8 dc 48 00 00                                  call   0x424640
  0041fd64: 8b ce                                           mov    ecx,esi
  0041fd66: e8 a5 49 00 00                                  call   0x424710
  0041fd6b: 85 c0                                           test   eax,eax
  0041fd6d: 75 ee                                           jne    0x41fd5d
  0041fd6f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0041fd72: 8b b8 94 00 00 00                               mov    edi,DWORD PTR [eax+0x94]
  0041fd78: 3b b8 98 00 00 00                               cmp    edi,DWORD PTR [eax+0x98]
  0041fd7e: 74 43                                           je     0x41fdc3
  0041fd80: 53                                              push   ebx
  0041fd81: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0041fd83: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041fd85: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0041fd88: 3c 02                                           cmp    al,0x2
  0041fd8a: 75 26                                           jne    0x41fdb2
  0041fd8c: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0041fd8e: 6a 08                                           push   0x8
  0041fd90: e8 5b 22 02 00                                  call   0x441ff0
  0041fd95: 33 c9                                           xor    ecx,ecx
  0041fd97: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  0041fd9e: 66 8b 8b 88 00 00 00                            mov    cx,WORD PTR [ebx+0x88]
  0041fda5: 83 c4 04                                        add    esp,0x4
  0041fda8: 50                                              push   eax
  0041fda9: 89 08                                           mov    DWORD PTR [eax],ecx
  0041fdab: 8b ce                                           mov    ecx,esi
  0041fdad: e8 4e 54 00 00                                  call   0x425200
  0041fdb2: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0041fdb5: 8b 82 98 00 00 00                               mov    eax,DWORD PTR [edx+0x98]
  0041fdbb: 83 c7 04                                        add    edi,0x4
  0041fdbe: 3b f8                                           cmp    edi,eax
  0041fdc0: 75 bf                                           jne    0x41fd81
  0041fdc2: 5b                                              pop    ebx
  0041fdc3: 5f                                              pop    edi
  0041fdc4: 5e                                              pop    esi
  0041fdc5: 5d                                              pop    ebp
  0041fdc6: c2 04 00                                        ret    0x4

; ===== 0x0041FDD0 ?StartAutoCombat@Character@@QAEXUAttack@1@PAVUnit@@@Z =====
  0041fdd0: 55                                              push   ebp
  0041fdd1: 8b ec                                           mov    ebp,esp
  0041fdd3: 56                                              push   esi
  0041fdd4: 8b f1                                           mov    esi,ecx
  0041fdd6: 8b 86 08 04 00 00                               mov    eax,DWORD PTR [esi+0x408]
  0041fddc: 8b 8e 0c 04 00 00                               mov    ecx,DWORD PTR [esi+0x40c]
  0041fde2: 8a 96 04 04 00 00                               mov    dl,BYTE PTR [esi+0x404]
  0041fde8: 89 86 10 04 00 00                               mov    DWORD PTR [esi+0x410],eax
  0041fdee: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041fdf0: 89 8e 14 04 00 00                               mov    DWORD PTR [esi+0x414],ecx
  0041fdf6: 8b ce                                           mov    ecx,esi
  0041fdf8: 88 96 18 04 00 00                               mov    BYTE PTR [esi+0x418],dl
  0041fdfe: ff 90 a8 00 00 00                               call   DWORD PTR [eax+0xa8]
  0041fe04: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0041fe07: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0041fe0a: 89 8e 08 04 00 00                               mov    DWORD PTR [esi+0x408],ecx
  0041fe10: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0041fe13: 89 86 1c 04 00 00                               mov    DWORD PTR [esi+0x41c],eax
  0041fe19: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041fe1b: 51                                              push   ecx
  0041fe1c: 8b ce                                           mov    ecx,esi
  0041fe1e: c6 86 04 04 00 00 01                            mov    BYTE PTR [esi+0x404],0x1
  0041fe25: 89 96 0c 04 00 00                               mov    DWORD PTR [esi+0x40c],edx
  0041fe2b: ff 90 ac 00 00 00                               call   DWORD PTR [eax+0xac]
  0041fe31: 5e                                              pop    esi
  0041fe32: 5d                                              pop    ebp
  0041fe33: c2 0c 00                                        ret    0xc

; ===== 0x0041FE80 ?RestorePreviousAutoCombatState@Character@@QAEXXZ =====
  0041fe80: 55                                              push   ebp
  0041fe81: 8b ec                                           mov    ebp,esp
  0041fe83: 83 ec 0c                                        sub    esp,0xc
  0041fe86: 53                                              push   ebx
  0041fe87: 56                                              push   esi
  0041fe88: 8b f1                                           mov    esi,ecx
  0041fe8a: 8b 86 14 04 00 00                               mov    eax,DWORD PTR [esi+0x414]
  0041fe90: 8b 8e 1c 04 00 00                               mov    ecx,DWORD PTR [esi+0x41c]
  0041fe96: 8b 96 08 04 00 00                               mov    edx,DWORD PTR [esi+0x408]
  0041fe9c: 8a 9e 18 04 00 00                               mov    bl,BYTE PTR [esi+0x418]
  0041fea2: 57                                              push   edi
  0041fea3: 8b be 10 04 00 00                               mov    edi,DWORD PTR [esi+0x410]
  0041fea9: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0041feac: 8b 86 0c 04 00 00                               mov    eax,DWORD PTR [esi+0x40c]
  0041feb2: 89 96 10 04 00 00                               mov    DWORD PTR [esi+0x410],edx
  0041feb8: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041feba: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0041febd: 8b ce                                           mov    ecx,esi
  0041febf: c6 86 18 04 00 00 00                            mov    BYTE PTR [esi+0x418],0x0
  0041fec6: 89 86 14 04 00 00                               mov    DWORD PTR [esi+0x414],eax
  0041fecc: ff 92 a8 00 00 00                               call   DWORD PTR [edx+0xa8]
  0041fed2: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041fed4: 89 86 1c 04 00 00                               mov    DWORD PTR [esi+0x41c],eax
  0041feda: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  0041fedd: 89 be 08 04 00 00                               mov    DWORD PTR [esi+0x408],edi
  0041fee3: 89 86 0c 04 00 00                               mov    DWORD PTR [esi+0x40c],eax
  0041fee9: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0041feec: 50                                              push   eax
  0041feed: 8b ce                                           mov    ecx,esi
  0041feef: 88 9e 04 04 00 00                               mov    BYTE PTR [esi+0x404],bl
  0041fef5: ff 92 ac 00 00 00                               call   DWORD PTR [edx+0xac]
  0041fefb: 5f                                              pop    edi
  0041fefc: 5e                                              pop    esi
  0041fefd: 5b                                              pop    ebx
  0041fefe: 8b e5                                           mov    esp,ebp
  0041ff00: 5d                                              pop    ebp
  0041ff01: c3                                              ret

; ===== 0x0041FF10 ?ExecAutoCombat@Character@@QAE_NXZ =====
  0041ff10: 55                                              push   ebp
  0041ff11: 8b ec                                           mov    ebp,esp
  0041ff13: 6a ff                                           push   0xffffffff
  0041ff15: 68 a8 42 4d 00                                  push   0x4d42a8
  0041ff1a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041ff20: 50                                              push   eax
  0041ff21: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041ff28: 81 ec 8c 00 00 00                               sub    esp,0x8c
  0041ff2e: 53                                              push   ebx
  0041ff2f: 56                                              push   esi
  0041ff30: 8b f1                                           mov    esi,ecx
  0041ff32: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ff34: 57                                              push   edi
  0041ff35: ff 90 a8 00 00 00                               call   DWORD PTR [eax+0xa8]
  0041ff3b: 8b f8                                           mov    edi,eax
  0041ff3d: 85 ff                                           test   edi,edi
  0041ff3f: 75 1a                                           jne    0x41ff5b
  0041ff41: 8b ce                                           mov    ecx,esi
  0041ff43: e8 f8 fe ff ff                                  call   0x41fe40
  0041ff48: 32 c0                                           xor    al,al
  0041ff4a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041ff4d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041ff54: 5f                                              pop    edi
  0041ff55: 5e                                              pop    esi
  0041ff56: 5b                                              pop    ebx
  0041ff57: 8b e5                                           mov    esp,ebp
  0041ff59: 5d                                              pop    ebp
  0041ff5a: c3                                              ret
  0041ff5b: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041ff5d: 6a 00                                           push   0x0
  0041ff5f: 68 52 4e 00 00                                  push   0x4e52
  0041ff64: 8b cf                                           mov    ecx,edi
  0041ff66: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0041ff69: 85 c0                                           test   eax,eax
  0041ff6b: 74 30                                           je     0x41ff9d
  0041ff6d: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ff6f: 6a 00                                           push   0x0
  0041ff71: 68 54 4e 00 00                                  push   0x4e54
  0041ff76: 8b ce                                           mov    ecx,esi
  0041ff78: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0041ff7b: 85 c0                                           test   eax,eax
  0041ff7d: 75 1e                                           jne    0x41ff9d
  0041ff7f: 3b f7                                           cmp    esi,edi
  0041ff81: 74 1a                                           je     0x41ff9d
  0041ff83: 8b ce                                           mov    ecx,esi
  0041ff85: e8 b6 fe ff ff                                  call   0x41fe40
  0041ff8a: b0 01                                           mov    al,0x1
  0041ff8c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041ff8f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041ff96: 5f                                              pop    edi
  0041ff97: 5e                                              pop    esi
  0041ff98: 5b                                              pop    ebx
  0041ff99: 8b e5                                           mov    esp,ebp
  0041ff9b: 5d                                              pop    ebp
  0041ff9c: c3                                              ret
  0041ff9d: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041ff9f: 6a 00                                           push   0x0
  0041ffa1: 68 53 4e 00 00                                  push   0x4e53
  0041ffa6: 8b cf                                           mov    ecx,edi
  0041ffa8: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0041ffab: 85 c0                                           test   eax,eax
  0041ffad: 74 30                                           je     0x41ffdf
  0041ffaf: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041ffb1: 6a 00                                           push   0x0
  0041ffb3: 68 55 4e 00 00                                  push   0x4e55
  0041ffb8: 8b ce                                           mov    ecx,esi
  0041ffba: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0041ffbd: 85 c0                                           test   eax,eax
  0041ffbf: 75 1e                                           jne    0x41ffdf
  0041ffc1: 3b f7                                           cmp    esi,edi
  0041ffc3: 74 1a                                           je     0x41ffdf
  0041ffc5: 8b ce                                           mov    ecx,esi
  0041ffc7: e8 74 fe ff ff                                  call   0x41fe40
  0041ffcc: b0 01                                           mov    al,0x1
  0041ffce: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041ffd1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041ffd8: 5f                                              pop    edi
  0041ffd9: 5e                                              pop    esi
  0041ffda: 5b                                              pop    ebx
  0041ffdb: 8b e5                                           mov    esp,ebp
  0041ffdd: 5d                                              pop    ebp
  0041ffde: c3                                              ret
  0041ffdf: 8b 17                                           mov    edx,DWORD PTR [edi]
  0041ffe1: 8d 45 b0                                        lea    eax,[ebp-0x50]
  0041ffe4: 50                                              push   eax
  0041ffe5: 8b cf                                           mov    ecx,edi
  0041ffe7: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041ffea: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041ffec: 8b d8                                           mov    ebx,eax
  0041ffee: 8d 45 a0                                        lea    eax,[ebp-0x60]
  0041fff1: 50                                              push   eax
  0041fff2: 8b ce                                           mov    ecx,esi
  0041fff4: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041fff7: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041fff9: 2b 03                                           sub    eax,DWORD PTR [ebx]
  0041fffb: 99                                              cdq
  0041fffc: 33 c2                                           xor    eax,edx
  0041fffe: 2b c2                                           sub    eax,edx
  00420000: 8b 17                                           mov    edx,DWORD PTR [edi]
  00420002: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  00420005: 8d 45 b0                                        lea    eax,[ebp-0x50]
  00420008: 50                                              push   eax
  00420009: 8b cf                                           mov    ecx,edi
  0042000b: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0042000e: 8b 16                                           mov    edx,DWORD PTR [esi]
  00420010: 8b d8                                           mov    ebx,eax
  00420012: 8d 45 a0                                        lea    eax,[ebp-0x60]
  00420015: 50                                              push   eax
  00420016: 8b ce                                           mov    ecx,esi
  00420018: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0042001b: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042001e: 2b 43 04                                        sub    eax,DWORD PTR [ebx+0x4]
  00420021: 99                                              cdq
  00420022: 33 c2                                           xor    eax,edx
  00420024: 2b c2                                           sub    eax,edx
  00420026: 8b c8                                           mov    ecx,eax
  00420028: 0f af c8                                        imul   ecx,eax
  0042002b: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0042002e: 8b d0                                           mov    edx,eax
  00420030: 0f af d0                                        imul   edx,eax
  00420033: 03 ca                                           add    ecx,edx
  00420035: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  00420038: db 45 e4                                        fild   DWORD PTR [ebp-0x1c]
  0042003b: d9 fa                                           fsqrt
  0042003d: e8 38 1d 0b 00                                  call   0x4d1d7a
  00420042: 6a 00                                           push   0x0
  00420044: 8b d8                                           mov    ebx,eax
  00420046: 8b 06                                           mov    eax,DWORD PTR [esi]
  00420048: 68 42 4e 00 00                                  push   0x4e42
  0042004d: 8b ce                                           mov    ecx,esi
  0042004f: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  00420052: 85 c0                                           test   eax,eax
  00420054: 74 6a                                           je     0x4200c0
  00420056: 83 fb 02                                        cmp    ebx,0x2
  00420059: 0f 8e e9 06 00 00                               jle    0x420748
  0042005f: 8b 16                                           mov    edx,DWORD PTR [esi]
  00420061: 6a 00                                           push   0x0
  00420063: 8b ce                                           mov    ecx,esi
  00420065: ff 92 ac 00 00 00                               call   DWORD PTR [edx+0xac]
  0042006b: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042006d: 68 42 4e 00 00                                  push   0x4e42
  00420072: 8b ce                                           mov    ecx,esi
  00420074: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00420077: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0042007a: e8 71 5d 06 00                                  call   0x485df0
  0042007f: 6a 5e                                           push   0x5e
  00420081: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00420084: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0042008b: e8 c0 60 06 00                                  call   0x486150
  00420090: 8b 16                                           mov    edx,DWORD PTR [esi]
  00420092: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  00420095: 50                                              push   eax
  00420096: 8b ce                                           mov    ecx,esi
  00420098: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  0042009e: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004200a1: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004200a8: e8 d3 5d 06 00                                  call   0x485e80
  004200ad: b0 01                                           mov    al,0x1
  004200af: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004200b2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004200b9: 5f                                              pop    edi
  004200ba: 5e                                              pop    esi
  004200bb: 5b                                              pop    ebx
  004200bc: 8b e5                                           mov    esp,ebp
  004200be: 5d                                              pop    ebp
  004200bf: c3                                              ret
  004200c0: 6a 00                                           push   0x0
  004200c2: 8b ce                                           mov    ecx,esi
  004200c4: e8 87 fd ff ff                                  call   0x41fe50
  004200c9: 84 c0                                           test   al,al
  004200cb: 75 11                                           jne    0x4200de
  004200cd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004200d0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004200d7: 5f                                              pop    edi
  004200d8: 5e                                              pop    esi
  004200d9: 5b                                              pop    ebx
  004200da: 8b e5                                           mov    esp,ebp
  004200dc: 5d                                              pop    ebp
  004200dd: c3                                              ret
  004200de: 83 fb 19                                        cmp    ebx,0x19
  004200e1: 7c 26                                           jl     0x420109
  004200e3: 8b 16                                           mov    edx,DWORD PTR [esi]
  004200e5: 6a 00                                           push   0x0
  004200e7: 8b ce                                           mov    ecx,esi
  004200e9: ff 92 ac 00 00 00                               call   DWORD PTR [edx+0xac]
  004200ef: 8b ce                                           mov    ecx,esi
  004200f1: e8 4a fd ff ff                                  call   0x41fe40
  004200f6: 32 c0                                           xor    al,al
  004200f8: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004200fb: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00420102: 5f                                              pop    edi
  00420103: 5e                                              pop    esi
  00420104: 5b                                              pop    ebx
  00420105: 8b e5                                           mov    esp,ebp
  00420107: 5d                                              pop    ebp
  00420108: c3                                              ret
  00420109: 8b cf                                           mov    ecx,edi
  0042010b: e8 60 b5 06 00                                  call   0x48b670
  00420110: 3c 01                                           cmp    al,0x1
  00420112: 75 55                                           jne    0x420169
  00420114: 8b cf                                           mov    ecx,edi
  00420116: e8 d5 a9 ff ff                                  call   0x41aaf0
  0042011b: 85 c0                                           test   eax,eax
  0042011d: 75 29                                           jne    0x420148
  0042011f: 68 d4 25 50 00                                  push   0x5025d4
  00420124: 6a 01                                           push   0x1
  00420126: e8 15 1c 05 00                                  call   0x471d40
  0042012b: 83 c4 08                                        add    esp,0x8
  0042012e: 8b ce                                           mov    ecx,esi
  00420130: e8 0b fd ff ff                                  call   0x41fe40
  00420135: 32 c0                                           xor    al,al
  00420137: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042013a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00420141: 5f                                              pop    edi
  00420142: 5e                                              pop    esi
  00420143: 5b                                              pop    ebx
  00420144: 8b e5                                           mov    esp,ebp
  00420146: 5d                                              pop    ebp
  00420147: c3                                              ret
  00420148: 8b 48 44                                        mov    ecx,DWORD PTR [eax+0x44]
  0042014b: 85 c9                                           test   ecx,ecx
  0042014d: 75 1a                                           jne    0x420169
  0042014f: 8b ce                                           mov    ecx,esi
  00420151: e8 ea fc ff ff                                  call   0x41fe40
  00420156: 32 c0                                           xor    al,al
  00420158: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042015b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00420162: 5f                                              pop    edi
  00420163: 5e                                              pop    esi
  00420164: 5b                                              pop    ebx
  00420165: 8b e5                                           mov    esp,ebp
  00420167: 5d                                              pop    ebp
  00420168: c3                                              ret
  00420169: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042016b: 8d 8d 78 ff ff ff                               lea    ecx,[ebp-0x88]
  00420171: 51                                              push   ecx
  00420172: 8b ce                                           mov    ecx,esi
  00420174: ff 50 70                                        call   DWORD PTR [eax+0x70]
  00420177: 8b 86 08 04 00 00                               mov    eax,DWORD PTR [esi+0x408]
  0042017d: 83 f8 01                                        cmp    eax,0x1
  00420180: 0f 85 6b 02 00 00                               jne    0x4203f1
  00420186: 57                                              push   edi
  00420187: 56                                              push   esi
  00420188: e8 53 8e 01 00                                  call   0x438fe0
  0042018d: 83 c4 08                                        add    esp,0x8
  00420190: 85 c0                                           test   eax,eax
  00420192: 0f 85 af 00 00 00                               jne    0x420247
  00420198: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042019a: 68 58 13 51 00                                  push   0x511358
  0042019f: 8b ce                                           mov    ecx,esi
  004201a1: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004201a7: 50                                              push   eax
  004201a8: 6a 0e                                           push   0xe
  004201aa: e8 41 d8 01 00                                  call   0x43d9f0
  004201af: 83 c4 0c                                        add    esp,0xc
  004201b2: 50                                              push   eax
  004201b3: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004201b6: e8 a9 18 0b 00                                  call   0x4d1a64
  004201bb: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004201be: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004201c5: e8 26 5c 06 00                                  call   0x485df0
  004201ca: 6a 3f                                           push   0x3f
  004201cc: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004201cf: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004201d3: e8 78 5f 06 00                                  call   0x486150
  004201d8: 6a 1e                                           push   0x1e
  004201da: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004201dd: e8 6e 5f 06 00                                  call   0x486150
  004201e2: 6a 03                                           push   0x3
  004201e4: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004201e7: e8 64 5f 06 00                                  call   0x486150
  004201ec: 8d 45 ec                                        lea    eax,[ebp-0x14]
  004201ef: 50                                              push   eax
  004201f0: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004201f3: e8 58 61 06 00                                  call   0x486350
  004201f8: 8b 16                                           mov    edx,DWORD PTR [esi]
  004201fa: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  004201fd: 50                                              push   eax
  004201fe: 8b ce                                           mov    ecx,esi
  00420200: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00420206: 8b 16                                           mov    edx,DWORD PTR [esi]
  00420208: 6a 00                                           push   0x0
  0042020a: 8b ce                                           mov    ecx,esi
  0042020c: ff 92 ac 00 00 00                               call   DWORD PTR [edx+0xac]
  00420212: 8b ce                                           mov    ecx,esi
  00420214: e8 27 fc ff ff                                  call   0x41fe40
  00420219: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0042021c: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00420220: e8 5b 5c 06 00                                  call   0x485e80
  00420225: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00420228: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0042022f: e8 0c 18 0b 00                                  call   0x4d1a40
  00420234: 32 c0                                           xor    al,al
  00420236: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00420239: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00420240: 5f                                              pop    edi
  00420241: 5e                                              pop    esi
  00420242: 5b                                              pop    ebx
  00420243: 8b e5                                           mov    esp,ebp
  00420245: 5d                                              pop    ebp
  00420246: c3                                              ret
  00420247: e8 44 20 05 00                                  call   0x472290
  0042024c: 39 85 78 ff ff ff                               cmp    DWORD PTR [ebp-0x88],eax
  00420252: 76 13                                           jbe    0x420267
  00420254: 32 c0                                           xor    al,al
  00420256: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00420259: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00420260: 5f                                              pop    edi
  00420261: 5e                                              pop    esi
  00420262: 5b                                              pop    ebx
  00420263: 8b e5                                           mov    esp,ebp
  00420265: 5d                                              pop    ebp
  00420266: c3                                              ret
  00420267: 85 f6                                           test   esi,esi
  00420269: 8d 47 30                                        lea    eax,[edi+0x30]
  0042026c: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0042026f: 74 05                                           je     0x420276
  00420271: 8d 5e 30                                        lea    ebx,[esi+0x30]
  00420274: eb 02                                           jmp    0x420278
  00420276: 33 db                                           xor    ebx,ebx
  00420278: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0042027a: 8b cb                                           mov    ecx,ebx
  0042027c: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0042027f: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00420282: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00420284: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  00420287: 85 c0                                           test   eax,eax
  00420289: 75 22                                           jne    0x4202ad
  0042028b: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0042028d: 8b cb                                           mov    ecx,ebx
  0042028f: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00420292: 6a 00                                           push   0x0
  00420294: ff 15 20 e1 4d 00                               call   DWORD PTR ds:0x4de120
  0042029a: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0042029c: 8b cb                                           mov    ecx,ebx
  0042029e: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004202a1: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004202a4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004202a6: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004202a9: 85 c0                                           test   eax,eax
  004202ab: 74 de                                           je     0x42028b
  004202ad: 8b 07                                           mov    eax,DWORD PTR [edi]
  004202af: 8d 4d b0                                        lea    ecx,[ebp-0x50]
  004202b2: 51                                              push   ecx
  004202b3: 8b cf                                           mov    ecx,edi
  004202b5: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004202b8: 8b 16                                           mov    edx,DWORD PTR [esi]
  004202ba: 8d 45 a0                                        lea    eax,[ebp-0x60]
  004202bd: 50                                              push   eax
  004202be: 8b ce                                           mov    ecx,esi
  004202c0: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004202c3: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  004202c6: 8b 45 a0                                        mov    eax,DWORD PTR [ebp-0x60]
  004202c9: 2b c2                                           sub    eax,edx
  004202cb: 99                                              cdq
  004202cc: 8b d8                                           mov    ebx,eax
  004202ce: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  004202d1: 33 da                                           xor    ebx,edx
  004202d3: 2b da                                           sub    ebx,edx
  004202d5: 2b 45 b4                                        sub    eax,DWORD PTR [ebp-0x4c]
  004202d8: 99                                              cdq
  004202d9: 33 c2                                           xor    eax,edx
  004202db: 2b c2                                           sub    eax,edx
  004202dd: 8b ce                                           mov    ecx,esi
  004202df: 89 45 dc                                        mov    DWORD PTR [ebp-0x24],eax
  004202e2: c7 45 e4 03 00 00 00                            mov    DWORD PTR [ebp-0x1c],0x3
  004202e9: e8 32 13 00 00                                  call   0x421620
  004202ee: 84 c0                                           test   al,al
  004202f0: 88 45 f3                                        mov    BYTE PTR [ebp-0xd],al
  004202f3: 74 07                                           je     0x4202fc
  004202f5: c7 45 e4 19 00 00 00                            mov    DWORD PTR [ebp-0x1c],0x19
  004202fc: 8b 8e c0 01 00 00                               mov    ecx,DWORD PTR [esi+0x1c0]
  00420302: 85 c9                                           test   ecx,ecx
  00420304: 0f 84 90 00 00 00                               je     0x42039a
  0042030a: 84 c0                                           test   al,al
  0042030c: 0f 85 88 00 00 00                               jne    0x42039a
  00420312: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00420315: 50                                              push   eax
  00420316: 6a 00                                           push   0x0
  00420318: 6a 00                                           push   0x0
  0042031a: 6a 00                                           push   0x0
  0042031c: 6a 00                                           push   0x0
  0042031e: c7 45 ec 00 00 00 00                            mov    DWORD PTR [ebp-0x14],0x0
  00420325: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00420327: 6a 14                                           push   0x14
  00420329: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0042032c: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0042032f: 85 c0                                           test   eax,eax
  00420331: 74 0a                                           je     0x42033d
  00420333: 8a 88 26 01 00 00                               mov    cl,BYTE PTR [eax+0x126]
  00420339: 84 c9                                           test   cl,cl
  0042033b: 74 5a                                           je     0x420397
  0042033d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042033f: 68 58 13 51 00                                  push   0x511358
  00420344: 8b ce                                           mov    ecx,esi
  00420346: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0042034c: 50                                              push   eax
  0042034d: 68 a6 1e 00 00                                  push   0x1ea6
  00420352: e8 99 d6 01 00                                  call   0x43d9f0
  00420357: 83 c4 08                                        add    esp,0x8
  0042035a: 8b cc                                           mov    ecx,esp
  0042035c: 89 65 c0                                        mov    DWORD PTR [ebp-0x40],esp
  0042035f: 50                                              push   eax
  00420360: e8 ff 16 0b 00                                  call   0x4d1a64
  00420365: 8b ce                                           mov    ecx,esi
  00420367: e8 24 2b 00 00                                  call   0x422e90
  0042036c: 8b ce                                           mov    ecx,esi
  0042036e: e8 cd fa ff ff                                  call   0x41fe40
  00420373: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  00420376: 8d 4e 30                                        lea    ecx,[esi+0x30]
  00420379: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0042037c: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0042037f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00420381: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00420384: 32 c0                                           xor    al,al
  00420386: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00420389: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00420390: 5f                                              pop    edi
  00420391: 5e                                              pop    esi
  00420392: 5b                                              pop    ebx
  00420393: 8b e5                                           mov    esp,ebp
  00420395: 5d                                              pop    ebp
  00420396: c3                                              ret
  00420397: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  0042039a: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0042039d: 3b d9                                           cmp    ebx,ecx
  0042039f: 7f 2c                                           jg     0x4203cd
  004203a1: 39 4d dc                                        cmp    DWORD PTR [ebp-0x24],ecx
  004203a4: 7f 27                                           jg     0x4203cd
  004203a6: 84 c0                                           test   al,al
  004203a8: 75 16                                           jne    0x4203c0
  004203aa: 88 45 f3                                        mov    BYTE PTR [ebp-0xd],al
  004203ad: 8d 45 f3                                        lea    eax,[ebp-0xd]
  004203b0: 50                                              push   eax
  004203b1: 57                                              push   edi
  004203b2: 56                                              push   esi
  004203b3: e8 e8 1e 05 00                                  call   0x4722a0
  004203b8: 83 c4 0c                                        add    esp,0xc
  004203bb: e9 75 03 00 00                                  jmp    0x420735
  004203c0: 57                                              push   edi
  004203c1: 8b ce                                           mov    ecx,esi
  004203c3: e8 b8 19 00 00                                  call   0x421d80
  004203c8: e9 68 03 00 00                                  jmp    0x420735
  004203cd: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  004203d0: 8d 4e 30                                        lea    ecx,[esi+0x30]
  004203d3: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004203d6: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004203d9: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004203db: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004203de: 32 c0                                           xor    al,al
  004203e0: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004203e3: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004203ea: 5f                                              pop    edi
  004203eb: 5e                                              pop    esi
  004203ec: 5b                                              pop    ebx
  004203ed: 8b e5                                           mov    esp,ebp
  004203ef: 5d                                              pop    ebp
  004203f0: c3                                              ret
  004203f1: 85 c0                                           test   eax,eax
  004203f3: 0f 85 4f 03 00 00                               jne    0x420748
  004203f9: e8 92 1e 05 00                                  call   0x472290
  004203fe: 39 45 84                                        cmp    DWORD PTR [ebp-0x7c],eax
  00420401: 76 13                                           jbe    0x420416
  00420403: 32 c0                                           xor    al,al
  00420405: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00420408: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042040f: 5f                                              pop    edi
  00420410: 5e                                              pop    esi
  00420411: 5b                                              pop    ebx
  00420412: 8b e5                                           mov    esp,ebp
  00420414: 5d                                              pop    ebp
  00420415: c3                                              ret
  00420416: 85 f6                                           test   esi,esi
  00420418: 8d 4f 30                                        lea    ecx,[edi+0x30]
  0042041b: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  0042041e: 74 05                                           je     0x420425
  00420420: 8d 5e 30                                        lea    ebx,[esi+0x30]
  00420423: eb 02                                           jmp    0x420427
  00420425: 33 db                                           xor    ebx,ebx
  00420427: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00420429: 8b cb                                           mov    ecx,ebx
  0042042b: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0042042e: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00420431: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00420433: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  00420436: 85 c0                                           test   eax,eax
  00420438: 75 22                                           jne    0x42045c
  0042043a: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0042043c: 8b cb                                           mov    ecx,ebx
  0042043e: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00420441: 6a 00                                           push   0x0
  00420443: ff 15 20 e1 4d 00                               call   DWORD PTR ds:0x4de120
  00420449: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0042044b: 8b cb                                           mov    ecx,ebx
  0042044d: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00420450: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00420453: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00420455: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00420458: 85 c0                                           test   eax,eax
  0042045a: 74 de                                           je     0x42043a
  0042045c: 66 8b 9e 0c 04 00 00                            mov    bx,WORD PTR [esi+0x40c]
  00420463: 8b ce                                           mov    ecx,esi
  00420465: 89 5d bc                                        mov    DWORD PTR [ebp-0x44],ebx
  00420468: e8 13 f8 ff ff                                  call   0x41fc80
  0042046d: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042046f: 8b ce                                           mov    ecx,esi
  00420471: ff 90 d8 01 00 00                               call   DWORD PTR [eax+0x1d8]
  00420477: 53                                              push   ebx
  00420478: e8 b3 1d 04 00                                  call   0x462230
  0042047d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042047f: 83 c4 04                                        add    esp,0x4
  00420482: 81 e3 ff ff 00 00                               and    ebx,0xffff
  00420488: 53                                              push   ebx
  00420489: 8b ce                                           mov    ecx,esi
  0042048b: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0042048e: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  00420491: ff 92 70 01 00 00                               call   DWORD PTR [edx+0x170]
  00420497: 8b 5d e4                                        mov    ebx,DWORD PTR [ebp-0x1c]
  0042049a: 85 db                                           test   ebx,ebx
  0042049c: c6 45 f3 00                                     mov    BYTE PTR [ebp-0xd],0x0
  004204a0: 0f 84 8f 02 00 00                               je     0x420735
  004204a6: 85 c0                                           test   eax,eax
  004204a8: 0f 84 87 02 00 00                               je     0x420735
  004204ae: 8a 83 40 02 00 00                               mov    al,BYTE PTR [ebx+0x240]
  004204b4: 84 c0                                           test   al,al
  004204b6: 74 08                                           je     0x4204c0
  004204b8: 3b fe                                           cmp    edi,esi
  004204ba: 75 12                                           jne    0x4204ce
  004204bc: 84 c0                                           test   al,al
  004204be: 75 0e                                           jne    0x4204ce
  004204c0: 8b 86 08 04 00 00                               mov    eax,DWORD PTR [esi+0x408]
  004204c6: 85 c0                                           test   eax,eax
  004204c8: 75 04                                           jne    0x4204ce
  004204ca: c6 45 f3 01                                     mov    BYTE PTR [ebp-0xd],0x1
  004204ce: 8b 06                                           mov    eax,DWORD PTR [esi]
  004204d0: 8d 8d 68 ff ff ff                               lea    ecx,[ebp-0x98]
  004204d6: 51                                              push   ecx
  004204d7: 8b ce                                           mov    ecx,esi
  004204d9: ff 50 70                                        call   DWORD PTR [eax+0x70]
  004204dc: e8 af 1d 05 00                                  call   0x472290
  004204e1: 39 85 74 ff ff ff                               cmp    DWORD PTR [ebp-0x8c],eax
  004204e7: 0f 87 aa 01 00 00                               ja     0x420697
  004204ed: 6a 00                                           push   0x0
  004204ef: 6a 00                                           push   0x0
  004204f1: 6a 00                                           push   0x0
  004204f3: 6a 00                                           push   0x0
  004204f5: 6a 00                                           push   0x0
  004204f7: 6a 00                                           push   0x0
  004204f9: 6a 00                                           push   0x0
  004204fb: 57                                              push   edi
  004204fc: 56                                              push   esi
  004204fd: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  00420500: e8 4b be fe ff                                  call   0x40c350
  00420505: e8 70 18 0b 00                                  call   0x4d1d7a
  0042050a: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042050c: 8b ce                                           mov    ecx,esi
  0042050e: 8b d8                                           mov    ebx,eax
  00420510: 89 5d c0                                        mov    DWORD PTR [ebp-0x40],ebx
  00420513: ff 92 ec 00 00 00                               call   DWORD PTR [edx+0xec]
  00420519: 66 3b c3                                        cmp    ax,bx
  0042051c: 0f 82 d4 00 00 00                               jb     0x4205f6
  00420522: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  00420524: e8 37 d5 01 00                                  call   0x43da60
  00420529: 8b cf                                           mov    ecx,edi
  0042052b: 50                                              push   eax
  0042052c: 8d 45 ac                                        lea    eax,[ebp-0x54]
  0042052f: 50                                              push   eax
  00420530: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  00420533: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00420535: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00420538: 51                                              push   ecx
  00420539: 8b ce                                           mov    ecx,esi
  0042053b: c7 45 fc 05 00 00 00                            mov    DWORD PTR [ebp-0x4],0x5
  00420542: e8 09 d5 ff ff                                  call   0x41da50
  00420547: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0042054a: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042054c: 53                                              push   ebx
  0042054d: 52                                              push   edx
  0042054e: 50                                              push   eax
  0042054f: 68 04 20 50 00                                  push   0x502004
  00420554: 68 00 04 00 00                                  push   0x400
  00420559: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0042055d: e8 de 17 05 00                                  call   0x471d40
  00420562: 83 c4 14                                        add    esp,0x14
  00420565: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00420568: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0042056c: e8 cf 14 0b 00                                  call   0x4d1a40
  00420571: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  00420574: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0042057b: e8 c0 14 0b 00                                  call   0x4d1a40
  00420580: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00420583: 8a 88 40 02 00 00                               mov    cl,BYTE PTR [eax+0x240]
  00420589: 84 c9                                           test   cl,cl
  0042058b: 74 0b                                           je     0x420598
  0042058d: 3b fe                                           cmp    edi,esi
  0042058f: 75 07                                           jne    0x420598
  00420591: 8b ce                                           mov    ecx,esi
  00420593: e8 a8 f8 ff ff                                  call   0x41fe40
  00420598: 8b 17                                           mov    edx,DWORD PTR [edi]
  0042059a: 8d 45 b0                                        lea    eax,[ebp-0x50]
  0042059d: 50                                              push   eax
  0042059e: 8b cf                                           mov    ecx,edi
  004205a0: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004205a3: 8b 10                                           mov    edx,DWORD PTR [eax]
  004205a5: 83 ec 0c                                        sub    esp,0xc
  004205a8: 8b cc                                           mov    ecx,esp
  004205aa: 89 11                                           mov    DWORD PTR [ecx],edx
  004205ac: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004205af: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004205b2: 57                                              push   edi
  004205b3: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004205b6: 6a 00                                           push   0x0
  004205b8: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004205bb: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  004205be: 56                                              push   esi
  004205bf: 51                                              push   ecx
  004205c0: e8 9b 0f 04 00                                  call   0x461560
  004205c5: 83 c4 1c                                        add    esp,0x1c
  004205c8: 85 c0                                           test   eax,eax
  004205ca: 74 13                                           je     0x4205df
  004205cc: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  004205cf: 8b 16                                           mov    edx,DWORD PTR [esi]
  004205d1: 50                                              push   eax
  004205d2: 8b ce                                           mov    ecx,esi
  004205d4: ff 92 80 01 00 00                               call   DWORD PTR [edx+0x180]
  004205da: e9 48 01 00 00                                  jmp    0x420727
  004205df: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  004205e2: 84 c0                                           test   al,al
  004205e4: 0f 85 44 01 00 00                               jne    0x42072e
  004205ea: 8b ce                                           mov    ecx,esi
  004205ec: e8 4f f8 ff ff                                  call   0x41fe40
  004205f1: e9 3f 01 00 00                                  jmp    0x420735
  004205f6: 8b 86 08 04 00 00                               mov    eax,DWORD PTR [esi+0x408]
  004205fc: 85 c0                                           test   eax,eax
  004205fe: 75 07                                           jne    0x420607
  00420600: 8b ce                                           mov    ecx,esi
  00420602: e8 39 f8 ff ff                                  call   0x41fe40
  00420607: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0042060a: e8 e1 57 06 00                                  call   0x485df0
  0042060f: bb 07 00 00 00                                  mov    ebx,0x7
  00420614: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00420617: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0042061a: e8 3f 14 0b 00                                  call   0x4d1a5e
  0042061f: 33 c9                                           xor    ecx,ecx
  00420621: 66 8b 8e 1c 01 00 00                            mov    cx,WORD PTR [esi+0x11c]
  00420628: 68 58 13 51 00                                  push   0x511358
  0042062d: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  00420631: 51                                              push   ecx
  00420632: 6a 13                                           push   0x13
  00420634: e8 b7 d3 01 00                                  call   0x43d9f0
  00420639: 83 c4 0c                                        add    esp,0xc
  0042063c: 50                                              push   eax
  0042063d: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00420640: e8 13 14 0b 00                                  call   0x4d1a58
  00420645: 6a 3f                                           push   0x3f
  00420647: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0042064a: e8 01 5b 06 00                                  call   0x486150
  0042064f: 6a 1e                                           push   0x1e
  00420651: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00420654: e8 f7 5a 06 00                                  call   0x486150
  00420659: 6a 03                                           push   0x3
  0042065b: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0042065e: e8 ed 5a 06 00                                  call   0x486150
  00420663: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00420666: 52                                              push   edx
  00420667: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0042066a: e8 e1 5c 06 00                                  call   0x486350
  0042066f: 8b 06                                           mov    eax,DWORD PTR [esi]
  00420671: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00420674: 51                                              push   ecx
  00420675: 8b ce                                           mov    ecx,esi
  00420677: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  0042067d: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00420680: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00420683: e8 b8 13 0b 00                                  call   0x4d1a40
  00420688: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0042068f: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00420692: e9 8b 00 00 00                                  jmp    0x420722
  00420697: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  0042069a: e8 51 57 06 00                                  call   0x485df0
  0042069f: bb 09 00 00 00                                  mov    ebx,0x9
  004206a4: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004206a7: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004206aa: e8 af 13 0b 00                                  call   0x4d1a5e
  004206af: 33 d2                                           xor    edx,edx
  004206b1: 66 8b 96 1c 01 00 00                            mov    dx,WORD PTR [esi+0x11c]
  004206b8: 68 58 13 51 00                                  push   0x511358
  004206bd: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  004206c1: 52                                              push   edx
  004206c2: 6a 12                                           push   0x12
  004206c4: e8 27 d3 01 00                                  call   0x43d9f0
  004206c9: 83 c4 0c                                        add    esp,0xc
  004206cc: 50                                              push   eax
  004206cd: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004206d0: e8 83 13 0b 00                                  call   0x4d1a58
  004206d5: 6a 3f                                           push   0x3f
  004206d7: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  004206da: e8 71 5a 06 00                                  call   0x486150
  004206df: 6a 1e                                           push   0x1e
  004206e1: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  004206e4: e8 67 5a 06 00                                  call   0x486150
  004206e9: 6a 03                                           push   0x3
  004206eb: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  004206ee: e8 5d 5a 06 00                                  call   0x486150
  004206f3: 8d 45 e0                                        lea    eax,[ebp-0x20]
  004206f6: 50                                              push   eax
  004206f7: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  004206fa: e8 51 5c 06 00                                  call   0x486350
  004206ff: 8b 16                                           mov    edx,DWORD PTR [esi]
  00420701: 8d 45 88                                        lea    eax,[ebp-0x78]
  00420704: 50                                              push   eax
  00420705: 8b ce                                           mov    ecx,esi
  00420707: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  0042070d: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00420710: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00420713: e8 28 13 0b 00                                  call   0x4d1a40
  00420718: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0042071f: 8d 4d 88                                        lea    ecx,[ebp-0x78]
  00420722: e8 59 57 06 00                                  call   0x485e80
  00420727: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  0042072a: 84 c0                                           test   al,al
  0042072c: 74 07                                           je     0x420735
  0042072e: 8b ce                                           mov    ecx,esi
  00420730: e8 4b f7 ff ff                                  call   0x41fe80
  00420735: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  00420738: 83 c6 30                                        add    esi,0x30
  0042073b: 8b ce                                           mov    ecx,esi
  0042073d: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00420740: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00420743: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00420745: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00420748: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042074b: 5f                                              pop    edi
  0042074c: 5e                                              pop    esi
  0042074d: b0 01                                           mov    al,0x1
  0042074f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00420756: 5b                                              pop    ebx
  00420757: 8b e5                                           mov    esp,ebp
  00420759: 5d                                              pop    ebp
  0042075a: c3                                              ret

; ===== 0x00420F60 ?SynchronizeGold@Character@@AAEXXZ =====
  00420f60: 55                                              push   ebp
  00420f61: 8b ec                                           mov    ebp,esp
  00420f63: 6a ff                                           push   0xffffffff
  00420f65: 68 3b 43 4d 00                                  push   0x4d433b
  00420f6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00420f70: 50                                              push   eax
  00420f71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00420f78: 83 ec 08                                        sub    esp,0x8
  00420f7b: 53                                              push   ebx
  00420f7c: 56                                              push   esi
  00420f7d: 57                                              push   edi
  00420f7e: 8b f9                                           mov    edi,ecx
  00420f80: 8b 8f 9c 01 00 00                               mov    ecx,DWORD PTR [edi+0x19c]
  00420f86: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00420f88: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00420f8b: 8b 87 9c 01 00 00                               mov    eax,DWORD PTR [edi+0x19c]
  00420f91: 8b 48 24                                        mov    ecx,DWORD PTR [eax+0x24]
  00420f94: 33 db                                           xor    ebx,ebx
  00420f96: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00420f99: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  00420f9c: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  00420fa0: 88 5d f3                                        mov    BYTE PTR [ebp-0xd],bl
  00420fa3: 8b 87 9c 01 00 00                               mov    eax,DWORD PTR [edi+0x19c]
  00420fa9: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  00420fac: 74 0a                                           je     0x420fb8
  00420fae: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00420fb1: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00420fb3: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00420fb6: eb 07                                           jmp    0x420fbf
  00420fb8: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  00420fbf: 39 58 20                                        cmp    DWORD PTR [eax+0x20],ebx
  00420fc2: 0f 84 48 01 00 00                               je     0x421110
  00420fc8: 8b 97 9c 01 00 00                               mov    edx,DWORD PTR [edi+0x19c]
  00420fce: 8b 42 20                                        mov    eax,DWORD PTR [edx+0x20]
  00420fd1: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  00420fd4: 8b 16                                           mov    edx,DWORD PTR [esi]
  00420fd6: 8b ce                                           mov    ecx,esi
  00420fd8: ff 52 28                                        call   DWORD PTR [edx+0x28]
  00420fdb: 8b 0d 5c 05 4e 00                               mov    ecx,DWORD PTR ds:0x4e055c
  00420fe1: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  00420fe3: 75 be                                           jne    0x420fa3
  00420fe5: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  00420fe8: 84 c0                                           test   al,al
  00420fea: 0f 84 05 01 00 00                               je     0x4210f5
  00420ff0: 8b 16                                           mov    edx,DWORD PTR [esi]
  00420ff2: 8b ce                                           mov    ecx,esi
  00420ff4: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  00420ffa: 8b 87 9c 01 00 00                               mov    eax,DWORD PTR [edi+0x19c]
  00421000: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00421003: 8b 50 28                                        mov    edx,DWORD PTR [eax+0x28]
  00421006: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  00421009: ff 48 38                                        dec    DWORD PTR [eax+0x38]
  0042100c: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0042100f: 3b ca                                           cmp    ecx,edx
  00421011: 74 5f                                           je     0x421072
  00421013: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  00421016: 74 56                                           je     0x42106e
  00421018: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042101a: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0042101d: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00421020: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00421023: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00421026: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00421028: 89 0a                                           mov    DWORD PTR [edx],ecx
  0042102a: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  0042102d: 83 f9 01                                        cmp    ecx,0x1
  00421030: 75 1a                                           jne    0x42104c
  00421032: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00421035: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00421038: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0042103b: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0042103e: 50                                              push   eax
  0042103f: e8 1c 10 02 00                                  call   0x442060
  00421044: 83 c4 04                                        add    esp,0x4
  00421047: e9 57 ff ff ff                                  jmp    0x420fa3
  0042104c: 83 f9 02                                        cmp    ecx,0x2
  0042104f: 0f 85 8f 00 00 00                               jne    0x4210e4
  00421055: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00421058: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0042105a: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0042105d: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00421060: 50                                              push   eax
  00421061: e8 fa 0f 02 00                                  call   0x442060
  00421066: 83 c4 04                                        add    esp,0x4
  00421069: e9 35 ff ff ff                                  jmp    0x420fa3
  0042106e: 3b ca                                           cmp    ecx,edx
  00421070: 75 33                                           jne    0x4210a5
  00421072: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  00421075: 74 33                                           je     0x4210aa
  00421077: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0042107a: 89 1a                                           mov    DWORD PTR [edx],ebx
  0042107c: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0042107f: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00421082: 89 50 28                                        mov    DWORD PTR [eax+0x28],edx
  00421085: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00421088: 83 78 40 02                                     cmp    DWORD PTR [eax+0x40],0x2
  0042108c: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0042108f: 75 53                                           jne    0x4210e4
  00421091: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  00421094: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  00421097: 50                                              push   eax
  00421098: e8 c3 0f 02 00                                  call   0x442060
  0042109d: 83 c4 04                                        add    esp,0x4
  004210a0: e9 fe fe ff ff                                  jmp    0x420fa3
  004210a5: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  004210a8: 75 2e                                           jne    0x4210d8
  004210aa: 3b ca                                           cmp    ecx,edx
  004210ac: 74 2a                                           je     0x4210d8
  004210ae: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004210b0: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004210b3: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  004210b6: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004210b8: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  004210bb: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  004210be: 83 78 40 01                                     cmp    DWORD PTR [eax+0x40],0x1
  004210c2: 75 20                                           jne    0x4210e4
  004210c4: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  004210c7: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  004210ca: 50                                              push   eax
  004210cb: e8 90 0f 02 00                                  call   0x442060
  004210d0: 83 c4 04                                        add    esp,0x4
  004210d3: e9 cb fe ff ff                                  jmp    0x420fa3
  004210d8: 89 58 20                                        mov    DWORD PTR [eax+0x20],ebx
  004210db: 89 58 24                                        mov    DWORD PTR [eax+0x24],ebx
  004210de: 89 58 28                                        mov    DWORD PTR [eax+0x28],ebx
  004210e1: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  004210e4: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  004210e7: 50                                              push   eax
  004210e8: e8 73 0f 02 00                                  call   0x442060
  004210ed: 83 c4 04                                        add    esp,0x4
  004210f0: e9 ae fe ff ff                                  jmp    0x420fa3
  004210f5: 8b 17                                           mov    edx,DWORD PTR [edi]
  004210f7: 8b cf                                           mov    ecx,edi
  004210f9: ff 92 04 01 00 00                               call   DWORD PTR [edx+0x104]
  004210ff: 50                                              push   eax
  00421100: 8b ce                                           mov    ecx,esi
  00421102: e8 f9 b2 02 00                                  call   0x44c400
  00421107: c6 45 f3 01                                     mov    BYTE PTR [ebp-0xd],0x1
  0042110b: e9 93 fe ff ff                                  jmp    0x420fa3
  00421110: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  00421113: 74 04                                           je     0x421119
  00421115: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  00421119: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0042111c: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  0042111f: 84 c0                                           test   al,al
  00421121: 0f 85 f3 00 00 00                               jne    0x42121a
  00421127: 68 20 01 00 00                                  push   0x120
  0042112c: e8 bf 0e 02 00                                  call   0x441ff0
  00421131: 83 c4 04                                        add    esp,0x4
  00421134: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00421137: 3b c3                                           cmp    eax,ebx
  00421139: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0042113c: 74 09                                           je     0x421147
  0042113e: 8b c8                                           mov    ecx,eax
  00421140: e8 3b ac 02 00                                  call   0x44bd80
  00421145: 8b d8                                           mov    ebx,eax
  00421147: 8b 0d 5c 05 4e 00                               mov    ecx,DWORD PTR ds:0x4e055c
  0042114d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042114f: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00421151: 52                                              push   edx
  00421152: 6a 03                                           push   0x3
  00421154: 8b cb                                           mov    ecx,ebx
  00421156: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0042115d: ff 50 18                                        call   DWORD PTR [eax+0x18]
  00421160: 85 c0                                           test   eax,eax
  00421162: 0f 84 a8 00 00 00                               je     0x421210
  00421168: 8b 07                                           mov    eax,DWORD PTR [edi]
  0042116a: 8b cf                                           mov    ecx,edi
  0042116c: ff 90 04 01 00 00                               call   DWORD PTR [eax+0x104]
  00421172: 50                                              push   eax
  00421173: 8b cb                                           mov    ecx,ebx
  00421175: e8 86 b2 02 00                                  call   0x44c400
  0042117a: 8b b7 9c 01 00 00                               mov    esi,DWORD PTR [edi+0x19c]
  00421180: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00421183: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00421186: 42                                              inc    edx
  00421187: 85 c0                                           test   eax,eax
  00421189: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0042118c: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  00421193: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00421197: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0042119a: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  0042119d: 6a 0c                                           push   0xc
  0042119f: 75 30                                           jne    0x4211d1
  004211a1: e8 4a 0e 02 00                                  call   0x441ff0
  004211a6: 33 c9                                           xor    ecx,ecx
  004211a8: 83 c4 04                                        add    esp,0x4
  004211ab: 3b c1                                           cmp    eax,ecx
  004211ad: 74 07                                           je     0x4211b6
  004211af: 89 08                                           mov    DWORD PTR [eax],ecx
  004211b1: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004211b4: eb 02                                           jmp    0x4211b8
  004211b6: 33 c0                                           xor    eax,eax
  004211b8: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004211bb: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004211be: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004211c1: 89 08                                           mov    DWORD PTR [eax],ecx
  004211c3: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004211c6: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004211c9: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004211cc: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004211cf: eb 49                                           jmp    0x42121a
  004211d1: e8 1a 0e 02 00                                  call   0x441ff0
  004211d6: 83 c4 04                                        add    esp,0x4
  004211d9: 85 c0                                           test   eax,eax
  004211db: 74 0f                                           je     0x4211ec
  004211dd: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  004211e3: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  004211ea: eb 02                                           jmp    0x4211ee
  004211ec: 33 c0                                           xor    eax,eax
  004211ee: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004211f1: 89 01                                           mov    DWORD PTR [ecx],eax
  004211f3: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004211f6: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004211f9: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004211fc: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004211ff: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00421202: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  00421208: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0042120b: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0042120e: eb 0a                                           jmp    0x42121a
  00421210: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00421212: 8b cb                                           mov    ecx,ebx
  00421214: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0042121a: 8b 8f 9c 01 00 00                               mov    ecx,DWORD PTR [edi+0x19c]
  00421220: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00421222: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00421225: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00421228: 5f                                              pop    edi
  00421229: 5e                                              pop    esi
  0042122a: 5b                                              pop    ebx
  0042122b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00421232: 8b e5                                           mov    esp,ebp
  00421234: 5d                                              pop    ebp
  00421235: c3                                              ret

; ===== 0x00421240 ?GetTitle@Character@@QAE?AVCString@@_N@Z =====
  00421240: 55                                              push   ebp
  00421241: 8b ec                                           mov    ebp,esp
  00421243: 51                                              push   ecx
  00421244: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  00421247: 84 c0                                           test   al,al
  00421249: 56                                              push   esi
  0042124a: 8b f1                                           mov    esi,ecx
  0042124c: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00421253: 74 1d                                           je     0x421272
  00421255: e8 96 98 ff ff                                  call   0x41aaf0
  0042125a: 85 c0                                           test   eax,eax
  0042125c: 74 14                                           je     0x421272
  0042125e: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00421261: 56                                              push   esi
  00421262: 8b c8                                           mov    ecx,eax
  00421264: e8 f7 79 03 00                                  call   0x458c60
  00421269: 8b c6                                           mov    eax,esi
  0042126b: 5e                                              pop    esi
  0042126c: 8b e5                                           mov    esp,ebp
  0042126e: 5d                                              pop    ebp
  0042126f: c2 08 00                                        ret    0x8
  00421272: 81 c6 64 01 00 00                               add    esi,0x164
  00421278: 56                                              push   esi
  00421279: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0042127c: 8b ce                                           mov    ecx,esi
  0042127e: e8 c9 07 0b 00                                  call   0x4d1a4c
  00421283: 8b c6                                           mov    eax,esi
  00421285: 5e                                              pop    esi
  00421286: 8b e5                                           mov    esp,ebp
  00421288: 5d                                              pop    ebp
  00421289: c2 08 00                                        ret    0x8

; ===== 0x00421290 ?SetLevel@Character@@UAEXG@Z =====
  00421290: 55                                              push   ebp
  00421291: 8b ec                                           mov    ebp,esp
  00421293: 6a ff                                           push   0xffffffff
  00421295: 68 60 43 4d 00                                  push   0x4d4360
  0042129a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004212a0: 50                                              push   eax
  004212a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004212a8: 83 ec 28                                        sub    esp,0x28
  004212ab: 53                                              push   ebx
  004212ac: 56                                              push   esi
  004212ad: 57                                              push   edi
  004212ae: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004212b1: 8b f1                                           mov    esi,ecx
  004212b3: 57                                              push   edi
  004212b4: e8 57 b0 06 00                                  call   0x48c310
  004212b9: 8b ce                                           mov    ecx,esi
  004212bb: e8 00 ea ff ff                                  call   0x41fcc0
  004212c0: 8b d8                                           mov    ebx,eax
  004212c2: 33 c0                                           xor    eax,eax
  004212c4: 3b d8                                           cmp    ebx,eax
  004212c6: 74 62                                           je     0x42132a
  004212c8: 8a 4d 0b                                        mov    cl,BYTE PTR [ebp+0xb]
  004212cb: 88 4d e4                                        mov    BYTE PTR [ebp-0x1c],cl
  004212ce: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004212d1: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004212d4: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004212d7: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  004212da: 52                                              push   edx
  004212db: 8b cb                                           mov    ecx,ebx
  004212dd: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004212e0: e8 2b 99 01 00                                  call   0x43ac10
  004212e5: 33 ff                                           xor    edi,edi
  004212e7: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004212ea: 85 c0                                           test   eax,eax
  004212ec: 74 1a                                           je     0x421308
  004212ee: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004212f1: 2b c8                                           sub    ecx,eax
  004212f3: c1 f9 02                                        sar    ecx,0x2
  004212f6: 3b f9                                           cmp    edi,ecx
  004212f8: 73 0e                                           jae    0x421308
  004212fa: 8b 14 b8                                        mov    edx,DWORD PTR [eax+edi*4]
  004212fd: 52                                              push   edx
  004212fe: 8b cb                                           mov    ecx,ebx
  00421300: e8 fb 9b 01 00                                  call   0x43af00
  00421305: 47                                              inc    edi
  00421306: eb df                                           jmp    0x4212e7
  00421308: 85 c0                                           test   eax,eax
  0042130a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00421311: 74 09                                           je     0x42131c
  00421313: 50                                              push   eax
  00421314: e8 47 0d 02 00                                  call   0x442060
  00421319: 83 c4 04                                        add    esp,0x4
  0042131c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042131f: 33 c0                                           xor    eax,eax
  00421321: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00421324: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00421327: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0042132a: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  0042132d: e8 be 4a 06 00                                  call   0x485df0
  00421332: 6a 25                                           push   0x25
  00421334: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00421337: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0042133e: e8 0d 4e 06 00                                  call   0x486150
  00421343: 57                                              push   edi
  00421344: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00421347: e8 04 4e 06 00                                  call   0x486150
  0042134c: 81 e7 ff ff 00 00                               and    edi,0xffff
  00421352: 8b 04 fd 18 1b 51 00                            mov    eax,DWORD PTR [edi*8+0x511b18]
  00421359: 8b 14 fd 1c 1b 51 00                            mov    edx,DWORD PTR [edi*8+0x511b1c]
  00421360: 8d 3c fd 18 1b 51 00                            lea    edi,[edi*8+0x511b18]
  00421367: b9 20 00 00 00                                  mov    ecx,0x20
  0042136c: e8 af 0a 0b 00                                  call   0x4d1e20
  00421371: 50                                              push   eax
  00421372: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00421375: e8 76 4e 06 00                                  call   0x4861f0
  0042137a: 8b 07                                           mov    eax,DWORD PTR [edi]
  0042137c: 50                                              push   eax
  0042137d: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00421380: e8 6b 4e 06 00                                  call   0x4861f0
  00421385: 8b 16                                           mov    edx,DWORD PTR [esi]
  00421387: 8b ce                                           mov    ecx,esi
  00421389: ff 92 d8 00 00 00                               call   DWORD PTR [edx+0xd8]
  0042138f: 50                                              push   eax
  00421390: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00421393: e8 58 4e 06 00                                  call   0x4861f0
  00421398: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042139a: 8b ce                                           mov    ecx,esi
  0042139c: ff 90 cc 00 00 00                               call   DWORD PTR [eax+0xcc]
  004213a2: 50                                              push   eax
  004213a3: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004213a6: e8 45 4e 06 00                                  call   0x4861f0
  004213ab: 8b 16                                           mov    edx,DWORD PTR [esi]
  004213ad: 8b ce                                           mov    ecx,esi
  004213af: ff 92 ec 00 00 00                               call   DWORD PTR [edx+0xec]
  004213b5: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004213b8: 50                                              push   eax
  004213b9: e8 92 4d 06 00                                  call   0x486150
  004213be: 8b 06                                           mov    eax,DWORD PTR [esi]
  004213c0: 8b ce                                           mov    ecx,esi
  004213c2: ff 90 e0 00 00 00                               call   DWORD PTR [eax+0xe0]
  004213c8: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004213cb: 50                                              push   eax
  004213cc: e8 7f 4d 06 00                                  call   0x486150
  004213d1: 8b 16                                           mov    edx,DWORD PTR [esi]
  004213d3: 8d 45 cc                                        lea    eax,[ebp-0x34]
  004213d6: 50                                              push   eax
  004213d7: 8b ce                                           mov    ecx,esi
  004213d9: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  004213df: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004213e2: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004213e9: e8 92 4a 06 00                                  call   0x485e80
  004213ee: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004213f1: 5f                                              pop    edi
  004213f2: 5e                                              pop    esi
  004213f3: 5b                                              pop    ebx
  004213f4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004213fb: 8b e5                                           mov    esp,ebp
  004213fd: 5d                                              pop    ebp
  004213fe: c2 04 00                                        ret    0x4

; ===== 0x00421410 ?Rob@Character@@QAEXK@Z =====
  00421410: 55                                              push   ebp
  00421411: 8b ec                                           mov    ebp,esp
  00421413: 6a ff                                           push   0xffffffff
  00421415: 68 90 43 4d 00                                  push   0x4d4390
  0042141a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00421420: 50                                              push   eax
  00421421: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00421428: 83 ec 34                                        sub    esp,0x34
  0042142b: 56                                              push   esi
  0042142c: 8b f1                                           mov    esi,ecx
  0042142e: 8b 06                                           mov    eax,DWORD PTR [esi]
  00421430: 6a 00                                           push   0x0
  00421432: 68 42 4e 00 00                                  push   0x4e42
  00421437: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0042143a: 85 c0                                           test   eax,eax
  0042143c: 0f 85 a1 00 00 00                               jne    0x4214e3
  00421442: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00421445: e8 a6 49 06 00                                  call   0x485df0
  0042144a: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0042144d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00421454: e8 05 06 0b 00                                  call   0x4d1a5e
  00421459: 33 c9                                           xor    ecx,ecx
  0042145b: 66 8b 8e 1c 01 00 00                            mov    cx,WORD PTR [esi+0x11c]
  00421462: 68 58 13 51 00                                  push   0x511358
  00421467: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0042146b: 51                                              push   ecx
  0042146c: 6a 19                                           push   0x19
  0042146e: e8 7d c5 01 00                                  call   0x43d9f0
  00421473: 83 c4 0c                                        add    esp,0xc
  00421476: 50                                              push   eax
  00421477: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0042147a: e8 d9 05 0b 00                                  call   0x4d1a58
  0042147f: 6a 3f                                           push   0x3f
  00421481: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00421484: e8 c7 4c 06 00                                  call   0x486150
  00421489: 6a 1e                                           push   0x1e
  0042148b: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0042148e: e8 bd 4c 06 00                                  call   0x486150
  00421493: 6a 03                                           push   0x3
  00421495: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00421498: e8 b3 4c 06 00                                  call   0x486150
  0042149d: 8d 55 08                                        lea    edx,[ebp+0x8]
  004214a0: 52                                              push   edx
  004214a1: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004214a4: e8 a7 4e 06 00                                  call   0x486350
  004214a9: 8b 06                                           mov    eax,DWORD PTR [esi]
  004214ab: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004214ae: 51                                              push   ecx
  004214af: 8b ce                                           mov    ecx,esi
  004214b1: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  004214b7: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004214ba: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004214be: e8 7d 05 0b 00                                  call   0x4d1a40
  004214c3: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004214c6: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004214cd: e8 ae 49 06 00                                  call   0x485e80
  004214d2: 5e                                              pop    esi
  004214d3: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004214d6: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004214dd: 8b e5                                           mov    esp,ebp
  004214df: 5d                                              pop    ebp
  004214e0: c2 04 00                                        ret    0x4
  004214e3: 8b 16                                           mov    edx,DWORD PTR [esi]
  004214e5: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004214e8: 50                                              push   eax
  004214e9: 8b ce                                           mov    ecx,esi
  004214eb: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004214ee: 33 c9                                           xor    ecx,ecx
  004214f0: 66 8b 48 08                                     mov    cx,WORD PTR [eax+0x8]
  004214f4: 51                                              push   ecx
  004214f5: e8 c6 09 05 00                                  call   0x471ec0
  004214fa: 83 c4 04                                        add    esp,0x4
  004214fd: 85 c0                                           test   eax,eax
  004214ff: 75 1d                                           jne    0x42151e
  00421501: 8b 16                                           mov    edx,DWORD PTR [esi]
  00421503: 68 42 4e 00 00                                  push   0x4e42
  00421508: 8b ce                                           mov    ecx,esi
  0042150a: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0042150d: 5e                                              pop    esi
  0042150e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00421511: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00421518: 8b e5                                           mov    esp,ebp
  0042151a: 5d                                              pop    ebp
  0042151b: c2 04 00                                        ret    0x4
  0042151e: 8b 06                                           mov    eax,DWORD PTR [esi]
  00421520: 8b ce                                           mov    ecx,esi
  00421522: ff 90 a8 00 00 00                               call   DWORD PTR [eax+0xa8]
  00421528: 85 c0                                           test   eax,eax
  0042152a: 0f 85 ad 00 00 00                               jne    0x4215dd
  00421530: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00421533: e8 b8 48 06 00                                  call   0x485df0
  00421538: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0042153b: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00421542: e8 17 05 0b 00                                  call   0x4d1a5e
  00421547: 33 c9                                           xor    ecx,ecx
  00421549: 66 8b 8e 1c 01 00 00                            mov    cx,WORD PTR [esi+0x11c]
  00421550: 68 58 13 51 00                                  push   0x511358
  00421555: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00421559: 51                                              push   ecx
  0042155a: 6a 19                                           push   0x19
  0042155c: e8 8f c4 01 00                                  call   0x43d9f0
  00421561: 83 c4 0c                                        add    esp,0xc
  00421564: 50                                              push   eax
  00421565: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00421568: e8 eb 04 0b 00                                  call   0x4d1a58
  0042156d: 6a 3f                                           push   0x3f
  0042156f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00421572: e8 d9 4b 06 00                                  call   0x486150
  00421577: 6a 1e                                           push   0x1e
  00421579: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  0042157c: e8 cf 4b 06 00                                  call   0x486150
  00421581: 6a 03                                           push   0x3
  00421583: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00421586: e8 c5 4b 06 00                                  call   0x486150
  0042158b: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0042158e: 52                                              push   edx
  0042158f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00421592: e8 b9 4d 06 00                                  call   0x486350
  00421597: 8b 06                                           mov    eax,DWORD PTR [esi]
  00421599: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  0042159c: 51                                              push   ecx
  0042159d: 8b ce                                           mov    ecx,esi
  0042159f: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  004215a5: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004215a8: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004215ac: e8 8f 04 0b 00                                  call   0x4d1a40
  004215b1: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004215b4: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004215bb: e8 c0 48 06 00                                  call   0x485e80
  004215c0: 8b 16                                           mov    edx,DWORD PTR [esi]
  004215c2: 68 42 4e 00 00                                  push   0x4e42
  004215c7: 8b ce                                           mov    ecx,esi
  004215c9: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004215cc: 5e                                              pop    esi
  004215cd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004215d0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004215d7: 8b e5                                           mov    esp,ebp
  004215d9: 5d                                              pop    ebp
  004215da: c2 04 00                                        ret    0x4
  004215dd: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004215e0: 8b 16                                           mov    edx,DWORD PTR [esi]
  004215e2: 51                                              push   ecx
  004215e3: 50                                              push   eax
  004215e4: 6a 0f                                           push   0xf
  004215e6: 8b ce                                           mov    ecx,esi
  004215e8: ff 92 54 01 00 00                               call   DWORD PTR [edx+0x154]
  004215ee: 8b 16                                           mov    edx,DWORD PTR [esi]
  004215f0: 68 42 4e 00 00                                  push   0x4e42
  004215f5: 8b ce                                           mov    ecx,esi
  004215f7: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004215fa: 8b 06                                           mov    eax,DWORD PTR [esi]
  004215fc: 6a 00                                           push   0x0
  004215fe: 8b ce                                           mov    ecx,esi
  00421600: ff 90 ac 00 00 00                               call   DWORD PTR [eax+0xac]
  00421606: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00421609: 5e                                              pop    esi
  0042160a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00421611: 8b e5                                           mov    esp,ebp
  00421613: 5d                                              pop    ebp
  00421614: c2 04 00                                        ret    0x4

; ===== 0x004223A0 ?EquipCount@Character@@QAEKG@Z =====
  004223a0: 55                                              push   ebp
  004223a1: 8b ec                                           mov    ebp,esp
  004223a3: 51                                              push   ecx
  004223a4: 53                                              push   ebx
  004223a5: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004223a8: 56                                              push   esi
  004223a9: 57                                              push   edi
  004223aa: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004223ad: 33 f6                                           xor    esi,esi
  004223af: 8d b9 a0 01 00 00                               lea    edi,[ecx+0x1a0]
  004223b5: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  004223b7: 85 c9                                           test   ecx,ecx
  004223b9: 74 11                                           je     0x4223cc
  004223bb: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004223bd: ff 50 28                                        call   DWORD PTR [eax+0x28]
  004223c0: 8b cb                                           mov    ecx,ebx
  004223c2: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004223c8: 3b c1                                           cmp    eax,ecx
  004223ca: 74 14                                           je     0x4223e0
  004223cc: 46                                              inc    esi
  004223cd: 83 c7 04                                        add    edi,0x4
  004223d0: 83 fe 10                                        cmp    esi,0x10
  004223d3: 7c e0                                           jl     0x4223b5
  004223d5: 5f                                              pop    edi
  004223d6: 5e                                              pop    esi
  004223d7: 33 c0                                           xor    eax,eax
  004223d9: 5b                                              pop    ebx
  004223da: 8b e5                                           mov    esp,ebp
  004223dc: 5d                                              pop    ebp
  004223dd: c2 04 00                                        ret    0x4
  004223e0: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004223e3: 8b 8c b2 a0 01 00 00                            mov    ecx,DWORD PTR [edx+esi*4+0x1a0]
  004223ea: e8 01 a0 02 00                                  call   0x44c3f0
  004223ef: 5f                                              pop    edi
  004223f0: 5e                                              pop    esi
  004223f1: 5b                                              pop    ebx
  004223f2: 8b e5                                           mov    esp,ebp
  004223f4: 5d                                              pop    ebp
  004223f5: c2 04 00                                        ret    0x4

; ===== 0x00422400 ?ClearAllSkillsAndSpells@Character@@QAEXXZ =====
  00422400: 55                                              push   ebp
  00422401: 8b ec                                           mov    ebp,esp
  00422403: 6a ff                                           push   0xffffffff
  00422405: 68 80 44 4d 00                                  push   0x4d4480
  0042240a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00422410: 50                                              push   eax
  00422411: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00422418: 83 ec 50                                        sub    esp,0x50
  0042241b: 53                                              push   ebx
  0042241c: 56                                              push   esi
  0042241d: 57                                              push   edi
  0042241e: 8d 45 ac                                        lea    eax,[ebp-0x54]
  00422421: 8b f9                                           mov    edi,ecx
  00422423: 50                                              push   eax
  00422424: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00422427: c7 45 a4 8c e5 4d 00                            mov    DWORD PTR [ebp-0x5c],0x4de58c
  0042242e: c7 45 a8 ff ff ff ff                            mov    DWORD PTR [ebp-0x58],0xffffffff
  00422435: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0042243b: 33 db                                           xor    ebx,ebx
  0042243d: 89 5d c8                                        mov    DWORD PTR [ebp-0x38],ebx
  00422440: 89 5d cc                                        mov    DWORD PTR [ebp-0x34],ebx
  00422443: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  00422446: 89 5d d4                                        mov    DWORD PTR [ebp-0x2c],ebx
  00422449: c7 45 a4 6c e8 4d 00                            mov    DWORD PTR [ebp-0x5c],0x4de86c
  00422450: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  00422453: c6 45 d8 08                                     mov    BYTE PTR [ebp-0x28],0x8
  00422457: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0042245a: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0042245d: 8d b7 04 02 00 00                               lea    esi,[edi+0x204]
  00422463: c7 45 ec 07 00 00 00                            mov    DWORD PTR [ebp-0x14],0x7
  0042246a: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0042246d: 89 0e                                           mov    DWORD PTR [esi],ecx
  0042246f: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  00422472: c6 46 14 08                                     mov    BYTE PTR [esi+0x14],0x8
  00422476: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  00422479: 74 08                                           je     0x422483
  0042247b: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042247d: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042247f: 89 06                                           mov    DWORD PTR [esi],eax
  00422481: eb 07                                           jmp    0x42248a
  00422483: c7 46 20 01 00 00 00                            mov    DWORD PTR [esi+0x20],0x1
  0042248a: 39 1e                                           cmp    DWORD PTR [esi],ebx
  0042248c: 0f 84 22 01 00 00                               je     0x4225b4
  00422492: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  00422495: 33 d2                                           xor    edx,edx
  00422497: 33 c9                                           xor    ecx,ecx
  00422499: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  0042249c: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0042249f: c6 45 d8 08                                     mov    BYTE PTR [ebp-0x28],0x8
  004224a3: eb 02                                           jmp    0x4224a7
  004224a5: 33 db                                           xor    ebx,ebx
  004224a7: 3b cb                                           cmp    ecx,ebx
  004224a9: 74 07                                           je     0x4224b2
  004224ab: 8b 00                                           mov    eax,DWORD PTR [eax]
  004224ad: 89 45 c4                                        mov    DWORD PTR [ebp-0x3c],eax
  004224b0: eb 08                                           jmp    0x4224ba
  004224b2: b9 01 00 00 00                                  mov    ecx,0x1
  004224b7: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  004224ba: 3b c3                                           cmp    eax,ebx
  004224bc: 74 19                                           je     0x4224d7
  004224be: 3b d3                                           cmp    edx,ebx
  004224c0: 0f 85 de 00 00 00                               jne    0x4225a4
  004224c6: 8b 3e                                           mov    edi,DWORD PTR [esi]
  004224c8: 8b 58 08                                        mov    ebx,DWORD PTR [eax+0x8]
  004224cb: 3b 5f 08                                        cmp    ebx,DWORD PTR [edi+0x8]
  004224ce: 75 d5                                           jne    0x4224a5
  004224d0: ba 01 00 00 00                                  mov    edx,0x1
  004224d5: eb ce                                           jmp    0x4224a5
  004224d7: 3b cb                                           cmp    ecx,ebx
  004224d9: 74 04                                           je     0x4224df
  004224db: c6 45 d8 07                                     mov    BYTE PTR [ebp-0x28],0x7
  004224df: 3b d3                                           cmp    edx,ebx
  004224e1: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  004224e4: 0f 85 ba 00 00 00                               jne    0x4225a4
  004224ea: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004224ec: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004224ef: 52                                              push   edx
  004224f0: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  004224f3: e8 08 2d 00 00                                  call   0x425200
  004224f8: 8b 7e 18                                        mov    edi,DWORD PTR [esi+0x18]
  004224fb: 8b 06                                           mov    eax,DWORD PTR [esi]
  004224fd: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00422500: 4f                                              dec    edi
  00422501: 3b c1                                           cmp    eax,ecx
  00422503: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00422506: 89 7e 18                                        mov    DWORD PTR [esi+0x18],edi
  00422509: 74 38                                           je     0x422543
  0042250b: 3b 46 04                                        cmp    eax,DWORD PTR [esi+0x4]
  0042250e: 74 2f                                           je     0x42253f
  00422510: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00422512: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00422515: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00422518: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042251a: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042251d: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042251f: 89 11                                           mov    DWORD PTR [ecx],edx
  00422521: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00422524: 83 f8 01                                        cmp    eax,0x1
  00422527: 75 09                                           jne    0x422532
  00422529: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042252b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042252e: 89 0e                                           mov    DWORD PTR [esi],ecx
  00422530: eb 5a                                           jmp    0x42258c
  00422532: 83 f8 02                                        cmp    eax,0x2
  00422535: 75 55                                           jne    0x42258c
  00422537: 8b 16                                           mov    edx,DWORD PTR [esi]
  00422539: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042253b: 89 06                                           mov    DWORD PTR [esi],eax
  0042253d: eb 4d                                           jmp    0x42258c
  0042253f: 3b c1                                           cmp    eax,ecx
  00422541: 75 1f                                           jne    0x422562
  00422543: 3b 46 04                                        cmp    eax,DWORD PTR [esi+0x4]
  00422546: 74 1f                                           je     0x422567
  00422548: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042254b: 89 19                                           mov    DWORD PTR [ecx],ebx
  0042254d: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042254f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00422552: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00422555: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00422558: 89 06                                           mov    DWORD PTR [esi],eax
  0042255a: 83 7e 20 02                                     cmp    DWORD PTR [esi+0x20],0x2
  0042255e: 75 2c                                           jne    0x42258c
  00422560: eb 27                                           jmp    0x422589
  00422562: 3b 46 04                                        cmp    eax,DWORD PTR [esi+0x4]
  00422565: 75 1a                                           jne    0x422581
  00422567: 3b c1                                           cmp    eax,ecx
  00422569: 74 16                                           je     0x422581
  0042256b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042256d: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00422570: 8b 16                                           mov    edx,DWORD PTR [esi]
  00422572: 8b 02                                           mov    eax,DWORD PTR [edx]
  00422574: 89 06                                           mov    DWORD PTR [esi],eax
  00422576: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00422579: 83 7e 20 01                                     cmp    DWORD PTR [esi+0x20],0x1
  0042257d: 75 0d                                           jne    0x42258c
  0042257f: eb 08                                           jmp    0x422589
  00422581: 89 1e                                           mov    DWORD PTR [esi],ebx
  00422583: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00422586: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00422589: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  0042258c: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0042258f: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00422592: 51                                              push   ecx
  00422593: e8 c8 fa 01 00                                  call   0x442060
  00422598: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0042259b: 52                                              push   edx
  0042259c: e8 bf fa 01 00                                  call   0x442060
  004225a1: 83 c4 08                                        add    esp,0x8
  004225a4: 8d 4e e0                                        lea    ecx,[esi-0x20]
  004225a7: e8 a4 1f 00 00                                  call   0x424550
  004225ac: 8b 7d e8                                        mov    edi,DWORD PTR [ebp-0x18]
  004225af: e9 c2 fe ff ff                                  jmp    0x422476
  004225b4: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  004225b7: 74 04                                           je     0x4225bd
  004225b9: c6 46 14 07                                     mov    BYTE PTR [esi+0x14],0x7
  004225bd: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004225c0: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  004225c3: 83 c6 44                                        add    esi,0x44
  004225c6: 48                                              dec    eax
  004225c7: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004225ca: 0f 85 9a fe ff ff                               jne    0x42246a
  004225d0: 8b 87 e4 03 00 00                               mov    eax,DWORD PTR [edi+0x3e4]
  004225d6: 8d b7 c0 03 00 00                               lea    esi,[edi+0x3c0]
  004225dc: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004225df: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004225e2: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004225e6: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  004225e9: 74 0a                                           je     0x4225f5
  004225eb: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004225ee: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004225f0: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004225f3: eb 07                                           jmp    0x4225fc
  004225f5: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  004225fc: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  004225ff: 74 09                                           je     0x42260a
  00422601: 8b ce                                           mov    ecx,esi
  00422603: e8 38 20 00 00                                  call   0x424640
  00422608: eb dc                                           jmp    0x4225e6
  0042260a: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0042260d: 74 04                                           je     0x422613
  0042260f: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  00422613: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00422616: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00422619: 66 c7 87 e0 01 00 00 ff ff                      mov    WORD PTR [edi+0x1e0],0xffff
  00422622: e8 37 f4 0a 00                                  call   0x4d1a5e
  00422627: 8b 37                                           mov    esi,DWORD PTR [edi]
  00422629: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0042262d: e8 2e b4 01 00                                  call   0x43da60
  00422632: 8b cf                                           mov    ecx,edi
  00422634: 50                                              push   eax
  00422635: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00422638: 50                                              push   eax
  00422639: ff 56 48                                        call   DWORD PTR [esi+0x48]
  0042263c: 8b 30                                           mov    esi,DWORD PTR [eax]
  0042263e: 8b cf                                           mov    ecx,edi
  00422640: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00422644: e8 b7 90 06 00                                  call   0x48b700
  00422649: 50                                              push   eax
  0042264a: 56                                              push   esi
  0042264b: 68 04 27 50 00                                  push   0x502704
  00422650: 6a 04                                           push   0x4
  00422652: e8 e9 f6 04 00                                  call   0x471d40
  00422657: 83 c4 10                                        add    esp,0x10
  0042265a: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0042265d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00422661: e8 da f3 0a 00                                  call   0x4d1a40
  00422666: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00422669: 51                                              push   ecx
  0042266a: 53                                              push   ebx
  0042266b: 6a 0f                                           push   0xf
  0042266d: 6a 23                                           push   0x23
  0042266f: 8b cf                                           mov    ecx,edi
  00422671: e8 4a ba ff ff                                  call   0x41e0c0
  00422676: 3b c3                                           cmp    eax,ebx
  00422678: 74 09                                           je     0x422683
  0042267a: c7 40 04 0f 00 00 00                            mov    DWORD PTR [eax+0x4],0xf
  00422681: eb 41                                           jmp    0x4226c4
  00422683: 8b 37                                           mov    esi,DWORD PTR [edi]
  00422685: e8 d6 b3 01 00                                  call   0x43da60
  0042268a: 8d 55 e8                                        lea    edx,[ebp-0x18]
  0042268d: 8b cf                                           mov    ecx,edi
  0042268f: 50                                              push   eax
  00422690: 52                                              push   edx
  00422691: ff 56 48                                        call   DWORD PTR [esi+0x48]
  00422694: 8b 30                                           mov    esi,DWORD PTR [eax]
  00422696: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00422699: 50                                              push   eax
  0042269a: 6a 23                                           push   0x23
  0042269c: 8b cf                                           mov    ecx,edi
  0042269e: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004226a2: e8 59 90 06 00                                  call   0x48b700
  004226a7: 50                                              push   eax
  004226a8: 56                                              push   esi
  004226a9: 68 a0 26 50 00                                  push   0x5026a0
  004226ae: 6a 01                                           push   0x1
  004226b0: e8 8b f6 04 00                                  call   0x471d40
  004226b5: 83 c4 18                                        add    esp,0x18
  004226b8: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004226bb: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004226bf: e8 7c f3 0a 00                                  call   0x4d1a40
  004226c4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004226c7: 66 89 9f e0 01 00 00                            mov    WORD PTR [edi+0x1e0],bx
  004226ce: 66 89 9f e2 01 00 00                            mov    WORD PTR [edi+0x1e2],bx
  004226d5: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004226d8: e8 63 f3 0a 00                                  call   0x4d1a40
  004226dd: 8d 4d a4                                        lea    ecx,[ebp-0x5c]
  004226e0: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004226e7: e8 14 1d 00 00                                  call   0x424400
  004226ec: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004226ef: 5f                                              pop    edi
  004226f0: 5e                                              pop    esi
  004226f1: 5b                                              pop    ebx
  004226f2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004226f9: 8b e5                                           mov    esp,ebp
  004226fb: 5d                                              pop    ebp
  004226fc: c3                                              ret

; ===== 0x00422700 ?BroadcastSeraphArrival@Character@@QAEXXZ =====
  00422700: 55                                              push   ebp
  00422701: 8b ec                                           mov    ebp,esp
  00422703: 6a ff                                           push   0xffffffff
  00422705: 68 98 44 4d 00                                  push   0x4d4498
  0042270a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00422710: 50                                              push   eax
  00422711: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00422718: 83 ec 30                                        sub    esp,0x30
  0042271b: 56                                              push   esi
  0042271c: 8b f1                                           mov    esi,ecx
  0042271e: 8a 86 74 01 00 00                               mov    al,BYTE PTR [esi+0x174]
  00422724: 84 c0                                           test   al,al
  00422726: 74 38                                           je     0x422760
  00422728: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042272a: 6a 01                                           push   0x1
  0042272c: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0042272f: 51                                              push   ecx
  00422730: 8b ce                                           mov    ecx,esi
  00422732: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  00422735: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00422737: 83 ec 0c                                        sub    esp,0xc
  0042273a: 8b d4                                           mov    edx,esp
  0042273c: 89 0a                                           mov    DWORD PTR [edx],ecx
  0042273e: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00422741: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00422744: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00422747: 8b ce                                           mov    ecx,esi
  00422749: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0042274c: e8 8f d0 06 00                                  call   0x48f7e0
  00422751: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00422754: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042275b: 5e                                              pop    esi
  0042275c: 8b e5                                           mov    esp,ebp
  0042275e: 5d                                              pop    ebp
  0042275f: c3                                              ret
  00422760: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  00422763: e8 88 36 06 00                                  call   0x485df0
  00422768: 6a 62                                           push   0x62
  0042276a: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0042276d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00422774: e8 d7 39 06 00                                  call   0x486150
  00422779: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042277b: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  0042277e: 51                                              push   ecx
  0042277f: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00422782: 50                                              push   eax
  00422783: 8b ce                                           mov    ecx,esi
  00422785: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00422788: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042278a: 83 ec 0c                                        sub    esp,0xc
  0042278d: 8b cc                                           mov    ecx,esp
  0042278f: 89 11                                           mov    DWORD PTR [ecx],edx
  00422791: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00422794: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00422797: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042279a: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0042279d: 8b ce                                           mov    ecx,esi
  0042279f: e8 fc d0 06 00                                  call   0x48f8a0
  004227a4: 8b 16                                           mov    edx,DWORD PTR [esi]
  004227a6: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  004227a9: 50                                              push   eax
  004227aa: 8b ce                                           mov    ecx,esi
  004227ac: ff 92 c0 01 00 00                               call   DWORD PTR [edx+0x1c0]
  004227b2: 8b 16                                           mov    edx,DWORD PTR [esi]
  004227b4: 8b ce                                           mov    ecx,esi
  004227b6: c6 86 74 01 00 00 01                            mov    BYTE PTR [esi+0x174],0x1
  004227bd: ff 92 d0 01 00 00                               call   DWORD PTR [edx+0x1d0]
  004227c3: 8b 16                                           mov    edx,DWORD PTR [esi]
  004227c5: 50                                              push   eax
  004227c6: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  004227c9: 50                                              push   eax
  004227ca: 6a 14                                           push   0x14
  004227cc: 8d 45 dc                                        lea    eax,[ebp-0x24]
  004227cf: 50                                              push   eax
  004227d0: 8b ce                                           mov    ecx,esi
  004227d2: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004227d5: 8b 10                                           mov    edx,DWORD PTR [eax]
  004227d7: 83 ec 0c                                        sub    esp,0xc
  004227da: 8b cc                                           mov    ecx,esp
  004227dc: 89 11                                           mov    DWORD PTR [ecx],edx
  004227de: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004227e1: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004227e4: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004227e7: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004227ea: e8 01 d3 fe ff                                  call   0x40faf0
  004227ef: 83 c4 18                                        add    esp,0x18
  004227f2: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004227f5: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004227fc: e8 7f 36 06 00                                  call   0x485e80
  00422801: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00422804: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042280b: 5e                                              pop    esi
  0042280c: 8b e5                                           mov    esp,ebp
  0042280e: 5d                                              pop    ebp
  0042280f: c3                                              ret

; ===== 0x00422810 ?CanInvite@Character@@QAE_NXZ =====
  00422810: 56                                              push   esi
  00422811: 8b f1                                           mov    esi,ecx
  00422813: e8 78 fa 04 00                                  call   0x472290
  00422818: 39 86 18 01 00 00                               cmp    DWORD PTR [esi+0x118],eax
  0042281e: 73 14                                           jae    0x422834
  00422820: e8 6b fa 04 00                                  call   0x472290
  00422825: 05 58 02 00 00                                  add    eax,0x258
  0042282a: 89 86 18 01 00 00                               mov    DWORD PTR [esi+0x118],eax
  00422830: b0 01                                           mov    al,0x1
  00422832: 5e                                              pop    esi
  00422833: c3                                              ret
  00422834: 32 c0                                           xor    al,al
  00422836: 5e                                              pop    esi
  00422837: c3                                              ret

; ===== 0x00422840 ?RemoveReferenceTo@Character@@UAEXPAVUnit@@@Z =====
  00422840: 55                                              push   ebp
  00422841: 8b ec                                           mov    ebp,esp
  00422843: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422846: 39 81 1c 04 00 00                               cmp    DWORD PTR [ecx+0x41c],eax
  0042284c: 75 0a                                           jne    0x422858
  0042284e: c7 81 1c 04 00 00 00 00 00 00                   mov    DWORD PTR [ecx+0x41c],0x0
  00422858: 50                                              push   eax
  00422859: e8 02 d4 06 00                                  call   0x48fc60
  0042285e: 5d                                              pop    ebp
  0042285f: c2 04 00                                        ret    0x4

