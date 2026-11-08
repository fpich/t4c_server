; PASSE 77 - Monde, secteurs, effets, ruches et creation unites
; SHA256 binaire 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 1104 instructions depuis 15 entrees exportees; chemins indirects exclus.

; ===== 0x00401D10 ?IsValidPosition@WorldMap@@QAE_NUWorldPos@@@Z =====
  00401d10: 55                                              push   ebp
  00401d11: 8b ec                                           mov    ebp,esp
  00401d13: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00401d16: 33 d2                                           xor    edx,edx
  00401d18: 66 8b 51 2c                                     mov    dx,WORD PTR [ecx+0x2c]
  00401d1c: 3b c2                                           cmp    eax,edx
  00401d1e: 7d 1e                                           jge    0x401d3e
  00401d20: 33 d2                                           xor    edx,edx
  00401d22: 66 8b 51 2e                                     mov    dx,WORD PTR [ecx+0x2e]
  00401d26: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00401d29: 3b ca                                           cmp    ecx,edx
  00401d2b: 7d 11                                           jge    0x401d3e
  00401d2d: 85 c0                                           test   eax,eax
  00401d2f: 7c 0d                                           jl     0x401d3e
  00401d31: 85 c9                                           test   ecx,ecx
  00401d33: 7c 09                                           jl     0x401d3e
  00401d35: b8 01 00 00 00                                  mov    eax,0x1
  00401d3a: 5d                                              pop    ebp
  00401d3b: c2 0c 00                                        ret    0xc
  00401d3e: 33 c0                                           xor    eax,eax
  00401d40: 5d                                              pop    ebp
  00401d41: c2 0c 00                                        ret    0xc

; ===== 0x00401D50 ??0WorldMap@@QAE@ABV0@@Z =====
  00401d50: 55                                              push   ebp
  00401d51: 8b ec                                           mov    ebp,esp
  00401d53: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00401d56: 8b c1                                           mov    eax,ecx
  00401d58: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00401d5b: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00401d5e: 56                                              push   esi
  00401d5f: 57                                              push   edi
  00401d60: 8d 72 08                                        lea    esi,[edx+0x8]
  00401d63: 8d 78 08                                        lea    edi,[eax+0x8]
  00401d66: b9 06 00 00 00                                  mov    ecx,0x6
  00401d6b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00401d6d: c7 00 8c e5 4d 00                               mov    DWORD PTR [eax],0x4de58c
  00401d73: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  00401d76: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00401d79: 8b 4a 24                                        mov    ecx,DWORD PTR [edx+0x24]
  00401d7c: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  00401d7f: 8b 4a 28                                        mov    ecx,DWORD PTR [edx+0x28]
  00401d82: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  00401d85: 66 8b 4a 2c                                     mov    cx,WORD PTR [edx+0x2c]
  00401d89: 66 89 48 2c                                     mov    WORD PTR [eax+0x2c],cx
  00401d8d: 66 8b 4a 2e                                     mov    cx,WORD PTR [edx+0x2e]
  00401d91: 66 89 48 2e                                     mov    WORD PTR [eax+0x2e],cx
  00401d95: 8b 52 30                                        mov    edx,DWORD PTR [edx+0x30]
  00401d98: 5f                                              pop    edi
  00401d99: 89 50 30                                        mov    DWORD PTR [eax+0x30],edx
  00401d9c: c7 00 c0 e5 4d 00                               mov    DWORD PTR [eax],0x4de5c0
  00401da2: 5e                                              pop    esi
  00401da3: 5d                                              pop    ebp
  00401da4: c2 04 00                                        ret    0x4

; ===== 0x004AEC30 ??0WorldMap@@QAE@XZ =====
  004aec30: 56                                              push   esi
  004aec31: 8b f1                                           mov    esi,ecx
  004aec33: 8d 46 08                                        lea    eax,[esi+0x8]
  004aec36: 50                                              push   eax
  004aec37: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004aec3d: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  004aec44: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004aec4a: c7 06 c0 e5 4d 00                               mov    DWORD PTR [esi],0x4de5c0
  004aec50: 33 c0                                           xor    eax,eax
  004aec52: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004aec55: 66 89 46 2c                                     mov    WORD PTR [esi+0x2c],ax
  004aec59: 66 89 46 2e                                     mov    WORD PTR [esi+0x2e],ax
  004aec5d: 8b c6                                           mov    eax,esi
  004aec5f: c6 05 90 64 55 00 80                            mov    BYTE PTR ds:0x556490,0x80
  004aec66: c6 05 91 64 55 00 40                            mov    BYTE PTR ds:0x556491,0x40
  004aec6d: c6 05 92 64 55 00 20                            mov    BYTE PTR ds:0x556492,0x20
  004aec74: c6 05 93 64 55 00 10                            mov    BYTE PTR ds:0x556493,0x10
  004aec7b: c6 05 94 64 55 00 08                            mov    BYTE PTR ds:0x556494,0x8
  004aec82: c6 05 95 64 55 00 04                            mov    BYTE PTR ds:0x556495,0x4
  004aec89: c6 05 96 64 55 00 02                            mov    BYTE PTR ds:0x556496,0x2
  004aec90: c6 05 97 64 55 00 01                            mov    BYTE PTR ds:0x556497,0x1
  004aec97: 5e                                              pop    esi
  004aec98: c3                                              ret

