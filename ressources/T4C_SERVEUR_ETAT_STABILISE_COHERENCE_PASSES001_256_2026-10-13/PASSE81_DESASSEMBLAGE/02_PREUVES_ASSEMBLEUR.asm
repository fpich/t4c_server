; PASSE 81 - PNJ, objets, sorts, competences et regles
; SHA256 binaire 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 4477 instructions depuis 85 entrees exportees; chemins indirects exclus.

; ===== 0x00401000 ?attacked@Objects@@UAEHPAU_ATTACK_STRUCTURE@@PAVUnit@@@Z =====
  00401000: 55                                              push   ebp
  00401001: 8b ec                                           mov    ebp,esp
  00401003: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00401006: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00401009: 50                                              push   eax
  0040100a: 52                                              push   edx
  0040100b: e8 80 a7 08 00                                  call   0x48b790
  00401010: 5d                                              pop    ebp
  00401011: c2 08 00                                        ret    0x8

; ===== 0x00401C00 ?attacked@Creatures@@UAEHPAU_ATTACK_STRUCTURE@@PAVUnit@@@Z =====
  00401c00: 55                                              push   ebp
  00401c01: 8b ec                                           mov    ebp,esp
  00401c03: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00401c06: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00401c09: 50                                              push   eax
  00401c0a: 52                                              push   edx
  00401c0b: e8 80 9b 08 00                                  call   0x48b790
  00401c10: 5d                                              pop    ebp
  00401c11: c2 08 00                                        ret    0x8

; ===== 0x00401E90 ??0GAME_RULES@@QAE@ABV0@@Z =====
  00401e90: 8b c1                                           mov    eax,ecx
  00401e92: c7 00 d0 e5 4d 00                               mov    DWORD PTR [eax],0x4de5d0
  00401e98: c2 04 00                                        ret    0x4

; ===== 0x00401FA0 ?GetMaxPlayers@TFCMAIN@@SAGXZ =====
  00401fa0: 66 b8 03 00                                     mov    ax,0x3
  00401fa4: c3                                              ret

; ===== 0x00432300 ??0Creatures@@QAE@XZ =====
  00432300: 55                                              push   ebp
  00432301: 8b ec                                           mov    ebp,esp
  00432303: 6a ff                                           push   0xffffffff
  00432305: 68 68 51 4d 00                                  push   0x4d5168
  0043230a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00432310: 50                                              push   eax
  00432311: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00432318: 51                                              push   ecx
  00432319: 56                                              push   esi
  0043231a: 57                                              push   edi
  0043231b: 8b f1                                           mov    esi,ecx
  0043231d: 33 ff                                           xor    edi,edi
  0043231f: 57                                              push   edi
  00432320: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00432323: e8 b8 86 05 00                                  call   0x48a9e0
  00432328: 6a 14                                           push   0x14
  0043232a: 6a 0f                                           push   0xf
  0043232c: b9 34 5e 51 00                                  mov    ecx,0x515e34
  00432331: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00432334: c7 06 b0 eb 4d 00                               mov    DWORD PTR [esi],0x4debb0
  0043233a: c7 46 30 a0 eb 4d 00                            mov    DWORD PTR [esi+0x30],0x4deba0
  00432341: c7 86 0c 01 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x10c],0x1
  0043234b: c7 86 10 01 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x110],0x1
  00432355: 89 be 24 01 00 00                               mov    DWORD PTR [esi+0x124],edi
  0043235b: 89 be 28 01 00 00                               mov    DWORD PTR [esi+0x128],edi
  00432361: 66 89 be 50 01 00 00                            mov    WORD PTR [esi+0x150],di
  00432368: e8 33 6d 02 00                                  call   0x4590a0
  0043236d: 6a 01                                           push   0x1
  0043236f: 8b ce                                           mov    ecx,esi
  00432371: 88 86 20 01 00 00                               mov    BYTE PTR [esi+0x120],al
  00432377: e8 04 9a 05 00                                  call   0x48bd80
  0043237c: 6a 02                                           push   0x2
  0043237e: 8b ce                                           mov    ecx,esi
  00432380: e8 db d0 05 00                                  call   0x48f460
  00432385: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00432388: 89 be 48 01 00 00                               mov    DWORD PTR [esi+0x148],edi
  0043238e: 89 be 44 01 00 00                               mov    DWORD PTR [esi+0x144],edi
  00432394: 89 be 40 01 00 00                               mov    DWORD PTR [esi+0x140],edi
  0043239a: 89 be 08 01 00 00                               mov    DWORD PTR [esi+0x108],edi
  004323a0: 89 be 04 01 00 00                               mov    DWORD PTR [esi+0x104],edi
  004323a6: 5f                                              pop    edi
  004323a7: 8b c6                                           mov    eax,esi
  004323a9: 5e                                              pop    esi
  004323aa: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004323b1: 8b e5                                           mov    esp,ebp
  004323b3: 5d                                              pop    ebp
  004323b4: c3                                              ret

; ===== 0x00432450 ??1Creatures@@EAE@XZ =====
  00432450: 55                                              push   ebp
  00432451: 8b ec                                           mov    ebp,esp
  00432453: 6a ff                                           push   0xffffffff
  00432455: 68 88 51 4d 00                                  push   0x4d5188
  0043245a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00432460: 50                                              push   eax
  00432461: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00432468: 51                                              push   ecx
  00432469: 56                                              push   esi
  0043246a: 8b f1                                           mov    esi,ecx
  0043246c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0043246f: c7 06 b0 eb 4d 00                               mov    DWORD PTR [esi],0x4debb0
  00432475: c7 46 30 a0 eb 4d 00                            mov    DWORD PTR [esi+0x30],0x4deba0
  0043247c: 8b 8e 08 01 00 00                               mov    ecx,DWORD PTR [esi+0x108]
  00432482: 85 c9                                           test   ecx,ecx
  00432484: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0043248b: 74 05                                           je     0x432492
  0043248d: e8 3e 9b 00 00                                  call   0x43bfd0
  00432492: 8b ce                                           mov    ecx,esi
  00432494: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043249b: e8 d0 87 05 00                                  call   0x48ac70
  004324a0: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004324a3: 5e                                              pop    esi
  004324a4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004324ab: 8b e5                                           mov    esp,ebp
  004324ad: 5d                                              pop    ebp
  004324ae: c3                                              ret

; ===== 0x004329F0 ?GetAgressivness@Creatures@@UAEDXZ =====
  004329f0: 8a 81 52 01 00 00                               mov    al,BYTE PTR [ecx+0x152]
  004329f6: c3                                              ret

; ===== 0x00432A00 ?SetAgressivness@Creatures@@UAEXD@Z =====
  00432a00: 55                                              push   ebp
  00432a01: 8b ec                                           mov    ebp,esp
  00432a03: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  00432a06: 88 81 52 01 00 00                               mov    BYTE PTR [ecx+0x152],al
  00432a0c: 5d                                              pop    ebp
  00432a0d: c2 04 00                                        ret    0x4

; ===== 0x00432A10 ?GetClan@Creatures@@UAEGXZ =====
  00432a10: 66 8b 81 50 01 00 00                            mov    ax,WORD PTR [ecx+0x150]
  00432a17: c3                                              ret

; ===== 0x00432A20 ?SetClan@Creatures@@UAEXG@Z =====
  00432a20: 55                                              push   ebp
  00432a21: 8b ec                                           mov    ebp,esp
  00432a23: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  00432a27: 66 89 81 50 01 00 00                            mov    WORD PTR [ecx+0x150],ax
  00432a2e: 5d                                              pop    ebp
  00432a2f: c2 04 00                                        ret    0x4

; ===== 0x00432A40 ?Destination@Creatures@@UAE?AUWorldPos@@XZ =====
  00432a40: 55                                              push   ebp
  00432a41: 8b ec                                           mov    ebp,esp
  00432a43: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432a46: 81 c1 34 01 00 00                               add    ecx,0x134
  00432a4c: 56                                              push   esi
  00432a4d: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00432a4f: 8b d0                                           mov    edx,eax
  00432a51: 89 32                                           mov    DWORD PTR [edx],esi
  00432a53: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00432a56: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00432a59: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00432a5c: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00432a5f: 5e                                              pop    esi
  00432a60: 5d                                              pop    ebp
  00432a61: c2 04 00                                        ret    0x4

; ===== 0x00432A70 ?SetDestination@Creatures@@UAEXUWorldPos@@@Z =====
  00432a70: 55                                              push   ebp
  00432a71: 8b ec                                           mov    ebp,esp
  00432a73: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432a76: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00432a79: 81 c1 34 01 00 00                               add    ecx,0x134
  00432a7f: 89 01                                           mov    DWORD PTR [ecx],eax
  00432a81: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00432a84: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00432a87: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00432a8a: 5d                                              pop    ebp
  00432a8b: c2 0c 00                                        ret    0xc

; ===== 0x00432A90 ?GetIdleTime@Creatures@@UAEIXZ =====
  00432a90: 8b 81 4c 01 00 00                               mov    eax,DWORD PTR [ecx+0x14c]
  00432a96: c3                                              ret

; ===== 0x00432AA0 ?SetIdleTime@Creatures@@UAEXI@Z =====
  00432aa0: 55                                              push   ebp
  00432aa1: 8b ec                                           mov    ebp,esp
  00432aa3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432aa6: 89 81 4c 01 00 00                               mov    DWORD PTR [ecx+0x14c],eax
  00432aac: 5d                                              pop    ebp
  00432aad: c2 04 00                                        ret    0x4

; ===== 0x00432AF0 ?GetTrueMaxMana@Creatures@@UAEGXZ =====
  00432af0: 66 8b 81 1e 01 00 00                            mov    ax,WORD PTR [ecx+0x11e]
  00432af7: c3                                              ret

; ===== 0x00432B00 ?SetMaxMana@Creatures@@UAEXG@Z =====
  00432b00: 55                                              push   ebp
  00432b01: 8b ec                                           mov    ebp,esp
  00432b03: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  00432b07: 66 89 81 1e 01 00 00                            mov    WORD PTR [ecx+0x11e],ax
  00432b0e: 5d                                              pop    ebp
  00432b0f: c2 04 00                                        ret    0x4

; ===== 0x00432B20 ?GetMana@Creatures@@UAEGXZ =====
  00432b20: 66 8b 81 1c 01 00 00                            mov    ax,WORD PTR [ecx+0x11c]
  00432b27: c3                                              ret

; ===== 0x00432B30 ?SetMana@Creatures@@QAEXG@Z =====
  00432b30: 55                                              push   ebp
  00432b31: 8b ec                                           mov    ebp,esp
  00432b33: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  00432b37: 66 89 81 1c 01 00 00                            mov    WORD PTR [ecx+0x11c],ax
  00432b3e: 5d                                              pop    ebp
  00432b3f: c2 04 00                                        ret    0x4

; ===== 0x00432B50 ?SetDetectRange@Creatures@@UAEXE@Z =====
  00432b50: 55                                              push   ebp
  00432b51: 8b ec                                           mov    ebp,esp
  00432b53: 8a 45 08                                        mov    al,BYTE PTR [ebp+0x8]
  00432b56: 88 81 20 01 00 00                               mov    BYTE PTR [ecx+0x120],al
  00432b5c: 5d                                              pop    ebp
  00432b5d: c2 04 00                                        ret    0x4

; ===== 0x00432B60 ?GetDetectRange@Creatures@@UAEEXZ =====
  00432b60: 8a 81 20 01 00 00                               mov    al,BYTE PTR [ecx+0x120]
  00432b66: c3                                              ret

; ===== 0x00432B70 ?SetLastTeleport@Creatures@@UAEXUWorldPos@@@Z =====
  00432b70: 55                                              push   ebp
  00432b71: 8b ec                                           mov    ebp,esp
  00432b73: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432b76: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00432b79: 81 c1 40 01 00 00                               add    ecx,0x140
  00432b7f: 89 01                                           mov    DWORD PTR [ecx],eax
  00432b81: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00432b84: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00432b87: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00432b8a: 5d                                              pop    ebp
  00432b8b: c2 0c 00                                        ret    0xc

; ===== 0x00432B90 ?GetLastTeleport@Creatures@@UAE?AUWorldPos@@XZ =====
  00432b90: 55                                              push   ebp
  00432b91: 8b ec                                           mov    ebp,esp
  00432b93: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432b96: 81 c1 40 01 00 00                               add    ecx,0x140
  00432b9c: 56                                              push   esi
  00432b9d: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00432b9f: 8b d0                                           mov    edx,eax
  00432ba1: 89 32                                           mov    DWORD PTR [edx],esi
  00432ba3: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00432ba6: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00432ba9: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00432bac: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00432baf: 5e                                              pop    esi
  00432bb0: 5d                                              pop    ebp
  00432bb1: c2 04 00                                        ret    0x4

; ===== 0x00432BC0 ?CanAttack@Creatures@@UAEHXZ =====
  00432bc0: 8b 81 10 01 00 00                               mov    eax,DWORD PTR [ecx+0x110]
  00432bc6: c3                                              ret

; ===== 0x00432BD0 ?SetAttack@Creatures@@UAEXH@Z =====
  00432bd0: 55                                              push   ebp
  00432bd1: 8b ec                                           mov    ebp,esp
  00432bd3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432bd6: 89 81 10 01 00 00                               mov    DWORD PTR [ecx+0x110],eax
  00432bdc: 5d                                              pop    ebp
  00432bdd: c2 04 00                                        ret    0x4

; ===== 0x00432BE0 ?SetCanMove@Creatures@@UAEXH@Z =====
  00432be0: 55                                              push   ebp
  00432be1: 8b ec                                           mov    ebp,esp
  00432be3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432be6: 89 81 0c 01 00 00                               mov    DWORD PTR [ecx+0x10c],eax
  00432bec: 5d                                              pop    ebp
  00432bed: c2 04 00                                        ret    0x4

; ===== 0x00432BF0 ?CanMove@Creatures@@UAEHXZ =====
  00432bf0: 8b 81 0c 01 00 00                               mov    eax,DWORD PTR [ecx+0x10c]
  00432bf6: c3                                              ret

; ===== 0x00432C00 ?SetBindedHive@Creatures@@QAEXPAVHive@@@Z =====
  00432c00: 55                                              push   ebp
  00432c01: 8b ec                                           mov    ebp,esp
  00432c03: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432c06: 89 81 08 01 00 00                               mov    DWORD PTR [ecx+0x108],eax
  00432c0c: 5d                                              pop    ebp
  00432c0d: c2 04 00                                        ret    0x4

; ===== 0x00436A80 ??0ObjectStructure@@QAE@ABV0@@Z =====
  00436a80: 55                                              push   ebp
  00436a81: 8b ec                                           mov    ebp,esp
  00436a83: 6a ff                                           push   0xffffffff
  00436a85: 68 79 55 4d 00                                  push   0x4d5579
  00436a8a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00436a90: 50                                              push   eax
  00436a91: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00436a98: 83 ec 0c                                        sub    esp,0xc
  00436a9b: 53                                              push   ebx
  00436a9c: 56                                              push   esi
  00436a9d: 57                                              push   edi
  00436a9e: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00436aa1: 85 ff                                           test   edi,edi
  00436aa3: 66 8b 47 04                                     mov    ax,WORD PTR [edi+0x4]
  00436aa7: 89 4d ec                                        mov    DWORD PTR [ebp-0x14],ecx
  00436aaa: 66 89 41 04                                     mov    WORD PTR [ecx+0x4],ax
  00436aae: c7 01 4c ee 4d 00                               mov    DWORD PTR [ecx],0x4dee4c
  00436ab4: 74 05                                           je     0x436abb
  00436ab6: 83 c7 28                                        add    edi,0x28
  00436ab9: eb 02                                           jmp    0x436abd
  00436abb: 33 ff                                           xor    edi,edi
  00436abd: 8d 71 28                                        lea    esi,[ecx+0x28]
  00436ac0: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00436ac2: 89 0e                                           mov    DWORD PTR [esi],ecx
  00436ac4: 66 8b 57 04                                     mov    dx,WORD PTR [edi+0x4]
  00436ac8: 66 89 56 04                                     mov    WORD PTR [esi+0x4],dx
  00436acc: 66 8b 47 06                                     mov    ax,WORD PTR [edi+0x6]
  00436ad0: 66 89 46 06                                     mov    WORD PTR [esi+0x6],ax
  00436ad4: 8a 4f 08                                        mov    cl,BYTE PTR [edi+0x8]
  00436ad7: 88 4e 08                                        mov    BYTE PTR [esi+0x8],cl
  00436ada: 66 8b 57 0a                                     mov    dx,WORD PTR [edi+0xa]
  00436ade: 66 89 56 0a                                     mov    WORD PTR [esi+0xa],dx
  00436ae2: 66 8b 47 0c                                     mov    ax,WORD PTR [edi+0xc]
  00436ae6: 66 89 46 0c                                     mov    WORD PTR [esi+0xc],ax
  00436aea: 66 8b 4f 0e                                     mov    cx,WORD PTR [edi+0xe]
  00436aee: 66 89 4e 0e                                     mov    WORD PTR [esi+0xe],cx
  00436af2: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  00436af5: 89 56 10                                        mov    DWORD PTR [esi+0x10],edx
  00436af8: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  00436afb: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  00436afe: 8b 4f 18                                        mov    ecx,DWORD PTR [edi+0x18]
  00436b01: 89 4e 18                                        mov    DWORD PTR [esi+0x18],ecx
  00436b04: 8a 57 1c                                        mov    dl,BYTE PTR [edi+0x1c]
  00436b07: 88 56 1c                                        mov    BYTE PTR [esi+0x1c],dl
  00436b0a: 8a 47 1d                                        mov    al,BYTE PTR [edi+0x1d]
  00436b0d: 88 46 1d                                        mov    BYTE PTR [esi+0x1d],al
  00436b10: 8a 4f 1e                                        mov    cl,BYTE PTR [edi+0x1e]
  00436b13: 88 4e 1e                                        mov    BYTE PTR [esi+0x1e],cl
  00436b16: 8a 57 1f                                        mov    dl,BYTE PTR [edi+0x1f]
  00436b19: 88 56 1f                                        mov    BYTE PTR [esi+0x1f],dl
  00436b1c: 8a 47 20                                        mov    al,BYTE PTR [edi+0x20]
  00436b1f: 8d 5e 20                                        lea    ebx,[esi+0x20]
  00436b22: 6a 00                                           push   0x0
  00436b24: 8b cb                                           mov    ecx,ebx
  00436b26: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  00436b29: 88 03                                           mov    BYTE PTR [ebx],al
  00436b2b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00436b31: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00436b36: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00436b38: 51                                              push   ecx
  00436b39: 6a 00                                           push   0x0
  00436b3b: 8d 47 20                                        lea    eax,[edi+0x20]
  00436b3e: 50                                              push   eax
  00436b3f: 8b cb                                           mov    ecx,ebx
  00436b41: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00436b47: 8d 57 30                                        lea    edx,[edi+0x30]
  00436b4a: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00436b4c: 8d 46 30                                        lea    eax,[esi+0x30]
  00436b4f: 89 08                                           mov    DWORD PTR [eax],ecx
  00436b51: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00436b54: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00436b57: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  00436b5a: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00436b5d: 8b 52 0c                                        mov    edx,DWORD PTR [edx+0xc]
  00436b60: 8d 5f 40                                        lea    ebx,[edi+0x40]
  00436b63: 8d 4e 40                                        lea    ecx,[esi+0x40]
  00436b66: 53                                              push   ebx
  00436b67: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00436b6e: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  00436b71: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  00436b74: e8 07 16 00 00                                  call   0x438180
  00436b79: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00436b7c: 8d 43 70                                        lea    eax,[ebx+0x70]
  00436b7f: 50                                              push   eax
  00436b80: 83 c1 70                                        add    ecx,0x70
  00436b83: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00436b87: e8 f4 15 00 00                                  call   0x438180
  00436b8c: 66 8b 93 e0 00 00 00                            mov    dx,WORD PTR [ebx+0xe0]
  00436b93: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00436b96: 66 89 90 e0 00 00 00                            mov    WORD PTR [eax+0xe0],dx
  00436b9d: 66 8b 8b e2 00 00 00                            mov    cx,WORD PTR [ebx+0xe2]
  00436ba4: 66 89 88 e2 00 00 00                            mov    WORD PTR [eax+0xe2],cx
  00436bab: 66 8b 93 e4 00 00 00                            mov    dx,WORD PTR [ebx+0xe4]
  00436bb2: 66 89 90 e4 00 00 00                            mov    WORD PTR [eax+0xe4],dx
  00436bb9: 8a 8b e6 00 00 00                               mov    cl,BYTE PTR [ebx+0xe6]
  00436bbf: 88 88 e6 00 00 00                               mov    BYTE PTR [eax+0xe6],cl
  00436bc5: 8a 93 e7 00 00 00                               mov    dl,BYTE PTR [ebx+0xe7]
  00436bcb: 88 90 e7 00 00 00                               mov    BYTE PTR [eax+0xe7],dl
  00436bd1: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00436bd5: 8b 87 28 01 00 00                               mov    eax,DWORD PTR [edi+0x128]
  00436bdb: 89 86 28 01 00 00                               mov    DWORD PTR [esi+0x128],eax
  00436be1: 8b 8f 2c 01 00 00                               mov    ecx,DWORD PTR [edi+0x12c]
  00436be7: 89 8e 2c 01 00 00                               mov    DWORD PTR [esi+0x12c],ecx
  00436bed: 8d 97 30 01 00 00                               lea    edx,[edi+0x130]
  00436bf3: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00436bf5: 8d 86 30 01 00 00                               lea    eax,[esi+0x130]
  00436bfb: 89 08                                           mov    DWORD PTR [eax],ecx
  00436bfd: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00436c00: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00436c03: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  00436c06: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00436c09: 8b 52 0c                                        mov    edx,DWORD PTR [edx+0xc]
  00436c0c: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  00436c0f: 8d 87 40 01 00 00                               lea    eax,[edi+0x140]
  00436c15: 50                                              push   eax
  00436c16: 8d 8e 40 01 00 00                               lea    ecx,[esi+0x140]
  00436c1c: e8 bf 03 00 00                                  call   0x436fe0
  00436c21: 8d 8f 44 01 00 00                               lea    ecx,[edi+0x144]
  00436c27: 51                                              push   ecx
  00436c28: 8d 8e 44 01 00 00                               lea    ecx,[esi+0x144]
  00436c2e: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00436c32: e8 d9 03 00 00                                  call   0x437010
  00436c37: 8b 97 94 01 00 00                               mov    edx,DWORD PTR [edi+0x194]
  00436c3d: 8d 87 98 01 00 00                               lea    eax,[edi+0x198]
  00436c43: 50                                              push   eax
  00436c44: 8d 8e 98 01 00 00                               lea    ecx,[esi+0x198]
  00436c4a: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00436c4e: 89 96 94 01 00 00                               mov    DWORD PTR [esi+0x194],edx
  00436c54: e8 87 05 00 00                                  call   0x4371e0
  00436c59: 8d 8f dc 01 00 00                               lea    ecx,[edi+0x1dc]
  00436c5f: 51                                              push   ecx
  00436c60: 8d 8e dc 01 00 00                               lea    ecx,[esi+0x1dc]
  00436c66: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00436c6a: e8 e1 05 00 00                                  call   0x437250
  00436c6f: 8b 97 20 02 00 00                               mov    edx,DWORD PTR [edi+0x220]
  00436c75: 89 96 20 02 00 00                               mov    DWORD PTR [esi+0x220],edx
  00436c7b: 8b 87 24 02 00 00                               mov    eax,DWORD PTR [edi+0x224]
  00436c81: 89 86 24 02 00 00                               mov    DWORD PTR [esi+0x224],eax
  00436c87: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436c8a: 85 c0                                           test   eax,eax
  00436c8c: 74 05                                           je     0x436c93
  00436c8e: 8d 48 08                                        lea    ecx,[eax+0x8]
  00436c91: eb 02                                           jmp    0x436c95
  00436c93: 33 c9                                           xor    ecx,ecx
  00436c95: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00436c98: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00436c9b: 8d 71 08                                        lea    esi,[ecx+0x8]
  00436c9e: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  00436ca1: 8d 78 10                                        lea    edi,[eax+0x10]
  00436ca4: b9 06 00 00 00                                  mov    ecx,0x6
  00436ca9: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00436cab: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00436cae: 5f                                              pop    edi
  00436caf: c7 40 08 8c e5 4d 00                            mov    DWORD PTR [eax+0x8],0x4de58c
  00436cb6: 5e                                              pop    esi
  00436cb7: c7 00 f4 ed 4d 00                               mov    DWORD PTR [eax],0x4dedf4
  00436cbd: c7 40 08 e4 ed 4d 00                            mov    DWORD PTR [eax+0x8],0x4dede4
  00436cc4: 5b                                              pop    ebx
  00436cc5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00436ccc: 8b e5                                           mov    esp,ebp
  00436cce: 5d                                              pop    ebp
  00436ccf: c2 04 00                                        ret    0x4

; ===== 0x00438500 ??0GAME_RULES@@QAE@XZ =====
  00438500: 8b c1                                           mov    eax,ecx
  00438502: c7 00 d0 e5 4d 00                               mov    DWORD PTR [eax],0x4de5d0
  00438508: c3                                              ret

; ===== 0x00438510 ??1GAME_RULES@@UAE@XZ =====
  00438510: c7 01 d0 e5 4d 00                               mov    DWORD PTR [ecx],0x4de5d0
  00438516: c3                                              ret

; ===== 0x00438520 ?Create@GAME_RULES@@SAXXZ =====
  00438520: a1 38 14 51 00                                  mov    eax,ds:0x511438
  00438525: 50                                              push   eax
  00438526: 6a 09                                           push   0x9
  00438528: 68 0c 34 50 00                                  push   0x50340c
  0043852d: 68 dc 33 50 00                                  push   0x5033dc
  00438532: e8 f9 e7 fc ff                                  call   0x406d30
  00438537: 8b 0d 38 14 51 00                               mov    ecx,DWORD PTR ds:0x511438
  0043853d: 51                                              push   ecx
  0043853e: 6a 02                                           push   0x2
  00438540: 68 d0 33 50 00                                  push   0x5033d0
  00438545: 68 dc 33 50 00                                  push   0x5033dc
  0043854a: e8 e1 e7 fc ff                                  call   0x406d30
  0043854f: 8b 15 38 14 51 00                               mov    edx,DWORD PTR ds:0x511438
  00438555: 52                                              push   edx
  00438556: 6a 05                                           push   0x5
  00438558: 68 bc 33 50 00                                  push   0x5033bc
  0043855d: 68 dc 33 50 00                                  push   0x5033dc
  00438562: e8 c9 e7 fc ff                                  call   0x406d30
  00438567: a1 38 14 51 00                                  mov    eax,ds:0x511438
  0043856c: 50                                              push   eax
  0043856d: 6a 00                                           push   0x0
  0043856f: 68 ac 33 50 00                                  push   0x5033ac
  00438574: 68 dc 33 50 00                                  push   0x5033dc
  00438579: e8 b2 e7 fc ff                                  call   0x406d30
  0043857e: 8b 0d 38 14 51 00                               mov    ecx,DWORD PTR ds:0x511438
  00438584: 83 c4 40                                        add    esp,0x40
  00438587: 51                                              push   ecx
  00438588: 6a 05                                           push   0x5
  0043858a: 68 a0 33 50 00                                  push   0x5033a0
  0043858f: 68 dc 33 50 00                                  push   0x5033dc
  00438594: e8 97 e7 fc ff                                  call   0x406d30
  00438599: 8b 15 38 14 51 00                               mov    edx,DWORD PTR ds:0x511438
  0043859f: 52                                              push   edx
  004385a0: 6a 00                                           push   0x0
  004385a2: 68 90 33 50 00                                  push   0x503390
  004385a7: 68 dc 33 50 00                                  push   0x5033dc
  004385ac: e8 7f e7 fc ff                                  call   0x406d30
  004385b1: a1 38 14 51 00                                  mov    eax,ds:0x511438
  004385b6: 50                                              push   eax
  004385b7: 6a 01                                           push   0x1
  004385b9: 68 7c 33 50 00                                  push   0x50337c
  004385be: 68 dc 33 50 00                                  push   0x5033dc
  004385c3: e8 68 e7 fc ff                                  call   0x406d30
  004385c8: 8b 0d 38 14 51 00                               mov    ecx,DWORD PTR ds:0x511438
  004385ce: 51                                              push   ecx
  004385cf: 6a 00                                           push   0x0
  004385d1: 68 6c 33 50 00                                  push   0x50336c
  004385d6: 68 dc 33 50 00                                  push   0x5033dc
  004385db: e8 50 e7 fc ff                                  call   0x406d30
  004385e0: 8b 15 38 14 51 00                               mov    edx,DWORD PTR ds:0x511438
  004385e6: 83 c4 40                                        add    esp,0x40
  004385e9: 52                                              push   edx
  004385ea: 6a 01                                           push   0x1
  004385ec: 68 60 33 50 00                                  push   0x503360
  004385f1: 68 dc 33 50 00                                  push   0x5033dc
  004385f6: e8 35 e7 fc ff                                  call   0x406d30
  004385fb: a1 38 14 51 00                                  mov    eax,ds:0x511438
  00438600: 50                                              push   eax
  00438601: 6a 00                                           push   0x0
  00438603: 68 50 33 50 00                                  push   0x503350
  00438608: 68 dc 33 50 00                                  push   0x5033dc
  0043860d: e8 1e e7 fc ff                                  call   0x406d30
  00438612: 83 c4 20                                        add    esp,0x20
  00438615: c3                                              ret

; ===== 0x00438FD0 ?CalcStatBonus@GAME_RULES@@SAXHGGPAVCharacter@@@Z =====
  00438fd0: c3                                              ret

