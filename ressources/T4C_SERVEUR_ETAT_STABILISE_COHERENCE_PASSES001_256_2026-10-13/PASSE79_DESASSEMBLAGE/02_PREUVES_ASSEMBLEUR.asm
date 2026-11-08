; PASSE 79 - Unites : parole, deplacement, messages et etats
; SHA256 binaire 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2290 instructions depuis 143 entrees exportees; chemins indirects exclus.

; ===== 0x00422E30 ?GetUpperLimit@Unit@@UAE?AUWorldPos@@XZ =====
  00422e30: 55                                              push   ebp
  00422e31: 8b ec                                           mov    ebp,esp
  00422e33: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422e36: 81 c1 d0 00 00 00                               add    ecx,0xd0
  00422e3c: 56                                              push   esi
  00422e3d: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00422e3f: 8b d0                                           mov    edx,eax
  00422e41: 89 32                                           mov    DWORD PTR [edx],esi
  00422e43: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00422e46: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00422e49: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00422e4c: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00422e4f: 5e                                              pop    esi
  00422e50: 5d                                              pop    ebp
  00422e51: c2 04 00                                        ret    0x4

; ===== 0x00422E60 ?GetLowerLimit@Unit@@UAE?AUWorldPos@@XZ =====
  00422e60: 55                                              push   ebp
  00422e61: 8b ec                                           mov    ebp,esp
  00422e63: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422e66: 81 c1 dc 00 00 00                               add    ecx,0xdc
  00422e6c: 56                                              push   esi
  00422e6d: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00422e6f: 8b d0                                           mov    edx,eax
  00422e71: 89 32                                           mov    DWORD PTR [edx],esi
  00422e73: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00422e76: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00422e79: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00422e7c: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00422e7f: 5e                                              pop    esi
  00422e80: 5d                                              pop    ebp
  00422e81: c2 04 00                                        ret    0x4

; ===== 0x00422F50 ?GetKarma@Unit@@UAEHXZ =====
  00422f50: 8b 81 80 00 00 00                               mov    eax,DWORD PTR [ecx+0x80]
  00422f56: c3                                              ret

; ===== 0x00422F60 ?GetInvisibleQuery@Unit@@UAEPAVQueryInvisible@1@XZ =====
  00422f60: 8d 41 50                                        lea    eax,[ecx+0x50]
  00422f63: c3                                              ret

; ===== 0x00433210 ?NextLevelXP@Unit@@UAE_JXZ =====
  00433210: 33 c0                                           xor    eax,eax
  00433212: 33 d2                                           xor    edx,edx
  00433214: c3                                              ret

; ===== 0x00433220 ?XPtoLevel@Unit@@UAE_JXZ =====
  00433220: 33 c0                                           xor    eax,eax
  00433222: 33 d2                                           xor    edx,edx
  00433224: c3                                              ret

; ===== 0x00462F80 ??0BaseReferenceMessages@@QAE@XZ =====
  00462f80: 8b c1                                           mov    eax,ecx
  00462f82: c7 00 4c ee 4d 00                               mov    DWORD PTR [eax],0x4dee4c
  00462f88: c3                                              ret

; ===== 0x00462F90 ??0BaseReferenceMessages@@QAE@ABV0@@Z =====
  00462f90: 55                                              push   ebp
  00462f91: 8b ec                                           mov    ebp,esp
  00462f93: 8b c1                                           mov    eax,ecx
  00462f95: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00462f98: 66 8b 51 04                                     mov    dx,WORD PTR [ecx+0x4]
  00462f9c: 66 89 50 04                                     mov    WORD PTR [eax+0x4],dx
  00462fa0: c7 00 4c ee 4d 00                               mov    DWORD PTR [eax],0x4dee4c
  00462fa6: 5d                                              pop    ebp
  00462fa7: c2 04 00                                        ret    0x4

; ===== 0x004633B0 ?SetWaterPower@Unit@@QAEXH@Z =====
  004633b0: 55                                              push   ebp
  004633b1: 8b ec                                           mov    ebp,esp
  004633b3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004633b6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004633b8: 83 c2 9c                                        add    edx,0xffffff9c
  004633bb: 52                                              push   edx
  004633bc: 68 4a 4e 00 00                                  push   0x4e4a
  004633c1: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004633c4: 5d                                              pop    ebp
  004633c5: c2 04 00                                        ret    0x4

; ===== 0x004633D0 ?SetFirePower@Unit@@QAEXH@Z =====
  004633d0: 55                                              push   ebp
  004633d1: 8b ec                                           mov    ebp,esp
  004633d3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004633d6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004633d8: 83 c2 9c                                        add    edx,0xffffff9c
  004633db: 52                                              push   edx
  004633dc: 68 4b 4e 00 00                                  push   0x4e4b
  004633e1: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004633e4: 5d                                              pop    ebp
  004633e5: c2 04 00                                        ret    0x4

; ===== 0x004633F0 ?SetEarthPower@Unit@@QAEXH@Z =====
  004633f0: 55                                              push   ebp
  004633f1: 8b ec                                           mov    ebp,esp
  004633f3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004633f6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004633f8: 83 c2 9c                                        add    edx,0xffffff9c
  004633fb: 52                                              push   edx
  004633fc: 68 4c 4e 00 00                                  push   0x4e4c
  00463401: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00463404: 5d                                              pop    ebp
  00463405: c2 04 00                                        ret    0x4

; ===== 0x00463410 ?SetLightPower@Unit@@QAEXH@Z =====
  00463410: 55                                              push   ebp
  00463411: 8b ec                                           mov    ebp,esp
  00463413: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00463416: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00463418: 83 c2 9c                                        add    edx,0xffffff9c
  0046341b: 52                                              push   edx
  0046341c: 68 47 4e 00 00                                  push   0x4e47
  00463421: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00463424: 5d                                              pop    ebp
  00463425: c2 04 00                                        ret    0x4

; ===== 0x00463430 ?SetDarkPower@Unit@@QAEXH@Z =====
  00463430: 55                                              push   ebp
  00463431: 8b ec                                           mov    ebp,esp
  00463433: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00463436: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00463438: 83 c2 9c                                        add    edx,0xffffff9c
  0046343b: 52                                              push   edx
  0046343c: 68 48 4e 00 00                                  push   0x4e48
  00463441: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00463444: 5d                                              pop    ebp
  00463445: c2 04 00                                        ret    0x4

; ===== 0x00463450 ?IsPuppet@Unit@@QAE_NXZ =====
  00463450: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00463452: ff 50 2c                                        call   DWORD PTR [eax+0x2c]
  00463455: 66 3d 1b 27                                     cmp    ax,0x271b
  00463459: 74 09                                           je     0x463464
  0046345b: 66 3d 1c 27                                     cmp    ax,0x271c
  0046345f: 74 03                                           je     0x463464
  00463461: 33 c0                                           xor    eax,eax
  00463463: c3                                              ret
  00463464: b8 01 00 00 00                                  mov    eax,0x1
  00463469: c3                                              ret

; ===== 0x00463470 ?IsPuppetID@Unit@@SA_NG@Z =====
  00463470: 55                                              push   ebp
  00463471: 8b ec                                           mov    ebp,esp
  00463473: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  00463477: 66 3d 1b 27                                     cmp    ax,0x271b
  0046347b: 74 0a                                           je     0x463487
  0046347d: 66 3d 1c 27                                     cmp    ax,0x271c
  00463481: 74 04                                           je     0x463487
  00463483: 33 c0                                           xor    eax,eax
  00463485: 5d                                              pop    ebp
  00463486: c3                                              ret
  00463487: b8 01 00 00 00                                  mov    eax,0x1
  0046348c: 5d                                              pop    ebp
  0046348d: c3                                              ret

; ===== 0x00463490 ?PacketOutline@Unit@@QAEXAAVTFCPacket@@@Z =====
  00463490: 55                                              push   ebp
  00463491: 8b ec                                           mov    ebp,esp
  00463493: 56                                              push   esi
  00463494: 57                                              push   edi
  00463495: 8b f1                                           mov    esi,ecx
  00463497: e8 64 82 02 00                                  call   0x48b700
  0046349c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0046349f: 50                                              push   eax
  004634a0: 8b cf                                           mov    ecx,edi
  004634a2: e8 49 2d 02 00                                  call   0x4861f0
  004634a7: 8b 06                                           mov    eax,DWORD PTR [esi]
  004634a9: 8b ce                                           mov    ecx,esi
  004634ab: ff 90 cc 00 00 00                               call   DWORD PTR [eax+0xcc]
  004634b1: 85 c0                                           test   eax,eax
  004634b3: 75 0e                                           jne    0x4634c3
  004634b5: 50                                              push   eax
  004634b6: 8b cf                                           mov    ecx,edi
  004634b8: e8 f3 2c 02 00                                  call   0x4861b0
  004634bd: 5f                                              pop    edi
  004634be: 5e                                              pop    esi
  004634bf: 5d                                              pop    ebp
  004634c0: c2 04 00                                        ret    0x4
  004634c3: 8b 16                                           mov    edx,DWORD PTR [esi]
  004634c5: 53                                              push   ebx
  004634c6: 8b ce                                           mov    ecx,esi
  004634c8: ff 92 d8 00 00 00                               call   DWORD PTR [edx+0xd8]
  004634ce: 8d 04 80                                        lea    eax,[eax+eax*4]
  004634d1: 8d 1c 80                                        lea    ebx,[eax+eax*4]
  004634d4: 8b 06                                           mov    eax,DWORD PTR [esi]
  004634d6: 8b ce                                           mov    ecx,esi
  004634d8: c1 e3 02                                        shl    ebx,0x2
  004634db: ff 90 cc 00 00 00                               call   DWORD PTR [eax+0xcc]
  004634e1: 8b c8                                           mov    ecx,eax
  004634e3: 8b c3                                           mov    eax,ebx
  004634e5: 33 d2                                           xor    edx,edx
  004634e7: f7 f1                                           div    ecx
  004634e9: 5b                                              pop    ebx
  004634ea: 8b cf                                           mov    ecx,edi
  004634ec: 50                                              push   eax
  004634ed: e8 be 2c 02 00                                  call   0x4861b0
  004634f2: 5f                                              pop    edi
  004634f3: 5e                                              pop    esi
  004634f4: 5d                                              pop    ebp
  004634f5: c2 04 00                                        ret    0x4

; ===== 0x00463520 ?IsVisible@Unit@@QAE_NXZ =====
  00463520: 8a 51 5a                                        mov    dl,BYTE PTR [ecx+0x5a]
  00463523: 33 c0                                           xor    eax,eax
  00463525: 84 d2                                           test   dl,dl
  00463527: 0f 94 c0                                        sete   al
  0046352a: c3                                              ret

; ===== 0x00463560 ?LastMoveWasBroadcasted@Unit@@QAE_NXZ =====
  00463560: 8a 41 59                                        mov    al,BYTE PTR [ecx+0x59]
  00463563: c3                                              ret

; ===== 0x00489EB0 ?GetNameFromID@Unit@@SAHGPADE@Z =====
  00489eb0: 55                                              push   ebp
  00489eb1: 8b ec                                           mov    ebp,esp
  00489eb3: 83 ec 08                                        sub    esp,0x8
  00489eb6: 56                                              push   esi
  00489eb7: 57                                              push   edi
  00489eb8: 50                                              push   eax
  00489eb9: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00489ebc: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00489ebf: 58                                              pop    eax
  00489ec0: e8 3b a3 fa ff                                  call   0x434200
  00489ec5: 8b 10                                           mov    edx,DWORD PTR [eax]
  00489ec7: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00489eca: 51                                              push   ecx
  00489ecb: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00489ece: 68 b0 63 51 00                                  push   0x5163b0
  00489ed3: 51                                              push   ecx
  00489ed4: 8b c8                                           mov    ecx,eax
  00489ed6: ff 12                                           call   DWORD PTR [edx]
  00489ed8: 68 b8 63 51 00                                  push   0x5163b8
  00489edd: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00489ee3: e8 18 a3 fa ff                                  call   0x434200
  00489ee8: 8b 10                                           mov    edx,DWORD PTR [eax]
  00489eea: 68 b4 63 51 00                                  push   0x5163b4
  00489eef: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00489ef2: 51                                              push   ecx
  00489ef3: 8b c8                                           mov    ecx,eax
  00489ef5: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00489ef8: 8b 0d d4 63 51 00                               mov    ecx,DWORD PTR ds:0x5163d4
  00489efe: 8a 55 10                                        mov    dl,BYTE PTR [ebp+0x10]
  00489f01: 66 8b 7d 08                                     mov    di,WORD PTR [ebp+0x8]
  00489f05: 33 f6                                           xor    esi,esi
  00489f07: 89 0d d0 63 51 00                               mov    DWORD PTR ds:0x5163d0,ecx
  00489f0d: 89 35 f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,esi
  00489f13: c6 05 e4 63 51 00 08                            mov    BYTE PTR ds:0x5163e4,0x8
  00489f1a: 85 f6                                           test   esi,esi
  00489f1c: 74 0a                                           je     0x489f28
  00489f1e: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00489f20: 89 0d d0 63 51 00                               mov    DWORD PTR ds:0x5163d0,ecx
  00489f26: eb 0b                                           jmp    0x489f33
  00489f28: be 01 00 00 00                                  mov    esi,0x1
  00489f2d: 89 35 f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,esi
  00489f33: 85 c9                                           test   ecx,ecx
  00489f35: 74 14                                           je     0x489f4b
  00489f37: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00489f3a: 38 50 04                                        cmp    BYTE PTR [eax+0x4],dl
  00489f3d: 74 04                                           je     0x489f43
  00489f3f: 84 d2                                           test   dl,dl
  00489f41: 75 d7                                           jne    0x489f1a
  00489f43: 66 39 78 06                                     cmp    WORD PTR [eax+0x6],di
  00489f47: 74 3b                                           je     0x489f84
  00489f49: eb cf                                           jmp    0x489f1a
  00489f4b: 85 f6                                           test   esi,esi
  00489f4d: 74 07                                           je     0x489f56
  00489f4f: c6 05 e4 63 51 00 07                            mov    BYTE PTR ds:0x5163e4,0x7
  00489f56: c7 05 f0 63 51 00 00 00 00 00                   mov    DWORD PTR ds:0x5163f0,0x0
  00489f60: e8 9b a2 fa ff                                  call   0x434200
  00489f65: 8b 10                                           mov    edx,DWORD PTR [eax]
  00489f67: 68 b4 63 51 00                                  push   0x5163b4
  00489f6c: 8b c8                                           mov    ecx,eax
  00489f6e: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00489f71: 68 b8 63 51 00                                  push   0x5163b8
  00489f76: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00489f7c: 33 c0                                           xor    eax,eax
  00489f7e: 5f                                              pop    edi
  00489f7f: 5e                                              pop    esi
  00489f80: 8b e5                                           mov    esp,ebp
  00489f82: 5d                                              pop    ebp
  00489f83: c3                                              ret
  00489f84: 8b 38                                           mov    edi,DWORD PTR [eax]
  00489f86: 83 c9 ff                                        or     ecx,0xffffffff
  00489f89: 33 c0                                           xor    eax,eax
  00489f8b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00489f8d: f7 d1                                           not    ecx
  00489f8f: 2b f9                                           sub    edi,ecx
  00489f91: 8b d1                                           mov    edx,ecx
  00489f93: c1 e9 02                                        shr    ecx,0x2
  00489f96: 8b f7                                           mov    esi,edi
  00489f98: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00489f9b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00489f9d: 8b ca                                           mov    ecx,edx
  00489f9f: 83 e1 03                                        and    ecx,0x3
  00489fa2: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00489fa4: e8 57 a2 fa ff                                  call   0x434200
  00489fa9: 8b 10                                           mov    edx,DWORD PTR [eax]
  00489fab: 68 b4 63 51 00                                  push   0x5163b4
  00489fb0: 8b c8                                           mov    ecx,eax
  00489fb2: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00489fb5: 68 b8 63 51 00                                  push   0x5163b8
  00489fba: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00489fc0: 5f                                              pop    edi
  00489fc1: 5e                                              pop    esi
  00489fc2: b8 01 00 00 00                                  mov    eax,0x1
  00489fc7: 8b e5                                           mov    esp,ebp
  00489fc9: 5d                                              pop    ebp
  00489fca: c3                                              ret