; ===== 0x004AECA0 ??1WorldMap@@UAE@XZ =====
  004aeca0: 55                                              push   ebp
  004aeca1: 8b ec                                           mov    ebp,esp
  004aeca3: 6a ff                                           push   0xffffffff
  004aeca5: 68 88 c6 4d 00                                  push   0x4dc688
  004aecaa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004aecb0: 50                                              push   eax
  004aecb1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004aecb8: 83 ec 14                                        sub    esp,0x14
  004aecbb: 53                                              push   ebx
  004aecbc: 56                                              push   esi
  004aecbd: 8b d9                                           mov    ebx,ecx
  004aecbf: 57                                              push   edi
  004aecc0: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004aecc3: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  004aecc6: c7 03 c0 e5 4d 00                               mov    DWORD PTR [ebx],0x4de5c0
  004aeccc: 33 ff                                           xor    edi,edi
  004aecce: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004aecd1: 66 8b 43 2c                                     mov    ax,WORD PTR [ebx+0x2c]
  004aecd5: 66 c1 e8 02                                     shr    ax,0x2
  004aecd9: 66 3b f8                                        cmp    di,ax
  004aecdc: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004aecdf: 0f 83 85 00 00 00                               jae    0x4aed6a
  004aece5: 33 f6                                           xor    esi,esi
  004aece7: 66 8b 4b 2e                                     mov    cx,WORD PTR [ebx+0x2e]
  004aeceb: 66 c1 e9 02                                     shr    cx,0x2
  004aecef: 66 3b f1                                        cmp    si,cx
  004aecf2: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  004aecf5: 73 57                                           jae    0x4aed4e
  004aecf7: 8b 43 24                                        mov    eax,DWORD PTR [ebx+0x24]
  004aecfa: 8b d7                                           mov    edx,edi
  004aecfc: 81 e2 ff ff 00 00                               and    edx,0xffff
  004aed02: 8b 14 90                                        mov    edx,DWORD PTR [eax+edx*4]
  004aed05: 8b ce                                           mov    ecx,esi
  004aed07: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004aed0d: 8b 0c 8a                                        mov    ecx,DWORD PTR [edx+ecx*4]
  004aed10: 85 c9                                           test   ecx,ecx
  004aed12: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004aed16: 74 2c                                           je     0x4aed44
  004aed18: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004aed1a: 6a 01                                           push   0x1
  004aed1c: ff 10                                           call   DWORD PTR [eax]
  004aed1e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004aed25: 46                                              inc    esi
  004aed26: eb bf                                           jmp    0x4aece7
  004aed44: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004aed4b: 46                                              inc    esi
  004aed4c: eb 99                                           jmp    0x4aece7
  004aed4e: 8b 4b 24                                        mov    ecx,DWORD PTR [ebx+0x24]
  004aed51: 8b c7                                           mov    eax,edi
  004aed53: 25 ff ff 00 00                                  and    eax,0xffff
  004aed58: 8b 14 81                                        mov    edx,DWORD PTR [ecx+eax*4]
  004aed5b: 52                                              push   edx
  004aed5c: e8 2f f7 01 00                                  call   0x4ce490
  004aed61: 83 c4 04                                        add    esp,0x4
  004aed64: 47                                              inc    edi
  004aed65: e9 67 ff ff ff                                  jmp    0x4aecd1
  004aed6a: 8b 43 24                                        mov    eax,DWORD PTR [ebx+0x24]
  004aed6d: 50                                              push   eax
  004aed6e: e8 1d f7 01 00                                  call   0x4ce490
  004aed73: 8b 4b 30                                        mov    ecx,DWORD PTR [ebx+0x30]
  004aed76: 51                                              push   ecx
  004aed77: e8 e4 32 f9 ff                                  call   0x442060
  004aed7c: 33 d2                                           xor    edx,edx
  004aed7e: 33 c0                                           xor    eax,eax
  004aed80: 83 c4 08                                        add    esp,0x8
  004aed83: 66 39 53 2e                                     cmp    WORD PTR [ebx+0x2e],dx
  004aed87: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004aed8a: 0f 86 2e 01 00 00                               jbe    0x4aeebe
  004aed90: 25 ff ff 00 00                                  and    eax,0xffff
  004aed95: 8b f8                                           mov    edi,eax
  004aed97: c1 e7 04                                        shl    edi,0x4
  004aed9a: 03 f8                                           add    edi,eax
  004aed9c: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  004aed9f: c1 e7 02                                        shl    edi,0x2
  004aeda2: 8b 4c 38 24                                     mov    ecx,DWORD PTR [eax+edi*1+0x24]
  004aeda6: 03 c7                                           add    eax,edi
  004aeda8: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  004aedab: 89 50 40                                        mov    DWORD PTR [eax+0x40],edx
  004aedae: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  004aedb2: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  004aedb5: 8b 4c 38 40                                     mov    ecx,DWORD PTR [eax+edi*1+0x40]
  004aedb9: 03 c7                                           add    eax,edi
  004aedbb: 3b ca                                           cmp    ecx,edx
  004aedbd: 74 0a                                           je     0x4aedc9
  004aedbf: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  004aedc2: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004aedc4: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  004aedc7: eb 07                                           jmp    0x4aedd0
  004aedc9: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  004aedd0: 39 50 20                                        cmp    DWORD PTR [eax+0x20],edx
  004aedd3: 0f 84 c8 00 00 00                               je     0x4aeea1
  004aedd9: 8b 73 20                                        mov    esi,DWORD PTR [ebx+0x20]
  004aeddc: 8b 44 3e 20                                     mov    eax,DWORD PTR [esi+edi*1+0x20]
  004aede0: 8b 4c 3e 28                                     mov    ecx,DWORD PTR [esi+edi*1+0x28]
  004aede4: 03 f7                                           add    esi,edi
  004aede6: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004aede9: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  004aedec: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004aedef: 3b c1                                           cmp    eax,ecx
  004aedf1: 74 3d                                           je     0x4aee30
  004aedf3: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004aedf6: 74 34                                           je     0x4aee2c
  004aedf8: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004aedfa: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004aedfd: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  004aee00: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004aee03: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004aee06: 8b 00                                           mov    eax,DWORD PTR [eax]
  004aee08: 89 01                                           mov    DWORD PTR [ecx],eax
  004aee0a: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  004aee0d: 83 f8 01                                        cmp    eax,0x1
  004aee10: 75 0b                                           jne    0x4aee1d
  004aee12: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004aee15: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004aee18: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004aee1b: eb 61                                           jmp    0x4aee7e
  004aee1d: 83 f8 02                                        cmp    eax,0x2
  004aee20: 75 5c                                           jne    0x4aee7e
  004aee22: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004aee25: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004aee27: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004aee2a: eb 52                                           jmp    0x4aee7e
  004aee2c: 3b c1                                           cmp    eax,ecx
  004aee2e: 75 21                                           jne    0x4aee51
  004aee30: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004aee33: 74 21                                           je     0x4aee56
  004aee35: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004aee38: 89 11                                           mov    DWORD PTR [ecx],edx
  004aee3a: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004aee3d: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004aee40: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  004aee43: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004aee46: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  004aee4a: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  004aee4d: 75 2f                                           jne    0x4aee7e
  004aee4f: eb 2a                                           jmp    0x4aee7b
  004aee51: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004aee54: 75 1c                                           jne    0x4aee72
  004aee56: 3b c1                                           cmp    eax,ecx
  004aee58: 74 18                                           je     0x4aee72
  004aee5a: 8b 00                                           mov    eax,DWORD PTR [eax]
  004aee5c: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004aee5f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004aee62: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004aee64: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004aee67: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004aee6a: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  004aee6e: 75 0e                                           jne    0x4aee7e
  004aee70: eb 09                                           jmp    0x4aee7b
  004aee72: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004aee75: 89 56 24                                        mov    DWORD PTR [esi+0x24],edx
  004aee78: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  004aee7b: 89 56 40                                        mov    DWORD PTR [esi+0x40],edx
  004aee7e: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  004aee81: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004aee84: 3b ca                                           cmp    ecx,edx
  004aee86: 74 06                                           je     0x4aee8e
  004aee88: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004aee8a: 6a 01                                           push   0x1
  004aee8c: ff 12                                           call   DWORD PTR [edx]
  004aee8e: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  004aee91: 50                                              push   eax
  004aee92: e8 c9 31 f9 ff                                  call   0x442060
  004aee97: 83 c4 04                                        add    esp,0x4
  004aee9a: 33 d2                                           xor    edx,edx
  004aee9c: e9 11 ff ff ff                                  jmp    0x4aedb2
  004aeea1: 39 50 40                                        cmp    DWORD PTR [eax+0x40],edx
  004aeea4: 74 04                                           je     0x4aeeaa
  004aeea6: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  004aeeaa: 89 50 40                                        mov    DWORD PTR [eax+0x40],edx
  004aeead: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004aeeb0: 40                                              inc    eax
  004aeeb1: 66 3b 43 2e                                     cmp    ax,WORD PTR [ebx+0x2e]
  004aeeb5: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004aeeb8: 0f 82 d2 fe ff ff                               jb     0x4aed90
  004aeebe: 8b 4b 20                                        mov    ecx,DWORD PTR [ebx+0x20]
  004aeec1: 3b ca                                           cmp    ecx,edx
  004aeec3: 74 06                                           je     0x4aeecb
  004aeec5: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004aeec7: 6a 03                                           push   0x3
  004aeec9: ff 12                                           call   DWORD PTR [edx]
  004aeecb: c7 03 8c e5 4d 00                               mov    DWORD PTR [ebx],0x4de58c
  004aeed1: 83 c3 08                                        add    ebx,0x8
  004aeed4: 53                                              push   ebx
  004aeed5: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  004aeedb: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004aeede: 5f                                              pop    edi
  004aeedf: 5e                                              pop    esi
  004aeee0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004aeee7: 5b                                              pop    ebx
  004aeee8: 8b e5                                           mov    esp,ebp
  004aeeea: 5d                                              pop    ebp
  004aeeeb: c3                                              ret