; ===== 0x00438FE0 ?InPVP@GAME_RULES@@SAHPAVUnit@@0@Z =====
  00438fe0: 55                                              push   ebp
  00438fe1: 8b ec                                           mov    ebp,esp
  00438fe3: 83 ec 08                                        sub    esp,0x8
  00438fe6: a1 38 14 51 00                                  mov    eax,ds:0x511438
  00438feb: 53                                              push   ebx
  00438fec: 56                                              push   esi
  00438fed: 57                                              push   edi
  00438fee: 50                                              push   eax
  00438fef: 68 d0 33 50 00                                  push   0x5033d0
  00438ff4: 68 dc 33 50 00                                  push   0x5033dc
  00438ff9: e8 92 e1 fc ff                                  call   0x407190
  00438ffe: 8b 0d 38 14 51 00                               mov    ecx,DWORD PTR ds:0x511438
  00439004: 51                                              push   ecx
  00439005: 68 0c 34 50 00                                  push   0x50340c
  0043900a: 68 dc 33 50 00                                  push   0x5033dc
  0043900f: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00439012: e8 79 e1 fc ff                                  call   0x407190
  00439017: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0043901a: 83 c4 18                                        add    esp,0x18
  0043901d: 85 f6                                           test   esi,esi
  0043901f: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00439022: 0f 84 4e 01 00 00                               je     0x439176
  00439028: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0043902b: 85 ff                                           test   edi,edi
  0043902d: 0f 84 43 01 00 00                               je     0x439176
  00439033: 3b f7                                           cmp    esi,edi
  00439035: 0f 84 3b 01 00 00                               je     0x439176
  0043903b: 8b ce                                           mov    ecx,esi
  0043903d: e8 4e 64 05 00                                  call   0x48f490
  00439042: 3c 08                                           cmp    al,0x8
  00439044: 75 0f                                           jne    0x439055
  00439046: 8b cf                                           mov    ecx,edi
  00439048: e8 43 64 05 00                                  call   0x48f490
  0043904d: 3c 08                                           cmp    al,0x8
  0043904f: 0f 84 21 01 00 00                               je     0x439176
  00439055: 8b ce                                           mov    ecx,esi
  00439057: e8 14 26 05 00                                  call   0x48b670
  0043905c: 3c 01                                           cmp    al,0x1
  0043905e: 75 79                                           jne    0x4390d9
  00439060: 8b cf                                           mov    ecx,edi
  00439062: e8 09 26 05 00                                  call   0x48b670
  00439067: 3c 01                                           cmp    al,0x1
  00439069: 75 6e                                           jne    0x4390d9
  0043906b: 8b ce                                           mov    ecx,esi
  0043906d: e8 7e 1a fe ff                                  call   0x41aaf0
  00439072: 8b cf                                           mov    ecx,edi
  00439074: 8b d8                                           mov    ebx,eax
  00439076: e8 75 1a fe ff                                  call   0x41aaf0
  0043907b: 85 db                                           test   ebx,ebx
  0043907d: 74 51                                           je     0x4390d0
  0043907f: 85 c0                                           test   eax,eax
  00439081: 74 4d                                           je     0x4390d0
  00439083: 8a 4b 79                                        mov    cl,BYTE PTR [ebx+0x79]
  00439086: 84 c9                                           test   cl,cl
  00439088: 74 46                                           je     0x4390d0
  0043908a: 8a 48 79                                        mov    cl,BYTE PTR [eax+0x79]
  0043908d: 84 c9                                           test   cl,cl
  0043908f: 74 3f                                           je     0x4390d0
  00439091: 8a 4b 7a                                        mov    cl,BYTE PTR [ebx+0x7a]
  00439094: 84 c9                                           test   cl,cl
  00439096: 0f 85 da 00 00 00                               jne    0x439176
  0043909c: 8a 48 7a                                        mov    cl,BYTE PTR [eax+0x7a]
  0043909f: 84 c9                                           test   cl,cl
  004390a1: 0f 85 cf 00 00 00                               jne    0x439176
  004390a7: 8b ce                                           mov    ecx,esi
  004390a9: e8 12 6c fe ff                                  call   0x41fcc0
  004390ae: 85 c0                                           test   eax,eax
  004390b0: 74 27                                           je     0x4390d9
  004390b2: 8b cf                                           mov    ecx,edi
  004390b4: e8 07 6c fe ff                                  call   0x41fcc0
  004390b9: 85 c0                                           test   eax,eax
  004390bb: 74 1c                                           je     0x4390d9
  004390bd: 57                                              push   edi
  004390be: 8b ce                                           mov    ecx,esi
  004390c0: e8 fb 6b fe ff                                  call   0x41fcc0
  004390c5: 8b c8                                           mov    ecx,eax
  004390c7: e8 e4 1a 00 00                                  call   0x43abb0
  004390cc: 84 c0                                           test   al,al
  004390ce: 74 09                                           je     0x4390d9
  004390d0: 5f                                              pop    edi
  004390d1: 5e                                              pop    esi
  004390d2: 33 c0                                           xor    eax,eax
  004390d4: 5b                                              pop    ebx
  004390d5: 8b e5                                           mov    esp,ebp
  004390d7: 5d                                              pop    ebp
  004390d8: c3                                              ret
  004390d9: a1 4c 33 50 00                                  mov    eax,ds:0x50334c
  004390de: 25 ff 00 00 00                                  and    eax,0xff
  004390e3: 48                                              dec    eax
  004390e4: bb 01 00 00 00                                  mov    ebx,0x1
  004390e9: 89 5d 08                                        mov    DWORD PTR [ebp+0x8],ebx
  004390ec: 75 7f                                           jne    0x43916d
  004390ee: 8b ce                                           mov    ecx,esi
  004390f0: e8 7b 25 05 00                                  call   0x48b670
  004390f5: 3a c3                                           cmp    al,bl
  004390f7: 75 74                                           jne    0x43916d
  004390f9: 8b cf                                           mov    ecx,edi
  004390fb: e8 70 25 05 00                                  call   0x48b670
  00439100: 3a c3                                           cmp    al,bl
  00439102: 75 69                                           jne    0x43916d
  00439104: 8b 16                                           mov    edx,DWORD PTR [esi]
  00439106: 8b ce                                           mov    ecx,esi
  00439108: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0043910e: 66 8b d8                                        mov    bx,ax
  00439111: 8b 07                                           mov    eax,DWORD PTR [edi]
  00439113: 8b cf                                           mov    ecx,edi
  00439115: 81 e3 ff ff 00 00                               and    ebx,0xffff
  0043911b: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  00439121: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00439124: 25 ff ff 00 00                                  and    eax,0xffff
  00439129: 2b d8                                           sub    ebx,eax
  0043912b: 8b c3                                           mov    eax,ebx
  0043912d: 99                                              cdq
  0043912e: 33 c2                                           xor    eax,edx
  00439130: 2b c2                                           sub    eax,edx
  00439132: 3b c1                                           cmp    eax,ecx
  00439134: 7d 29                                           jge    0x43915f
  00439136: 8b 16                                           mov    edx,DWORD PTR [esi]
  00439138: 8b ce                                           mov    ecx,esi
  0043913a: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  00439140: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  00439143: 25 ff ff 00 00                                  and    eax,0xffff
  00439148: 3b c6                                           cmp    eax,esi
  0043914a: 7c 13                                           jl     0x43915f
  0043914c: 8b 07                                           mov    eax,DWORD PTR [edi]
  0043914e: 8b cf                                           mov    ecx,edi
  00439150: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  00439156: 25 ff ff 00 00                                  and    eax,0xffff
  0043915b: 3b c6                                           cmp    eax,esi
  0043915d: 7d 0b                                           jge    0x43916a
  0043915f: 5f                                              pop    edi
  00439160: 33 db                                           xor    ebx,ebx
  00439162: 5e                                              pop    esi
  00439163: 8b c3                                           mov    eax,ebx
  00439165: 5b                                              pop    ebx
  00439166: 8b e5                                           mov    esp,ebp
  00439168: 5d                                              pop    ebp
  00439169: c3                                              ret
  0043916a: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0043916d: 5f                                              pop    edi
  0043916e: 5e                                              pop    esi
  0043916f: 8b c3                                           mov    eax,ebx
  00439171: 5b                                              pop    ebx
  00439172: 8b e5                                           mov    esp,ebp
  00439174: 5d                                              pop    ebp
  00439175: c3                                              ret
  00439176: 5f                                              pop    edi
  00439177: 5e                                              pop    esi
  00439178: b8 01 00 00 00                                  mov    eax,0x1
  0043917d: 5b                                              pop    ebx
  0043917e: 8b e5                                           mov    esp,ebp
  00439180: 5d                                              pop    ebp
  00439181: c3                                              ret

; ===== 0x004490E0 ??0NPC@NPCstructure@@QAE@XZ =====
  004490e0: 56                                              push   esi
  004490e1: 8b f1                                           mov    esi,ecx
  004490e3: e8 a8 93 ff ff                                  call   0x442490
  004490e8: 8b c6                                           mov    eax,esi
  004490ea: 5e                                              pop    esi
  004490eb: c3                                              ret

; ===== 0x004490F0 ??0NPC@NPCstructure@@QAE@ABV01@@Z =====
  004490f0: 55                                              push   ebp
  004490f1: 8b ec                                           mov    ebp,esp
  004490f3: 6a ff                                           push   0xffffffff
  004490f5: 68 ec 65 4d 00                                  push   0x4d65ec
  004490fa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00449100: 50                                              push   eax
  00449101: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00449108: 51                                              push   ecx
  00449109: 53                                              push   ebx
  0044910a: 56                                              push   esi
  0044910b: 8b f1                                           mov    esi,ecx
  0044910d: 57                                              push   edi
  0044910e: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00449111: 66 8b 07                                        mov    ax,WORD PTR [edi]
  00449114: 66 89 06                                        mov    WORD PTR [esi],ax
  00449117: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0044911a: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0044911d: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00449120: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00449123: 8b 47 0c                                        mov    eax,DWORD PTR [edi+0xc]
  00449126: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00449129: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  0044912c: 89 4e 10                                        mov    DWORD PTR [esi+0x10],ecx
  0044912f: 66 8b 57 14                                     mov    dx,WORD PTR [edi+0x14]
  00449133: 66 89 56 14                                     mov    WORD PTR [esi+0x14],dx
  00449137: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  0044913a: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  0044913d: 8b 4f 1c                                        mov    ecx,DWORD PTR [edi+0x1c]
  00449140: 89 4e 1c                                        mov    DWORD PTR [esi+0x1c],ecx
  00449143: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  00449146: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00449149: 8b 47 24                                        mov    eax,DWORD PTR [edi+0x24]
  0044914c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0044914f: 8b 4f 28                                        mov    ecx,DWORD PTR [edi+0x28]
  00449152: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  00449155: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  00449158: 89 56 2c                                        mov    DWORD PTR [esi+0x2c],edx
  0044915b: 8a 47 30                                        mov    al,BYTE PTR [edi+0x30]
  0044915e: 88 46 30                                        mov    BYTE PTR [esi+0x30],al
  00449161: 8d 4f 34                                        lea    ecx,[edi+0x34]
  00449164: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00449166: 8d 56 34                                        lea    edx,[esi+0x34]
  00449169: 89 02                                           mov    DWORD PTR [edx],eax
  0044916b: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0044916e: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00449171: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00449174: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00449177: 8a 57 40                                        mov    dl,BYTE PTR [edi+0x40]
  0044917a: 88 56 40                                        mov    BYTE PTR [esi+0x40],dl
  0044917d: 8d 47 44                                        lea    eax,[edi+0x44]
  00449180: 8b 10                                           mov    edx,DWORD PTR [eax]
  00449182: 8d 4e 44                                        lea    ecx,[esi+0x44]
  00449185: 89 11                                           mov    DWORD PTR [ecx],edx
  00449187: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044918a: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0044918d: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00449190: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00449193: 8a 4f 50                                        mov    cl,BYTE PTR [edi+0x50]
  00449196: 88 4e 50                                        mov    BYTE PTR [esi+0x50],cl
  00449199: 66 8b 57 52                                     mov    dx,WORD PTR [edi+0x52]
  0044919d: 66 89 56 52                                     mov    WORD PTR [esi+0x52],dx
  004491a1: 8d 47 54                                        lea    eax,[edi+0x54]
  004491a4: 8b 10                                           mov    edx,DWORD PTR [eax]
  004491a6: 8d 4e 54                                        lea    ecx,[esi+0x54]
  004491a9: 89 11                                           mov    DWORD PTR [ecx],edx
  004491ab: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004491ae: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004491b1: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004491b4: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004491b7: 66 8b 4f 60                                     mov    cx,WORD PTR [edi+0x60]
  004491bb: 66 89 4e 60                                     mov    WORD PTR [esi+0x60],cx
  004491bf: 66 8b 57 62                                     mov    dx,WORD PTR [edi+0x62]
  004491c3: 66 89 56 62                                     mov    WORD PTR [esi+0x62],dx
  004491c7: 66 8b 47 64                                     mov    ax,WORD PTR [edi+0x64]
  004491cb: 66 89 46 64                                     mov    WORD PTR [esi+0x64],ax
  004491cf: 66 8b 4f 66                                     mov    cx,WORD PTR [edi+0x66]
  004491d3: 66 89 4e 66                                     mov    WORD PTR [esi+0x66],cx
  004491d7: 8b 57 68                                        mov    edx,DWORD PTR [edi+0x68]
  004491da: 89 56 68                                        mov    DWORD PTR [esi+0x68],edx
  004491dd: 8b 47 6c                                        mov    eax,DWORD PTR [edi+0x6c]
  004491e0: 89 46 6c                                        mov    DWORD PTR [esi+0x6c],eax
  004491e3: 8b 4f 70                                        mov    ecx,DWORD PTR [edi+0x70]
  004491e6: 89 4e 70                                        mov    DWORD PTR [esi+0x70],ecx
  004491e9: 8b 57 74                                        mov    edx,DWORD PTR [edi+0x74]
  004491ec: 89 56 74                                        mov    DWORD PTR [esi+0x74],edx
  004491ef: 8b 47 78                                        mov    eax,DWORD PTR [edi+0x78]
  004491f2: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004491f5: 8b 4f 7c                                        mov    ecx,DWORD PTR [edi+0x7c]
  004491f8: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004491fb: 89 4e 7c                                        mov    DWORD PTR [esi+0x7c],ecx
  004491fe: 8b 97 80 00 00 00                               mov    edx,DWORD PTR [edi+0x80]
  00449204: 89 96 80 00 00 00                               mov    DWORD PTR [esi+0x80],edx
  0044920a: 8b 87 84 00 00 00                               mov    eax,DWORD PTR [edi+0x84]
  00449210: 89 86 84 00 00 00                               mov    DWORD PTR [esi+0x84],eax
  00449216: 8b 8f 88 00 00 00                               mov    ecx,DWORD PTR [edi+0x88]
  0044921c: 89 8e 88 00 00 00                               mov    DWORD PTR [esi+0x88],ecx
  00449222: 8b 97 8c 00 00 00                               mov    edx,DWORD PTR [edi+0x8c]
  00449228: 89 96 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],edx
  0044922e: 8a 87 90 00 00 00                               mov    al,BYTE PTR [edi+0x90]
  00449234: 8d 8f 90 00 00 00                               lea    ecx,[edi+0x90]
  0044923a: 8d 9e 90 00 00 00                               lea    ebx,[esi+0x90]
  00449240: 88 03                                           mov    BYTE PTR [ebx],al
  00449242: e8 39 9a fd ff                                  call   0x422c80
  00449247: 50                                              push   eax
  00449248: 8b cb                                           mov    ecx,ebx
  0044924a: e8 51 9a fd ff                                  call   0x422ca0
  0044924f: 84 c0                                           test   al,al
  00449251: 74 1c                                           je     0x44926f
  00449253: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00449256: 8b 87 98 00 00 00                               mov    eax,DWORD PTR [edi+0x98]
  0044925c: 8b 8f 94 00 00 00                               mov    ecx,DWORD PTR [edi+0x94]
  00449262: 52                                              push   edx
  00449263: 50                                              push   eax
  00449264: 51                                              push   ecx
  00449265: 8b cb                                           mov    ecx,ebx
  00449267: e8 34 b6 fd ff                                  call   0x4248a0
  0044926c: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0044926f: 8d 87 a0 00 00 00                               lea    eax,[edi+0xa0]
  00449275: 50                                              push   eax
  00449276: 8d 8e a0 00 00 00                               lea    ecx,[esi+0xa0]
  0044927c: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00449283: e8 88 19 00 00                                  call   0x44ac10
  00449288: 8d 8f b0 00 00 00                               lea    ecx,[edi+0xb0]
  0044928e: 51                                              push   ecx
  0044928f: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  00449295: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00449299: e8 62 1b 00 00                                  call   0x44ae00
  0044929e: 8b 97 c0 00 00 00                               mov    edx,DWORD PTR [edi+0xc0]
  004492a4: 89 96 c0 00 00 00                               mov    DWORD PTR [esi+0xc0],edx
  004492aa: 8b 87 c4 00 00 00                               mov    eax,DWORD PTR [edi+0xc4]
  004492b0: 89 86 c4 00 00 00                               mov    DWORD PTR [esi+0xc4],eax
  004492b6: 8b 8f c8 00 00 00                               mov    ecx,DWORD PTR [edi+0xc8]
  004492bc: 89 8e c8 00 00 00                               mov    DWORD PTR [esi+0xc8],ecx
  004492c2: 8b 97 cc 00 00 00                               mov    edx,DWORD PTR [edi+0xcc]
  004492c8: 89 96 cc 00 00 00                               mov    DWORD PTR [esi+0xcc],edx
  004492ce: 8b 87 d0 00 00 00                               mov    eax,DWORD PTR [edi+0xd0]
  004492d4: 89 86 d0 00 00 00                               mov    DWORD PTR [esi+0xd0],eax
  004492da: 8b 8f d4 00 00 00                               mov    ecx,DWORD PTR [edi+0xd4]
  004492e0: 89 8e d4 00 00 00                               mov    DWORD PTR [esi+0xd4],ecx
  004492e6: 8b 97 d8 00 00 00                               mov    edx,DWORD PTR [edi+0xd8]
  004492ec: 89 96 d8 00 00 00                               mov    DWORD PTR [esi+0xd8],edx
  004492f2: 8b 87 dc 00 00 00                               mov    eax,DWORD PTR [edi+0xdc]
  004492f8: 89 86 dc 00 00 00                               mov    DWORD PTR [esi+0xdc],eax
  004492fe: 8b 8f e0 00 00 00                               mov    ecx,DWORD PTR [edi+0xe0]
  00449304: 89 8e e0 00 00 00                               mov    DWORD PTR [esi+0xe0],ecx
  0044930a: 8b 97 e4 00 00 00                               mov    edx,DWORD PTR [edi+0xe4]
  00449310: 89 96 e4 00 00 00                               mov    DWORD PTR [esi+0xe4],edx
  00449316: 8b 87 e8 00 00 00                               mov    eax,DWORD PTR [edi+0xe8]
  0044931c: 89 86 e8 00 00 00                               mov    DWORD PTR [esi+0xe8],eax
  00449322: 8b 8f ec 00 00 00                               mov    ecx,DWORD PTR [edi+0xec]
  00449328: 89 8e ec 00 00 00                               mov    DWORD PTR [esi+0xec],ecx
  0044932e: 8b 97 f0 00 00 00                               mov    edx,DWORD PTR [edi+0xf0]
  00449334: 89 96 f0 00 00 00                               mov    DWORD PTR [esi+0xf0],edx
  0044933a: 8b 87 f4 00 00 00                               mov    eax,DWORD PTR [edi+0xf4]
  00449340: 89 86 f4 00 00 00                               mov    DWORD PTR [esi+0xf4],eax
  00449346: 8b 8f f8 00 00 00                               mov    ecx,DWORD PTR [edi+0xf8]
  0044934c: 89 8e f8 00 00 00                               mov    DWORD PTR [esi+0xf8],ecx
  00449352: 8b 97 fc 00 00 00                               mov    edx,DWORD PTR [edi+0xfc]
  00449358: 89 96 fc 00 00 00                               mov    DWORD PTR [esi+0xfc],edx
  0044935e: 8b 87 00 01 00 00                               mov    eax,DWORD PTR [edi+0x100]
  00449364: 89 86 00 01 00 00                               mov    DWORD PTR [esi+0x100],eax
  0044936a: 8b 8f 04 01 00 00                               mov    ecx,DWORD PTR [edi+0x104]
  00449370: 89 8e 04 01 00 00                               mov    DWORD PTR [esi+0x104],ecx
  00449376: 8b 97 08 01 00 00                               mov    edx,DWORD PTR [edi+0x108]
  0044937c: 89 96 08 01 00 00                               mov    DWORD PTR [esi+0x108],edx
  00449382: 66 8b 87 0c 01 00 00                            mov    ax,WORD PTR [edi+0x10c]
  00449389: 66 89 86 0c 01 00 00                            mov    WORD PTR [esi+0x10c],ax
  00449390: 66 8b 8f 0e 01 00 00                            mov    cx,WORD PTR [edi+0x10e]
  00449397: 66 89 8e 0e 01 00 00                            mov    WORD PTR [esi+0x10e],cx
  0044939e: 66 8b 97 10 01 00 00                            mov    dx,WORD PTR [edi+0x110]
  004493a5: 66 89 96 10 01 00 00                            mov    WORD PTR [esi+0x110],dx
  004493ac: 66 8b 87 12 01 00 00                            mov    ax,WORD PTR [edi+0x112]
  004493b3: 66 89 86 12 01 00 00                            mov    WORD PTR [esi+0x112],ax
  004493ba: 66 8b 8f 14 01 00 00                            mov    cx,WORD PTR [edi+0x114]
  004493c1: 66 89 8e 14 01 00 00                            mov    WORD PTR [esi+0x114],cx
  004493c8: 66 8b 97 16 01 00 00                            mov    dx,WORD PTR [edi+0x116]
  004493cf: 66 89 96 16 01 00 00                            mov    WORD PTR [esi+0x116],dx
  004493d6: 66 8b 87 18 01 00 00                            mov    ax,WORD PTR [edi+0x118]
  004493dd: 66 89 86 18 01 00 00                            mov    WORD PTR [esi+0x118],ax
  004493e4: 66 8b 8f 1a 01 00 00                            mov    cx,WORD PTR [edi+0x11a]
  004493eb: 66 89 8e 1a 01 00 00                            mov    WORD PTR [esi+0x11a],cx
  004493f2: 8b 97 1c 01 00 00                               mov    edx,DWORD PTR [edi+0x11c]
  004493f8: 89 96 1c 01 00 00                               mov    DWORD PTR [esi+0x11c],edx
  004493fe: 8b 87 20 01 00 00                               mov    eax,DWORD PTR [edi+0x120]
  00449404: 89 86 20 01 00 00                               mov    DWORD PTR [esi+0x120],eax
  0044940a: 8b 8f 24 01 00 00                               mov    ecx,DWORD PTR [edi+0x124]
  00449410: 89 8e 24 01 00 00                               mov    DWORD PTR [esi+0x124],ecx
  00449416: 8b 97 28 01 00 00                               mov    edx,DWORD PTR [edi+0x128]
  0044941c: 89 96 28 01 00 00                               mov    DWORD PTR [esi+0x128],edx
  00449422: 8b 87 2c 01 00 00                               mov    eax,DWORD PTR [edi+0x12c]
  00449428: 89 86 2c 01 00 00                               mov    DWORD PTR [esi+0x12c],eax
  0044942e: 8a 8f 30 01 00 00                               mov    cl,BYTE PTR [edi+0x130]
  00449434: 88 8e 30 01 00 00                               mov    BYTE PTR [esi+0x130],cl
  0044943a: 66 8b 97 38 01 00 00                            mov    dx,WORD PTR [edi+0x138]
  00449441: 66 89 96 38 01 00 00                            mov    WORD PTR [esi+0x138],dx
  00449448: 8b 87 3c 01 00 00                               mov    eax,DWORD PTR [edi+0x13c]
  0044944e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00449451: 89 86 3c 01 00 00                               mov    DWORD PTR [esi+0x13c],eax
  00449457: 5f                                              pop    edi
  00449458: 8b c6                                           mov    eax,esi
  0044945a: 5e                                              pop    esi
  0044945b: 5b                                              pop    ebx
  0044945c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00449463: 8b e5                                           mov    esp,ebp
  00449465: 5d                                              pop    ebp
  00449466: c2 04 00                                        ret    0x4

; ===== 0x00449470 ??4NPC@NPCstructure@@QAEAAV01@ABV01@@Z =====
  00449470: 55                                              push   ebp
  00449471: 8b ec                                           mov    ebp,esp
  00449473: 56                                              push   esi
  00449474: 8b f1                                           mov    esi,ecx
  00449476: 57                                              push   edi
  00449477: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0044947a: 66 8b 07                                        mov    ax,WORD PTR [edi]
  0044947d: 66 89 06                                        mov    WORD PTR [esi],ax
  00449480: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00449483: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00449486: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00449489: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0044948c: 8b 47 0c                                        mov    eax,DWORD PTR [edi+0xc]
  0044948f: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00449492: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00449495: 89 4e 10                                        mov    DWORD PTR [esi+0x10],ecx
  00449498: 66 8b 57 14                                     mov    dx,WORD PTR [edi+0x14]
  0044949c: 66 89 56 14                                     mov    WORD PTR [esi+0x14],dx
  004494a0: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  004494a3: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004494a6: 8b 4f 1c                                        mov    ecx,DWORD PTR [edi+0x1c]
  004494a9: 89 4e 1c                                        mov    DWORD PTR [esi+0x1c],ecx
  004494ac: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  004494af: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004494b2: 8b 47 24                                        mov    eax,DWORD PTR [edi+0x24]
  004494b5: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004494b8: 8b 4f 28                                        mov    ecx,DWORD PTR [edi+0x28]
  004494bb: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  004494be: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  004494c1: 89 56 2c                                        mov    DWORD PTR [esi+0x2c],edx
  004494c4: 8a 47 30                                        mov    al,BYTE PTR [edi+0x30]
  004494c7: 88 46 30                                        mov    BYTE PTR [esi+0x30],al
  004494ca: 8d 4f 34                                        lea    ecx,[edi+0x34]
  004494cd: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004494cf: 8d 56 34                                        lea    edx,[esi+0x34]
  004494d2: 89 02                                           mov    DWORD PTR [edx],eax
  004494d4: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004494d7: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004494da: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004494dd: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004494e0: 8a 57 40                                        mov    dl,BYTE PTR [edi+0x40]
  004494e3: 88 56 40                                        mov    BYTE PTR [esi+0x40],dl
  004494e6: 8d 47 44                                        lea    eax,[edi+0x44]
  004494e9: 8b 10                                           mov    edx,DWORD PTR [eax]
  004494eb: 8d 4e 44                                        lea    ecx,[esi+0x44]
  004494ee: 89 11                                           mov    DWORD PTR [ecx],edx
  004494f0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004494f3: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004494f6: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004494f9: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004494fc: 8a 4f 50                                        mov    cl,BYTE PTR [edi+0x50]
  004494ff: 88 4e 50                                        mov    BYTE PTR [esi+0x50],cl
  00449502: 66 8b 57 52                                     mov    dx,WORD PTR [edi+0x52]
  00449506: 66 89 56 52                                     mov    WORD PTR [esi+0x52],dx
  0044950a: 8d 47 54                                        lea    eax,[edi+0x54]
  0044950d: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044950f: 8d 4e 54                                        lea    ecx,[esi+0x54]
  00449512: 89 11                                           mov    DWORD PTR [ecx],edx
  00449514: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00449517: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0044951a: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0044951d: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00449520: 66 8b 4f 60                                     mov    cx,WORD PTR [edi+0x60]
  00449524: 66 89 4e 60                                     mov    WORD PTR [esi+0x60],cx
  00449528: 66 8b 57 62                                     mov    dx,WORD PTR [edi+0x62]
  0044952c: 66 89 56 62                                     mov    WORD PTR [esi+0x62],dx
  00449530: 66 8b 47 64                                     mov    ax,WORD PTR [edi+0x64]
  00449534: 66 89 46 64                                     mov    WORD PTR [esi+0x64],ax
  00449538: 66 8b 4f 66                                     mov    cx,WORD PTR [edi+0x66]
  0044953c: 66 89 4e 66                                     mov    WORD PTR [esi+0x66],cx
  00449540: 8b 57 68                                        mov    edx,DWORD PTR [edi+0x68]
  00449543: 89 56 68                                        mov    DWORD PTR [esi+0x68],edx
  00449546: 8b 47 6c                                        mov    eax,DWORD PTR [edi+0x6c]
  00449549: 89 46 6c                                        mov    DWORD PTR [esi+0x6c],eax
  0044954c: 8b 4f 70                                        mov    ecx,DWORD PTR [edi+0x70]
  0044954f: 89 4e 70                                        mov    DWORD PTR [esi+0x70],ecx
  00449552: 8b 57 74                                        mov    edx,DWORD PTR [edi+0x74]
  00449555: 89 56 74                                        mov    DWORD PTR [esi+0x74],edx
  00449558: 8b 47 78                                        mov    eax,DWORD PTR [edi+0x78]
  0044955b: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  0044955e: 8b 4f 7c                                        mov    ecx,DWORD PTR [edi+0x7c]
  00449561: 89 4e 7c                                        mov    DWORD PTR [esi+0x7c],ecx
  00449564: 8b 97 80 00 00 00                               mov    edx,DWORD PTR [edi+0x80]
  0044956a: 89 96 80 00 00 00                               mov    DWORD PTR [esi+0x80],edx
  00449570: 8b 87 84 00 00 00                               mov    eax,DWORD PTR [edi+0x84]
  00449576: 89 86 84 00 00 00                               mov    DWORD PTR [esi+0x84],eax
  0044957c: 8b 8f 88 00 00 00                               mov    ecx,DWORD PTR [edi+0x88]
  00449582: 89 8e 88 00 00 00                               mov    DWORD PTR [esi+0x88],ecx
  00449588: 8b 97 8c 00 00 00                               mov    edx,DWORD PTR [edi+0x8c]
  0044958e: 8d 87 90 00 00 00                               lea    eax,[edi+0x90]
  00449594: 50                                              push   eax
  00449595: 8d 8e 90 00 00 00                               lea    ecx,[esi+0x90]
  0044959b: 89 96 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],edx
  004495a1: e8 da 16 00 00                                  call   0x44ac80
  004495a6: 8d 8f a0 00 00 00                               lea    ecx,[edi+0xa0]
  004495ac: 51                                              push   ecx
  004495ad: 8d 8e a0 00 00 00                               lea    ecx,[esi+0xa0]
  004495b3: e8 c8 16 00 00                                  call   0x44ac80
  004495b8: 8d 97 b0 00 00 00                               lea    edx,[edi+0xb0]
  004495be: 52                                              push   edx
  004495bf: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  004495c5: e8 96 93 fd ff                                  call   0x422960
  004495ca: 8b 87 c0 00 00 00                               mov    eax,DWORD PTR [edi+0xc0]
  004495d0: 89 86 c0 00 00 00                               mov    DWORD PTR [esi+0xc0],eax
  004495d6: 8b 8f c4 00 00 00                               mov    ecx,DWORD PTR [edi+0xc4]
  004495dc: 89 8e c4 00 00 00                               mov    DWORD PTR [esi+0xc4],ecx
  004495e2: 8b 97 c8 00 00 00                               mov    edx,DWORD PTR [edi+0xc8]
  004495e8: 89 96 c8 00 00 00                               mov    DWORD PTR [esi+0xc8],edx
  004495ee: 8b 87 cc 00 00 00                               mov    eax,DWORD PTR [edi+0xcc]
  004495f4: 89 86 cc 00 00 00                               mov    DWORD PTR [esi+0xcc],eax
  004495fa: 8b 8f d0 00 00 00                               mov    ecx,DWORD PTR [edi+0xd0]
  00449600: 89 8e d0 00 00 00                               mov    DWORD PTR [esi+0xd0],ecx
  00449606: 8b 97 d4 00 00 00                               mov    edx,DWORD PTR [edi+0xd4]
  0044960c: 89 96 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],edx
  00449612: 8b 87 d8 00 00 00                               mov    eax,DWORD PTR [edi+0xd8]
  00449618: 89 86 d8 00 00 00                               mov    DWORD PTR [esi+0xd8],eax
  0044961e: 8b 8f dc 00 00 00                               mov    ecx,DWORD PTR [edi+0xdc]
  00449624: 89 8e dc 00 00 00                               mov    DWORD PTR [esi+0xdc],ecx
  0044962a: 8b 97 e0 00 00 00                               mov    edx,DWORD PTR [edi+0xe0]
  00449630: 89 96 e0 00 00 00                               mov    DWORD PTR [esi+0xe0],edx
  00449636: 8b 87 e4 00 00 00                               mov    eax,DWORD PTR [edi+0xe4]
  0044963c: 89 86 e4 00 00 00                               mov    DWORD PTR [esi+0xe4],eax
  00449642: 8b 8f e8 00 00 00                               mov    ecx,DWORD PTR [edi+0xe8]
  00449648: 89 8e e8 00 00 00                               mov    DWORD PTR [esi+0xe8],ecx
  0044964e: 8b 97 ec 00 00 00                               mov    edx,DWORD PTR [edi+0xec]
  00449654: 89 96 ec 00 00 00                               mov    DWORD PTR [esi+0xec],edx
  0044965a: 8b 87 f0 00 00 00                               mov    eax,DWORD PTR [edi+0xf0]
  00449660: 89 86 f0 00 00 00                               mov    DWORD PTR [esi+0xf0],eax
  00449666: 8b 8f f4 00 00 00                               mov    ecx,DWORD PTR [edi+0xf4]
  0044966c: 89 8e f4 00 00 00                               mov    DWORD PTR [esi+0xf4],ecx
  00449672: 8b 97 f8 00 00 00                               mov    edx,DWORD PTR [edi+0xf8]
  00449678: 89 96 f8 00 00 00                               mov    DWORD PTR [esi+0xf8],edx
  0044967e: 8b 87 fc 00 00 00                               mov    eax,DWORD PTR [edi+0xfc]
  00449684: 89 86 fc 00 00 00                               mov    DWORD PTR [esi+0xfc],eax
  0044968a: 8b 8f 00 01 00 00                               mov    ecx,DWORD PTR [edi+0x100]
  00449690: 89 8e 00 01 00 00                               mov    DWORD PTR [esi+0x100],ecx
  00449696: 8b 97 04 01 00 00                               mov    edx,DWORD PTR [edi+0x104]
  0044969c: 89 96 04 01 00 00                               mov    DWORD PTR [esi+0x104],edx
  004496a2: 8b 87 08 01 00 00                               mov    eax,DWORD PTR [edi+0x108]
  004496a8: 89 86 08 01 00 00                               mov    DWORD PTR [esi+0x108],eax
  004496ae: 66 8b 8f 0c 01 00 00                            mov    cx,WORD PTR [edi+0x10c]
  004496b5: 66 89 8e 0c 01 00 00                            mov    WORD PTR [esi+0x10c],cx
  004496bc: 66 8b 97 0e 01 00 00                            mov    dx,WORD PTR [edi+0x10e]
  004496c3: 66 89 96 0e 01 00 00                            mov    WORD PTR [esi+0x10e],dx
  004496ca: 66 8b 87 10 01 00 00                            mov    ax,WORD PTR [edi+0x110]
  004496d1: 66 89 86 10 01 00 00                            mov    WORD PTR [esi+0x110],ax
  004496d8: 66 8b 8f 12 01 00 00                            mov    cx,WORD PTR [edi+0x112]
  004496df: 66 89 8e 12 01 00 00                            mov    WORD PTR [esi+0x112],cx
  004496e6: 66 8b 97 14 01 00 00                            mov    dx,WORD PTR [edi+0x114]
  004496ed: 66 89 96 14 01 00 00                            mov    WORD PTR [esi+0x114],dx
  004496f4: 66 8b 87 16 01 00 00                            mov    ax,WORD PTR [edi+0x116]
  004496fb: 66 89 86 16 01 00 00                            mov    WORD PTR [esi+0x116],ax
  00449702: 66 8b 8f 18 01 00 00                            mov    cx,WORD PTR [edi+0x118]
  00449709: 66 89 8e 18 01 00 00                            mov    WORD PTR [esi+0x118],cx
  00449710: 66 8b 97 1a 01 00 00                            mov    dx,WORD PTR [edi+0x11a]
  00449717: 66 89 96 1a 01 00 00                            mov    WORD PTR [esi+0x11a],dx
  0044971e: 8b 87 1c 01 00 00                               mov    eax,DWORD PTR [edi+0x11c]
  00449724: 89 86 1c 01 00 00                               mov    DWORD PTR [esi+0x11c],eax
  0044972a: 8b 8f 20 01 00 00                               mov    ecx,DWORD PTR [edi+0x120]
  00449730: 89 8e 20 01 00 00                               mov    DWORD PTR [esi+0x120],ecx
  00449736: 8b 97 24 01 00 00                               mov    edx,DWORD PTR [edi+0x124]
  0044973c: 89 96 24 01 00 00                               mov    DWORD PTR [esi+0x124],edx
  00449742: 8b 87 28 01 00 00                               mov    eax,DWORD PTR [edi+0x128]
  00449748: 89 86 28 01 00 00                               mov    DWORD PTR [esi+0x128],eax
  0044974e: 8b 8f 2c 01 00 00                               mov    ecx,DWORD PTR [edi+0x12c]
  00449754: 89 8e 2c 01 00 00                               mov    DWORD PTR [esi+0x12c],ecx
  0044975a: 8a 97 30 01 00 00                               mov    dl,BYTE PTR [edi+0x130]
  00449760: 88 96 30 01 00 00                               mov    BYTE PTR [esi+0x130],dl
  00449766: 66 8b 87 38 01 00 00                            mov    ax,WORD PTR [edi+0x138]
  0044976d: 66 89 86 38 01 00 00                            mov    WORD PTR [esi+0x138],ax
  00449774: 8b 8f 3c 01 00 00                               mov    ecx,DWORD PTR [edi+0x13c]
  0044977a: 5f                                              pop    edi
  0044977b: 89 8e 3c 01 00 00                               mov    DWORD PTR [esi+0x13c],ecx
  00449781: 8b c6                                           mov    eax,esi
  00449783: 5e                                              pop    esi
  00449784: 5d                                              pop    ebp
  00449785: c2 04 00                                        ret    0x4

