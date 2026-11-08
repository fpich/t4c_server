; Passe 76 — MOTEUR_MONSTRES_ET_BOUCLE
; PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions atteignables statiquement depuis les entrées définies, vérifiées octet par octet.
; NOP/INT3 exclues du comptage, zones data non traversées; branches indirectes non résolues.

; [0045A350] SimpleMonster::??0SimpleMonster ; instruction=9 ; plage_limite=0045A370 ; issues=0
  0045a350: 56                                             push   esi
  0045a351: 8b f1                                          mov    esi,ecx
  0045a353: e8 48 f7 fe ff                                 call   0x449aa0
  0045a358: c7 06 1c f4 4d 00                              mov    DWORD PTR [esi],0x4df41c
  0045a35e: c7 46 30 01 00 00 00                           mov    DWORD PTR [esi+0x30],0x1
  0045a365: 66 c7 46 1c 00 00                              mov    WORD PTR [esi+0x1c],0x0
  0045a36b: 8b c6                                          mov    eax,esi
  0045a36d: 5e                                             pop    esi
  0045a36e: c3                                             ret

; [0045A370] SimpleMonster::?Create@SimpleMonster ; instruction=1 ; plage_limite=0045A380 ; issues=0
  0045a370: c3                                             ret

; [0045A380] SimpleMonster::??1SimpleMonster ; instruction=15 ; plage_limite=0045A3C0 ; issues=0
  0045a380: 55                                             push   ebp
  0045a381: 8b ec                                          mov    ebp,esp
  0045a383: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0045a389: 6a ff                                          push   0xffffffff
  0045a38b: 68 58 75 4d 00                                 push   0x4d7558
  0045a390: 50                                             push   eax
  0045a391: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0045a398: c7 01 1c f4 4d 00                              mov    DWORD PTR [ecx],0x4df41c
  0045a39e: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0045a3a5: e8 76 f7 fe ff                                 call   0x449b20
  0045a3aa: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0045a3ad: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0045a3b4: 8b e5                                          mov    esp,ebp
  0045a3b6: 5d                                             pop    ebp
  0045a3b7: c3                                             ret

; [0045A3C0] SimpleMonster::?OnInitialise@SimpleMonster ; instruction=263 ; plage_limite=0045A6B0 ; issues=0
  0045a3c0: 55                                             push   ebp
  0045a3c1: 8b ec                                          mov    ebp,esp
  0045a3c3: 83 ec 0c                                       sub    esp,0xc
  0045a3c6: 53                                             push   ebx
  0045a3c7: 56                                             push   esi
  0045a3c8: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  0045a3cb: 8b 06                                          mov    eax,DWORD PTR [esi]
  0045a3cd: 57                                             push   edi
  0045a3ce: 8b f9                                          mov    edi,ecx
  0045a3d0: 8b 4f 24                                       mov    ecx,DWORD PTR [edi+0x24]
  0045a3d3: 51                                             push   ecx
  0045a3d4: 8b ce                                          mov    ecx,esi
  0045a3d6: ff 90 d4 00 00 00                              call   DWORD PTR [eax+0xd4]
  0045a3dc: 8b 47 24                                       mov    eax,DWORD PTR [edi+0x24]
  0045a3df: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a3e1: 6a 00                                          push   0x0
  0045a3e3: 50                                             push   eax
  0045a3e4: 8b ce                                          mov    ecx,esi
  0045a3e6: ff 92 dc 00 00 00                              call   DWORD PTR [edx+0xdc]
  0045a3ec: 33 c9                                          xor    ecx,ecx
  0045a3ee: 66 8b 4f 28                                    mov    cx,WORD PTR [edi+0x28]
  0045a3f2: 51                                             push   ecx
  0045a3f3: 8b ce                                          mov    ecx,esi
  0045a3f5: e8 06 3f 03 00                                 call   0x48e300
  0045a3fa: 6a 00                                          push   0x0
  0045a3fc: 8b ce                                          mov    ecx,esi
  0045a3fe: e8 ed 3e 03 00                                 call   0x48e2f0
  0045a403: 8b 47 30                                       mov    eax,DWORD PTR [edi+0x30]
  0045a406: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a408: 50                                             push   eax
  0045a409: 6a 0e                                          push   0xe
  0045a40b: 8b ce                                          mov    ecx,esi
  0045a40d: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a410: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a412: 6a 00                                          push   0x0
  0045a414: 8b ce                                          mov    ecx,esi
  0045a416: ff 92 ac 00 00 00                              call   DWORD PTR [edx+0xac]
  0045a41c: 8b 06                                          mov    eax,DWORD PTR [esi]
  0045a41e: 33 c9                                          xor    ecx,ecx
  0045a420: 8a 4f 38                                       mov    cl,BYTE PTR [edi+0x38]
  0045a423: 51                                             push   ecx
  0045a424: 8b ce                                          mov    ecx,esi
  0045a426: ff 90 8c 00 00 00                              call   DWORD PTR [eax+0x8c]
  0045a42c: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a42e: 33 c0                                          xor    eax,eax
  0045a430: 8a 47 58                                       mov    al,BYTE PTR [edi+0x58]
  0045a433: 8b ce                                          mov    ecx,esi
  0045a435: 50                                             push   eax
  0045a436: ff 92 9c 00 00 00                              call   DWORD PTR [edx+0x9c]
  0045a43c: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a43e: 33 c0                                          xor    eax,eax
  0045a440: 66 8b 47 5a                                    mov    ax,WORD PTR [edi+0x5a]
  0045a444: 8b ce                                          mov    ecx,esi
  0045a446: 50                                             push   eax
  0045a447: ff 92 a4 00 00 00                              call   DWORD PTR [edx+0xa4]
  0045a44d: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a44f: 33 c0                                          xor    eax,eax
  0045a451: 66 8b 47 18                                    mov    ax,WORD PTR [edi+0x18]
  0045a455: 8b ce                                          mov    ecx,esi
  0045a457: 50                                             push   eax
  0045a458: ff 92 b8 00 00 00                              call   DWORD PTR [edx+0xb8]
  0045a45e: 8b 47 14                                       mov    eax,DWORD PTR [edi+0x14]
  0045a461: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a463: 50                                             push   eax
  0045a464: 8b ce                                          mov    ecx,esi
  0045a466: ff 52 30                                       call   DWORD PTR [edx+0x30]
  0045a469: 8b 47 2c                                       mov    eax,DWORD PTR [edi+0x2c]
  0045a46c: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a46e: 50                                             push   eax
  0045a46f: 8b ce                                          mov    ecx,esi
  0045a471: ff 92 88 01 00 00                              call   DWORD PTR [edx+0x188]
  0045a477: 33 c9                                          xor    ecx,ecx
  0045a479: 66 8b 8f c8 00 00 00                           mov    cx,WORD PTR [edi+0xc8]
  0045a480: 51                                             push   ecx
  0045a481: 8b ce                                          mov    ecx,esi
  0045a483: e8 18 3e 03 00                                 call   0x48e2a0
  0045a488: 33 d2                                          xor    edx,edx
  0045a48a: 66 8b 97 d8 00 00 00                           mov    dx,WORD PTR [edi+0xd8]
  0045a491: 8b ce                                          mov    ecx,esi
  0045a493: 52                                             push   edx
  0045a494: e8 17 3e 03 00                                 call   0x48e2b0
  0045a499: 33 c0                                          xor    eax,eax
  0045a49b: 66 8b 87 d0 00 00 00                           mov    ax,WORD PTR [edi+0xd0]
  0045a4a2: 50                                             push   eax
  0045a4a3: 8b ce                                          mov    ecx,esi
  0045a4a5: e8 16 3e 03 00                                 call   0x48e2c0
  0045a4aa: 33 c9                                          xor    ecx,ecx
  0045a4ac: 66 8b 8f e0 00 00 00                           mov    cx,WORD PTR [edi+0xe0]
  0045a4b3: 51                                             push   ecx
  0045a4b4: 8b ce                                          mov    ecx,esi
  0045a4b6: e8 25 3e 03 00                                 call   0x48e2e0
  0045a4bb: 33 d2                                          xor    edx,edx
  0045a4bd: 66 8b 97 d4 00 00 00                           mov    dx,WORD PTR [edi+0xd4]
  0045a4c4: 8b ce                                          mov    ecx,esi
  0045a4c6: 52                                             push   edx
  0045a4c7: e8 04 3e 03 00                                 call   0x48e2d0
  0045a4cc: 6a 02                                          push   0x2
  0045a4ce: 8b ce                                          mov    ecx,esi
  0045a4d0: e8 8b 4f 03 00                                 call   0x48f460
  0045a4d5: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a4d7: 83 c8 ff                                       or     eax,0xffffffff
  0045a4da: 83 ec 0c                                       sub    esp,0xc
  0045a4dd: 8b d8                                          mov    ebx,eax
  0045a4df: 8b cc                                          mov    ecx,esp
  0045a4e1: 89 19                                          mov    DWORD PTR [ecx],ebx
  0045a4e3: 89 41 04                                       mov    DWORD PTR [ecx+0x4],eax
  0045a4e6: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  0045a4e9: 8b ce                                          mov    ecx,esi
  0045a4eb: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  0045a4ee: ff 92 94 00 00 00                              call   DWORD PTR [edx+0x94]
  0045a4f4: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a4f6: 83 ec 0c                                       sub    esp,0xc
  0045a4f9: 8b cc                                          mov    ecx,esp
  0045a4fb: 89 19                                          mov    DWORD PTR [ecx],ebx
  0045a4fd: 83 c8 ff                                       or     eax,0xffffffff
  0045a500: 89 41 04                                       mov    DWORD PTR [ecx+0x4],eax
  0045a503: 8b c3                                          mov    eax,ebx
  0045a505: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  0045a508: 8b ce                                          mov    ecx,esi
  0045a50a: ff 92 20 01 00 00                              call   DWORD PTR [edx+0x120]
  0045a510: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a512: 83 ec 0c                                       sub    esp,0xc
  0045a515: 8b cc                                          mov    ecx,esp
  0045a517: 89 19                                          mov    DWORD PTR [ecx],ebx
  0045a519: 83 c8 ff                                       or     eax,0xffffffff
  0045a51c: 89 41 04                                       mov    DWORD PTR [ecx+0x4],eax
  0045a51f: 8b c3                                          mov    eax,ebx
  0045a521: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  0045a524: 8b ce                                          mov    ecx,esi
  0045a526: ff 92 24 01 00 00                              call   DWORD PTR [edx+0x124]
  0045a52c: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a52e: 6a 01                                          push   0x1
  0045a530: 8b ce                                          mov    ecx,esi
  0045a532: ff 92 c8 00 00 00                              call   DWORD PTR [edx+0xc8]
  0045a538: 33 c0                                          xor    eax,eax
  0045a53a: 66 8b 47 1c                                    mov    ax,WORD PTR [edi+0x1c]
  0045a53e: 8b ce                                          mov    ecx,esi
  0045a540: 50                                             push   eax
  0045a541: e8 ca 3d 03 00                                 call   0x48e310
  0045a546: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a548: 33 c0                                          xor    eax,eax
  0045a54a: 66 8b 47 10                                    mov    ax,WORD PTR [edi+0x10]
  0045a54e: 8b ce                                          mov    ecx,esi
  0045a550: 50                                             push   eax
  0045a551: ff 92 40 01 00 00                              call   DWORD PTR [edx+0x140]
  0045a557: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a559: 6a 03                                          push   0x3
  0045a55b: 8b ce                                          mov    ecx,esi
  0045a55d: ff 92 80 00 00 00                              call   DWORD PTR [edx+0x80]
  0045a563: 8b 87 ec 00 00 00                              mov    eax,DWORD PTR [edi+0xec]
  0045a569: 85 c0                                          test   eax,eax
  0045a56b: 74 10                                          je     0x45a57d
  0045a56d: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a56f: 83 c0 9c                                       add    eax,0xffffff9c
  0045a572: 50                                             push   eax
  0045a573: 68 40 4e 00 00                                 push   0x4e40
  0045a578: 8b ce                                          mov    ecx,esi
  0045a57a: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a57d: 8b 87 e8 00 00 00                              mov    eax,DWORD PTR [edi+0xe8]
  0045a583: 85 c0                                          test   eax,eax
  0045a585: 74 10                                          je     0x45a597
  0045a587: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a589: 83 c0 9c                                       add    eax,0xffffff9c
  0045a58c: 50                                             push   eax
  0045a58d: 68 3f 4e 00 00                                 push   0x4e3f
  0045a592: 8b ce                                          mov    ecx,esi
  0045a594: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a597: 8b 87 e4 00 00 00                              mov    eax,DWORD PTR [edi+0xe4]
  0045a59d: 85 c0                                          test   eax,eax
  0045a59f: 74 10                                          je     0x45a5b1
  0045a5a1: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a5a3: 83 c0 9c                                       add    eax,0xffffff9c
  0045a5a6: 50                                             push   eax
  0045a5a7: 68 3e 4e 00 00                                 push   0x4e3e
  0045a5ac: 8b ce                                          mov    ecx,esi
  0045a5ae: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a5b1: 8b 87 f0 00 00 00                              mov    eax,DWORD PTR [edi+0xf0]
  0045a5b7: 85 c0                                          test   eax,eax
  0045a5b9: 74 10                                          je     0x45a5cb
  0045a5bb: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a5bd: 83 c0 9c                                       add    eax,0xffffff9c
  0045a5c0: 50                                             push   eax
  0045a5c1: 68 41 4e 00 00                                 push   0x4e41
  0045a5c6: 8b ce                                          mov    ecx,esi
  0045a5c8: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a5cb: 8b 87 f4 00 00 00                              mov    eax,DWORD PTR [edi+0xf4]
  0045a5d1: 85 c0                                          test   eax,eax
  0045a5d3: 74 10                                          je     0x45a5e5
  0045a5d5: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a5d7: 83 c0 9c                                       add    eax,0xffffff9c
  0045a5da: 50                                             push   eax
  0045a5db: 68 45 4e 00 00                                 push   0x4e45
  0045a5e0: 8b ce                                          mov    ecx,esi
  0045a5e2: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a5e5: 8b 87 f8 00 00 00                              mov    eax,DWORD PTR [edi+0xf8]
  0045a5eb: 85 c0                                          test   eax,eax
  0045a5ed: 74 10                                          je     0x45a5ff
  0045a5ef: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a5f1: 83 c0 9c                                       add    eax,0xffffff9c
  0045a5f4: 50                                             push   eax
  0045a5f5: 68 46 4e 00 00                                 push   0x4e46
  0045a5fa: 8b ce                                          mov    ecx,esi
  0045a5fc: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a5ff: 8b 87 04 01 00 00                              mov    eax,DWORD PTR [edi+0x104]
  0045a605: 85 c0                                          test   eax,eax
  0045a607: 74 10                                          je     0x45a619
  0045a609: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a60b: 83 c0 9c                                       add    eax,0xffffff9c
  0045a60e: 50                                             push   eax
  0045a60f: 68 4b 4e 00 00                                 push   0x4e4b
  0045a614: 8b ce                                          mov    ecx,esi
  0045a616: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a619: 8b 87 00 01 00 00                              mov    eax,DWORD PTR [edi+0x100]
  0045a61f: 85 c0                                          test   eax,eax
  0045a621: 74 10                                          je     0x45a633
  0045a623: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a625: 83 c0 9c                                       add    eax,0xffffff9c
  0045a628: 50                                             push   eax
  0045a629: 68 4a 4e 00 00                                 push   0x4e4a
  0045a62e: 8b ce                                          mov    ecx,esi
  0045a630: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a633: 8b 87 fc 00 00 00                              mov    eax,DWORD PTR [edi+0xfc]
  0045a639: 85 c0                                          test   eax,eax
  0045a63b: 74 10                                          je     0x45a64d
  0045a63d: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a63f: 83 c0 9c                                       add    eax,0xffffff9c
  0045a642: 50                                             push   eax
  0045a643: 68 49 4e 00 00                                 push   0x4e49
  0045a648: 8b ce                                          mov    ecx,esi
  0045a64a: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a64d: 8b 87 08 01 00 00                              mov    eax,DWORD PTR [edi+0x108]
  0045a653: 85 c0                                          test   eax,eax
  0045a655: 74 10                                          je     0x45a667
  0045a657: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a659: 83 c0 9c                                       add    eax,0xffffff9c
  0045a65c: 50                                             push   eax
  0045a65d: 68 4c 4e 00 00                                 push   0x4e4c
  0045a662: 8b ce                                          mov    ecx,esi
  0045a664: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a667: 8b 87 0c 01 00 00                              mov    eax,DWORD PTR [edi+0x10c]
  0045a66d: 85 c0                                          test   eax,eax
  0045a66f: 74 10                                          je     0x45a681
  0045a671: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a673: 83 c0 9c                                       add    eax,0xffffff9c
  0045a676: 50                                             push   eax
  0045a677: 68 47 4e 00 00                                 push   0x4e47
  0045a67c: 8b ce                                          mov    ecx,esi
  0045a67e: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045a681: 8b bf 10 01 00 00                              mov    edi,DWORD PTR [edi+0x110]
  0045a687: 85 ff                                          test   edi,edi
  0045a689: 74 10                                          je     0x45a69b
  0045a68b: 8b 06                                          mov    eax,DWORD PTR [esi]
  0045a68d: 83 c7 9c                                       add    edi,0xffffff9c
  0045a690: 57                                             push   edi
  0045a691: 68 48 4e 00 00                                 push   0x4e48
  0045a696: 8b ce                                          mov    ecx,esi
  0045a698: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0045a69b: 5f                                             pop    edi
  0045a69c: 5e                                             pop    esi
  0045a69d: 5b                                             pop    ebx
  0045a69e: 8b e5                                          mov    esp,ebp
  0045a6a0: 5d                                             pop    ebp
  0045a6a1: c2 14 00                                       ret    0x14