; ===== 0x004AEEF0 ?Create@WorldMap@@QAEXGGGPAE@Z =====
  004aeef0: 55                                              push   ebp
  004aeef1: 8b ec                                           mov    ebp,esp
  004aeef3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004aeef9: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004aeefc: 6a ff                                           push   0xffffffff
  004aeefe: 68 ab c6 4d 00                                  push   0x4dc6ab
  004aef03: 50                                              push   eax
  004aef04: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aef07: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004aef0e: 53                                              push   ebx
  004aef0f: 56                                              push   esi
  004aef10: 8b f1                                           mov    esi,ecx
  004aef12: 66 8b 4d 0c                                     mov    cx,WORD PTR [ebp+0xc]
  004aef16: 66 89 46 2c                                     mov    WORD PTR [esi+0x2c],ax
  004aef1a: 25 ff ff 00 00                                  and    eax,0xffff
  004aef1f: c1 e8 02                                        shr    eax,0x2
  004aef22: c1 e0 02                                        shl    eax,0x2
  004aef25: 57                                              push   edi
  004aef26: 81 e2 ff ff 00 00                               and    edx,0xffff
  004aef2c: 50                                              push   eax
  004aef2d: 66 89 4e 2e                                     mov    WORD PTR [esi+0x2e],cx
  004aef31: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  004aef34: e8 c7 f5 01 00                                  call   0x4ce500
  004aef39: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004aef3c: 66 8b 46 2c                                     mov    ax,WORD PTR [esi+0x2c]
  004aef40: 83 c4 04                                        add    esp,0x4
  004aef43: 33 ff                                           xor    edi,edi
  004aef45: 25 fc ff 00 00                                  and    eax,0xfffc
  004aef4a: 66 85 c0                                        test   ax,ax
  004aef4d: 76 31                                           jbe    0x4aef80
  004aef4f: 33 c9                                           xor    ecx,ecx
  004aef51: 66 8b 4e 2e                                     mov    cx,WORD PTR [esi+0x2e]
  004aef55: c1 e9 02                                        shr    ecx,0x2
  004aef58: c1 e1 02                                        shl    ecx,0x2
  004aef5b: 51                                              push   ecx
  004aef5c: e8 9f f5 01 00                                  call   0x4ce500
  004aef61: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  004aef64: 8b d7                                           mov    edx,edi
  004aef66: 81 e2 ff ff 00 00                               and    edx,0xffff
  004aef6c: 89 04 91                                        mov    DWORD PTR [ecx+edx*4],eax
  004aef6f: 66 8b 56 2c                                     mov    dx,WORD PTR [esi+0x2c]
  004aef73: 83 c4 04                                        add    esp,0x4
  004aef76: 47                                              inc    edi
  004aef77: 66 c1 ea 02                                     shr    dx,0x2
  004aef7b: 66 3b fa                                        cmp    di,dx
  004aef7e: 72 cf                                           jb     0x4aef4f
  004aef80: 66 8b 46 2c                                     mov    ax,WORD PTR [esi+0x2c]
  004aef84: 33 d2                                           xor    edx,edx
  004aef86: 25 fc ff 00 00                                  and    eax,0xfffc
  004aef8b: 66 85 c0                                        test   ax,ax
  004aef8e: 76 4d                                           jbe    0x4aefdd
  004aef90: 66 8b 4e 2e                                     mov    cx,WORD PTR [esi+0x2e]
  004aef94: 33 c0                                           xor    eax,eax
  004aef96: 81 e1 fc ff 00 00                               and    ecx,0xfffc
  004aef9c: 66 85 c9                                        test   cx,cx
  004aef9f: 76 2e                                           jbe    0x4aefcf
  004aefa1: 8b ca                                           mov    ecx,edx
  004aefa3: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004aefa9: c1 e1 02                                        shl    ecx,0x2
  004aefac: 8b 7e 24                                        mov    edi,DWORD PTR [esi+0x24]
  004aefaf: 8b 3c 0f                                        mov    edi,DWORD PTR [edi+ecx*1]
  004aefb2: 8b d8                                           mov    ebx,eax
  004aefb4: 81 e3 ff ff 00 00                               and    ebx,0xffff
  004aefba: c7 04 9f 00 00 00 00                            mov    DWORD PTR [edi+ebx*4],0x0
  004aefc1: 66 8b 7e 2e                                     mov    di,WORD PTR [esi+0x2e]
  004aefc5: 40                                              inc    eax
  004aefc6: 66 c1 ef 02                                     shr    di,0x2
  004aefca: 66 3b c7                                        cmp    ax,di
  004aefcd: 72 dd                                           jb     0x4aefac
  004aefcf: 66 8b 46 2c                                     mov    ax,WORD PTR [esi+0x2c]
  004aefd3: 42                                              inc    edx
  004aefd4: 66 c1 e8 02                                     shr    ax,0x2
  004aefd8: 66 3b d0                                        cmp    dx,ax
  004aefdb: 72 b3                                           jb     0x4aef90
  004aefdd: 33 ff                                           xor    edi,edi
  004aefdf: 66 8b 7e 2e                                     mov    di,WORD PTR [esi+0x2e]
  004aefe3: 8b cf                                           mov    ecx,edi
  004aefe5: c1 e1 04                                        shl    ecx,0x4
  004aefe8: 03 cf                                           add    ecx,edi
  004aefea: 8d 14 8d 04 00 00 00                            lea    edx,[ecx*4+0x4]
  004aeff1: 52                                              push   edx
  004aeff2: e8 09 f5 01 00                                  call   0x4ce500
  004aeff7: 83 c4 04                                        add    esp,0x4
  004aeffa: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004aeffd: 85 c0                                           test   eax,eax
  004aefff: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004af006: 74 34                                           je     0x4af03c
  004af008: 68 20 2b 4b 00                                  push   0x4b2b20
  004af00d: 68 e0 2a 4b 00                                  push   0x4b2ae0
  004af012: 57                                              push   edi
  004af013: 8d 58 04                                        lea    ebx,[eax+0x4]
  004af016: 6a 44                                           push   0x44
  004af018: 53                                              push   ebx
  004af019: 89 38                                           mov    DWORD PTR [eax],edi
  004af01b: e8 6c 2d 02 00                                  call   0x4d1d8c
  004af020: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004af023: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  004af026: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004af029: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004af02c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004af033: 5f                                              pop    edi
  004af034: 5e                                              pop    esi
  004af035: 5b                                              pop    ebx
  004af036: 8b e5                                           mov    esp,ebp
  004af038: 5d                                              pop    ebp
  004af039: c2 10 00                                        ret    0x10
  004af03c: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004af03f: 33 c0                                           xor    eax,eax
  004af041: 89 4e 30                                        mov    DWORD PTR [esi+0x30],ecx
  004af044: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004af047: 5f                                              pop    edi
  004af048: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004af04b: 5e                                              pop    esi
  004af04c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004af053: 5b                                              pop    ebx
  004af054: 8b e5                                           mov    esp,ebp
  004af056: 5d                                              pop    ebp
  004af057: c2 10 00                                        ret    0x10