; ===== 0x00449790 ??1NPC@NPCstructure@@QAE@XZ =====
  00449790: 55                                              push   ebp
  00449791: 8b ec                                           mov    ebp,esp
  00449793: 51                                              push   ecx
  00449794: 56                                              push   esi
  00449795: 8b f1                                           mov    esi,ecx
  00449797: 8b 86 b4 00 00 00                               mov    eax,DWORD PTR [esi+0xb4]
  0044979d: 57                                              push   edi
  0044979e: 33 ff                                           xor    edi,edi
  004497a0: 3b c7                                           cmp    eax,edi
  004497a2: 74 0c                                           je     0x4497b0
  004497a4: 50                                              push   eax
  004497a5: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004497a8: e8 b3 88 ff ff                                  call   0x442060
  004497ad: 83 c4 04                                        add    esp,0x4
  004497b0: 89 be b4 00 00 00                               mov    DWORD PTR [esi+0xb4],edi
  004497b6: 89 be b8 00 00 00                               mov    DWORD PTR [esi+0xb8],edi
  004497bc: 89 be bc 00 00 00                               mov    DWORD PTR [esi+0xbc],edi
  004497c2: 8b 86 a4 00 00 00                               mov    eax,DWORD PTR [esi+0xa4]
  004497c8: 3b c7                                           cmp    eax,edi
  004497ca: 74 0c                                           je     0x4497d8
  004497cc: 50                                              push   eax
  004497cd: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004497d0: e8 8b 88 ff ff                                  call   0x442060
  004497d5: 83 c4 04                                        add    esp,0x4
  004497d8: 89 be a4 00 00 00                               mov    DWORD PTR [esi+0xa4],edi
  004497de: 89 be a8 00 00 00                               mov    DWORD PTR [esi+0xa8],edi
  004497e4: 89 be ac 00 00 00                               mov    DWORD PTR [esi+0xac],edi
  004497ea: 8b 86 94 00 00 00                               mov    eax,DWORD PTR [esi+0x94]
  004497f0: 3b c7                                           cmp    eax,edi
  004497f2: 74 0c                                           je     0x449800
  004497f4: 50                                              push   eax
  004497f5: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004497f8: e8 63 88 ff ff                                  call   0x442060
  004497fd: 83 c4 04                                        add    esp,0x4
  00449800: 89 be 94 00 00 00                               mov    DWORD PTR [esi+0x94],edi
  00449806: 89 be 98 00 00 00                               mov    DWORD PTR [esi+0x98],edi
  0044980c: 89 be 9c 00 00 00                               mov    DWORD PTR [esi+0x9c],edi
  00449812: 5f                                              pop    edi
  00449813: 5e                                              pop    esi
  00449814: 8b e5                                           mov    esp,ebp
  00449816: 5d                                              pop    ebp
  00449817: c3                                              ret

; ===== 0x00449B20 ??1NPCstructure@@UAE@XZ =====
  00449b20: 55                                              push   ebp
  00449b21: 8b ec                                           mov    ebp,esp
  00449b23: 6a ff                                           push   0xffffffff
  00449b25: 68 13 66 4d 00                                  push   0x4d6613
  00449b2a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00449b30: 50                                              push   eax
  00449b31: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00449b38: 83 ec 08                                        sub    esp,0x8
  00449b3b: 53                                              push   ebx
  00449b3c: 56                                              push   esi
  00449b3d: 57                                              push   edi
  00449b3e: 8b f9                                           mov    edi,ecx
  00449b40: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00449b43: c7 07 58 f1 4d 00                               mov    DWORD PTR [edi],0x4df158
  00449b49: 8d b7 48 01 00 00                               lea    esi,[edi+0x148]
  00449b4f: 33 db                                           xor    ebx,ebx
  00449b51: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00449b54: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00449b57: c7 06 b4 f1 4d 00                               mov    DWORD PTR [esi],0x4df1b4
  00449b5d: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  00449b60: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00449b64: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00449b67: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00449b6a: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00449b6e: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  00449b71: 74 0a                                           je     0x449b7d
  00449b73: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00449b76: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00449b78: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00449b7b: eb 07                                           jmp    0x449b84
  00449b7d: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  00449b84: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  00449b87: 74 09                                           je     0x449b92
  00449b89: 8b ce                                           mov    ecx,esi
  00449b8b: e8 30 14 00 00                                  call   0x44afc0
  00449b90: eb dc                                           jmp    0x449b6e
  00449b92: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  00449b95: 74 04                                           je     0x449b9b
  00449b97: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  00449b9b: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00449b9e: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00449ba4: 83 c6 08                                        add    esi,0x8
  00449ba7: 56                                              push   esi
  00449ba8: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00449bae: 8b 87 bc 00 00 00                               mov    eax,DWORD PTR [edi+0xbc]
  00449bb4: 3b c3                                           cmp    eax,ebx
  00449bb6: 74 0c                                           je     0x449bc4
  00449bb8: 50                                              push   eax
  00449bb9: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00449bbc: e8 9f 84 ff ff                                  call   0x442060
  00449bc1: 83 c4 04                                        add    esp,0x4
  00449bc4: 89 9f bc 00 00 00                               mov    DWORD PTR [edi+0xbc],ebx
  00449bca: 89 9f c0 00 00 00                               mov    DWORD PTR [edi+0xc0],ebx
  00449bd0: 89 9f c4 00 00 00                               mov    DWORD PTR [edi+0xc4],ebx
  00449bd6: 8b 87 ac 00 00 00                               mov    eax,DWORD PTR [edi+0xac]
  00449bdc: 3b c3                                           cmp    eax,ebx
  00449bde: 74 0c                                           je     0x449bec
  00449be0: 50                                              push   eax
  00449be1: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00449be4: e8 77 84 ff ff                                  call   0x442060
  00449be9: 83 c4 04                                        add    esp,0x4
  00449bec: 89 9f ac 00 00 00                               mov    DWORD PTR [edi+0xac],ebx
  00449bf2: 89 9f b0 00 00 00                               mov    DWORD PTR [edi+0xb0],ebx
  00449bf8: 89 9f b4 00 00 00                               mov    DWORD PTR [edi+0xb4],ebx
  00449bfe: 8b 87 9c 00 00 00                               mov    eax,DWORD PTR [edi+0x9c]
  00449c04: 3b c3                                           cmp    eax,ebx
  00449c06: 74 0c                                           je     0x449c14
  00449c08: 50                                              push   eax
  00449c09: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00449c0c: e8 4f 84 ff ff                                  call   0x442060
  00449c11: 83 c4 04                                        add    esp,0x4
  00449c14: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00449c17: 89 9f 9c 00 00 00                               mov    DWORD PTR [edi+0x9c],ebx
  00449c1d: 89 9f a0 00 00 00                               mov    DWORD PTR [edi+0xa0],ebx
  00449c23: 89 9f a4 00 00 00                               mov    DWORD PTR [edi+0xa4],ebx
  00449c29: 5f                                              pop    edi
  00449c2a: 5e                                              pop    esi
  00449c2b: 5b                                              pop    ebx
  00449c2c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00449c33: 8b e5                                           mov    esp,ebp
  00449c35: 5d                                              pop    ebp
  00449c36: c3                                              ret

; ===== 0x00449C40 ?OnInitialise@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  00449c40: 55                                              push   ebp
  00449c41: 8b ec                                           mov    ebp,esp
  00449c43: 6a ff                                           push   0xffffffff
  00449c45: 68 28 66 4d 00                                  push   0x4d6628
  00449c4a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00449c50: 50                                              push   eax
  00449c51: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00449c58: 83 ec 3c                                        sub    esp,0x3c
  00449c5b: 53                                              push   ebx
  00449c5c: 56                                              push   esi
  00449c5d: 57                                              push   edi
  00449c5e: 8b f9                                           mov    edi,ecx
  00449c60: 8a 87 38 01 00 00                               mov    al,BYTE PTR [edi+0x138]
  00449c66: 84 c0                                           test   al,al
  00449c68: 75 19                                           jne    0x449c83
  00449c6a: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  00449c6d: c6 00 00                                        mov    BYTE PTR [eax],0x0
  00449c70: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00449c73: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00449c7a: 5f                                              pop    edi
  00449c7b: 5e                                              pop    esi
  00449c7c: 5b                                              pop    ebx
  00449c7d: 8b e5                                           mov    esp,ebp
  00449c7f: 5d                                              pop    ebp
  00449c80: c2 14 00                                        ret    0x14
  00449c83: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00449c86: c7 47 34 00 00 00 00                            mov    DWORD PTR [edi+0x34],0x0
  00449c8d: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449c8f: 6a 00                                           push   0x0
  00449c91: 8b ce                                           mov    ecx,esi
  00449c93: ff 92 c8 00 00 00                               call   DWORD PTR [edx+0xc8]
  00449c99: 8b 06                                           mov    eax,DWORD PTR [esi]
  00449c9b: 6a 01                                           push   0x1
  00449c9d: 6a 0c                                           push   0xc
  00449c9f: 8b ce                                           mov    ecx,esi
  00449ca1: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00449ca4: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449ca6: 6a 01                                           push   0x1
  00449ca8: 6a 0e                                           push   0xe
  00449caa: 8b ce                                           mov    ecx,esi
  00449cac: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449caf: 8b 06                                           mov    eax,DWORD PTR [esi]
  00449cb1: 33 c9                                           xor    ecx,ecx
  00449cb3: 66 8b 4f 10                                     mov    cx,WORD PTR [edi+0x10]
  00449cb7: 51                                              push   ecx
  00449cb8: 8b ce                                           mov    ecx,esi
  00449cba: ff 90 40 01 00 00                               call   DWORD PTR [eax+0x140]
  00449cc0: 8b 47 24                                        mov    eax,DWORD PTR [edi+0x24]
  00449cc3: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449cc5: 50                                              push   eax
  00449cc6: 8b ce                                           mov    ecx,esi
  00449cc8: ff 92 d4 00 00 00                               call   DWORD PTR [edx+0xd4]
  00449cce: 8b 47 24                                        mov    eax,DWORD PTR [edi+0x24]
  00449cd1: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449cd3: 6a 00                                           push   0x0
  00449cd5: 50                                              push   eax
  00449cd6: 8b ce                                           mov    ecx,esi
  00449cd8: ff 92 dc 00 00 00                               call   DWORD PTR [edx+0xdc]
  00449cde: 33 c9                                           xor    ecx,ecx
  00449ce0: 66 8b 4f 28                                     mov    cx,WORD PTR [edi+0x28]
  00449ce4: 51                                              push   ecx
  00449ce5: 8b ce                                           mov    ecx,esi
  00449ce7: e8 14 46 04 00                                  call   0x48e300
  00449cec: 6a 00                                           push   0x0
  00449cee: 8b ce                                           mov    ecx,esi
  00449cf0: e8 fb 45 04 00                                  call   0x48e2f0
  00449cf5: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449cf7: 6a 00                                           push   0x0
  00449cf9: 8b ce                                           mov    ecx,esi
  00449cfb: ff 92 ac 00 00 00                               call   DWORD PTR [edx+0xac]
  00449d01: 8b 06                                           mov    eax,DWORD PTR [esi]
  00449d03: 33 c9                                           xor    ecx,ecx
  00449d05: 8a 4f 38                                        mov    cl,BYTE PTR [edi+0x38]
  00449d08: 51                                              push   ecx
  00449d09: 8b ce                                           mov    ecx,esi
  00449d0b: ff 90 8c 00 00 00                               call   DWORD PTR [eax+0x8c]
  00449d11: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449d13: 33 c0                                           xor    eax,eax
  00449d15: 8a 47 58                                        mov    al,BYTE PTR [edi+0x58]
  00449d18: 8b ce                                           mov    ecx,esi
  00449d1a: 50                                              push   eax
  00449d1b: ff 92 9c 00 00 00                               call   DWORD PTR [edx+0x9c]
  00449d21: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449d23: 33 c0                                           xor    eax,eax
  00449d25: 66 8b 47 5a                                     mov    ax,WORD PTR [edi+0x5a]
  00449d29: 8b ce                                           mov    ecx,esi
  00449d2b: 50                                              push   eax
  00449d2c: ff 92 a4 00 00 00                               call   DWORD PTR [edx+0xa4]
  00449d32: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449d34: 33 c0                                           xor    eax,eax
  00449d36: 66 8b 47 18                                     mov    ax,WORD PTR [edi+0x18]
  00449d3a: 8b ce                                           mov    ecx,esi
  00449d3c: 50                                              push   eax
  00449d3d: ff 92 b8 00 00 00                               call   DWORD PTR [edx+0xb8]
  00449d43: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  00449d46: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449d48: 50                                              push   eax
  00449d49: 8b ce                                           mov    ecx,esi
  00449d4b: ff 52 30                                        call   DWORD PTR [edx+0x30]
  00449d4e: 33 c9                                           xor    ecx,ecx
  00449d50: 66 8b 8f c8 00 00 00                            mov    cx,WORD PTR [edi+0xc8]
  00449d57: 51                                              push   ecx
  00449d58: 8b ce                                           mov    ecx,esi
  00449d5a: e8 41 45 04 00                                  call   0x48e2a0
  00449d5f: 33 d2                                           xor    edx,edx
  00449d61: 66 8b 97 d8 00 00 00                            mov    dx,WORD PTR [edi+0xd8]
  00449d68: 52                                              push   edx
  00449d69: 8b ce                                           mov    ecx,esi
  00449d6b: e8 40 45 04 00                                  call   0x48e2b0
  00449d70: 33 c0                                           xor    eax,eax
  00449d72: 66 8b 87 d0 00 00 00                            mov    ax,WORD PTR [edi+0xd0]
  00449d79: 8b ce                                           mov    ecx,esi
  00449d7b: 50                                              push   eax
  00449d7c: e8 3f 45 04 00                                  call   0x48e2c0
  00449d81: 33 c9                                           xor    ecx,ecx
  00449d83: 66 8b 8f e0 00 00 00                            mov    cx,WORD PTR [edi+0xe0]
  00449d8a: 51                                              push   ecx
  00449d8b: 8b ce                                           mov    ecx,esi
  00449d8d: e8 4e 45 04 00                                  call   0x48e2e0
  00449d92: 33 d2                                           xor    edx,edx
  00449d94: 66 8b 97 d4 00 00 00                            mov    dx,WORD PTR [edi+0xd4]
  00449d9b: 8b ce                                           mov    ecx,esi
  00449d9d: 52                                              push   edx
  00449d9e: e8 2d 45 04 00                                  call   0x48e2d0
  00449da3: 8b 4f 2c                                        mov    ecx,DWORD PTR [edi+0x2c]
  00449da6: 8b 06                                           mov    eax,DWORD PTR [esi]
  00449da8: 51                                              push   ecx
  00449da9: 8b ce                                           mov    ecx,esi
  00449dab: ff 90 88 01 00 00                               call   DWORD PTR [eax+0x188]
  00449db1: 8b 87 34 01 00 00                               mov    eax,DWORD PTR [edi+0x134]
  00449db7: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449db9: 50                                              push   eax
  00449dba: 8b ce                                           mov    ecx,esi
  00449dbc: ff 92 a0 01 00 00                               call   DWORD PTR [edx+0x1a0]
  00449dc2: 6a 01                                           push   0x1
  00449dc4: 8b ce                                           mov    ecx,esi
  00449dc6: e8 15 57 04 00                                  call   0x48f4e0
  00449dcb: 8d 47 5c                                        lea    eax,[edi+0x5c]
  00449dce: 8b d8                                           mov    ebx,eax
  00449dd0: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  00449dd2: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00449dd5: 8b 5b 08                                        mov    ebx,DWORD PTR [ebx+0x8]
  00449dd8: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  00449ddb: 33 db                                           xor    ebx,ebx
  00449ddd: 66 8b 5f 6a                                     mov    bx,WORD PTR [edi+0x6a]
  00449de1: 83 ec 0c                                        sub    esp,0xc
  00449de4: 03 cb                                           add    ecx,ebx
  00449de6: 33 db                                           xor    ebx,ebx
  00449de8: 66 8b 5f 6e                                     mov    bx,WORD PTR [edi+0x6e]
  00449dec: 03 d3                                           add    edx,ebx
  00449dee: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00449df0: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  00449df3: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  00449df6: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00449df9: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00449dfc: 33 c0                                           xor    eax,eax
  00449dfe: 66 8b 47 68                                     mov    ax,WORD PTR [edi+0x68]
  00449e02: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00449e05: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  00449e08: 2b d8                                           sub    ebx,eax
  00449e0a: 33 c0                                           xor    eax,eax
  00449e0c: 66 8b 47 6c                                     mov    ax,WORD PTR [edi+0x6c]
  00449e10: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  00449e13: 8b 5d ec                                        mov    ebx,DWORD PTR [ebp-0x14]
  00449e16: 2b d8                                           sub    ebx,eax
  00449e18: 8b 06                                           mov    eax,DWORD PTR [esi]
  00449e1a: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00449e1d: 8b dc                                           mov    ebx,esp
  00449e1f: 89 0b                                           mov    DWORD PTR [ebx],ecx
  00449e21: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  00449e24: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00449e27: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00449e2a: 8b ce                                           mov    ecx,esi
  00449e2c: ff 90 20 01 00 00                               call   DWORD PTR [eax+0x120]
  00449e32: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00449e35: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449e37: 83 ec 0c                                        sub    esp,0xc
  00449e3a: 8b c4                                           mov    eax,esp
  00449e3c: 89 08                                           mov    DWORD PTR [eax],ecx
  00449e3e: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00449e41: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00449e44: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00449e47: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00449e4a: 8b ce                                           mov    ecx,esi
  00449e4c: ff 92 24 01 00 00                               call   DWORD PTR [edx+0x124]
  00449e52: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449e54: 83 cb ff                                        or     ebx,0xffffffff
  00449e57: 6a 03                                           push   0x3
  00449e59: 8b ce                                           mov    ecx,esi
  00449e5b: ff 92 80 00 00 00                               call   DWORD PTR [edx+0x80]
  00449e61: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449e63: 83 ec 0c                                        sub    esp,0xc
  00449e66: 8b cc                                           mov    ecx,esp
  00449e68: 89 19                                           mov    DWORD PTR [ecx],ebx
  00449e6a: 83 c8 ff                                        or     eax,0xffffffff
  00449e6d: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  00449e70: 83 c8 ff                                        or     eax,0xffffffff
  00449e73: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00449e76: 8b ce                                           mov    ecx,esi
  00449e78: ff 92 94 00 00 00                               call   DWORD PTR [edx+0x94]
  00449e7e: 6a 02                                           push   0x2
  00449e80: 8b ce                                           mov    ecx,esi
  00449e82: e8 d9 55 04 00                                  call   0x48f460
  00449e87: 8b 87 ec 00 00 00                               mov    eax,DWORD PTR [edi+0xec]
  00449e8d: 85 c0                                           test   eax,eax
  00449e8f: 74 10                                           je     0x449ea1
  00449e91: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449e93: 83 c0 9c                                        add    eax,0xffffff9c
  00449e96: 50                                              push   eax
  00449e97: 68 40 4e 00 00                                  push   0x4e40
  00449e9c: 8b ce                                           mov    ecx,esi
  00449e9e: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449ea1: 8b 87 e8 00 00 00                               mov    eax,DWORD PTR [edi+0xe8]
  00449ea7: 85 c0                                           test   eax,eax
  00449ea9: 74 10                                           je     0x449ebb
  00449eab: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449ead: 83 c0 9c                                        add    eax,0xffffff9c
  00449eb0: 50                                              push   eax
  00449eb1: 68 3f 4e 00 00                                  push   0x4e3f
  00449eb6: 8b ce                                           mov    ecx,esi
  00449eb8: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449ebb: 8b 87 e4 00 00 00                               mov    eax,DWORD PTR [edi+0xe4]
  00449ec1: 85 c0                                           test   eax,eax
  00449ec3: 74 10                                           je     0x449ed5
  00449ec5: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449ec7: 83 c0 9c                                        add    eax,0xffffff9c
  00449eca: 50                                              push   eax
  00449ecb: 68 3e 4e 00 00                                  push   0x4e3e
  00449ed0: 8b ce                                           mov    ecx,esi
  00449ed2: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449ed5: 8b 87 f0 00 00 00                               mov    eax,DWORD PTR [edi+0xf0]
  00449edb: 85 c0                                           test   eax,eax
  00449edd: 74 10                                           je     0x449eef
  00449edf: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449ee1: 83 c0 9c                                        add    eax,0xffffff9c
  00449ee4: 50                                              push   eax
  00449ee5: 68 41 4e 00 00                                  push   0x4e41
  00449eea: 8b ce                                           mov    ecx,esi
  00449eec: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449eef: 8b 87 f4 00 00 00                               mov    eax,DWORD PTR [edi+0xf4]
  00449ef5: 85 c0                                           test   eax,eax
  00449ef7: 74 10                                           je     0x449f09
  00449ef9: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449efb: 83 c0 9c                                        add    eax,0xffffff9c
  00449efe: 50                                              push   eax
  00449eff: 68 45 4e 00 00                                  push   0x4e45
  00449f04: 8b ce                                           mov    ecx,esi
  00449f06: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449f09: 8b 87 f8 00 00 00                               mov    eax,DWORD PTR [edi+0xf8]
  00449f0f: 85 c0                                           test   eax,eax
  00449f11: 74 10                                           je     0x449f23
  00449f13: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449f15: 83 c0 9c                                        add    eax,0xffffff9c
  00449f18: 50                                              push   eax
  00449f19: 68 46 4e 00 00                                  push   0x4e46
  00449f1e: 8b ce                                           mov    ecx,esi
  00449f20: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449f23: 8b 87 04 01 00 00                               mov    eax,DWORD PTR [edi+0x104]
  00449f29: 85 c0                                           test   eax,eax
  00449f2b: 74 10                                           je     0x449f3d
  00449f2d: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449f2f: 83 c0 9c                                        add    eax,0xffffff9c
  00449f32: 50                                              push   eax
  00449f33: 68 4b 4e 00 00                                  push   0x4e4b
  00449f38: 8b ce                                           mov    ecx,esi
  00449f3a: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449f3d: 8b 87 00 01 00 00                               mov    eax,DWORD PTR [edi+0x100]
  00449f43: 85 c0                                           test   eax,eax
  00449f45: 74 10                                           je     0x449f57
  00449f47: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449f49: 83 c0 9c                                        add    eax,0xffffff9c
  00449f4c: 50                                              push   eax
  00449f4d: 68 4a 4e 00 00                                  push   0x4e4a
  00449f52: 8b ce                                           mov    ecx,esi
  00449f54: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449f57: 8b 87 fc 00 00 00                               mov    eax,DWORD PTR [edi+0xfc]
  00449f5d: 85 c0                                           test   eax,eax
  00449f5f: 74 10                                           je     0x449f71
  00449f61: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449f63: 83 c0 9c                                        add    eax,0xffffff9c
  00449f66: 50                                              push   eax
  00449f67: 68 49 4e 00 00                                  push   0x4e49
  00449f6c: 8b ce                                           mov    ecx,esi
  00449f6e: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449f71: 8b 87 08 01 00 00                               mov    eax,DWORD PTR [edi+0x108]
  00449f77: 85 c0                                           test   eax,eax
  00449f79: 74 10                                           je     0x449f8b
  00449f7b: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449f7d: 83 c0 9c                                        add    eax,0xffffff9c
  00449f80: 50                                              push   eax
  00449f81: 68 4c 4e 00 00                                  push   0x4e4c
  00449f86: 8b ce                                           mov    ecx,esi
  00449f88: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449f8b: 8b 87 0c 01 00 00                               mov    eax,DWORD PTR [edi+0x10c]
  00449f91: 85 c0                                           test   eax,eax
  00449f93: 74 10                                           je     0x449fa5
  00449f95: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449f97: 83 c0 9c                                        add    eax,0xffffff9c
  00449f9a: 50                                              push   eax
  00449f9b: 68 47 4e 00 00                                  push   0x4e47
  00449fa0: 8b ce                                           mov    ecx,esi
  00449fa2: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00449fa5: 8b bf 10 01 00 00                               mov    edi,DWORD PTR [edi+0x110]
  00449fab: 85 ff                                           test   edi,edi
  00449fad: 74 10                                           je     0x449fbf
  00449faf: 8b 06                                           mov    eax,DWORD PTR [esi]
  00449fb1: 83 c7 9c                                        add    edi,0xffffff9c
  00449fb4: 57                                              push   edi
  00449fb5: 68 48 4e 00 00                                  push   0x4e48
  00449fba: 8b ce                                           mov    ecx,esi
  00449fbc: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00449fbf: 6a 04                                           push   0x4
  00449fc1: e8 4a 7d 02 00                                  call   0x471d10
  00449fc6: 83 c4 04                                        add    esp,0x4
  00449fc9: 85 c0                                           test   eax,eax
  00449fcb: 74 72                                           je     0x44a03f
  00449fcd: 8b 3e                                           mov    edi,DWORD PTR [esi]
  00449fcf: e8 8c 3a ff ff                                  call   0x43da60
  00449fd4: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00449fd7: 50                                              push   eax
  00449fd8: 51                                              push   ecx
  00449fd9: 8b ce                                           mov    ecx,esi
  00449fdb: ff 57 48                                        call   DWORD PTR [edi+0x48]
  00449fde: 8b f8                                           mov    edi,eax
  00449fe0: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449fe2: 8d 45 d0                                        lea    eax,[ebp-0x30]
  00449fe5: 50                                              push   eax
  00449fe6: 8b ce                                           mov    ecx,esi
  00449fe8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00449fef: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00449ff2: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00449ff5: 8b 16                                           mov    edx,DWORD PTR [esi]
  00449ff7: 51                                              push   ecx
  00449ff8: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  00449ffb: 50                                              push   eax
  00449ffc: 8b ce                                           mov    ecx,esi
  00449ffe: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0044a001: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044a004: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044a006: 51                                              push   ecx
  0044a007: 8d 45 b8                                        lea    eax,[ebp-0x48]
  0044a00a: 50                                              push   eax
  0044a00b: 8b ce                                           mov    ecx,esi
  0044a00d: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0044a010: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0044a012: 8b 17                                           mov    edx,DWORD PTR [edi]
  0044a014: 51                                              push   ecx
  0044a015: 52                                              push   edx
  0044a016: 68 24 51 50 00                                  push   0x505124
  0044a01b: 6a 40                                           push   0x40
  0044a01d: 6a 04                                           push   0x4
  0044a01f: e8 ec 7c 02 00                                  call   0x471d10
  0044a024: 83 c4 04                                        add    esp,0x4
  0044a027: 50                                              push   eax
  0044a028: e8 c3 4a 08 00                                  call   0x4ceaf0
  0044a02d: 83 c4 1c                                        add    esp,0x1c
  0044a030: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  0044a033: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044a03a: e8 01 7a 08 00                                  call   0x4d1a40
  0044a03f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044a042: 5f                                              pop    edi
  0044a043: 5e                                              pop    esi
  0044a044: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044a04b: 5b                                              pop    ebx
  0044a04c: 8b e5                                           mov    esp,ebp
  0044a04e: 5d                                              pop    ebp
  0044a04f: c2 14 00                                        ret    0x14