; ===== 0x00489FD0 ?UnRegisterUnits@Unit@@SAXXZ =====
  00489fd0: 8b 15 d4 63 51 00                               mov    edx,DWORD PTR ds:0x5163d4
  00489fd6: 56                                              push   esi
  00489fd7: 57                                              push   edi
  00489fd8: 33 ff                                           xor    edi,edi
  00489fda: 8b c2                                           mov    eax,edx
  00489fdc: 33 c9                                           xor    ecx,ecx
  00489fde: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  00489fe3: 89 0d f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,ecx
  00489fe9: c6 05 e4 63 51 00 08                            mov    BYTE PTR ds:0x5163e4,0x8
  00489ff0: 3b cf                                           cmp    ecx,edi
  00489ff2: 74 09                                           je     0x489ffd
  00489ff4: 8b 00                                           mov    eax,DWORD PTR [eax]
  00489ff6: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  00489ffb: eb 0b                                           jmp    0x48a008
  00489ffd: b9 01 00 00 00                                  mov    ecx,0x1
  0048a002: 89 0d f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,ecx
  0048a008: 3b c7                                           cmp    eax,edi
  0048a00a: 0f 84 0f 01 00 00                               je     0x48a11f
  0048a010: ff 0d e8 63 51 00                               dec    DWORD PTR ds:0x5163e8
  0048a016: 8b 0d d8 63 51 00                               mov    ecx,DWORD PTR ds:0x5163d8
  0048a01c: 3b c1                                           cmp    eax,ecx
  0048a01e: a3 dc 63 51 00                                  mov    ds:0x5163dc,eax
  0048a023: 74 4d                                           je     0x48a072
  0048a025: 3b c2                                           cmp    eax,edx
  0048a027: 74 45                                           je     0x48a06e
  0048a029: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0048a02b: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0048a02e: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0048a031: a1 d0 63 51 00                                  mov    eax,ds:0x5163d0
  0048a036: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048a039: 8b 10                                           mov    edx,DWORD PTR [eax]
  0048a03b: 89 11                                           mov    DWORD PTR [ecx],edx
  0048a03d: a1 f0 63 51 00                                  mov    eax,ds:0x5163f0
  0048a042: 83 f8 01                                        cmp    eax,0x1
  0048a045: 75 13                                           jne    0x48a05a
  0048a047: a1 d0 63 51 00                                  mov    eax,ds:0x5163d0
  0048a04c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048a04f: 89 0d d0 63 51 00                               mov    DWORD PTR ds:0x5163d0,ecx
  0048a055: e9 84 00 00 00                                  jmp    0x48a0de
  0048a05a: 83 f8 02                                        cmp    eax,0x2
  0048a05d: 75 7f                                           jne    0x48a0de
  0048a05f: 8b 15 d0 63 51 00                               mov    edx,DWORD PTR ds:0x5163d0
  0048a065: 8b 02                                           mov    eax,DWORD PTR [edx]
  0048a067: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  0048a06c: eb 70                                           jmp    0x48a0de
  0048a06e: 3b c1                                           cmp    eax,ecx
  0048a070: 75 2a                                           jne    0x48a09c
  0048a072: 3b c2                                           cmp    eax,edx
  0048a074: 74 2a                                           je     0x48a0a0
  0048a076: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048a079: 89 39                                           mov    DWORD PTR [ecx],edi
  0048a07b: a1 d0 63 51 00                                  mov    eax,ds:0x5163d0
  0048a080: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0048a083: 89 15 d8 63 51 00                               mov    DWORD PTR ds:0x5163d8,edx
  0048a089: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0048a08c: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  0048a091: 83 3d f0 63 51 00 02                            cmp    DWORD PTR ds:0x5163f0,0x2
  0048a098: 75 44                                           jne    0x48a0de
  0048a09a: eb 3c                                           jmp    0x48a0d8
  0048a09c: 3b c2                                           cmp    eax,edx
  0048a09e: 75 26                                           jne    0x48a0c6
  0048a0a0: 3b c1                                           cmp    eax,ecx
  0048a0a2: 74 22                                           je     0x48a0c6
  0048a0a4: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0048a0a6: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0048a0a9: 8b 15 d0 63 51 00                               mov    edx,DWORD PTR ds:0x5163d0
  0048a0af: 8b 02                                           mov    eax,DWORD PTR [edx]
  0048a0b1: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  0048a0b6: a3 d4 63 51 00                                  mov    ds:0x5163d4,eax
  0048a0bb: 83 3d f0 63 51 00 01                            cmp    DWORD PTR ds:0x5163f0,0x1
  0048a0c2: 75 1a                                           jne    0x48a0de
  0048a0c4: eb 12                                           jmp    0x48a0d8
  0048a0c6: 89 3d d0 63 51 00                               mov    DWORD PTR ds:0x5163d0,edi
  0048a0cc: 89 3d d4 63 51 00                               mov    DWORD PTR ds:0x5163d4,edi
  0048a0d2: 89 3d d8 63 51 00                               mov    DWORD PTR ds:0x5163d8,edi
  0048a0d8: 89 3d f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,edi
  0048a0de: a1 dc 63 51 00                                  mov    eax,ds:0x5163dc
  0048a0e3: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  0048a0e6: 3b f7                                           cmp    esi,edi
  0048a0e8: 74 10                                           je     0x48a0fa
  0048a0ea: 8b ce                                           mov    ecx,esi
  0048a0ec: e8 7f 68 00 00                                  call   0x490970
  0048a0f1: 56                                              push   esi
  0048a0f2: e8 69 7f fb ff                                  call   0x442060
  0048a0f7: 83 c4 04                                        add    esp,0x4
  0048a0fa: 8b 0d dc 63 51 00                               mov    ecx,DWORD PTR ds:0x5163dc
  0048a100: 51                                              push   ecx
  0048a101: e8 5a 7f fb ff                                  call   0x442060
  0048a106: a1 d0 63 51 00                                  mov    eax,ds:0x5163d0
  0048a10b: 8b 15 d4 63 51 00                               mov    edx,DWORD PTR ds:0x5163d4
  0048a111: 8b 0d f0 63 51 00                               mov    ecx,DWORD PTR ds:0x5163f0
  0048a117: 83 c4 04                                        add    esp,0x4
  0048a11a: e9 d1 fe ff ff                                  jmp    0x489ff0
  0048a11f: 3b cf                                           cmp    ecx,edi
  0048a121: 74 07                                           je     0x48a12a
  0048a123: c6 05 e4 63 51 00 07                            mov    BYTE PTR ds:0x5163e4,0x7
  0048a12a: 89 3d f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,edi
  0048a130: 5f                                              pop    edi
  0048a131: 5e                                              pop    esi
  0048a132: c3                                              ret

; ===== 0x0048A140 ?UnregisterUnit@Unit@@SAXG@Z =====
  0048a140: 55                                              push   ebp
  0048a141: 8b ec                                           mov    ebp,esp
  0048a143: 8b 15 d4 63 51 00                               mov    edx,DWORD PTR ds:0x5163d4
  0048a149: 53                                              push   ebx
  0048a14a: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0048a14d: 56                                              push   esi
  0048a14e: 57                                              push   edi
  0048a14f: 33 ff                                           xor    edi,edi
  0048a151: 8b c2                                           mov    eax,edx
  0048a153: 33 c9                                           xor    ecx,ecx
  0048a155: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  0048a15a: 89 0d f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,ecx
  0048a160: c6 05 e4 63 51 00 08                            mov    BYTE PTR ds:0x5163e4,0x8
  0048a167: 3b cf                                           cmp    ecx,edi
  0048a169: 74 09                                           je     0x48a174
  0048a16b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0048a16d: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  0048a172: eb 0b                                           jmp    0x48a17f
  0048a174: b9 01 00 00 00                                  mov    ecx,0x1
  0048a179: 89 0d f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,ecx
  0048a17f: 3b c7                                           cmp    eax,edi
  0048a181: 0f 84 18 01 00 00                               je     0x48a29f
  0048a187: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  0048a18a: 66 39 5e 06                                     cmp    WORD PTR [esi+0x6],bx
  0048a18e: 75 d7                                           jne    0x48a167
  0048a190: ff 0d e8 63 51 00                               dec    DWORD PTR ds:0x5163e8
  0048a196: 8b 0d d8 63 51 00                               mov    ecx,DWORD PTR ds:0x5163d8
  0048a19c: 3b c1                                           cmp    eax,ecx
  0048a19e: a3 dc 63 51 00                                  mov    ds:0x5163dc,eax
  0048a1a3: 74 4d                                           je     0x48a1f2
  0048a1a5: 3b c2                                           cmp    eax,edx
  0048a1a7: 74 45                                           je     0x48a1ee
  0048a1a9: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0048a1ab: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0048a1ae: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0048a1b1: a1 d0 63 51 00                                  mov    eax,ds:0x5163d0
  0048a1b6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048a1b9: 8b 10                                           mov    edx,DWORD PTR [eax]
  0048a1bb: 89 11                                           mov    DWORD PTR [ecx],edx
  0048a1bd: a1 f0 63 51 00                                  mov    eax,ds:0x5163f0
  0048a1c2: 83 f8 01                                        cmp    eax,0x1
  0048a1c5: 75 13                                           jne    0x48a1da
  0048a1c7: a1 d0 63 51 00                                  mov    eax,ds:0x5163d0
  0048a1cc: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048a1cf: 89 0d d0 63 51 00                               mov    DWORD PTR ds:0x5163d0,ecx
  0048a1d5: e9 84 00 00 00                                  jmp    0x48a25e
  0048a1da: 83 f8 02                                        cmp    eax,0x2
  0048a1dd: 75 7f                                           jne    0x48a25e
  0048a1df: 8b 15 d0 63 51 00                               mov    edx,DWORD PTR ds:0x5163d0
  0048a1e5: 8b 02                                           mov    eax,DWORD PTR [edx]
  0048a1e7: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  0048a1ec: eb 70                                           jmp    0x48a25e
  0048a1ee: 3b c1                                           cmp    eax,ecx
  0048a1f0: 75 2a                                           jne    0x48a21c
  0048a1f2: 3b c2                                           cmp    eax,edx
  0048a1f4: 74 2a                                           je     0x48a220
  0048a1f6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048a1f9: 89 39                                           mov    DWORD PTR [ecx],edi
  0048a1fb: a1 d0 63 51 00                                  mov    eax,ds:0x5163d0
  0048a200: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0048a203: 89 15 d8 63 51 00                               mov    DWORD PTR ds:0x5163d8,edx
  0048a209: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0048a20c: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  0048a211: 83 3d f0 63 51 00 02                            cmp    DWORD PTR ds:0x5163f0,0x2
  0048a218: 75 44                                           jne    0x48a25e
  0048a21a: eb 3c                                           jmp    0x48a258
  0048a21c: 3b c2                                           cmp    eax,edx
  0048a21e: 75 26                                           jne    0x48a246
  0048a220: 3b c1                                           cmp    eax,ecx
  0048a222: 74 22                                           je     0x48a246
  0048a224: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0048a226: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0048a229: 8b 15 d0 63 51 00                               mov    edx,DWORD PTR ds:0x5163d0
  0048a22f: 8b 02                                           mov    eax,DWORD PTR [edx]
  0048a231: a3 d0 63 51 00                                  mov    ds:0x5163d0,eax
  0048a236: a3 d4 63 51 00                                  mov    ds:0x5163d4,eax
  0048a23b: 83 3d f0 63 51 00 01                            cmp    DWORD PTR ds:0x5163f0,0x1
  0048a242: 75 1a                                           jne    0x48a25e
  0048a244: eb 12                                           jmp    0x48a258
  0048a246: 89 3d d0 63 51 00                               mov    DWORD PTR ds:0x5163d0,edi
  0048a24c: 89 3d d4 63 51 00                               mov    DWORD PTR ds:0x5163d4,edi
  0048a252: 89 3d d8 63 51 00                               mov    DWORD PTR ds:0x5163d8,edi
  0048a258: 89 3d f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,edi
  0048a25e: a1 dc 63 51 00                                  mov    eax,ds:0x5163dc
  0048a263: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  0048a266: 3b f7                                           cmp    esi,edi
  0048a268: 74 10                                           je     0x48a27a
  0048a26a: 8b ce                                           mov    ecx,esi
  0048a26c: e8 ff 66 00 00                                  call   0x490970
  0048a271: 56                                              push   esi
  0048a272: e8 e9 7d fb ff                                  call   0x442060
  0048a277: 83 c4 04                                        add    esp,0x4
  0048a27a: 8b 0d dc 63 51 00                               mov    ecx,DWORD PTR ds:0x5163dc
  0048a280: 51                                              push   ecx
  0048a281: e8 da 7d fb ff                                  call   0x442060
  0048a286: 8b 15 d4 63 51 00                               mov    edx,DWORD PTR ds:0x5163d4
  0048a28c: a1 d0 63 51 00                                  mov    eax,ds:0x5163d0
  0048a291: 8b 0d f0 63 51 00                               mov    ecx,DWORD PTR ds:0x5163f0
  0048a297: 83 c4 04                                        add    esp,0x4
  0048a29a: e9 c8 fe ff ff                                  jmp    0x48a167
  0048a29f: 3b cf                                           cmp    ecx,edi
  0048a2a1: 74 07                                           je     0x48a2aa
  0048a2a3: c6 05 e4 63 51 00 07                            mov    BYTE PTR ds:0x5163e4,0x7
  0048a2aa: 81 e3 ff ff 00 00                               and    ebx,0xffff
  0048a2b0: 89 3c 9d f4 63 51 00                            mov    DWORD PTR [ebx*4+0x5163f4],edi
  0048a2b7: 89 3d f0 63 51 00                               mov    DWORD PTR ds:0x5163f0,edi
  0048a2bd: 5f                                              pop    edi
  0048a2be: 5e                                              pop    esi
  0048a2bf: 5b                                              pop    ebx
  0048a2c0: 5d                                              pop    ebp
  0048a2c1: c3                                              ret

; ===== 0x0048A880 ?OnAttack@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a880: c2 14 00                                        ret    0x14

; ===== 0x0048A890 ?OnAttacked@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a890: c2 14 00                                        ret    0x14

; ===== 0x0048A8A0 ?OnDisturbed@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a8a0: c2 14 00                                        ret    0x14

; ===== 0x0048A8B0 ?OnUse@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a8b0: c2 14 00                                        ret    0x14

; ===== 0x0048A8C0 ?OnTimer@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a8c0: c2 14 00                                        ret    0x14

; ===== 0x0048A8D0 ?OnTalk@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a8d0: c2 14 00                                        ret    0x14

; ===== 0x0048A8E0 ?OnQuerySchedule@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a8e0: c2 14 00                                        ret    0x14

; ===== 0x0048A8F0 ?OnInitialise@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a8f0: c2 14 00                                        ret    0x14

; ===== 0x0048A900 ?OnView@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a900: c2 14 00                                        ret    0x14

; ===== 0x0048A910 ?OnNoMoreShots@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a910: c2 14 00                                        ret    0x14

; ===== 0x0048A920 ?OnMove@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a920: c2 14 00                                        ret    0x14

; ===== 0x0048A930 ?OnDeath@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a930: c2 14 00                                        ret    0x14

; ===== 0x0048A940 ?OnHit@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a940: c2 14 00                                        ret    0x14

; ===== 0x0048A950 ?OnEquip@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a950: c2 14 00                                        ret    0x14

; ===== 0x0048A960 ?OnUnequip@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a960: c2 14 00                                        ret    0x14

; ===== 0x0048A970 ?OnServerInitialisation@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1G@Z =====
  0048a970: c2 18 00                                        ret    0x18

; ===== 0x0048A980 ?OnServerTermination@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a980: c2 14 00                                        ret    0x14

; ===== 0x0048A990 ?OnNPCDataExchange@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a990: c2 14 00                                        ret    0x14

; ===== 0x0048A9A0 ?OnGetUnitStructure@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a9a0: c2 14 00                                        ret    0x14

; ===== 0x0048A9B0 ?OnPopup@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a9b0: c2 14 00                                        ret    0x14

; ===== 0x0048A9C0 ?OnAttackHit@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a9c0: c2 14 00                                        ret    0x14

; ===== 0x0048A9D0 ?OnDestroy@BaseReferenceMessages@@MAEXPAVUnit@@00PAX1@Z =====
  0048a9d0: c2 14 00                                        ret    0x14