; ===== 0x004AF0C0 ?ViewTopUnit@WorldMap@@QAEPAVUnit@@UWorldPos@@@Z =====
  004af0c0: 55                                              push   ebp
  004af0c1: 8b ec                                           mov    ebp,esp
  004af0c3: 53                                              push   ebx
  004af0c4: 56                                              push   esi
  004af0c5: 8b f1                                           mov    esi,ecx
  004af0c7: 8b 06                                           mov    eax,DWORD PTR [esi]
  004af0c9: 57                                              push   edi
  004af0ca: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004af0cd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004af0d0: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  004af0d3: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004af0d6: 8b c8                                           mov    ecx,eax
  004af0d8: c1 f9 02                                        sar    ecx,0x2
  004af0db: 8b 0c 8a                                        mov    ecx,DWORD PTR [edx+ecx*4]
  004af0de: c1 fb 02                                        sar    ebx,0x2
  004af0e1: 8b 0c 99                                        mov    ecx,DWORD PTR [ecx+ebx*4]
  004af0e4: 33 ff                                           xor    edi,edi
  004af0e6: 85 c9                                           test   ecx,ecx
  004af0e8: 74 0c                                           je     0x4af0f6
  004af0ea: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004af0ed: 52                                              push   edx
  004af0ee: 50                                              push   eax
  004af0ef: e8 0c 18 f6 ff                                  call   0x410900
  004af0f4: 8b f8                                           mov    edi,eax
  004af0f6: 8b 06                                           mov    eax,DWORD PTR [esi]
  004af0f8: 8b ce                                           mov    ecx,esi
  004af0fa: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004af0fd: 8b c7                                           mov    eax,edi
  004af0ff: 5f                                              pop    edi
  004af100: 5e                                              pop    esi
  004af101: 5b                                              pop    ebx
  004af102: 5d                                              pop    ebp
  004af103: c2 0c 00                                        ret    0xc

; ===== 0x004AF610 ?VerifyStackPacketting@WorldMap@@AAEXUWorldPos@@PAVCapuchon@@AAV?$TemplateList@VUnit@@@@PAVUnit@@@Z =====
  004af610: 55                                              push   ebp
  004af611: 8b ec                                           mov    ebp,esp
  004af613: 6a ff                                           push   0xffffffff
  004af615: 68 e8 c6 4d 00                                  push   0x4dc6e8
  004af61a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004af620: 50                                              push   eax
  004af621: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004af628: 83 ec 14                                        sub    esp,0x14
  004af62b: 53                                              push   ebx
  004af62c: 56                                              push   esi
  004af62d: 8b f1                                           mov    esi,ecx
  004af62f: 8b 06                                           mov    eax,DWORD PTR [esi]
  004af631: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004af634: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004af637: 8a 4d 17                                        mov    cl,BYTE PTR [ebp+0x17]
  004af63a: 88 4d e0                                        mov    BYTE PTR [ebp-0x20],cl
  004af63d: 33 db                                           xor    ebx,ebx
  004af63f: 53                                              push   ebx
  004af640: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004af643: e8 f8 33 00 00                                  call   0x4b2a40
  004af648: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004af64b: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004af64e: 8d 55 e0                                        lea    edx,[ebp-0x20]
  004af651: 52                                              push   edx
  004af652: 50                                              push   eax
  004af653: 51                                              push   ecx
  004af654: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004af657: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004af65a: e8 01 16 f6 ff                                  call   0x410c60
  004af65f: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  004af662: 3b 45 e8                                        cmp    eax,DWORD PTR [ebp-0x18]
  004af665: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  004af668: 0f 84 d1 00 00 00                               je     0x4af73f
  004af66e: 8b 75 18                                        mov    esi,DWORD PTR [ebp+0x18]
  004af671: 57                                              push   edi
  004af672: 8b 38                                           mov    edi,DWORD PTR [eax]
  004af674: 3b fb                                           cmp    edi,ebx
  004af676: 0f 84 ae 00 00 00                               je     0x4af72a
  004af67c: 8b cf                                           mov    ecx,edi
  004af67e: e8 ed bf fd ff                                  call   0x48b670
  004af683: 3c 04                                           cmp    al,0x4
  004af685: 0f 84 9c 00 00 00                               je     0x4af727
  004af68b: 8b 17                                           mov    edx,DWORD PTR [edi]
  004af68d: 8b cf                                           mov    ecx,edi
  004af68f: ff 92 d0 01 00 00                               call   DWORD PTR [edx+0x1d0]
  004af695: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004af698: 8b 10                                           mov    edx,DWORD PTR [eax]
  004af69a: 51                                              push   ecx
  004af69b: 8b c8                                           mov    ecx,eax
  004af69d: ff 12                                           call   DWORD PTR [edx]
  004af69f: 84 c0                                           test   al,al
  004af6a1: 0f 84 80 00 00 00                               je     0x4af727
  004af6a7: 8b 17                                           mov    edx,DWORD PTR [edi]
  004af6a9: 8b cf                                           mov    ecx,edi
  004af6ab: ff 92 c8 01 00 00                               call   DWORD PTR [edx+0x1c8]
  004af6b1: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  004af6b4: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  004af6b7: 42                                              inc    edx
  004af6b8: 3b c3                                           cmp    eax,ebx
  004af6ba: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004af6bd: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004af6c0: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004af6c4: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004af6c7: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  004af6ca: 6a 0c                                           push   0xc
  004af6cc: 75 28                                           jne    0x4af6f6
  004af6ce: e8 1d 29 f9 ff                                  call   0x441ff0
  004af6d3: 83 c4 04                                        add    esp,0x4
  004af6d6: 3b c3                                           cmp    eax,ebx
  004af6d8: 74 07                                           je     0x4af6e1
  004af6da: 89 18                                           mov    DWORD PTR [eax],ebx
  004af6dc: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004af6df: eb 02                                           jmp    0x4af6e3
  004af6e1: 33 c0                                           xor    eax,eax
  004af6e3: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004af6e6: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004af6e9: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004af6ec: 89 18                                           mov    DWORD PTR [eax],ebx
  004af6ee: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004af6f1: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004af6f4: eb 2b                                           jmp    0x4af721
  004af6f6: e8 f5 28 f9 ff                                  call   0x441ff0
  004af6fb: 83 c4 04                                        add    esp,0x4
  004af6fe: 3b c3                                           cmp    eax,ebx
  004af700: 74 07                                           je     0x4af709
  004af702: 89 18                                           mov    DWORD PTR [eax],ebx
  004af704: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004af707: eb 02                                           jmp    0x4af70b
  004af709: 33 c0                                           xor    eax,eax
  004af70b: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004af70e: 89 01                                           mov    DWORD PTR [ecx],eax
  004af710: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004af713: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004af716: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004af719: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004af71c: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004af71f: 89 18                                           mov    DWORD PTR [eax],ebx
  004af721: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004af724: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  004af727: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004af72a: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004af72d: 83 c0 04                                        add    eax,0x4
  004af730: 3b c1                                           cmp    eax,ecx
  004af732: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  004af735: 0f 85 37 ff ff ff                               jne    0x4af672
  004af73b: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004af73e: 5f                                              pop    edi
  004af73f: 8b 16                                           mov    edx,DWORD PTR [esi]
  004af741: 8b ce                                           mov    ecx,esi
  004af743: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004af746: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  004af749: 5e                                              pop    esi
  004af74a: 3b c3                                           cmp    eax,ebx
  004af74c: 5b                                              pop    ebx
  004af74d: 74 09                                           je     0x4af758
  004af74f: 50                                              push   eax
  004af750: e8 0b 29 f9 ff                                  call   0x442060
  004af755: 83 c4 04                                        add    esp,0x4
  004af758: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004af75b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004af762: 8b e5                                           mov    esp,ebp
  004af764: 5d                                              pop    ebp
  004af765: c2 18 00                                        ret    0x18