; ===== 0x0044A060 ?OnServerInitialisation@NPCstructure@@UAEXPAVUnit@@00PAX1G@Z =====
  0044a060: 55                                              push   ebp
  0044a061: 8b ec                                           mov    ebp,esp
  0044a063: 81 ec 00 01 00 00                               sub    esp,0x100
  0044a069: 53                                              push   ebx
  0044a06a: 56                                              push   esi
  0044a06b: 8b f1                                           mov    esi,ecx
  0044a06d: 83 7e 14 ff                                     cmp    DWORD PTR [esi+0x14],0xffffffff
  0044a071: 57                                              push   edi
  0044a072: 8b 7d 1c                                        mov    edi,DWORD PTR [ebp+0x1c]
  0044a075: 66 89 be 40 01 00 00                            mov    WORD PTR [esi+0x140],di
  0044a07c: 0f 84 17 01 00 00                               je     0x44a199
  0044a082: 33 c0                                           xor    eax,eax
  0044a084: 66 8b 46 64                                     mov    ax,WORD PTR [esi+0x64]
  0044a088: 50                                              push   eax
  0044a089: e8 32 7e 02 00                                  call   0x471ec0
  0044a08e: 83 c4 04                                        add    esp,0x4
  0044a091: 85 c0                                           test   eax,eax
  0044a093: 89 45 1c                                        mov    DWORD PTR [ebp+0x1c],eax
  0044a096: 0f 84 be 00 00 00                               je     0x44a15a
  0044a09c: 6a 00                                           push   0x0
  0044a09e: 6a 00                                           push   0x0
  0044a0a0: 83 ec 0c                                        sub    esp,0xc
  0044a0a3: 8d 5e 5c                                        lea    ebx,[esi+0x5c]
  0044a0a6: 8b d4                                           mov    edx,esp
  0044a0a8: 8b cb                                           mov    ecx,ebx
  0044a0aa: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0044a0ac: 89 02                                           mov    DWORD PTR [edx],eax
  0044a0ae: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0044a0b1: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0044a0b4: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0044a0b7: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0044a0ba: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  0044a0bd: 8b d7                                           mov    edx,edi
  0044a0bf: 81 e2 ff ff 00 00                               and    edx,0xffff
  0044a0c5: 52                                              push   edx
  0044a0c6: 6a 02                                           push   0x2
  0044a0c8: e8 33 5e 06 00                                  call   0x4aff00
  0044a0cd: 85 c0                                           test   eax,eax
  0044a0cf: 74 12                                           je     0x44a0e3
  0044a0d1: 50                                              push   eax
  0044a0d2: e8 69 7e 02 00                                  call   0x471f40
  0044a0d7: 83 c4 04                                        add    esp,0x4
  0044a0da: 5f                                              pop    edi
  0044a0db: 5e                                              pop    esi
  0044a0dc: 5b                                              pop    ebx
  0044a0dd: 8b e5                                           mov    esp,ebp
  0044a0df: 5d                                              pop    ebp
  0044a0e0: c2 18 00                                        ret    0x18
  0044a0e3: 6a 00                                           push   0x0
  0044a0e5: 8d 85 00 ff ff ff                               lea    eax,[ebp-0x100]
  0044a0eb: 50                                              push   eax
  0044a0ec: 57                                              push   edi
  0044a0ed: e8 be fd 03 00                                  call   0x489eb0
  0044a0f2: 8b 1b                                           mov    ebx,DWORD PTR [ebx]
  0044a0f4: 83 c4 0c                                        add    esp,0xc
  0044a0f7: 85 db                                           test   ebx,ebx
  0044a0f9: 74 30                                           je     0x44a12b
  0044a0fb: 8b 46 60                                        mov    eax,DWORD PTR [esi+0x60]
  0044a0fe: 85 c0                                           test   eax,eax
  0044a100: 74 29                                           je     0x44a12b
  0044a102: 8b 4e 64                                        mov    ecx,DWORD PTR [esi+0x64]
  0044a105: 51                                              push   ecx
  0044a106: 50                                              push   eax
  0044a107: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0044a10a: 53                                              push   ebx
  0044a10b: 8d 95 00 ff ff ff                               lea    edx,[ebp-0x100]
  0044a111: 52                                              push   edx
  0044a112: 50                                              push   eax
  0044a113: 68 8c 51 50 00                                  push   0x50518c
  0044a118: 6a 04                                           push   0x4
  0044a11a: e8 21 7c 02 00                                  call   0x471d40
  0044a11f: 83 c4 1c                                        add    esp,0x1c
  0044a122: 5f                                              pop    edi
  0044a123: 5e                                              pop    esi
  0044a124: 5b                                              pop    ebx
  0044a125: 8b e5                                           mov    esp,ebp
  0044a127: 5d                                              pop    ebp
  0044a128: c2 18 00                                        ret    0x18
  0044a12b: 8b 4e 64                                        mov    ecx,DWORD PTR [esi+0x64]
  0044a12e: 8b 56 60                                        mov    edx,DWORD PTR [esi+0x60]
  0044a131: 51                                              push   ecx
  0044a132: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0044a135: 52                                              push   edx
  0044a136: 53                                              push   ebx
  0044a137: 8d 85 00 ff ff ff                               lea    eax,[ebp-0x100]
  0044a13d: 50                                              push   eax
  0044a13e: 51                                              push   ecx
  0044a13f: 68 8c 51 50 00                                  push   0x50518c
  0044a144: 68 00 04 00 00                                  push   0x400
  0044a149: e8 f2 7b 02 00                                  call   0x471d40
  0044a14e: 83 c4 1c                                        add    esp,0x1c
  0044a151: 5f                                              pop    edi
  0044a152: 5e                                              pop    esi
  0044a153: 5b                                              pop    ebx
  0044a154: 8b e5                                           mov    esp,ebp
  0044a156: 5d                                              pop    ebp
  0044a157: c2 18 00                                        ret    0x18
  0044a15a: 6a 00                                           push   0x0
  0044a15c: 8d 95 00 ff ff ff                               lea    edx,[ebp-0x100]
  0044a162: 52                                              push   edx
  0044a163: 57                                              push   edi
  0044a164: e8 47 fd 03 00                                  call   0x489eb0
  0044a169: 8b 46 64                                        mov    eax,DWORD PTR [esi+0x64]
  0044a16c: 8b 4e 60                                        mov    ecx,DWORD PTR [esi+0x60]
  0044a16f: 8b 56 5c                                        mov    edx,DWORD PTR [esi+0x5c]
  0044a172: 83 c4 0c                                        add    esp,0xc
  0044a175: 50                                              push   eax
  0044a176: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0044a179: 51                                              push   ecx
  0044a17a: 52                                              push   edx
  0044a17b: 50                                              push   eax
  0044a17c: 8d 8d 00 ff ff ff                               lea    ecx,[ebp-0x100]
  0044a182: 51                                              push   ecx
  0044a183: 81 e7 ff ff 00 00                               and    edi,0xffff
  0044a189: 57                                              push   edi
  0044a18a: 68 38 51 50 00                                  push   0x505138
  0044a18f: 6a 04                                           push   0x4
  0044a191: e8 aa 7b 02 00                                  call   0x471d40
  0044a196: 83 c4 20                                        add    esp,0x20
  0044a199: 5f                                              pop    edi
  0044a19a: 5e                                              pop    esi
  0044a19b: 5b                                              pop    ebx
  0044a19c: 8b e5                                           mov    esp,ebp
  0044a19e: 5d                                              pop    ebp
  0044a19f: c2 18 00                                        ret    0x18

; ===== 0x0044A1B0 ?OnAttack@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044a1b0: 55                                              push   ebp
  0044a1b1: 8b ec                                           mov    ebp,esp
  0044a1b3: 56                                              push   esi
  0044a1b4: 8b f1                                           mov    esi,ecx
  0044a1b6: 8b 86 ac 00 00 00                               mov    eax,DWORD PTR [esi+0xac]
  0044a1bc: 85 c0                                           test   eax,eax
  0044a1be: 74 7d                                           je     0x44a23d
  0044a1c0: 8b 8e b0 00 00 00                               mov    ecx,DWORD PTR [esi+0xb0]
  0044a1c6: 2b c8                                           sub    ecx,eax
  0044a1c8: f7 c1 fc ff ff ff                               test   ecx,0xfffffffc
  0044a1ce: 74 6d                                           je     0x44a23d
  0044a1d0: 8b c8                                           mov    ecx,eax
  0044a1d2: 85 c9                                           test   ecx,ecx
  0044a1d4: 74 0b                                           je     0x44a1e1
  0044a1d6: 8b 86 b0 00 00 00                               mov    eax,DWORD PTR [esi+0xb0]
  0044a1dc: 2b c1                                           sub    eax,ecx
  0044a1de: c1 f8 02                                        sar    eax,0x2
  0044a1e1: 53                                              push   ebx
  0044a1e2: 57                                              push   edi
  0044a1e3: 48                                              dec    eax
  0044a1e4: 50                                              push   eax
  0044a1e5: 6a 00                                           push   0x0
  0044a1e7: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0044a1ec: e8 af ee 00 00                                  call   0x4590a0
  0044a1f1: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0044a1f4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0044a1f7: 6a 00                                           push   0x0
  0044a1f9: 6a 00                                           push   0x0
  0044a1fb: 6a 00                                           push   0x0
  0044a1fd: 6a 00                                           push   0x0
  0044a1ff: 6a 00                                           push   0x0
  0044a201: 6a 00                                           push   0x0
  0044a203: 8b f8                                           mov    edi,eax
  0044a205: 8b 86 ac 00 00 00                               mov    eax,DWORD PTR [esi+0xac]
  0044a20b: 8b 0c b8                                        mov    ecx,DWORD PTR [eax+edi*4]
  0044a20e: 6a 00                                           push   0x0
  0044a210: 52                                              push   edx
  0044a211: 53                                              push   ebx
  0044a212: 83 c1 10                                        add    ecx,0x10
  0044a215: e8 36 21 fc ff                                  call   0x40c350
  0044a21a: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0044a21d: dc 00                                           fadd   QWORD PTR [eax]
  0044a21f: 33 d2                                           xor    edx,edx
  0044a221: dd 18                                           fstp   QWORD PTR [eax]
  0044a223: 8b 86 ac 00 00 00                               mov    eax,DWORD PTR [esi+0xac]
  0044a229: 8b 0c b8                                        mov    ecx,DWORD PTR [eax+edi*4]
  0044a22c: 66 8b 91 80 00 00 00                            mov    dx,WORD PTR [ecx+0x80]
  0044a233: 8b cb                                           mov    ecx,ebx
  0044a235: 52                                              push   edx
  0044a236: e8 b5 40 04 00                                  call   0x48e2f0
  0044a23b: 5f                                              pop    edi
  0044a23c: 5b                                              pop    ebx
  0044a23d: 5e                                              pop    esi
  0044a23e: 5d                                              pop    ebp
  0044a23f: c2 14 00                                        ret    0x14

; ===== 0x0044A250 ?OnAttacked@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044a250: 55                                              push   ebp
  0044a251: 8b ec                                           mov    ebp,esp
  0044a253: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044a256: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0044a258: ff 90 68 01 00 00                               call   DWORD PTR [eax+0x168]
  0044a25e: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0044a261: dc 28                                           fsubr  QWORD PTR [eax]
  0044a263: dd 18                                           fstp   QWORD PTR [eax]
  0044a265: 5d                                              pop    ebp
  0044a266: c2 14 00                                        ret    0x14

; ===== 0x0044A270 ?OnHit@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044a270: 55                                              push   ebp
  0044a271: 8b ec                                           mov    ebp,esp
  0044a273: 6a ff                                           push   0xffffffff
  0044a275: 68 50 66 4d 00                                  push   0x4d6650
  0044a27a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044a280: 50                                              push   eax
  0044a281: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044a288: 81 ec 1c 08 00 00                               sub    esp,0x81c
  0044a28e: 8b 41 2c                                        mov    eax,DWORD PTR [ecx+0x2c]
  0044a291: 85 c0                                           test   eax,eax
  0044a293: 53                                              push   ebx
  0044a294: 56                                              push   esi
  0044a295: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0044a298: 57                                              push   edi
  0044a299: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0044a29c: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  0044a29f: 74 1f                                           je     0x44a2c0
  0044a2a1: 85 ff                                           test   edi,edi
  0044a2a3: 74 1b                                           je     0x44a2c0
  0044a2a5: 3b f7                                           cmp    esi,edi
  0044a2a7: 74 17                                           je     0x44a2c0
  0044a2a9: 8b 07                                           mov    eax,DWORD PTR [edi]
  0044a2ab: 56                                              push   esi
  0044a2ac: 8b cf                                           mov    ecx,edi
  0044a2ae: ff 90 ac 00 00 00                               call   DWORD PTR [eax+0xac]
  0044a2b4: 8b 17                                           mov    edx,DWORD PTR [edi]
  0044a2b6: 6a 01                                           push   0x1
  0044a2b8: 8b cf                                           mov    ecx,edi
  0044a2ba: ff 92 80 00 00 00                               call   DWORD PTR [edx+0x80]
  0044a2c0: 8b ce                                           mov    ecx,esi
  0044a2c2: e8 a9 13 04 00                                  call   0x48b670
  0044a2c7: 3c 01                                           cmp    al,0x1
  0044a2c9: 0f 85 57 02 00 00                               jne    0x44a526
  0044a2cf: 8b ce                                           mov    ecx,esi
  0044a2d1: e8 1a 08 fd ff                                  call   0x41aaf0
  0044a2d6: 85 c0                                           test   eax,eax
  0044a2d8: 75 0f                                           jne    0x44a2e9
  0044a2da: 68 28 52 50 00                                  push   0x505228
  0044a2df: 6a 01                                           push   0x1
  0044a2e1: e8 5a 7a 02 00                                  call   0x471d40
  0044a2e6: 83 c4 08                                        add    esp,0x8
  0044a2e9: 8b ce                                           mov    ecx,esi
  0044a2eb: e8 00 08 fd ff                                  call   0x41aaf0
  0044a2f0: 85 c0                                           test   eax,eax
  0044a2f2: 0f 84 2e 02 00 00                               je     0x44a526
  0044a2f8: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044a2fa: 8b ce                                           mov    ecx,esi
  0044a2fc: ff 50 54                                        call   DWORD PTR [eax+0x54]
  0044a2ff: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  0044a302: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044a304: 8b ce                                           mov    ecx,esi
  0044a306: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0044a309: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0044a30c: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  0044a30f: dd 03                                           fld    QWORD PTR [ebx]
  0044a311: 89 45 d8                                        mov    DWORD PTR [ebp-0x28],eax
  0044a314: dc 1d 30 e6 4d 00                               fcomp  QWORD PTR ds:0x4de630
  0044a31a: 89 55 dc                                        mov    DWORD PTR [ebp-0x24],edx
  0044a31d: df e0                                           fnstsw ax
  0044a31f: f6 c4 41                                        test   ah,0x41
  0044a322: 0f 85 fe 01 00 00                               jne    0x44a526
  0044a328: 8b 07                                           mov    eax,DWORD PTR [edi]
  0044a32a: 8b cf                                           mov    ecx,edi
  0044a32c: ff 90 d8 00 00 00                               call   DWORD PTR [eax+0xd8]
  0044a332: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0044a335: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  0044a33c: df 6d ec                                        fild   QWORD PTR [ebp-0x14]
  0044a33f: dc 13                                           fcom   QWORD PTR [ebx]
  0044a341: df e0                                           fnstsw ax
  0044a343: f6 c4 01                                        test   ah,0x1
  0044a346: 74 08                                           je     0x44a350
  0044a348: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0044a34b: dc 49 70                                        fmul   QWORD PTR [ecx+0x70]
  0044a34e: eb 0a                                           jmp    0x44a35a
  0044a350: 8b 55 e0                                        mov    edx,DWORD PTR [ebp-0x20]
  0044a353: dd d8                                           fstp   st(0)
  0044a355: dd 42 70                                        fld    QWORD PTR [edx+0x70]
  0044a358: dc 0b                                           fmul   QWORD PTR [ebx]
  0044a35a: e8 1b 7a 08 00                                  call   0x4d1d7a
  0044a35f: 99                                              cdq
  0044a360: 8b d8                                           mov    ebx,eax
  0044a362: 8b c2                                           mov    eax,edx
  0044a364: 85 c0                                           test   eax,eax
  0044a366: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0044a369: 89 55 f0                                        mov    DWORD PTR [ebp-0x10],edx
  0044a36c: 0f 8c 9a 00 00 00                               jl     0x44a40c
  0044a372: 7f 08                                           jg     0x44a37c
  0044a374: 85 db                                           test   ebx,ebx
  0044a376: 0f 86 90 00 00 00                               jbe    0x44a40c
  0044a37c: 8b ce                                           mov    ecx,esi
  0044a37e: e8 6d 07 fd ff                                  call   0x41aaf0
  0044a383: 85 c0                                           test   eax,eax
  0044a385: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0044a388: 74 6d                                           je     0x44a3f7
  0044a38a: 8b c8                                           mov    ecx,eax
  0044a38c: e8 4f a7 00 00                                  call   0x454ae0
  0044a391: 81 e2 00 02 00 00                               and    edx,0x200
  0044a397: 33 c0                                           xor    eax,eax
  0044a399: 0b c2                                           or     eax,edx
  0044a39b: 74 16                                           je     0x44a3b3
  0044a39d: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0044a3a0: 6a 00                                           push   0x0
  0044a3a2: 6a 0a                                           push   0xa
  0044a3a4: 50                                              push   eax
  0044a3a5: 53                                              push   ebx
  0044a3a6: e8 b5 7b 08 00                                  call   0x4d1f60
  0044a3ab: 8b d8                                           mov    ebx,eax
  0044a3ad: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0044a3b0: 89 55 f0                                        mov    DWORD PTR [ebp-0x10],edx
  0044a3b3: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0044a3b6: e8 25 a7 00 00                                  call   0x454ae0
  0044a3bb: 25 00 00 00 80                                  and    eax,0x80000000
  0044a3c0: 33 c9                                           xor    ecx,ecx
  0044a3c2: 0b c1                                           or     eax,ecx
  0044a3c4: 74 31                                           je     0x44a3f7
  0044a3c6: 88 8d d8 f7 ff ff                               mov    BYTE PTR [ebp-0x828],cl
  0044a3cc: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0044a3cf: 51                                              push   ecx
  0044a3d0: 53                                              push   ebx
  0044a3d1: 8d 95 d8 f7 ff ff                               lea    edx,[ebp-0x828]
  0044a3d7: 68 10 52 50 00                                  push   0x505210
  0044a3dc: 52                                              push   edx
  0044a3dd: e8 5e 95 fb ff                                  call   0x403940
  0044a3e2: 83 c4 0c                                        add    esp,0xc
  0044a3e5: 8b cc                                           mov    ecx,esp
  0044a3e7: 89 65 e0                                        mov    DWORD PTR [ebp-0x20],esp
  0044a3ea: 50                                              push   eax
  0044a3eb: e8 74 76 08 00                                  call   0x4d1a64
  0044a3f0: 8b ce                                           mov    ecx,esi
  0044a3f2: e8 99 8a fd ff                                  call   0x422e90
  0044a3f7: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0044a3fa: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0044a3fd: 03 cb                                           add    ecx,ebx
  0044a3ff: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0044a402: 13 d8                                           adc    ebx,eax
  0044a404: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0044a407: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0044a40a: eb 03                                           jmp    0x44a40f
  0044a40c: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0044a40f: 3b 5d dc                                        cmp    ebx,DWORD PTR [ebp-0x24]
  0044a412: 0f 8c 0e 01 00 00                               jl     0x44a526
  0044a418: 7f 0c                                           jg     0x44a426
  0044a41a: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0044a41d: 3b 45 d8                                        cmp    eax,DWORD PTR [ebp-0x28]
  0044a420: 0f 86 00 01 00 00                               jbe    0x44a526
  0044a426: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044a428: 8b ce                                           mov    ecx,esi
  0044a42a: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0044a430: 66 3d c7 00                                     cmp    ax,0xc7
  0044a434: 0f 87 ec 00 00 00                               ja     0x44a526
  0044a43a: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044a43c: 8b ce                                           mov    ecx,esi
  0044a43e: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0044a444: 25 ff ff 00 00                                  and    eax,0xffff
  0044a449: 8b 0c c5 24 1b 51 00                            mov    ecx,DWORD PTR [eax*8+0x511b24]
  0044a450: 3b d9                                           cmp    ebx,ecx
  0044a452: 8d 04 c5 20 1b 51 00                            lea    eax,[eax*8+0x511b20]
  0044a459: 0f 8f c7 00 00 00                               jg     0x44a526
  0044a45f: 7c 0b                                           jl     0x44a46c
  0044a461: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0044a464: 3b 08                                           cmp    ecx,DWORD PTR [eax]
  0044a466: 0f 83 ba 00 00 00                               jae    0x44a526
  0044a46c: df 6d ec                                        fild   QWORD PTR [ebp-0x14]
  0044a46f: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0044a472: dd 02                                           fld    QWORD PTR [edx]
  0044a474: dc 0d 28 e6 4d 00                               fmul   QWORD PTR ds:0x4de628
  0044a47a: de d9                                           fcompp
  0044a47c: df e0                                           fnstsw ax
  0044a47e: f6 c4 01                                        test   ah,0x1
  0044a481: 0f 84 93 00 00 00                               je     0x44a51a
  0044a487: 6a 02                                           push   0x2
  0044a489: e8 82 78 02 00                                  call   0x471d10
  0044a48e: 83 c4 04                                        add    esp,0x4
  0044a491: 85 c0                                           test   eax,eax
  0044a493: 0f 84 81 00 00 00                               je     0x44a51a
  0044a499: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0044a49b: e8 c0 35 ff ff                                  call   0x43da60
  0044a4a0: 8b cf                                           mov    ecx,edi
  0044a4a2: 50                                              push   eax
  0044a4a3: 8d 45 08                                        lea    eax,[ebp+0x8]
  0044a4a6: 50                                              push   eax
  0044a4a7: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0044a4aa: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0044a4ac: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0044a4ae: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044a4b5: 89 4d 14                                        mov    DWORD PTR [ebp+0x14],ecx
  0044a4b8: e8 a3 35 ff ff                                  call   0x43da60
  0044a4bd: 8d 55 10                                        lea    edx,[ebp+0x10]
  0044a4c0: 8b ce                                           mov    ecx,esi
  0044a4c2: 50                                              push   eax
  0044a4c3: 52                                              push   edx
  0044a4c4: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0044a4c7: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0044a4c9: 8b 07                                           mov    eax,DWORD PTR [edi]
  0044a4cb: 8b cf                                           mov    ecx,edi
  0044a4cd: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0044a4d1: ff 50 28                                        call   DWORD PTR [eax+0x28]
  0044a4d4: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0044a4d7: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0044a4da: 50                                              push   eax
  0044a4db: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0044a4de: 51                                              push   ecx
  0044a4df: 52                                              push   edx
  0044a4e0: 50                                              push   eax
  0044a4e1: 53                                              push   ebx
  0044a4e2: 68 d4 51 50 00                                  push   0x5051d4
  0044a4e7: 6a 20                                           push   0x20
  0044a4e9: 6a 02                                           push   0x2
  0044a4eb: e8 20 78 02 00                                  call   0x471d10
  0044a4f0: 83 c4 04                                        add    esp,0x4
  0044a4f3: 50                                              push   eax
  0044a4f4: e8 f7 45 08 00                                  call   0x4ceaf0
  0044a4f9: 83 c4 20                                        add    esp,0x20
  0044a4fc: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0044a4ff: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0044a503: e8 38 75 08 00                                  call   0x4d1a40
  0044a508: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0044a50b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044a512: e8 29 75 08 00                                  call   0x4d1a40
  0044a517: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0044a51a: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0044a51d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044a51f: 53                                              push   ebx
  0044a520: 50                                              push   eax
  0044a521: 8b ce                                           mov    ecx,esi
  0044a523: ff 52 50                                        call   DWORD PTR [edx+0x50]
  0044a526: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044a529: 5f                                              pop    edi
  0044a52a: 5e                                              pop    esi
  0044a52b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044a532: 5b                                              pop    ebx
  0044a533: 8b e5                                           mov    esp,ebp
  0044a535: 5d                                              pop    ebp
  0044a536: c2 14 00                                        ret    0x14