; ===== 0x0048A9E0 ??0Unit@@QAE@_N@Z =====
  0048a9e0: 55                                              push   ebp
  0048a9e1: 8b ec                                           mov    ebp,esp
  0048a9e3: 6a ff                                           push   0xffffffff
  0048a9e5: 68 ef a5 4d 00                                  push   0x4da5ef
  0048a9ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0048a9f0: 50                                              push   eax
  0048a9f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0048a9f8: 83 ec 08                                        sub    esp,0x8
  0048a9fb: 53                                              push   ebx
  0048a9fc: 56                                              push   esi
  0048a9fd: 8b f1                                           mov    esi,ecx
  0048a9ff: 57                                              push   edi
  0048aa00: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0048aa03: e8 c8 ab fa ff                                  call   0x4355d0
  0048aa08: 8d 46 38                                        lea    eax,[esi+0x38]
  0048aa0b: 33 db                                           xor    ebx,ebx
  0048aa0d: 83 cf ff                                        or     edi,0xffffffff
  0048aa10: 50                                              push   eax
  0048aa11: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0048aa14: c7 46 30 8c e5 4d 00                            mov    DWORD PTR [esi+0x30],0x4de58c
  0048aa1b: 89 7e 34                                        mov    DWORD PTR [esi+0x34],edi
  0048aa1e: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0048aa24: 8a 4d f3                                        mov    cl,BYTE PTR [ebp-0xd]
  0048aa27: c7 46 50 38 f8 4d 00                            mov    DWORD PTR [esi+0x50],0x4df838
  0048aa2e: 6a 24                                           push   0x24
  0048aa30: 88 8e 94 00 00 00                               mov    BYTE PTR [esi+0x94],cl
  0048aa36: e8 b5 75 fb ff                                  call   0x441ff0
  0048aa3b: 89 00                                           mov    DWORD PTR [eax],eax
  0048aa3d: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0048aa40: 89 86 98 00 00 00                               mov    DWORD PTR [esi+0x98],eax
  0048aa46: 89 9e 9c 00 00 00                               mov    DWORD PTR [esi+0x9c],ebx
  0048aa4c: 8a 55 f3                                        mov    dl,BYTE PTR [ebp-0xd]
  0048aa4f: 6a 14                                           push   0x14
  0048aa51: 88 96 a0 00 00 00                               mov    BYTE PTR [esi+0xa0],dl
  0048aa57: e8 94 75 fb ff                                  call   0x441ff0
  0048aa5c: 89 00                                           mov    DWORD PTR [eax],eax
  0048aa5e: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0048aa61: 83 c4 08                                        add    esp,0x8
  0048aa64: 89 86 a4 00 00 00                               mov    DWORD PTR [esi+0xa4],eax
  0048aa6a: 89 9e a8 00 00 00                               mov    DWORD PTR [esi+0xa8],ebx
  0048aa70: c7 06 58 f6 4d 00                               mov    DWORD PTR [esi],0x4df658
  0048aa76: 56                                              push   esi
  0048aa77: 8d 4e 50                                        lea    ecx,[esi+0x50]
  0048aa7a: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0048aa7e: c7 46 30 48 f6 4d 00                            mov    DWORD PTR [esi+0x30],0x4df648
  0048aa85: e8 f6 50 00 00                                  call   0x48fb80
  0048aa8a: b8 01 00 00 00                                  mov    eax,0x1
  0048aa8f: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  0048aa92: 88 9e b0 00 00 00                               mov    BYTE PTR [esi+0xb0],bl
  0048aa98: 88 9e ac 00 00 00                               mov    BYTE PTR [esi+0xac],bl
  0048aa9e: 89 be cc 00 00 00                               mov    DWORD PTR [esi+0xcc],edi
  0048aaa4: 89 be c8 00 00 00                               mov    DWORD PTR [esi+0xc8],edi
  0048aaaa: 89 be c4 00 00 00                               mov    DWORD PTR [esi+0xc4],edi
  0048aab0: 89 9e c0 00 00 00                               mov    DWORD PTR [esi+0xc0],ebx
  0048aab6: 89 9e bc 00 00 00                               mov    DWORD PTR [esi+0xbc],ebx
  0048aabc: 89 9e b8 00 00 00                               mov    DWORD PTR [esi+0xb8],ebx
  0048aac2: c6 86 ae 00 00 00 32                            mov    BYTE PTR [esi+0xae],0x32
  0048aac9: 88 9e ad 00 00 00                               mov    BYTE PTR [esi+0xad],bl
  0048aacf: 6a 44                                           push   0x44
  0048aad1: 88 86 ec 00 00 00                               mov    BYTE PTR [esi+0xec],al
  0048aad7: 89 9e b4 00 00 00                               mov    DWORD PTR [esi+0xb4],ebx
  0048aadd: 89 9e e8 00 00 00                               mov    DWORD PTR [esi+0xe8],ebx
  0048aae3: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  0048aae6: 89 be d8 00 00 00                               mov    DWORD PTR [esi+0xd8],edi
  0048aaec: 89 be d4 00 00 00                               mov    DWORD PTR [esi+0xd4],edi
  0048aaf2: 89 be d0 00 00 00                               mov    DWORD PTR [esi+0xd0],edi
  0048aaf8: 89 be e4 00 00 00                               mov    DWORD PTR [esi+0xe4],edi
  0048aafe: 89 be e0 00 00 00                               mov    DWORD PTR [esi+0xe0],edi
  0048ab04: 89 be dc 00 00 00                               mov    DWORD PTR [esi+0xdc],edi
  0048ab0a: 89 9e f4 00 00 00                               mov    DWORD PTR [esi+0xf4],ebx
  0048ab10: e8 db 74 fb ff                                  call   0x441ff0
  0048ab15: 8b f8                                           mov    edi,eax
  0048ab17: 83 c4 04                                        add    esp,0x4
  0048ab1a: 3b fb                                           cmp    edi,ebx
  0048ab1c: 74 35                                           je     0x48ab53
  0048ab1e: 8d 47 08                                        lea    eax,[edi+0x8]
  0048ab21: 50                                              push   eax
  0048ab22: c7 07 8c e5 4d 00                               mov    DWORD PTR [edi],0x4de58c
  0048ab28: c7 47 04 ff ff ff ff                            mov    DWORD PTR [edi+0x4],0xffffffff
  0048ab2f: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0048ab35: 89 5f 24                                        mov    DWORD PTR [edi+0x24],ebx
  0048ab38: 89 5f 28                                        mov    DWORD PTR [edi+0x28],ebx
  0048ab3b: 89 5f 2c                                        mov    DWORD PTR [edi+0x2c],ebx
  0048ab3e: 89 5f 30                                        mov    DWORD PTR [edi+0x30],ebx
  0048ab41: c7 07 38 f6 4d 00                               mov    DWORD PTR [edi],0x4df638
  0048ab47: 89 5f 40                                        mov    DWORD PTR [edi+0x40],ebx
  0048ab4a: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  0048ab4e: 89 5f 38                                        mov    DWORD PTR [edi+0x38],ebx
  0048ab51: eb 02                                           jmp    0x48ab55
  0048ab53: 33 ff                                           xor    edi,edi
  0048ab55: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048ab58: 89 be f8 00 00 00                               mov    DWORD PTR [esi+0xf8],edi
  0048ab5e: 88 9e f1 00 00 00                               mov    BYTE PTR [esi+0xf1],bl
  0048ab64: 88 9e f0 00 00 00                               mov    BYTE PTR [esi+0xf0],bl
  0048ab6a: 88 9e af 00 00 00                               mov    BYTE PTR [esi+0xaf],bl
  0048ab70: 66 89 9e ee 00 00 00                            mov    WORD PTR [esi+0xee],bx
  0048ab77: 88 5e 73                                        mov    BYTE PTR [esi+0x73],bl
  0048ab7a: 66 89 5e 70                                     mov    WORD PTR [esi+0x70],bx
  0048ab7e: 66 89 5e 6e                                     mov    WORD PTR [esi+0x6e],bx
  0048ab82: 66 89 5e 6c                                     mov    WORD PTR [esi+0x6c],bx
  0048ab86: 66 89 5e 6a                                     mov    WORD PTR [esi+0x6a],bx
  0048ab8a: 66 89 5e 68                                     mov    WORD PTR [esi+0x68],bx
  0048ab8e: 66 89 5e 66                                     mov    WORD PTR [esi+0x66],bx
  0048ab92: 66 89 5e 62                                     mov    WORD PTR [esi+0x62],bx
  0048ab96: 66 89 5e 64                                     mov    WORD PTR [esi+0x64],bx
  0048ab9a: 66 89 5e 60                                     mov    WORD PTR [esi+0x60],bx
  0048ab9e: 88 5e 5a                                        mov    BYTE PTR [esi+0x5a],bl
  0048aba1: 89 9e 00 01 00 00                               mov    DWORD PTR [esi+0x100],ebx
  0048aba7: 89 9e fc 00 00 00                               mov    DWORD PTR [esi+0xfc],ebx
  0048abad: 89 9e 88 00 00 00                               mov    DWORD PTR [esi+0x88],ebx
  0048abb3: 89 9e 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],ebx
  0048abb9: 89 9e 90 00 00 00                               mov    DWORD PTR [esi+0x90],ebx
  0048abbf: 5f                                              pop    edi
  0048abc0: 8b c6                                           mov    eax,esi
  0048abc2: 5e                                              pop    esi
  0048abc3: 5b                                              pop    ebx
  0048abc4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048abcb: 8b e5                                           mov    esp,ebp
  0048abcd: 5d                                              pop    ebp
  0048abce: c2 04 00                                        ret    0x4

; ===== 0x0048AC70 ??1Unit@@MAE@XZ =====
  0048ac70: 55                                              push   ebp
  0048ac71: 8b ec                                           mov    ebp,esp
  0048ac73: 6a ff                                           push   0xffffffff
  0048ac75: 68 4b a6 4d 00                                  push   0x4da64b
  0048ac7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0048ac80: 50                                              push   eax
  0048ac81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0048ac88: 83 ec 0c                                        sub    esp,0xc
  0048ac8b: 53                                              push   ebx
  0048ac8c: 56                                              push   esi
  0048ac8d: 57                                              push   edi
  0048ac8e: 8b f9                                           mov    edi,ecx
  0048ac90: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0048ac93: c7 07 58 f6 4d 00                               mov    DWORD PTR [edi],0x4df658
  0048ac99: c7 47 30 48 f6 4d 00                            mov    DWORD PTR [edi+0x30],0x4df648
  0048aca0: 80 7f 73 03                                     cmp    BYTE PTR [edi+0x73],0x3
  0048aca4: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  0048acab: 75 09                                           jne    0x48acb6
  0048acad: 57                                              push   edi
  0048acae: e8 ed 2f fc ff                                  call   0x44dca0
  0048acb3: 83 c4 04                                        add    esp,0x4
  0048acb6: 8b 87 f4 00 00 00                               mov    eax,DWORD PTR [edi+0xf4]
  0048acbc: 33 db                                           xor    ebx,ebx
  0048acbe: 3b c3                                           cmp    eax,ebx
  0048acc0: 0f 84 3a 01 00 00                               je     0x48ae00
  0048acc6: 8b 48 24                                        mov    ecx,DWORD PTR [eax+0x24]
  0048acc9: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0048accc: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0048accf: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  0048acd3: 8b 87 f4 00 00 00                               mov    eax,DWORD PTR [edi+0xf4]
  0048acd9: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0048acdc: 74 0a                                           je     0x48ace8
  0048acde: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0048ace1: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0048ace3: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0048ace6: eb 07                                           jmp    0x48acef
  0048ace8: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  0048acef: 39 58 20                                        cmp    DWORD PTR [eax+0x20],ebx
  0048acf2: 0f 84 ec 00 00 00                               je     0x48ade4
  0048acf8: 8b 97 f4 00 00 00                               mov    edx,DWORD PTR [edi+0xf4]
  0048acfe: 8b 42 20                                        mov    eax,DWORD PTR [edx+0x20]
  0048ad01: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0048ad04: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0048ad07: 3b cb                                           cmp    ecx,ebx
  0048ad09: 74 13                                           je     0x48ad1e
  0048ad0b: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  0048ad0e: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0048ad11: 53                                              push   ebx
  0048ad12: 52                                              push   edx
  0048ad13: 53                                              push   ebx
  0048ad14: 53                                              push   ebx
  0048ad15: 57                                              push   edi
  0048ad16: 50                                              push   eax
  0048ad17: 6a 09                                           push   0x9
  0048ad19: ff d1                                           call   ecx
  0048ad1b: 83 c4 1c                                        add    esp,0x1c
  0048ad1e: 8b b7 f4 00 00 00                               mov    esi,DWORD PTR [edi+0xf4]
  0048ad24: 8b 46 38                                        mov    eax,DWORD PTR [esi+0x38]
  0048ad27: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0048ad2a: 48                                              dec    eax
  0048ad2b: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  0048ad2e: 8b c1                                           mov    eax,ecx
  0048ad30: 89 4e 2c                                        mov    DWORD PTR [esi+0x2c],ecx
  0048ad33: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  0048ad36: 3b c1                                           cmp    eax,ecx
  0048ad38: 74 3d                                           je     0x48ad77
  0048ad3a: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0048ad3d: 74 34                                           je     0x48ad73
  0048ad3f: 8b 10                                           mov    edx,DWORD PTR [eax]
  0048ad41: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0048ad44: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0048ad47: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0048ad4a: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048ad4d: 8b 10                                           mov    edx,DWORD PTR [eax]
  0048ad4f: 89 11                                           mov    DWORD PTR [ecx],edx
  0048ad51: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0048ad54: 83 f8 01                                        cmp    eax,0x1
  0048ad57: 75 0b                                           jne    0x48ad64
  0048ad59: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0048ad5c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048ad5f: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0048ad62: eb 63                                           jmp    0x48adc7
  0048ad64: 83 f8 02                                        cmp    eax,0x2
  0048ad67: 75 5e                                           jne    0x48adc7
  0048ad69: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0048ad6c: 8b 02                                           mov    eax,DWORD PTR [edx]
  0048ad6e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0048ad71: eb 54                                           jmp    0x48adc7
  0048ad73: 3b c1                                           cmp    eax,ecx
  0048ad75: 75 23                                           jne    0x48ad9a
  0048ad77: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0048ad7a: 74 23                                           je     0x48ad9f
  0048ad7c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048ad7f: 89 19                                           mov    DWORD PTR [ecx],ebx
  0048ad81: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0048ad84: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0048ad87: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0048ad8a: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0048ad8e: 8b ca                                           mov    ecx,edx
  0048ad90: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0048ad93: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0048ad96: 75 2f                                           jne    0x48adc7
  0048ad98: eb 2a                                           jmp    0x48adc4
  0048ad9a: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0048ad9d: 75 1c                                           jne    0x48adbb
  0048ad9f: 3b c1                                           cmp    eax,ecx
  0048ada1: 74 18                                           je     0x48adbb
  0048ada3: 8b 00                                           mov    eax,DWORD PTR [eax]
  0048ada5: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0048ada8: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0048adab: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0048adad: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0048adb0: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0048adb3: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  0048adb7: 75 0e                                           jne    0x48adc7
  0048adb9: eb 09                                           jmp    0x48adc4
  0048adbb: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  0048adbe: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  0048adc1: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  0048adc4: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0048adc7: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0048adca: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0048adcd: 50                                              push   eax
  0048adce: e8 8d 72 fb ff                                  call   0x442060
  0048add3: 8b 4e 2c                                        mov    ecx,DWORD PTR [esi+0x2c]
  0048add6: 51                                              push   ecx
  0048add7: e8 84 72 fb ff                                  call   0x442060
  0048addc: 83 c4 08                                        add    esp,0x8
  0048addf: e9 ef fe ff ff                                  jmp    0x48acd3
  0048ade4: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0048ade7: 74 04                                           je     0x48aded
  0048ade9: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  0048aded: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0048adf0: 8b 8f f4 00 00 00                               mov    ecx,DWORD PTR [edi+0xf4]
  0048adf6: 3b cb                                           cmp    ecx,ebx
  0048adf8: 74 06                                           je     0x48ae00
  0048adfa: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0048adfc: 6a 01                                           push   0x1
  0048adfe: ff 12                                           call   DWORD PTR [edx]
  0048ae00: 8b 87 f8 00 00 00                               mov    eax,DWORD PTR [edi+0xf8]
  0048ae06: 3b c3                                           cmp    eax,ebx
  0048ae08: 74 57                                           je     0x48ae61
  0048ae0a: 8b 48 24                                        mov    ecx,DWORD PTR [eax+0x24]
  0048ae0d: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0048ae10: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0048ae13: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  0048ae17: be 01 00 00 00                                  mov    esi,0x1
  0048ae1c: 8b 87 f8 00 00 00                               mov    eax,DWORD PTR [edi+0xf8]
  0048ae22: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0048ae25: 74 0a                                           je     0x48ae31
  0048ae27: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0048ae2a: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0048ae2c: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0048ae2f: eb 03                                           jmp    0x48ae34
  0048ae31: 89 70 40                                        mov    DWORD PTR [eax+0x40],esi
  0048ae34: 39 58 20                                        cmp    DWORD PTR [eax+0x20],ebx
  0048ae37: 74 0d                                           je     0x48ae46
  0048ae39: 8b 8f f8 00 00 00                               mov    ecx,DWORD PTR [edi+0xf8]
  0048ae3f: e8 ac 54 00 00                                  call   0x4902f0
  0048ae44: eb d6                                           jmp    0x48ae1c
  0048ae46: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0048ae49: 74 04                                           je     0x48ae4f
  0048ae4b: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  0048ae4f: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0048ae52: 8b 8f f8 00 00 00                               mov    ecx,DWORD PTR [edi+0xf8]
  0048ae58: 3b cb                                           cmp    ecx,ebx
  0048ae5a: 74 05                                           je     0x48ae61
  0048ae5c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0048ae5e: 56                                              push   esi
  0048ae5f: ff 12                                           call   DWORD PTR [edx]
  0048ae61: 8b 87 a4 00 00 00                               mov    eax,DWORD PTR [edi+0xa4]
  0048ae67: 3b c3                                           cmp    eax,ebx
  0048ae69: 8d b7 a0 00 00 00                               lea    esi,[edi+0xa0]
  0048ae6f: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0048ae73: 75 04                                           jne    0x48ae79
  0048ae75: 33 c9                                           xor    ecx,ecx
  0048ae77: eb 02                                           jmp    0x48ae7b
  0048ae79: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0048ae7b: 50                                              push   eax
  0048ae7c: 51                                              push   ecx
  0048ae7d: 8d 45 ec                                        lea    eax,[ebp-0x14]
  0048ae80: 50                                              push   eax
  0048ae81: 8b ce                                           mov    ecx,esi
  0048ae83: e8 28 52 00 00                                  call   0x4900b0
  0048ae88: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048ae8b: 50                                              push   eax
  0048ae8c: e8 cf 71 fb ff                                  call   0x442060
  0048ae91: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0048ae94: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0048ae97: 8b 87 98 00 00 00                               mov    eax,DWORD PTR [edi+0x98]
  0048ae9d: 8d b7 94 00 00 00                               lea    esi,[edi+0x94]
  0048aea3: 83 c4 04                                        add    esp,0x4
  0048aea6: 50                                              push   eax
  0048aea7: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0048aeaa: 51                                              push   ecx
  0048aeab: 8b ce                                           mov    ecx,esi
  0048aead: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0048aeb1: e8 6a 4e 00 00                                  call   0x48fd20
  0048aeb6: 8b 10                                           mov    edx,DWORD PTR [eax]
  0048aeb8: 52                                              push   edx
  0048aeb9: 8d 45 e8                                        lea    eax,[ebp-0x18]
  0048aebc: 50                                              push   eax
  0048aebd: 8b ce                                           mov    ecx,esi
  0048aebf: e8 5c 50 00 00                                  call   0x48ff20
  0048aec4: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048aec7: 50                                              push   eax
  0048aec8: e8 93 71 fb ff                                  call   0x442060
  0048aecd: 83 c4 04                                        add    esp,0x4
  0048aed0: 8b c7                                           mov    eax,edi
  0048aed2: f7 d8                                           neg    eax
  0048aed4: 1b c0                                           sbb    eax,eax
  0048aed6: 8d 4f 30                                        lea    ecx,[edi+0x30]
  0048aed9: 23 c1                                           and    eax,ecx
  0048aedb: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0048aede: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0048aee1: c7 00 8c e5 4d 00                               mov    DWORD PTR [eax],0x4de58c
  0048aee7: 83 c0 08                                        add    eax,0x8
  0048aeea: 50                                              push   eax
  0048aeeb: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  0048aef1: 8b cf                                           mov    ecx,edi
  0048aef3: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0048aefa: e8 41 a7 fa ff                                  call   0x435640
  0048aeff: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048af02: 5f                                              pop    edi
  0048af03: 5e                                              pop    esi
  0048af04: 5b                                              pop    ebx
  0048af05: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048af0c: 8b e5                                           mov    esp,ebp
  0048af0e: 5d                                              pop    ebp
  0048af0f: c3                                              ret