; [0045A6B0] SimpleMonster::?OnPopup@SimpleMonster ; instruction=42 ; plage_limite=0045A720 ; issues=0
  0045a6b0: 55                                             push   ebp
  0045a6b1: 8b ec                                          mov    ebp,esp
  0045a6b3: 83 ec 10                                       sub    esp,0x10
  0045a6b6: 53                                             push   ebx
  0045a6b7: 56                                             push   esi
  0045a6b8: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  0045a6bb: 57                                             push   edi
  0045a6bc: 8b 3e                                          mov    edi,DWORD PTR [esi]
  0045a6be: 83 ec 10                                       sub    esp,0x10
  0045a6c1: 33 c0                                          xor    eax,eax
  0045a6c3: 8b dc                                          mov    ebx,esp
  0045a6c5: 89 03                                          mov    DWORD PTR [ebx],eax
  0045a6c7: 33 c9                                          xor    ecx,ecx
  0045a6c9: 33 d2                                          xor    edx,edx
  0045a6cb: 89 4b 04                                       mov    DWORD PTR [ebx+0x4],ecx
  0045a6ce: 89 53 08                                       mov    DWORD PTR [ebx+0x8],edx
  0045a6d1: 8b c2                                          mov    eax,edx
  0045a6d3: 8b ce                                          mov    ecx,esi
  0045a6d5: 89 55 fc                                       mov    DWORD PTR [ebp-0x4],edx
  0045a6d8: 89 43 0c                                       mov    DWORD PTR [ebx+0xc],eax
  0045a6db: ff 57 74                                       call   DWORD PTR [edi+0x74]
  0045a6de: 8b 16                                          mov    edx,DWORD PTR [esi]
  0045a6e0: 6a 03                                          push   0x3
  0045a6e2: 8b ce                                          mov    ecx,esi
  0045a6e4: ff 92 80 00 00 00                              call   DWORD PTR [edx+0x80]
  0045a6ea: 8b 3e                                          mov    edi,DWORD PTR [esi]
  0045a6ec: 83 ec 0c                                       sub    esp,0xc
  0045a6ef: 83 c8 ff                                       or     eax,0xffffffff
  0045a6f2: 8b dc                                          mov    ebx,esp
  0045a6f4: 83 c9 ff                                       or     ecx,0xffffffff
  0045a6f7: 89 03                                          mov    DWORD PTR [ebx],eax
  0045a6f9: 89 4b 04                                       mov    DWORD PTR [ebx+0x4],ecx
  0045a6fc: 83 ca ff                                       or     edx,0xffffffff
  0045a6ff: 8b ce                                          mov    ecx,esi
  0045a701: 89 53 08                                       mov    DWORD PTR [ebx+0x8],edx
  0045a704: ff 97 94 00 00 00                              call   DWORD PTR [edi+0x94]
  0045a70a: 5f                                             pop    edi
  0045a70b: 5e                                             pop    esi
  0045a70c: 5b                                             pop    ebx
  0045a70d: 8b e5                                          mov    esp,ebp
  0045a70f: 5d                                             pop    ebp
  0045a710: c2 14 00                                       ret    0x14

; [0045A720] SimpleMonster::?GetMonsterStructure@SimpleMonster ; instruction=2 ; plage_limite=0045A730 ; issues=0
  0045a720: 8d 41 08                                       lea    eax,[ecx+0x8]
  0045a723: c3                                             ret

; [0045A730] SimpleMonster::?OnServerInitialisation@SimpleMonster ; instruction=1 ; plage_limite=0045D730 ; issues=0
  0045a730: c2 18 00                                       ret    0x18

; [00432C10] Creatures::?MoveUnit@Creatures ; instruction=209 ; plage_limite=00432E90 ; issues=0
  00432c10: 55                                             push   ebp
  00432c11: 8b ec                                          mov    ebp,esp
  00432c13: 83 ec 28                                       sub    esp,0x28
  00432c16: 53                                             push   ebx
  00432c17: 56                                             push   esi
  00432c18: 8b f1                                          mov    esi,ecx
  00432c1a: 8b 06                                          mov    eax,DWORD PTR [esi]
  00432c1c: 57                                             push   edi
  00432c1d: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00432c20: 51                                             push   ecx
  00432c21: 8b ce                                          mov    ecx,esi
  00432c23: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  00432c26: 8b 16                                          mov    edx,DWORD PTR [esi]
  00432c28: 8d 45 e4                                       lea    eax,[ebp-0x1c]
  00432c2b: 50                                             push   eax
  00432c2c: 8b ce                                          mov    ecx,esi
  00432c2e: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00432c31: 8b 16                                          mov    edx,DWORD PTR [esi]
  00432c33: 6a 00                                          push   0x0
  00432c35: 68 31 4e 00 00                                 push   0x4e31
  00432c3a: 8b ce                                          mov    ecx,esi
  00432c3c: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00432c3f: 85 c0                                          test   eax,eax
  00432c41: 0f 85 fa 00 00 00                              jne    0x432d41
  00432c47: 8b 45 f8                                       mov    eax,DWORD PTR [ebp-0x8]
  00432c4a: 50                                             push   eax
  00432c4b: e8 70 f2 03 00                                 call   0x471ec0
  00432c50: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00432c53: 8b d8                                          mov    ebx,eax
  00432c55: 8d 41 ff                                       lea    eax,[ecx-0x1]
  00432c58: 83 c4 04                                       add    esp,0x4
  00432c5b: 83 f8 07                                       cmp    eax,0x7
  00432c5e: 77 37                                          ja     0x432c97
  00432c60: ff 24 85 70 2e 43 00                           jmp    DWORD PTR [eax*4+0x432e70]
  00432c97: 8b 16                                          mov    edx,DWORD PTR [esi]
  00432c99: 8d 45 d8                                       lea    eax,[ebp-0x28]
  00432c9c: 50                                             push   eax
  00432c9d: 8b ce                                          mov    ecx,esi
  00432c9f: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00432ca2: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  00432ca5: 3b 08                                          cmp    ecx,DWORD PTR [eax]
  00432ca7: 75 2a                                          jne    0x432cd3
  00432ca9: 8b 16                                          mov    edx,DWORD PTR [esi]
  00432cab: 8d 45 d8                                       lea    eax,[ebp-0x28]
  00432cae: 50                                             push   eax
  00432caf: 8b ce                                          mov    ecx,esi
  00432cb1: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00432cb4: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00432cb7: 3b 48 04                                       cmp    ecx,DWORD PTR [eax+0x4]
  00432cba: 75 17                                          jne    0x432cd3
  00432cbc: 8b 16                                          mov    edx,DWORD PTR [esi]
  00432cbe: 8d 45 d8                                       lea    eax,[ebp-0x28]
  00432cc1: 50                                             push   eax
  00432cc2: 8b ce                                          mov    ecx,esi
  00432cc4: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00432cc7: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  00432cca: 3b 48 08                                       cmp    ecx,DWORD PTR [eax+0x8]
  00432ccd: 0f 84 c8 00 00 00                              je     0x432d9b
  00432cd3: 8b 16                                          mov    edx,DWORD PTR [esi]
  00432cd5: 8d 45 fc                                       lea    eax,[ebp-0x4]
  00432cd8: 50                                             push   eax
  00432cd9: 6a 00                                          push   0x0
  00432cdb: 6a 00                                          push   0x0
  00432cdd: 6a 00                                          push   0x0
  00432cdf: 56                                             push   esi
  00432ce0: 6a 14                                          push   0x14
  00432ce2: 8b ce                                          mov    ecx,esi
  00432ce4: ff 52 24                                       call   DWORD PTR [edx+0x24]
  00432ce7: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  00432cea: 85 c0                                          test   eax,eax
  00432cec: 0f 84 a9 00 00 00                              je     0x432d9b
  00432cf2: 8b 48 2c                                       mov    ecx,DWORD PTR [eax+0x2c]
  00432cf5: 85 c9                                          test   ecx,ecx
  00432cf7: 0f 85 9e 00 00 00                              jne    0x432d9b
  00432cfd: 8b ce                                          mov    ecx,esi
  00432cff: e8 8c c7 05 00                                 call   0x48f490
  00432d04: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  00432d07: 83 ec 0c                                       sub    esp,0xc
  00432d0a: 8b cc                                          mov    ecx,esp
  00432d0c: 89 11                                          mov    DWORD PTR [ecx],edx
  00432d0e: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  00432d11: 66 0f b6 f8                                    movzx  di,al
  00432d15: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  00432d18: 89 41 04                                       mov    DWORD PTR [ecx+0x4],eax
  00432d1b: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  00432d1e: 8b cb                                          mov    ecx,ebx
  00432d20: e8 3b ef 07 00                                 call   0x4b1c60
  00432d25: 66 83 ff 05                                    cmp    di,0x5
  00432d29: 66 0f b6 c0                                    movzx  ax,al
  00432d2d: 74 60                                          je     0x432d8f
  00432d2f: 66 83 ff 07                                    cmp    di,0x7
  00432d33: 74 5a                                          je     0x432d8f
  00432d35: 66 3d 05 00                                    cmp    ax,0x5
  00432d39: 74 06                                          je     0x432d41
  00432d3b: 66 3d 07 00                                    cmp    ax,0x7
  00432d3f: 75 5a                                          jne    0x432d9b
  00432d41: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  00432d44: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  00432d47: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  00432d4a: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  00432d4d: 89 4d f4                                       mov    DWORD PTR [ebp-0xc],ecx
  00432d50: 89 55 f8                                       mov    DWORD PTR [ebp-0x8],edx
  00432d53: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  00432d56: 8b 06                                          mov    eax,DWORD PTR [esi]
  00432d58: 83 ec 0c                                       sub    esp,0xc
  00432d5b: 8b cc                                          mov    ecx,esp
  00432d5d: 89 11                                          mov    DWORD PTR [ecx],edx
  00432d5f: 8b 55 f4                                       mov    edx,DWORD PTR [ebp-0xc]
  00432d62: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00432d65: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  00432d68: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  00432d6b: 8b ce                                          mov    ecx,esi
  00432d6d: ff 50 20                                       call   DWORD PTR [eax+0x20]
  00432d70: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00432d73: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  00432d76: 8b c8                                          mov    ecx,eax
  00432d78: 89 11                                          mov    DWORD PTR [ecx],edx
  00432d7a: 8b 55 f4                                       mov    edx,DWORD PTR [ebp-0xc]
  00432d7d: 5f                                             pop    edi
  00432d7e: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00432d81: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  00432d84: 5e                                             pop    esi
  00432d85: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  00432d88: 5b                                             pop    ebx
  00432d89: 8b e5                                          mov    esp,ebp
  00432d8b: 5d                                             pop    ebp
  00432d8c: c2 14 00                                       ret    0x14
  00432d8f: 66 3d 05 00                                    cmp    ax,0x5
  00432d93: 74 06                                          je     0x432d9b
  00432d95: 66 3d 07 00                                    cmp    ax,0x7
  00432d99: 75 a6                                          jne    0x432d41
  00432d9b: 8a 56 59                                       mov    dl,BYTE PTR [esi+0x59]
  00432d9e: 8a 4d 14                                       mov    cl,BYTE PTR [ebp+0x14]
  00432da1: 84 d2                                          test   dl,dl
  00432da3: 0f 94 c0                                       sete   al
  00432da6: 84 c9                                          test   cl,cl
  00432da8: 88 46 59                                       mov    BYTE PTR [esi+0x59],al
  00432dab: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00432daf: 74 03                                          je     0x432db4
  00432db1: 88 45 fc                                       mov    BYTE PTR [ebp-0x4],al
  00432db4: 8a 45 18                                       mov    al,BYTE PTR [ebp+0x18]
  00432db7: 84 c0                                          test   al,al
  00432db9: 75 04                                          jne    0x432dbf
  00432dbb: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  00432dbf: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  00432dc2: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  00432dc5: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  00432dc8: 50                                             push   eax
  00432dc9: 51                                             push   ecx
  00432dca: 52                                             push   edx
  00432dcb: 8b ce                                          mov    ecx,esi
  00432dcd: e8 2e 89 05 00                                 call   0x48b700
  00432dd2: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  00432dd5: 8b 55 f4                                       mov    edx,DWORD PTR [ebp-0xc]
  00432dd8: 50                                             push   eax
  00432dd9: 83 ec 0c                                       sub    esp,0xc
  00432ddc: 8b c4                                          mov    eax,esp
  00432dde: 89 08                                          mov    DWORD PTR [eax],ecx
  00432de0: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  00432de3: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  00432de6: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  00432de9: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  00432dec: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  00432def: 83 ec 0c                                       sub    esp,0xc
  00432df2: 8b d4                                          mov    edx,esp
  00432df4: 89 02                                          mov    DWORD PTR [edx],eax
  00432df6: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00432df9: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  00432dfc: 8b cb                                          mov    ecx,ebx
  00432dfe: 89 42 08                                       mov    DWORD PTR [edx+0x8],eax
  00432e01: e8 9a e4 07 00                                 call   0x4b12a0
  00432e06: 85 c0                                          test   eax,eax
  00432e08: 75 17                                          jne    0x432e21
  00432e0a: 8b 4d e4                                       mov    ecx,DWORD PTR [ebp-0x1c]
  00432e0d: 8b 55 e8                                       mov    edx,DWORD PTR [ebp-0x18]
  00432e10: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00432e13: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  00432e16: 89 55 f4                                       mov    DWORD PTR [ebp-0xc],edx
  00432e19: 89 45 f8                                       mov    DWORD PTR [ebp-0x8],eax
  00432e1c: e9 32 ff ff ff                                 jmp    0x432d53
  00432e21: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  00432e24: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  00432e27: 56                                             push   esi
  00432e28: 83 ec 0c                                       sub    esp,0xc
  00432e2b: 8b cc                                          mov    ecx,esp
  00432e2d: 89 11                                          mov    DWORD PTR [ecx],edx
  00432e2f: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  00432e32: 89 41 04                                       mov    DWORD PTR [ecx+0x4],eax
  00432e35: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  00432e38: 8b cb                                          mov    ecx,ebx
  00432e3a: e8 71 d6 07 00                                 call   0x4b04b0
  00432e3f: 8b 06                                          mov    eax,DWORD PTR [esi]
  00432e41: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  00432e44: 51                                             push   ecx
  00432e45: 8b ce                                          mov    ecx,esi
  00432e47: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  00432e4a: 8b 10                                          mov    edx,DWORD PTR [eax]
  00432e4c: 6a 00                                          push   0x0
  00432e4e: 89 55 f0                                       mov    DWORD PTR [ebp-0x10],edx
  00432e51: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  00432e54: 6a 00                                          push   0x0
  00432e56: 89 4d f4                                       mov    DWORD PTR [ebp-0xc],ecx
  00432e59: 8b 50 08                                       mov    edx,DWORD PTR [eax+0x8]
  00432e5c: 6a 00                                          push   0x0
  00432e5e: 6a 0c                                          push   0xc
  00432e60: 8b ce                                          mov    ecx,esi
  00432e62: 89 55 f8                                       mov    DWORD PTR [ebp-0x8],edx
  00432e65: e8 a6 a2 05 00                                 call   0x48d110
  00432e6a: e9 e4 fe ff ff                                 jmp    0x432d53