; ===== 0x0044A540 ?OnDeath@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044a540: 55                                              push   ebp
  0044a541: 8b ec                                           mov    ebp,esp
  0044a543: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044a549: 6a ff                                           push   0xffffffff
  0044a54b: 68 9b 66 4d 00                                  push   0x4d669b
  0044a550: 50                                              push   eax
  0044a551: b8 24 10 00 00                                  mov    eax,0x1024
  0044a556: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044a55d: e8 4e 77 08 00                                  call   0x4d1cb0
  0044a562: 53                                              push   ebx
  0044a563: 56                                              push   esi
  0044a564: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0044a567: 85 f6                                           test   esi,esi
  0044a569: 8b d9                                           mov    ebx,ecx
  0044a56b: 57                                              push   edi
  0044a56c: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  0044a56f: 0f 84 f7 03 00 00                               je     0x44a96c
  0044a575: 8b ce                                           mov    ecx,esi
  0044a577: e8 f4 10 04 00                                  call   0x48b670
  0044a57c: 3c 01                                           cmp    al,0x1
  0044a57e: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0044a581: 6a 04                                           push   0x4
  0044a583: 0f 85 80 00 00 00                               jne    0x44a609
  0044a589: e8 82 77 02 00                                  call   0x471d10
  0044a58e: 83 c4 04                                        add    esp,0x4
  0044a591: 85 c0                                           test   eax,eax
  0044a593: 0f 84 f2 00 00 00                               je     0x44a68b
  0044a599: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0044a59b: e8 c0 34 ff ff                                  call   0x43da60
  0044a5a0: 8b cf                                           mov    ecx,edi
  0044a5a2: 50                                              push   eax
  0044a5a3: 8d 45 d8                                        lea    eax,[ebp-0x28]
  0044a5a6: 50                                              push   eax
  0044a5a7: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0044a5aa: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0044a5ac: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0044a5ae: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044a5b5: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  0044a5b8: e8 a3 34 ff ff                                  call   0x43da60
  0044a5bd: 8d 55 dc                                        lea    edx,[ebp-0x24]
  0044a5c0: 8b ce                                           mov    ecx,esi
  0044a5c2: 50                                              push   eax
  0044a5c3: 52                                              push   edx
  0044a5c4: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0044a5c7: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0044a5ca: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044a5cc: 57                                              push   edi
  0044a5cd: 56                                              push   esi
  0044a5ce: 51                                              push   ecx
  0044a5cf: 50                                              push   eax
  0044a5d0: 68 5c 53 50 00                                  push   0x50535c
  0044a5d5: 68 00 02 00 00                                  push   0x200
  0044a5da: 6a 04                                           push   0x4
  0044a5dc: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0044a5e0: e8 2b 77 02 00                                  call   0x471d10
  0044a5e5: 83 c4 04                                        add    esp,0x4
  0044a5e8: 50                                              push   eax
  0044a5e9: e8 02 45 08 00                                  call   0x4ceaf0
  0044a5ee: 83 c4 1c                                        add    esp,0x1c
  0044a5f1: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0044a5f4: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0044a5f8: e8 43 74 08 00                                  call   0x4d1a40
  0044a5fd: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044a604: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0044a607: eb 7a                                           jmp    0x44a683
  0044a609: e8 02 77 02 00                                  call   0x471d10
  0044a60e: 83 c4 04                                        add    esp,0x4
  0044a611: 85 c0                                           test   eax,eax
  0044a613: 74 76                                           je     0x44a68b
  0044a615: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0044a617: e8 44 34 ff ff                                  call   0x43da60
  0044a61c: 8d 55 dc                                        lea    edx,[ebp-0x24]
  0044a61f: 8b cf                                           mov    ecx,edi
  0044a621: 50                                              push   eax
  0044a622: 52                                              push   edx
  0044a623: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0044a626: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044a628: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0044a62a: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0044a631: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0044a634: e8 27 34 ff ff                                  call   0x43da60
  0044a639: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0044a63c: 50                                              push   eax
  0044a63d: 51                                              push   ecx
  0044a63e: 8b ce                                           mov    ecx,esi
  0044a640: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0044a643: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0044a646: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044a648: 57                                              push   edi
  0044a649: 56                                              push   esi
  0044a64a: 52                                              push   edx
  0044a64b: 50                                              push   eax
  0044a64c: 68 1c 53 50 00                                  push   0x50531c
  0044a651: 68 00 02 00 00                                  push   0x200
  0044a656: 6a 04                                           push   0x4
  0044a658: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0044a65c: e8 af 76 02 00                                  call   0x471d10
  0044a661: 83 c4 04                                        add    esp,0x4
  0044a664: 50                                              push   eax
  0044a665: e8 86 44 08 00                                  call   0x4ceaf0
  0044a66a: 83 c4 1c                                        add    esp,0x1c
  0044a66d: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0044a670: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0044a674: e8 c7 73 08 00                                  call   0x4d1a40
  0044a679: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044a680: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0044a683: e8 b8 73 08 00                                  call   0x4d1a40
  0044a688: 8b 5d f0                                        mov    ebx,DWORD PTR [ebp-0x10]
  0044a68b: 8b ce                                           mov    ecx,esi
  0044a68d: e8 de 0f 04 00                                  call   0x48b670
  0044a692: 3c 01                                           cmp    al,0x1
  0044a694: 0f 85 d2 02 00 00                               jne    0x44a96c
  0044a69a: 8b ce                                           mov    ecx,esi
  0044a69c: e8 4f 04 fd ff                                  call   0x41aaf0
  0044a6a1: 85 c0                                           test   eax,eax
  0044a6a3: 75 14                                           jne    0x44a6b9
  0044a6a5: 68 cc 52 50 00                                  push   0x5052cc
  0044a6aa: 6a 01                                           push   0x1
  0044a6ac: e8 8f 76 02 00                                  call   0x471d40
  0044a6b1: 83 c4 08                                        add    esp,0x8
  0044a6b4: e9 b3 02 00 00                                  jmp    0x44a96c
  0044a6b9: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044a6bb: 8b ce                                           mov    ecx,esi
  0044a6bd: ff 50 54                                        call   DWORD PTR [eax+0x54]
  0044a6c0: db 43 10                                        fild   DWORD PTR [ebx+0x10]
  0044a6c3: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  0044a6c6: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044a6c8: dc 4b 78                                        fmul   QWORD PTR [ebx+0x78]
  0044a6cb: 8b ce                                           mov    ecx,esi
  0044a6cd: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0044a6d0: dd 5d d0                                        fstp   QWORD PTR [ebp-0x30]
  0044a6d3: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0044a6d9: 25 ff ff 00 00                                  and    eax,0xffff
  0044a6de: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0044a6e1: db 45 10                                        fild   DWORD PTR [ebp+0x10]
  0044a6e4: dc 7d d0                                        fdivr  QWORD PTR [ebp-0x30]
  0044a6e7: e8 8e 76 08 00                                  call   0x4d1d7a
  0044a6ec: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0044a6ef: 8b d8                                           mov    ebx,eax
  0044a6f1: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0044a6f4: 89 55 ec                                        mov    DWORD PTR [ebp-0x14],edx
  0044a6f7: df 6d e8                                        fild   QWORD PTR [ebp-0x18]
  0044a6fa: dc 59 78                                        fcomp  QWORD PTR [ecx+0x78]
  0044a6fd: df e0                                           fnstsw ax
  0044a6ff: f6 c4 41                                        test   ah,0x41
  0044a702: 75 10                                           jne    0x44a714
  0044a704: dd 41 78                                        fld    QWORD PTR [ecx+0x78]
  0044a707: e8 6e 76 08 00                                  call   0x4d1d7a
  0044a70c: 8b d8                                           mov    ebx,eax
  0044a70e: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0044a711: 89 55 ec                                        mov    DWORD PTR [ebp-0x14],edx
  0044a714: 8b ce                                           mov    ecx,esi
  0044a716: e8 55 0f 04 00                                  call   0x48b670
  0044a71b: 3c 01                                           cmp    al,0x1
  0044a71d: 75 55                                           jne    0x44a774
  0044a71f: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044a721: 8b ce                                           mov    ecx,esi
  0044a723: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0044a729: 66 3d 0a 00                                     cmp    ax,0xa
  0044a72d: 76 45                                           jbe    0x44a774
  0044a72f: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044a731: 8b ce                                           mov    ecx,esi
  0044a733: ff 52 58                                        call   DWORD PTR [edx+0x58]
  0044a736: 8b ce                                           mov    ecx,esi
  0044a738: 8b f8                                           mov    edi,eax
  0044a73a: 8b da                                           mov    ebx,edx
  0044a73c: e8 9f 53 fd ff                                  call   0x41fae0
  0044a741: 6a 00                                           push   0x0
  0044a743: 2b f8                                           sub    edi,eax
  0044a745: 6a 14                                           push   0x14
  0044a747: 1b da                                           sbb    ebx,edx
  0044a749: 53                                              push   ebx
  0044a74a: 57                                              push   edi
  0044a74b: e8 10 77 08 00                                  call   0x4d1e60
  0044a750: 39 55 ec                                        cmp    DWORD PTR [ebp-0x14],edx
  0044a753: 7c 19                                           jl     0x44a76e
  0044a755: 7f 07                                           jg     0x44a75e
  0044a757: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0044a75a: 3b d8                                           cmp    ebx,eax
  0044a75c: 76 13                                           jbe    0x44a771
  0044a75e: 83 e8 01                                        sub    eax,0x1
  0044a761: 83 da 00                                        sbb    edx,0x0
  0044a764: 8b d8                                           mov    ebx,eax
  0044a766: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0044a769: 89 55 ec                                        mov    DWORD PTR [ebp-0x14],edx
  0044a76c: eb 03                                           jmp    0x44a771
  0044a76e: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0044a771: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0044a774: 33 c0                                           xor    eax,eax
  0044a776: 8b ce                                           mov    ecx,esi
  0044a778: 89 45 d0                                        mov    DWORD PTR [ebp-0x30],eax
  0044a77b: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  0044a77e: e8 ed 0e 04 00                                  call   0x48b670
  0044a783: 3c 01                                           cmp    al,0x1
  0044a785: 75 49                                           jne    0x44a7d0
  0044a787: 8b ce                                           mov    ecx,esi
  0044a789: e8 62 03 fd ff                                  call   0x41aaf0
  0044a78e: 8b c8                                           mov    ecx,eax
  0044a790: e8 4b a3 00 00                                  call   0x454ae0
  0044a795: 81 e2 00 02 00 00                               and    edx,0x200
  0044a79b: 33 c0                                           xor    eax,eax
  0044a79d: 0b c2                                           or     eax,edx
  0044a79f: 74 2f                                           je     0x44a7d0
  0044a7a1: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0044a7a4: 6a 00                                           push   0x0
  0044a7a6: 6a 0a                                           push   0xa
  0044a7a8: 50                                              push   eax
  0044a7a9: 53                                              push   ebx
  0044a7aa: e8 b1 77 08 00                                  call   0x4d1f60
  0044a7af: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0044a7b2: 03 c8                                           add    ecx,eax
  0044a7b4: 89 45 d0                                        mov    DWORD PTR [ebp-0x30],eax
  0044a7b7: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0044a7ba: 13 c2                                           adc    eax,edx
  0044a7bc: 50                                              push   eax
  0044a7bd: 89 55 d4                                        mov    DWORD PTR [ebp-0x2c],edx
  0044a7c0: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044a7c2: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  0044a7c5: 51                                              push   ecx
  0044a7c6: 8b ce                                           mov    ecx,esi
  0044a7c8: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0044a7cb: ff 52 50                                        call   DWORD PTR [edx+0x50]
  0044a7ce: eb 13                                           jmp    0x44a7e3
  0044a7d0: 8b 55 e0                                        mov    edx,DWORD PTR [ebp-0x20]
  0044a7d3: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0044a7d6: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0044a7d9: 03 d3                                           add    edx,ebx
  0044a7db: 13 c8                                           adc    ecx,eax
  0044a7dd: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  0044a7e0: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  0044a7e3: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0044a7e6: 85 c0                                           test   eax,eax
  0044a7e8: 0f 8c 7b 01 00 00                               jl     0x44a969
  0044a7ee: 7f 0c                                           jg     0x44a7fc
  0044a7f0: 81 fb e8 03 00 00                               cmp    ebx,0x3e8
  0044a7f6: 0f 86 96 00 00 00                               jbe    0x44a892
  0044a7fc: 6a 02                                           push   0x2
  0044a7fe: e8 0d 75 02 00                                  call   0x471d10
  0044a803: 83 c4 04                                        add    esp,0x4
  0044a806: 85 c0                                           test   eax,eax
  0044a808: 0f 84 84 00 00 00                               je     0x44a892
  0044a80e: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0044a810: e8 4b 32 ff ff                                  call   0x43da60
  0044a815: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0044a818: 50                                              push   eax
  0044a819: 51                                              push   ecx
  0044a81a: 8b cf                                           mov    ecx,edi
  0044a81c: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0044a81f: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044a821: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0044a823: c7 45 fc 04 00 00 00                            mov    DWORD PTR [ebp-0x4],0x4
  0044a82a: 89 55 08                                        mov    DWORD PTR [ebp+0x8],edx
  0044a82d: e8 2e 32 ff ff                                  call   0x43da60
  0044a832: 8b ce                                           mov    ecx,esi
  0044a834: 50                                              push   eax
  0044a835: 8d 45 d8                                        lea    eax,[ebp-0x28]
  0044a838: 50                                              push   eax
  0044a839: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0044a83c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0044a83e: 8b 17                                           mov    edx,DWORD PTR [edi]
  0044a840: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  0044a843: 8b cf                                           mov    ecx,edi
  0044a845: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0044a849: ff 52 28                                        call   DWORD PTR [edx+0x28]
  0044a84c: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0044a84f: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0044a852: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0044a855: 50                                              push   eax
  0044a856: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044a859: 50                                              push   eax
  0044a85a: 51                                              push   ecx
  0044a85b: 53                                              push   ebx
  0044a85c: 52                                              push   edx
  0044a85d: 68 90 52 50 00                                  push   0x505290
  0044a862: 6a 20                                           push   0x20
  0044a864: 6a 02                                           push   0x2
  0044a866: e8 a5 74 02 00                                  call   0x471d10
  0044a86b: 83 c4 04                                        add    esp,0x4
  0044a86e: 50                                              push   eax
  0044a86f: e8 7c 42 08 00                                  call   0x4ceaf0
  0044a874: 83 c4 20                                        add    esp,0x20
  0044a877: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0044a87a: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0044a87e: e8 bd 71 08 00                                  call   0x4d1a40
  0044a883: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0044a886: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044a88d: e8 ae 71 08 00                                  call   0x4d1a40
  0044a892: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0044a895: 85 c0                                           test   eax,eax
  0044a897: 0f 8c cc 00 00 00                               jl     0x44a969
  0044a89d: 7f 08                                           jg     0x44a8a7
  0044a89f: 85 db                                           test   ebx,ebx
  0044a8a1: 0f 86 c2 00 00 00                               jbe    0x44a969
  0044a8a7: 8b ce                                           mov    ecx,esi
  0044a8a9: e8 c2 0d 04 00                                  call   0x48b670
  0044a8ae: 3c 01                                           cmp    al,0x1
  0044a8b0: 0f 85 b3 00 00 00                               jne    0x44a969
  0044a8b6: 8b ce                                           mov    ecx,esi
  0044a8b8: e8 03 54 fd ff                                  call   0x41fcc0
  0044a8bd: 85 c0                                           test   eax,eax
  0044a8bf: 0f 85 90 00 00 00                               jne    0x44a955
  0044a8c5: 8b ce                                           mov    ecx,esi
  0044a8c7: e8 24 02 fd ff                                  call   0x41aaf0
  0044a8cc: 85 c0                                           test   eax,eax
  0044a8ce: 74 74                                           je     0x44a944
  0044a8d0: 8b c8                                           mov    ecx,eax
  0044a8d2: e8 09 a2 00 00                                  call   0x454ae0
  0044a8d7: 25 00 00 00 80                                  and    eax,0x80000000
  0044a8dc: 33 c9                                           xor    ecx,ecx
  0044a8de: 0b c1                                           or     eax,ecx
  0044a8e0: 74 62                                           je     0x44a944
  0044a8e2: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0044a8e5: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0044a8e8: 8b d0                                           mov    edx,eax
  0044a8ea: 0b d1                                           or     edx,ecx
  0044a8ec: 74 24                                           je     0x44a912
  0044a8ee: 51                                              push   ecx
  0044a8ef: 50                                              push   eax
  0044a8f0: 8d 85 d0 f7 ff ff                               lea    eax,[ebp-0x830]
  0044a8f6: 68 74 52 50 00                                  push   0x505274
  0044a8fb: 50                                              push   eax
  0044a8fc: c6 85 d0 f7 ff ff 00                            mov    BYTE PTR [ebp-0x830],0x0
  0044a903: e8 38 90 fb ff                                  call   0x403940
  0044a908: 83 c4 0c                                        add    esp,0xc
  0044a90b: 8b cc                                           mov    ecx,esp
  0044a90d: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  0044a910: eb 25                                           jmp    0x44a937
  0044a912: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0044a915: 51                                              push   ecx
  0044a916: 53                                              push   ebx
  0044a917: 8d 95 d0 ef ff ff                               lea    edx,[ebp-0x1030]
  0044a91d: 68 74 52 50 00                                  push   0x505274
  0044a922: 52                                              push   edx
  0044a923: c6 85 d0 ef ff ff 00                            mov    BYTE PTR [ebp-0x1030],0x0
  0044a92a: e8 11 90 fb ff                                  call   0x403940
  0044a92f: 83 c4 0c                                        add    esp,0xc
  0044a932: 8b cc                                           mov    ecx,esp
  0044a934: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  0044a937: 50                                              push   eax
  0044a938: e8 27 71 08 00                                  call   0x4d1a64
  0044a93d: 8b ce                                           mov    ecx,esi
  0044a93f: e8 4c 85 fd ff                                  call   0x422e90
  0044a944: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0044a947: 8b 55 e0                                        mov    edx,DWORD PTR [ebp-0x20]
  0044a94a: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044a94c: 51                                              push   ecx
  0044a94d: 52                                              push   edx
  0044a94e: 8b ce                                           mov    ecx,esi
  0044a950: ff 50 50                                        call   DWORD PTR [eax+0x50]
  0044a953: eb 14                                           jmp    0x44a969
  0044a955: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0044a958: 50                                              push   eax
  0044a959: 53                                              push   ebx
  0044a95a: 56                                              push   esi
  0044a95b: 8b ce                                           mov    ecx,esi
  0044a95d: e8 5e 53 fd ff                                  call   0x41fcc0
  0044a962: 8b c8                                           mov    ecx,eax
  0044a964: e8 37 f6 fe ff                                  call   0x439fa0
  0044a969: 8b 5d f0                                        mov    ebx,DWORD PTR [ebp-0x10]
  0044a96c: 8b 7d 18                                        mov    edi,DWORD PTR [ebp+0x18]
  0044a96f: 33 c0                                           xor    eax,eax
  0044a971: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0044a974: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0044a977: 8b 83 bc 00 00 00                               mov    eax,DWORD PTR [ebx+0xbc]
  0044a97d: 85 c0                                           test   eax,eax
  0044a97f: 0f 84 4f 01 00 00                               je     0x44aad4
  0044a985: 8b 8b c0 00 00 00                               mov    ecx,DWORD PTR [ebx+0xc0]
  0044a98b: 2b c8                                           sub    ecx,eax
  0044a98d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0044a990: c1 f9 04                                        sar    ecx,0x4
  0044a993: 3b c1                                           cmp    eax,ecx
  0044a995: 0f 83 39 01 00 00                               jae    0x44aad4
  0044a99b: 8b 9b bc 00 00 00                               mov    ebx,DWORD PTR [ebx+0xbc]
  0044a9a1: 68 00 e1 f5 05                                  push   0x5f5e100
  0044a9a6: 6a 00                                           push   0x0
  0044a9a8: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0044a9ad: e8 ee e6 00 00                                  call   0x4590a0
  0044a9b2: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0044a9b5: 89 45 18                                        mov    DWORD PTR [ebp+0x18],eax
  0044a9b8: db 45 18                                        fild   DWORD PTR [ebp+0x18]
  0044a9bb: dd 44 1a 08                                     fld    QWORD PTR [edx+ebx*1+0x8]
  0044a9bf: dc 0d c8 f1 4d 00                               fmul   QWORD PTR ds:0x4df1c8
  0044a9c5: de d9                                           fcompp
  0044a9c7: df e0                                           fnstsw ax
  0044a9c9: f6 c4 41                                        test   ah,0x41
  0044a9cc: 0f 85 ea 00 00 00                               jne    0x44aabc
  0044a9d2: 68 20 01 00 00                                  push   0x120
  0044a9d7: e8 14 76 ff ff                                  call   0x441ff0
  0044a9dc: 83 c4 04                                        add    esp,0x4
  0044a9df: 89 45 18                                        mov    DWORD PTR [ebp+0x18],eax
  0044a9e2: 85 c0                                           test   eax,eax
  0044a9e4: c7 45 fc 06 00 00 00                            mov    DWORD PTR [ebp-0x4],0x6
  0044a9eb: 74 0b                                           je     0x44a9f8
  0044a9ed: 8b c8                                           mov    ecx,eax
  0044a9ef: e8 8c 13 00 00                                  call   0x44bd80
  0044a9f4: 8b d8                                           mov    ebx,eax
  0044a9f6: eb 02                                           jmp    0x44a9fa
  0044a9f8: 33 db                                           xor    ebx,ebx
  0044a9fa: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0044a9fd: 8b 80 bc 00 00 00                               mov    eax,DWORD PTR [eax+0xbc]
  0044aa03: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044aa06: 8b 04 01                                        mov    eax,DWORD PTR [ecx+eax*1]
  0044aa09: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0044aa0b: 50                                              push   eax
  0044aa0c: 6a 03                                           push   0x3
  0044aa0e: 8b cb                                           mov    ecx,ebx
  0044aa10: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044aa17: ff 52 18                                        call   DWORD PTR [edx+0x18]
  0044aa1a: 85 c0                                           test   eax,eax
  0044aa1c: 0f 84 90 00 00 00                               je     0x44aab2
  0044aa22: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  0044aa25: 8b 57 38                                        mov    edx,DWORD PTR [edi+0x38]
  0044aa28: 42                                              inc    edx
  0044aa29: 85 c0                                           test   eax,eax
  0044aa2b: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  0044aa2e: c7 47 40 00 00 00 00                            mov    DWORD PTR [edi+0x40],0x0
  0044aa35: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  0044aa39: 89 47 2c                                        mov    DWORD PTR [edi+0x2c],eax
  0044aa3c: 89 57 38                                        mov    DWORD PTR [edi+0x38],edx
  0044aa3f: 6a 0c                                           push   0xc
  0044aa41: 75 30                                           jne    0x44aa73
  0044aa43: e8 a8 75 ff ff                                  call   0x441ff0
  0044aa48: 33 c9                                           xor    ecx,ecx
  0044aa4a: 83 c4 04                                        add    esp,0x4
  0044aa4d: 3b c1                                           cmp    eax,ecx
  0044aa4f: 74 07                                           je     0x44aa58
  0044aa51: 89 08                                           mov    DWORD PTR [eax],ecx
  0044aa53: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0044aa56: eb 02                                           jmp    0x44aa5a
  0044aa58: 33 c0                                           xor    eax,eax
  0044aa5a: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  0044aa5d: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  0044aa60: 89 47 24                                        mov    DWORD PTR [edi+0x24],eax
  0044aa63: 89 08                                           mov    DWORD PTR [eax],ecx
  0044aa65: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  0044aa68: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0044aa6b: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  0044aa6e: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0044aa71: eb 49                                           jmp    0x44aabc
  0044aa73: e8 78 75 ff ff                                  call   0x441ff0
  0044aa78: 83 c4 04                                        add    esp,0x4
  0044aa7b: 85 c0                                           test   eax,eax
  0044aa7d: 74 0f                                           je     0x44aa8e
  0044aa7f: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0044aa85: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  0044aa8c: eb 02                                           jmp    0x44aa90
  0044aa8e: 33 c0                                           xor    eax,eax
  0044aa90: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  0044aa93: 89 01                                           mov    DWORD PTR [ecx],eax
  0044aa95: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  0044aa98: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  0044aa9b: 89 47 28                                        mov    DWORD PTR [edi+0x28],eax
  0044aa9e: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0044aaa1: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  0044aaa4: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0044aaaa: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  0044aaad: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0044aab0: eb 0a                                           jmp    0x44aabc
  0044aab2: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0044aab4: 8b cb                                           mov    ecx,ebx
  0044aab6: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0044aabc: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0044aabf: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044aac2: 8b 5d f0                                        mov    ebx,DWORD PTR [ebp-0x10]
  0044aac5: 41                                              inc    ecx
  0044aac6: 83 c0 10                                        add    eax,0x10
  0044aac9: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  0044aacc: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0044aacf: e9 a3 fe ff ff                                  jmp    0x44a977
  0044aad4: 85 f6                                           test   esi,esi
  0044aad6: 0f 84 c6 00 00 00                               je     0x44aba2
  0044aadc: 8b 83 80 00 00 00                               mov    eax,DWORD PTR [ebx+0x80]
  0044aae2: 85 c0                                           test   eax,eax
  0044aae4: 74 38                                           je     0x44ab1e
  0044aae6: 8b 8b 88 00 00 00                               mov    ecx,DWORD PTR [ebx+0x88]
  0044aaec: 85 c9                                           test   ecx,ecx
  0044aaee: 74 1f                                           je     0x44ab0f
  0044aaf0: 8b 3e                                           mov    edi,DWORD PTR [esi]
  0044aaf2: 6a 00                                           push   0x0
  0044aaf4: 50                                              push   eax
  0044aaf5: 8b ce                                           mov    ecx,esi
  0044aaf7: ff 57 0c                                        call   DWORD PTR [edi+0xc]
  0044aafa: 03 83 84 00 00 00                               add    eax,DWORD PTR [ebx+0x84]
  0044ab00: 50                                              push   eax
  0044ab01: 8b 83 80 00 00 00                               mov    eax,DWORD PTR [ebx+0x80]
  0044ab07: 50                                              push   eax
  0044ab08: 8b ce                                           mov    ecx,esi
  0044ab0a: ff 57 04                                        call   DWORD PTR [edi+0x4]
  0044ab0d: eb 0f                                           jmp    0x44ab1e
  0044ab0f: 8b 8b 84 00 00 00                               mov    ecx,DWORD PTR [ebx+0x84]
  0044ab15: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044ab17: 51                                              push   ecx
  0044ab18: 50                                              push   eax
  0044ab19: 8b ce                                           mov    ecx,esi
  0044ab1b: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0044ab1e: 8b ce                                           mov    ecx,esi
  0044ab20: e8 4b 0b 04 00                                  call   0x48b670
  0044ab25: 3c 01                                           cmp    al,0x1
  0044ab27: 75 79                                           jne    0x44aba2
  0044ab29: 8b ce                                           mov    ecx,esi
  0044ab2b: e8 c0 ff fc ff                                  call   0x41aaf0
  0044ab30: 85 c0                                           test   eax,eax
  0044ab32: 75 0f                                           jne    0x44ab43
  0044ab34: 68 cc 52 50 00                                  push   0x5052cc
  0044ab39: 6a 01                                           push   0x1
  0044ab3b: e8 00 72 02 00                                  call   0x471d40
  0044ab40: 83 c4 08                                        add    esp,0x8
  0044ab43: 8b 93 90 00 00 00                               mov    edx,DWORD PTR [ebx+0x90]
  0044ab49: 8b 83 8c 00 00 00                               mov    eax,DWORD PTR [ebx+0x8c]
  0044ab4f: 52                                              push   edx
  0044ab50: 50                                              push   eax
  0044ab51: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0044ab56: e8 45 e5 00 00                                  call   0x4590a0
  0044ab5b: 8b ce                                           mov    ecx,esi
  0044ab5d: 8b d8                                           mov    ebx,eax
  0044ab5f: e8 5c 51 fd ff                                  call   0x41fcc0
  0044ab64: 85 c0                                           test   eax,eax
  0044ab66: 75 2a                                           jne    0x44ab92
  0044ab68: 8b 3e                                           mov    edi,DWORD PTR [esi]
  0044ab6a: 6a 01                                           push   0x1
  0044ab6c: 8b ce                                           mov    ecx,esi
  0044ab6e: ff 97 04 01 00 00                               call   DWORD PTR [edi+0x104]
  0044ab74: 03 c3                                           add    eax,ebx
  0044ab76: 50                                              push   eax
  0044ab77: 8b ce                                           mov    ecx,esi
  0044ab79: ff 97 08 01 00 00                               call   DWORD PTR [edi+0x108]
  0044ab7f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044ab82: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044ab89: 5f                                              pop    edi
  0044ab8a: 5e                                              pop    esi
  0044ab8b: 5b                                              pop    ebx
  0044ab8c: 8b e5                                           mov    esp,ebp
  0044ab8e: 5d                                              pop    ebp
  0044ab8f: c2 14 00                                        ret    0x14
  0044ab92: 53                                              push   ebx
  0044ab93: 56                                              push   esi
  0044ab94: 8b ce                                           mov    ecx,esi
  0044ab96: e8 25 51 fd ff                                  call   0x41fcc0
  0044ab9b: 8b c8                                           mov    ecx,eax
  0044ab9d: e8 2e f6 fe ff                                  call   0x43a1d0
  0044aba2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044aba5: 5f                                              pop    edi
  0044aba6: 5e                                              pop    esi
  0044aba7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044abae: 5b                                              pop    ebx
  0044abaf: 8b e5                                           mov    esp,ebp
  0044abb1: 5d                                              pop    ebp
  0044abb2: c2 14 00                                        ret    0x14

; ===== 0x0044ABC0 ?GetMonsterStructure@NPC@NPCstructure@@QAEPAUMonsterStructure@@XZ =====
  0044abc0: 8b c1                                           mov    eax,ecx
  0044abc2: c3                                              ret

; ===== 0x0044ABD0 ?OnNPCDataExchange@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044abd0: c2 14 00                                        ret    0x14

; ===== 0x0044ABE0 ?OnGetUnitStructure@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044abe0: 55                                              push   ebp
  0044abe1: 8b ec                                           mov    ebp,esp
  0044abe3: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  0044abe6: 83 c1 08                                        add    ecx,0x8
  0044abe9: 89 08                                           mov    DWORD PTR [eax],ecx
  0044abeb: 5d                                              pop    ebp
  0044abec: c2 14 00                                        ret    0x14

; ===== 0x0044ABF0 ?OnQuerySchedule@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044abf0: c2 14 00                                        ret    0x14

; ===== 0x0044AC00 ?OnAttackHit@NPCstructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044ac00: c2 14 00                                        ret    0x14

; ===== 0x0044BE70 ??1Objects@@EAE@XZ =====
  0044be70: 55                                              push   ebp
  0044be71: 8b ec                                           mov    ebp,esp
  0044be73: 6a ff                                           push   0xffffffff
  0044be75: 68 c7 66 4d 00                                  push   0x4d66c7
  0044be7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044be80: 50                                              push   eax
  0044be81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044be88: 51                                              push   ecx
  0044be89: 53                                              push   ebx
  0044be8a: 56                                              push   esi
  0044be8b: 8b f1                                           mov    esi,ecx
  0044be8d: 57                                              push   edi
  0044be8e: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0044be91: c7 06 e0 f1 4d 00                               mov    DWORD PTR [esi],0x4df1e0
  0044be97: c7 46 30 d0 f1 4d 00                            mov    DWORD PTR [esi+0x30],0x4df1d0
  0044be9e: 8b 86 0c 01 00 00                               mov    eax,DWORD PTR [esi+0x10c]
  0044bea4: 33 db                                           xor    ebx,ebx
  0044bea6: 3b c3                                           cmp    eax,ebx
  0044bea8: bf 01 00 00 00                                  mov    edi,0x1
  0044bead: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0044beb0: 0f 84 56 01 00 00                               je     0x44c00c
  0044beb6: 8b 48 24                                        mov    ecx,DWORD PTR [eax+0x24]
  0044beb9: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0044bebc: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0044bebf: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  0044bec3: 8b 86 0c 01 00 00                               mov    eax,DWORD PTR [esi+0x10c]
  0044bec9: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0044becc: 74 0a                                           je     0x44bed8
  0044bece: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0044bed1: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0044bed3: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0044bed6: eb 03                                           jmp    0x44bedb
  0044bed8: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  0044bedb: 39 58 20                                        cmp    DWORD PTR [eax+0x20],ebx
  0044bede: 0f 84 0d 01 00 00                               je     0x44bff1
  0044bee4: 8b 96 0c 01 00 00                               mov    edx,DWORD PTR [esi+0x10c]
  0044beea: 8b 42 20                                        mov    eax,DWORD PTR [edx+0x20]
  0044beed: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0044bef0: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044bef2: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0044bef8: 8b 86 0c 01 00 00                               mov    eax,DWORD PTR [esi+0x10c]
  0044befe: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0044bf01: 8b 50 28                                        mov    edx,DWORD PTR [eax+0x28]
  0044bf04: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  0044bf07: ff 48 38                                        dec    DWORD PTR [eax+0x38]
  0044bf0a: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0044bf0d: 3b ca                                           cmp    ecx,edx
  0044bf0f: 74 5e                                           je     0x44bf6f
  0044bf11: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  0044bf14: 74 55                                           je     0x44bf6b
  0044bf16: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044bf18: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0044bf1b: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0044bf1e: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0044bf21: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0044bf24: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0044bf26: 89 0a                                           mov    DWORD PTR [edx],ecx
  0044bf28: 8b 48 40                                        mov    ecx,DWORD PTR [eax+0x40]
  0044bf2b: 3b cf                                           cmp    ecx,edi
  0044bf2d: 75 1a                                           jne    0x44bf49
  0044bf2f: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0044bf32: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0044bf35: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0044bf38: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0044bf3b: 50                                              push   eax
  0044bf3c: e8 1f 61 ff ff                                  call   0x442060
  0044bf41: 83 c4 04                                        add    esp,0x4
  0044bf44: e9 7a ff ff ff                                  jmp    0x44bec3
  0044bf49: 83 f9 02                                        cmp    ecx,0x2
  0044bf4c: 0f 85 8e 00 00 00                               jne    0x44bfe0
  0044bf52: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0044bf55: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0044bf57: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0044bf5a: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0044bf5d: 50                                              push   eax
  0044bf5e: e8 fd 60 ff ff                                  call   0x442060
  0044bf63: 83 c4 04                                        add    esp,0x4
  0044bf66: e9 58 ff ff ff                                  jmp    0x44bec3
  0044bf6b: 3b ca                                           cmp    ecx,edx
  0044bf6d: 75 33                                           jne    0x44bfa2
  0044bf6f: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  0044bf72: 74 33                                           je     0x44bfa7
  0044bf74: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0044bf77: 89 1a                                           mov    DWORD PTR [edx],ebx
  0044bf79: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0044bf7c: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0044bf7f: 89 50 28                                        mov    DWORD PTR [eax+0x28],edx
  0044bf82: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0044bf85: 83 78 40 02                                     cmp    DWORD PTR [eax+0x40],0x2
  0044bf89: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0044bf8c: 75 52                                           jne    0x44bfe0
  0044bf8e: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0044bf91: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0044bf94: 50                                              push   eax
  0044bf95: e8 c6 60 ff ff                                  call   0x442060
  0044bf9a: 83 c4 04                                        add    esp,0x4
  0044bf9d: e9 21 ff ff ff                                  jmp    0x44bec3
  0044bfa2: 3b 48 24                                        cmp    ecx,DWORD PTR [eax+0x24]
  0044bfa5: 75 2d                                           jne    0x44bfd4
  0044bfa7: 3b ca                                           cmp    ecx,edx
  0044bfa9: 74 29                                           je     0x44bfd4
  0044bfab: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0044bfad: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0044bfb0: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  0044bfb3: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  0044bfb5: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  0044bfb8: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  0044bfbb: 39 78 40                                        cmp    DWORD PTR [eax+0x40],edi
  0044bfbe: 75 20                                           jne    0x44bfe0
  0044bfc0: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0044bfc3: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0044bfc6: 50                                              push   eax
  0044bfc7: e8 94 60 ff ff                                  call   0x442060
  0044bfcc: 83 c4 04                                        add    esp,0x4
  0044bfcf: e9 ef fe ff ff                                  jmp    0x44bec3
  0044bfd4: 89 58 20                                        mov    DWORD PTR [eax+0x20],ebx
  0044bfd7: 89 58 24                                        mov    DWORD PTR [eax+0x24],ebx
  0044bfda: 89 58 28                                        mov    DWORD PTR [eax+0x28],ebx
  0044bfdd: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0044bfe0: 8b 40 2c                                        mov    eax,DWORD PTR [eax+0x2c]
  0044bfe3: 50                                              push   eax
  0044bfe4: e8 77 60 ff ff                                  call   0x442060
  0044bfe9: 83 c4 04                                        add    esp,0x4
  0044bfec: e9 d2 fe ff ff                                  jmp    0x44bec3
  0044bff1: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0044bff4: 74 04                                           je     0x44bffa
  0044bff6: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  0044bffa: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0044bffd: 8b 8e 0c 01 00 00                               mov    ecx,DWORD PTR [esi+0x10c]
  0044c003: 3b cb                                           cmp    ecx,ebx
  0044c005: 74 05                                           je     0x44c00c
  0044c007: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044c009: 57                                              push   edi
  0044c00a: ff 12                                           call   DWORD PTR [edx]
  0044c00c: 8b 86 14 01 00 00                               mov    eax,DWORD PTR [esi+0x114]
  0044c012: 3b c3                                           cmp    eax,ebx
  0044c014: 74 1c                                           je     0x44c032
  0044c016: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0044c019: 8a 01                                           mov    al,BYTE PTR [ecx]
  0044c01b: 3a c3                                           cmp    al,bl
  0044c01d: 74 0a                                           je     0x44c029
  0044c01f: 3c ff                                           cmp    al,0xff
  0044c021: 74 06                                           je     0x44c029
  0044c023: fe c8                                           dec    al
  0044c025: 88 01                                           mov    BYTE PTR [ecx],al
  0044c027: eb 09                                           jmp    0x44c032
  0044c029: 51                                              push   ecx
  0044c02a: e8 31 60 ff ff                                  call   0x442060
  0044c02f: 83 c4 04                                        add    esp,0x4
  0044c032: 8b ce                                           mov    ecx,esi
  0044c034: 89 9e 14 01 00 00                               mov    DWORD PTR [esi+0x114],ebx
  0044c03a: 89 9e 18 01 00 00                               mov    DWORD PTR [esi+0x118],ebx
  0044c040: 89 9e 1c 01 00 00                               mov    DWORD PTR [esi+0x11c],ebx
  0044c046: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044c04d: e8 1e ec 03 00                                  call   0x48ac70
  0044c052: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044c055: 5f                                              pop    edi
  0044c056: 5e                                              pop    esi
  0044c057: 5b                                              pop    ebx
  0044c058: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044c05f: 8b e5                                           mov    esp,ebp
  0044c061: 5d                                              pop    ebp
  0044c062: c3                                              ret

; ===== 0x0044C0B0 ?GetBackpack@Objects@@UAEPAV?$TemplateList@VUnit@@@@XZ =====
  0044c0b0: 8b 81 0c 01 00 00                               mov    eax,DWORD PTR [ecx+0x10c]
  0044c0b6: c3                                              ret

; ===== 0x0044C0C0 ?SetBackpack@Objects@@UAEXPAV?$TemplateList@VUnit@@@@@Z =====
  0044c0c0: 55                                              push   ebp
  0044c0c1: 8b ec                                           mov    ebp,esp
  0044c0c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044c0c6: 89 81 0c 01 00 00                               mov    DWORD PTR [ecx+0x10c],eax
  0044c0cc: 5d                                              pop    ebp
  0044c0cd: c2 04 00                                        ret    0x4

; ===== 0x0044C0D0 ?SetUndead@Objects@@QAEXG@Z =====
  0044c0d0: 55                                              push   ebp
  0044c0d1: 8b ec                                           mov    ebp,esp
  0044c0d3: 66 8b 45 08                                     mov    ax,WORD PTR [ebp+0x8]
  0044c0d7: 66 89 81 0a 01 00 00                            mov    WORD PTR [ecx+0x10a],ax
  0044c0de: 5d                                              pop    ebp
  0044c0df: c2 04 00                                        ret    0x4

; ===== 0x0044C0F0 ?GetUndead@Objects@@QAEGXZ =====
  0044c0f0: 66 8b 81 0a 01 00 00                            mov    ax,WORD PTR [ecx+0x10a]
  0044c0f7: c3                                              ret

; ===== 0x0044C100 ?GetName@Objects@@UAE?AVCString@@G@Z =====
  0044c100: 55                                              push   ebp
  0044c101: 8b ec                                           mov    ebp,esp
  0044c103: 51                                              push   ecx
  0044c104: 56                                              push   esi
  0044c105: 8b f1                                           mov    esi,ecx
  0044c107: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044c10e: e8 4d 00 00 00                                  call   0x44c160
  0044c113: 84 c0                                           test   al,al
  0044c115: 74 24                                           je     0x44c13b
  0044c117: 8b b6 14 01 00 00                               mov    esi,DWORD PTR [esi+0x114]
  0044c11d: 85 f6                                           test   esi,esi
  0044c11f: 75 06                                           jne    0x44c127
  0044c121: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0044c127: 56                                              push   esi
  0044c128: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0044c12b: 8b ce                                           mov    ecx,esi
  0044c12d: e8 32 59 08 00                                  call   0x4d1a64
  0044c132: 8b c6                                           mov    eax,esi
  0044c134: 5e                                              pop    esi
  0044c135: 8b e5                                           mov    esp,ebp
  0044c137: 5d                                              pop    ebp
  0044c138: c2 08 00                                        ret    0x8
  0044c13b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0044c13e: 57                                              push   edi
  0044c13f: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0044c142: 50                                              push   eax
  0044c143: 57                                              push   edi
  0044c144: 8b ce                                           mov    ecx,esi
  0044c146: e8 15 f7 03 00                                  call   0x48b860
  0044c14b: 8b c7                                           mov    eax,edi
  0044c14d: 5f                                              pop    edi
  0044c14e: 5e                                              pop    esi
  0044c14f: 8b e5                                           mov    esp,ebp
  0044c151: 5d                                              pop    ebp
  0044c152: c2 08 00                                        ret    0x8

; ===== 0x0044C160 ?IsNameOverriden@Objects@@QAE_NXZ =====
  0044c160: 8b 91 18 01 00 00                               mov    edx,DWORD PTR [ecx+0x118]
  0044c166: 33 c0                                           xor    eax,eax
  0044c168: 85 d2                                           test   edx,edx
  0044c16a: 0f 95 c0                                        setne  al
  0044c16d: c3                                              ret