; ===== 0x0048B6B0 ?SetWL@Unit@@UAEXUWorldPos@@@Z =====
  0048b6b0: 55                                              push   ebp
  0048b6b1: 8b ec                                           mov    ebp,esp
  0048b6b3: 8b 81 c4 00 00 00                               mov    eax,DWORD PTR [ecx+0xc4]
  0048b6b9: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0048b6bc: 56                                              push   esi
  0048b6bd: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0048b6c0: 83 f8 ff                                        cmp    eax,0xffffffff
  0048b6c3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0048b6c6: 74 12                                           je     0x48b6da
  0048b6c8: 83 b9 c8 00 00 00 ff                            cmp    DWORD PTR [ecx+0xc8],0xffffffff
  0048b6cf: 74 09                                           je     0x48b6da
  0048b6d1: 83 b9 cc 00 00 00 ff                            cmp    DWORD PTR [ecx+0xcc],0xffffffff
  0048b6d8: 75 12                                           jne    0x48b6ec
  0048b6da: 89 b1 c4 00 00 00                               mov    DWORD PTR [ecx+0xc4],esi
  0048b6e0: 89 91 c8 00 00 00                               mov    DWORD PTR [ecx+0xc8],edx
  0048b6e6: 89 81 cc 00 00 00                               mov    DWORD PTR [ecx+0xcc],eax
  0048b6ec: 81 c1 b8 00 00 00                               add    ecx,0xb8
  0048b6f2: 89 31                                           mov    DWORD PTR [ecx],esi
  0048b6f4: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0048b6f7: 5e                                              pop    esi
  0048b6f8: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0048b6fb: 5d                                              pop    ebp
  0048b6fc: c2 0c 00                                        ret    0xc

; ===== 0x0048B710 ?SetID@Unit@@QAEXI@Z =====
  0048b710: 55                                              push   ebp
  0048b711: 8b ec                                           mov    ebp,esp
  0048b713: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048b716: 89 41 78                                        mov    DWORD PTR [ecx+0x78],eax
  0048b719: 5d                                              pop    ebp
  0048b71a: c2 04 00                                        ret    0x4

; ===== 0x0048B720 ?GetStaticReference@Unit@@UAEIXZ =====
  0048b720: 8b 41 74                                        mov    eax,DWORD PTR [ecx+0x74]
  0048b723: c3                                              ret

; ===== 0x0048B730 ?attack@Unit@@UAEHPAU_ATTACK_STRUCTURE@@PAV1@@Z =====
  0048b730: 55                                              push   ebp
  0048b731: 8b ec                                           mov    ebp,esp
  0048b733: 51                                              push   ecx
  0048b734: 53                                              push   ebx
  0048b735: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0048b738: 56                                              push   esi
  0048b739: 57                                              push   edi
  0048b73a: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0048b73d: 53                                              push   ebx
  0048b73e: 6a 00                                           push   0x0
  0048b740: 57                                              push   edi
  0048b741: 8b f1                                           mov    esi,ecx
  0048b743: 6a 01                                           push   0x1
  0048b745: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0048b74c: e8 bf 19 00 00                                  call   0x48d110
  0048b751: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048b753: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0048b756: 51                                              push   ecx
  0048b757: 57                                              push   edi
  0048b758: 53                                              push   ebx
  0048b759: 6a 00                                           push   0x0
  0048b75b: 56                                              push   esi
  0048b75c: 6a 01                                           push   0x1
  0048b75e: 8b ce                                           mov    ecx,esi
  0048b760: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0048b763: 6a 0a                                           push   0xa
  0048b765: 8b ce                                           mov    ecx,esi
  0048b767: e8 f4 26 00 00                                  call   0x48de60
  0048b76c: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0048b76f: db 45 0c                                        fild   DWORD PTR [ebp+0xc]
  0048b772: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048b775: dc 07                                           fadd   QWORD PTR [edi]
  0048b777: dd 1f                                           fstp   QWORD PTR [edi]
  0048b779: 5f                                              pop    edi
  0048b77a: 5e                                              pop    esi
  0048b77b: 5b                                              pop    ebx
  0048b77c: 8b e5                                           mov    esp,ebp
  0048b77e: 5d                                              pop    ebp
  0048b77f: c2 08 00                                        ret    0x8

; ===== 0x0048B790 ?attacked@Unit@@UAEHPAU_ATTACK_STRUCTURE@@PAV1@@Z =====
  0048b790: 55                                              push   ebp
  0048b791: 8b ec                                           mov    ebp,esp
  0048b793: 53                                              push   ebx
  0048b794: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0048b797: 56                                              push   esi
  0048b798: 57                                              push   edi
  0048b799: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0048b79c: 57                                              push   edi
  0048b79d: 6a 00                                           push   0x0
  0048b79f: 53                                              push   ebx
  0048b7a0: 8b f1                                           mov    esi,ecx
  0048b7a2: 6a 02                                           push   0x2
  0048b7a4: e8 67 19 00 00                                  call   0x48d110
  0048b7a9: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048b7ab: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0048b7ae: 51                                              push   ecx
  0048b7af: 53                                              push   ebx
  0048b7b0: 57                                              push   edi
  0048b7b1: 6a 00                                           push   0x0
  0048b7b3: 56                                              push   esi
  0048b7b4: 6a 02                                           push   0x2
  0048b7b6: 8b ce                                           mov    ecx,esi
  0048b7b8: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0048b7bb: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0048b7be: 5f                                              pop    edi
  0048b7bf: 5e                                              pop    esi
  0048b7c0: 5b                                              pop    ebx
  0048b7c1: 5d                                              pop    ebp
  0048b7c2: c2 08 00                                        ret    0x8

; ===== 0x0048B860 ?GetName@Unit@@UAE?AVCString@@G@Z =====
  0048b860: 55                                              push   ebp
  0048b861: 8b ec                                           mov    ebp,esp
  0048b863: 81 ec 04 01 00 00                               sub    esp,0x104
  0048b869: 0f be 41 73                                     movsx  eax,BYTE PTR [ecx+0x73]
  0048b86d: 53                                              push   ebx
  0048b86e: 33 db                                           xor    ebx,ebx
  0048b870: 83 e8 02                                        sub    eax,0x2
  0048b873: 56                                              push   esi
  0048b874: 57                                              push   edi
  0048b875: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0048b878: 74 3d                                           je     0x48b8b7
  0048b87a: 48                                              dec    eax
  0048b87b: 74 12                                           je     0x48b88f
  0048b87d: 8d 85 fc fe ff ff                               lea    eax,[ebp-0x104]
  0048b883: 88 9d fc fe ff ff                               mov    BYTE PTR [ebp-0x104],bl
  0048b889: 50                                              push   eax
  0048b88a: e9 86 00 00 00                                  jmp    0x48b915
  0048b88f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0048b891: 8d 55 fc                                        lea    edx,[ebp-0x4]
  0048b894: 52                                              push   edx
  0048b895: 53                                              push   ebx
  0048b896: 53                                              push   ebx
  0048b897: 53                                              push   ebx
  0048b898: 53                                              push   ebx
  0048b899: 6a 14                                           push   0x14
  0048b89b: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0048b89e: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0048b8a1: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048b8a4: 3b c3                                           cmp    eax,ebx
  0048b8a6: 74 08                                           je     0x48b8b0
  0048b8a8: 8b 38                                           mov    edi,DWORD PTR [eax]
  0048b8aa: 3b fb                                           cmp    edi,ebx
  0048b8ac: 74 cf                                           je     0x48b87d
  0048b8ae: eb 27                                           jmp    0x48b8d7
  0048b8b0: 68 8c dc 50 00                                  push   0x50dc8c
  0048b8b5: eb 5e                                           jmp    0x48b915
  0048b8b7: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0048b8b9: 8d 45 fc                                        lea    eax,[ebp-0x4]
  0048b8bc: 50                                              push   eax
  0048b8bd: 53                                              push   ebx
  0048b8be: 53                                              push   ebx
  0048b8bf: 53                                              push   ebx
  0048b8c0: 53                                              push   ebx
  0048b8c1: 6a 14                                           push   0x14
  0048b8c3: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0048b8c6: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0048b8c9: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048b8cc: 3b c3                                           cmp    eax,ebx
  0048b8ce: 74 40                                           je     0x48b910
  0048b8d0: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  0048b8d3: 3b fb                                           cmp    edi,ebx
  0048b8d5: 74 a6                                           je     0x48b87d
  0048b8d7: 83 c9 ff                                        or     ecx,0xffffffff
  0048b8da: 33 c0                                           xor    eax,eax
  0048b8dc: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0048b8de: f7 d1                                           not    ecx
  0048b8e0: 2b f9                                           sub    edi,ecx
  0048b8e2: 8b c1                                           mov    eax,ecx
  0048b8e4: c1 e9 02                                        shr    ecx,0x2
  0048b8e7: 8d 95 fc fe ff ff                               lea    edx,[ebp-0x104]
  0048b8ed: 8b f7                                           mov    esi,edi
  0048b8ef: 8b fa                                           mov    edi,edx
  0048b8f1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0048b8f3: 8b c8                                           mov    ecx,eax
  0048b8f5: 83 e1 03                                        and    ecx,0x3
  0048b8f8: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0048b8fa: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0048b8fd: 51                                              push   ecx
  0048b8fe: 8d 95 fc fe ff ff                               lea    edx,[ebp-0x104]
  0048b904: 52                                              push   edx
  0048b905: e8 36 22 fb ff                                  call   0x43db40
  0048b90a: 83 c4 08                                        add    esp,0x8
  0048b90d: 50                                              push   eax
  0048b90e: eb 05                                           jmp    0x48b915
  0048b910: 68 7c dc 50 00                                  push   0x50dc7c
  0048b915: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0048b918: 8b ce                                           mov    ecx,esi
  0048b91a: e8 45 61 04 00                                  call   0x4d1a64
  0048b91f: 5f                                              pop    edi
  0048b920: 8b c6                                           mov    eax,esi
  0048b922: 5e                                              pop    esi
  0048b923: 5b                                              pop    ebx
  0048b924: 8b e5                                           mov    esp,ebp
  0048b926: 5d                                              pop    ebp
  0048b927: c2 08 00                                        ret    0x8

; ===== 0x0048B930 ?SetName@Unit@@UAEXVCString@@@Z =====
  0048b930: 55                                              push   ebp
  0048b931: 8b ec                                           mov    ebp,esp
  0048b933: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0048b936: e8 05 61 04 00                                  call   0x4d1a40
  0048b93b: 5d                                              pop    ebp
  0048b93c: c2 04 00                                        ret    0x4

; ===== 0x0048B940 ?GetAppearance@Unit@@UAEIXZ =====
  0048b940: 33 c0                                           xor    eax,eax
  0048b942: 66 8b 41 7c                                     mov    ax,WORD PTR [ecx+0x7c]
  0048b946: c3                                              ret

; ===== 0x0048B950 ?SetAppearance@Unit@@UAEXI@Z =====
  0048b950: 55                                              push   ebp
  0048b951: 8b ec                                           mov    ebp,esp
  0048b953: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  0048b957: 66 89 41 7c                                     mov    WORD PTR [ecx+0x7c],ax
  0048b95b: 5d                                              pop    ebp
  0048b95c: c2 04 00                                        ret    0x4

; ===== 0x0048B960 ?SetXP@Unit@@UAEX_J@Z =====
  0048b960: c2 08 00                                        ret    0x8

; ===== 0x0048B970 ?GetXP@Unit@@UAE_JXZ =====
  0048b970: 33 c0                                           xor    eax,eax
  0048b972: 33 d2                                           xor    edx,edx
  0048b974: c3                                              ret

; ===== 0x0048B980 ?GetBackpack@Unit@@UAEPAV?$TemplateList@VUnit@@@@XZ =====
  0048b980: 33 c0                                           xor    eax,eax
  0048b982: c3                                              ret

; ===== 0x0048B990 ?SetBackpack@Unit@@UAEXPAV?$TemplateList@VUnit@@@@@Z =====
  0048b990: c2 04 00                                        ret    0x4

; ===== 0x0048B9A0 ?GetEquipped@Unit@@UAEPAV?$TemplateList@VUnit@@@@XZ =====
  0048b9a0: 33 c0                                           xor    eax,eax
  0048b9a2: c3                                              ret

; ===== 0x0048B9B0 ?SetEquipped@Unit@@UAEXPAV?$TemplateList@VUnit@@@@@Z =====
  0048b9b0: c2 04 00                                        ret    0x4

; ===== 0x0048BA40 ?SetDestination@Unit@@UAEXUWorldPos@@@Z =====
  0048ba40: c2 0c 00                                        ret    0xc