; ===== 0x004B0560 ?GetLocalRandomPos@WorldMap@@QAE?AUWorldPos@@U2@E@Z =====
  004b0560: 55                                              push   ebp
  004b0561: 8b ec                                           mov    ebp,esp
  004b0563: 51                                              push   ecx
  004b0564: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004b0567: 84 c0                                           test   al,al
  004b0569: 56                                              push   esi
  004b056a: 57                                              push   edi
  004b056b: 8b f9                                           mov    edi,ecx
  004b056d: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004b0570: 0f 85 9f 00 00 00                               jne    0x4b0615
  004b0576: 6a 03                                           push   0x3
  004b0578: 6a 00                                           push   0x0
  004b057a: b9 34 5e 51 00                                  mov    ecx,0x515e34
  004b057f: e8 1c 8b fa ff                                  call   0x4590a0
  004b0584: 83 f8 03                                        cmp    eax,0x3
  004b0587: 0f 87 bf 00 00 00                               ja     0x4b064c
  004b058d: ff 24 85 a4 06 4b 00                            jmp    DWORD PTR [eax*4+0x4b06a4]
  004b0615: 53                                              push   ebx
  004b0616: 8b f8                                           mov    edi,eax
  004b0618: 81 e7 ff 00 00 00                               and    edi,0xff
  004b061e: 8b df                                           mov    ebx,edi
  004b0620: 57                                              push   edi
  004b0621: f7 db                                           neg    ebx
  004b0623: 53                                              push   ebx
  004b0624: b9 34 5e 51 00                                  mov    ecx,0x515e34
  004b0629: e8 72 8a fa ff                                  call   0x4590a0
  004b062e: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b0631: 8b f0                                           mov    esi,eax
  004b0633: 57                                              push   edi
  004b0634: 03 f1                                           add    esi,ecx
  004b0636: 53                                              push   ebx
  004b0637: b9 34 5e 51 00                                  mov    ecx,0x515e34
  004b063c: e8 5f 8a fa ff                                  call   0x4590a0
  004b0641: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004b0644: 8b 7d fc                                        mov    edi,DWORD PTR [ebp-0x4]
  004b0647: 03 c1                                           add    eax,ecx
  004b0649: 5b                                              pop    ebx
  004b064a: eb 06                                           jmp    0x4b0652
  004b064c: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b064f: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004b0652: 85 f6                                           test   esi,esi
  004b0654: 8b 57 28                                        mov    edx,DWORD PTR [edi+0x28]
  004b0657: 7c 2f                                           jl     0x4b0688
  004b0659: 33 c9                                           xor    ecx,ecx
  004b065b: 66 8b 4f 2c                                     mov    cx,WORD PTR [edi+0x2c]
  004b065f: 3b f1                                           cmp    esi,ecx
  004b0661: 7d 25                                           jge    0x4b0688
  004b0663: 85 c0                                           test   eax,eax
  004b0665: 7c 21                                           jl     0x4b0688
  004b0667: 33 c9                                           xor    ecx,ecx
  004b0669: 66 8b 4f 2e                                     mov    cx,WORD PTR [edi+0x2e]
  004b066d: 3b c1                                           cmp    eax,ecx
  004b066f: 7d 17                                           jge    0x4b0688
  004b0671: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004b0674: 8b f9                                           mov    edi,ecx
  004b0676: 89 37                                           mov    DWORD PTR [edi],esi
  004b0678: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004b067b: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  004b067e: 5f                                              pop    edi
  004b067f: 8b c1                                           mov    eax,ecx
  004b0681: 5e                                              pop    esi
  004b0682: 8b e5                                           mov    esp,ebp
  004b0684: 5d                                              pop    ebp
  004b0685: c2 14 00                                        ret    0x14
  004b0688: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b068b: 33 c9                                           xor    ecx,ecx
  004b068d: 33 d2                                           xor    edx,edx
  004b068f: 33 f6                                           xor    esi,esi
  004b0691: 8b f8                                           mov    edi,eax
  004b0693: 89 37                                           mov    DWORD PTR [edi],esi
  004b0695: 89 57 04                                        mov    DWORD PTR [edi+0x4],edx
  004b0698: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004b069b: 5f                                              pop    edi
  004b069c: 5e                                              pop    esi
  004b069d: 8b e5                                           mov    esp,ebp
  004b069f: 5d                                              pop    ebp
  004b06a0: c2 14 00                                        ret    0x14

; ===== 0x004B1C40 ?GetMAXX@WorldMap@@QAEHXZ =====
  004b1c40: 33 c0                                           xor    eax,eax
  004b1c42: 66 8b 41 2c                                     mov    ax,WORD PTR [ecx+0x2c]
  004b1c46: c3                                              ret

; ===== 0x004B1C50 ?GetMAXY@WorldMap@@QAEHXZ =====
  004b1c50: 33 c0                                           xor    eax,eax
  004b1c52: 66 8b 41 2e                                     mov    ax,WORD PTR [ecx+0x2e]
  004b1c56: c3                                              ret

; ===== 0x004B1C60 ?QueryAreaType@WorldMap@@QAEEUWorldPos@@@Z =====
  004b1c60: 55                                              push   ebp
  004b1c61: 8b ec                                           mov    ebp,esp
  004b1c63: 53                                              push   ebx
  004b1c64: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004b1c67: 56                                              push   esi
  004b1c68: 57                                              push   edi
  004b1c69: 33 ff                                           xor    edi,edi
  004b1c6b: 66 8b 79 2c                                     mov    di,WORD PTR [ecx+0x2c]
  004b1c6f: 8b c3                                           mov    eax,ebx
  004b1c71: 99                                              cdq
  004b1c72: 2b c2                                           sub    eax,edx
  004b1c74: d1 f8                                           sar    eax,1
  004b1c76: 8b f7                                           mov    esi,edi
  004b1c78: d1 ee                                           shr    esi,1
  004b1c7a: 0f af 75 0c                                     imul   esi,DWORD PTR [ebp+0xc]
  004b1c7e: 03 f0                                           add    esi,eax
  004b1c80: 32 c0                                           xor    al,al
  004b1c82: 3b df                                           cmp    ebx,edi
  004b1c84: 7d 3c                                           jge    0x4b1cc2
  004b1c86: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004b1c89: 33 ff                                           xor    edi,edi
  004b1c8b: 66 8b 79 2e                                     mov    di,WORD PTR [ecx+0x2e]
  004b1c8f: 3b d7                                           cmp    edx,edi
  004b1c91: 7d 2f                                           jge    0x4b1cc2
  004b1c93: 85 db                                           test   ebx,ebx
  004b1c95: 7c 2b                                           jl     0x4b1cc2
  004b1c97: 85 d2                                           test   edx,edx
  004b1c99: 7c 27                                           jl     0x4b1cc2
  004b1c9b: 81 e3 01 00 00 80                               and    ebx,0x80000001
  004b1ca1: 79 05                                           jns    0x4b1ca8
  004b1ca3: 4b                                              dec    ebx
  004b1ca4: 83 cb fe                                        or     ebx,0xfffffffe
  004b1ca7: 43                                              inc    ebx
  004b1ca8: 75 10                                           jne    0x4b1cba
  004b1caa: 8b 41 30                                        mov    eax,DWORD PTR [ecx+0x30]
  004b1cad: 8a 04 30                                        mov    al,BYTE PTR [eax+esi*1]
  004b1cb0: 5f                                              pop    edi
  004b1cb1: 5e                                              pop    esi
  004b1cb2: c0 e8 04                                        shr    al,0x4
  004b1cb5: 5b                                              pop    ebx
  004b1cb6: 5d                                              pop    ebp
  004b1cb7: c2 0c 00                                        ret    0xc
  004b1cba: 8b 49 30                                        mov    ecx,DWORD PTR [ecx+0x30]
  004b1cbd: 8a 04 31                                        mov    al,BYTE PTR [ecx+esi*1]
  004b1cc0: 24 0f                                           and    al,0xf
  004b1cc2: 5f                                              pop    edi
  004b1cc3: 5e                                              pop    esi
  004b1cc4: 5b                                              pop    ebx
  004b1cc5: 5d                                              pop    ebp
  004b1cc6: c2 0c 00                                        ret    0xc