; [00432E90] Creatures::?SetPrivateTalk@Creatures ; instruction=6 ; plage_limite=00432EA0 ; issues=0
  00432e90: 55                                             push   ebp
  00432e91: 8b ec                                          mov    ebp,esp
  00432e93: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00432e96: 89 81 04 01 00 00                              mov    DWORD PTR [ecx+0x104],eax
  00432e9c: 5d                                             pop    ebp
  00432e9d: c2 04 00                                       ret    0x4

; [00433020] Creatures::?PacketPuppetInfo@Creatures ; instruction=89 ; plage_limite=00433120 ; issues=0
  00433020: 55                                             push   ebp
  00433021: 8b ec                                          mov    ebp,esp
  00433023: 51                                             push   ecx
  00433024: 57                                             push   edi
  00433025: 8b f9                                          mov    edi,ecx
  00433027: 8b 07                                          mov    eax,DWORD PTR [edi]
  00433029: 8d 4d fc                                       lea    ecx,[ebp-0x4]
  0043302c: 51                                             push   ecx
  0043302d: 6a 00                                          push   0x0
  0043302f: 6a 00                                          push   0x0
  00433031: 6a 00                                          push   0x0
  00433033: 57                                             push   edi
  00433034: 6a 14                                          push   0x14
  00433036: 8b cf                                          mov    ecx,edi
  00433038: ff 50 24                                       call   DWORD PTR [eax+0x24]
  0043303b: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  0043303e: 85 c0                                          test   eax,eax
  00433040: 0f 84 c4 00 00 00                              je     0x43310a
  00433046: 56                                             push   esi
  00433047: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  0043304a: 6a 44                                          push   0x44
  0043304c: 8b ce                                          mov    ecx,esi
  0043304e: e8 fd 30 05 00                                 call   0x486150
  00433053: 8b cf                                          mov    ecx,edi
  00433055: e8 a6 86 05 00                                 call   0x48b700
  0043305a: 50                                             push   eax
  0043305b: 8b ce                                          mov    ecx,esi
  0043305d: e8 8e 31 05 00                                 call   0x4861f0
  00433062: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  00433065: 33 c0                                          xor    eax,eax
  00433067: 66 8b 82 0c 01 00 00                           mov    ax,WORD PTR [edx+0x10c]
  0043306e: 8b ce                                          mov    ecx,esi
  00433070: 50                                             push   eax
  00433071: e8 da 30 05 00                                 call   0x486150
  00433076: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  00433079: 33 d2                                          xor    edx,edx
  0043307b: 66 8b 91 0e 01 00 00                           mov    dx,WORD PTR [ecx+0x10e]
  00433082: 8b ce                                          mov    ecx,esi
  00433084: 52                                             push   edx
  00433085: e8 c6 30 05 00                                 call   0x486150
  0043308a: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  0043308d: 33 c9                                          xor    ecx,ecx
  0043308f: 66 8b 88 10 01 00 00                           mov    cx,WORD PTR [eax+0x110]
  00433096: 51                                             push   ecx
  00433097: 8b ce                                          mov    ecx,esi
  00433099: e8 b2 30 05 00                                 call   0x486150
  0043309e: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  004330a1: 33 c0                                          xor    eax,eax
  004330a3: 66 8b 82 12 01 00 00                           mov    ax,WORD PTR [edx+0x112]
  004330aa: 8b ce                                          mov    ecx,esi
  004330ac: 50                                             push   eax
  004330ad: e8 9e 30 05 00                                 call   0x486150
  004330b2: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004330b5: 33 d2                                          xor    edx,edx
  004330b7: 66 8b 91 14 01 00 00                           mov    dx,WORD PTR [ecx+0x114]
  004330be: 8b ce                                          mov    ecx,esi
  004330c0: 52                                             push   edx
  004330c1: e8 8a 30 05 00                                 call   0x486150
  004330c6: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004330c9: 33 c9                                          xor    ecx,ecx
  004330cb: 66 8b 88 16 01 00 00                           mov    cx,WORD PTR [eax+0x116]
  004330d2: 51                                             push   ecx
  004330d3: 8b ce                                          mov    ecx,esi
  004330d5: e8 76 30 05 00                                 call   0x486150
  004330da: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  004330dd: 33 c0                                          xor    eax,eax
  004330df: 66 8b 82 18 01 00 00                           mov    ax,WORD PTR [edx+0x118]
  004330e6: 8b ce                                          mov    ecx,esi
  004330e8: 50                                             push   eax
  004330e9: e8 62 30 05 00                                 call   0x486150
  004330ee: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004330f1: 33 d2                                          xor    edx,edx
  004330f3: 66 8b 91 1a 01 00 00                           mov    dx,WORD PTR [ecx+0x11a]
  004330fa: 8b ce                                          mov    ecx,esi
  004330fc: 52                                             push   edx
  004330fd: e8 4e 30 05 00                                 call   0x486150
  00433102: 5e                                             pop    esi
  00433103: 5f                                             pop    edi
  00433104: 8b e5                                          mov    esp,ebp
  00433106: 5d                                             pop    ebp
  00433107: c2 04 00                                       ret    0x4
  0043310a: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0043310d: 50                                             push   eax
  0043310e: 8b cf                                          mov    ecx,edi
  00433110: e8 0b c5 05 00                                 call   0x48f620
  00433115: 5f                                             pop    edi
  00433116: 8b e5                                          mov    esp,ebp
  00433118: 5d                                             pop    ebp
  00433119: c2 04 00                                       ret    0x4

; [00433120] Creatures::?VaporizeUnit@Creatures ; instruction=77 ; plage_limite=00433210 ; issues=0
  00433120: 55                                             push   ebp
  00433121: 8b ec                                          mov    ebp,esp
  00433123: 6a ff                                          push   0xffffffff
  00433125: 68 f8 51 4d 00                                 push   0x4d51f8
  0043312a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00433130: 50                                             push   eax
  00433131: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00433138: 83 ec 30                                       sub    esp,0x30
  0043313b: 56                                             push   esi
  0043313c: 57                                             push   edi
  0043313d: 8b f1                                          mov    esi,ecx
  0043313f: 33 c0                                          xor    eax,eax
  00433141: b9 08 00 00 00                                 mov    ecx,0x8
  00433146: 8d 7d c4                                       lea    edi,[ebp-0x3c]
  00433149: 6a 01                                          push   0x1
  0043314b: f3 ab                                          rep stos DWORD PTR es:[edi],eax
  0043314d: e8 be eb 03 00                                 call   0x471d10
  00433152: 83 c4 04                                       add    esp,0x4
  00433155: 85 c0                                          test   eax,eax
  00433157: 74 4f                                          je     0x4331a8
  00433159: 8b 3e                                          mov    edi,DWORD PTR [esi]
  0043315b: e8 00 a9 00 00                                 call   0x43da60
  00433160: 8b ce                                          mov    ecx,esi
  00433162: 50                                             push   eax
  00433163: 8d 45 f0                                       lea    eax,[ebp-0x10]
  00433166: 50                                             push   eax
  00433167: ff 57 48                                       call   DWORD PTR [edi+0x48]
  0043316a: 8b 38                                          mov    edi,DWORD PTR [eax]
  0043316c: 8b ce                                          mov    ecx,esi
  0043316e: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  00433175: e8 86 85 05 00                                 call   0x48b700
  0043317a: 50                                             push   eax
  0043317b: 57                                             push   edi
  0043317c: 68 d8 2e 50 00                                 push   0x502ed8
  00433181: 68 00 01 00 00                                 push   0x100
  00433186: 6a 01                                          push   0x1
  00433188: e8 83 eb 03 00                                 call   0x471d10
  0043318d: 83 c4 04                                       add    esp,0x4
  00433190: 50                                             push   eax
  00433191: e8 5a b9 09 00                                 call   0x4ceaf0
  00433196: 83 c4 14                                       add    esp,0x14
  00433199: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0043319c: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004331a3: e8 98 e8 09 00                                 call   0x4d1a40
  004331a8: 6a 00                                          push   0x0
  004331aa: 8b ce                                          mov    ecx,esi
  004331ac: e8 4f 85 05 00                                 call   0x48b700
  004331b1: 8b 16                                          mov    edx,DWORD PTR [esi]
  004331b3: 50                                             push   eax
  004331b4: 6a 14                                          push   0x14
  004331b6: 8d 45 e4                                       lea    eax,[ebp-0x1c]
  004331b9: 50                                             push   eax
  004331ba: 8b ce                                          mov    ecx,esi
  004331bc: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  004331bf: 8b 10                                          mov    edx,DWORD PTR [eax]
  004331c1: 83 ec 0c                                       sub    esp,0xc
  004331c4: 8b cc                                          mov    ecx,esp
  004331c6: 89 11                                          mov    DWORD PTR [ecx],edx
  004331c8: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004331cb: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  004331ce: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004331d1: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  004331d4: e8 27 ca fd ff                                 call   0x40fc00
  004331d9: 8b 16                                          mov    edx,DWORD PTR [esi]
  004331db: 83 c4 18                                       add    esp,0x18
  004331de: 6a 00                                          push   0x0
  004331e0: 8d 45 c4                                       lea    eax,[ebp-0x3c]
  004331e3: 50                                             push   eax
  004331e4: 8b ce                                          mov    ecx,esi
  004331e6: ff 52 44                                       call   DWORD PTR [edx+0x44]
  004331e9: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004331ec: 5f                                             pop    edi
  004331ed: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004331f4: 5e                                             pop    esi
  004331f5: 8b e5                                          mov    esp,ebp
  004331f7: 5d                                             pop    ebp
  004331f8: c3                                             ret