; ===== 0x0048BA50 ?MoveUnit@Unit@@UAE?AUWorldPos@@W4MOVE@DIR@@H_N1@Z =====
  0048ba50: 55                                              push   ebp
  0048ba51: 8b ec                                           mov    ebp,esp
  0048ba53: 83 ec 24                                        sub    esp,0x24
  0048ba56: 53                                              push   ebx
  0048ba57: 56                                              push   esi
  0048ba58: 8b f1                                           mov    esi,ecx
  0048ba5a: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  0048ba5d: 8d 5e 30                                        lea    ebx,[esi+0x30]
  0048ba60: 57                                              push   edi
  0048ba61: 8b cb                                           mov    ecx,ebx
  0048ba63: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0048ba66: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048ba68: 8d 45 f4                                        lea    eax,[ebp-0xc]
  0048ba6b: 50                                              push   eax
  0048ba6c: 8b ce                                           mov    ecx,esi
  0048ba6e: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0048ba71: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048ba73: 8d 45 e8                                        lea    eax,[ebp-0x18]
  0048ba76: 50                                              push   eax
  0048ba77: 8b ce                                           mov    ecx,esi
  0048ba79: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0048ba7c: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048ba7e: 6a 00                                           push   0x0
  0048ba80: 68 31 4e 00 00                                  push   0x4e31
  0048ba85: 8b ce                                           mov    ecx,esi
  0048ba87: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0048ba8a: 85 c0                                           test   eax,eax
  0048ba8c: 0f 85 17 01 00 00                               jne    0x48bba9
  0048ba92: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048ba95: 50                                              push   eax
  0048ba96: e8 25 64 fe ff                                  call   0x471ec0
  0048ba9b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0048ba9e: 8b f8                                           mov    edi,eax
  0048baa0: 8d 41 ff                                        lea    eax,[ecx-0x1]
  0048baa3: 83 c4 04                                        add    esp,0x4
  0048baa6: 83 f8 07                                        cmp    eax,0x7
  0048baa9: 77 37                                           ja     0x48bae2
  0048baab: ff 24 85 e4 bb 48 00                            jmp    DWORD PTR [eax*4+0x48bbe4]
  0048bae2: 8a 46 59                                        mov    al,BYTE PTR [esi+0x59]
  0048bae5: 8a 55 14                                        mov    dl,BYTE PTR [ebp+0x14]
  0048bae8: 84 c0                                           test   al,al
  0048baea: 0f 94 c0                                        sete   al
  0048baed: 84 d2                                           test   dl,dl
  0048baef: 88 46 59                                        mov    BYTE PTR [esi+0x59],al
  0048baf2: c6 45 0c 01                                     mov    BYTE PTR [ebp+0xc],0x1
  0048baf6: 74 03                                           je     0x48bafb
  0048baf8: 88 45 0c                                        mov    BYTE PTR [ebp+0xc],al
  0048bafb: 8a 45 18                                        mov    al,BYTE PTR [ebp+0x18]
  0048bafe: 84 c0                                           test   al,al
  0048bb00: 75 04                                           jne    0x48bb06
  0048bb02: c6 45 0c 00                                     mov    BYTE PTR [ebp+0xc],0x0
  0048bb06: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0048bb09: 8b 46 78                                        mov    eax,DWORD PTR [esi+0x78]
  0048bb0c: 52                                              push   edx
  0048bb0d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0048bb10: 52                                              push   edx
  0048bb11: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  0048bb14: 51                                              push   ecx
  0048bb15: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048bb18: 50                                              push   eax
  0048bb19: 83 ec 0c                                        sub    esp,0xc
  0048bb1c: 8b c4                                           mov    eax,esp
  0048bb1e: 89 08                                           mov    DWORD PTR [eax],ecx
  0048bb20: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0048bb23: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0048bb26: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0048bb29: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0048bb2c: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0048bb2f: 83 ec 0c                                        sub    esp,0xc
  0048bb32: 8b d4                                           mov    edx,esp
  0048bb34: 89 02                                           mov    DWORD PTR [edx],eax
  0048bb36: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0048bb39: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0048bb3c: 8b cf                                           mov    ecx,edi
  0048bb3e: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0048bb41: e8 5a 57 02 00                                  call   0x4b12a0
  0048bb46: 85 c0                                           test   eax,eax
  0048bb48: 75 14                                           jne    0x48bb5e
  0048bb4a: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0048bb4d: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0048bb50: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0048bb53: 89 4d f4                                        mov    DWORD PTR [ebp-0xc],ecx
  0048bb56: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  0048bb59: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0048bb5c: eb 5d                                           jmp    0x48bbbb
  0048bb5e: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  0048bb61: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  0048bb64: 56                                              push   esi
  0048bb65: 83 ec 0c                                        sub    esp,0xc
  0048bb68: 8b cc                                           mov    ecx,esp
  0048bb6a: 89 11                                           mov    DWORD PTR [ecx],edx
  0048bb6c: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0048bb6f: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0048bb72: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0048bb75: 8b cf                                           mov    ecx,edi
  0048bb77: e8 34 49 02 00                                  call   0x4b04b0
  0048bb7c: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048bb7e: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0048bb81: 51                                              push   ecx
  0048bb82: 8b ce                                           mov    ecx,esi
  0048bb84: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0048bb87: 8b 10                                           mov    edx,DWORD PTR [eax]
  0048bb89: 6a 00                                           push   0x0
  0048bb8b: 89 55 f4                                        mov    DWORD PTR [ebp-0xc],edx
  0048bb8e: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048bb91: 6a 00                                           push   0x0
  0048bb93: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  0048bb96: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0048bb99: 6a 00                                           push   0x0
  0048bb9b: 6a 0c                                           push   0xc
  0048bb9d: 8b ce                                           mov    ecx,esi
  0048bb9f: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0048bba2: e8 69 15 00 00                                  call   0x48d110
  0048bba7: eb 12                                           jmp    0x48bbbb
  0048bba9: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0048bbac: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0048bbaf: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0048bbb2: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  0048bbb5: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  0048bbb8: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0048bbbb: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0048bbbd: 8b cb                                           mov    ecx,ebx
  0048bbbf: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0048bbc2: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048bbc5: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  0048bbc8: 8b c8                                           mov    ecx,eax
  0048bbca: 89 11                                           mov    DWORD PTR [ecx],edx
  0048bbcc: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  0048bbcf: 5f                                              pop    edi
  0048bbd0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0048bbd3: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0048bbd6: 5e                                              pop    esi
  0048bbd7: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0048bbda: 5b                                              pop    ebx
  0048bbdb: 8b e5                                           mov    esp,ebp
  0048bbdd: 5d                                              pop    ebp
  0048bbde: c2 14 00                                        ret    0x14

; ===== 0x0048BC10 ?GetSpeedExhaust@Unit@@UAEEXZ =====
  0048bc10: 8a 81 ae 00 00 00                               mov    al,BYTE PTR [ecx+0xae]
  0048bc16: 84 c0                                           test   al,al
  0048bc18: 75 07                                           jne    0x48bc21
  0048bc1a: c6 81 ae 00 00 00 01                            mov    BYTE PTR [ecx+0xae],0x1
  0048bc21: 53                                              push   ebx
  0048bc22: 33 db                                           xor    ebx,ebx
  0048bc24: 8a 99 ae 00 00 00                               mov    bl,BYTE PTR [ecx+0xae]
  0048bc2a: b8 c8 00 00 00                                  mov    eax,0xc8
  0048bc2f: 99                                              cdq
  0048bc30: f7 fb                                           idiv   ebx
  0048bc32: 5b                                              pop    ebx
  0048bc33: c3                                              ret

; ===== 0x0048BC40 ?GetSpeed@Unit@@UAEEXZ =====
  0048bc40: 8a 81 ae 00 00 00                               mov    al,BYTE PTR [ecx+0xae]
  0048bc46: c3                                              ret

; ===== 0x0048BC50 ?SetSpeed@Unit@@UAEXE@Z =====
  0048bc50: 55                                              push   ebp
  0048bc51: 8b ec                                           mov    ebp,esp
  0048bc53: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0048bc56: 88 81 ae 00 00 00                               mov    BYTE PTR [ecx+0xae],al
  0048bc5c: 5d                                              pop    ebp
  0048bc5d: c2 04 00                                        ret    0x4

; ===== 0x0048BC60 ?GetAgressivness@Unit@@UAEDXZ =====
  0048bc60: b0 32                                           mov    al,0x32
  0048bc62: c3                                              ret

; ===== 0x0048BC70 ?SetAgressivness@Unit@@UAEXD@Z =====
  0048bc70: c2 04 00                                        ret    0x4

; ===== 0x0048BC80 ?GetClan@Unit@@UAEGXZ =====
  0048bc80: 66 33 c0                                        xor    ax,ax
  0048bc83: c3                                              ret

; ===== 0x0048BC90 ?SetClan@Unit@@UAEXG@Z =====
  0048bc90: c2 04 00                                        ret    0x4

; ===== 0x0048BCA0 ?GetTarget@Unit@@UAEPAV1@XZ =====
  0048bca0: 8b 81 e8 00 00 00                               mov    eax,DWORD PTR [ecx+0xe8]
  0048bca6: c3                                              ret

; ===== 0x0048BCB0 ?SetTarget@Unit@@UAEXPAV1@@Z =====
  0048bcb0: 55                                              push   ebp
  0048bcb1: 8b ec                                           mov    ebp,esp
  0048bcb3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048bcb6: 56                                              push   esi
  0048bcb7: 8b f1                                           mov    esi,ecx
  0048bcb9: 39 86 e8 00 00 00                               cmp    DWORD PTR [esi+0xe8],eax
  0048bcbf: 57                                              push   edi
  0048bcc0: 74 4f                                           je     0x48bd11
  0048bcc2: 85 c0                                           test   eax,eax
  0048bcc4: 74 0d                                           je     0x48bcd3
  0048bcc6: 8a 48 73                                        mov    cl,BYTE PTR [eax+0x73]
  0048bcc9: 80 f9 03                                        cmp    cl,0x3
  0048bccc: 74 43                                           je     0x48bd11
  0048bcce: 80 f9 04                                        cmp    cl,0x4
  0048bcd1: 74 3e                                           je     0x48bd11
  0048bcd3: 89 86 e8 00 00 00                               mov    DWORD PTR [esi+0xe8],eax
  0048bcd9: c7 45 08 00 00 00 00                            mov    DWORD PTR [ebp+0x8],0x0
  0048bce0: 50                                              push   eax
  0048bce1: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0048bce4: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0048bce7: 58                                              pop    eax
  0048bce8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048bceb: 8b 7e 78                                        mov    edi,DWORD PTR [esi+0x78]
  0048bcee: 50                                              push   eax
  0048bcef: ff 15 14 e1 4d 00                               call   DWORD PTR ds:0x4de114
  0048bcf5: 8b 8e e8 00 00 00                               mov    ecx,DWORD PTR [esi+0xe8]
  0048bcfb: 50                                              push   eax
  0048bcfc: 51                                              push   ecx
  0048bcfd: 56                                              push   esi
  0048bcfe: 57                                              push   edi
  0048bcff: 68 a0 dc 50 00                                  push   0x50dca0
  0048bd04: 68 00 04 00 00                                  push   0x400
  0048bd09: e8 32 60 fe ff                                  call   0x471d40
  0048bd0e: 83 c4 1c                                        add    esp,0x1c
  0048bd11: 5f                                              pop    edi
  0048bd12: 5e                                              pop    esi
  0048bd13: 5d                                              pop    ebp
  0048bd14: c2 04 00                                        ret    0x4

; ===== 0x0048BD20 ?GetCorpse@Unit@@UAEGXZ =====
  0048bd20: 66 8b 81 84 00 00 00                            mov    ax,WORD PTR [ecx+0x84]
  0048bd27: c3                                              ret

; ===== 0x0048BD30 ?SetCorpse@Unit@@UAEXG@Z =====
  0048bd30: 55                                              push   ebp
  0048bd31: 8b ec                                           mov    ebp,esp
  0048bd33: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  0048bd37: 66 89 81 84 00 00 00                            mov    WORD PTR [ecx+0x84],ax
  0048bd3e: 5d                                              pop    ebp
  0048bd3f: c2 04 00                                        ret    0x4

; ===== 0x0048BD50 ?GetIdleTime@Unit@@UAEIXZ =====
  0048bd50: 33 c0                                           xor    eax,eax
  0048bd52: c3                                              ret

; ===== 0x0048BD60 ?SetIdleTime@Unit@@UAEXI@Z =====
  0048bd60: c2 04 00                                        ret    0x4

; ===== 0x0048BD70 ?SystemDestroy@Unit@@UAEHXZ =====
  0048bd70: 0f be 81 ec 00 00 00                            movsx  eax,BYTE PTR [ecx+0xec]
  0048bd77: c3                                              ret

; ===== 0x0048BD80 ?SetSystemDestroy@Unit@@UAEXH@Z =====
  0048bd80: 55                                              push   ebp
  0048bd81: 8b ec                                           mov    ebp,esp
  0048bd83: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0048bd86: 88 81 ec 00 00 00                               mov    BYTE PTR [ecx+0xec],al
  0048bd8c: 5d                                              pop    ebp
  0048bd8d: c2 04 00                                        ret    0x4

; ===== 0x0048BE00 ?GetTrueMaxMana@Unit@@UAEGXZ =====
  0048be00: 66 b8 01 00                                     mov    ax,0x1
  0048be04: c3                                              ret

; ===== 0x0048BE10 ?GetMaxMana@Unit@@UAEGXZ =====
  0048be10: 56                                              push   esi
  0048be11: 8b f1                                           mov    esi,ecx
  0048be13: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048be15: 57                                              push   edi
  0048be16: ff 90 e4 00 00 00                               call   DWORD PTR [eax+0xe4]
  0048be1c: 6a 1a                                           push   0x1a
  0048be1e: 8b ce                                           mov    ecx,esi
  0048be20: 8b f8                                           mov    edi,eax
  0048be22: e8 39 20 00 00                                  call   0x48de60
  0048be27: 8b cf                                           mov    ecx,edi
  0048be29: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0048be2f: 03 c8                                           add    ecx,eax
  0048be31: 85 c9                                           test   ecx,ecx
  0048be33: 7e 08                                           jle    0x48be3d
  0048be35: 03 f8                                           add    edi,eax
  0048be37: 66 8b c7                                        mov    ax,di
  0048be3a: 5f                                              pop    edi
  0048be3b: 5e                                              pop    esi
  0048be3c: c3                                              ret
  0048be3d: 5f                                              pop    edi
  0048be3e: b8 01 00 00 00                                  mov    eax,0x1
  0048be43: 5e                                              pop    esi
  0048be44: c3                                              ret

; ===== 0x0048BE50 ?SetMaxMana@Unit@@UAEXG@Z =====
  0048be50: c2 04 00                                        ret    0x4

; ===== 0x0048BE60 ?GetMana@Unit@@UAEGXZ =====
  0048be60: 66 33 c0                                        xor    ax,ax
  0048be63: c3                                              ret

; ===== 0x0048BE70 ?SetMana@Unit@@UAEXGH@Z =====
  0048be70: c2 08 00                                        ret    0x8

; ===== 0x0048BE80 ?GetGold@Unit@@UAEHXZ =====
  0048be80: 33 c0                                           xor    eax,eax
  0048be82: c3                                              ret

; ===== 0x0048BE90 ?SetGold@Unit@@UAEXHH@Z =====
  0048be90: c2 08 00                                        ret    0x8

; ===== 0x0048C1B0 ?GetBond@Unit@@UAEPAV1@XZ =====
  0048c1b0: 8b 81 b4 00 00 00                               mov    eax,DWORD PTR [ecx+0xb4]
  0048c1b6: c3                                              ret

; ===== 0x0048C1C0 ?SetBond@Unit@@UAEXPAV1@@Z =====
  0048c1c0: 55                                              push   ebp
  0048c1c1: 8b ec                                           mov    ebp,esp
  0048c1c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048c1c6: 89 81 b4 00 00 00                               mov    DWORD PTR [ecx+0xb4],eax
  0048c1cc: 5d                                              pop    ebp
  0048c1cd: c2 04 00                                        ret    0x4

; ===== 0x0048C1D0 ?IsInLimit@Unit@@UAEHUWorldPos@@@Z =====
  0048c1d0: 55                                              push   ebp
  0048c1d1: 8b ec                                           mov    ebp,esp
  0048c1d3: 8b 91 dc 00 00 00                               mov    edx,DWORD PTR [ecx+0xdc]
  0048c1d9: 83 fa ff                                        cmp    edx,0xffffffff
  0048c1dc: 56                                              push   esi
  0048c1dd: 57                                              push   edi
  0048c1de: 74 3f                                           je     0x48c21f
  0048c1e0: 8b b9 e0 00 00 00                               mov    edi,DWORD PTR [ecx+0xe0]
  0048c1e6: 83 ff ff                                        cmp    edi,0xffffffff
  0048c1e9: 74 34                                           je     0x48c21f
  0048c1eb: 8b 81 d0 00 00 00                               mov    eax,DWORD PTR [ecx+0xd0]
  0048c1f1: 83 f8 ff                                        cmp    eax,0xffffffff
  0048c1f4: 74 29                                           je     0x48c21f
  0048c1f6: 8b 89 d4 00 00 00                               mov    ecx,DWORD PTR [ecx+0xd4]
  0048c1fc: 83 f9 01                                        cmp    ecx,0x1
  0048c1ff: 74 1e                                           je     0x48c21f
  0048c201: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0048c204: 3b f2                                           cmp    esi,edx
  0048c206: 7c 0f                                           jl     0x48c217
  0048c208: 3b f0                                           cmp    esi,eax
  0048c20a: 7f 0b                                           jg     0x48c217
  0048c20c: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0048c20f: 3b c7                                           cmp    eax,edi
  0048c211: 7c 04                                           jl     0x48c217
  0048c213: 3b c1                                           cmp    eax,ecx
  0048c215: 7e 08                                           jle    0x48c21f
  0048c217: 5f                                              pop    edi
  0048c218: 33 c0                                           xor    eax,eax
  0048c21a: 5e                                              pop    esi
  0048c21b: 5d                                              pop    ebp
  0048c21c: c2 0c 00                                        ret    0xc
  0048c21f: 5f                                              pop    edi
  0048c220: b8 01 00 00 00                                  mov    eax,0x1
  0048c225: 5e                                              pop    esi
  0048c226: 5d                                              pop    ebp
  0048c227: c2 0c 00                                        ret    0xc

; ===== 0x0048C230 ?SetLowerLimit@Unit@@UAEXUWorldPos@@@Z =====
  0048c230: 55                                              push   ebp
  0048c231: 8b ec                                           mov    ebp,esp
  0048c233: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048c236: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0048c239: 81 c1 dc 00 00 00                               add    ecx,0xdc
  0048c23f: 89 01                                           mov    DWORD PTR [ecx],eax
  0048c241: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0048c244: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0048c247: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0048c24a: 5d                                              pop    ebp
  0048c24b: c2 0c 00                                        ret    0xc

; ===== 0x0048C250 ?SetUpperLimit@Unit@@UAEXUWorldPos@@@Z =====
  0048c250: 55                                              push   ebp
  0048c251: 8b ec                                           mov    ebp,esp
  0048c253: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048c256: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0048c259: 81 c1 d0 00 00 00                               add    ecx,0xd0
  0048c25f: 89 01                                           mov    DWORD PTR [ecx],eax
  0048c261: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0048c264: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0048c267: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0048c26a: 5d                                              pop    ebp
  0048c26b: c2 0c 00                                        ret    0xc

