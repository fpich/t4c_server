; T4C executable original — instructions reconstruites depuis une entree de flot et verifiees GNU+LLVM.
; 0x41305C : mov cl,[ebp-0x0D] deja couvert. Fallthrough vers 0x41305F, dont seul le premier octet etait masque.
  0041305C: 8a 4d f3                                   mov    cl,BYTE PTR [ebp-0xd]                          ; LLVM: mov cl, byte ptr [ebp - 0xd]
  0041305F: 8a 45 f3                                   mov    al,BYTE PTR [ebp-0xd]                          ; LLVM: mov al, byte ptr [ebp - 0xd]
  00413062: 88 4d dd                                   mov    BYTE PTR [ebp-0x23],cl                         ; LLVM: mov byte ptr [ebp - 0x23], cl
  00413065: 8d 4d dc                                   lea    ecx,[ebp-0x24]                                 ; LLVM: lea ecx, [ebp - 0x24]
  00413068: 89 75 a0                                   mov    DWORD PTR [ebp-0x60],esi                       ; LLVM: mov dword ptr [ebp - 0x60], esi
  0041306B: 89 75 e8                                   mov    DWORD PTR [ebp-0x18],esi                       ; LLVM: mov dword ptr [ebp - 0x18], esi
  0041306E: 89 75 b4                                   mov    DWORD PTR [ebp-0x4c],esi                       ; LLVM: mov dword ptr [ebp - 0x4c], esi
  00413071: 89 75 b8                                   mov    DWORD PTR [ebp-0x48],esi                       ; LLVM: mov dword ptr [ebp - 0x48], esi
  00413074: 89 75 bc                                   mov    DWORD PTR [ebp-0x44],esi                       ; LLVM: mov dword ptr [ebp - 0x44], esi
  00413077: 89 75 c0                                   mov    DWORD PTR [ebp-0x40],esi                       ; LLVM: mov dword ptr [ebp - 0x40], esi
  0041307A: 89 75 c4                                   mov    DWORD PTR [ebp-0x3c],esi                       ; LLVM: mov dword ptr [ebp - 0x3c], esi
  0041307D: 89 75 c8                                   mov    DWORD PTR [ebp-0x38],esi                       ; LLVM: mov dword ptr [ebp - 0x38], esi
  00413080: 89 75 cc                                   mov    DWORD PTR [ebp-0x34],esi                       ; LLVM: mov dword ptr [ebp - 0x34], esi
  00413083: 89 75 d0                                   mov    DWORD PTR [ebp-0x30],esi                       ; LLVM: mov dword ptr [ebp - 0x30], esi
  00413086: 89 75 d4                                   mov    DWORD PTR [ebp-0x2c],esi                       ; LLVM: mov dword ptr [ebp - 0x2c], esi
  00413089: 89 75 d8                                   mov    DWORD PTR [ebp-0x28],esi                       ; LLVM: mov dword ptr [ebp - 0x28], esi
  0041308C: 88 45 dc                                   mov    BYTE PTR [ebp-0x24],al                         ; LLVM: mov byte ptr [ebp - 0x24], al
  0041308F: e8 9c 08 01 00                             call   0x423930                                       ; LLVM: call 0x423930 <?GetInvisibleQuery@Unit@@UAEPAVQueryInvisible@1@XZ+0x9d0>
  00413094: b9 78 16 51 00                             mov    ecx,0x511678                                   ; LLVM: mov ecx, 0x511678
  00413099: 89 75 fc                                   mov    DWORD PTR [ebp-0x4],esi                        ; LLVM: mov dword ptr [ebp - 0x4], esi
  0041309C: e8 bf bc 03 00                             call   0x44ed60                                       ; LLVM: call 0x44ed60 <?ObjectInList@ObjectTimer@@SAHK@Z+0xb80>
  004130A1: 85 c0                                      test   eax,eax                                        ; LLVM: test eax, eax
  004130A3: 0f 84 88 01 00 00                          je     0x413231                                       ; LLVM: je 0x413231 <?InitializeODBC@Character@@SAXXZ+0x281>
  004130A9: eb 02                                      jmp    0x4130ad                                       ; LLVM: jmp 0x4130ad <?InitializeODBC@Character@@SAXXZ+0xfd>
  004130AB: 33 f6                                      xor    esi,esi                                        ; LLVM: xor esi, esi
  004130AD: 8d 55 a0                                   lea    edx,[ebp-0x60]                                 ; LLVM: lea edx, [ebp - 0x60]
  004130B0: 52                                         push   edx                                            ; LLVM: push edx
  004130B1: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  004130B3: b9 78 16 51 00                             mov    ecx,0x511678                                   ; LLVM: mov ecx, 0x511678
  004130B8: e8 53 be 03 00                             call   0x44ef10                                       ; LLVM: call 0x44ef10 <?ObjectInList@ObjectTimer@@SAHK@Z+0xd30>
  004130BD: 6a 14                                      push   0x14                                           ; LLVM: push 0x14
  004130BF: 8d 45 84                                   lea    eax,[ebp-0x7c]                                 ; LLVM: lea eax, [ebp - 0x7c]
  004130C2: 50                                         push   eax                                            ; LLVM: push eax
  004130C3: 6a 02                                      push   0x2                                            ; LLVM: push 0x2
  004130C5: b9 78 16 51 00                             mov    ecx,0x511678                                   ; LLVM: mov ecx, 0x511678
  004130CA: e8 51 c0 03 00                             call   0x44f120                                       ; LLVM: call 0x44f120 <?ObjectInList@ObjectTimer@@SAHK@Z+0xf40>
  004130CF: 8d 4d ec                                   lea    ecx,[ebp-0x14]                                 ; LLVM: lea ecx, [ebp - 0x14]
  004130D2: 51                                         push   ecx                                            ; LLVM: push ecx
  004130D3: 6a 03                                      push   0x3                                            ; LLVM: push 0x3
  004130D5: b9 78 16 51 00                             mov    ecx,0x511678                                   ; LLVM: mov ecx, 0x511678
  004130DA: e8 31 be 03 00                             call   0x44ef10                                       ; LLVM: call 0x44ef10 <?ObjectInList@ObjectTimer@@SAHK@Z+0xd30>
  004130DF: 8b 45 ec                                   mov    eax,DWORD PTR [ebp-0x14]                       ; LLVM: mov eax, dword ptr [ebp - 0x14]
  004130E2: 83 f8 02                                   cmp    eax,0x2                                        ; LLVM: cmp eax, 0x2
  004130E5: 77 05                                      ja     0x4130ec                                       ; LLVM: ja 0x4130ec <?InitializeODBC@Character@@SAXXZ+0x13c>
  004130E7: ff 45 b4                                   inc    DWORD PTR [ebp-0x4c]                           ; LLVM: inc dword ptr [ebp - 0x4c]
  004130EA: eb 55                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  004130EC: 83 f8 05                                   cmp    eax,0x5                                        ; LLVM: cmp eax, 0x5
  004130EF: 77 05                                      ja     0x4130f6                                       ; LLVM: ja 0x4130f6 <?InitializeODBC@Character@@SAXXZ+0x146>
  004130F1: ff 45 b8                                   inc    DWORD PTR [ebp-0x48]                           ; LLVM: inc dword ptr [ebp - 0x48]
  004130F4: eb 4b                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  004130F6: 83 f8 0a                                   cmp    eax,0xa                                        ; LLVM: cmp eax, 0xa
  004130F9: 77 05                                      ja     0x413100                                       ; LLVM: ja 0x413100 <?InitializeODBC@Character@@SAXXZ+0x150>
  004130FB: ff 45 bc                                   inc    DWORD PTR [ebp-0x44]                           ; LLVM: inc dword ptr [ebp - 0x44]
  004130FE: eb 41                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  00413100: 83 f8 19                                   cmp    eax,0x19                                       ; LLVM: cmp eax, 0x19
  00413103: 77 05                                      ja     0x41310a                                       ; LLVM: ja 0x41310a <?InitializeODBC@Character@@SAXXZ+0x15a>
  00413105: ff 45 c0                                   inc    DWORD PTR [ebp-0x40]                           ; LLVM: inc dword ptr [ebp - 0x40]
  00413108: eb 37                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  0041310A: 83 f8 32                                   cmp    eax,0x32                                       ; LLVM: cmp eax, 0x32
  0041310D: 77 05                                      ja     0x413114                                       ; LLVM: ja 0x413114 <?InitializeODBC@Character@@SAXXZ+0x164>
  0041310F: ff 45 c4                                   inc    DWORD PTR [ebp-0x3c]                           ; LLVM: inc dword ptr [ebp - 0x3c]
  00413112: eb 2d                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  00413114: 83 f8 4b                                   cmp    eax,0x4b                                       ; LLVM: cmp eax, 0x4b
  00413117: 77 05                                      ja     0x41311e                                       ; LLVM: ja 0x41311e <?InitializeODBC@Character@@SAXXZ+0x16e>
  00413119: ff 45 c8                                   inc    DWORD PTR [ebp-0x38]                           ; LLVM: inc dword ptr [ebp - 0x38]
  0041311C: eb 23                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  0041311E: 83 f8 64                                   cmp    eax,0x64                                       ; LLVM: cmp eax, 0x64
  00413121: 77 05                                      ja     0x413128                                       ; LLVM: ja 0x413128 <?InitializeODBC@Character@@SAXXZ+0x178>
  00413123: ff 45 cc                                   inc    DWORD PTR [ebp-0x34]                           ; LLVM: inc dword ptr [ebp - 0x34]
  00413126: eb 19                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  00413128: 83 f8 7d                                   cmp    eax,0x7d                                       ; LLVM: cmp eax, 0x7d
  0041312B: 77 05                                      ja     0x413132                                       ; LLVM: ja 0x413132 <?InitializeODBC@Character@@SAXXZ+0x182>
  0041312D: ff 45 d0                                   inc    DWORD PTR [ebp-0x30]                           ; LLVM: inc dword ptr [ebp - 0x30]
  00413130: eb 0f                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  00413132: 3d 96 00 00 00                             cmp    eax,0x96                                       ; LLVM: cmp eax, 0x96
  00413137: 77 05                                      ja     0x41313e                                       ; LLVM: ja 0x41313e <?InitializeODBC@Character@@SAXXZ+0x18e>
  00413139: ff 45 d4                                   inc    DWORD PTR [ebp-0x2c]                           ; LLVM: inc dword ptr [ebp - 0x2c]
  0041313C: eb 03                                      jmp    0x413141                                       ; LLVM: jmp 0x413141 <?InitializeODBC@Character@@SAXXZ+0x191>
  0041313E: ff 45 d8                                   inc    DWORD PTR [ebp-0x28]                           ; LLVM: inc dword ptr [ebp - 0x28]
  00413141: 8b 45 e8                                   mov    eax,DWORD PTR [ebp-0x18]                       ; LLVM: mov eax, dword ptr [ebp - 0x18]
  00413144: 8a 55 f3                                   mov    dl,BYTE PTR [ebp-0xd]                          ; LLVM: mov dl, byte ptr [ebp - 0xd]
  00413147: 40                                         inc    eax                                            ; LLVM: inc eax
  00413148: 56                                         push   esi                                            ; LLVM: push esi
  00413149: 8d 4d a4                                   lea    ecx,[ebp-0x5c]                                 ; LLVM: lea ecx, [ebp - 0x5c]
  0041314C: 89 45 e8                                   mov    DWORD PTR [ebp-0x18],eax                       ; LLVM: mov dword ptr [ebp - 0x18], eax
  0041314F: 88 55 a4                                   mov    BYTE PTR [ebp-0x5c],dl                         ; LLVM: mov byte ptr [ebp - 0x5c], dl
  00413152: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  00413158: 83 c9 ff                                   or     ecx,0xffffffff                                 ; LLVM: or ecx, -0x1
  0041315B: 33 c0                                      xor    eax,eax                                        ; LLVM: xor eax, eax
  0041315D: 8d 7d 84                                   lea    edi,[ebp-0x7c]                                 ; LLVM: lea edi, [ebp - 0x7c]
  00413160: f2 ae                                      repnz scas al,BYTE PTR es:[edi]                       ; LLVM: repne  scasb al, byte ptr es:[edi]
  00413162: f7 d1                                      not    ecx                                            ; LLVM: not ecx
  00413164: 49                                         dec    ecx                                            ; LLVM: dec ecx
  00413165: 8d 45 84                                   lea    eax,[ebp-0x7c]                                 ; LLVM: lea eax, [ebp - 0x7c]
  00413168: 8b d9                                      mov    ebx,ecx                                        ; LLVM: mov ebx, ecx
  0041316A: 50                                         push   eax                                            ; LLVM: push eax
  0041316B: 8d 4d a4                                   lea    ecx,[ebp-0x5c]                                 ; LLVM: lea ecx, [ebp - 0x5c]
  0041316E: ff 15 00 e5 4d 00                          call   DWORD PTR ds:0x4de500                          ; LLVM: call dword ptr [0x4de500]
  00413174: 84 c0                                      test   al,al                                          ; LLVM: test al, al
  00413176: 74 19                                      je     0x413191                                       ; LLVM: je 0x413191 <?InitializeODBC@Character@@SAXXZ+0x1e1>
  00413178: 8b 75 a8                                   mov    esi,DWORD PTR [ebp-0x58]                       ; LLVM: mov esi, dword ptr [ebp - 0x58]
  0041317B: 53                                         push   ebx                                            ; LLVM: push ebx
  0041317C: 8d 4d 84                                   lea    ecx,[ebp-0x7c]                                 ; LLVM: lea ecx, [ebp - 0x7c]
  0041317F: 2b ce                                      sub    ecx,esi                                        ; LLVM: sub ecx, esi
  00413181: 51                                         push   ecx                                            ; LLVM: push ecx
  00413182: 8d 55 a4                                   lea    edx,[ebp-0x5c]                                 ; LLVM: lea edx, [ebp - 0x5c]
  00413185: 52                                         push   edx                                            ; LLVM: push edx
  00413186: 8d 4d a4                                   lea    ecx,[ebp-0x5c]                                 ; LLVM: lea ecx, [ebp - 0x5c]
  00413189: ff 15 fc e4 4d 00                          call   DWORD PTR ds:0x4de4fc                          ; LLVM: call dword ptr [0x4de4fc]
  0041318F: eb 30                                      jmp    0x4131c1                                       ; LLVM: jmp 0x4131c1 <?InitializeODBC@Character@@SAXXZ+0x211>
  00413191: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  00413193: 53                                         push   ebx                                            ; LLVM: push ebx
  00413194: 8d 4d a4                                   lea    ecx,[ebp-0x5c]                                 ; LLVM: lea ecx, [ebp - 0x5c]
  00413197: ff 15 e0 e4 4d 00                          call   DWORD PTR ds:0x4de4e0                          ; LLVM: call dword ptr [0x4de4e0]
  0041319D: 84 c0                                      test   al,al                                          ; LLVM: test al, al
  0041319F: 74 20                                      je     0x4131c1                                       ; LLVM: je 0x4131c1 <?InitializeODBC@Character@@SAXXZ+0x211>
  004131A1: 8b 7d a8                                   mov    edi,DWORD PTR [ebp-0x58]                       ; LLVM: mov edi, dword ptr [ebp - 0x58]
  004131A4: 8b cb                                      mov    ecx,ebx                                        ; LLVM: mov ecx, ebx
  004131A6: 8b c1                                      mov    eax,ecx                                        ; LLVM: mov eax, ecx
  004131A8: c1 e9 02                                   shr    ecx,0x2                                        ; LLVM: shr ecx, 0x2
  004131AB: 8d 75 84                                   lea    esi,[ebp-0x7c]                                 ; LLVM: lea esi, [ebp - 0x7c]
  004131AE: f3 a5                                      rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]        ; LLVM: rep  movsd dword ptr es:[edi], dword ptr [esi]
  004131B0: 8b c8                                      mov    ecx,eax                                        ; LLVM: mov ecx, eax
  004131B2: 83 e1 03                                   and    ecx,0x3                                        ; LLVM: and ecx, 0x3
  004131B5: f3 a4                                      rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]          ; LLVM: rep  movsb byte ptr es:[edi], byte ptr [esi]
  004131B7: 53                                         push   ebx                                            ; LLVM: push ebx
  004131B8: 8d 4d a4                                   lea    ecx,[ebp-0x5c]                                 ; LLVM: lea ecx, [ebp - 0x5c]
  004131BB: ff 15 dc e4 4d 00                          call   DWORD PTR ds:0x4de4dc                          ; LLVM: call dword ptr [0x4de4dc]
  004131C1: 8d 4d a4                                   lea    ecx,[ebp-0x5c]                                 ; LLVM: lea ecx, [ebp - 0x5c]
  004131C4: 51                                         push   ecx                                            ; LLVM: push ecx
  004131C5: 8d 8d 70 ff ff ff                          lea    ecx,[ebp-0x90]                                 ; LLVM: lea ecx, [ebp - 0x90]
  004131CB: c6 45 fc 01                                mov    BYTE PTR [ebp-0x4],0x1                         ; LLVM: mov byte ptr [ebp - 0x4], 0x1
  004131CF: ff 15 10 e5 4d 00                          call   DWORD PTR ds:0x4de510                          ; LLVM: call dword ptr [0x4de510]
  004131D5: c7 45 80 00 00 00 00                       mov    DWORD PTR [ebp-0x80],0x0                       ; LLVM: mov dword ptr [ebp - 0x80], 0x0
  004131DC: 8d 95 70 ff ff ff                          lea    edx,[ebp-0x90]                                 ; LLVM: lea edx, [ebp - 0x90]
  004131E2: 52                                         push   edx                                            ; LLVM: push edx
  004131E3: 8d 45 98                                   lea    eax,[ebp-0x68]                                 ; LLVM: lea eax, [ebp - 0x68]
  004131E6: 50                                         push   eax                                            ; LLVM: push eax
  004131E7: 8d 4d dc                                   lea    ecx,[ebp-0x24]                                 ; LLVM: lea ecx, [ebp - 0x24]
  004131EA: c6 45 fc 02                                mov    BYTE PTR [ebp-0x4],0x2                         ; LLVM: mov byte ptr [ebp - 0x4], 0x2
  004131EE: e8 2d fb 00 00                             call   0x422d20                                       ; LLVM: call 0x422d20 <?RemoveReferenceTo@Character@@UAEXPAVUnit@@@Z+0x4e0>
  004131F3: 8b 30                                      mov    esi,DWORD PTR [eax]                            ; LLVM: mov esi, dword ptr [eax]
  004131F5: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  004131F7: 8d 8d 70 ff ff ff                          lea    ecx,[ebp-0x90]                                 ; LLVM: lea ecx, [ebp - 0x90]
  004131FD: c6 45 fc 01                                mov    BYTE PTR [ebp-0x4],0x1                         ; LLVM: mov byte ptr [ebp - 0x4], 0x1
  00413201: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  00413207: 8b 7e 1c                                   mov    edi,DWORD PTR [esi+0x1c]                       ; LLVM: mov edi, dword ptr [esi + 0x1c]
  0041320A: 47                                         inc    edi                                            ; LLVM: inc edi
  0041320B: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0041320D: 8d 4d a4                                   lea    ecx,[ebp-0x5c]                                 ; LLVM: lea ecx, [ebp - 0x5c]
  00413210: 89 7e 1c                                   mov    DWORD PTR [esi+0x1c],edi                       ; LLVM: mov dword ptr [esi + 0x1c], edi
  00413213: c6 45 fc 00                                mov    BYTE PTR [ebp-0x4],0x0                         ; LLVM: mov byte ptr [ebp - 0x4], 0x0
  00413217: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0041321D: b9 78 16 51 00                             mov    ecx,0x511678                                   ; LLVM: mov ecx, 0x511678
  00413222: e8 39 bb 03 00                             call   0x44ed60                                       ; LLVM: call 0x44ed60 <?ObjectInList@ObjectTimer@@SAHK@Z+0xb80>
  00413227: 85 c0                                      test   eax,eax                                        ; LLVM: test eax, eax
  00413229: 0f 85 7c fe ff ff                          jne    0x4130ab                                       ; LLVM: jne 0x4130ab <?InitializeODBC@Character@@SAXXZ+0xfb>
  0041322F: 33 f6                                      xor    esi,esi                                        ; LLVM: xor esi, esi
  00413231: 8b 5d e4                                   mov    ebx,DWORD PTR [ebp-0x1c]                       ; LLVM: mov ebx, dword ptr [ebp - 0x1c]
  00413234: 33 c0                                      xor    eax,eax                                        ; LLVM: xor eax, eax
  00413236: 3b de                                      cmp    ebx,esi                                        ; LLVM: cmp ebx, esi
  00413238: 74 07                                      je     0x413241                                       ; LLVM: je 0x413241 <?InitializeODBC@Character@@SAXXZ+0x291>
  0041323A: 8b 45 e8                                   mov    eax,DWORD PTR [ebp-0x18]                       ; LLVM: mov eax, dword ptr [ebp - 0x18]
  0041323D: 33 d2                                      xor    edx,edx                                        ; LLVM: xor edx, edx
  0041323F: f7 f3                                      div    ebx                                            ; LLVM: div ebx
  00413241: 83 ec 28                                   sub    esp,0x28                                       ; LLVM: sub esp, 0x28
  00413244: 8b fc                                      mov    edi,esp                                        ; LLVM: mov edi, esp
  00413246: 50                                         push   eax                                            ; LLVM: push eax
  00413247: b9 0a 00 00 00                             mov    ecx,0xa                                        ; LLVM: mov ecx, 0xa
  0041324C: 8d 75 b4                                   lea    esi,[ebp-0x4c]                                 ; LLVM: lea esi, [ebp - 0x4c]
  0041324F: f3 a5                                      rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]        ; LLVM: rep  movsd dword ptr es:[edi], dword ptr [esi]
  00413251: 8b 4d e8                                   mov    ecx,DWORD PTR [ebp-0x18]                       ; LLVM: mov ecx, dword ptr [ebp - 0x18]
  00413254: 53                                         push   ebx                                            ; LLVM: push ebx
  00413255: 51                                         push   ecx                                            ; LLVM: push ecx
  00413256: e8 45 60 02 00                             call   0x4392a0                                       ; LLVM: call 0x4392a0 <?InSafeHaven@GAME_RULES@@SAHPAVUnit@@0@Z+0x110>
  0041325B: 8b c8                                      mov    ecx,eax                                        ; LLVM: mov ecx, eax
  0041325D: e8 fe 69 02 00                             call   0x439c60                                       ; LLVM: call 0x439c60 <?InSafeHaven@GAME_RULES@@SAHPAVUnit@@0@Z+0xad0>
  00413262: b9 78 16 51 00                             mov    ecx,0x511678                                   ; LLVM: mov ecx, 0x511678
  00413267: e8 04 bb 03 00                             call   0x44ed70                                       ; LLVM: call 0x44ed70 <?ObjectInList@ObjectTimer@@SAHK@Z+0xb90>
  0041326C: b9 78 16 51 00                             mov    ecx,0x511678                                   ; LLVM: mov ecx, 0x511678
  00413271: e8 5a b7 03 00                             call   0x44e9d0                                       ; LLVM: call 0x44e9d0 <?ObjectInList@ObjectTimer@@SAHK@Z+0x7f0>
  00413276: 8b 75 e0                                   mov    esi,DWORD PTR [ebp-0x20]                       ; LLVM: mov esi, dword ptr [ebp - 0x20]
  00413279: 8b 4d e4                                   mov    ecx,DWORD PTR [ebp-0x1c]                       ; LLVM: mov ecx, dword ptr [ebp - 0x1c]
  0041327C: 85 c9                                      test   ecx,ecx                                        ; LLVM: test ecx, ecx
  0041327E: 8b 06                                      mov    eax,DWORD PTR [esi]                            ; LLVM: mov eax, dword ptr [esi]
  00413280: c7 45 fc ff ff ff ff                       mov    DWORD PTR [ebp-0x4],0xffffffff                 ; LLVM: mov dword ptr [ebp - 0x4], 0xffffffff
  00413287: 89 45 ec                                   mov    DWORD PTR [ebp-0x14],eax                       ; LLVM: mov dword ptr [ebp - 0x14], eax
  0041328A: 74 2c                                      je     0x4132b8                                       ; LLVM: je 0x4132b8 <?InitializeODBC@Character@@SAXXZ+0x308>
  0041328C: 8b c8                                      mov    ecx,eax                                        ; LLVM: mov ecx, eax
  0041328E: 3b c1                                      cmp    eax,ecx                                        ; LLVM: cmp eax, ecx
  00413290: 75 26                                      jne    0x4132b8                                       ; LLVM: jne 0x4132b8 <?InitializeODBC@Character@@SAXXZ+0x308>
  00413292: 8b 56 04                                   mov    edx,DWORD PTR [esi+0x4]                        ; LLVM: mov edx, dword ptr [esi + 0x4]
  00413295: 52                                         push   edx                                            ; LLVM: push edx
  00413296: 8d 4d dc                                   lea    ecx,[ebp-0x24]                                 ; LLVM: lea ecx, [ebp - 0x24]
  00413299: e8 42 06 01 00                             call   0x4238e0                                       ; LLVM: call 0x4238e0 <?GetInvisibleQuery@Unit@@UAEPAVQueryInvisible@1@XZ+0x980>
  0041329E: 8b 45 e0                                   mov    eax,DWORD PTR [ebp-0x20]                       ; LLVM: mov eax, dword ptr [ebp - 0x20]
  004132A1: 89 40 04                                   mov    DWORD PTR [eax+0x4],eax                        ; LLVM: mov dword ptr [eax + 0x4], eax
  004132A4: 8b 45 e0                                   mov    eax,DWORD PTR [ebp-0x20]                       ; LLVM: mov eax, dword ptr [ebp - 0x20]
  004132A7: c7 45 e4 00 00 00 00                       mov    DWORD PTR [ebp-0x1c],0x0                       ; LLVM: mov dword ptr [ebp - 0x1c], 0x0
  004132AE: 89 00                                      mov    DWORD PTR [eax],eax                            ; LLVM: mov dword ptr [eax], eax
  004132B0: 8b 45 e0                                   mov    eax,DWORD PTR [ebp-0x20]                       ; LLVM: mov eax, dword ptr [ebp - 0x20]
  004132B3: 89 40 08                                   mov    DWORD PTR [eax+0x8],eax                        ; LLVM: mov dword ptr [eax + 0x8], eax
  004132B6: eb 22                                      jmp    0x4132da                                       ; LLVM: jmp 0x4132da <?InitializeODBC@Character@@SAXXZ+0x32a>
  004132B8: 3b c6                                      cmp    eax,esi                                        ; LLVM: cmp eax, esi
  004132BA: 74 1e                                      je     0x4132da                                       ; LLVM: je 0x4132da <?InitializeODBC@Character@@SAXXZ+0x32a>
  004132BC: 8d 4d ec                                   lea    ecx,[ebp-0x14]                                 ; LLVM: lea ecx, [ebp - 0x14]
  004132BF: 8b f8                                      mov    edi,eax                                        ; LLVM: mov edi, eax
  004132C1: e8 5a 0f 01 00                             call   0x424220                                       ; LLVM: call 0x424220 <?GetInvisibleQuery@Unit@@UAEPAVQueryInvisible@1@XZ+0x12c0>
  004132C6: 57                                         push   edi                                            ; LLVM: push edi
  004132C7: 8d 45 9c                                   lea    eax,[ebp-0x64]                                 ; LLVM: lea eax, [ebp - 0x64]
  004132CA: 50                                         push   eax                                            ; LLVM: push eax
  004132CB: 8d 4d dc                                   lea    ecx,[ebp-0x24]                                 ; LLVM: lea ecx, [ebp - 0x24]
  004132CE: e8 8d 01 01 00                             call   0x423460                                       ; LLVM: call 0x423460 <?GetInvisibleQuery@Unit@@UAEPAVQueryInvisible@1@XZ+0x500>
  004132D3: 8b 45 ec                                   mov    eax,DWORD PTR [ebp-0x14]                       ; LLVM: mov eax, dword ptr [ebp - 0x14]
  004132D6: 3b c6                                      cmp    eax,esi                                        ; LLVM: cmp eax, esi
  004132D8: 75 e2                                      jne    0x4132bc                                       ; LLVM: jne 0x4132bc <?InitializeODBC@Character@@SAXXZ+0x30c>
  004132DA: 8b 4d e0                                   mov    ecx,DWORD PTR [ebp-0x20]                       ; LLVM: mov ecx, dword ptr [ebp - 0x20]
  004132DD: 51                                         push   ecx                                            ; LLVM: push ecx
  004132DE: e8 7d ed 02 00                             call   0x442060                                       ; LLVM: call 0x442060 <??4SpellEffectManager@@QAEAAV0@ABV0@@Z+0x3fe0>
  004132E3: 8b 4d f4                                   mov    ecx,DWORD PTR [ebp-0xc]                        ; LLVM: mov ecx, dword ptr [ebp - 0xc]
  004132E6: 83 c4 04                                   add    esp,0x4                                        ; LLVM: add esp, 0x4
  004132E9: 5f                                         pop    edi                                            ; LLVM: pop edi
  004132EA: 5e                                         pop    esi                                            ; LLVM: pop esi
  004132EB: 64 89 0d 00 00 00 00                       mov    DWORD PTR fs:0x0,ecx                           ; LLVM: mov dword ptr fs:[0x0], ecx
  004132F2: 5b                                         pop    ebx                                            ; LLVM: pop ebx
  004132F3: 8b e5                                      mov    esp,ebp                                        ; LLVM: mov esp, ebp
  004132F5: 5d                                         pop    ebp                                            ; LLVM: pop ebp
  004132F6: c3                                         ret                                                   ; LLVM: ret