; [004B06C0] WorldMap::?SummonMonster@WorldMap ; instruction=237 ; plage_limite=004B0950 ; issues=0
  004b06c0: 55                                             push   ebp
  004b06c1: 8b ec                                          mov    ebp,esp
  004b06c3: 83 ec 34                                       sub    esp,0x34
  004b06c6: 53                                             push   ebx
  004b06c7: 56                                             push   esi
  004b06c8: 8b f1                                          mov    esi,ecx
  004b06ca: 57                                             push   edi
  004b06cb: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  004b06ce: 8b 07                                          mov    eax,DWORD PTR [edi]
  004b06d0: 8d 4d f4                                       lea    ecx,[ebp-0xc]
  004b06d3: 51                                             push   ecx
  004b06d4: 8b cf                                          mov    ecx,edi
  004b06d6: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  004b06d9: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  004b06dc: 85 c0                                          test   eax,eax
  004b06de: 0f 85 9f 00 00 00                              jne    0x4b0783
  004b06e4: 6a 1c                                          push   0x1c
  004b06e6: e8 05 19 f9 ff                                 call   0x441ff0
  004b06eb: 8b f0                                          mov    esi,eax
  004b06ed: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004b06f0: 8d 56 0c                                       lea    edx,[esi+0xc]
  004b06f3: 89 02                                          mov    DWORD PTR [edx],eax
  004b06f5: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b06f8: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  004b06fb: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b06fe: 83 c4 04                                       add    esp,0x4
  004b0701: 89 42 08                                       mov    DWORD PTR [edx+0x8],eax
  004b0704: c7 06 00 00 00 00                              mov    DWORD PTR [esi],0x0
  004b070a: c6 46 08 01                                    mov    BYTE PTR [esi+0x8],0x1
  004b070e: 89 7e 18                                       mov    DWORD PTR [esi+0x18],edi
  004b0711: 50                                             push   eax
  004b0712: 8b 45 04                                       mov    eax,DWORD PTR [ebp+0x4]
  004b0715: 89 45 0c                                       mov    DWORD PTR [ebp+0xc],eax
  004b0718: 58                                             pop    eax
  004b0719: e8 e2 3a f8 ff                                 call   0x434200
  004b071e: 8b 10                                          mov    edx,DWORD PTR [eax]
  004b0720: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  004b0723: 51                                             push   ecx
  004b0724: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004b0727: 68 58 43 51 00                                 push   0x514358
  004b072c: 51                                             push   ecx
  004b072d: 8b c8                                          mov    ecx,eax
  004b072f: ff 12                                          call   DWORD PTR [edx]
  004b0731: 68 60 43 51 00                                 push   0x514360
  004b0736: ff 15 f8 e0 4d 00                              call   DWORD PTR ds:0x4de0f8
  004b073c: e8 bf 3a f8 ff                                 call   0x434200
  004b0741: 8b 10                                          mov    edx,DWORD PTR [eax]
  004b0743: 68 5c 43 51 00                                 push   0x51435c
  004b0748: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  004b074b: 51                                             push   ecx
  004b074c: 8b c8                                          mov    ecx,eax
  004b074e: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004b0751: 56                                             push   esi
  004b0752: b9 58 43 51 00                                 mov    ecx,0x514358
  004b0757: e8 14 25 00 00                                 call   0x4b2c70
  004b075c: e8 9f 3a f8 ff                                 call   0x434200
  004b0761: 8b 10                                          mov    edx,DWORD PTR [eax]
  004b0763: 68 5c 43 51 00                                 push   0x51435c
  004b0768: 8b c8                                          mov    ecx,eax
  004b076a: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  004b076d: 68 60 43 51 00                                 push   0x514360
  004b0772: ff 15 fc e0 4d 00                              call   DWORD PTR ds:0x4de0fc
  004b0778: b0 01                                          mov    al,0x1
  004b077a: 5f                                             pop    edi
  004b077b: 5e                                             pop    esi
  004b077c: 5b                                             pop    ebx
  004b077d: 8b e5                                          mov    esp,ebp
  004b077f: 5d                                             pop    ebp
  004b0780: c2 08 00                                       ret    0x8
  004b0783: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b0786: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  004b0789: 6a 02                                          push   0x2
  004b078b: 83 ec 0c                                       sub    esp,0xc
  004b078e: 8b c4                                          mov    eax,esp
  004b0790: 89 08                                          mov    DWORD PTR [eax],ecx
  004b0792: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004b0795: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  004b0798: 8d 55 e8                                       lea    edx,[ebp-0x18]
  004b079b: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  004b079e: 52                                             push   edx
  004b079f: 8b ce                                          mov    ecx,esi
  004b07a1: e8 fa 19 00 00                                 call   0x4b21a0
  004b07a6: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  004b07a9: 83 f9 ff                                       cmp    ecx,0xffffffff
  004b07ac: 0f 84 91 01 00 00                              je     0x4b0943
  004b07b2: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  004b07b5: 83 fa ff                                       cmp    edx,0xffffffff
  004b07b8: 0f 84 85 01 00 00                              je     0x4b0943
  004b07be: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  004b07c1: 83 f8 ff                                       cmp    eax,0xffffffff
  004b07c4: 0f 84 79 01 00 00                              je     0x4b0943
  004b07ca: 6a 00                                          push   0x0
  004b07cc: 57                                             push   edi
  004b07cd: 83 ec 0c                                       sub    esp,0xc
  004b07d0: 8b dc                                          mov    ebx,esp
  004b07d2: 89 0b                                          mov    DWORD PTR [ebx],ecx
  004b07d4: 6a 00                                          push   0x0
  004b07d6: 89 53 04                                       mov    DWORD PTR [ebx+0x4],edx
  004b07d9: 6a 02                                          push   0x2
  004b07db: 8b ce                                          mov    ecx,esi
  004b07dd: 89 43 08                                       mov    DWORD PTR [ebx+0x8],eax
  004b07e0: e8 1b f7 ff ff                                 call   0x4aff00
  004b07e5: 8b f0                                          mov    esi,eax
  004b07e7: 85 f6                                          test   esi,esi
  004b07e9: 0f 84 54 01 00 00                              je     0x4b0943
  004b07ef: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b07f1: 8b ce                                          mov    ecx,esi
  004b07f3: ff 90 c4 00 00 00                              call   DWORD PTR [eax+0xc4]
  004b07f9: 85 c0                                          test   eax,eax
  004b07fb: 74 40                                          je     0x4b083d
  004b07fd: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b07ff: 83 c8 ff                                       or     eax,0xffffffff
  004b0802: 83 ec 0c                                       sub    esp,0xc
  004b0805: 8b d8                                          mov    ebx,eax
  004b0807: 8b cc                                          mov    ecx,esp
  004b0809: 89 19                                          mov    DWORD PTR [ecx],ebx
  004b080b: 89 41 04                                       mov    DWORD PTR [ecx+0x4],eax
  004b080e: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  004b0811: 8b ce                                          mov    ecx,esi
  004b0813: 89 45 e4                                       mov    DWORD PTR [ebp-0x1c],eax
  004b0816: ff 92 20 01 00 00                              call   DWORD PTR [edx+0x120]
  004b081c: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b081e: 83 ec 0c                                       sub    esp,0xc
  004b0821: 8b cc                                          mov    ecx,esp
  004b0823: 89 19                                          mov    DWORD PTR [ecx],ebx
  004b0825: 83 c8 ff                                       or     eax,0xffffffff
  004b0828: 89 41 04                                       mov    DWORD PTR [ecx+0x4],eax
  004b082b: 8b c3                                          mov    eax,ebx
  004b082d: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  004b0830: 8b ce                                          mov    ecx,esi
  004b0832: ff 92 24 01 00 00                              call   DWORD PTR [edx+0x124]
  004b0838: e9 9e 00 00 00                                 jmp    0x4b08db
  004b083d: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b083f: 8d 45 0c                                       lea    eax,[ebp+0xc]
  004b0842: 50                                             push   eax
  004b0843: 6a 00                                          push   0x0
  004b0845: 6a 00                                          push   0x0
  004b0847: 6a 00                                          push   0x0
  004b0849: 56                                             push   esi
  004b084a: 6a 14                                          push   0x14
  004b084c: 8b ce                                          mov    ecx,esi
  004b084e: c7 45 0c 00 00 00 00                           mov    DWORD PTR [ebp+0xc],0x0
  004b0855: ff 52 24                                       call   DWORD PTR [edx+0x24]
  004b0858: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004b085b: 8b 7d f8                                       mov    edi,DWORD PTR [ebp-0x8]
  004b085e: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004b0861: 89 4d d8                                       mov    DWORD PTR [ebp-0x28],ecx
  004b0864: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004b0867: 33 db                                          xor    ebx,ebx
  004b0869: 66 8b 59 66                                    mov    bx,WORD PTR [ecx+0x66]
  004b086d: 33 d2                                          xor    edx,edx
  004b086f: 66 8b 51 62                                    mov    dx,WORD PTR [ecx+0x62]
  004b0873: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  004b0876: 89 45 dc                                       mov    DWORD PTR [ebp-0x24],eax
  004b0879: 83 ec 0c                                       sub    esp,0xc
  004b087c: 03 fb                                          add    edi,ebx
  004b087e: 8b 5d f8                                       mov    ebx,DWORD PTR [ebp-0x8]
  004b0881: 89 5d e0                                       mov    DWORD PTR [ebp-0x20],ebx
  004b0884: 8b 5d fc                                       mov    ebx,DWORD PTR [ebp-0x4]
  004b0887: 89 5d e4                                       mov    DWORD PTR [ebp-0x1c],ebx
  004b088a: 33 db                                          xor    ebx,ebx
  004b088c: 66 8b 59 60                                    mov    bx,WORD PTR [ecx+0x60]
  004b0890: 03 d0                                          add    edx,eax
  004b0892: 2b c3                                          sub    eax,ebx
  004b0894: 8b d8                                          mov    ebx,eax
  004b0896: 33 c0                                          xor    eax,eax
  004b0898: 66 8b 41 64                                    mov    ax,WORD PTR [ecx+0x64]
  004b089c: 8b 4d e0                                       mov    ecx,DWORD PTR [ebp-0x20]
  004b089f: 2b c8                                          sub    ecx,eax
  004b08a1: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b08a3: 89 4d e0                                       mov    DWORD PTR [ebp-0x20],ecx
  004b08a6: 8b cc                                          mov    ecx,esp
  004b08a8: 89 11                                          mov    DWORD PTR [ecx],edx
  004b08aa: 8b 55 d8                                       mov    edx,DWORD PTR [ebp-0x28]
  004b08ad: 89 79 04                                       mov    DWORD PTR [ecx+0x4],edi
  004b08b0: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  004b08b3: 8b ce                                          mov    ecx,esi
  004b08b5: ff 90 20 01 00 00                              call   DWORD PTR [eax+0x120]
  004b08bb: 8b 55 e0                                       mov    edx,DWORD PTR [ebp-0x20]
  004b08be: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b08c0: 83 ec 0c                                       sub    esp,0xc
  004b08c3: 8b cc                                          mov    ecx,esp
  004b08c5: 89 19                                          mov    DWORD PTR [ecx],ebx
  004b08c7: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b08ca: 8b 55 e4                                       mov    edx,DWORD PTR [ebp-0x1c]
  004b08cd: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  004b08d0: 8b ce                                          mov    ecx,esi
  004b08d2: ff 90 24 01 00 00                              call   DWORD PTR [eax+0x124]
  004b08d8: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  004b08db: 8b 55 e8                                       mov    edx,DWORD PTR [ebp-0x18]
  004b08de: 8b 07                                          mov    eax,DWORD PTR [edi]
  004b08e0: 83 ec 0c                                       sub    esp,0xc
  004b08e3: 8b cc                                          mov    ecx,esp
  004b08e5: 89 11                                          mov    DWORD PTR [ecx],edx
  004b08e7: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  004b08ea: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b08ed: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  004b08f0: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  004b08f3: 8b cf                                          mov    ecx,edi
  004b08f5: ff 50 20                                       call   DWORD PTR [eax+0x20]
  004b08f8: 8b 3e                                          mov    edi,DWORD PTR [esi]
  004b08fa: 83 ec 10                                       sub    esp,0x10
  004b08fd: 33 c0                                          xor    eax,eax
  004b08ff: 8b dc                                          mov    ebx,esp
  004b0901: 89 03                                          mov    DWORD PTR [ebx],eax
  004b0903: 33 c9                                          xor    ecx,ecx
  004b0905: 33 d2                                          xor    edx,edx
  004b0907: 89 4b 04                                       mov    DWORD PTR [ebx+0x4],ecx
  004b090a: 89 53 08                                       mov    DWORD PTR [ebx+0x8],edx
  004b090d: 8b c2                                          mov    eax,edx
  004b090f: 8b ce                                          mov    ecx,esi
  004b0911: 89 55 d8                                       mov    DWORD PTR [ebp-0x28],edx
  004b0914: 89 43 0c                                       mov    DWORD PTR [ebx+0xc],eax
  004b0917: ff 57 74                                       call   DWORD PTR [edi+0x74]
  004b091a: 8b 3e                                          mov    edi,DWORD PTR [esi]
  004b091c: e8 6f 19 fc ff                                 call   0x472290
  004b0921: 05 b0 04 00 00                                 add    eax,0x4b0
  004b0926: 50                                             push   eax
  004b0927: 8b ce                                          mov    ecx,esi
  004b0929: ff 97 c0 00 00 00                              call   DWORD PTR [edi+0xc0]
  004b092f: 56                                             push   esi
  004b0930: e8 0b 16 fc ff                                 call   0x471f40
  004b0935: 83 c4 04                                       add    esp,0x4
  004b0938: b0 01                                          mov    al,0x1
  004b093a: 5f                                             pop    edi
  004b093b: 5e                                             pop    esi
  004b093c: 5b                                             pop    ebx
  004b093d: 8b e5                                          mov    esp,ebp
  004b093f: 5d                                             pop    ebp
  004b0940: c2 08 00                                       ret    0x8
  004b0943: 5f                                             pop    edi
  004b0944: 5e                                             pop    esi
  004b0945: 32 c0                                          xor    al,al
  004b0947: 5b                                             pop    ebx
  004b0948: 8b e5                                          mov    esp,ebp
  004b094a: 5d                                             pop    ebp
  004b094b: c2 08 00                                       ret    0x8