; ===== 0x004B1CD0 ?internalIsBlocking@WorldMap@@AAEHUWorldPos@@PAVUnit@@FF@Z =====
  004b1cd0: 55                                              push   ebp
  004b1cd1: 8b ec                                           mov    ebp,esp
  004b1cd3: 56                                              push   esi
  004b1cd4: 33 f6                                           xor    esi,esi
  004b1cd6: 66 8b 71 2c                                     mov    si,WORD PTR [ecx+0x2c]
  004b1cda: 57                                              push   edi
  004b1cdb: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004b1cde: 3b fe                                           cmp    edi,esi
  004b1ce0: 7d 15                                           jge    0x4b1cf7
  004b1ce2: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004b1ce5: 33 d2                                           xor    edx,edx
  004b1ce7: 66 8b 51 2e                                     mov    dx,WORD PTR [ecx+0x2e]
  004b1ceb: 3b c2                                           cmp    eax,edx
  004b1ced: 7d 08                                           jge    0x4b1cf7
  004b1cef: 85 ff                                           test   edi,edi
  004b1cf1: 7c 04                                           jl     0x4b1cf7
  004b1cf3: 85 c0                                           test   eax,eax
  004b1cf5: 7d 0b                                           jge    0x4b1d02
  004b1cf7: 5f                                              pop    edi
  004b1cf8: b8 01 00 00 00                                  mov    eax,0x1
  004b1cfd: 5e                                              pop    esi
  004b1cfe: 5d                                              pop    ebp
  004b1cff: c2 18 00                                        ret    0x18
  004b1d02: d1 ee                                           shr    esi,1
  004b1d04: 0f af f0                                        imul   esi,eax
  004b1d07: 8b c7                                           mov    eax,edi
  004b1d09: 99                                              cdq
  004b1d0a: 2b c2                                           sub    eax,edx
  004b1d0c: d1 f8                                           sar    eax,1
  004b1d0e: 03 f0                                           add    esi,eax
  004b1d10: 81 e7 01 00 00 80                               and    edi,0x80000001
  004b1d16: 79 05                                           jns    0x4b1d1d
  004b1d18: 4f                                              dec    edi
  004b1d19: 83 cf fe                                        or     edi,0xfffffffe
  004b1d1c: 47                                              inc    edi
  004b1d1d: 75 0e                                           jne    0x4b1d2d
  004b1d1f: 8b 41 30                                        mov    eax,DWORD PTR [ecx+0x30]
  004b1d22: 8a 0c 30                                        mov    cl,BYTE PTR [eax+esi*1]
  004b1d25: c0 e9 04                                        shr    cl,0x4
  004b1d28: 88 4d 10                                        mov    BYTE PTR [ebp+0x10],cl
  004b1d2b: eb 0b                                           jmp    0x4b1d38
  004b1d2d: 8b 51 30                                        mov    edx,DWORD PTR [ecx+0x30]
  004b1d30: 8a 04 32                                        mov    al,BYTE PTR [edx+esi*1]
  004b1d33: 24 0f                                           and    al,0xf
  004b1d35: 88 45 10                                        mov    BYTE PTR [ebp+0x10],al
  004b1d38: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b1d3b: 25 ff 00 00 00                                  and    eax,0xff
  004b1d40: 83 f8 09                                        cmp    eax,0x9
  004b1d43: 77 45                                           ja     0x4b1d8a
  004b1d45: 33 c9                                           xor    ecx,ecx
  004b1d47: 8a 88 a4 1d 4b 00                               mov    cl,BYTE PTR [eax+0x4b1da4]
  004b1d4d: ff 24 8d 94 1d 4b 00                            jmp    DWORD PTR [ecx*4+0x4b1d94]
  004b1d8a: 5f                                              pop    edi
  004b1d8b: 33 c0                                           xor    eax,eax
  004b1d8d: 5e                                              pop    esi
  004b1d8e: 5d                                              pop    ebp
  004b1d8f: c2 18 00                                        ret    0x18