; ===== 0x0044C170 ?SetName@Objects@@UAEXVCString@@@Z =====
  0044c170: 55                                              push   ebp
  0044c171: 8b ec                                           mov    ebp,esp
  0044c173: 6a ff                                           push   0xffffffff
  0044c175: 68 e8 66 4d 00                                  push   0x4d66e8
  0044c17a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044c180: 50                                              push   eax
  0044c181: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044c188: 83 ec 08                                        sub    esp,0x8
  0044c18b: 53                                              push   ebx
  0044c18c: 56                                              push   esi
  0044c18d: 57                                              push   edi
  0044c18e: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0044c191: 8d 99 10 01 00 00                               lea    ebx,[ecx+0x110]
  0044c197: 83 c9 ff                                        or     ecx,0xffffffff
  0044c19a: 33 c0                                           xor    eax,eax
  0044c19c: 8b fa                                           mov    edi,edx
  0044c19e: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0044c1a0: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0044c1a3: f7 d1                                           not    ecx
  0044c1a5: 49                                              dec    ecx
  0044c1a6: 85 c0                                           test   eax,eax
  0044c1a8: 8b f9                                           mov    edi,ecx
  0044c1aa: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044c1b1: 89 55 f0                                        mov    DWORD PTR [ebp-0x10],edx
  0044c1b4: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0044c1b7: 74 4d                                           je     0x44c206
  0044c1b9: 3b c2                                           cmp    eax,edx
  0044c1bb: 77 49                                           ja     0x44c206
  0044c1bd: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0044c1c0: 8d 34 01                                        lea    esi,[ecx+eax*1]
  0044c1c3: 3b d6                                           cmp    edx,esi
  0044c1c5: 77 3f                                           ja     0x44c206
  0044c1c7: 2b d0                                           sub    edx,eax
  0044c1c9: 8b f2                                           mov    esi,edx
  0044c1cb: 3b ce                                           cmp    ecx,esi
  0044c1cd: 73 08                                           jae    0x44c1d7
  0044c1cf: 8b cb                                           mov    ecx,ebx
  0044c1d1: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0044c1d7: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0044c1da: 2b c6                                           sub    eax,esi
  0044c1dc: 3b f8                                           cmp    edi,eax
  0044c1de: 73 02                                           jae    0x44c1e2
  0044c1e0: 8b c7                                           mov    eax,edi
  0044c1e2: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0044c1e8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044c1ea: 52                                              push   edx
  0044c1eb: 03 c6                                           add    eax,esi
  0044c1ed: 50                                              push   eax
  0044c1ee: 8b cb                                           mov    ecx,ebx
  0044c1f0: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0044c1f6: 56                                              push   esi
  0044c1f7: 6a 00                                           push   0x0
  0044c1f9: 8b cb                                           mov    ecx,ebx
  0044c1fb: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0044c201: e9 92 00 00 00                                  jmp    0x44c298
  0044c206: 8b cb                                           mov    ecx,ebx
  0044c208: ff 15 44 e5 4d 00                               call   DWORD PTR ds:0x4de544
  0044c20e: 3b c7                                           cmp    eax,edi
  0044c210: 73 08                                           jae    0x44c21a
  0044c212: 8b cb                                           mov    ecx,ebx
  0044c214: ff 15 30 e5 4d 00                               call   DWORD PTR ds:0x4de530
  0044c21a: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0044c21d: 85 c0                                           test   eax,eax
  0044c21f: c7 43 08 00 00 00 00                            mov    DWORD PTR [ebx+0x8],0x0
  0044c226: 74 1b                                           je     0x44c243
  0044c228: 8a 40 ff                                        mov    al,BYTE PTR [eax-0x1]
  0044c22b: 84 c0                                           test   al,al
  0044c22d: 74 14                                           je     0x44c243
  0044c22f: 3c ff                                           cmp    al,0xff
  0044c231: 74 10                                           je     0x44c243
  0044c233: 85 ff                                           test   edi,edi
  0044c235: 75 32                                           jne    0x44c269
  0044c237: 6a 01                                           push   0x1
  0044c239: 8b cb                                           mov    ecx,ebx
  0044c23b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0044c241: eb 55                                           jmp    0x44c298
  0044c243: 85 ff                                           test   edi,edi
  0044c245: 75 0c                                           jne    0x44c253
  0044c247: 6a 01                                           push   0x1
  0044c249: 8b cb                                           mov    ecx,ebx
  0044c24b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0044c251: eb 45                                           jmp    0x44c298
  0044c253: 8b 43 0c                                        mov    eax,DWORD PTR [ebx+0xc]
  0044c256: 83 f8 1f                                        cmp    eax,0x1f
  0044c259: 77 04                                           ja     0x44c25f
  0044c25b: 3b c7                                           cmp    eax,edi
  0044c25d: 73 13                                           jae    0x44c272
  0044c25f: 6a 01                                           push   0x1
  0044c261: 8b cb                                           mov    ecx,ebx
  0044c263: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0044c269: 57                                              push   edi
  0044c26a: 8b cb                                           mov    ecx,ebx
  0044c26c: ff 15 40 e5 4d 00                               call   DWORD PTR ds:0x4de540
  0044c272: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0044c275: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  0044c278: 8b cf                                           mov    ecx,edi
  0044c27a: 8b f8                                           mov    edi,eax
  0044c27c: 8b c1                                           mov    eax,ecx
  0044c27e: c1 e9 02                                        shr    ecx,0x2
  0044c281: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0044c283: 8b c8                                           mov    ecx,eax
  0044c285: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0044c288: 83 e1 03                                        and    ecx,0x3
  0044c28b: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0044c28d: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0044c290: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  0044c293: 03 d8                                           add    ebx,eax
  0044c295: c6 03 00                                        mov    BYTE PTR [ebx],0x0
  0044c298: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0044c29b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044c2a2: e8 99 57 08 00                                  call   0x4d1a40
  0044c2a7: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044c2aa: 5f                                              pop    edi
  0044c2ab: 5e                                              pop    esi
  0044c2ac: 5b                                              pop    ebx
  0044c2ad: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044c2b4: 8b e5                                           mov    esp,ebp
  0044c2b6: 5d                                              pop    ebp
  0044c2b7: c2 04 00                                        ret    0x4

; ===== 0x0044C2C0 ?VaporizeUnit@Objects@@UAEXXZ =====
  0044c2c0: 55                                              push   ebp
  0044c2c1: 8b ec                                           mov    ebp,esp
  0044c2c3: 6a ff                                           push   0xffffffff
  0044c2c5: 68 08 67 4d 00                                  push   0x4d6708
  0044c2ca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044c2d0: 50                                              push   eax
  0044c2d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044c2d8: 83 ec 1c                                        sub    esp,0x1c
  0044c2db: 53                                              push   ebx
  0044c2dc: 56                                              push   esi
  0044c2dd: 8b f1                                           mov    esi,ecx
  0044c2df: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044c2e1: 57                                              push   edi
  0044c2e2: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0044c2e5: 51                                              push   ecx
  0044c2e6: 8b ce                                           mov    ecx,esi
  0044c2e8: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0044c2eb: 33 d2                                           xor    edx,edx
  0044c2ed: 66 8b 50 08                                     mov    dx,WORD PTR [eax+0x8]
  0044c2f1: 52                                              push   edx
  0044c2f2: e8 c9 5b 02 00                                  call   0x471ec0
  0044c2f7: 6a 01                                           push   0x1
  0044c2f9: 8b d8                                           mov    ebx,eax
  0044c2fb: e8 10 5a 02 00                                  call   0x471d10
  0044c300: 83 c4 08                                        add    esp,0x8
  0044c303: 85 c0                                           test   eax,eax
  0044c305: 74 4f                                           je     0x44c356
  0044c307: 8b 3e                                           mov    edi,DWORD PTR [esi]
  0044c309: e8 52 17 ff ff                                  call   0x43da60
  0044c30e: 8b ce                                           mov    ecx,esi
  0044c310: 50                                              push   eax
  0044c311: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0044c314: 50                                              push   eax
  0044c315: ff 57 48                                        call   DWORD PTR [edi+0x48]
  0044c318: 8b 38                                           mov    edi,DWORD PTR [eax]
  0044c31a: 8b ce                                           mov    ecx,esi
  0044c31c: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044c323: e8 d8 f3 03 00                                  call   0x48b700
  0044c328: 50                                              push   eax
  0044c329: 57                                              push   edi
  0044c32a: 68 9c 58 50 00                                  push   0x50589c
  0044c32f: 68 00 01 00 00                                  push   0x100
  0044c334: 6a 01                                           push   0x1
  0044c336: e8 d5 59 02 00                                  call   0x471d10
  0044c33b: 83 c4 04                                        add    esp,0x4
  0044c33e: 50                                              push   eax
  0044c33f: e8 ac 27 08 00                                  call   0x4ceaf0
  0044c344: 83 c4 14                                        add    esp,0x14
  0044c347: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0044c34a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0044c351: e8 ea 56 08 00                                  call   0x4d1a40
  0044c356: 85 db                                           test   ebx,ebx
  0044c358: 74 63                                           je     0x44c3bd
  0044c35a: 8b ce                                           mov    ecx,esi
  0044c35c: e8 9f f3 03 00                                  call   0x48b700
  0044c361: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044c363: 50                                              push   eax
  0044c364: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0044c367: 50                                              push   eax
  0044c368: 8b ce                                           mov    ecx,esi
  0044c36a: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0044c36d: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044c36f: 83 ec 0c                                        sub    esp,0xc
  0044c372: 8b cc                                           mov    ecx,esp
  0044c374: 89 11                                           mov    DWORD PTR [ecx],edx
  0044c376: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044c379: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0044c37c: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0044c37f: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0044c382: 8b cb                                           mov    ecx,ebx
  0044c384: e8 07 4d 06 00                                  call   0x4b1090
  0044c389: 6a 00                                           push   0x0
  0044c38b: 8b ce                                           mov    ecx,esi
  0044c38d: e8 6e f3 03 00                                  call   0x48b700
  0044c392: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044c394: 50                                              push   eax
  0044c395: 6a 14                                           push   0x14
  0044c397: 8d 45 d8                                        lea    eax,[ebp-0x28]
  0044c39a: 50                                              push   eax
  0044c39b: 8b ce                                           mov    ecx,esi
  0044c39d: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0044c3a0: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044c3a2: 83 ec 0c                                        sub    esp,0xc
  0044c3a5: 8b cc                                           mov    ecx,esp
  0044c3a7: 89 11                                           mov    DWORD PTR [ecx],edx
  0044c3a9: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044c3ac: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0044c3af: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0044c3b2: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0044c3b5: e8 46 38 fc ff                                  call   0x40fc00
  0044c3ba: 83 c4 18                                        add    esp,0x18
  0044c3bd: 56                                              push   esi
  0044c3be: e8 6d d3 03 00                                  call   0x489730
  0044c3c3: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044c3c5: 83 c4 04                                        add    esp,0x4
  0044c3c8: 8b ce                                           mov    ecx,esi
  0044c3ca: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0044c3d0: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044c3d3: 5f                                              pop    edi
  0044c3d4: 5e                                              pop    esi
  0044c3d5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044c3dc: 5b                                              pop    ebx
  0044c3dd: 8b e5                                           mov    esp,ebp
  0044c3df: 5d                                              pop    ebp
  0044c3e0: c3                                              ret

; ===== 0x0044C400 ?SetQty@Objects@@QAEXK@Z =====
  0044c400: 55                                              push   ebp
  0044c401: 8b ec                                           mov    ebp,esp
  0044c403: 56                                              push   esi
  0044c404: 8b f1                                           mov    esi,ecx
  0044c406: e8 f5 00 00 00                                  call   0x44c500
  0044c40b: 84 c0                                           test   al,al
  0044c40d: 75 36                                           jne    0x44c445
  0044c40f: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044c411: 6a 00                                           push   0x0
  0044c413: 6a 1b                                           push   0x1b
  0044c415: 8b ce                                           mov    ecx,esi
  0044c417: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0044c41a: 85 c0                                           test   eax,eax
  0044c41c: 7c 19                                           jl     0x44c437
  0044c41e: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044c420: 6a 01                                           push   0x1
  0044c422: 6a 1b                                           push   0x1b
  0044c424: 8b ce                                           mov    ecx,esi
  0044c426: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0044c429: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044c42c: 89 86 04 01 00 00                               mov    DWORD PTR [esi+0x104],eax
  0044c432: 5e                                              pop    esi
  0044c433: 5d                                              pop    ebp
  0044c434: c2 04 00                                        ret    0x4
  0044c437: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044c43a: 89 8e 04 01 00 00                               mov    DWORD PTR [esi+0x104],ecx
  0044c440: 5e                                              pop    esi
  0044c441: 5d                                              pop    ebp
  0044c442: c2 04 00                                        ret    0x4
  0044c445: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0044c448: 89 96 04 01 00 00                               mov    DWORD PTR [esi+0x104],edx
  0044c44e: 5e                                              pop    esi
  0044c44f: 5d                                              pop    ebp
  0044c450: c2 04 00                                        ret    0x4

; ===== 0x0044C460 ?Add@Objects@@QAEXK@Z =====
  0044c460: 55                                              push   ebp
  0044c461: 8b ec                                           mov    ebp,esp
  0044c463: 56                                              push   esi
  0044c464: 8b f1                                           mov    esi,ecx
  0044c466: e8 95 00 00 00                                  call   0x44c500
  0044c46b: 84 c0                                           test   al,al
  0044c46d: 75 2b                                           jne    0x44c49a
  0044c46f: 8b 96 04 01 00 00                               mov    edx,DWORD PTR [esi+0x104]
  0044c475: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044c478: 03 d0                                           add    edx,eax
  0044c47a: 6a 00                                           push   0x0
  0044c47c: 89 96 04 01 00 00                               mov    DWORD PTR [esi+0x104],edx
  0044c482: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044c484: 6a 1b                                           push   0x1b
  0044c486: 8b ce                                           mov    ecx,esi
  0044c488: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0044c48b: 85 c0                                           test   eax,eax
  0044c48d: 7c 0b                                           jl     0x44c49a
  0044c48f: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044c491: 6a 01                                           push   0x1
  0044c493: 6a 1b                                           push   0x1b
  0044c495: 8b ce                                           mov    ecx,esi
  0044c497: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0044c49a: 5e                                              pop    esi
  0044c49b: 5d                                              pop    ebp
  0044c49c: c2 04 00                                        ret    0x4

; ===== 0x0044C510 ?SetUnique@Objects@@QAEXXZ =====
  0044c510: c6 81 08 01 00 00 01                            mov    BYTE PTR [ecx+0x108],0x1
  0044c517: c3                                              ret

; ===== 0x0044C520 ?ViewFlag@Objects@@UAEJKJ@Z =====
  0044c520: 55                                              push   ebp
  0044c521: 8b ec                                           mov    ebp,esp
  0044c523: 56                                              push   esi
  0044c524: 57                                              push   edi
  0044c525: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0044c528: 83 ff 1b                                        cmp    edi,0x1b
  0044c52b: 8b f1                                           mov    esi,ecx
  0044c52d: 75 36                                           jne    0x44c565
  0044c52f: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044c531: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0044c534: 51                                              push   ecx
  0044c535: 6a 00                                           push   0x0
  0044c537: 6a 00                                           push   0x0
  0044c539: 6a 00                                           push   0x0
  0044c53b: 6a 00                                           push   0x0
  0044c53d: 6a 14                                           push   0x14
  0044c53f: 8b ce                                           mov    ecx,esi
  0044c541: c7 45 08 00 00 00 00                            mov    DWORD PTR [ebp+0x8],0x0
  0044c548: ff 50 24                                        call   DWORD PTR [eax+0x24]
  0044c54b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044c54e: 85 c0                                           test   eax,eax
  0044c550: 74 13                                           je     0x44c565
  0044c552: 8b 88 38 01 00 00                               mov    ecx,DWORD PTR [eax+0x138]
  0044c558: 85 c9                                           test   ecx,ecx
  0044c55a: 7d 09                                           jge    0x44c565
  0044c55c: 5f                                              pop    edi
  0044c55d: 83 c8 ff                                        or     eax,0xffffffff
  0044c560: 5e                                              pop    esi
  0044c561: 5d                                              pop    ebp
  0044c562: c2 08 00                                        ret    0x8
  0044c565: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0044c568: 52                                              push   edx
  0044c569: 57                                              push   edi
  0044c56a: 8b ce                                           mov    ecx,esi
  0044c56c: e8 af 91 fe ff                                  call   0x435720
  0044c571: 5f                                              pop    edi
  0044c572: 5e                                              pop    esi
  0044c573: 5d                                              pop    ebp
  0044c574: c2 08 00                                        ret    0x8

; ===== 0x0044C590 ??0ObjectStructure@@QAE@XZ =====
  0044c590: 55                                              push   ebp
  0044c591: 8b ec                                           mov    ebp,esp
  0044c593: 6a ff                                           push   0xffffffff
  0044c595: 68 7f 67 4d 00                                  push   0x4d677f
  0044c59a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044c5a0: 50                                              push   eax
  0044c5a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044c5a8: 83 ec 10                                        sub    esp,0x10
  0044c5ab: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  0044c5ae: 53                                              push   ebx
  0044c5af: 56                                              push   esi
  0044c5b0: 8b f1                                           mov    esi,ecx
  0044c5b2: 57                                              push   edi
  0044c5b3: 8d 7e 28                                        lea    edi,[esi+0x28]
  0044c5b6: 8d 4f 20                                        lea    ecx,[edi+0x20]
  0044c5b9: 33 db                                           xor    ebx,ebx
  0044c5bb: c7 06 4c ee 4d 00                               mov    DWORD PTR [esi],0x4dee4c
  0044c5c1: 53                                              push   ebx
  0044c5c2: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  0044c5c5: 89 7d e4                                        mov    DWORD PTR [ebp-0x1c],edi
  0044c5c8: 88 01                                           mov    BYTE PTR [ecx],al
  0044c5ca: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0044c5d0: 8d 4f 40                                        lea    ecx,[edi+0x40]
  0044c5d3: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0044c5d6: 89 4d ec                                        mov    DWORD PTR [ebp-0x14],ecx
  0044c5d9: e8 e2 d0 fb ff                                  call   0x4096c0
  0044c5de: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0044c5e1: 83 c1 70                                        add    ecx,0x70
  0044c5e4: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0044c5e8: e8 d3 d0 fb ff                                  call   0x4096c0
  0044c5ed: 8d 8f 40 01 00 00                               lea    ecx,[edi+0x140]
  0044c5f3: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0044c5f7: e8 62 54 08 00                                  call   0x4d1a5e
  0044c5fc: 8d 8f 44 01 00 00                               lea    ecx,[edi+0x144]
  0044c602: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0044c606: e8 65 0f 00 00                                  call   0x44d570
  0044c60b: 8d 97 a0 01 00 00                               lea    edx,[edi+0x1a0]
  0044c611: 52                                              push   edx
  0044c612: c7 87 98 01 00 00 8c e5 4d 00                   mov    DWORD PTR [edi+0x198],0x4de58c
  0044c61c: c7 87 9c 01 00 00 ff ff ff ff                   mov    DWORD PTR [edi+0x19c],0xffffffff
  0044c626: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044c62c: 89 9f bc 01 00 00                               mov    DWORD PTR [edi+0x1bc],ebx
  0044c632: 89 9f c0 01 00 00                               mov    DWORD PTR [edi+0x1c0],ebx
  0044c638: 89 9f c4 01 00 00                               mov    DWORD PTR [edi+0x1c4],ebx
  0044c63e: 89 9f c8 01 00 00                               mov    DWORD PTR [edi+0x1c8],ebx
  0044c644: c7 87 98 01 00 00 b4 ee 4d 00                   mov    DWORD PTR [edi+0x198],0x4deeb4
  0044c64e: 89 9f d8 01 00 00                               mov    DWORD PTR [edi+0x1d8],ebx
  0044c654: c6 87 cc 01 00 00 08                            mov    BYTE PTR [edi+0x1cc],0x8
  0044c65b: 89 9f d0 01 00 00                               mov    DWORD PTR [edi+0x1d0],ebx
  0044c661: 8d 8f dc 01 00 00                               lea    ecx,[edi+0x1dc]
  0044c667: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0044c66b: e8 80 0f 00 00                                  call   0x44d5f0
  0044c670: 8d 46 10                                        lea    eax,[esi+0x10]
  0044c673: 83 cf ff                                        or     edi,0xffffffff
  0044c676: 50                                              push   eax
  0044c677: c7 45 fc 06 00 00 00                            mov    DWORD PTR [ebp-0x4],0x6
  0044c67e: c7 46 08 8c e5 4d 00                            mov    DWORD PTR [esi+0x8],0x4de58c
  0044c685: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0044c688: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044c68e: 8d 8e 68 01 00 00                               lea    ecx,[esi+0x168]
  0044c694: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0044c698: c7 06 f4 ed 4d 00                               mov    DWORD PTR [esi],0x4dedf4
  0044c69e: c7 46 08 e4 ed 4d 00                            mov    DWORD PTR [esi+0x8],0x4dede4
  0044c6a5: 88 5e 30                                        mov    BYTE PTR [esi+0x30],bl
  0044c6a8: 66 89 5e 2c                                     mov    WORD PTR [esi+0x2c],bx
  0044c6ac: 88 5e 44                                        mov    BYTE PTR [esi+0x44],bl
  0044c6af: 88 5e 45                                        mov    BYTE PTR [esi+0x45],bl
  0044c6b2: 66 c7 46 2e ff ff                               mov    WORD PTR [esi+0x2e],0xffff
  0044c6b8: 89 9e 50 01 00 00                               mov    DWORD PTR [esi+0x150],ebx
  0044c6be: e8 dd 53 08 00                                  call   0x4d1aa0
  0044c6c3: 33 c9                                           xor    ecx,ecx
  0044c6c5: 8d 56 58                                        lea    edx,[esi+0x58]
  0044c6c8: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0044c6cb: 66 89 9e 4c 01 00 00                            mov    WORD PTR [esi+0x14c],bx
  0044c6d2: 66 89 9e 48 01 00 00                            mov    WORD PTR [esi+0x148],bx
  0044c6d9: 66 89 9e 4a 01 00 00                            mov    WORD PTR [esi+0x14a],bx
  0044c6e0: 88 5e 46                                        mov    BYTE PTR [esi+0x46],bl
  0044c6e3: 89 9e 60 01 00 00                               mov    DWORD PTR [esi+0x160],ebx
  0044c6e9: 66 89 9e 64 01 00 00                            mov    WORD PTR [esi+0x164],bx
  0044c6f0: 89 0a                                           mov    DWORD PTR [edx],ecx
  0044c6f2: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0044c6f5: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0044c6f8: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  0044c6fb: 89 9e bc 01 00 00                               mov    DWORD PTR [esi+0x1bc],ebx
  0044c701: 8d 86 bc 01 00 00                               lea    eax,[esi+0x1bc]
  0044c707: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  0044c70a: 89 7e 38                                        mov    DWORD PTR [esi+0x38],edi
  0044c70d: 89 8e 48 02 00 00                               mov    DWORD PTR [esi+0x248],ecx
  0044c713: 89 8e 4c 02 00 00                               mov    DWORD PTR [esi+0x24c],ecx
  0044c719: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044c71c: 5f                                              pop    edi
  0044c71d: 8b c6                                           mov    eax,esi
  0044c71f: 5e                                              pop    esi
  0044c720: 5b                                              pop    ebx
  0044c721: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044c728: 8b e5                                           mov    esp,ebp
  0044c72a: 5d                                              pop    ebp
  0044c72b: c3                                              ret

; ===== 0x0044C8E0 ??1ObjectStructure@@UAE@XZ =====
  0044c8e0: 55                                              push   ebp
  0044c8e1: 8b ec                                           mov    ebp,esp
  0044c8e3: 6a ff                                           push   0xffffffff
  0044c8e5: 68 ac 68 4d 00                                  push   0x4d68ac
  0044c8ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044c8f0: 50                                              push   eax
  0044c8f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044c8f8: 83 ec 08                                        sub    esp,0x8
  0044c8fb: 53                                              push   ebx
  0044c8fc: 56                                              push   esi
  0044c8fd: 57                                              push   edi
  0044c8fe: 8b f9                                           mov    edi,ecx
  0044c900: c7 47 f8 f4 ed 4d 00                            mov    DWORD PTR [edi-0x8],0x4dedf4
  0044c907: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0044c90a: c7 07 e4 ed 4d 00                               mov    DWORD PTR [edi],0x4dede4
  0044c910: 8b 87 dc 01 00 00                               mov    eax,DWORD PTR [edi+0x1dc]
  0044c916: 8d b7 b8 01 00 00                               lea    esi,[edi+0x1b8]
  0044c91c: 33 db                                           xor    ebx,ebx
  0044c91e: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  0044c925: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044c928: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0044c92b: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044c92f: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0044c932: 74 0a                                           je     0x44c93e
  0044c934: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0044c937: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044c939: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0044c93c: eb 07                                           jmp    0x44c945
  0044c93e: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0044c945: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  0044c948: 74 09                                           je     0x44c953
  0044c94a: 8b ce                                           mov    ecx,esi
  0044c94c: e8 3f 0f 00 00                                  call   0x44d890
  0044c951: eb dc                                           jmp    0x44c92f
  0044c953: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0044c956: 74 04                                           je     0x44c95c
  0044c958: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0044c95c: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0044c95f: 8b 87 20 02 00 00                               mov    eax,DWORD PTR [edi+0x220]
  0044c965: 8d b7 fc 01 00 00                               lea    esi,[edi+0x1fc]
  0044c96b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044c96e: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0044c971: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044c975: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0044c978: 74 0a                                           je     0x44c984
  0044c97a: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0044c97d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044c97f: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0044c982: eb 07                                           jmp    0x44c98b
  0044c984: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0044c98b: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  0044c98e: 74 09                                           je     0x44c999
  0044c990: 8b ce                                           mov    ecx,esi
  0044c992: e8 b9 10 00 00                                  call   0x44da50
  0044c997: eb dc                                           jmp    0x44c975
  0044c999: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0044c99c: 74 04                                           je     0x44c9a2
  0044c99e: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0044c9a2: 8d 47 20                                        lea    eax,[edi+0x20]
  0044c9a5: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0044c9a8: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0044c9ab: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044c9ad: 3b c3                                           cmp    eax,ebx
  0044c9af: 74 09                                           je     0x44c9ba
  0044c9b1: 50                                              push   eax
  0044c9b2: e8 a9 56 ff ff                                  call   0x442060
  0044c9b7: 83 c4 04                                        add    esp,0x4
  0044c9ba: 8b 1d e0 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0e0
  0044c9c0: 8d 77 f8                                        lea    esi,[edi-0x8]
  0044c9c3: 8b c6                                           mov    eax,esi
  0044c9c5: f7 d8                                           neg    eax
  0044c9c7: 1b c0                                           sbb    eax,eax
  0044c9c9: 23 c7                                           and    eax,edi
  0044c9cb: c7 00 8c e5 4d 00                               mov    DWORD PTR [eax],0x4de58c
  0044c9d1: 83 c0 08                                        add    eax,0x8
  0044c9d4: 50                                              push   eax
  0044c9d5: ff d3                                           call   ebx
  0044c9d7: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0044c9da: f7 de                                           neg    esi
  0044c9dc: 1b f6                                           sbb    esi,esi
  0044c9de: 23 f2                                           and    esi,edx
  0044c9e0: 8b fe                                           mov    edi,esi
  0044c9e2: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0044c9e5: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0044c9ec: 8d b7 dc 01 00 00                               lea    esi,[edi+0x1dc]
  0044c9f2: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0044c9f5: c7 06 c4 ee 4d 00                               mov    DWORD PTR [esi],0x4deec4
  0044c9fb: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  0044c9fe: 8b ce                                           mov    ecx,esi
  0044ca00: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0044ca04: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044ca07: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044ca0e: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044ca12: e8 19 0c 00 00                                  call   0x44d630
  0044ca17: 85 c0                                           test   eax,eax
  0044ca19: 74 12                                           je     0x44ca2d
  0044ca1b: 8b ce                                           mov    ecx,esi
  0044ca1d: e8 3e 0f 00 00                                  call   0x44d960
  0044ca22: 8b ce                                           mov    ecx,esi
  0044ca24: e8 07 0c 00 00                                  call   0x44d630
  0044ca29: 85 c0                                           test   eax,eax
  0044ca2b: 75 ee                                           jne    0x44ca1b
  0044ca2d: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0044ca33: 83 c6 08                                        add    esi,0x8
  0044ca36: 56                                              push   esi
  0044ca37: ff d3                                           call   ebx
  0044ca39: 8d b7 98 01 00 00                               lea    esi,[edi+0x198]
  0044ca3f: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0044ca42: c7 06 b4 ee 4d 00                               mov    DWORD PTR [esi],0x4deeb4
  0044ca48: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  0044ca4b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0044ca4e: 8b ce                                           mov    ecx,esi
  0044ca50: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0044ca54: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044ca5b: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044ca5f: e8 4c 0b 00 00                                  call   0x44d5b0
  0044ca64: 85 c0                                           test   eax,eax
  0044ca66: 74 12                                           je     0x44ca7a
  0044ca68: 8b ce                                           mov    ecx,esi
  0044ca6a: e8 31 0d 00 00                                  call   0x44d7a0
  0044ca6f: 8b ce                                           mov    ecx,esi
  0044ca71: e8 3a 0b 00 00                                  call   0x44d5b0
  0044ca76: 85 c0                                           test   eax,eax
  0044ca78: 75 ee                                           jne    0x44ca68
  0044ca7a: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0044ca80: 83 c6 08                                        add    esi,0x8
  0044ca83: 56                                              push   esi
  0044ca84: ff d3                                           call   ebx
  0044ca86: 8d 8f 44 01 00 00                               lea    ecx,[edi+0x144]
  0044ca8c: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0044ca90: e8 3b ae fe ff                                  call   0x4378d0
  0044ca95: 8d 8f 40 01 00 00                               lea    ecx,[edi+0x140]
  0044ca9b: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0044ca9f: e8 9c 4f 08 00                                  call   0x4d1a40
  0044caa4: 8d 77 40                                        lea    esi,[edi+0x40]
  0044caa7: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0044caaa: 8d 4e 70                                        lea    ecx,[esi+0x70]
  0044caad: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  0044cab1: e8 aa cc fb ff                                  call   0x409760
  0044cab6: 8b ce                                           mov    ecx,esi
  0044cab8: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0044cabc: e8 9f cc fb ff                                  call   0x409760
  0044cac1: 8b 47 24                                        mov    eax,DWORD PTR [edi+0x24]
  0044cac4: 33 f6                                           xor    esi,esi
  0044cac6: 3b c6                                           cmp    eax,esi
  0044cac8: 74 1c                                           je     0x44cae6
  0044caca: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0044cacd: 8a 01                                           mov    al,BYTE PTR [ecx]
  0044cacf: 84 c0                                           test   al,al
  0044cad1: 74 0a                                           je     0x44cadd
  0044cad3: 3c ff                                           cmp    al,0xff
  0044cad5: 74 06                                           je     0x44cadd
  0044cad7: fe c8                                           dec    al
  0044cad9: 88 01                                           mov    BYTE PTR [ecx],al
  0044cadb: eb 09                                           jmp    0x44cae6
  0044cadd: 51                                              push   ecx
  0044cade: e8 7d 55 ff ff                                  call   0x442060
  0044cae3: 83 c4 04                                        add    esp,0x4
  0044cae6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044cae9: 89 77 24                                        mov    DWORD PTR [edi+0x24],esi
  0044caec: 89 77 28                                        mov    DWORD PTR [edi+0x28],esi
  0044caef: 89 77 2c                                        mov    DWORD PTR [edi+0x2c],esi
  0044caf2: 5f                                              pop    edi
  0044caf3: 5e                                              pop    esi
  0044caf4: 5b                                              pop    ebx
  0044caf5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044cafc: 8b e5                                           mov    esp,ebp
  0044cafe: 5d                                              pop    ebp
  0044caff: c3                                              ret

; ===== 0x0044CB00 ?OnInitialise@ObjectStructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044cb00: 55                                              push   ebp
  0044cb01: 8b ec                                           mov    ebp,esp
  0044cb03: 56                                              push   esi
  0044cb04: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0044cb07: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044cb09: 57                                              push   edi
  0044cb0a: 8b f9                                           mov    edi,ecx
  0044cb0c: 8b 8f 60 01 00 00                               mov    ecx,DWORD PTR [edi+0x160]
  0044cb12: 51                                              push   ecx
  0044cb13: 6a 1b                                           push   0x1b
  0044cb15: 8b ce                                           mov    ecx,esi
  0044cb17: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0044cb1a: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044cb1c: 33 c0                                           xor    eax,eax
  0044cb1e: 66 8b 47 2c                                     mov    ax,WORD PTR [edi+0x2c]
  0044cb22: 8b ce                                           mov    ecx,esi
  0044cb24: 50                                              push   eax
  0044cb25: ff 52 30                                        call   DWORD PTR [edx+0x30]
  0044cb28: 33 c9                                           xor    ecx,ecx
  0044cb2a: 8a 4f 44                                        mov    cl,BYTE PTR [edi+0x44]
  0044cb2d: 51                                              push   ecx
  0044cb2e: 8b ce                                           mov    ecx,esi
  0044cb30: e8 5b 0b 04 00                                  call   0x48d690
  0044cb35: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044cb37: 33 c0                                           xor    eax,eax
  0044cb39: 8a 47 30                                        mov    al,BYTE PTR [edi+0x30]
  0044cb3c: 8b ce                                           mov    ecx,esi
  0044cb3e: 50                                              push   eax
  0044cb3f: 6a 0e                                           push   0xe
  0044cb41: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0044cb44: 8a 47 46                                        mov    al,BYTE PTR [edi+0x46]
  0044cb47: 84 c0                                           test   al,al
  0044cb49: 75 09                                           jne    0x44cb54
  0044cb4b: 83 bf 60 01 00 00 01                            cmp    DWORD PTR [edi+0x160],0x1
  0044cb52: 7e 07                                           jle    0x44cb5b
  0044cb54: 8b ce                                           mov    ecx,esi
  0044cb56: e8 b5 f9 ff ff                                  call   0x44c510
  0044cb5b: 5f                                              pop    edi
  0044cb5c: 5e                                              pop    esi
  0044cb5d: 5d                                              pop    ebp
  0044cb5e: c2 14 00                                        ret    0x14