; [004B0950] WorldMap::?IsNearPlayer@WorldMap ; instruction=215 ; plage_limite=004B0BA0 ; issues=0
  004b0950: 55                                             push   ebp
  004b0951: 8b ec                                          mov    ebp,esp
  004b0953: 83 ec 44                                       sub    esp,0x44
  004b0956: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  004b0959: 53                                             push   ebx
  004b095a: 56                                             push   esi
  004b095b: 33 f6                                          xor    esi,esi
  004b095d: 8d 42 f4                                       lea    eax,[edx-0xc]
  004b0960: 3b c6                                          cmp    eax,esi
  004b0962: 8b d9                                          mov    ebx,ecx
  004b0964: 57                                             push   edi
  004b0965: 89 5d e0                                       mov    DWORD PTR [ebp-0x20],ebx
  004b0968: 89 75 cc                                       mov    DWORD PTR [ebp-0x34],esi
  004b096b: 7d 08                                          jge    0x4b0975
  004b096d: 89 75 f4                                       mov    DWORD PTR [ebp-0xc],esi
  004b0970: 89 75 d8                                       mov    DWORD PTR [ebp-0x28],esi
  004b0973: eb 21                                          jmp    0x4b0996
  004b0975: 8b c8                                          mov    ecx,eax
  004b0977: c1 f9 02                                       sar    ecx,0x2
  004b097a: 89 4d f4                                       mov    DWORD PTR [ebp-0xc],ecx
  004b097d: 8b c8                                          mov    ecx,eax
  004b097f: 81 e1 03 00 00 80                              and    ecx,0x80000003
  004b0985: 79 05                                          jns    0x4b098c
  004b0987: 49                                             dec    ecx
  004b0988: 83 c9 fc                                       or     ecx,0xfffffffc
  004b098b: 41                                             inc    ecx
  004b098c: b8 04 00 00 00                                 mov    eax,0x4
  004b0991: 2b c1                                          sub    eax,ecx
  004b0993: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  004b0996: 33 c0                                          xor    eax,eax
  004b0998: 66 8b 43 2c                                    mov    ax,WORD PTR [ebx+0x2c]
  004b099c: 8d 4a 0c                                       lea    ecx,[edx+0xc]
  004b099f: 3b c8                                          cmp    ecx,eax
  004b09a1: 7c 1a                                          jl     0x4b09bd
  004b09a3: 48                                             dec    eax
  004b09a4: 8b f8                                          mov    edi,eax
  004b09a6: c1 ff 02                                       sar    edi,0x2
  004b09a9: 25 03 00 00 80                                 and    eax,0x80000003
  004b09ae: 89 7d e4                                       mov    DWORD PTR [ebp-0x1c],edi
  004b09b1: 79 05                                          jns    0x4b09b8
  004b09b3: 48                                             dec    eax
  004b09b4: 83 c8 fc                                       or     eax,0xfffffffc
  004b09b7: 40                                             inc    eax
  004b09b8: 89 45 dc                                       mov    DWORD PTR [ebp-0x24],eax
  004b09bb: eb 1c                                          jmp    0x4b09d9
  004b09bd: 8b c1                                          mov    eax,ecx
  004b09bf: c1 f8 02                                       sar    eax,0x2
  004b09c2: 89 45 e4                                       mov    DWORD PTR [ebp-0x1c],eax
  004b09c5: 8b c1                                          mov    eax,ecx
  004b09c7: 25 03 00 00 80                                 and    eax,0x80000003
  004b09cc: 79 05                                          jns    0x4b09d3
  004b09ce: 48                                             dec    eax
  004b09cf: 83 c8 fc                                       or     eax,0xfffffffc
  004b09d2: 40                                             inc    eax
  004b09d3: 8b 7d e4                                       mov    edi,DWORD PTR [ebp-0x1c]
  004b09d6: 89 45 dc                                       mov    DWORD PTR [ebp-0x24],eax
  004b09d9: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004b09dc: 8d 41 f4                                       lea    eax,[ecx-0xc]
  004b09df: 3b c6                                          cmp    eax,esi
  004b09e1: 7d 05                                          jge    0x4b09e8
  004b09e3: 89 75 10                                       mov    DWORD PTR [ebp+0x10],esi
  004b09e6: eb 06                                          jmp    0x4b09ee
  004b09e8: c1 f8 02                                       sar    eax,0x2
  004b09eb: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004b09ee: 33 c0                                          xor    eax,eax
  004b09f0: 66 8b 43 2e                                    mov    ax,WORD PTR [ebx+0x2e]
  004b09f4: 83 c1 0c                                       add    ecx,0xc
  004b09f7: 3b c8                                          cmp    ecx,eax
  004b09f9: 7c 1a                                          jl     0x4b0a15
  004b09fb: 48                                             dec    eax
  004b09fc: 8b f0                                          mov    esi,eax
  004b09fe: c1 fe 02                                       sar    esi,0x2
  004b0a01: 25 03 00 00 80                                 and    eax,0x80000003
  004b0a06: 89 75 fc                                       mov    DWORD PTR [ebp-0x4],esi
  004b0a09: 79 05                                          jns    0x4b0a10
  004b0a0b: 48                                             dec    eax
  004b0a0c: 83 c8 fc                                       or     eax,0xfffffffc
  004b0a0f: 40                                             inc    eax
  004b0a10: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004b0a13: eb 1c                                          jmp    0x4b0a31
  004b0a15: 8b c1                                          mov    eax,ecx
  004b0a17: c1 f8 02                                       sar    eax,0x2
  004b0a1a: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  004b0a1d: 8b c1                                          mov    eax,ecx
  004b0a1f: 25 03 00 00 80                                 and    eax,0x80000003
  004b0a24: 79 05                                          jns    0x4b0a2b
  004b0a26: 48                                             dec    eax
  004b0a27: 83 c8 fc                                       or     eax,0xfffffffc
  004b0a2a: 40                                             inc    eax
  004b0a2b: 8b 75 fc                                       mov    esi,DWORD PTR [ebp-0x4]
  004b0a2e: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004b0a31: 8b 13                                          mov    edx,DWORD PTR [ebx]
  004b0a33: 8b cb                                          mov    ecx,ebx
  004b0a35: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004b0a38: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004b0a3b: 8b c8                                          mov    ecx,eax
  004b0a3d: 81 e1 ff ff 00 00                              and    ecx,0xffff
  004b0a43: 3b cf                                          cmp    ecx,edi
  004b0a45: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  004b0a48: 0f 83 39 01 00 00                              jae    0x4b0b87
  004b0a4e: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004b0a51: 81 e2 ff ff 00 00                              and    edx,0xffff
  004b0a57: 89 4d f8                                       mov    DWORD PTR [ebp-0x8],ecx
  004b0a5a: 89 55 bc                                       mov    DWORD PTR [ebp-0x44],edx
  004b0a5d: eb 06                                          jmp    0x4b0a65
  004b0a5f: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b0a62: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004b0a65: 3b cf                                          cmp    ecx,edi
  004b0a67: 75 08                                          jne    0x4b0a71
  004b0a69: 8b 5d dc                                       mov    ebx,DWORD PTR [ebp-0x24]
  004b0a6c: 89 5d e8                                       mov    DWORD PTR [ebp-0x18],ebx
  004b0a6f: eb 07                                          jmp    0x4b0a78
  004b0a71: c7 45 e8 04 00 00 00                           mov    DWORD PTR [ebp-0x18],0x4
  004b0a78: 33 db                                          xor    ebx,ebx
  004b0a7a: 3b c8                                          cmp    ecx,eax
  004b0a7c: 8b 45 d8                                       mov    eax,DWORD PTR [ebp-0x28]
  004b0a7f: 0f 95 c3                                       setne  bl
  004b0a82: 4b                                             dec    ebx
  004b0a83: 23 d8                                          and    ebx,eax
  004b0a85: 3b d6                                          cmp    edx,esi
  004b0a87: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004b0a8a: 89 5d c0                                       mov    DWORD PTR [ebp-0x40],ebx
  004b0a8d: 89 45 d4                                       mov    DWORD PTR [ebp-0x2c],eax
  004b0a90: 0f 83 d7 00 00 00                              jae    0x4b0b6d
  004b0a96: 8b fa                                          mov    edi,edx
  004b0a98: 3b fe                                          cmp    edi,esi
  004b0a9a: 75 08                                          jne    0x4b0aa4
  004b0a9c: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  004b0a9f: 89 55 ec                                       mov    DWORD PTR [ebp-0x14],edx
  004b0aa2: eb 07                                          jmp    0x4b0aab
  004b0aa4: c7 45 ec 04 00 00 00                           mov    DWORD PTR [ebp-0x14],0x4
  004b0aab: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004b0aae: 33 c0                                          xor    eax,eax
  004b0ab0: 3b fa                                          cmp    edi,edx
  004b0ab2: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  004b0ab5: 0f 95 c0                                       setne  al
  004b0ab8: 48                                             dec    eax
  004b0ab9: 23 c2                                          and    eax,edx
  004b0abb: 8b 55 e0                                       mov    edx,DWORD PTR [ebp-0x20]
  004b0abe: 8b 52 24                                       mov    edx,DWORD PTR [edx+0x24]
  004b0ac1: 8b 14 8a                                       mov    edx,DWORD PTR [edx+ecx*4]
  004b0ac4: 83 3c ba 00                                    cmp    DWORD PTR [edx+edi*4],0x0
  004b0ac8: 89 45 c8                                       mov    DWORD PTR [ebp-0x38],eax
  004b0acb: 0f 84 81 00 00 00                              je     0x4b0b52
  004b0ad1: 8b 75 e8                                       mov    esi,DWORD PTR [ebp-0x18]
  004b0ad4: 8b d3                                          mov    edx,ebx
  004b0ad6: 81 e2 ff ff 00 00                              and    edx,0xffff
  004b0adc: 3b d6                                          cmp    edx,esi
  004b0ade: 7d 6f                                          jge    0x4b0b4f
  004b0ae0: 8b c8                                          mov    ecx,eax
  004b0ae2: 81 e1 ff ff 00 00                              and    ecx,0xffff
  004b0ae8: 89 4d c4                                       mov    DWORD PTR [ebp-0x3c],ecx
  004b0aeb: 3b 4d ec                                       cmp    ecx,DWORD PTR [ebp-0x14]
  004b0aee: 8b f0                                          mov    esi,eax
  004b0af0: 7d 42                                          jge    0x4b0b34
  004b0af2: 8b 45 e0                                       mov    eax,DWORD PTR [ebp-0x20]
  004b0af5: 8b 48 24                                       mov    ecx,DWORD PTR [eax+0x24]
  004b0af8: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  004b0afb: 8b 04 91                                       mov    eax,DWORD PTR [ecx+edx*4]
  004b0afe: 8b 0c b8                                       mov    ecx,DWORD PTR [eax+edi*4]
  004b0b01: 56                                             push   esi
  004b0b02: 53                                             push   ebx
  004b0b03: e8 f8 fd f5 ff                                 call   0x410900
  004b0b08: 85 c0                                          test   eax,eax
  004b0b0a: 74 12                                          je     0x4b0b1e
  004b0b0c: 8b c8                                          mov    ecx,eax
  004b0b0e: e8 5d ab fd ff                                 call   0x48b670
  004b0b13: 3c 01                                          cmp    al,0x1
  004b0b15: 75 07                                          jne    0x4b0b1e
  004b0b17: c7 45 cc 01 00 00 00                           mov    DWORD PTR [ebp-0x34],0x1
  004b0b1e: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b0b21: 46                                             inc    esi
  004b0b22: 8b ce                                          mov    ecx,esi
  004b0b24: 81 e1 ff ff 00 00                              and    ecx,0xffff
  004b0b2a: 3b c8                                          cmp    ecx,eax
  004b0b2c: 7c c4                                          jl     0x4b0af2
  004b0b2e: 8b 45 c8                                       mov    eax,DWORD PTR [ebp-0x38]
  004b0b31: 8b 4d c4                                       mov    ecx,DWORD PTR [ebp-0x3c]
  004b0b34: 8b 75 e8                                       mov    esi,DWORD PTR [ebp-0x18]
  004b0b37: 43                                             inc    ebx
  004b0b38: 8b d3                                          mov    edx,ebx
  004b0b3a: 81 e2 ff ff 00 00                              and    edx,0xffff
  004b0b40: 3b d6                                          cmp    edx,esi
  004b0b42: 7c a7                                          jl     0x4b0aeb
  004b0b44: 8b 75 fc                                       mov    esi,DWORD PTR [ebp-0x4]
  004b0b47: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b0b4a: 8b 5d c0                                       mov    ebx,DWORD PTR [ebp-0x40]
  004b0b4d: eb 03                                          jmp    0x4b0b52
  004b0b4f: 8b 75 fc                                       mov    esi,DWORD PTR [ebp-0x4]
  004b0b52: 8b 7d d4                                       mov    edi,DWORD PTR [ebp-0x2c]
  004b0b55: 47                                             inc    edi
  004b0b56: 89 7d d4                                       mov    DWORD PTR [ebp-0x2c],edi
  004b0b59: 81 e7 ff ff 00 00                              and    edi,0xffff
  004b0b5f: 3b fe                                          cmp    edi,esi
  004b0b61: 0f 82 3d ff ff ff                              jb     0x4b0aa4
  004b0b67: 8b 7d e4                                       mov    edi,DWORD PTR [ebp-0x1c]
  004b0b6a: 8b 55 bc                                       mov    edx,DWORD PTR [ebp-0x44]
  004b0b6d: 8b 45 d0                                       mov    eax,DWORD PTR [ebp-0x30]
  004b0b70: 40                                             inc    eax
  004b0b71: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  004b0b74: 25 ff ff 00 00                                 and    eax,0xffff
  004b0b79: 3b c7                                          cmp    eax,edi
  004b0b7b: 89 45 f8                                       mov    DWORD PTR [ebp-0x8],eax
  004b0b7e: 0f 82 db fe ff ff                              jb     0x4b0a5f
  004b0b84: 8b 5d e0                                       mov    ebx,DWORD PTR [ebp-0x20]
  004b0b87: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004b0b89: 8b cb                                          mov    ecx,ebx
  004b0b8b: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004b0b8e: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b0b91: 5f                                             pop    edi
  004b0b92: 5e                                             pop    esi
  004b0b93: 5b                                             pop    ebx
  004b0b94: 8b e5                                          mov    esp,ebp
  004b0b96: 5d                                             pop    ebp
  004b0b97: c2 0c 00                                       ret    0xc

; [004B1DB0] WorldMap::?FindNearUnit@WorldMap ; instruction=152 ; plage_limite=004B1F50 ; issues=0
  004b1db0: 55                                             push   ebp
  004b1db1: 8b ec                                          mov    ebp,esp
  004b1db3: 83 ec 20                                       sub    esp,0x20
  004b1db6: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004b1db9: 53                                             push   ebx
  004b1dba: 33 db                                          xor    ebx,ebx
  004b1dbc: 66 8b 59 2c                                    mov    bx,WORD PTR [ecx+0x2c]
  004b1dc0: 56                                             push   esi
  004b1dc1: 33 f6                                          xor    esi,esi
  004b1dc3: 57                                             push   edi
  004b1dc4: 89 4d f8                                       mov    DWORD PTR [ebp-0x8],ecx
  004b1dc7: 3b c3                                          cmp    eax,ebx
  004b1dc9: 7d 18                                          jge    0x4b1de3
  004b1dcb: 33 d2                                          xor    edx,edx
  004b1dcd: 66 8b 51 2e                                    mov    dx,WORD PTR [ecx+0x2e]
  004b1dd1: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004b1dd4: 3b ca                                          cmp    ecx,edx
  004b1dd6: 89 55 f4                                       mov    DWORD PTR [ebp-0xc],edx
  004b1dd9: 7d 08                                          jge    0x4b1de3
  004b1ddb: 85 c0                                          test   eax,eax
  004b1ddd: 7c 04                                          jl     0x4b1de3
  004b1ddf: 85 c9                                          test   ecx,ecx
  004b1de1: 7d 0b                                          jge    0x4b1dee
  004b1de3: 33 c0                                          xor    eax,eax
  004b1de5: 5f                                             pop    edi
  004b1de6: 5e                                             pop    esi
  004b1de7: 5b                                             pop    ebx
  004b1de8: 8b e5                                          mov    esp,ebp
  004b1dea: 5d                                             pop    ebp
  004b1deb: c2 10 00                                       ret    0x10
  004b1dee: c1 f8 02                                       sar    eax,0x2
  004b1df1: 8d 50 fe                                       lea    edx,[eax-0x2]
  004b1df4: 83 c0 02                                       add    eax,0x2
  004b1df7: c1 f9 02                                       sar    ecx,0x2
  004b1dfa: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  004b1dfd: 33 c0                                          xor    eax,eax
  004b1dff: 8d 79 fe                                       lea    edi,[ecx-0x2]
  004b1e02: 83 c1 02                                       add    ecx,0x2
  004b1e05: 85 d2                                          test   edx,edx
  004b1e07: 0f 9c c0                                       setl   al
  004b1e0a: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  004b1e0d: 48                                             dec    eax
  004b1e0e: 23 c2                                          and    eax,edx
  004b1e10: 33 d2                                          xor    edx,edx
  004b1e12: 85 ff                                          test   edi,edi
  004b1e14: 0f 9c c2                                       setl   dl
  004b1e17: 89 45 e0                                       mov    DWORD PTR [ebp-0x20],eax
  004b1e1a: 8b c3                                          mov    eax,ebx
  004b1e1c: c1 e8 02                                       shr    eax,0x2
  004b1e1f: 4a                                             dec    edx
  004b1e20: 23 d7                                          and    edx,edi
  004b1e22: 89 55 e4                                       mov    DWORD PTR [ebp-0x1c],edx
  004b1e25: 39 45 e8                                       cmp    DWORD PTR [ebp-0x18],eax
  004b1e28: 7c 04                                          jl     0x4b1e2e
  004b1e2a: 48                                             dec    eax
  004b1e2b: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  004b1e2e: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004b1e31: c1 e8 02                                       shr    eax,0x2
  004b1e34: 3b c8                                          cmp    ecx,eax
  004b1e36: 7c 04                                          jl     0x4b1e3c
  004b1e38: 48                                             dec    eax
  004b1e39: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  004b1e3c: 8b 7d f8                                       mov    edi,DWORD PTR [ebp-0x8]
  004b1e3f: 8b 07                                          mov    eax,DWORD PTR [edi]
  004b1e41: 8b cf                                          mov    ecx,edi
  004b1e43: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004b1e46: 8b 45 e0                                       mov    eax,DWORD PTR [ebp-0x20]
  004b1e49: 3b 45 e8                                       cmp    eax,DWORD PTR [ebp-0x18]
  004b1e4c: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  004b1e4f: 0f 8d e2 00 00 00                              jge    0x4b1f37
  004b1e55: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  004b1e58: 3b 45 ec                                       cmp    eax,DWORD PTR [ebp-0x14]
  004b1e5b: 8b c8                                          mov    ecx,eax
  004b1e5d: 89 4d f4                                       mov    DWORD PTR [ebp-0xc],ecx
  004b1e60: 0f 8d bf 00 00 00                              jge    0x4b1f25
  004b1e66: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b1e69: 8b 57 24                                       mov    edx,DWORD PTR [edi+0x24]
  004b1e6c: 8b 14 82                                       mov    edx,DWORD PTR [edx+eax*4]
  004b1e6f: 83 3c 8a 00                                    cmp    DWORD PTR [edx+ecx*4],0x0
  004b1e73: 0f 84 9a 00 00 00                              je     0x4b1f13
  004b1e79: c7 45 10 00 00 00 00                           mov    DWORD PTR [ebp+0x10],0x0
  004b1e80: 33 ff                                          xor    edi,edi
  004b1e82: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b1e85: 8b 55 14                                       mov    edx,DWORD PTR [ebp+0x14]
  004b1e88: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b1e8b: 52                                             push   edx
  004b1e8c: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  004b1e8f: 8d 1c 85 00 00 00 00                           lea    ebx,[eax*4+0x0]
  004b1e96: 8d 04 8d 00 00 00 00                           lea    eax,[ecx*4+0x0]
  004b1e9d: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  004b1ea0: 57                                             push   edi
  004b1ea1: 51                                             push   ecx
  004b1ea2: 8b 4a 24                                       mov    ecx,DWORD PTR [edx+0x24]
  004b1ea5: 8b 14 19                                       mov    edx,DWORD PTR [ecx+ebx*1]
  004b1ea8: 8b 0c 02                                       mov    ecx,DWORD PTR [edx+eax*1]
  004b1eab: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004b1eae: e8 5d eb f5 ff                                 call   0x410a10
  004b1eb3: 8b f0                                          mov    esi,eax
  004b1eb5: 85 f6                                          test   esi,esi
  004b1eb7: 74 3f                                          je     0x4b1ef8
  004b1eb9: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004b1ebc: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  004b1ebf: 25 ff ff 00 00                                 and    eax,0xffff
  004b1ec4: 03 c3                                          add    eax,ebx
  004b1ec6: 83 ec 0c                                       sub    esp,0xc
  004b1ec9: 8b cf                                          mov    ecx,edi
  004b1ecb: 81 e1 ff ff 00 00                              and    ecx,0xffff
  004b1ed1: 8b dc                                          mov    ebx,esp
  004b1ed3: 89 03                                          mov    DWORD PTR [ebx],eax
  004b1ed5: 8b 45 f8                                       mov    eax,DWORD PTR [ebp-0x8]
  004b1ed8: 8b 40 28                                       mov    eax,DWORD PTR [eax+0x28]
  004b1edb: 03 ca                                          add    ecx,edx
  004b1edd: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b1edf: bf fe ff 00 00                                 mov    edi,0xfffe
  004b1ee4: 89 4b 04                                       mov    DWORD PTR [ebx+0x4],ecx
  004b1ee7: 8b ce                                          mov    ecx,esi
  004b1ee9: 89 7d 10                                       mov    DWORD PTR [ebp+0x10],edi
  004b1eec: 89 7d f4                                       mov    DWORD PTR [ebp-0xc],edi
  004b1eef: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  004b1ef2: 89 43 08                                       mov    DWORD PTR [ebx+0x8],eax
  004b1ef5: ff 52 20                                       call   DWORD PTR [edx+0x20]
  004b1ef8: 47                                             inc    edi
  004b1ef9: 66 83 ff 04                                    cmp    di,0x4
  004b1efd: 72 83                                          jb     0x4b1e82
  004b1eff: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004b1f02: 40                                             inc    eax
  004b1f03: 66 3d 04 00                                    cmp    ax,0x4
  004b1f07: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004b1f0a: 0f 82 70 ff ff ff                              jb     0x4b1e80
  004b1f10: 8b 7d f8                                       mov    edi,DWORD PTR [ebp-0x8]
  004b1f13: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b1f16: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b1f19: 41                                             inc    ecx
  004b1f1a: 3b c8                                          cmp    ecx,eax
  004b1f1c: 89 4d f4                                       mov    DWORD PTR [ebp-0xc],ecx
  004b1f1f: 0f 8c 41 ff ff ff                              jl     0x4b1e66
  004b1f25: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b1f28: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  004b1f2b: 40                                             inc    eax
  004b1f2c: 3b c1                                          cmp    eax,ecx
  004b1f2e: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  004b1f31: 0f 8c 1e ff ff ff                              jl     0x4b1e55
  004b1f37: 8b 17                                          mov    edx,DWORD PTR [edi]
  004b1f39: 8b cf                                          mov    ecx,edi
  004b1f3b: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004b1f3e: 5f                                             pop    edi
  004b1f3f: 8b c6                                          mov    eax,esi
  004b1f41: 5e                                             pop    esi
  004b1f42: 5b                                             pop    ebx
  004b1f43: 8b e5                                          mov    esp,ebp
  004b1f45: 5d                                             pop    ebp
  004b1f46: c2 10 00                                       ret    0x10