; ===== 0x004B1F50 ?GetLocalUnits@WorldMap@@QAEPAV?$TemplateList@VUnit@@@@UWorldPos@@EH@Z =====
  004b1f50: 55                                              push   ebp
  004b1f51: 8b ec                                           mov    ebp,esp
  004b1f53: 83 ec 24                                        sub    esp,0x24
  004b1f56: 56                                              push   esi
  004b1f57: 8b f1                                           mov    esi,ecx
  004b1f59: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b1f5c: 80 f9 3c                                        cmp    cl,0x3c
  004b1f5f: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  004b1f62: 0f 83 2d 02 00 00                               jae    0x4b2195
  004b1f68: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004b1f6b: 53                                              push   ebx
  004b1f6c: 81 e1 ff 00 00 00                               and    ecx,0xff
  004b1f72: 8b c2                                           mov    eax,edx
  004b1f74: 2b c1                                           sub    eax,ecx
  004b1f76: 57                                              push   edi
  004b1f77: bb 00 00 00 00                                  mov    ebx,0x0
  004b1f7c: 79 05                                           jns    0x4b1f83
  004b1f7e: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004b1f81: eb 06                                           jmp    0x4b1f89
  004b1f83: c1 f8 02                                        sar    eax,0x2
  004b1f86: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b1f89: 33 c0                                           xor    eax,eax
  004b1f8b: 66 8b 46 2c                                     mov    ax,WORD PTR [esi+0x2c]
  004b1f8f: 03 d1                                           add    edx,ecx
  004b1f91: 3b d0                                           cmp    edx,eax
  004b1f93: 7c 09                                           jl     0x4b1f9e
  004b1f95: 48                                              dec    eax
  004b1f96: c1 f8 02                                        sar    eax,0x2
  004b1f99: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004b1f9c: eb 06                                           jmp    0x4b1fa4
  004b1f9e: c1 fa 02                                        sar    edx,0x2
  004b1fa1: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  004b1fa4: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004b1fa7: 8b c2                                           mov    eax,edx
  004b1fa9: 2b c1                                           sub    eax,ecx
  004b1fab: 79 05                                           jns    0x4b1fb2
  004b1fad: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  004b1fb0: eb 06                                           jmp    0x4b1fb8
  004b1fb2: c1 f8 02                                        sar    eax,0x2
  004b1fb5: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  004b1fb8: 33 c0                                           xor    eax,eax
  004b1fba: 66 8b 46 2e                                     mov    ax,WORD PTR [esi+0x2e]
  004b1fbe: 03 ca                                           add    ecx,edx
  004b1fc0: 3b c8                                           cmp    ecx,eax
  004b1fc2: 7c 0b                                           jl     0x4b1fcf
  004b1fc4: 8d 78 ff                                        lea    edi,[eax-0x1]
  004b1fc7: c1 ff 02                                        sar    edi,0x2
  004b1fca: 89 7d f4                                        mov    DWORD PTR [ebp-0xc],edi
  004b1fcd: eb 08                                           jmp    0x4b1fd7
  004b1fcf: c1 f9 02                                        sar    ecx,0x2
  004b1fd2: 89 4d f4                                        mov    DWORD PTR [ebp-0xc],ecx
  004b1fd5: 8b f9                                           mov    edi,ecx
  004b1fd7: 6a 44                                           push   0x44
  004b1fd9: e8 12 00 f9 ff                                  call   0x441ff0
  004b1fde: 8b f0                                           mov    esi,eax
  004b1fe0: 83 c4 04                                        add    esp,0x4
  004b1fe3: 3b f3                                           cmp    esi,ebx
  004b1fe5: 74 35                                           je     0x4b201c
  004b1fe7: 8d 46 08                                        lea    eax,[esi+0x8]
  004b1fea: 50                                              push   eax
  004b1feb: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004b1ff1: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  004b1ff8: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004b1ffe: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  004b2001: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  004b2004: 89 5e 2c                                        mov    DWORD PTR [esi+0x2c],ebx
  004b2007: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  004b200a: c7 06 6c e6 4d 00                               mov    DWORD PTR [esi],0x4de66c
  004b2010: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004b2013: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004b2017: 89 5e 38                                        mov    DWORD PTR [esi+0x38],ebx
  004b201a: eb 02                                           jmp    0x4b201e
  004b201c: 33 f6                                           xor    esi,esi
  004b201e: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004b2021: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b2023: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004b2026: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004b2029: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004b202c: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  004b202f: 25 ff ff 00 00                                  and    eax,0xffff
  004b2034: 3b c1                                           cmp    eax,ecx
  004b2036: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b2039: 0f 83 43 01 00 00                               jae    0x4b2182
  004b203f: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b2042: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004b2048: 89 4d dc                                        mov    DWORD PTR [ebp-0x24],ecx
  004b204b: 3b cf                                           cmp    ecx,edi
  004b204d: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004b2050: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004b2053: 0f 83 0f 01 00 00                               jae    0x4b2168
  004b2059: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  004b205c: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004b205f: 8b 42 24                                        mov    eax,DWORD PTR [edx+0x24]
  004b2062: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004b2065: 8b 04 90                                        mov    eax,DWORD PTR [eax+edx*4]
  004b2068: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  004b206b: 39 1c 90                                        cmp    DWORD PTR [eax+edx*4],ebx
  004b206e: 0f 84 dd 00 00 00                               je     0x4b2151
  004b2074: 89 5d f8                                        mov    DWORD PTR [ebp-0x8],ebx
  004b2077: 89 5d 10                                        mov    DWORD PTR [ebp+0x10],ebx
  004b207a: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b207d: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b2080: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004b2083: 50                                              push   eax
  004b2084: 8b 42 24                                        mov    eax,DWORD PTR [edx+0x24]
  004b2087: 51                                              push   ecx
  004b2088: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004b208b: 8b 14 88                                        mov    edx,DWORD PTR [eax+ecx*4]
  004b208e: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  004b2091: 8b 0c 82                                        mov    ecx,DWORD PTR [edx+eax*4]
  004b2094: e8 67 e8 f5 ff                                  call   0x410900
  004b2099: 8b f8                                           mov    edi,eax
  004b209b: 3b fb                                           cmp    edi,ebx
  004b209d: 0f 84 86 00 00 00                               je     0x4b2129
  004b20a3: 39 5d 18                                        cmp    DWORD PTR [ebp+0x18],ebx
  004b20a6: 74 0b                                           je     0x4b20b3
  004b20a8: 8b cf                                           mov    ecx,edi
  004b20aa: e8 c1 95 fd ff                                  call   0x48b670
  004b20af: 3c 03                                           cmp    al,0x3
  004b20b1: 74 76                                           je     0x4b2129
  004b20b3: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  004b20b6: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  004b20b9: 42                                              inc    edx
  004b20ba: 3b c3                                           cmp    eax,ebx
  004b20bc: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004b20bf: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004b20c2: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004b20c6: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004b20c9: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  004b20cc: 6a 0c                                           push   0xc
  004b20ce: 75 28                                           jne    0x4b20f8
  004b20d0: e8 1b ff f8 ff                                  call   0x441ff0
  004b20d5: 83 c4 04                                        add    esp,0x4
  004b20d8: 3b c3                                           cmp    eax,ebx
  004b20da: 74 07                                           je     0x4b20e3
  004b20dc: 89 18                                           mov    DWORD PTR [eax],ebx
  004b20de: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004b20e1: eb 02                                           jmp    0x4b20e5
  004b20e3: 33 c0                                           xor    eax,eax
  004b20e5: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004b20e8: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004b20eb: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004b20ee: 89 18                                           mov    DWORD PTR [eax],ebx
  004b20f0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004b20f3: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004b20f6: eb 2b                                           jmp    0x4b2123
  004b20f8: e8 f3 fe f8 ff                                  call   0x441ff0
  004b20fd: 83 c4 04                                        add    esp,0x4
  004b2100: 3b c3                                           cmp    eax,ebx
  004b2102: 74 07                                           je     0x4b210b
  004b2104: 89 18                                           mov    DWORD PTR [eax],ebx
  004b2106: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004b2109: eb 02                                           jmp    0x4b210d
  004b210b: 33 c0                                           xor    eax,eax
  004b210d: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004b2110: 89 02                                           mov    DWORD PTR [edx],eax
  004b2112: 8b 4e 2c                                        mov    ecx,DWORD PTR [esi+0x2c]
  004b2115: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004b2118: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004b211b: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004b211e: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004b2121: 89 1a                                           mov    DWORD PTR [edx],ebx
  004b2123: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004b2126: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  004b2129: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b212c: 40                                              inc    eax
  004b212d: 66 3d 04 00                                     cmp    ax,0x4
  004b2131: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004b2134: 0f 82 40 ff ff ff                               jb     0x4b207a
  004b213a: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004b213d: 40                                              inc    eax
  004b213e: 66 3d 04 00                                     cmp    ax,0x4
  004b2142: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004b2145: 0f 82 2c ff ff ff                               jb     0x4b2077
  004b214b: 8b 7d f4                                        mov    edi,DWORD PTR [ebp-0xc]
  004b214e: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  004b2151: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  004b2154: 40                                              inc    eax
  004b2155: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004b2158: 25 ff ff 00 00                                  and    eax,0xffff
  004b215d: 3b c7                                           cmp    eax,edi
  004b215f: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004b2162: 0f 82 f4 fe ff ff                               jb     0x4b205c
  004b2168: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  004b216b: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  004b216e: 40                                              inc    eax
  004b216f: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  004b2172: 25 ff ff 00 00                                  and    eax,0xffff
  004b2177: 3b c2                                           cmp    eax,edx
  004b2179: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b217c: 0f 82 c9 fe ff ff                               jb     0x4b204b
  004b2182: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004b2185: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b2187: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b218a: 5f                                              pop    edi
  004b218b: 5b                                              pop    ebx
  004b218c: 8b c6                                           mov    eax,esi
  004b218e: 5e                                              pop    esi
  004b218f: 8b e5                                           mov    esp,ebp
  004b2191: 5d                                              pop    ebp
  004b2192: c2 14 00                                        ret    0x14
  004b2195: 33 c0                                           xor    eax,eax
  004b2197: 5e                                              pop    esi
  004b2198: 8b e5                                           mov    esp,ebp
  004b219a: 5d                                              pop    ebp
  004b219b: c2 14 00                                        ret    0x14

; ===== 0x004B2380 ?GetHiveAt@WorldMap@@AAEPAVUnit@@HH@Z =====
  004b2380: 55                                              push   ebp
  004b2381: 8b ec                                           mov    ebp,esp
  004b2383: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004b2386: 8b 49 24                                        mov    ecx,DWORD PTR [ecx+0x24]
  004b2389: 53                                              push   ebx
  004b238a: 56                                              push   esi
  004b238b: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004b238e: 57                                              push   edi
  004b238f: 8b fa                                           mov    edi,edx
  004b2391: c1 ff 02                                        sar    edi,0x2
  004b2394: 8b 0c b9                                        mov    ecx,DWORD PTR [ecx+edi*4]
  004b2397: 8b de                                           mov    ebx,esi
  004b2399: c1 fb 02                                        sar    ebx,0x2
  004b239c: 8b 0c 99                                        mov    ecx,DWORD PTR [ecx+ebx*4]
  004b239f: 33 c0                                           xor    eax,eax
  004b23a1: 85 c9                                           test   ecx,ecx
  004b23a3: 74 09                                           je     0x4b23ae
  004b23a5: 6a 04                                           push   0x4
  004b23a7: 56                                              push   esi
  004b23a8: 52                                              push   edx
  004b23a9: e8 82 e9 f5 ff                                  call   0x410d30
  004b23ae: 5f                                              pop    edi
  004b23af: 5e                                              pop    esi
  004b23b0: 5b                                              pop    ebx
  004b23b1: 5d                                              pop    ebp
  004b23b2: c2 08 00                                        ret    0x8