; ===== 0x0048C270 ?GotoLimit@Unit@@UAEXXZ =====
  0048c270: 55                                              push   ebp
  0048c271: 8b ec                                           mov    ebp,esp
  0048c273: 83 ec 0c                                        sub    esp,0xc
  0048c276: 53                                              push   ebx
  0048c277: 56                                              push   esi
  0048c278: 8b f1                                           mov    esi,ecx
  0048c27a: 8b 8e dc 00 00 00                               mov    ecx,DWORD PTR [esi+0xdc]
  0048c280: 8b 86 d0 00 00 00                               mov    eax,DWORD PTR [esi+0xd0]
  0048c286: 2b c1                                           sub    eax,ecx
  0048c288: 99                                              cdq
  0048c289: 2b c2                                           sub    eax,edx
  0048c28b: 57                                              push   edi
  0048c28c: 8b f8                                           mov    edi,eax
  0048c28e: 8b 86 d4 00 00 00                               mov    eax,DWORD PTR [esi+0xd4]
  0048c294: d1 ff                                           sar    edi,1
  0048c296: 03 f9                                           add    edi,ecx
  0048c298: 8b 8e e0 00 00 00                               mov    ecx,DWORD PTR [esi+0xe0]
  0048c29e: 2b c1                                           sub    eax,ecx
  0048c2a0: 99                                              cdq
  0048c2a1: 2b c2                                           sub    eax,edx
  0048c2a3: 8b d8                                           mov    ebx,eax
  0048c2a5: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048c2a7: d1 fb                                           sar    ebx,1
  0048c2a9: 03 d9                                           add    ebx,ecx
  0048c2ab: 8d 4d f4                                        lea    ecx,[ebp-0xc]
  0048c2ae: 51                                              push   ecx
  0048c2af: 8b ce                                           mov    ecx,esi
  0048c2b1: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0048c2b4: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0048c2b7: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048c2b9: 83 ec 0c                                        sub    esp,0xc
  0048c2bc: 8b cc                                           mov    ecx,esp
  0048c2be: 89 39                                           mov    DWORD PTR [ecx],edi
  0048c2c0: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0048c2c3: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0048c2c6: 8b ce                                           mov    ecx,esi
  0048c2c8: ff 92 94 00 00 00                               call   DWORD PTR [edx+0x94]
  0048c2ce: 5f                                              pop    edi
  0048c2cf: 5e                                              pop    esi
  0048c2d0: 5b                                              pop    ebx
  0048c2d1: 8b e5                                           mov    esp,ebp
  0048c2d3: 5d                                              pop    ebp
  0048c2d4: c3                                              ret

; ===== 0x0048C2E0 ?GetPlayer@Unit@@QAEPAXXZ =====
  0048c2e0: 33 c0                                           xor    eax,eax
  0048c2e2: c3                                              ret

; ===== 0x0048C2F0 ?TrainUnit@Unit@@UAEXXZ =====
  0048c2f0: c3                                              ret

; ===== 0x0048C300 ?GetLevel@Unit@@UAEGXZ =====
  0048c300: 66 8b 81 ee 00 00 00                            mov    ax,WORD PTR [ecx+0xee]
  0048c307: c3                                              ret

; ===== 0x0048C310 ?SetLevel@Unit@@UAEXG@Z =====
  0048c310: 55                                              push   ebp
  0048c311: 8b ec                                           mov    ebp,esp
  0048c313: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  0048c317: 66 89 81 ee 00 00 00                            mov    WORD PTR [ecx+0xee],ax
  0048c31e: 5d                                              pop    ebp
  0048c31f: c2 04 00                                        ret    0x4

; ===== 0x0048C330 ?GetClass@Unit@@UAEEXZ =====
  0048c330: 8a 41 58                                        mov    al,BYTE PTR [ecx+0x58]
  0048c333: c3                                              ret

; ===== 0x0048C340 ?GetClassPoints@Unit@@UAEPAGXZ =====
  0048c340: 33 c0                                           xor    eax,eax
  0048c342: c3                                              ret

; ===== 0x0048C350 ?SendPlayerMessage@Unit@@UAEXAAVTFCPacket@@@Z =====
  0048c350: c2 04 00                                        ret    0x4

; ===== 0x0048C360 ?GetFaith@Unit@@UAEGXZ =====
  0048c360: 66 33 c0                                        xor    ax,ax
  0048c363: c3                                              ret

; ===== 0x0048C370 ?GetMaxFaith@Unit@@UAEGXZ =====
  0048c370: 66 b8 01 00                                     mov    ax,0x1
  0048c374: c3                                              ret

; ===== 0x0048C380 ?SetFaith@Unit@@UAEXG@Z =====
  0048c380: c2 04 00                                        ret    0x4

; ===== 0x0048C390 ?SetMaxFaith@Unit@@UAEXG@Z =====
  0048c390: c2 04 00                                        ret    0x4

; ===== 0x0048C3A0 ?UseSkillPnts@Unit@@UAEHE@Z =====
  0048c3a0: 33 c0                                           xor    eax,eax
  0048c3a2: c2 04 00                                        ret    0x4

; ===== 0x0048C3B0 ?UseStatPnts@Unit@@UAEHE@Z =====
  0048c3b0: 33 c0                                           xor    eax,eax
  0048c3b2: c2 04 00                                        ret    0x4

; ===== 0x0048C3C0 ?UseSkill@Unit@@UAEHHPAV1@PAX@Z =====
  0048c3c0: 33 c0                                           xor    eax,eax
  0048c3c2: c2 0c 00                                        ret    0xc

; ===== 0x0048C3D0 ?UseSkill@Unit@@UAEHHUWorldPos@@@Z =====
  0048c3d0: 33 c0                                           xor    eax,eax
  0048c3d2: c2 10 00                                        ret    0x10

; ===== 0x0048C5E0 ?SetDetectRange@Unit@@UAEXE@Z =====
  0048c5e0: c2 04 00                                        ret    0x4

; ===== 0x0048C5F0 ?GetDetectRange@Unit@@UAEEXZ =====
  0048c5f0: 32 c0                                           xor    al,al
  0048c5f2: c3                                              ret

; ===== 0x0048C600 ?GetIndentItem@Unit@@UAEPAV1@PAK@Z =====
  0048c600: 55                                              push   ebp
  0048c601: 8b ec                                           mov    ebp,esp
  0048c603: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048c606: 53                                              push   ebx
  0048c607: 8b d9                                           mov    ebx,ecx
  0048c609: 83 38 00                                        cmp    DWORD PTR [eax],0x0
  0048c60c: 56                                              push   esi
  0048c60d: 57                                              push   edi
  0048c60e: 75 09                                           jne    0x48c619
  0048c610: 5f                                              pop    edi
  0048c611: 5e                                              pop    esi
  0048c612: 8b c3                                           mov    eax,ebx
  0048c614: 5b                                              pop    ebx
  0048c615: 5d                                              pop    ebp
  0048c616: c2 04 00                                        ret    0x4
  0048c619: 85 c0                                           test   eax,eax
  0048c61b: 0f 84 a5 00 00 00                               je     0x48c6c6
  0048c621: 85 db                                           test   ebx,ebx
  0048c623: 0f 84 9d 00 00 00                               je     0x48c6c6
  0048c629: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0048c62c: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0048c62e: 8b cb                                           mov    ecx,ebx
  0048c630: ff 50 60                                        call   DWORD PTR [eax+0x60]
  0048c633: 8b f0                                           mov    esi,eax
  0048c635: 33 ff                                           xor    edi,edi
  0048c637: 85 f6                                           test   esi,esi
  0048c639: 74 66                                           je     0x48c6a1
  0048c63b: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048c63d: 8b ce                                           mov    ecx,esi
  0048c63f: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0048c642: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  0048c645: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0048c648: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0048c64b: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0048c64f: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0048c652: 85 c0                                           test   eax,eax
  0048c654: 74 0a                                           je     0x48c660
  0048c656: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0048c659: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0048c65b: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0048c65e: eb 07                                           jmp    0x48c667
  0048c660: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0048c667: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0048c66a: 85 c0                                           test   eax,eax
  0048c66c: 74 1a                                           je     0x48c688
  0048c66e: 85 ff                                           test   edi,edi
  0048c670: 75 28                                           jne    0x48c69a
  0048c672: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0048c675: 8b 48 78                                        mov    ecx,DWORD PTR [eax+0x78]
  0048c678: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0048c67b: 3b 0a                                           cmp    ecx,DWORD PTR [edx]
  0048c67d: 75 d0                                           jne    0x48c64f
  0048c67f: bf 01 00 00 00                                  mov    edi,0x1
  0048c684: 8b d8                                           mov    ebx,eax
  0048c686: eb c7                                           jmp    0x48c64f
  0048c688: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0048c68b: 85 c0                                           test   eax,eax
  0048c68d: 74 04                                           je     0x48c693
  0048c68f: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0048c693: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0048c69a: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048c69c: 8b ce                                           mov    ecx,esi
  0048c69e: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0048c6a1: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048c6a4: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048c6a7: 83 c0 04                                        add    eax,0x4
  0048c6aa: 85 c9                                           test   ecx,ecx
  0048c6ac: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0048c6af: 74 11                                           je     0x48c6c2
  0048c6b1: 85 ff                                           test   edi,edi
  0048c6b3: 0f 85 73 ff ff ff                               jne    0x48c62c
  0048c6b9: 5f                                              pop    edi
  0048c6ba: 5e                                              pop    esi
  0048c6bb: 33 c0                                           xor    eax,eax
  0048c6bd: 5b                                              pop    ebx
  0048c6be: 5d                                              pop    ebp
  0048c6bf: c2 04 00                                        ret    0x4
  0048c6c2: 85 ff                                           test   edi,edi
  0048c6c4: 74 f3                                           je     0x48c6b9
  0048c6c6: 5f                                              pop    edi
  0048c6c7: 5e                                              pop    esi
  0048c6c8: 8b c3                                           mov    eax,ebx
  0048c6ca: 5b                                              pop    ebx
  0048c6cb: 5d                                              pop    ebp
  0048c6cc: c2 04 00                                        ret    0x4

; ===== 0x0048C6D0 ?PacketBackpack@Unit@@UAEXAAVTFCPacket@@_N@Z =====
  0048c6d0: c2 08 00                                        ret    0x8

; ===== 0x0048C790 ?GetSkill@Unit@@UAEPAVUSER_SKILL@@K@Z =====
  0048c790: 33 c0                                           xor    eax,eax
  0048c792: c2 04 00                                        ret    0x4

; ===== 0x0048C7A0 ?GetSkillPoints@Unit@@UAEGXZ =====
  0048c7a0: 66 33 c0                                        xor    ax,ax
  0048c7a3: c3                                              ret

; ===== 0x0048C7B0 ?SetLastTeleport@Unit@@UAEXUWorldPos@@@Z =====
  0048c7b0: c2 0c 00                                        ret    0xc

; ===== 0x0048C7C0 ?GetLastTeleport@Unit@@UAE?AUWorldPos@@XZ =====
  0048c7c0: 55                                              push   ebp
  0048c7c1: 8b ec                                           mov    ebp,esp
  0048c7c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048c7c6: 56                                              push   esi
  0048c7c7: 57                                              push   edi
  0048c7c8: 33 c9                                           xor    ecx,ecx
  0048c7ca: 8b f8                                           mov    edi,eax
  0048c7cc: 89 0f                                           mov    DWORD PTR [edi],ecx
  0048c7ce: 33 d2                                           xor    edx,edx
  0048c7d0: 33 f6                                           xor    esi,esi
  0048c7d2: 89 57 04                                        mov    DWORD PTR [edi+0x4],edx
  0048c7d5: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  0048c7d8: 5f                                              pop    edi
  0048c7d9: 5e                                              pop    esi
  0048c7da: 5d                                              pop    ebp
  0048c7db: c2 04 00                                        ret    0x4

; ===== 0x0048C7E0 ?OriginalWorldPos@Unit@@QAE?AUWorldPos@@XZ =====
  0048c7e0: 55                                              push   ebp
  0048c7e1: 8b ec                                           mov    ebp,esp
  0048c7e3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048c7e6: 81 c1 c4 00 00 00                               add    ecx,0xc4
  0048c7ec: 56                                              push   esi
  0048c7ed: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0048c7ef: 8b d0                                           mov    edx,eax
  0048c7f1: 89 32                                           mov    DWORD PTR [edx],esi
  0048c7f3: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0048c7f6: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  0048c7f9: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0048c7fc: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0048c7ff: 5e                                              pop    esi
  0048c800: 5d                                              pop    ebp
  0048c801: c2 04 00                                        ret    0x4

; ===== 0x0048D660 ?GetRadiance@Unit@@QAECXZ =====
  0048d660: 53                                              push   ebx
  0048d661: 0f be 99 af 00 00 00                            movsx  ebx,BYTE PTR [ecx+0xaf]
  0048d668: 6a 0b                                           push   0xb
  0048d66a: e8 f1 07 00 00                                  call   0x48de60
  0048d66f: 03 d8                                           add    ebx,eax
  0048d671: 83 fb 9c                                        cmp    ebx,0xffffff9c
  0048d674: 7d 07                                           jge    0x48d67d
  0048d676: b8 9c ff ff ff                                  mov    eax,0xffffff9c
  0048d67b: 5b                                              pop    ebx
  0048d67c: c3                                              ret
  0048d67d: 83 fb 64                                        cmp    ebx,0x64
  0048d680: 7e 07                                           jle    0x48d689
  0048d682: b8 64 00 00 00                                  mov    eax,0x64
  0048d687: 5b                                              pop    ebx
  0048d688: c3                                              ret
  0048d689: 8a c3                                           mov    al,bl
  0048d68b: 5b                                              pop    ebx
  0048d68c: c3                                              ret

; ===== 0x0048D690 ?SetRadiance@Unit@@QAEXC@Z =====
  0048d690: 55                                              push   ebp
  0048d691: 8b ec                                           mov    ebp,esp
  0048d693: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0048d696: 88 81 af 00 00 00                               mov    BYTE PTR [ecx+0xaf],al
  0048d69c: 5d                                              pop    ebp
  0048d69d: c2 04 00                                        ret    0x4

; ===== 0x0048D6A0 ?QueryDirection@Unit@@QAE?AW4MOVE@DIR@@UWorldPos@@@Z =====
  0048d6a0: 55                                              push   ebp
  0048d6a1: 8b ec                                           mov    ebp,esp
  0048d6a3: 8b 91 b8 00 00 00                               mov    edx,DWORD PTR [ecx+0xb8]
  0048d6a9: 56                                              push   esi
  0048d6aa: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0048d6ad: 3b f2                                           cmp    esi,edx
  0048d6af: b8 07 00 00 00                                  mov    eax,0x7
  0048d6b4: 7c 03                                           jl     0x48d6b9
  0048d6b6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0048d6b9: 3b f2                                           cmp    esi,edx
  0048d6bb: 5e                                              pop    esi
  0048d6bc: 7e 05                                           jle    0x48d6c3
  0048d6be: b8 03 00 00 00                                  mov    eax,0x3
  0048d6c3: 8b 89 bc 00 00 00                               mov    ecx,DWORD PTR [ecx+0xbc]
  0048d6c9: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0048d6cc: 3b d1                                           cmp    edx,ecx
  0048d6ce: 7d 27                                           jge    0x48d6f7
  0048d6d0: 83 f8 07                                        cmp    eax,0x7
  0048d6d3: 75 07                                           jne    0x48d6dc
  0048d6d5: b8 08 00 00 00                                  mov    eax,0x8
  0048d6da: eb 19                                           jmp    0x48d6f5
  0048d6dc: 3b d1                                           cmp    edx,ecx
  0048d6de: 7d 17                                           jge    0x48d6f7
  0048d6e0: 83 f8 03                                        cmp    eax,0x3
  0048d6e3: 75 07                                           jne    0x48d6ec
  0048d6e5: b8 02 00 00 00                                  mov    eax,0x2
  0048d6ea: eb 09                                           jmp    0x48d6f5
  0048d6ec: 3b d1                                           cmp    edx,ecx
  0048d6ee: 7d 07                                           jge    0x48d6f7
  0048d6f0: b8 01 00 00 00                                  mov    eax,0x1
  0048d6f5: 3b d1                                           cmp    edx,ecx
  0048d6f7: 7e 29                                           jle    0x48d722
  0048d6f9: 83 f8 07                                        cmp    eax,0x7
  0048d6fc: 75 09                                           jne    0x48d707
  0048d6fe: b8 06 00 00 00                                  mov    eax,0x6
  0048d703: 5d                                              pop    ebp
  0048d704: c2 0c 00                                        ret    0xc
  0048d707: 3b d1                                           cmp    edx,ecx
  0048d709: 7e 17                                           jle    0x48d722
  0048d70b: 83 f8 03                                        cmp    eax,0x3
  0048d70e: 75 09                                           jne    0x48d719
  0048d710: b8 04 00 00 00                                  mov    eax,0x4
  0048d715: 5d                                              pop    ebp
  0048d716: c2 0c 00                                        ret    0xc
  0048d719: 3b d1                                           cmp    edx,ecx
  0048d71b: 7e 05                                           jle    0x48d722
  0048d71d: b8 05 00 00 00                                  mov    eax,0x5
  0048d722: 5d                                              pop    ebp
  0048d723: c2 0c 00                                        ret    0xc

; ===== 0x0048D730 ?UseSpellEnergy@Unit@@UAEHG@Z =====
  0048d730: 33 c0                                           xor    eax,eax
  0048d732: c2 04 00                                        ret    0x4

; ===== 0x0048D740 ?SetMark@Unit@@QAEXE@Z =====
  0048d740: 55                                              push   ebp
  0048d741: 8b ec                                           mov    ebp,esp
  0048d743: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0048d746: 88 41 72                                        mov    BYTE PTR [ecx+0x72],al
  0048d749: 5d                                              pop    ebp
  0048d74a: c2 04 00                                        ret    0x4