; [00472250] TFCMAIN::?StartBeat@TFCMAIN ; instruction=22 ; plage_limite=00472290 ; issues=0
  00472250: 55                                             push   ebp
  00472251: 8b ec                                          mov    ebp,esp
  00472253: 51                                             push   ecx
  00472254: a1 84 5e 51 00                                 mov    eax,ds:0x515e84
  00472259: 85 c0                                          test   eax,eax
  0047225b: 75 28                                          jne    0x472285
  0047225d: 8d 45 fc                                       lea    eax,[ebp-0x4]
  00472260: 50                                             push   eax
  00472261: 6a 00                                          push   0x0
  00472263: 6a 00                                          push   0x0
  00472265: 68 f0 21 47 00                                 push   0x4721f0
  0047226a: 6a 00                                          push   0x0
  0047226c: 6a 00                                          push   0x0
  0047226e: ff 15 5c e3 4d 00                              call   DWORD PTR ds:0x4de35c
  00472274: 83 c4 18                                       add    esp,0x18
  00472277: 6a 02                                          push   0x2
  00472279: 50                                             push   eax
  0047227a: a3 84 5e 51 00                                 mov    ds:0x515e84,eax
  0047227f: ff 15 44 e1 4d 00                              call   DWORD PTR ds:0x4de144
  00472285: 8b e5                                          mov    esp,ebp
  00472287: 5d                                             pop    ebp
  00472288: c3                                             ret

; [00472290] TFCMAIN::?GetRound@TFCMAIN ; instruction=2 ; plage_limite=004722A0 ; issues=0
  00472290: a1 88 5e 51 00                                 mov    eax,ds:0x515e88
  00472295: c3                                             ret