; ===== 0x0044CB70 ?OnGetUnitStructure@ObjectStructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044cb70: 55                                              push   ebp
  0044cb71: 8b ec                                           mov    ebp,esp
  0044cb73: 85 c9                                           test   ecx,ecx
  0044cb75: 74 0c                                           je     0x44cb83
  0044cb77: 8d 41 28                                        lea    eax,[ecx+0x28]
  0044cb7a: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  0044cb7d: 89 01                                           mov    DWORD PTR [ecx],eax
  0044cb7f: 5d                                              pop    ebp
  0044cb80: c2 14 00                                        ret    0x14
  0044cb83: 8b 55 18                                        mov    edx,DWORD PTR [ebp+0x18]
  0044cb86: 33 c0                                           xor    eax,eax
  0044cb88: 89 02                                           mov    DWORD PTR [edx],eax
  0044cb8a: 5d                                              pop    ebp
  0044cb8b: c2 14 00                                        ret    0x14

; ===== 0x0044D210 ?OnNoMoreShots@ObjectStructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044d210: 55                                              push   ebp
  0044d211: 8b ec                                           mov    ebp,esp
  0044d213: 83 ec 1c                                        sub    esp,0x1c
  0044d216: 8b 81 c0 01 00 00                               mov    eax,DWORD PTR [ecx+0x1c0]
  0044d21c: 53                                              push   ebx
  0044d21d: 56                                              push   esi
  0044d21e: 8d b1 c0 01 00 00                               lea    esi,[ecx+0x1c0]
  0044d224: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0044d227: 57                                              push   edi
  0044d228: 8b ce                                           mov    ecx,esi
  0044d22a: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0044d22d: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  0044d230: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  0044d233: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0044d236: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044d23d: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044d241: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0044d244: 85 c0                                           test   eax,eax
  0044d246: 74 0a                                           je     0x44d252
  0044d248: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0044d24b: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044d24d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044d250: eb 07                                           jmp    0x44d259
  0044d252: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0044d259: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044d25c: 85 c0                                           test   eax,eax
  0044d25e: 74 59                                           je     0x44d2b9
  0044d260: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0044d263: 8b 91 e0 01 00 00                               mov    edx,DWORD PTR [ecx+0x1e0]
  0044d269: 8b 7a 08                                        mov    edi,DWORD PTR [edx+0x8]
  0044d26c: 66 83 7f 02 0b                                  cmp    WORD PTR [edi+0x2],0xb
  0044d271: 75 ce                                           jne    0x44d241
  0044d273: 85 db                                           test   ebx,ebx
  0044d275: 75 0b                                           jne    0x44d282
  0044d277: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044d27a: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0044d27c: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0044d27f: 52                                              push   edx
  0044d280: eb 08                                           jmp    0x44d28a
  0044d282: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0044d284: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0044d287: 51                                              push   ecx
  0044d288: 8b cb                                           mov    ecx,ebx
  0044d28a: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0044d28d: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0044d28f: 83 ec 0c                                        sub    esp,0xc
  0044d292: 8b d4                                           mov    edx,esp
  0044d294: 89 0a                                           mov    DWORD PTR [edx],ecx
  0044d296: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044d299: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0044d29c: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0044d29f: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044d2a2: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0044d2a5: 33 d2                                           xor    edx,edx
  0044d2a7: 66 8b 17                                        mov    dx,WORD PTR [edi]
  0044d2aa: 53                                              push   ebx
  0044d2ab: 6a 00                                           push   0x0
  0044d2ad: 51                                              push   ecx
  0044d2ae: 52                                              push   edx
  0044d2af: e8 ac 42 01 00                                  call   0x461560
  0044d2b4: 83 c4 1c                                        add    esp,0x1c
  0044d2b7: eb 88                                           jmp    0x44d241
  0044d2b9: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0044d2bc: 85 c0                                           test   eax,eax
  0044d2be: 74 04                                           je     0x44d2c4
  0044d2c0: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0044d2c4: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044d2cb: 8b 06                                           mov    eax,DWORD PTR [esi]
  0044d2cd: 8b ce                                           mov    ecx,esi
  0044d2cf: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0044d2d2: 5f                                              pop    edi
  0044d2d3: 5e                                              pop    esi
  0044d2d4: 5b                                              pop    ebx
  0044d2d5: 8b e5                                           mov    esp,ebp
  0044d2d7: 5d                                              pop    ebp
  0044d2d8: c2 14 00                                        ret    0x14

; ===== 0x0044D400 ?OnEquip@ObjectStructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044d400: 55                                              push   ebp
  0044d401: 8b ec                                           mov    ebp,esp
  0044d403: 51                                              push   ecx
  0044d404: 8b 81 04 02 00 00                               mov    eax,DWORD PTR [ecx+0x204]
  0044d40a: 53                                              push   ebx
  0044d40b: 56                                              push   esi
  0044d40c: 57                                              push   edi
  0044d40d: 8d b9 04 02 00 00                               lea    edi,[ecx+0x204]
  0044d413: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0044d416: 8b cf                                           mov    ecx,edi
  0044d418: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0044d41b: 8b 4f 24                                        mov    ecx,DWORD PTR [edi+0x24]
  0044d41e: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  0044d421: 89 4f 20                                        mov    DWORD PTR [edi+0x20],ecx
  0044d424: c7 47 40 00 00 00 00                            mov    DWORD PTR [edi+0x40],0x0
  0044d42b: c6 47 34 08                                     mov    BYTE PTR [edi+0x34],0x8
  0044d42f: 8b 47 40                                        mov    eax,DWORD PTR [edi+0x40]
  0044d432: 85 c0                                           test   eax,eax
  0044d434: 74 0a                                           je     0x44d440
  0044d436: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  0044d439: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044d43b: 89 47 20                                        mov    DWORD PTR [edi+0x20],eax
  0044d43e: eb 07                                           jmp    0x44d447
  0044d440: c7 47 40 01 00 00 00                            mov    DWORD PTR [edi+0x40],0x1
  0044d447: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  0044d44a: 85 c0                                           test   eax,eax
  0044d44c: 74 67                                           je     0x44d4b5
  0044d44e: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0044d451: 8b 91 24 02 00 00                               mov    edx,DWORD PTR [ecx+0x224]
  0044d457: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  0044d45a: 8b cb                                           mov    ecx,ebx
  0044d45c: e8 cf 0d 04 00                                  call   0x48e230
  0044d461: 8b 4e 7c                                        mov    ecx,DWORD PTR [esi+0x7c]
  0044d464: 25 ff ff 00 00                                  and    eax,0xffff
  0044d469: 3b c1                                           cmp    eax,ecx
  0044d46b: 7c c2                                           jl     0x44d42f
  0044d46d: 8b cb                                           mov    ecx,ebx
  0044d46f: e8 fc 0d 04 00                                  call   0x48e270
  0044d474: 8b 4e 78                                        mov    ecx,DWORD PTR [esi+0x78]
  0044d477: 25 ff ff 00 00                                  and    eax,0xffff
  0044d47c: 3b c1                                           cmp    eax,ecx
  0044d47e: 7c af                                           jl     0x44d42f
  0044d480: 6a 00                                           push   0x0
  0044d482: 6a 00                                           push   0x0
  0044d484: 6a 00                                           push   0x0
  0044d486: 6a 00                                           push   0x0
  0044d488: 6a 00                                           push   0x0
  0044d48a: 6a 00                                           push   0x0
  0044d48c: 6a 00                                           push   0x0
  0044d48e: 6a 00                                           push   0x0
  0044d490: 53                                              push   ebx
  0044d491: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0044d494: e8 b7 ee fb ff                                  call   0x40c350
  0044d499: e8 dc 48 08 00                                  call   0x4d1d7a
  0044d49e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0044d4a1: 50                                              push   eax
  0044d4a2: 33 c0                                           xor    eax,eax
  0044d4a4: 66 8b 06                                        mov    ax,WORD PTR [esi]
  0044d4a7: 50                                              push   eax
  0044d4a8: 51                                              push   ecx
  0044d4a9: 8b cb                                           mov    ecx,ebx
  0044d4ab: e8 80 0a 04 00                                  call   0x48df30
  0044d4b0: e9 7a ff ff ff                                  jmp    0x44d42f
  0044d4b5: 8b 47 40                                        mov    eax,DWORD PTR [edi+0x40]
  0044d4b8: 85 c0                                           test   eax,eax
  0044d4ba: 74 04                                           je     0x44d4c0
  0044d4bc: c6 47 34 07                                     mov    BYTE PTR [edi+0x34],0x7
  0044d4c0: c7 47 40 00 00 00 00                            mov    DWORD PTR [edi+0x40],0x0
  0044d4c7: 8b 17                                           mov    edx,DWORD PTR [edi]
  0044d4c9: 8b cf                                           mov    ecx,edi
  0044d4cb: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0044d4ce: 5f                                              pop    edi
  0044d4cf: 5e                                              pop    esi
  0044d4d0: 5b                                              pop    ebx
  0044d4d1: 8b e5                                           mov    esp,ebp
  0044d4d3: 5d                                              pop    ebp
  0044d4d4: c2 14 00                                        ret    0x14

; ===== 0x0044D4E0 ?OnUnequip@ObjectStructure@@UAEXPAVUnit@@00PAX1@Z =====
  0044d4e0: 55                                              push   ebp
  0044d4e1: 8b ec                                           mov    ebp,esp
  0044d4e3: 53                                              push   ebx
  0044d4e4: 56                                              push   esi
  0044d4e5: 57                                              push   edi
  0044d4e6: 8b f9                                           mov    edi,ecx
  0044d4e8: 8b 87 04 02 00 00                               mov    eax,DWORD PTR [edi+0x204]
  0044d4ee: 8d b7 04 02 00 00                               lea    esi,[edi+0x204]
  0044d4f4: 8b ce                                           mov    ecx,esi
  0044d4f6: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0044d4f9: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  0044d4fc: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  0044d4ff: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0044d502: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044d509: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044d50d: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0044d510: 85 c0                                           test   eax,eax
  0044d512: 74 0a                                           je     0x44d51e
  0044d514: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0044d517: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044d519: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044d51c: eb 07                                           jmp    0x44d525
  0044d51e: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0044d525: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044d528: 85 c0                                           test   eax,eax
  0044d52a: 74 16                                           je     0x44d542
  0044d52c: 8b 8f 24 02 00 00                               mov    ecx,DWORD PTR [edi+0x224]
  0044d532: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0044d535: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0044d538: 50                                              push   eax
  0044d539: 8b cb                                           mov    ecx,ebx
  0044d53b: e8 b0 05 04 00                                  call   0x48daf0
  0044d540: eb cb                                           jmp    0x44d50d
  0044d542: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0044d545: 85 c0                                           test   eax,eax
  0044d547: 74 04                                           je     0x44d54d
  0044d549: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0044d54d: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044d554: 8b 16                                           mov    edx,DWORD PTR [esi]
  0044d556: 8b ce                                           mov    ecx,esi
  0044d558: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0044d55b: 5f                                              pop    edi
  0044d55c: 5e                                              pop    esi
  0044d55d: 5b                                              pop    ebx
  0044d55e: 5d                                              pop    ebp
  0044d55f: c2 14 00                                        ret    0x14

; ===== 0x0045FF80 ?Register@Skills@@SAXPBDKHP6AHKPAVUnit@@11PAX2PAVUSER_SKILL@@@ZPAU_SKILL_ATTRIBUTES@@HP6AX13K@Z@Z =====
  0045ff80: 55                                              push   ebp
  0045ff81: 8b ec                                           mov    ebp,esp
  0045ff83: 6a 54                                           push   0x54
  0045ff85: e8 66 20 fe ff                                  call   0x441ff0
  0045ff8a: 33 d2                                           xor    edx,edx
  0045ff8c: 83 c4 04                                        add    esp,0x4
  0045ff8f: 3b c2                                           cmp    eax,edx
  0045ff91: 74 05                                           je     0x45ff98
  0045ff93: 88 50 18                                        mov    BYTE PTR [eax+0x18],dl
  0045ff96: 8b d0                                           mov    edx,eax
  0045ff98: 83 c9 ff                                        or     ecx,0xffffffff
  0045ff9b: 53                                              push   ebx
  0045ff9c: 56                                              push   esi
  0045ff9d: 57                                              push   edi
  0045ff9e: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0045ffa1: 33 c0                                           xor    eax,eax
  0045ffa3: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0045ffa5: f7 d1                                           not    ecx
  0045ffa7: 2b f9                                           sub    edi,ecx
  0045ffa9: 8b c1                                           mov    eax,ecx
  0045ffab: c1 e9 02                                        shr    ecx,0x2
  0045ffae: 8d 5a 18                                        lea    ebx,[edx+0x18]
  0045ffb1: 8b f7                                           mov    esi,edi
  0045ffb3: 8b fb                                           mov    edi,ebx
  0045ffb5: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0045ffb7: 8b c8                                           mov    ecx,eax
  0045ffb9: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  0045ffbc: 83 e1 03                                        and    ecx,0x3
  0045ffbf: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0045ffc1: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0045ffc4: 89 0a                                           mov    DWORD PTR [edx],ecx
  0045ffc6: 8b 4d 20                                        mov    ecx,DWORD PTR [ebp+0x20]
  0045ffc9: 89 4a 10                                        mov    DWORD PTR [edx+0x10],ecx
  0045ffcc: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  0045ffcf: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045ffd2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0045ffd5: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0045ffd8: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045ffdb: 52                                              push   edx
  0045ffdc: 89 4a 14                                        mov    DWORD PTR [edx+0x14],ecx
  0045ffdf: 50                                              push   eax
  0045ffe0: b9 40 4d 51 00                                  mov    ecx,0x514d40
  0045ffe5: 89 42 0c                                        mov    DWORD PTR [edx+0xc],eax
  0045ffe8: e8 37 1b 07 00                                  call   0x4d1b24
  0045ffed: 5f                                              pop    edi
  0045ffee: 5e                                              pop    esi
  0045ffef: 5b                                              pop    ebx
  0045fff0: 5d                                              pop    ebp
  0045fff1: c3                                              ret

; ===== 0x00460000 ?ExecuteSkill@Skills@@SAHHHPAVUnit@@00PAX1PAVUSER_SKILL@@@Z =====
  00460000: 55                                              push   ebp
  00460001: 8b ec                                           mov    ebp,esp
  00460003: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00460006: 3b 0d 48 4d 51 00                               cmp    ecx,DWORD PTR ds:0x514d48
  0046000c: b8 02 00 00 00                                  mov    eax,0x2
  00460011: 7d 2e                                           jge    0x460041
  00460013: 8b 15 44 4d 51 00                               mov    edx,DWORD PTR ds:0x514d44
  00460019: 8b 0c 8a                                        mov    ecx,DWORD PTR [edx+ecx*4]
  0046001c: 85 c9                                           test   ecx,ecx
  0046001e: 74 21                                           je     0x460041
  00460020: 8b 45 24                                        mov    eax,DWORD PTR [ebp+0x24]
  00460023: 8b 55 20                                        mov    edx,DWORD PTR [ebp+0x20]
  00460026: 50                                              push   eax
  00460027: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  0046002a: 52                                              push   edx
  0046002b: 8b 55 18                                        mov    edx,DWORD PTR [ebp+0x18]
  0046002e: 50                                              push   eax
  0046002f: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  00460032: 52                                              push   edx
  00460033: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00460036: 50                                              push   eax
  00460037: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0046003a: 52                                              push   edx
  0046003b: 50                                              push   eax
  0046003c: ff 11                                           call   DWORD PTR [ecx]
  0046003e: 83 c4 1c                                        add    esp,0x1c
  00460041: 5d                                              pop    ebp
  00460042: c3                                              ret

; ===== 0x00460050 ?IsSkill@Skills@@SAHHPAH@Z =====
  00460050: 55                                              push   ebp
  00460051: 8b ec                                           mov    ebp,esp
  00460053: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00460056: 3b 05 48 4d 51 00                               cmp    eax,DWORD PTR ds:0x514d48
  0046005c: 7d 20                                           jge    0x46007e
  0046005e: 8b 0d 44 4d 51 00                               mov    ecx,DWORD PTR ds:0x514d44
  00460064: 8b 04 81                                        mov    eax,DWORD PTR [ecx+eax*4]
  00460067: 85 c0                                           test   eax,eax
  00460069: 74 13                                           je     0x46007e
  0046006b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0046006e: 85 c9                                           test   ecx,ecx
  00460070: 74 0c                                           je     0x46007e
  00460072: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  00460075: 89 11                                           mov    DWORD PTR [ecx],edx
  00460077: b8 01 00 00 00                                  mov    eax,0x1
  0046007c: 5d                                              pop    ebp
  0046007d: c3                                              ret
  0046007e: 33 c0                                           xor    eax,eax
  00460080: 5d                                              pop    ebp
  00460081: c3                                              ret

; ===== 0x00460090 ?IsSkillLearnable@Skills@@SAHHPAVUnit@@AAVCString@@@Z =====
  00460090: 55                                              push   ebp
  00460091: 8b ec                                           mov    ebp,esp
  00460093: 81 ec 00 08 00 00                               sub    esp,0x800
  00460099: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0046009c: 3b 05 48 4d 51 00                               cmp    eax,DWORD PTR ds:0x514d48
  004600a2: 53                                              push   ebx
  004600a3: 56                                              push   esi
  004600a4: 57                                              push   edi
  004600a5: 0f 8d cd 05 00 00                               jge    0x460678
  004600ab: 8b 0d 44 4d 51 00                               mov    ecx,DWORD PTR ds:0x514d44
  004600b1: 8b 04 81                                        mov    eax,DWORD PTR [ecx+eax*4]
  004600b4: 85 c0                                           test   eax,eax
  004600b6: 0f 84 bc 05 00 00                               je     0x460678
  004600bc: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004600bf: 8b 16                                           mov    edx,DWORD PTR [esi]
  004600c1: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  004600c4: 68 58 13 51 00                                  push   0x511358
  004600c9: 8b ce                                           mov    ecx,esi
  004600cb: c6 85 00 f8 ff ff 00                            mov    BYTE PTR [ebp-0x800],0x0
  004600d2: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004600d8: 50                                              push   eax
  004600d9: 68 6d 1c 00 00                                  push   0x1c6d
  004600de: e8 0d d9 fd ff                                  call   0x43d9f0
  004600e3: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004600e6: 83 c4 0c                                        add    esp,0xc
  004600e9: 50                                              push   eax
  004600ea: 8b cb                                           mov    ecx,ebx
  004600ec: e8 67 19 07 00                                  call   0x4d1a58
  004600f1: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  004600f4: 32 c0                                           xor    al,al
  004600f6: 85 d2                                           test   edx,edx
  004600f8: b1 01                                           mov    cl,0x1
  004600fa: 74 3a                                           je     0x460136
  004600fc: 8b 06                                           mov    eax,DWORD PTR [esi]
  004600fe: 52                                              push   edx
  004600ff: 68 58 13 51 00                                  push   0x511358
  00460104: 8b ce                                           mov    ecx,esi
  00460106: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0046010c: 50                                              push   eax
  0046010d: 68 6e 1c 00 00                                  push   0x1c6e
  00460112: e8 d9 d8 fd ff                                  call   0x43d9f0
  00460117: 83 c4 0c                                        add    esp,0xc
  0046011a: 50                                              push   eax
  0046011b: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  00460121: 51                                              push   ecx
  00460122: e8 19 38 fa ff                                  call   0x403940
  00460127: 83 c4 0c                                        add    esp,0xc
  0046012a: 50                                              push   eax
  0046012b: 8b cb                                           mov    ecx,ebx
  0046012d: e8 20 19 07 00                                  call   0x4d1a52
  00460132: b0 01                                           mov    al,0x1
  00460134: 32 c9                                           xor    cl,cl
  00460136: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  00460139: 85 d2                                           test   edx,edx
  0046013b: 74 4d                                           je     0x46018a
  0046013d: 84 c0                                           test   al,al
  0046013f: 74 0c                                           je     0x46014d
  00460141: 68 00 20 50 00                                  push   0x502000
  00460146: 8b cb                                           mov    ecx,ebx
  00460148: e8 05 19 07 00                                  call   0x4d1a52
  0046014d: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  00460150: 8b 06                                           mov    eax,DWORD PTR [esi]
  00460152: 52                                              push   edx
  00460153: 68 58 13 51 00                                  push   0x511358
  00460158: 8b ce                                           mov    ecx,esi
  0046015a: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  00460160: 50                                              push   eax
  00460161: 68 6f 1c 00 00                                  push   0x1c6f
  00460166: e8 85 d8 fd ff                                  call   0x43d9f0
  0046016b: 83 c4 0c                                        add    esp,0xc
  0046016e: 50                                              push   eax
  0046016f: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  00460175: 51                                              push   ecx
  00460176: e8 c5 37 fa ff                                  call   0x403940
  0046017b: 83 c4 0c                                        add    esp,0xc
  0046017e: 50                                              push   eax
  0046017f: 8b cb                                           mov    ecx,ebx
  00460181: e8 cc 18 07 00                                  call   0x4d1a52
  00460186: b0 01                                           mov    al,0x1
  00460188: 32 c9                                           xor    cl,cl
  0046018a: 8b 57 14                                        mov    edx,DWORD PTR [edi+0x14]
  0046018d: 85 d2                                           test   edx,edx
  0046018f: 74 4d                                           je     0x4601de
  00460191: 84 c0                                           test   al,al
  00460193: 74 0c                                           je     0x4601a1
  00460195: 68 00 20 50 00                                  push   0x502000
  0046019a: 8b cb                                           mov    ecx,ebx
  0046019c: e8 b1 18 07 00                                  call   0x4d1a52
  004601a1: 8b 57 14                                        mov    edx,DWORD PTR [edi+0x14]
  004601a4: 8b 06                                           mov    eax,DWORD PTR [esi]
  004601a6: 52                                              push   edx
  004601a7: 68 58 13 51 00                                  push   0x511358
  004601ac: 8b ce                                           mov    ecx,esi
  004601ae: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  004601b4: 50                                              push   eax
  004601b5: 68 70 1c 00 00                                  push   0x1c70
  004601ba: e8 31 d8 fd ff                                  call   0x43d9f0
  004601bf: 83 c4 0c                                        add    esp,0xc
  004601c2: 50                                              push   eax
  004601c3: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  004601c9: 51                                              push   ecx
  004601ca: e8 71 37 fa ff                                  call   0x403940
  004601cf: 83 c4 0c                                        add    esp,0xc
  004601d2: 50                                              push   eax
  004601d3: 8b cb                                           mov    ecx,ebx
  004601d5: e8 78 18 07 00                                  call   0x4d1a52
  004601da: b0 01                                           mov    al,0x1
  004601dc: 32 c9                                           xor    cl,cl
  004601de: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004601e1: 85 d2                                           test   edx,edx
  004601e3: 74 4d                                           je     0x460232
  004601e5: 84 c0                                           test   al,al
  004601e7: 74 0c                                           je     0x4601f5
  004601e9: 68 00 20 50 00                                  push   0x502000
  004601ee: 8b cb                                           mov    ecx,ebx
  004601f0: e8 5d 18 07 00                                  call   0x4d1a52
  004601f5: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004601f8: 8b 06                                           mov    eax,DWORD PTR [esi]
  004601fa: 52                                              push   edx
  004601fb: 68 58 13 51 00                                  push   0x511358
  00460200: 8b ce                                           mov    ecx,esi
  00460202: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  00460208: 50                                              push   eax
  00460209: 68 71 1c 00 00                                  push   0x1c71
  0046020e: e8 dd d7 fd ff                                  call   0x43d9f0
  00460213: 83 c4 0c                                        add    esp,0xc
  00460216: 50                                              push   eax
  00460217: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  0046021d: 51                                              push   ecx
  0046021e: e8 1d 37 fa ff                                  call   0x403940
  00460223: 83 c4 0c                                        add    esp,0xc
  00460226: 50                                              push   eax
  00460227: 8b cb                                           mov    ecx,ebx
  00460229: e8 24 18 07 00                                  call   0x4d1a52
  0046022e: b0 01                                           mov    al,0x1
  00460230: 32 c9                                           xor    cl,cl
  00460232: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  00460235: 85 d2                                           test   edx,edx
  00460237: 74 4d                                           je     0x460286
  00460239: 84 c0                                           test   al,al
  0046023b: 74 0c                                           je     0x460249
  0046023d: 68 00 20 50 00                                  push   0x502000
  00460242: 8b cb                                           mov    ecx,ebx
  00460244: e8 09 18 07 00                                  call   0x4d1a52
  00460249: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  0046024c: 8b 06                                           mov    eax,DWORD PTR [esi]
  0046024e: 52                                              push   edx
  0046024f: 68 58 13 51 00                                  push   0x511358
  00460254: 8b ce                                           mov    ecx,esi
  00460256: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0046025c: 50                                              push   eax
  0046025d: 68 72 1c 00 00                                  push   0x1c72
  00460262: e8 89 d7 fd ff                                  call   0x43d9f0
  00460267: 83 c4 0c                                        add    esp,0xc
  0046026a: 50                                              push   eax
  0046026b: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  00460271: 51                                              push   ecx
  00460272: e8 c9 36 fa ff                                  call   0x403940
  00460277: 83 c4 0c                                        add    esp,0xc
  0046027a: 50                                              push   eax
  0046027b: 8b cb                                           mov    ecx,ebx
  0046027d: e8 d0 17 07 00                                  call   0x4d1a52
  00460282: b0 01                                           mov    al,0x1
  00460284: 32 c9                                           xor    cl,cl
  00460286: 8b 57 1c                                        mov    edx,DWORD PTR [edi+0x1c]
  00460289: 85 d2                                           test   edx,edx
  0046028b: 74 4d                                           je     0x4602da
  0046028d: 84 c0                                           test   al,al
  0046028f: 74 0c                                           je     0x46029d
  00460291: 68 00 20 50 00                                  push   0x502000
  00460296: 8b cb                                           mov    ecx,ebx
  00460298: e8 b5 17 07 00                                  call   0x4d1a52
  0046029d: 8b 57 1c                                        mov    edx,DWORD PTR [edi+0x1c]
  004602a0: 8b 06                                           mov    eax,DWORD PTR [esi]
  004602a2: 52                                              push   edx
  004602a3: 68 58 13 51 00                                  push   0x511358
  004602a8: 8b ce                                           mov    ecx,esi
  004602aa: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  004602b0: 50                                              push   eax
  004602b1: 68 73 1c 00 00                                  push   0x1c73
  004602b6: e8 35 d7 fd ff                                  call   0x43d9f0
  004602bb: 83 c4 0c                                        add    esp,0xc
  004602be: 50                                              push   eax
  004602bf: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  004602c5: 51                                              push   ecx
  004602c6: e8 75 36 fa ff                                  call   0x403940
  004602cb: 83 c4 0c                                        add    esp,0xc
  004602ce: 50                                              push   eax
  004602cf: 8b cb                                           mov    ecx,ebx
  004602d1: e8 7c 17 07 00                                  call   0x4d1a52
  004602d6: b0 01                                           mov    al,0x1
  004602d8: 32 c9                                           xor    cl,cl
  004602da: 8b 57 70                                        mov    edx,DWORD PTR [edi+0x70]
  004602dd: 85 d2                                           test   edx,edx
  004602df: 0f 84 12 02 00 00                               je     0x4604f7
  004602e5: 84 c0                                           test   al,al
  004602e7: 74 25                                           je     0x46030e
  004602e9: 8b 16                                           mov    edx,DWORD PTR [esi]
  004602eb: 68 58 13 51 00                                  push   0x511358
  004602f0: 8b ce                                           mov    ecx,esi
  004602f2: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004602f8: 50                                              push   eax
  004602f9: 68 74 1c 00 00                                  push   0x1c74
  004602fe: e8 ed d6 fd ff                                  call   0x43d9f0
  00460303: 83 c4 0c                                        add    esp,0xc
  00460306: 50                                              push   eax
  00460307: 8b cb                                           mov    ecx,ebx
  00460309: e8 44 17 07 00                                  call   0x4d1a52
  0046030e: 83 7f 70 01                                     cmp    DWORD PTR [edi+0x70],0x1
  00460312: 68 58 13 51 00                                  push   0x511358
  00460317: 7e 12                                           jle    0x46032b
  00460319: 8b 06                                           mov    eax,DWORD PTR [esi]
  0046031b: 8b ce                                           mov    ecx,esi
  0046031d: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  00460323: 50                                              push   eax
  00460324: 68 75 1c 00 00                                  push   0x1c75
  00460329: eb 10                                           jmp    0x46033b
  0046032b: 8b 16                                           mov    edx,DWORD PTR [esi]
  0046032d: 8b ce                                           mov    ecx,esi
  0046032f: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  00460335: 50                                              push   eax
  00460336: 68 77 1c 00 00                                  push   0x1c77
  0046033b: e8 b0 d6 fd ff                                  call   0x43d9f0
  00460340: 83 c4 0c                                        add    esp,0xc
  00460343: 50                                              push   eax
  00460344: 8b cb                                           mov    ecx,ebx
  00460346: e8 07 17 07 00                                  call   0x4d1a52
  0046034b: 8b 47 5c                                        mov    eax,DWORD PTR [edi+0x5c]
  0046034e: 89 47 58                                        mov    DWORD PTR [edi+0x58],eax
  00460351: 33 c0                                           xor    eax,eax
  00460353: 8b c8                                           mov    ecx,eax
  00460355: 3b c8                                           cmp    ecx,eax
  00460357: 89 47 78                                        mov    DWORD PTR [edi+0x78],eax
  0046035a: c6 47 6c 08                                     mov    BYTE PTR [edi+0x6c],0x8
  0046035e: 74 0a                                           je     0x46036a
  00460360: 8b 4f 58                                        mov    ecx,DWORD PTR [edi+0x58]
  00460363: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00460365: 89 57 58                                        mov    DWORD PTR [edi+0x58],edx
  00460368: eb 07                                           jmp    0x460371
  0046036a: c7 47 78 01 00 00 00                            mov    DWORD PTR [edi+0x78],0x1
  00460371: 39 47 58                                        cmp    DWORD PTR [edi+0x58],eax
  00460374: 0f 85 e0 00 00 00                               jne    0x46045a
  0046037a: 39 47 78                                        cmp    DWORD PTR [edi+0x78],eax
  0046037d: 74 04                                           je     0x460383
  0046037f: c6 47 6c 07                                     mov    BYTE PTR [edi+0x6c],0x7
  00460383: 89 47 78                                        mov    DWORD PTR [edi+0x78],eax
  00460386: 68 48 04 50 00                                  push   0x500448
  0046038b: 8b cb                                           mov    ecx,ebx
  0046038d: e8 c0 16 07 00                                  call   0x4d1a52
  00460392: 8b 16                                           mov    edx,DWORD PTR [esi]
  00460394: 8b 5f 08                                        mov    ebx,DWORD PTR [edi+0x8]
  00460397: 8b ce                                           mov    ecx,esi
  00460399: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0046039f: 25 ff ff 00 00                                  and    eax,0xffff
  004603a4: 3b d8                                           cmp    ebx,eax
  004603a6: 0f 8f a5 02 00 00                               jg     0x460651
  004603ac: 8b ce                                           mov    ecx,esi
  004603ae: e8 ad de 02 00                                  call   0x48e260
  004603b3: 8b 4f 0c                                        mov    ecx,DWORD PTR [edi+0xc]
  004603b6: 25 ff ff 00 00                                  and    eax,0xffff
  004603bb: 3b c8                                           cmp    ecx,eax
  004603bd: 0f 8f 07 02 00 00                               jg     0x4605ca
  004603c3: 8b ce                                           mov    ecx,esi
  004603c5: e8 86 de 02 00                                  call   0x48e250
  004603ca: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  004603cd: 25 ff ff 00 00                                  and    eax,0xffff
  004603d2: 3b c8                                           cmp    ecx,eax
  004603d4: 0f 8f f0 01 00 00                               jg     0x4605ca
  004603da: 8b ce                                           mov    ecx,esi
  004603dc: e8 5f de 02 00                                  call   0x48e240
  004603e1: 8b 4f 14                                        mov    ecx,DWORD PTR [edi+0x14]
  004603e4: 25 ff ff 00 00                                  and    eax,0xffff
  004603e9: 3b c8                                           cmp    ecx,eax
  004603eb: 0f 8f d9 01 00 00                               jg     0x4605ca
  004603f1: 8b ce                                           mov    ecx,esi
  004603f3: e8 38 de 02 00                                  call   0x48e230
  004603f8: 8b 4f 18                                        mov    ecx,DWORD PTR [edi+0x18]
  004603fb: 25 ff ff 00 00                                  and    eax,0xffff
  00460400: 3b c8                                           cmp    ecx,eax
  00460402: 0f 8f c2 01 00 00                               jg     0x4605ca
  00460408: 8b ce                                           mov    ecx,esi
  0046040a: e8 61 de 02 00                                  call   0x48e270
  0046040f: 8b 4f 1c                                        mov    ecx,DWORD PTR [edi+0x1c]
  00460412: 25 ff ff 00 00                                  and    eax,0xffff
  00460417: 3b c8                                           cmp    ecx,eax
  00460419: 0f 8f ab 01 00 00                               jg     0x4605ca
  0046041f: 8b 47 38                                        mov    eax,DWORD PTR [edi+0x38]
  00460422: 8d 5f 38                                        lea    ebx,[edi+0x38]
  00460425: 8b cb                                           mov    ecx,ebx
  00460427: c7 45 0c 01 00 00 00                            mov    DWORD PTR [ebp+0xc],0x1
  0046042e: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00460431: 8b 4b 24                                        mov    ecx,DWORD PTR [ebx+0x24]
  00460434: 89 4b 20                                        mov    DWORD PTR [ebx+0x20],ecx
  00460437: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  0046043e: c6 43 34 08                                     mov    BYTE PTR [ebx+0x34],0x8
  00460442: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  00460445: 85 c0                                           test   eax,eax
  00460447: 0f 84 d5 00 00 00                               je     0x460522
  0046044d: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  00460450: 8b 02                                           mov    eax,DWORD PTR [edx]
  00460452: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  00460455: e9 cf 00 00 00                                  jmp    0x460529
  0046045a: 8b 47 58                                        mov    eax,DWORD PTR [edi+0x58]
  0046045d: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00460460: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00460462: 50                                              push   eax
  00460463: e8 28 02 00 00                                  call   0x460690
  00460468: 83 c4 04                                        add    esp,0x4
  0046046b: 85 c0                                           test   eax,eax
  0046046d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00460470: 74 1b                                           je     0x46048d
  00460472: 8b 16                                           mov    edx,DWORD PTR [esi]
  00460474: 8b ce                                           mov    ecx,esi
  00460476: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0046047c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0046047f: 50                                              push   eax
  00460480: e8 db fa ff ff                                  call   0x45ff60
  00460485: 50                                              push   eax
  00460486: 8b cb                                           mov    ecx,ebx
  00460488: e8 c5 15 07 00                                  call   0x4d1a52
  0046048d: 8b 47 78                                        mov    eax,DWORD PTR [edi+0x78]
  00460490: 85 c0                                           test   eax,eax
  00460492: 74 0a                                           je     0x46049e
  00460494: 8b 47 58                                        mov    eax,DWORD PTR [edi+0x58]
  00460497: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00460499: 89 4f 58                                        mov    DWORD PTR [edi+0x58],ecx
  0046049c: eb 07                                           jmp    0x4604a5
  0046049e: c7 47 78 01 00 00 00                            mov    DWORD PTR [edi+0x78],0x1
  004604a5: 8b 47 58                                        mov    eax,DWORD PTR [edi+0x58]
  004604a8: 85 c0                                           test   eax,eax
  004604aa: 74 34                                           je     0x4604e0
  004604ac: 68 00 20 50 00                                  push   0x502000
  004604b1: 8b cb                                           mov    ecx,ebx
  004604b3: e8 9a 15 07 00                                  call   0x4d1a52
  004604b8: 8b 57 58                                        mov    edx,DWORD PTR [edi+0x58]
  004604bb: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004604be: 8b 00                                           mov    eax,DWORD PTR [eax]
  004604c0: 50                                              push   eax
  004604c1: e8 ca 01 00 00                                  call   0x460690
  004604c6: 83 c4 04                                        add    esp,0x4
  004604c9: 85 c0                                           test   eax,eax
  004604cb: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004604ce: 74 bd                                           je     0x46048d
  004604d0: 8b 16                                           mov    edx,DWORD PTR [esi]
  004604d2: 8b ce                                           mov    ecx,esi
  004604d4: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004604da: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004604dd: 50                                              push   eax
  004604de: eb a0                                           jmp    0x460480
  004604e0: 8b 47 78                                        mov    eax,DWORD PTR [edi+0x78]
  004604e3: 85 c0                                           test   eax,eax
  004604e5: 74 04                                           je     0x4604eb
  004604e7: c6 47 6c 07                                     mov    BYTE PTR [edi+0x6c],0x7
  004604eb: c7 47 78 00 00 00 00                            mov    DWORD PTR [edi+0x78],0x0
  004604f2: e9 8f fe ff ff                                  jmp    0x460386
  004604f7: 84 c9                                           test   cl,cl
  004604f9: 0f 84 87 fe ff ff                               je     0x460386
  004604ff: 8b 06                                           mov    eax,DWORD PTR [esi]
  00460501: 68 58 13 51 00                                  push   0x511358
  00460506: 8b ce                                           mov    ecx,esi
  00460508: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0046050e: 50                                              push   eax
  0046050f: 68 76 1c 00 00                                  push   0x1c76
  00460514: e8 d7 d4 fd ff                                  call   0x43d9f0
  00460519: 83 c4 0c                                        add    esp,0xc
  0046051c: 50                                              push   eax
  0046051d: e9 69 fe ff ff                                  jmp    0x46038b
  00460522: c7 43 40 01 00 00 00                            mov    DWORD PTR [ebx+0x40],0x1
  00460529: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  0046052c: 85 c0                                           test   eax,eax
  0046052e: 74 3c                                           je     0x46056c
  00460530: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00460533: 85 c0                                           test   eax,eax
  00460535: 74 47                                           je     0x46057e
  00460537: 8b 4f 58                                        mov    ecx,DWORD PTR [edi+0x58]
  0046053a: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0046053d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0046053f: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00460542: 8b 00                                           mov    eax,DWORD PTR [eax]
  00460544: 50                                              push   eax
  00460545: 8b ce                                           mov    ecx,esi
  00460547: ff 92 70 01 00 00                               call   DWORD PTR [edx+0x170]
  0046054d: 85 c0                                           test   eax,eax
  0046054f: 74 0f                                           je     0x460560
  00460551: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00460554: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00460557: 3b 41 04                                        cmp    eax,DWORD PTR [ecx+0x4]
  0046055a: 0f 8d e2 fe ff ff                               jge    0x460442
  00460560: c7 45 0c 00 00 00 00                            mov    DWORD PTR [ebp+0xc],0x0
  00460567: e9 d6 fe ff ff                                  jmp    0x460442
  0046056c: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  0046056f: 85 c0                                           test   eax,eax
  00460571: 74 04                                           je     0x460577
  00460573: c6 43 34 07                                     mov    BYTE PTR [ebx+0x34],0x7
  00460577: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  0046057e: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00460580: 8b cb                                           mov    ecx,ebx
  00460582: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00460585: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00460588: 85 f6                                           test   esi,esi
  0046058a: 75 1f                                           jne    0x4605ab
  0046058c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0046058f: 50                                              push   eax
  00460590: 68 d4 6c 50 00                                  push   0x506cd4
  00460595: 68 00 04 00 00                                  push   0x400
  0046059a: e8 a1 17 01 00                                  call   0x471d40
  0046059f: 83 c4 0c                                        add    esp,0xc
  004605a2: 5f                                              pop    edi
  004605a3: 8b c6                                           mov    eax,esi
  004605a5: 5e                                              pop    esi
  004605a6: 5b                                              pop    ebx
  004605a7: 8b e5                                           mov    esp,ebp
  004605a9: 5d                                              pop    ebp
  004605aa: c3                                              ret
  004605ab: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004605ae: 51                                              push   ecx
  004605af: 68 b4 6c 50 00                                  push   0x506cb4
  004605b4: 68 00 04 00 00                                  push   0x400
  004605b9: e8 82 17 01 00                                  call   0x471d40
  004605be: 83 c4 0c                                        add    esp,0xc
  004605c1: 5f                                              pop    edi
  004605c2: 8b c6                                           mov    eax,esi
  004605c4: 5e                                              pop    esi
  004605c5: 5b                                              pop    ebx
  004605c6: 8b e5                                           mov    esp,ebp
  004605c8: 5d                                              pop    ebp
  004605c9: c3                                              ret
  004605ca: 8b ce                                           mov    ecx,esi
  004605cc: e8 9f dc 02 00                                  call   0x48e270
  004605d1: 8b ce                                           mov    ecx,esi
  004605d3: 25 ff ff 00 00                                  and    eax,0xffff
  004605d8: 50                                              push   eax
  004605d9: e8 52 dc 02 00                                  call   0x48e230
  004605de: 8b ce                                           mov    ecx,esi
  004605e0: 25 ff ff 00 00                                  and    eax,0xffff
  004605e5: 50                                              push   eax
  004605e6: e8 55 dc 02 00                                  call   0x48e240
  004605eb: 8b ce                                           mov    ecx,esi
  004605ed: 25 ff ff 00 00                                  and    eax,0xffff
  004605f2: 50                                              push   eax
  004605f3: e8 58 dc 02 00                                  call   0x48e250
  004605f8: 8b ce                                           mov    ecx,esi
  004605fa: 25 ff ff 00 00                                  and    eax,0xffff
  004605ff: 50                                              push   eax
  00460600: e8 5b dc 02 00                                  call   0x48e260
  00460605: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00460608: 25 ff ff 00 00                                  and    eax,0xffff
  0046060d: 50                                              push   eax
  0046060e: 56                                              push   esi
  0046060f: 68 64 6c 50 00                                  push   0x506c64
  00460614: 68 00 04 00 00                                  push   0x400
  00460619: e8 22 17 01 00                                  call   0x471d40
  0046061e: 8b 57 1c                                        mov    edx,DWORD PTR [edi+0x1c]
  00460621: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  00460624: 8b 4f 14                                        mov    ecx,DWORD PTR [edi+0x14]
  00460627: 83 c4 20                                        add    esp,0x20
  0046062a: 52                                              push   edx
  0046062b: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  0046062e: 50                                              push   eax
  0046062f: 8b 47 0c                                        mov    eax,DWORD PTR [edi+0xc]
  00460632: 51                                              push   ecx
  00460633: 52                                              push   edx
  00460634: 50                                              push   eax
  00460635: 56                                              push   esi
  00460636: 68 14 6c 50 00                                  push   0x506c14
  0046063b: 68 00 04 00 00                                  push   0x400
  00460640: e8 fb 16 01 00                                  call   0x471d40
  00460645: 83 c4 20                                        add    esp,0x20
  00460648: 5f                                              pop    edi
  00460649: 5e                                              pop    esi
  0046064a: 33 c0                                           xor    eax,eax
  0046064c: 5b                                              pop    ebx
  0046064d: 8b e5                                           mov    esp,ebp
  0046064f: 5d                                              pop    ebp
  00460650: c3                                              ret
  00460651: 8b 16                                           mov    edx,DWORD PTR [esi]
  00460653: 53                                              push   ebx
  00460654: 8b ce                                           mov    ecx,esi
  00460656: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0046065c: 25 ff ff 00 00                                  and    eax,0xffff
  00460661: 50                                              push   eax
  00460662: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00460665: 50                                              push   eax
  00460666: 68 cc 6b 50 00                                  push   0x506bcc
  0046066b: 68 00 04 00 00                                  push   0x400
  00460670: e8 cb 16 01 00                                  call   0x471d40
  00460675: 83 c4 14                                        add    esp,0x14
  00460678: 5f                                              pop    edi
  00460679: 5e                                              pop    esi
  0046067a: 33 c0                                           xor    eax,eax
  0046067c: 5b                                              pop    ebx
  0046067d: 8b e5                                           mov    esp,ebp
  0046067f: 5d                                              pop    ebp
  00460680: c3                                              ret