; ===== 0x004B23C0 ?VerifyPeripheralHives@WorldMap@@QAEXUWorldPos@@W4MOVE@DIR@@@Z =====
  004b23c0: 55                                              push   ebp
  004b23c1: 8b ec                                           mov    ebp,esp
  004b23c3: 83 ec 10                                        sub    esp,0x10
  004b23c6: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004b23c9: 53                                              push   ebx
  004b23ca: 56                                              push   esi
  004b23cb: 8b d9                                           mov    ebx,ecx
  004b23cd: 33 f6                                           xor    esi,esi
  004b23cf: 33 c0                                           xor    eax,eax
  004b23d1: 57                                              push   edi
  004b23d2: 33 c9                                           xor    ecx,ecx
  004b23d4: 33 ff                                           xor    edi,edi
  004b23d6: 4a                                              dec    edx
  004b23d7: 83 fa 07                                        cmp    edx,0x7
  004b23da: 89 5d f4                                        mov    DWORD PTR [ebp-0xc],ebx
  004b23dd: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  004b23e0: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004b23e3: 0f 87 b0 00 00 00                               ja     0x4b2499
  004b23e9: ff 24 95 cc 25 4b 00                            jmp    DWORD PTR [edx*4+0x4b25cc]
  004b2499: 33 d2                                           xor    edx,edx
  004b249b: 85 c0                                           test   eax,eax
  004b249d: 0f 9c c2                                        setl   dl
  004b24a0: 4a                                              dec    edx
  004b24a1: 23 d0                                           and    edx,eax
  004b24a3: 33 c0                                           xor    eax,eax
  004b24a5: 85 c9                                           test   ecx,ecx
  004b24a7: 0f 9c c0                                        setl   al
  004b24aa: 89 55 14                                        mov    DWORD PTR [ebp+0x14],edx
  004b24ad: 48                                              dec    eax
  004b24ae: 23 c1                                           and    eax,ecx
  004b24b0: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004b24b3: 33 c0                                           xor    eax,eax
  004b24b5: 66 8b 43 2c                                     mov    ax,WORD PTR [ebx+0x2c]
  004b24b9: 3b f8                                           cmp    edi,eax
  004b24bb: 7c 03                                           jl     0x4b24c0
  004b24bd: 8d 78 ff                                        lea    edi,[eax-0x1]
  004b24c0: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004b24c3: 33 c9                                           xor    ecx,ecx
  004b24c5: 66 8b 4b 2e                                     mov    cx,WORD PTR [ebx+0x2e]
  004b24c9: 3b d1                                           cmp    edx,ecx
  004b24cb: 7c 06                                           jl     0x4b24d3
  004b24cd: 8d 51 ff                                        lea    edx,[ecx-0x1]
  004b24d0: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004b24d3: 85 f6                                           test   esi,esi
  004b24d5: 0f 8c e7 00 00 00                               jl     0x4b25c2
  004b24db: 3b f1                                           cmp    esi,ecx
  004b24dd: 0f 8d df 00 00 00                               jge    0x4b25c2
  004b24e3: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b24e6: 85 c9                                           test   ecx,ecx
  004b24e8: 0f 8c d4 00 00 00                               jl     0x4b25c2
  004b24ee: 3b c8                                           cmp    ecx,eax
  004b24f0: 0f 8d cc 00 00 00                               jge    0x4b25c2
  004b24f6: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004b24f8: 8b cb                                           mov    ecx,ebx
  004b24fa: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004b24fd: 85 f6                                           test   esi,esi
  004b24ff: 74 5a                                           je     0x4b255b
  004b2501: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  004b2504: 3b df                                           cmp    ebx,edi
  004b2506: 7f 50                                           jg     0x4b2558
  004b2508: 8b c6                                           mov    eax,esi
  004b250a: c1 f8 02                                        sar    eax,0x2
  004b250d: c1 e0 02                                        shl    eax,0x2
  004b2510: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  004b2513: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  004b2516: 8b 52 24                                        mov    edx,DWORD PTR [edx+0x24]
  004b2519: 8b cb                                           mov    ecx,ebx
  004b251b: c1 f9 02                                        sar    ecx,0x2
  004b251e: 8b 0c 8a                                        mov    ecx,DWORD PTR [edx+ecx*4]
  004b2521: 8b 0c 01                                        mov    ecx,DWORD PTR [ecx+eax*1]
  004b2524: 85 c9                                           test   ecx,ecx
  004b2526: 74 2b                                           je     0x4b2553
  004b2528: 6a 04                                           push   0x4
  004b252a: 56                                              push   esi
  004b252b: 53                                              push   ebx
  004b252c: e8 ff e7 f5 ff                                  call   0x410d30
  004b2531: 85 c0                                           test   eax,eax
  004b2533: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004b2536: 74 18                                           je     0x4b2550
  004b2538: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b253b: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b253d: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b2540: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004b2543: e8 98 9a f8 ff                                  call   0x43bfe0
  004b2548: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b254b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004b254d: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004b2550: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004b2553: 43                                              inc    ebx
  004b2554: 3b df                                           cmp    ebx,edi
  004b2556: 7e bb                                           jle    0x4b2513
  004b2558: 8b 5d f4                                        mov    ebx,DWORD PTR [ebp-0xc]
  004b255b: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  004b255e: 85 d2                                           test   edx,edx
  004b2560: 74 59                                           je     0x4b25bb
  004b2562: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004b2565: 3b 75 fc                                        cmp    esi,DWORD PTR [ebp-0x4]
  004b2568: 7f 51                                           jg     0x4b25bb
  004b256a: 8b c2                                           mov    eax,edx
  004b256c: c1 f8 02                                        sar    eax,0x2
  004b256f: c1 e0 02                                        shl    eax,0x2
  004b2572: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  004b2575: eb 03                                           jmp    0x4b257a
  004b2577: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  004b257a: 8b 4b 24                                        mov    ecx,DWORD PTR [ebx+0x24]
  004b257d: 8b 0c 08                                        mov    ecx,DWORD PTR [eax+ecx*1]
  004b2580: 8b fe                                           mov    edi,esi
  004b2582: c1 ff 02                                        sar    edi,0x2
  004b2585: 8b 0c b9                                        mov    ecx,DWORD PTR [ecx+edi*4]
  004b2588: 85 c9                                           test   ecx,ecx
  004b258a: 74 27                                           je     0x4b25b3
  004b258c: 6a 04                                           push   0x4
  004b258e: 56                                              push   esi
  004b258f: 52                                              push   edx
  004b2590: e8 9b e7 f5 ff                                  call   0x410d30
  004b2595: 8b f8                                           mov    edi,eax
  004b2597: 85 ff                                           test   edi,edi
  004b2599: 74 15                                           je     0x4b25b0
  004b259b: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004b259d: 8b cb                                           mov    ecx,ebx
  004b259f: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b25a2: 8b cf                                           mov    ecx,edi
  004b25a4: e8 37 9a f8 ff                                  call   0x43bfe0
  004b25a9: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004b25ab: 8b cb                                           mov    ecx,ebx
  004b25ad: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004b25b0: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004b25b3: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004b25b6: 46                                              inc    esi
  004b25b7: 3b f1                                           cmp    esi,ecx
  004b25b9: 7e bc                                           jle    0x4b2577
  004b25bb: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004b25bd: 8b cb                                           mov    ecx,ebx
  004b25bf: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b25c2: 5f                                              pop    edi
  004b25c3: 5e                                              pop    esi
  004b25c4: 5b                                              pop    ebx
  004b25c5: 8b e5                                           mov    esp,ebp
  004b25c7: 5d                                              pop    ebp
  004b25c8: c2 10 00                                        ret    0x10