; [004722A0] TFCMAIN::?Attack@TFCMAIN ; instruction=763 ; plage_limite=004752A0 ; issues=0
  004722a0: 55                                             push   ebp
  004722a1: 8b ec                                          mov    ebp,esp
  004722a3: 6a ff                                          push   0xffffffff
  004722a5: 68 b0 8c 4d 00                                 push   0x4d8cb0
  004722aa: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004722b0: 50                                             push   eax
  004722b1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004722b8: 81 ec 98 08 00 00                              sub    esp,0x898
  004722be: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004722c1: 53                                             push   ebx
  004722c2: 8b 5d 0c                                       mov    ebx,DWORD PTR [ebp+0xc]
  004722c5: 56                                             push   esi
  004722c6: 57                                             push   edi
  004722c7: 33 ff                                          xor    edi,edi
  004722c9: 3b df                                          cmp    ebx,edi
  004722cb: 89 7d c4                                       mov    DWORD PTR [ebp-0x3c],edi
  004722ce: c6 00 00                                       mov    BYTE PTR [eax],0x0
  004722d1: 74 08                                          je     0x4722db
  004722d3: 8d 4b 30                                       lea    ecx,[ebx+0x30]
  004722d6: 89 4d 0c                                       mov    DWORD PTR [ebp+0xc],ecx
  004722d9: eb 03                                          jmp    0x4722de
  004722db: 89 7d 0c                                       mov    DWORD PTR [ebp+0xc],edi
  004722de: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  004722e1: 3b f7                                          cmp    esi,edi
  004722e3: 74 03                                          je     0x4722e8
  004722e5: 8d 7e 30                                       lea    edi,[esi+0x30]
  004722e8: 8b 17                                          mov    edx,DWORD PTR [edi]
  004722ea: 8b cf                                          mov    ecx,edi
  004722ec: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004722ef: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004722f2: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004722f4: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  004722f7: 85 c0                                          test   eax,eax
  004722f9: 75 22                                          jne    0x47231d
  004722fb: 8b 17                                          mov    edx,DWORD PTR [edi]
  004722fd: 8b cf                                          mov    ecx,edi
  004722ff: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00472302: 6a 00                                          push   0x0
  00472304: ff 15 20 e1 4d 00                              call   DWORD PTR ds:0x4de120
  0047230a: 8b 07                                          mov    eax,DWORD PTR [edi]
  0047230c: 8b cf                                          mov    ecx,edi
  0047230e: ff 50 04                                       call   DWORD PTR [eax+0x4]
  00472311: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00472314: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00472316: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00472319: 85 c0                                          test   eax,eax
  0047231b: 74 de                                          je     0x4722fb
  0047231d: 8b 06                                          mov    eax,DWORD PTR [esi]
  0047231f: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00472322: 51                                             push   ecx
  00472323: 8b ce                                          mov    ecx,esi
  00472325: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  00472328: 8b 13                                          mov    edx,DWORD PTR [ebx]
  0047232a: 8d 45 c8                                       lea    eax,[ebp-0x38]
  0047232d: 50                                             push   eax
  0047232e: 8b cb                                          mov    ecx,ebx
  00472330: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00472333: 8b 4d b8                                       mov    ecx,DWORD PTR [ebp-0x48]
  00472336: 51                                             push   ecx
  00472337: e8 84 fb ff ff                                 call   0x471ec0
  0047233c: 83 c4 04                                       add    esp,0x4
  0047233f: 8b f8                                          mov    edi,eax
  00472341: 33 c0                                          xor    eax,eax
  00472343: 6a 01                                          push   0x1
  00472345: 89 45 a4                                       mov    DWORD PTR [ebp-0x5c],eax
  00472348: 89 45 a8                                       mov    DWORD PTR [ebp-0x58],eax
  0047234b: 89 45 ac                                       mov    DWORD PTR [ebp-0x54],eax
  0047234e: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  00472351: 6a 01                                          push   0x1
  00472353: 8d 55 08                                       lea    edx,[ebp+0x8]
  00472356: 52                                             push   edx
  00472357: 8b 55 c8                                       mov    edx,DWORD PTR [ebp-0x38]
  0047235a: 8d 45 a4                                       lea    eax,[ebp-0x5c]
  0047235d: 50                                             push   eax
  0047235e: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00472361: 83 ec 0c                                       sub    esp,0xc
  00472364: 8b cc                                          mov    ecx,esp
  00472366: 89 11                                          mov    DWORD PTR [ecx],edx
  00472368: 8b 55 d0                                       mov    edx,DWORD PTR [ebp-0x30]
  0047236b: 89 41 04                                       mov    DWORD PTR [ecx+0x4],eax
  0047236e: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  00472371: 8b 4d b0                                       mov    ecx,DWORD PTR [ebp-0x50]
  00472374: 8b 55 b4                                       mov    edx,DWORD PTR [ebp-0x4c]
  00472377: 83 ec 0c                                       sub    esp,0xc
  0047237a: 8b c4                                          mov    eax,esp
  0047237c: 89 08                                          mov    DWORD PTR [eax],ecx
  0047237e: 8b 4d b8                                       mov    ecx,DWORD PTR [ebp-0x48]
  00472381: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  00472384: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  00472387: 8b cf                                          mov    ecx,edi
  00472389: c7 45 0c 01 00 00 00                           mov    DWORD PTR [ebp+0xc],0x1
  00472390: e8 6b 03 04 00                                 call   0x4b2700
  00472395: 85 c0                                          test   eax,eax
  00472397: 74 43                                          je     0x4723dc
  00472399: 39 5d 08                                       cmp    DWORD PTR [ebp+0x8],ebx
  0047239c: 74 3e                                          je     0x4723dc
  0047239e: 8b 55 a4                                       mov    edx,DWORD PTR [ebp-0x5c]
  004723a1: 3b 55 c8                                       cmp    edx,DWORD PTR [ebp-0x38]
  004723a4: 75 08                                          jne    0x4723ae
  004723a6: 8b 45 a8                                       mov    eax,DWORD PTR [ebp-0x58]
  004723a9: 3b 45 cc                                       cmp    eax,DWORD PTR [ebp-0x34]
  004723ac: 74 2e                                          je     0x4723dc
  004723ae: 8b ce                                          mov    ecx,esi
  004723b0: e8 bb 92 01 00                                 call   0x48b670
  004723b5: 3c 02                                          cmp    al,0x2
  004723b7: 75 18                                          jne    0x4723d1
  004723b9: 8b 16                                          mov    edx,DWORD PTR [esi]
  004723bb: 6a 00                                          push   0x0
  004723bd: 8b ce                                          mov    ecx,esi
  004723bf: ff 92 ac 00 00 00                              call   DWORD PTR [edx+0xac]
  004723c5: 8b 06                                          mov    eax,DWORD PTR [esi]
  004723c7: 6a 03                                          push   0x3
  004723c9: 8b ce                                          mov    ecx,esi
  004723cb: ff 90 80 00 00 00                              call   DWORD PTR [eax+0x80]
  004723d1: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  004723d4: c6 01 01                                       mov    BYTE PTR [ecx],0x1
  004723d7: e9 49 07 00 00                                 jmp    0x472b25
  004723dc: 3b de                                          cmp    ebx,esi
  004723de: 0f 84 23 07 00 00                              je     0x472b07
  004723e4: 8b cb                                          mov    ecx,ebx
  004723e6: e8 85 92 01 00                                 call   0x48b670
  004723eb: 3c 03                                          cmp    al,0x3
  004723ed: 0f 84 14 07 00 00                              je     0x472b07
  004723f3: 8b cb                                          mov    ecx,ebx
  004723f5: e8 76 92 01 00                                 call   0x48b670
  004723fa: 3c 04                                          cmp    al,0x4
  004723fc: 0f 84 05 07 00 00                              je     0x472b07
  00472402: 85 ff                                          test   edi,edi
  00472404: 0f 84 e9 00 00 00                              je     0x4724f3
  0047240a: 8b ce                                          mov    ecx,esi
  0047240c: e8 7f d0 01 00                                 call   0x48f490
  00472411: 3c 06                                          cmp    al,0x6
  00472413: 74 25                                          je     0x47243a
  00472415: 8b ce                                          mov    ecx,esi
  00472417: e8 74 d0 01 00                                 call   0x48f490
  0047241c: 3c 07                                          cmp    al,0x7
  0047241e: 74 1a                                          je     0x47243a
  00472420: 8b cb                                          mov    ecx,ebx
  00472422: e8 69 d0 01 00                                 call   0x48f490
  00472427: 3c 06                                          cmp    al,0x6
  00472429: 74 0f                                          je     0x47243a
  0047242b: 8b cb                                          mov    ecx,ebx
  0047242d: e8 5e d0 01 00                                 call   0x48f490
  00472432: 3c 07                                          cmp    al,0x7
  00472434: 0f 85 b9 00 00 00                              jne    0x4724f3
  0047243a: 8b ce                                          mov    ecx,esi
  0047243c: e8 2f 92 01 00                                 call   0x48b670
  00472441: 3c 01                                          cmp    al,0x1
  00472443: 0f 85 aa 00 00 00                              jne    0x4724f3
  00472449: 8b cb                                          mov    ecx,ebx
  0047244b: e8 20 92 01 00                                 call   0x48b670
  00472450: 3c 01                                          cmp    al,0x1
  00472452: 0f 85 9b 00 00 00                              jne    0x4724f3
  00472458: 8b ce                                          mov    ecx,esi
  0047245a: e8 11 92 01 00                                 call   0x48b670
  0047245f: 3c 01                                          cmp    al,0x1
  00472461: 75 07                                          jne    0x47246a
  00472463: 8b ce                                          mov    ecx,esi
  00472465: e8 d6 d9 fa ff                                 call   0x41fe40
  0047246a: 8d 4d 80                                       lea    ecx,[ebp-0x80]
  0047246d: e8 7e 39 01 00                                 call   0x485df0
  00472472: 33 ff                                          xor    edi,edi
  00472474: 6a 3f                                          push   0x3f
  00472476: 8d 4d 80                                       lea    ecx,[ebp-0x80]
  00472479: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  0047247c: e8 cf 3c 01 00                                 call   0x486150
  00472481: 6a 1e                                          push   0x1e
  00472483: 8d 4d 80                                       lea    ecx,[ebp-0x80]
  00472486: e8 c5 3c 01 00                                 call   0x486150
  0047248b: 6a 03                                          push   0x3
  0047248d: 8d 4d 80                                       lea    ecx,[ebp-0x80]
  00472490: e8 bb 3c 01 00                                 call   0x486150
  00472495: 8b 16                                          mov    edx,DWORD PTR [esi]
  00472497: 68 58 13 51 00                                 push   0x511358
  0047249c: 8b ce                                          mov    ecx,esi
  0047249e: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  004724a4: 50                                             push   eax
  004724a5: 6a 16                                          push   0x16
  004724a7: e8 44 b5 fc ff                                 call   0x43d9f0
  004724ac: 83 c4 0c                                       add    esp,0xc
  004724af: 50                                             push   eax
  004724b0: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  004724b3: e8 ac f5 05 00                                 call   0x4d1a64
  004724b8: 8d 45 10                                       lea    eax,[ebp+0x10]
  004724bb: 50                                             push   eax
  004724bc: 8d 4d 80                                       lea    ecx,[ebp-0x80]
  004724bf: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  004724c3: e8 88 3e 01 00                                 call   0x486350
  004724c8: 8b 16                                          mov    edx,DWORD PTR [esi]
  004724ca: 8d 45 80                                       lea    eax,[ebp-0x80]
  004724cd: 50                                             push   eax
  004724ce: 8b ce                                          mov    ecx,esi
  004724d0: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  004724d6: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  004724d9: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004724dd: e8 5e f5 05 00                                 call   0x4d1a40
  004724e2: 8d 4d 80                                       lea    ecx,[ebp-0x80]
  004724e5: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004724ec: e8 8f 39 01 00                                 call   0x485e80
  004724f1: eb 03                                          jmp    0x4724f6
  004724f3: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  004724f6: 8b 16                                          mov    edx,DWORD PTR [esi]
  004724f8: 6a 00                                          push   0x0
  004724fa: 68 31 4e 00 00                                 push   0x4e31
  004724ff: 8b ce                                          mov    ecx,esi
  00472501: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00472504: 85 c0                                          test   eax,eax
  00472506: 0f 85 19 06 00 00                              jne    0x472b25
  0047250c: 85 ff                                          test   edi,edi
  0047250e: 0f 84 11 06 00 00                              je     0x472b25
  00472514: 8b 55 c8                                       mov    edx,DWORD PTR [ebp-0x38]
  00472517: 8b 45 b0                                       mov    eax,DWORD PTR [ebp-0x50]
  0047251a: 2b c2                                          sub    eax,edx
  0047251c: 99                                             cdq
  0047251d: 33 c2                                          xor    eax,edx
  0047251f: 2b c2                                          sub    eax,edx
  00472521: 83 f8 03                                       cmp    eax,0x3
  00472524: 0f 8f fb 05 00 00                              jg     0x472b25
  0047252a: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  0047252d: 8b 45 b4                                       mov    eax,DWORD PTR [ebp-0x4c]
  00472530: 2b c2                                          sub    eax,edx
  00472532: 99                                             cdq
  00472533: 33 c2                                          xor    eax,edx
  00472535: 2b c2                                          sub    eax,edx
  00472537: 83 f8 03                                       cmp    eax,0x3
  0047253a: 0f 8f e5 05 00 00                              jg     0x472b25
  00472540: 33 c0                                          xor    eax,eax
  00472542: b9 08 00 00 00                                 mov    ecx,0x8
  00472547: 8d 7d d4                                       lea    edi,[ebp-0x2c]
  0047254a: f3 ab                                          rep stos DWORD PTR es:[edi],eax
  0047254c: 8b cb                                          mov    ecx,ebx
  0047254e: e8 bd bc 01 00                                 call   0x48e210
  00472553: 25 ff ff 00 00                                 and    eax,0xffff
  00472558: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  0047255b: 7f 08                                          jg     0x472565
  0047255d: b8 01 00 00 00                                 mov    eax,0x1
  00472562: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  00472565: 53                                             push   ebx
  00472566: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00472569: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  0047256c: 8b 06                                          mov    eax,DWORD PTR [esi]
  0047256e: 51                                             push   ecx
  0047256f: 8b ce                                          mov    ecx,esi
  00472571: ff 50 34                                       call   DWORD PTR [eax+0x34]
  00472574: dd 45 d4                                       fld    QWORD PTR [ebp-0x2c]
  00472577: dd 55 dc                                       fst    QWORD PTR [ebp-0x24]
  0047257a: 8b ce                                          mov    ecx,esi
  0047257c: dd 5d c0                                       fstp   QWORD PTR [ebp-0x40]
  0047257f: e8 6c bc 01 00                                 call   0x48e1f0
  00472584: 33 ff                                          xor    edi,edi
  00472586: 66 8b f8                                       mov    di,ax
  00472589: 81 e7 ff ff 00 00                              and    edi,0xffff
  0047258f: 77 05                                          ja     0x472596
  00472591: bf 01 00 00 00                                 mov    edi,0x1
  00472596: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00472599: 85 c0                                          test   eax,eax
  0047259b: 75 03                                          jne    0x4725a0
  0047259d: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004725a0: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  004725a3: 85 c0                                          test   eax,eax
  004725a5: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004725ac: 75 2a                                          jne    0x4725d8
  004725ae: 8b cb                                          mov    ecx,ebx
  004725b0: e8 fb bb 01 00                                 call   0x48e1b0
  004725b5: 8b ce                                          mov    ecx,esi
  004725b7: 25 ff ff 00 00                                 and    eax,0xffff
  004725bc: 50                                             push   eax
  004725bd: e8 ee bb 01 00                                 call   0x48e1b0
  004725c2: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004725c5: 25 ff ff 00 00                                 and    eax,0xffff
  004725ca: 50                                             push   eax
  004725cb: 52                                             push   edx
  004725cc: 57                                             push   edi
  004725cd: e8 4e 60 fc ff                                 call   0x438620
  004725d2: 83 c4 10                                       add    esp,0x10
  004725d5: 89 45 e4                                       mov    DWORD PTR [ebp-0x1c],eax
  004725d8: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004725da: 8b cb                                          mov    ecx,ebx
  004725dc: ff 90 84 01 00 00                              call   DWORD PTR [eax+0x184]
  004725e2: 85 c0                                          test   eax,eax
  004725e4: 74 22                                          je     0x472608
  004725e6: 8b cb                                          mov    ecx,ebx
  004725e8: e8 83 90 01 00                                 call   0x48b670
  004725ed: 3c 02                                          cmp    al,0x2
  004725ef: 75 17                                          jne    0x472608
  004725f1: 8b 13                                          mov    edx,DWORD PTR [ebx]
  004725f3: 6a 01                                          push   0x1
  004725f5: 8b cb                                          mov    ecx,ebx
  004725f7: ff 92 80 00 00 00                              call   DWORD PTR [edx+0x80]
  004725fd: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004725ff: 56                                             push   esi
  00472600: 8b cb                                          mov    ecx,ebx
  00472602: ff 90 ac 00 00 00                              call   DWORD PTR [eax+0xac]
  00472608: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  0047260b: 85 c0                                          test   eax,eax
  0047260d: 0f 8f a9 00 00 00                              jg     0x4726bc
  00472613: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00472615: 6a 00                                          push   0x0
  00472617: 68 31 4e 00 00                                 push   0x4e31
  0047261c: 8b cb                                          mov    ecx,ebx
  0047261e: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00472621: 85 c0                                          test   eax,eax
  00472623: 0f 85 93 00 00 00                              jne    0x4726bc
  00472629: 8b 06                                          mov    eax,DWORD PTR [esi]
  0047262b: 8b ce                                          mov    ecx,esi
  0047262d: ff 90 d0 01 00 00                              call   DWORD PTR [eax+0x1d0]
  00472633: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00472635: 50                                             push   eax
  00472636: 8d 85 74 ff ff ff                              lea    eax,[ebp-0x8c]
  0047263c: 50                                             push   eax
  0047263d: 8b cb                                          mov    ecx,ebx
  0047263f: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00472642: 8b 10                                          mov    edx,DWORD PTR [eax]
  00472644: 83 ec 0c                                       sub    esp,0xc
  00472647: 8b cc                                          mov    ecx,esp
  00472649: 89 11                                          mov    DWORD PTR [ecx],edx
  0047264b: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  0047264e: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00472651: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00472654: 8b 16                                          mov    edx,DWORD PTR [esi]
  00472656: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  00472659: 8d 85 5c ff ff ff                              lea    eax,[ebp-0xa4]
  0047265f: 50                                             push   eax
  00472660: 8b ce                                          mov    ecx,esi
  00472662: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00472665: 8b 10                                          mov    edx,DWORD PTR [eax]
  00472667: 83 ec 0c                                       sub    esp,0xc
  0047266a: 8b cc                                          mov    ecx,esp
  0047266c: 89 11                                          mov    DWORD PTR [ecx],edx
  0047266e: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00472671: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00472674: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00472677: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  0047267a: 8b cb                                          mov    ecx,ebx
  0047267c: e8 7f 90 01 00                                 call   0x48b700
  00472681: 50                                             push   eax
  00472682: 8b ce                                          mov    ecx,esi
  00472684: e8 77 90 01 00                                 call   0x48b700
  00472689: 8b 16                                          mov    edx,DWORD PTR [esi]
  0047268b: 50                                             push   eax
  0047268c: 6a 14                                          push   0x14
  0047268e: 8d 85 68 ff ff ff                              lea    eax,[ebp-0x98]
  00472694: 50                                             push   eax
  00472695: 8b ce                                          mov    ecx,esi
  00472697: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  0047269a: 8b 10                                          mov    edx,DWORD PTR [eax]
  0047269c: 83 ec 0c                                       sub    esp,0xc
  0047269f: 8b cc                                          mov    ecx,esp
  004726a1: 89 11                                          mov    DWORD PTR [ecx],edx
  004726a3: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004726a6: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  004726a9: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004726ac: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  004726af: e8 dc d6 f9 ff                                 call   0x40fd90
  004726b4: 83 c4 34                                       add    esp,0x34
  004726b7: e9 23 04 00 00                                 jmp    0x472adf
  004726bc: 8b 16                                          mov    edx,DWORD PTR [esi]
  004726be: 6a 00                                          push   0x0
  004726c0: 68 53 4e 00 00                                 push   0x4e53
  004726c5: 8b ce                                          mov    ecx,esi
  004726c7: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  004726ca: 85 c0                                          test   eax,eax
  004726cc: 74 3a                                          je     0x472708
  004726ce: 8d 45 98                                       lea    eax,[ebp-0x68]
  004726d1: 50                                             push   eax
  004726d2: b9 34 5e 51 00                                 mov    ecx,0x515e34
  004726d7: c7 45 98 01 00 00 00                           mov    DWORD PTR [ebp-0x68],0x1
  004726de: c7 45 9c 32 00 00 00                           mov    DWORD PTR [ebp-0x64],0x32
  004726e5: c7 45 a0 00 00 00 00                           mov    DWORD PTR [ebp-0x60],0x0
  004726ec: e8 2f 6a fe ff                                 call   0x459120
  004726f1: 05 95 00 00 00                                 add    eax,0x95
  004726f6: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004726f9: db 45 10                                       fild   DWORD PTR [ebp+0x10]
  004726fc: dc 4d d4                                       fmul   QWORD PTR [ebp-0x2c]
  004726ff: dc 0d d0 e8 4d 00                              fmul   QWORD PTR ds:0x4de8d0
  00472705: dd 5d d4                                       fstp   QWORD PTR [ebp-0x2c]
  00472708: 8b 16                                          mov    edx,DWORD PTR [esi]
  0047270a: 8b ce                                          mov    ecx,esi
  0047270c: ff 92 d8 01 00 00                              call   DWORD PTR [edx+0x1d8]
  00472712: 8b 03                                          mov    eax,DWORD PTR [ebx]
  00472714: 6a 00                                          push   0x0
  00472716: 68 31 4e 00 00                                 push   0x4e31
  0047271b: 8b cb                                          mov    ecx,ebx
  0047271d: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  00472720: 85 c0                                          test   eax,eax
  00472722: 74 1e                                          je     0x472742
  00472724: dd 45 d4                                       fld    QWORD PTR [ebp-0x2c]
  00472727: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00472729: dc 0d 48 f5 4d 00                              fmul   QWORD PTR ds:0x4df548
  0047272f: 68 31 4e 00 00                                 push   0x4e31
  00472734: 8b cb                                          mov    ecx,ebx
  00472736: dc 0d 40 f5 4d 00                              fmul   QWORD PTR ds:0x4df540
  0047273c: dd 5d d4                                       fstp   QWORD PTR [ebp-0x2c]
  0047273f: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00472742: 8b 06                                          mov    eax,DWORD PTR [esi]
  00472744: 6a 00                                          push   0x0
  00472746: 68 38 4e 00 00                                 push   0x4e38
  0047274b: 8b ce                                          mov    ecx,esi
  0047274d: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  00472750: 8b c8                                          mov    ecx,eax
  00472752: 85 c9                                          test   ecx,ecx
  00472754: 7e 28                                          jle    0x47277e
  00472756: dd 45 d4                                       fld    QWORD PTR [ebp-0x2c]
  00472759: b8 1f 85 eb 51                                 mov    eax,0x51eb851f
  0047275e: f7 e9                                          imul   ecx
  00472760: dc c0                                          fadd   st(0),st
  00472762: c1 fa 03                                       sar    edx,0x3
  00472765: 8b ca                                          mov    ecx,edx
  00472767: c1 e9 1f                                       shr    ecx,0x1f
  0047276a: 8d 54 0a 01                                    lea    edx,[edx+ecx*1+0x1]
  0047276e: 89 55 10                                       mov    DWORD PTR [ebp+0x10],edx
  00472771: db 45 10                                       fild   DWORD PTR [ebp+0x10]
  00472774: dc 4d d4                                       fmul   QWORD PTR [ebp-0x2c]
  00472777: d8 c1                                          fadd   st,st(1)
  00472779: dd 5d d4                                       fstp   QWORD PTR [ebp-0x2c]
  0047277c: dd d8                                          fstp   st(0)
  0047277e: 8b 06                                          mov    eax,DWORD PTR [esi]
  00472780: 53                                             push   ebx
  00472781: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00472784: 51                                             push   ecx
  00472785: 8b ce                                          mov    ecx,esi
  00472787: ff 50 40                                       call   DWORD PTR [eax+0x40]
  0047278a: 8b 13                                          mov    edx,DWORD PTR [ebx]
  0047278c: 68 f4 01 00 00                                 push   0x1f4
  00472791: 6a 00                                          push   0x0
  00472793: 6a 00                                          push   0x0
  00472795: 8b cb                                          mov    ecx,ebx
  00472797: ff 52 78                                       call   DWORD PTR [edx+0x78]
  0047279a: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0047279c: 56                                             push   esi
  0047279d: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  004727a0: 51                                             push   ecx
  004727a1: 8b cb                                          mov    ecx,ebx
  004727a3: ff 50 38                                       call   DWORD PTR [eax+0x38]
  004727a6: dd 45 d4                                       fld    QWORD PTR [ebp-0x2c]
  004727a9: dc 1d 30 e6 4d 00                              fcomp  QWORD PTR ds:0x4de630
  004727af: df e0                                          fnstsw ax
  004727b1: f6 c4 01                                       test   ah,0x1
  004727b4: 74 0e                                          je     0x4727c4
  004727b6: c7 45 d4 00 00 00 00                           mov    DWORD PTR [ebp-0x2c],0x0
  004727bd: c7 45 d8 00 00 00 00                           mov    DWORD PTR [ebp-0x28],0x0
  004727c4: 8b ce                                          mov    ecx,esi
  004727c6: e8 a5 8e 01 00                                 call   0x48b670
  004727cb: 3c 01                                          cmp    al,0x1
  004727cd: 0f 85 88 00 00 00                              jne    0x47285b
  004727d3: 8b ce                                          mov    ecx,esi
  004727d5: e8 16 83 fa ff                                 call   0x41aaf0
  004727da: 85 c0                                          test   eax,eax
  004727dc: 74 7d                                          je     0x47285b
  004727de: 8b c8                                          mov    ecx,eax
  004727e0: e8 fb 22 fe ff                                 call   0x454ae0
  004727e5: 25 00 00 00 80                                 and    eax,0x80000000
  004727ea: 33 c9                                          xor    ecx,ecx
  004727ec: 0b c1                                          or     eax,ecx
  004727ee: 74 6b                                          je     0x47285b
  004727f0: 8b 3b                                          mov    edi,DWORD PTR [ebx]
  004727f2: 88 8d 5c f7 ff ff                              mov    BYTE PTR [ebp-0x8a4],cl
  004727f8: e8 63 b2 fc ff                                 call   0x43da60
  004727fd: 8d 55 10                                       lea    edx,[ebp+0x10]
  00472800: 8b cb                                          mov    ecx,ebx
  00472802: 50                                             push   eax
  00472803: 52                                             push   edx
  00472804: ff 57 48                                       call   DWORD PTR [edi+0x48]
  00472807: 8b 4d d8                                       mov    ecx,DWORD PTR [ebp-0x28]
  0047280a: 8b 55 d4                                       mov    edx,DWORD PTR [ebp-0x2c]
  0047280d: 51                                             push   ecx
  0047280e: 8b 4d c4                                       mov    ecx,DWORD PTR [ebp-0x3c]
  00472811: 52                                             push   edx
  00472812: 8b 55 c0                                       mov    edx,DWORD PTR [ebp-0x40]
  00472815: 51                                             push   ecx
  00472816: 52                                             push   edx
  00472817: 8b c8                                          mov    ecx,eax
  00472819: c7 45 fc 04 00 00 00                           mov    DWORD PTR [ebp-0x4],0x4
  00472820: e8 4b f5 fa ff                                 call   0x421d70
  00472825: 50                                             push   eax
  00472826: 8d 85 5c f7 ff ff                              lea    eax,[ebp-0x8a4]
  0047282c: 68 3c 26 50 00                                 push   0x50263c
  00472831: 50                                             push   eax
  00472832: e8 09 11 f9 ff                                 call   0x403940
  00472837: 83 c4 18                                       add    esp,0x18
  0047283a: 8b cc                                          mov    ecx,esp
  0047283c: 89 65 0c                                       mov    DWORD PTR [ebp+0xc],esp
  0047283f: 50                                             push   eax
  00472840: e8 1f f2 05 00                                 call   0x4d1a64
  00472845: 8b ce                                          mov    ecx,esi
  00472847: e8 44 06 fb ff                                 call   0x422e90
  0047284c: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  0047284f: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00472856: e8 e5 f1 05 00                                 call   0x4d1a40
  0047285b: 8b cb                                          mov    ecx,ebx
  0047285d: e8 0e 8e 01 00                                 call   0x48b670
  00472862: 3c 01                                          cmp    al,0x1
  00472864: 0f 85 88 00 00 00                              jne    0x4728f2
  0047286a: 8b cb                                          mov    ecx,ebx
  0047286c: e8 7f 82 fa ff                                 call   0x41aaf0
  00472871: 85 c0                                          test   eax,eax
  00472873: 74 7d                                          je     0x4728f2
  00472875: 8b c8                                          mov    ecx,eax
  00472877: e8 64 22 fe ff                                 call   0x454ae0
  0047287c: 25 00 00 00 80                                 and    eax,0x80000000
  00472881: 33 c9                                          xor    ecx,ecx
  00472883: 0b c1                                          or     eax,ecx
  00472885: 74 6b                                          je     0x4728f2
  00472887: 8b 3e                                          mov    edi,DWORD PTR [esi]
  00472889: 88 8d 5c f7 ff ff                              mov    BYTE PTR [ebp-0x8a4],cl
  0047288f: e8 cc b1 fc ff                                 call   0x43da60
  00472894: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  00472897: 50                                             push   eax
  00472898: 51                                             push   ecx
  00472899: 8b ce                                          mov    ecx,esi
  0047289b: ff 57 48                                       call   DWORD PTR [edi+0x48]
  0047289e: 8b 55 d8                                       mov    edx,DWORD PTR [ebp-0x28]
  004728a1: 8b 4d d4                                       mov    ecx,DWORD PTR [ebp-0x2c]
  004728a4: 52                                             push   edx
  004728a5: 8b 55 c4                                       mov    edx,DWORD PTR [ebp-0x3c]
  004728a8: 51                                             push   ecx
  004728a9: 8b 4d c0                                       mov    ecx,DWORD PTR [ebp-0x40]
  004728ac: 52                                             push   edx
  004728ad: 51                                             push   ecx
  004728ae: 8b c8                                          mov    ecx,eax
  004728b0: c7 45 fc 05 00 00 00                           mov    DWORD PTR [ebp-0x4],0x5
  004728b7: e8 b4 f4 fa ff                                 call   0x421d70
  004728bc: 50                                             push   eax
  004728bd: 8d 95 5c f7 ff ff                              lea    edx,[ebp-0x8a4]
  004728c3: 68 00 26 50 00                                 push   0x502600
  004728c8: 52                                             push   edx
  004728c9: e8 72 10 f9 ff                                 call   0x403940
  004728ce: 83 c4 18                                       add    esp,0x18
  004728d1: 8b cc                                          mov    ecx,esp
  004728d3: 89 65 0c                                       mov    DWORD PTR [ebp+0xc],esp
  004728d6: 50                                             push   eax
  004728d7: e8 88 f1 05 00                                 call   0x4d1a64
  004728dc: 8b cb                                          mov    ecx,ebx
  004728de: e8 ad 05 fb ff                                 call   0x422e90
  004728e3: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  004728e6: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004728ed: e8 4e f1 05 00                                 call   0x4d1a40
  004728f2: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004728f4: 56                                             push   esi
  004728f5: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  004728f8: 51                                             push   ecx
  004728f9: 8b cb                                          mov    ecx,ebx
  004728fb: ff 50 3c                                       call   DWORD PTR [eax+0x3c]
  004728fe: 8b 16                                          mov    edx,DWORD PTR [esi]
  00472900: 8b ce                                          mov    ecx,esi
  00472902: 8b f8                                          mov    edi,eax
  00472904: ff 92 30 01 00 00                              call   DWORD PTR [edx+0x130]
  0047290a: 83 ff ff                                       cmp    edi,0xffffffff
  0047290d: 0f 84 b0 00 00 00                              je     0x4729c3
  00472913: 8b 06                                          mov    eax,DWORD PTR [esi]
  00472915: 8b ce                                          mov    ecx,esi
  00472917: ff 90 d0 01 00 00                              call   DWORD PTR [eax+0x1d0]
  0047291d: 8b 13                                          mov    edx,DWORD PTR [ebx]
  0047291f: 50                                             push   eax
  00472920: 8d 45 98                                       lea    eax,[ebp-0x68]
  00472923: 50                                             push   eax
  00472924: 8b cb                                          mov    ecx,ebx
  00472926: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00472929: 8b 10                                          mov    edx,DWORD PTR [eax]
  0047292b: 83 ec 0c                                       sub    esp,0xc
  0047292e: 8b cc                                          mov    ecx,esp
  00472930: 89 11                                          mov    DWORD PTR [ecx],edx
  00472932: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00472935: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00472938: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  0047293b: 8b 16                                          mov    edx,DWORD PTR [esi]
  0047293d: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  00472940: 8d 45 bc                                       lea    eax,[ebp-0x44]
  00472943: 50                                             push   eax
  00472944: 8b ce                                          mov    ecx,esi
  00472946: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00472949: 8b 10                                          mov    edx,DWORD PTR [eax]
  0047294b: 83 ec 0c                                       sub    esp,0xc
  0047294e: 8b cc                                          mov    ecx,esp
  00472950: 89 11                                          mov    DWORD PTR [ecx],edx
  00472952: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00472955: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00472958: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  0047295b: 8b 13                                          mov    edx,DWORD PTR [ebx]
  0047295d: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  00472960: 8b cb                                          mov    ecx,ebx
  00472962: ff 92 d8 00 00 00                              call   DWORD PTR [edx+0xd8]
  00472968: 8d 04 80                                       lea    eax,[eax+eax*4]
  0047296b: 8d 3c 80                                       lea    edi,[eax+eax*4]
  0047296e: 8b 03                                          mov    eax,DWORD PTR [ebx]
  00472970: 8b cb                                          mov    ecx,ebx
  00472972: c1 e7 02                                       shl    edi,0x2
  00472975: ff 90 cc 00 00 00                              call   DWORD PTR [eax+0xcc]
  0047297b: 8b c8                                          mov    ecx,eax
  0047297d: 33 d2                                          xor    edx,edx
  0047297f: 8b c7                                          mov    eax,edi
  00472981: f7 f1                                          div    ecx
  00472983: 8b cb                                          mov    ecx,ebx
  00472985: 50                                             push   eax
  00472986: e8 75 8d 01 00                                 call   0x48b700
  0047298b: 50                                             push   eax
  0047298c: 8b ce                                          mov    ecx,esi
  0047298e: e8 6d 8d 01 00                                 call   0x48b700
  00472993: 8b 16                                          mov    edx,DWORD PTR [esi]
  00472995: 50                                             push   eax
  00472996: 6a 14                                          push   0x14
  00472998: 8d 45 8c                                       lea    eax,[ebp-0x74]
  0047299b: 50                                             push   eax
  0047299c: 8b ce                                          mov    ecx,esi
  0047299e: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  004729a1: 8b 10                                          mov    edx,DWORD PTR [eax]
  004729a3: 83 ec 0c                                       sub    esp,0xc
  004729a6: 8b cc                                          mov    ecx,esp
  004729a8: 89 11                                          mov    DWORD PTR [ecx],edx
  004729aa: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004729ad: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  004729b0: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004729b3: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  004729b6: e8 e5 d2 f9 ff                                 call   0x40fca0
  004729bb: 83 c4 38                                       add    esp,0x38
  004729be: e9 1c 01 00 00                                 jmp    0x472adf
  004729c3: 8b 16                                          mov    edx,DWORD PTR [esi]
  004729c5: 8b ce                                          mov    ecx,esi
  004729c7: ff 92 d0 01 00 00                              call   DWORD PTR [edx+0x1d0]
  004729cd: 50                                             push   eax
  004729ce: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004729d0: 8d 4d 8c                                       lea    ecx,[ebp-0x74]
  004729d3: 51                                             push   ecx
  004729d4: 8b cb                                          mov    ecx,ebx
  004729d6: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  004729d9: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004729db: 83 ec 0c                                       sub    esp,0xc
  004729de: 8b d4                                          mov    edx,esp
  004729e0: 89 0a                                          mov    DWORD PTR [edx],ecx
  004729e2: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004729e5: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  004729e8: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  004729eb: 89 42 08                                       mov    DWORD PTR [edx+0x8],eax
  004729ee: 8b 16                                          mov    edx,DWORD PTR [esi]
  004729f0: 8d 45 98                                       lea    eax,[ebp-0x68]
  004729f3: 50                                             push   eax
  004729f4: 8b ce                                          mov    ecx,esi
  004729f6: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  004729f9: 8b 10                                          mov    edx,DWORD PTR [eax]
  004729fb: 83 ec 0c                                       sub    esp,0xc
  004729fe: 8b cc                                          mov    ecx,esp
  00472a00: 89 11                                          mov    DWORD PTR [ecx],edx
  00472a02: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00472a05: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00472a08: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00472a0b: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00472a0d: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  00472a10: 8b cb                                          mov    ecx,ebx
  00472a12: ff 92 d8 00 00 00                              call   DWORD PTR [edx+0xd8]
  00472a18: 8d 04 80                                       lea    eax,[eax+eax*4]
  00472a1b: 8d 3c 80                                       lea    edi,[eax+eax*4]
  00472a1e: 8b 03                                          mov    eax,DWORD PTR [ebx]
  00472a20: 8b cb                                          mov    ecx,ebx
  00472a22: c1 e7 02                                       shl    edi,0x2
  00472a25: ff 90 cc 00 00 00                              call   DWORD PTR [eax+0xcc]
  00472a2b: 8b c8                                          mov    ecx,eax
  00472a2d: 33 d2                                          xor    edx,edx
  00472a2f: 8b c7                                          mov    eax,edi
  00472a31: f7 f1                                          div    ecx
  00472a33: 8b cb                                          mov    ecx,ebx
  00472a35: 50                                             push   eax
  00472a36: e8 c5 8c 01 00                                 call   0x48b700
  00472a3b: 50                                             push   eax
  00472a3c: 8b ce                                          mov    ecx,esi
  00472a3e: e8 bd 8c 01 00                                 call   0x48b700
  00472a43: 8b 16                                          mov    edx,DWORD PTR [esi]
  00472a45: 50                                             push   eax
  00472a46: 6a 14                                          push   0x14
  00472a48: 8d 45 bc                                       lea    eax,[ebp-0x44]
  00472a4b: 50                                             push   eax
  00472a4c: 8b ce                                          mov    ecx,esi
  00472a4e: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00472a51: 8b 10                                          mov    edx,DWORD PTR [eax]
  00472a53: 83 ec 0c                                       sub    esp,0xc
  00472a56: 8b cc                                          mov    ecx,esp
  00472a58: 89 11                                          mov    DWORD PTR [ecx],edx
  00472a5a: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00472a5d: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00472a60: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00472a63: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  00472a66: e8 35 d2 f9 ff                                 call   0x40fca0
  00472a6b: 83 c4 38                                       add    esp,0x38
  00472a6e: 8b cb                                          mov    ecx,ebx
  00472a70: e8 fb 8b 01 00                                 call   0x48b670
  00472a75: 3c 01                                          cmp    al,0x1
  00472a77: 75 1e                                          jne    0x472a97
  00472a79: 8b cb                                          mov    ecx,ebx
  00472a7b: e8 70 80 fa ff                                 call   0x41aaf0
  00472a80: 85 c0                                          test   eax,eax
  00472a82: 74 13                                          je     0x472a97
  00472a84: 8b c8                                          mov    ecx,eax
  00472a86: e8 55 20 fe ff                                 call   0x454ae0
  00472a8b: 81 e2 80 00 00 00                              and    edx,0x80
  00472a91: 33 c0                                          xor    eax,eax
  00472a93: 0b c2                                          or     eax,edx
  00472a95: 75 48                                          jne    0x472adf
  00472a97: 8b 16                                          mov    edx,DWORD PTR [esi]
  00472a99: 8b ce                                          mov    ecx,esi
  00472a9b: ff 92 d0 01 00 00                              call   DWORD PTR [edx+0x1d0]
  00472aa1: 50                                             push   eax
  00472aa2: 8b cb                                          mov    ecx,ebx
  00472aa4: e8 57 8c 01 00                                 call   0x48b700
  00472aa9: 50                                             push   eax
  00472aaa: 8b 03                                          mov    eax,DWORD PTR [ebx]
  00472aac: 8b cb                                          mov    ecx,ebx
  00472aae: ff 90 b4 00 00 00                              call   DWORD PTR [eax+0xb4]
  00472ab4: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00472ab6: 8b cb                                          mov    ecx,ebx
  00472ab8: 50                                             push   eax
  00472ab9: 6a 19                                          push   0x19
  00472abb: 8d 45 8c                                       lea    eax,[ebp-0x74]
  00472abe: 50                                             push   eax
  00472abf: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00472ac2: 8b 10                                          mov    edx,DWORD PTR [eax]
  00472ac4: 83 ec 0c                                       sub    esp,0xc
  00472ac7: 8b cc                                          mov    ecx,esp
  00472ac9: 89 11                                          mov    DWORD PTR [ecx],edx
  00472acb: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00472ace: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00472ad1: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00472ad4: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  00472ad7: e8 84 d0 f9 ff                                 call   0x40fb60
  00472adc: 83 c4 1c                                       add    esp,0x1c
  00472adf: 8b 56 30                                       mov    edx,DWORD PTR [esi+0x30]
  00472ae2: 8d 4e 30                                       lea    ecx,[esi+0x30]
  00472ae5: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00472ae8: 8b 43 30                                       mov    eax,DWORD PTR [ebx+0x30]
  00472aeb: 8d 4b 30                                       lea    ecx,[ebx+0x30]
  00472aee: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00472af1: b8 14 00 00 00                                 mov    eax,0x14
  00472af6: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00472af9: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00472b00: 5f                                             pop    edi
  00472b01: 5e                                             pop    esi
  00472b02: 5b                                             pop    ebx
  00472b03: 8b e5                                          mov    esp,ebp
  00472b05: 5d                                             pop    ebp
  00472b06: c3                                             ret
  00472b07: 8b cb                                          mov    ecx,ebx
  00472b09: e8 62 8b 01 00                                 call   0x48b670
  00472b0e: 3c 04                                          cmp    al,0x4
  00472b10: 75 13                                          jne    0x472b25
  00472b12: 8b 3e                                          mov    edi,DWORD PTR [esi]
  00472b14: 8b ce                                          mov    ecx,esi
  00472b16: ff 97 14 01 00 00                              call   DWORD PTR [edi+0x114]
  00472b1c: 50                                             push   eax
  00472b1d: 8b ce                                          mov    ecx,esi
  00472b1f: ff 97 ac 00 00 00                              call   DWORD PTR [edi+0xac]
  00472b25: 8b 56 30                                       mov    edx,DWORD PTR [esi+0x30]
  00472b28: 8d 4e 30                                       lea    ecx,[esi+0x30]
  00472b2b: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00472b2e: 8b 43 30                                       mov    eax,DWORD PTR [ebx+0x30]
  00472b31: 8d 4b 30                                       lea    ecx,[ebx+0x30]
  00472b34: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00472b37: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00472b3a: 5f                                             pop    edi
  00472b3b: 5e                                             pop    esi
  00472b3c: 33 c0                                          xor    eax,eax
  00472b3e: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00472b45: 5b                                             pop    ebx
  00472b46: 8b e5                                          mov    esp,ebp
  00472b48: 5d                                             pop    ebp
  00472b49: c3                                             ret