; ===== 0x0048D750 ?GetMark@Unit@@QAEEXZ =====
  0048d750: 8a 41 72                                        mov    al,BYTE PTR [ecx+0x72]
  0048d753: c3                                              ret

; ===== 0x0048E320 ?GetUndead@Unit@@QAEGXZ =====
  0048e320: 66 33 c0                                        xor    ax,ax
  0048e323: c3                                              ret

; ===== 0x0048F1E0 ?SaveFlags@Unit@@QAEHPAV?$TemplateList@U_SQL_REQUEST@@@@K@Z =====
  0048f1e0: 55                                              push   ebp
  0048f1e1: 8b ec                                           mov    ebp,esp
  0048f1e3: 6a ff                                           push   0xffffffff
  0048f1e5: 68 ab a8 4d 00                                  push   0x4da8ab
  0048f1ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0048f1f0: 50                                              push   eax
  0048f1f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0048f1f8: 83 ec 18                                        sub    esp,0x18
  0048f1fb: 53                                              push   ebx
  0048f1fc: 56                                              push   esi
  0048f1fd: 57                                              push   edi
  0048f1fe: 8b f9                                           mov    edi,ecx
  0048f200: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0048f203: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0048f206: e8 53 28 04 00                                  call   0x4d1a5e
  0048f20b: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0048f20e: 33 f6                                           xor    esi,esi
  0048f210: 56                                              push   esi
  0048f211: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0048f214: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  0048f217: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  0048f21a: e8 f1 0e 00 00                                  call   0x490110
  0048f21f: 8b 17                                           mov    edx,DWORD PTR [edi]
  0048f221: 8d 45 dc                                        lea    eax,[ebp-0x24]
  0048f224: 50                                              push   eax
  0048f225: 8b cf                                           mov    ecx,edi
  0048f227: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0048f22b: ff 52 10                                        call   DWORD PTR [edx+0x10]
  0048f22e: 8b 5d e0                                        mov    ebx,DWORD PTR [ebp-0x20]
  0048f231: 3b 5d e4                                        cmp    ebx,DWORD PTR [ebp-0x1c]
  0048f234: 0f 84 f1 00 00 00                               je     0x48f32b
  0048f23a: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0048f23d: eb 03                                           jmp    0x48f242
  0048f23f: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  0048f242: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0048f245: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0048f247: 8b 47 78                                        mov    eax,DWORD PTR [edi+0x78]
  0048f24a: 51                                              push   ecx
  0048f24b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0048f24e: 52                                              push   edx
  0048f24f: 51                                              push   ecx
  0048f250: 50                                              push   eax
  0048f251: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0048f254: 68 9c e1 50 00                                  push   0x50e19c
  0048f259: 52                                              push   edx
  0048f25a: e8 35 28 04 00                                  call   0x4d1a94
  0048f25f: 6a 08                                           push   0x8
  0048f261: e8 8a 2d fb ff                                  call   0x441ff0
  0048f266: 8b f8                                           mov    edi,eax
  0048f268: 83 c4 1c                                        add    esp,0x1c
  0048f26b: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0048f26e: 85 ff                                           test   edi,edi
  0048f270: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0048f274: 74 0d                                           je     0x48f283
  0048f276: 8d 4f 04                                        lea    ecx,[edi+0x4]
  0048f279: e8 e0 27 04 00                                  call   0x4d1a5e
  0048f27e: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0048f281: eb 07                                           jmp    0x48f28a
  0048f283: c7 45 08 00 00 00 00                            mov    DWORD PTR [ebp+0x8],0x0
  0048f28a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0048f28d: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0048f290: 50                                              push   eax
  0048f291: 83 c1 04                                        add    ecx,0x4
  0048f294: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0048f298: e8 a9 27 04 00                                  call   0x4d1a46
  0048f29d: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  0048f2a0: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0048f2a3: 33 ff                                           xor    edi,edi
  0048f2a5: 42                                              inc    edx
  0048f2a6: 3b c7                                           cmp    eax,edi
  0048f2a8: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0048f2ab: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0048f2ae: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0048f2b2: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0048f2b5: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  0048f2b8: 6a 0c                                           push   0xc
  0048f2ba: 75 28                                           jne    0x48f2e4
  0048f2bc: e8 2f 2d fb ff                                  call   0x441ff0
  0048f2c1: 83 c4 04                                        add    esp,0x4
  0048f2c4: 3b c7                                           cmp    eax,edi
  0048f2c6: 74 07                                           je     0x48f2cf
  0048f2c8: 89 38                                           mov    DWORD PTR [eax],edi
  0048f2ca: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0048f2cd: eb 02                                           jmp    0x48f2d1
  0048f2cf: 33 c0                                           xor    eax,eax
  0048f2d1: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0048f2d4: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0048f2d7: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0048f2da: 89 38                                           mov    DWORD PTR [eax],edi
  0048f2dc: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0048f2df: 89 7a 04                                        mov    DWORD PTR [edx+0x4],edi
  0048f2e2: eb 2b                                           jmp    0x48f30f
  0048f2e4: e8 07 2d fb ff                                  call   0x441ff0
  0048f2e9: 83 c4 04                                        add    esp,0x4
  0048f2ec: 3b c7                                           cmp    eax,edi
  0048f2ee: 74 07                                           je     0x48f2f7
  0048f2f0: 89 38                                           mov    DWORD PTR [eax],edi
  0048f2f2: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0048f2f5: eb 02                                           jmp    0x48f2f9
  0048f2f7: 33 c0                                           xor    eax,eax
  0048f2f9: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0048f2fc: 89 01                                           mov    DWORD PTR [ecx],eax
  0048f2fe: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0048f301: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0048f304: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0048f307: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0048f30a: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0048f30d: 89 38                                           mov    DWORD PTR [eax],edi
  0048f30f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0048f312: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0048f315: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0048f318: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0048f31b: 83 c3 08                                        add    ebx,0x8
  0048f31e: 3b d8                                           cmp    ebx,eax
  0048f320: 0f 85 19 ff ff ff                               jne    0x48f23f
  0048f326: 8b 5d e0                                        mov    ebx,DWORD PTR [ebp-0x20]
  0048f329: 33 f6                                           xor    esi,esi
  0048f32b: 3b de                                           cmp    ebx,esi
  0048f32d: 74 09                                           je     0x48f338
  0048f32f: 53                                              push   ebx
  0048f330: e8 2b 2d fb ff                                  call   0x442060
  0048f335: 83 c4 04                                        add    esp,0x4
  0048f338: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0048f33b: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  0048f33e: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  0048f341: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  0048f344: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0048f34b: e8 f0 26 04 00                                  call   0x4d1a40
  0048f350: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048f353: 5f                                              pop    edi
  0048f354: 5e                                              pop    esi
  0048f355: 33 c0                                           xor    eax,eax
  0048f357: 5b                                              pop    ebx
  0048f358: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048f35f: 8b e5                                           mov    esp,ebp
  0048f361: 5d                                              pop    ebp
  0048f362: c2 08 00                                        ret    0x8

; ===== 0x0048F370 ?LoadFlags@Unit@@QAEXAAVcODBCMage@@K@Z =====
  0048f370: 55                                              push   ebp
  0048f371: 8b ec                                           mov    ebp,esp
  0048f373: 6a ff                                           push   0xffffffff
  0048f375: 68 c8 a8 4d 00                                  push   0x4da8c8
  0048f37a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0048f380: 50                                              push   eax
  0048f381: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0048f388: 83 ec 10                                        sub    esp,0x10
  0048f38b: 56                                              push   esi
  0048f38c: 57                                              push   edi
  0048f38d: 8b f9                                           mov    edi,ecx
  0048f38f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0048f392: e8 c7 26 04 00                                  call   0x4d1a5e
  0048f397: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0048f39a: 8b 47 78                                        mov    eax,DWORD PTR [edi+0x78]
  0048f39d: 51                                              push   ecx
  0048f39e: 50                                              push   eax
  0048f39f: 8d 55 ec                                        lea    edx,[ebp-0x14]
  0048f3a2: 68 f8 e1 50 00                                  push   0x50e1f8
  0048f3a7: 52                                              push   edx
  0048f3a8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0048f3af: e8 e0 26 04 00                                  call   0x4d1a94
  0048f3b4: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0048f3b7: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0048f3ba: 83 c4 10                                        add    esp,0x10
  0048f3bd: 6a 00                                           push   0x0
  0048f3bf: 50                                              push   eax
  0048f3c0: 8b ce                                           mov    ecx,esi
  0048f3c2: e8 b9 f9 fb ff                                  call   0x44ed80
  0048f3c7: 85 c0                                           test   eax,eax
  0048f3c9: 74 4c                                           je     0x48f417
  0048f3cb: 8b ce                                           mov    ecx,esi
  0048f3cd: e8 8e f9 fb ff                                  call   0x44ed60
  0048f3d2: 85 c0                                           test   eax,eax
  0048f3d4: 74 41                                           je     0x48f417
  0048f3d6: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0048f3d9: 51                                              push   ecx
  0048f3da: 6a 01                                           push   0x1
  0048f3dc: 8b ce                                           mov    ecx,esi
  0048f3de: e8 2d fb fb ff                                  call   0x44ef10
  0048f3e3: 8d 55 e8                                        lea    edx,[ebp-0x18]
  0048f3e6: 52                                              push   edx
  0048f3e7: 6a 02                                           push   0x2
  0048f3e9: 8b ce                                           mov    ecx,esi
  0048f3eb: e8 90 fb fb ff                                  call   0x44ef80
  0048f3f0: 8d 45 f3                                        lea    eax,[ebp-0xd]
  0048f3f3: 50                                              push   eax
  0048f3f4: 6a 03                                           push   0x3
  0048f3f6: 8b ce                                           mov    ecx,esi
  0048f3f8: e8 53 fc fb ff                                  call   0x44f050
  0048f3fd: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0048f400: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0048f403: 8b 17                                           mov    edx,DWORD PTR [edi]
  0048f405: 50                                              push   eax
  0048f406: 51                                              push   ecx
  0048f407: 8b cf                                           mov    ecx,edi
  0048f409: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0048f40c: 8b ce                                           mov    ecx,esi
  0048f40e: e8 4d f9 fb ff                                  call   0x44ed60
  0048f413: 85 c0                                           test   eax,eax
  0048f415: 75 bf                                           jne    0x48f3d6
  0048f417: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0048f41a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0048f421: e8 1a 26 04 00                                  call   0x4d1a40
  0048f426: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048f429: 5f                                              pop    edi
  0048f42a: 5e                                              pop    esi
  0048f42b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048f432: 8b e5                                           mov    esp,ebp
  0048f434: 5d                                              pop    ebp
  0048f435: c2 08 00                                        ret    0x8

; ===== 0x0048F440 ?CanAttack@Unit@@UAEHXZ =====
  0048f440: 33 c0                                           xor    eax,eax
  0048f442: c3                                              ret

; ===== 0x0048F450 ?SetAttack@Unit@@UAEXH@Z =====
  0048f450: c2 04 00                                        ret    0x4

; ===== 0x0048F460 ?SetBlock@Unit@@QAEXE@Z =====
  0048f460: 55                                              push   ebp
  0048f461: 8b ec                                           mov    ebp,esp
  0048f463: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0048f466: 88 81 f0 00 00 00                               mov    BYTE PTR [ecx+0xf0],al
  0048f46c: 5d                                              pop    ebp
  0048f46d: c2 04 00                                        ret    0x4

; ===== 0x0048F470 ?GetBlock@Unit@@QAEEXZ =====
  0048f470: 8a 81 f0 00 00 00                               mov    al,BYTE PTR [ecx+0xf0]
  0048f476: c3                                              ret

; ===== 0x0048F480 ?SetUnderBlock@Unit@@QAEXE@Z =====
  0048f480: 55                                              push   ebp
  0048f481: 8b ec                                           mov    ebp,esp
  0048f483: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0048f486: 88 81 f1 00 00 00                               mov    BYTE PTR [ecx+0xf1],al
  0048f48c: 5d                                              pop    ebp
  0048f48d: c2 04 00                                        ret    0x4

; ===== 0x0048F490 ?GetUnderBlock@Unit@@QAEEXZ =====
  0048f490: 8a 81 f1 00 00 00                               mov    al,BYTE PTR [ecx+0xf1]
  0048f496: c3                                              ret

; ===== 0x0048F4A0 ?SetCanMove@Unit@@UAEXH@Z =====
  0048f4a0: c2 04 00                                        ret    0x4

; ===== 0x0048F4B0 ?CanMove@Unit@@UAEHXZ =====
  0048f4b0: b8 01 00 00 00                                  mov    eax,0x1
  0048f4b5: c3                                              ret

; ===== 0x0048F4C0 ?GetLang@Unit@@UAEGXZ =====
  0048f4c0: e9 9b e5 fa ff                                  jmp    0x43da60

; ===== 0x0048F4D0 ?GetStatus@Unit@@QAEEXZ =====
  0048f4d0: 8a 81 ac 00 00 00                               mov    al,BYTE PTR [ecx+0xac]
  0048f4d6: c3                                              ret

; ===== 0x0048F4E0 ?SetStatus@Unit@@QAEXE@Z =====
  0048f4e0: 55                                              push   ebp
  0048f4e1: 8b ec                                           mov    ebp,esp
  0048f4e3: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  0048f4e6: 88 81 ac 00 00 00                               mov    BYTE PTR [ecx+0xac],al
  0048f4ec: 5d                                              pop    ebp
  0048f4ed: c2 04 00                                        ret    0x4

; ===== 0x0048F4F0 ?GetWeight@Unit@@UAEHXZ =====
  0048f4f0: 55                                              push   ebp
  0048f4f1: 8b ec                                           mov    ebp,esp
  0048f4f3: 51                                              push   ecx
  0048f4f4: 8a 51 73                                        mov    dl,BYTE PTR [ecx+0x73]
  0048f4f7: 33 c0                                           xor    eax,eax
  0048f4f9: 80 fa 03                                        cmp    dl,0x3
  0048f4fc: 75 1a                                           jne    0x48f518
  0048f4fe: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0048f500: 56                                              push   esi
  0048f501: 8d 75 fc                                        lea    esi,[ebp-0x4]
  0048f504: 56                                              push   esi
  0048f505: 50                                              push   eax
  0048f506: 50                                              push   eax
  0048f507: 50                                              push   eax
  0048f508: 50                                              push   eax
  0048f509: 6a 14                                           push   0x14
  0048f50b: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0048f50e: ff 52 24                                        call   DWORD PTR [edx+0x24]
  0048f511: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048f514: 8b 40 18                                        mov    eax,DWORD PTR [eax+0x18]
  0048f517: 5e                                              pop    esi
  0048f518: 8b e5                                           mov    esp,ebp
  0048f51a: 5d                                              pop    ebp
  0048f51b: c3                                              ret

; ===== 0x0048F520 ?GetMaxWeight@Unit@@UAEHXZ =====
  0048f520: 33 c0                                           xor    eax,eax
  0048f522: c3                                              ret

; ===== 0x0048F530 ?SetPrivateTalk@Unit@@UAEXH@Z =====
  0048f530: c2 04 00                                        ret    0x4

; ===== 0x0048F7E0 ?BroadcastPopup@Unit@@QAEXUWorldPos@@H@Z =====
  0048f7e0: 55                                              push   ebp
  0048f7e1: 8b ec                                           mov    ebp,esp
  0048f7e3: 6a ff                                           push   0xffffffff
  0048f7e5: 68 e8 a8 4d 00                                  push   0x4da8e8
  0048f7ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0048f7f0: 50                                              push   eax
  0048f7f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0048f7f8: 83 ec 18                                        sub    esp,0x18
  0048f7fb: 53                                              push   ebx
  0048f7fc: 56                                              push   esi
  0048f7fd: 8b f1                                           mov    esi,ecx
  0048f7ff: 57                                              push   edi
  0048f800: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0048f803: e8 e8 65 ff ff                                  call   0x485df0
  0048f808: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0048f80b: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0048f80e: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0048f811: 8d 45 dc                                        lea    eax,[ebp-0x24]
  0048f814: 50                                              push   eax
  0048f815: 83 ec 0c                                        sub    esp,0xc
  0048f818: 8b cc                                           mov    ecx,esp
  0048f81a: 89 39                                           mov    DWORD PTR [ecx],edi
  0048f81c: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0048f81f: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0048f822: 8b ce                                           mov    ecx,esi
  0048f824: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0048f82b: e8 70 00 00 00                                  call   0x48f8a0
  0048f830: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0048f833: 85 c0                                           test   eax,eax
  0048f835: 74 2b                                           je     0x48f862
  0048f837: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048f839: 8b ce                                           mov    ecx,esi
  0048f83b: ff 90 d0 01 00 00                               call   DWORD PTR [eax+0x1d0]
  0048f841: 50                                              push   eax
  0048f842: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0048f845: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0048f848: 51                                              push   ecx
  0048f849: 6a 14                                           push   0x14
  0048f84b: 83 ec 0c                                        sub    esp,0xc
  0048f84e: 8b d4                                           mov    edx,esp
  0048f850: 89 3a                                           mov    DWORD PTR [edx],edi
  0048f852: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  0048f855: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0048f858: e8 93 02 f8 ff                                  call   0x40faf0
  0048f85d: 83 c4 18                                        add    esp,0x18
  0048f860: eb 0e                                           jmp    0x48f870
  0048f862: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048f864: 8d 45 dc                                        lea    eax,[ebp-0x24]
  0048f867: 50                                              push   eax
  0048f868: 8b ce                                           mov    ecx,esi
  0048f86a: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  0048f870: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0048f873: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0048f87a: e8 01 66 ff ff                                  call   0x485e80
  0048f87f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048f882: 5f                                              pop    edi
  0048f883: 5e                                              pop    esi
  0048f884: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048f88b: 5b                                              pop    ebx
  0048f88c: 8b e5                                           mov    esp,ebp
  0048f88e: 5d                                              pop    ebp
  0048f88f: c2 10 00                                        ret    0x10