; ===== 0x00460690 ?GetSkill@Skills@@SAPAU_SKILL@@H@Z =====
  00460690: 55                                              push   ebp
  00460691: 8b ec                                           mov    ebp,esp
  00460693: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00460696: 3b 05 48 4d 51 00                               cmp    eax,DWORD PTR ds:0x514d48
  0046069c: 7d 0b                                           jge    0x4606a9
  0046069e: 8b 0d 44 4d 51 00                               mov    ecx,DWORD PTR ds:0x514d44
  004606a4: 8b 04 81                                        mov    eax,DWORD PTR [ecx+eax*4]
  004606a7: 5d                                              pop    ebp
  004606a8: c3                                              ret
  004606a9: 33 c0                                           xor    eax,eax
  004606ab: 5d                                              pop    ebp
  004606ac: c3                                              ret

; ===== 0x004606B0 ?GetSkillByName@Skills@@SAPAU_SKILL@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@G@Z =====
  004606b0: 55                                              push   ebp
  004606b1: 8b ec                                           mov    ebp,esp
  004606b3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004606b9: 6a ff                                           push   0xffffffff
  004606bb: 68 39 79 4d 00                                  push   0x4d7939
  004606c0: 50                                              push   eax
  004606c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004606c8: 53                                              push   ebx
  004606c9: 56                                              push   esi
  004606ca: 57                                              push   edi
  004606cb: a1 48 4d 51 00                                  mov    eax,ds:0x514d48
  004606d0: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004606d3: 33 db                                           xor    ebx,ebx
  004606d5: 3b c3                                           cmp    eax,ebx
  004606d7: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004606da: 7e 3b                                           jle    0x460717
  004606dc: a1 44 4d 51 00                                  mov    eax,ds:0x514d44
  004606e1: 8b 34 98                                        mov    esi,DWORD PTR [eax+ebx*4]
  004606e4: 85 f6                                           test   esi,esi
  004606e6: 74 25                                           je     0x46070d
  004606e8: 85 ff                                           test   edi,edi
  004606ea: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004606ef: 74 02                                           je     0x4606f3
  004606f1: 8b c7                                           mov    eax,edi
  004606f3: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  004606f6: 50                                              push   eax
  004606f7: 51                                              push   ecx
  004606f8: 8b ce                                           mov    ecx,esi
  004606fa: e8 61 f8 ff ff                                  call   0x45ff60
  004606ff: 50                                              push   eax
  00460700: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  00460706: 83 c4 08                                        add    esp,0x8
  00460709: 85 c0                                           test   eax,eax
  0046070b: 74 31                                           je     0x46073e
  0046070d: a1 48 4d 51 00                                  mov    eax,ds:0x514d48
  00460712: 43                                              inc    ebx
  00460713: 3b d8                                           cmp    ebx,eax
  00460715: 7c c5                                           jl     0x4606dc
  00460717: 85 ff                                           test   edi,edi
  00460719: 74 71                                           je     0x46078c
  0046071b: 8a 47 ff                                        mov    al,BYTE PTR [edi-0x1]
  0046071e: 84 c0                                           test   al,al
  00460720: 74 60                                           je     0x460782
  00460722: 3c ff                                           cmp    al,0xff
  00460724: 74 5c                                           je     0x460782
  00460726: fe c8                                           dec    al
  00460728: 88 47 ff                                        mov    BYTE PTR [edi-0x1],al
  0046072b: 33 c0                                           xor    eax,eax
  0046072d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00460730: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00460737: 5f                                              pop    edi
  00460738: 5e                                              pop    esi
  00460739: 5b                                              pop    ebx
  0046073a: 8b e5                                           mov    esp,ebp
  0046073c: 5d                                              pop    ebp
  0046073d: c3                                              ret
  0046073e: 85 ff                                           test   edi,edi
  00460740: 74 2d                                           je     0x46076f
  00460742: 8a 47 ff                                        mov    al,BYTE PTR [edi-0x1]
  00460745: 84 c0                                           test   al,al
  00460747: 74 1c                                           je     0x460765
  00460749: 3c ff                                           cmp    al,0xff
  0046074b: 74 18                                           je     0x460765
  0046074d: fe c8                                           dec    al
  0046074f: 88 47 ff                                        mov    BYTE PTR [edi-0x1],al
  00460752: 8b c6                                           mov    eax,esi
  00460754: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00460757: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0046075e: 5f                                              pop    edi
  0046075f: 5e                                              pop    esi
  00460760: 5b                                              pop    ebx
  00460761: 8b e5                                           mov    esp,ebp
  00460763: 5d                                              pop    ebp
  00460764: c3                                              ret
  00460765: 4f                                              dec    edi
  00460766: 57                                              push   edi
  00460767: e8 f4 18 fe ff                                  call   0x442060
  0046076c: 83 c4 04                                        add    esp,0x4
  0046076f: 8b c6                                           mov    eax,esi
  00460771: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00460774: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0046077b: 5f                                              pop    edi
  0046077c: 5e                                              pop    esi
  0046077d: 5b                                              pop    ebx
  0046077e: 8b e5                                           mov    esp,ebp
  00460780: 5d                                              pop    ebp
  00460781: c3                                              ret
  00460782: 4f                                              dec    edi
  00460783: 57                                              push   edi
  00460784: e8 d7 18 fe ff                                  call   0x442060
  00460789: 83 c4 04                                        add    esp,0x4
  0046078c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0046078f: 5f                                              pop    edi
  00460790: 5e                                              pop    esi
  00460791: 33 c0                                           xor    eax,eax
  00460793: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0046079a: 5b                                              pop    ebx
  0046079b: 8b e5                                           mov    esp,ebp
  0046079d: 5d                                              pop    ebp
  0046079e: c3                                              ret

; ===== 0x004607A0 ?TrainSkill@Skills@@SAXPAVUnit@@PAVUSER_SKILL@@K@Z =====
  004607a0: 55                                              push   ebp
  004607a1: 8b ec                                           mov    ebp,esp
  004607a3: 56                                              push   esi
  004607a4: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004607a7: 8b 06                                           mov    eax,DWORD PTR [esi]
  004607a9: 50                                              push   eax
  004607aa: e8 e1 fe ff ff                                  call   0x460690
  004607af: 83 c4 04                                        add    esp,0x4
  004607b2: 85 c0                                           test   eax,eax
  004607b4: 74 1a                                           je     0x4607d0
  004607b6: 8b 40 10                                        mov    eax,DWORD PTR [eax+0x10]
  004607b9: 85 c0                                           test   eax,eax
  004607bb: 57                                              push   edi
  004607bc: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004607bf: 74 0b                                           je     0x4607cc
  004607c1: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004607c4: 57                                              push   edi
  004607c5: 56                                              push   esi
  004607c6: 51                                              push   ecx
  004607c7: ff d0                                           call   eax
  004607c9: 83 c4 0c                                        add    esp,0xc
  004607cc: 01 7e 04                                        add    DWORD PTR [esi+0x4],edi
  004607cf: 5f                                              pop    edi
  004607d0: 5e                                              pop    esi
  004607d1: 5d                                              pop    ebp
  004607d2: c3                                              ret

; ===== 0x004607E0 ?Create@Skills@@SAXXZ =====
  004607e0: c3                                              ret

; ===== 0x004607F0 ?Destroy@Skills@@SAXXZ =====
  004607f0: a1 48 4d 51 00                                  mov    eax,ds:0x514d48
  004607f5: 56                                              push   esi
  004607f6: 33 f6                                           xor    esi,esi
  004607f8: 85 c0                                           test   eax,eax
  004607fa: 7e 1f                                           jle    0x46081b
  004607fc: a1 44 4d 51 00                                  mov    eax,ds:0x514d44
  00460801: 8b 04 b0                                        mov    eax,DWORD PTR [eax+esi*4]
  00460804: 85 c0                                           test   eax,eax
  00460806: 74 09                                           je     0x460811
  00460808: 50                                              push   eax
  00460809: e8 52 18 fe ff                                  call   0x442060
  0046080e: 83 c4 04                                        add    esp,0x4
  00460811: a1 48 4d 51 00                                  mov    eax,ds:0x514d48
  00460816: 46                                              inc    esi
  00460817: 3b f0                                           cmp    esi,eax
  00460819: 7c e1                                           jl     0x4607fc
  0046081b: 5e                                              pop    esi
  0046081c: c3                                              ret

; ===== 0x00471EF0 ?GetHomeDir@TFCMAIN@@SA?AVCString@@XZ =====
  00471ef0: 55                                              push   ebp
  00471ef1: 8b ec                                           mov    ebp,esp
  00471ef3: 51                                              push   ecx
  00471ef4: 56                                              push   esi
  00471ef5: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00471ef8: 68 a0 42 51 00                                  push   0x5142a0
  00471efd: 8b ce                                           mov    ecx,esi
  00471eff: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00471f06: e8 41 fb 05 00                                  call   0x4d1a4c
  00471f0b: 8b c6                                           mov    eax,esi
  00471f0d: 5e                                              pop    esi
  00471f0e: 8b e5                                           mov    esp,ebp
  00471f10: 5d                                              pop    ebp
  00471f11: c3                                              ret

; ===== 0x00471F20 ?GetColosseum@TFCMAIN@@SAKXZ =====
  00471f20: a1 d4 42 51 00                                  mov    eax,ds:0x5142d4
  00471f25: c3                                              ret

; ===== 0x00471F30 ?GetDoppelganger@TFCMAIN@@SAKXZ =====
  00471f30: a1 d8 42 51 00                                  mov    eax,ds:0x5142d8
  00471f35: c3                                              ret

; ===== 0x00471F40 ?AddMonster@TFCMAIN@@SAXPAVUnit@@@Z =====
  00471f40: 55                                              push   ebp
  00471f41: 8b ec                                           mov    ebp,esp
  00471f43: 83 ec 14                                        sub    esp,0x14
  00471f46: 56                                              push   esi
  00471f47: 50                                              push   eax
  00471f48: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00471f4b: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00471f4e: 58                                              pop    eax
  00471f4f: e8 ac 22 fc ff                                  call   0x434200
  00471f54: 8b 10                                           mov    edx,DWORD PTR [eax]
  00471f56: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00471f59: 51                                              push   ecx
  00471f5a: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00471f5d: 68 e8 43 51 00                                  push   0x5143e8
  00471f62: 51                                              push   ecx
  00471f63: 8b c8                                           mov    ecx,eax
  00471f65: ff 12                                           call   DWORD PTR [edx]
  00471f67: 68 f0 43 51 00                                  push   0x5143f0
  00471f6c: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00471f72: e8 89 22 fc ff                                  call   0x434200
  00471f77: 8b 10                                           mov    edx,DWORD PTR [eax]
  00471f79: 68 ec 43 51 00                                  push   0x5143ec
  00471f7e: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00471f81: 51                                              push   ecx
  00471f82: 8b c8                                           mov    ecx,eax
  00471f84: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00471f87: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00471f8a: 56                                              push   esi
  00471f8b: b9 e8 43 51 00                                  mov    ecx,0x5143e8
  00471f90: e8 db 38 fd ff                                  call   0x445870
  00471f95: e8 66 22 fc ff                                  call   0x434200
  00471f9a: 8b 10                                           mov    edx,DWORD PTR [eax]
  00471f9c: 68 ec 43 51 00                                  push   0x5143ec
  00471fa1: 8b c8                                           mov    ecx,eax
  00471fa3: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00471fa6: 68 f0 43 51 00                                  push   0x5143f0
  00471fab: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00471fb1: 8b 06                                           mov    eax,DWORD PTR [esi]
  00471fb3: 6a 01                                           push   0x1
  00471fb5: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00471fb8: 51                                              push   ecx
  00471fb9: 8b ce                                           mov    ecx,esi
  00471fbb: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  00471fbe: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00471fc0: 83 ec 0c                                        sub    esp,0xc
  00471fc3: 8b d4                                           mov    edx,esp
  00471fc5: 89 0a                                           mov    DWORD PTR [edx],ecx
  00471fc7: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00471fca: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00471fcd: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00471fd0: 8b ce                                           mov    ecx,esi
  00471fd2: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  00471fd5: e8 06 d8 01 00                                  call   0x48f7e0
  00471fda: 8b 16                                           mov    edx,DWORD PTR [esi]
  00471fdc: 6a 00                                           push   0x0
  00471fde: 6a 00                                           push   0x0
  00471fe0: 6a 00                                           push   0x0
  00471fe2: 6a 00                                           push   0x0
  00471fe4: 56                                              push   esi
  00471fe5: 6a 15                                           push   0x15
  00471fe7: 8b ce                                           mov    ecx,esi
  00471fe9: ff 52 24                                        call   DWORD PTR [edx+0x24]
  00471fec: 5e                                              pop    esi
  00471fed: 8b e5                                           mov    esp,ebp
  00471fef: 5d                                              pop    ebp
  00471ff0: c3                                              ret

; ===== 0x00472000 ?GetMaxWorlds@TFCMAIN@@SAGXZ =====
  00472000: a1 38 5e 51 00                                  mov    eax,ds:0x515e38
  00472005: 66 8b 40 50                                     mov    ax,WORD PTR [eax+0x50]
  00472009: c3                                              ret

; ===== 0x00472060 ?RegisterUnitStartupFunction@TFCMAIN@@SAXP6AXXZ@Z =====
  00472060: 55                                              push   ebp
  00472061: 8b ec                                           mov    ebp,esp
  00472063: 6a 04                                           push   0x4
  00472065: e8 86 ff fc ff                                  call   0x441ff0
  0047206a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0047206d: 83 c4 04                                        add    esp,0x4
  00472070: 89 08                                           mov    DWORD PTR [eax],ecx
  00472072: 50                                              push   eax
  00472073: b9 f0 5d 51 00                                  mov    ecx,0x515df0
  00472078: e8 f3 13 00 00                                  call   0x473470
  0047207d: 5d                                              pop    ebp
  0047207e: c3                                              ret

; ===== 0x00472080 ?CallUnitStartupFunctions@TFCMAIN@@SAXXZ =====
  00472080: a1 14 5e 51 00                                  mov    eax,ds:0x515e14
  00472085: 56                                              push   esi
  00472086: 33 f6                                           xor    esi,esi
  00472088: 33 c9                                           xor    ecx,ecx
  0047208a: a3 10 5e 51 00                                  mov    ds:0x515e10,eax
  0047208f: 89 0d 30 5e 51 00                               mov    DWORD PTR ds:0x515e30,ecx
  00472095: c6 05 24 5e 51 00 08                            mov    BYTE PTR ds:0x515e24,0x8
  0047209c: 3b ce                                           cmp    ecx,esi
  0047209e: 74 09                                           je     0x4720a9
  004720a0: 8b 00                                           mov    eax,DWORD PTR [eax]
  004720a2: a3 10 5e 51 00                                  mov    ds:0x515e10,eax
  004720a7: eb 0b                                           jmp    0x4720b4
  004720a9: b9 01 00 00 00                                  mov    ecx,0x1
  004720ae: 89 0d 30 5e 51 00                               mov    DWORD PTR ds:0x515e30,ecx
  004720b4: 3b c6                                           cmp    eax,esi
  004720b6: 0f 84 12 01 00 00                               je     0x4721ce
  004720bc: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004720bf: ff 10                                           call   DWORD PTR [eax]
  004720c1: 8b 0d 28 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e28
  004720c7: a1 10 5e 51 00                                  mov    eax,ds:0x515e10
  004720cc: 8b 15 14 5e 51 00                               mov    edx,DWORD PTR ds:0x515e14
  004720d2: 49                                              dec    ecx
  004720d3: 89 0d 28 5e 51 00                               mov    DWORD PTR ds:0x515e28,ecx
  004720d9: 8b 0d 18 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e18
  004720df: 3b c1                                           cmp    eax,ecx
  004720e1: a3 1c 5e 51 00                                  mov    ds:0x515e1c,eax
  004720e6: 74 49                                           je     0x472131
  004720e8: 3b c2                                           cmp    eax,edx
  004720ea: 74 45                                           je     0x472131
  004720ec: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004720ee: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004720f1: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004720f4: a1 10 5e 51 00                                  mov    eax,ds:0x515e10
  004720f9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004720fc: 8b 10                                           mov    edx,DWORD PTR [eax]
  004720fe: 89 11                                           mov    DWORD PTR [ecx],edx
  00472100: a1 30 5e 51 00                                  mov    eax,ds:0x515e30
  00472105: 83 f8 01                                        cmp    eax,0x1
  00472108: 75 13                                           jne    0x47211d
  0047210a: a1 10 5e 51 00                                  mov    eax,ds:0x515e10
  0047210f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00472112: 89 0d 10 5e 51 00                               mov    DWORD PTR ds:0x515e10,ecx
  00472118: e9 84 00 00 00                                  jmp    0x4721a1
  0047211d: 83 f8 02                                        cmp    eax,0x2
  00472120: 75 7f                                           jne    0x4721a1
  00472122: 8b 15 10 5e 51 00                               mov    edx,DWORD PTR ds:0x515e10
  00472128: 8b 02                                           mov    eax,DWORD PTR [edx]
  0047212a: a3 10 5e 51 00                                  mov    ds:0x515e10,eax
  0047212f: eb 70                                           jmp    0x4721a1
  00472131: 3b c1                                           cmp    eax,ecx
  00472133: 75 2a                                           jne    0x47215f
  00472135: 3b c2                                           cmp    eax,edx
  00472137: 74 2a                                           je     0x472163
  00472139: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0047213c: 89 31                                           mov    DWORD PTR [ecx],esi
  0047213e: a1 10 5e 51 00                                  mov    eax,ds:0x515e10
  00472143: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00472146: 89 15 18 5e 51 00                               mov    DWORD PTR ds:0x515e18,edx
  0047214c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0047214f: a3 10 5e 51 00                                  mov    ds:0x515e10,eax
  00472154: 83 3d 30 5e 51 00 02                            cmp    DWORD PTR ds:0x515e30,0x2
  0047215b: 75 44                                           jne    0x4721a1
  0047215d: eb 3c                                           jmp    0x47219b
  0047215f: 3b c2                                           cmp    eax,edx
  00472161: 75 26                                           jne    0x472189
  00472163: 3b c1                                           cmp    eax,ecx
  00472165: 74 22                                           je     0x472189
  00472167: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00472169: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  0047216c: 8b 15 10 5e 51 00                               mov    edx,DWORD PTR ds:0x515e10
  00472172: 8b 02                                           mov    eax,DWORD PTR [edx]
  00472174: a3 10 5e 51 00                                  mov    ds:0x515e10,eax
  00472179: a3 14 5e 51 00                                  mov    ds:0x515e14,eax
  0047217e: 83 3d 30 5e 51 00 01                            cmp    DWORD PTR ds:0x515e30,0x1
  00472185: 75 1a                                           jne    0x4721a1
  00472187: eb 12                                           jmp    0x47219b
  00472189: 89 35 10 5e 51 00                               mov    DWORD PTR ds:0x515e10,esi
  0047218f: 89 35 14 5e 51 00                               mov    DWORD PTR ds:0x515e14,esi
  00472195: 89 35 18 5e 51 00                               mov    DWORD PTR ds:0x515e18,esi
  0047219b: 89 35 30 5e 51 00                               mov    DWORD PTR ds:0x515e30,esi
  004721a1: a1 1c 5e 51 00                                  mov    eax,ds:0x515e1c
  004721a6: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004721a9: 51                                              push   ecx
  004721aa: e8 b1 fe fc ff                                  call   0x442060
  004721af: 8b 15 1c 5e 51 00                               mov    edx,DWORD PTR ds:0x515e1c
  004721b5: 52                                              push   edx
  004721b6: e8 a5 fe fc ff                                  call   0x442060
  004721bb: a1 10 5e 51 00                                  mov    eax,ds:0x515e10
  004721c0: 8b 0d 30 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e30
  004721c6: 83 c4 08                                        add    esp,0x8
  004721c9: e9 ce fe ff ff                                  jmp    0x47209c
  004721ce: 3b ce                                           cmp    ecx,esi
  004721d0: 74 07                                           je     0x4721d9
  004721d2: c6 05 24 5e 51 00 07                            mov    BYTE PTR ds:0x515e24,0x7
  004721d9: 89 35 30 5e 51 00                               mov    DWORD PTR ds:0x515e30,esi
  004721df: 5e                                              pop    esi
  004721e0: c3                                              ret