; ===== 0x0048F8A0 ?PacketPopup@Unit@@QAEXUWorldPos@@AAVTFCPacket@@@Z =====
  0048f8a0: 55                                              push   ebp
  0048f8a1: 8b ec                                           mov    ebp,esp
  0048f8a3: 53                                              push   ebx
  0048f8a4: 56                                              push   esi
  0048f8a5: 57                                              push   edi
  0048f8a6: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  0048f8a9: 8b f1                                           mov    esi,ecx
  0048f8ab: 68 14 27 00 00                                  push   0x2714
  0048f8b0: 8b cf                                           mov    ecx,edi
  0048f8b2: e8 99 68 ff ff                                  call   0x486150
  0048f8b7: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048f8ba: 50                                              push   eax
  0048f8bb: 8b cf                                           mov    ecx,edi
  0048f8bd: e8 8e 68 ff ff                                  call   0x486150
  0048f8c2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0048f8c5: 51                                              push   ecx
  0048f8c6: 8b cf                                           mov    ecx,edi
  0048f8c8: e8 83 68 ff ff                                  call   0x486150
  0048f8cd: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048f8cf: 8b ce                                           mov    ecx,esi
  0048f8d1: ff 52 2c                                        call   DWORD PTR [edx+0x2c]
  0048f8d4: 50                                              push   eax
  0048f8d5: 8b cf                                           mov    ecx,edi
  0048f8d7: e8 74 68 ff ff                                  call   0x486150
  0048f8dc: 8b 46 78                                        mov    eax,DWORD PTR [esi+0x78]
  0048f8df: 50                                              push   eax
  0048f8e0: 8b cf                                           mov    ecx,edi
  0048f8e2: e8 09 69 ff ff                                  call   0x4861f0
  0048f8e7: 0f be 9e af 00 00 00                            movsx  ebx,BYTE PTR [esi+0xaf]
  0048f8ee: 6a 0b                                           push   0xb
  0048f8f0: 8b ce                                           mov    ecx,esi
  0048f8f2: e8 69 e5 ff ff                                  call   0x48de60
  0048f8f7: 03 d8                                           add    ebx,eax
  0048f8f9: 83 fb 9c                                        cmp    ebx,0xffffff9c
  0048f8fc: 7d 07                                           jge    0x48f905
  0048f8fe: bb 9c ff ff ff                                  mov    ebx,0xffffff9c
  0048f903: eb 0a                                           jmp    0x48f90f
  0048f905: 83 fb 64                                        cmp    ebx,0x64
  0048f908: 7e 05                                           jle    0x48f90f
  0048f90a: bb 64 00 00 00                                  mov    ebx,0x64
  0048f90f: 53                                              push   ebx
  0048f910: 8b cf                                           mov    ecx,edi
  0048f912: e8 99 68 ff ff                                  call   0x4861b0
  0048f917: 8b ce                                           mov    ecx,esi
  0048f919: e8 b2 fb ff ff                                  call   0x48f4d0
  0048f91e: 8b cf                                           mov    ecx,edi
  0048f920: 50                                              push   eax
  0048f921: e8 8a 68 ff ff                                  call   0x4861b0
  0048f926: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048f928: 8b ce                                           mov    ecx,esi
  0048f92a: ff 92 cc 00 00 00                               call   DWORD PTR [edx+0xcc]
  0048f930: 85 c0                                           test   eax,eax
  0048f932: 75 0f                                           jne    0x48f943
  0048f934: 50                                              push   eax
  0048f935: 8b cf                                           mov    ecx,edi
  0048f937: e8 74 68 ff ff                                  call   0x4861b0
  0048f93c: 5f                                              pop    edi
  0048f93d: 5e                                              pop    esi
  0048f93e: 5b                                              pop    ebx
  0048f93f: 5d                                              pop    ebp
  0048f940: c2 10 00                                        ret    0x10
  0048f943: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048f945: 8b ce                                           mov    ecx,esi
  0048f947: ff 90 d8 00 00 00                               call   DWORD PTR [eax+0xd8]
  0048f94d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048f94f: 8d 04 80                                        lea    eax,[eax+eax*4]
  0048f952: 8d 1c 80                                        lea    ebx,[eax+eax*4]
  0048f955: 8b ce                                           mov    ecx,esi
  0048f957: c1 e3 02                                        shl    ebx,0x2
  0048f95a: ff 92 cc 00 00 00                               call   DWORD PTR [edx+0xcc]
  0048f960: 8b c8                                           mov    ecx,eax
  0048f962: 33 d2                                           xor    edx,edx
  0048f964: 8b c3                                           mov    eax,ebx
  0048f966: f7 f1                                           div    ecx
  0048f968: 8b cf                                           mov    ecx,edi
  0048f96a: 50                                              push   eax
  0048f96b: e8 40 68 ff ff                                  call   0x4861b0
  0048f970: 5f                                              pop    edi
  0048f971: 5e                                              pop    esi
  0048f972: 5b                                              pop    ebx
  0048f973: 5d                                              pop    ebp
  0048f974: c2 10 00                                        ret    0x10

; ===== 0x0048F980 ?SetKarma@Unit@@UAEXH@Z =====
  0048f980: 55                                              push   ebp
  0048f981: 8b ec                                           mov    ebp,esp
  0048f983: 6a ff                                           push   0xffffffff
  0048f985: 68 10 a9 4d 00                                  push   0x4da910
  0048f98a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0048f990: 50                                              push   eax
  0048f991: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0048f998: 51                                              push   ecx
  0048f999: 53                                              push   ebx
  0048f99a: 56                                              push   esi
  0048f99b: 8b f1                                           mov    esi,ecx
  0048f99d: 8b 86 80 00 00 00                               mov    eax,DWORD PTR [esi+0x80]
  0048f9a3: 57                                              push   edi
  0048f9a4: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0048f9a7: 3b f8                                           cmp    edi,eax
  0048f9a9: 0f 8d 87 00 00 00                               jge    0x48fa36
  0048f9af: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048f9b1: 68 58 13 51 00                                  push   0x511358
  0048f9b6: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0048f9bc: 50                                              push   eax
  0048f9bd: 68 d7 1b 00 00                                  push   0x1bd7
  0048f9c2: e8 29 e0 fa ff                                  call   0x43d9f0
  0048f9c7: 83 c4 08                                        add    esp,0x8
  0048f9ca: 8b cc                                           mov    ecx,esp
  0048f9cc: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  0048f9cf: 50                                              push   eax
  0048f9d0: e8 8f 20 04 00                                  call   0x4d1a64
  0048f9d5: 8b ce                                           mov    ecx,esi
  0048f9d7: e8 b4 34 f9 ff                                  call   0x422e90
  0048f9dc: 6a 02                                           push   0x2
  0048f9de: e8 2d 23 fe ff                                  call   0x471d10
  0048f9e3: 83 c4 04                                        add    esp,0x4
  0048f9e6: 85 c0                                           test   eax,eax
  0048f9e8: 0f 84 d3 00 00 00                               je     0x48fac1
  0048f9ee: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0048f9f0: 8b ce                                           mov    ecx,esi
  0048f9f2: ff 93 94 01 00 00                               call   DWORD PTR [ebx+0x194]
  0048f9f8: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0048f9fb: 50                                              push   eax
  0048f9fc: 51                                              push   ecx
  0048f9fd: 8b ce                                           mov    ecx,esi
  0048f9ff: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0048fa02: 8b 00                                           mov    eax,DWORD PTR [eax]
  0048fa04: 57                                              push   edi
  0048fa05: 50                                              push   eax
  0048fa06: 68 70 e2 50 00                                  push   0x50e270
  0048fa0b: 6a 40                                           push   0x40
  0048fa0d: 6a 02                                           push   0x2
  0048fa0f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0048fa16: e8 f5 22 fe ff                                  call   0x471d10
  0048fa1b: 83 c4 04                                        add    esp,0x4
  0048fa1e: 50                                              push   eax
  0048fa1f: e8 cc f0 03 00                                  call   0x4ceaf0
  0048fa24: 83 c4 14                                        add    esp,0x14
  0048fa27: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0048fa2e: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0048fa31: e9 86 00 00 00                                  jmp    0x48fabc
  0048fa36: 0f 8e 85 00 00 00                               jle    0x48fac1
  0048fa3c: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048fa3e: 68 58 13 51 00                                  push   0x511358
  0048fa43: 8b ce                                           mov    ecx,esi
  0048fa45: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0048fa4b: 50                                              push   eax
  0048fa4c: 68 d6 1b 00 00                                  push   0x1bd6
  0048fa51: e8 9a df fa ff                                  call   0x43d9f0
  0048fa56: 83 c4 08                                        add    esp,0x8
  0048fa59: 8b cc                                           mov    ecx,esp
  0048fa5b: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  0048fa5e: 50                                              push   eax
  0048fa5f: e8 00 20 04 00                                  call   0x4d1a64
  0048fa64: 8b ce                                           mov    ecx,esi
  0048fa66: e8 25 34 f9 ff                                  call   0x422e90
  0048fa6b: 6a 02                                           push   0x2
  0048fa6d: e8 9e 22 fe ff                                  call   0x471d10
  0048fa72: 83 c4 04                                        add    esp,0x4
  0048fa75: 85 c0                                           test   eax,eax
  0048fa77: 74 48                                           je     0x48fac1
  0048fa79: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0048fa7b: 8b ce                                           mov    ecx,esi
  0048fa7d: ff 93 94 01 00 00                               call   DWORD PTR [ebx+0x194]
  0048fa83: 8b ce                                           mov    ecx,esi
  0048fa85: 50                                              push   eax
  0048fa86: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0048fa89: 50                                              push   eax
  0048fa8a: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0048fa8d: 8b 00                                           mov    eax,DWORD PTR [eax]
  0048fa8f: 57                                              push   edi
  0048fa90: 50                                              push   eax
  0048fa91: 68 50 e2 50 00                                  push   0x50e250
  0048fa96: 6a 40                                           push   0x40
  0048fa98: 6a 02                                           push   0x2
  0048fa9a: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0048faa1: e8 6a 22 fe ff                                  call   0x471d10
  0048faa6: 83 c4 04                                        add    esp,0x4
  0048faa9: 50                                              push   eax
  0048faaa: e8 41 f0 03 00                                  call   0x4ceaf0
  0048faaf: 83 c4 14                                        add    esp,0x14
  0048fab2: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0048fab9: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0048fabc: e8 7f 1f 04 00                                  call   0x4d1a40
  0048fac1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0048fac4: 89 be 80 00 00 00                               mov    DWORD PTR [esi+0x80],edi
  0048faca: 5f                                              pop    edi
  0048facb: 5e                                              pop    esi
  0048facc: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048fad3: 5b                                              pop    ebx
  0048fad4: 8b e5                                           mov    esp,ebp
  0048fad6: 5d                                              pop    ebp
  0048fad7: c2 04 00                                        ret    0x4

; ===== 0x0048FB90 ?DispellInvisibility@Unit@@UAEXXZ =====
  0048fb90: 56                                              push   esi
  0048fb91: 8b f1                                           mov    esi,ecx
  0048fb93: 68 52 4e 00 00                                  push   0x4e52
  0048fb98: e8 33 cf ff ff                                  call   0x48cad0
  0048fb9d: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048fb9f: 8b ce                                           mov    ecx,esi
  0048fba1: ff 90 d4 01 00 00                               call   DWORD PTR [eax+0x1d4]
  0048fba7: 5e                                              pop    esi
  0048fba8: c3                                              ret

; ===== 0x0048FBB0 ?Unhide@Unit@@UAEXXZ =====
  0048fbb0: 55                                              push   ebp
  0048fbb1: 8b ec                                           mov    ebp,esp
  0048fbb3: 83 ec 0c                                        sub    esp,0xc
  0048fbb6: 56                                              push   esi
  0048fbb7: 57                                              push   edi
  0048fbb8: 8b f1                                           mov    esi,ecx
  0048fbba: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048fbbc: 6a 00                                           push   0x0
  0048fbbe: 68 53 4e 00 00                                  push   0x4e53
  0048fbc3: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0048fbc6: 85 c0                                           test   eax,eax
  0048fbc8: 0f 84 84 00 00 00                               je     0x48fc52
  0048fbce: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048fbd0: 68 53 4e 00 00                                  push   0x4e53
  0048fbd5: 8b ce                                           mov    ecx,esi
  0048fbd7: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0048fbda: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048fbdc: 8d 4d f4                                        lea    ecx,[ebp-0xc]
  0048fbdf: 51                                              push   ecx
  0048fbe0: 8b ce                                           mov    ecx,esi
  0048fbe2: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0048fbe5: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  0048fbe8: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0048fbeb: 6a 01                                           push   0x1
  0048fbed: 83 ec 0c                                        sub    esp,0xc
  0048fbf0: 8b d4                                           mov    edx,esp
  0048fbf2: 89 02                                           mov    DWORD PTR [edx],eax
  0048fbf4: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048fbf7: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0048fbfa: 8b ce                                           mov    ecx,esi
  0048fbfc: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0048fbff: e8 dc fb ff ff                                  call   0x48f7e0
  0048fc04: 8b 76 78                                        mov    esi,DWORD PTR [esi+0x78]
  0048fc07: 6a 00                                           push   0x0
  0048fc09: 6a 00                                           push   0x0
  0048fc0b: e8 00 2c fd ff                                  call   0x462810
  0048fc10: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0048fc13: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0048fc16: 50                                              push   eax
  0048fc17: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  0048fc1a: 83 ec 0c                                        sub    esp,0xc
  0048fc1d: 8b fc                                           mov    edi,esp
  0048fc1f: 89 07                                           mov    DWORD PTR [edi],eax
  0048fc21: 89 4f 04                                        mov    DWORD PTR [edi+0x4],ecx
  0048fc24: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0048fc27: 83 ec 0c                                        sub    esp,0xc
  0048fc2a: 8b fc                                           mov    edi,esp
  0048fc2c: 56                                              push   esi
  0048fc2d: 56                                              push   esi
  0048fc2e: 89 07                                           mov    DWORD PTR [edi],eax
  0048fc30: 68 41 9c 00 00                                  push   0x9c41
  0048fc35: 89 4f 04                                        mov    DWORD PTR [edi+0x4],ecx
  0048fc38: 6a 1e                                           push   0x1e
  0048fc3a: 83 ec 0c                                        sub    esp,0xc
  0048fc3d: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0048fc40: 8b f4                                           mov    esi,esp
  0048fc42: 89 06                                           mov    DWORD PTR [esi],eax
  0048fc44: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0048fc47: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0048fc4a: e8 b1 02 f8 ff                                  call   0x40ff00
  0048fc4f: 83 c4 40                                        add    esp,0x40
  0048fc52: 5f                                              pop    edi
  0048fc53: 5e                                              pop    esi
  0048fc54: 8b e5                                           mov    esp,ebp
  0048fc56: 5d                                              pop    ebp
  0048fc57: c3                                              ret

; ===== 0x0048FC60 ?RemoveReferenceTo@Unit@@UAEXPAV1@@Z =====
  0048fc60: 55                                              push   ebp
  0048fc61: 8b ec                                           mov    ebp,esp
  0048fc63: 56                                              push   esi
  0048fc64: 8b f1                                           mov    esi,ecx
  0048fc66: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048fc68: 57                                              push   edi
  0048fc69: ff 90 14 01 00 00                               call   DWORD PTR [eax+0x114]
  0048fc6f: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0048fc72: 3b c7                                           cmp    eax,edi
  0048fc74: 75 0c                                           jne    0x48fc82
  0048fc76: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048fc78: 6a 00                                           push   0x0
  0048fc7a: 8b ce                                           mov    ecx,esi
  0048fc7c: ff 92 10 01 00 00                               call   DWORD PTR [edx+0x110]
  0048fc82: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048fc84: 8b ce                                           mov    ecx,esi
  0048fc86: ff 90 a8 00 00 00                               call   DWORD PTR [eax+0xa8]
  0048fc8c: 3b c7                                           cmp    eax,edi
  0048fc8e: 75 13                                           jne    0x48fca3
  0048fc90: 8b 3e                                           mov    edi,DWORD PTR [esi]
  0048fc92: 8b ce                                           mov    ecx,esi
  0048fc94: ff 97 14 01 00 00                               call   DWORD PTR [edi+0x114]
  0048fc9a: 50                                              push   eax
  0048fc9b: 8b ce                                           mov    ecx,esi
  0048fc9d: ff 97 ac 00 00 00                               call   DWORD PTR [edi+0xac]
  0048fca3: 5f                                              pop    edi
  0048fca4: 5e                                              pop    esi
  0048fca5: 5d                                              pop    ebp
  0048fca6: c2 04 00                                        ret    0x4

