; T4C executable original — instructions reconstruites depuis une entree de flot et verifiees GNU+LLVM.
; 0x49EBCD : mov edx,[esi] deja couvert. Fallthrough vers 0x49EBCF, instruction partiellement masquee.
  0049EBCD: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EBCF: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EBD2: 50                                         push   eax                                            ; LLVM: push eax
  0049EBD3: 89 8d e8 fe ff ff                          mov    DWORD PTR [ebp-0x118],ecx                      ; LLVM: mov dword ptr [ebp - 0x118], ecx
  0049EBD9: 68 f0 f2 50 00                             push   0x50f2f0                                       ; LLVM: push 0x50f2f0
  0049EBDE: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EBE0: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EBE3: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EBE6: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EBE8: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EBEB: 50                                         push   eax                                            ; LLVM: push eax
  0049EBEC: 89 8d ec fe ff ff                          mov    DWORD PTR [ebp-0x114],ecx                      ; LLVM: mov dword ptr [ebp - 0x114], ecx
  0049EBF2: 68 18 e9 50 00                             push   0x50e918                                       ; LLVM: push 0x50e918
  0049EBF7: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EBF9: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EBFC: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049EBFF: 83 c9 ff                                   or     ecx,0xffffffff                                 ; LLVM: or ecx, -0x1
  0049EC02: 33 c0                                      xor    eax,eax                                        ; LLVM: xor eax, eax
  0049EC04: 8b fa                                      mov    edi,edx                                        ; LLVM: mov edi, edx
  0049EC06: f2 ae                                      repnz scas al,BYTE PTR es:[edi]                       ; LLVM: repne  scasb al, byte ptr es:[edi]
  0049EC08: f7 d1                                      not    ecx                                            ; LLVM: not ecx
  0049EC0A: 49                                         dec    ecx                                            ; LLVM: dec ecx
  0049EC0B: 51                                         push   ecx                                            ; LLVM: push ecx
  0049EC0C: 52                                         push   edx                                            ; LLVM: push edx
  0049EC0D: 8d 8d f0 fe ff ff                          lea    ecx,[ebp-0x110]                                ; LLVM: lea ecx, [ebp - 0x110]
  0049EC13: ff 15 f4 e4 4d 00                          call   DWORD PTR ds:0x4de4f4                          ; LLVM: call dword ptr [0x4de4f4]
  0049EC19: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EC1B: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EC1E: 50                                         push   eax                                            ; LLVM: push eax
  0049EC1F: 68 64 e8 50 00                             push   0x50e864                                       ; LLVM: push 0x50e864
  0049EC24: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EC26: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EC29: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EC2C: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EC2E: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EC31: 50                                         push   eax                                            ; LLVM: push eax
  0049EC32: 89 8d 00 ff ff ff                          mov    DWORD PTR [ebp-0x100],ecx                      ; LLVM: mov dword ptr [ebp - 0x100], ecx
  0049EC38: 68 e4 f2 50 00                             push   0x50f2e4                                       ; LLVM: push 0x50f2e4
  0049EC3D: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EC3F: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EC42: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EC45: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EC47: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EC4A: 50                                         push   eax                                            ; LLVM: push eax
  0049EC4B: 89 8d 04 ff ff ff                          mov    DWORD PTR [ebp-0xfc],ecx                       ; LLVM: mov dword ptr [ebp - 0xfc], ecx
  0049EC51: 68 d4 f2 50 00                             push   0x50f2d4                                       ; LLVM: push 0x50f2d4
  0049EC56: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EC58: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EC5B: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EC5E: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EC60: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EC63: 50                                         push   eax                                            ; LLVM: push eax
  0049EC64: 89 8d 08 ff ff ff                          mov    DWORD PTR [ebp-0xf8],ecx                       ; LLVM: mov dword ptr [ebp - 0xf8], ecx
  0049EC6A: 68 c4 f2 50 00                             push   0x50f2c4                                       ; LLVM: push 0x50f2c4
  0049EC6F: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EC71: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EC74: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EC77: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EC79: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EC7C: 89 8d 0c ff ff ff                          mov    DWORD PTR [ebp-0xf4],ecx                       ; LLVM: mov dword ptr [ebp - 0xf4], ecx
  0049EC82: 50                                         push   eax                                            ; LLVM: push eax
  0049EC83: 68 bc f2 50 00                             push   0x50f2bc                                       ; LLVM: push 0x50f2bc
  0049EC88: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EC8A: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EC8D: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EC90: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EC92: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EC95: 50                                         push   eax                                            ; LLVM: push eax
  0049EC96: 89 8d 10 ff ff ff                          mov    DWORD PTR [ebp-0xf0],ecx                       ; LLVM: mov dword ptr [ebp - 0xf0], ecx
  0049EC9C: 68 b0 f2 50 00                             push   0x50f2b0                                       ; LLVM: push 0x50f2b0
  0049ECA1: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ECA3: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049ECA6: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049ECA9: 8b 55 f0                                   mov    edx,DWORD PTR [ebp-0x10]                       ; LLVM: mov edx, dword ptr [ebp - 0x10]
  0049ECAC: 8b 06                                      mov    eax,DWORD PTR [esi]                            ; LLVM: mov eax, dword ptr [esi]
  0049ECAE: 89 8d 14 ff ff ff                          mov    DWORD PTR [ebp-0xec],ecx                       ; LLVM: mov dword ptr [ebp - 0xec], ecx
  0049ECB4: 8d 4d e4                                   lea    ecx,[ebp-0x1c]                                 ; LLVM: lea ecx, [ebp - 0x1c]
  0049ECB7: 51                                         push   ecx                                            ; LLVM: push ecx
  0049ECB8: 68 9c f2 50 00                             push   0x50f29c                                       ; LLVM: push 0x50f29c
  0049ECBD: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ECBF: 89 95 18 ff ff ff                          mov    DWORD PTR [ebp-0xe8],edx                       ; LLVM: mov dword ptr [ebp - 0xe8], edx
  0049ECC5: ff 50 4c                                   call   DWORD PTR [eax+0x4c]                           ; LLVM: call dword ptr [eax + 0x4c]
  0049ECC8: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049ECCB: 8b 06                                      mov    eax,DWORD PTR [esi]                            ; LLVM: mov eax, dword ptr [esi]
  0049ECCD: 8d 4d e4                                   lea    ecx,[ebp-0x1c]                                 ; LLVM: lea ecx, [ebp - 0x1c]
  0049ECD0: 51                                         push   ecx                                            ; LLVM: push ecx
  0049ECD1: 68 8c f2 50 00                             push   0x50f28c                                       ; LLVM: push 0x50f28c
  0049ECD6: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ECD8: 89 95 1c ff ff ff                          mov    DWORD PTR [ebp-0xe4],edx                       ; LLVM: mov dword ptr [ebp - 0xe4], edx
  0049ECDE: ff 50 4c                                   call   DWORD PTR [eax+0x4c]                           ; LLVM: call dword ptr [eax + 0x4c]
  0049ECE1: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049ECE4: 8b 06                                      mov    eax,DWORD PTR [esi]                            ; LLVM: mov eax, dword ptr [esi]
  0049ECE6: 8d 4d e4                                   lea    ecx,[ebp-0x1c]                                 ; LLVM: lea ecx, [ebp - 0x1c]
  0049ECE9: 51                                         push   ecx                                            ; LLVM: push ecx
  0049ECEA: 68 7c f2 50 00                             push   0x50f27c                                       ; LLVM: push 0x50f27c
  0049ECEF: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ECF1: 89 95 20 ff ff ff                          mov    DWORD PTR [ebp-0xe0],edx                       ; LLVM: mov dword ptr [ebp - 0xe0], edx
  0049ECF7: ff 50 4c                                   call   DWORD PTR [eax+0x4c]                           ; LLVM: call dword ptr [eax + 0x4c]
  0049ECFA: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049ECFD: 83 c9 ff                                   or     ecx,0xffffffff                                 ; LLVM: or ecx, -0x1
  0049ED00: 33 c0                                      xor    eax,eax                                        ; LLVM: xor eax, eax
  0049ED02: 8b fa                                      mov    edi,edx                                        ; LLVM: mov edi, edx
  0049ED04: f2 ae                                      repnz scas al,BYTE PTR es:[edi]                       ; LLVM: repne  scasb al, byte ptr es:[edi]
  0049ED06: f7 d1                                      not    ecx                                            ; LLVM: not ecx
  0049ED08: 49                                         dec    ecx                                            ; LLVM: dec ecx
  0049ED09: 51                                         push   ecx                                            ; LLVM: push ecx
  0049ED0A: 52                                         push   edx                                            ; LLVM: push edx
  0049ED0B: 8d 8d 24 ff ff ff                          lea    ecx,[ebp-0xdc]                                 ; LLVM: lea ecx, [ebp - 0xdc]
  0049ED11: ff 15 f4 e4 4d 00                          call   DWORD PTR ds:0x4de4f4                          ; LLVM: call dword ptr [0x4de4f4]
  0049ED17: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049ED19: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049ED1C: 50                                         push   eax                                            ; LLVM: push eax
  0049ED1D: 68 70 f2 50 00                             push   0x50f270                                       ; LLVM: push 0x50f270
  0049ED22: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ED24: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049ED27: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049ED2A: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049ED2C: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049ED2F: 50                                         push   eax                                            ; LLVM: push eax
  0049ED30: 89 8d 34 ff ff ff                          mov    DWORD PTR [ebp-0xcc],ecx                       ; LLVM: mov dword ptr [ebp - 0xcc], ecx
  0049ED36: 68 64 f2 50 00                             push   0x50f264                                       ; LLVM: push 0x50f264
  0049ED3B: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ED3D: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049ED40: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049ED43: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049ED45: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049ED48: 50                                         push   eax                                            ; LLVM: push eax
  0049ED49: 89 8d 38 ff ff ff                          mov    DWORD PTR [ebp-0xc8],ecx                       ; LLVM: mov dword ptr [ebp - 0xc8], ecx
  0049ED4F: 68 58 f2 50 00                             push   0x50f258                                       ; LLVM: push 0x50f258
  0049ED54: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ED56: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049ED59: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049ED5C: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049ED5E: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049ED61: 50                                         push   eax                                            ; LLVM: push eax
  0049ED62: 89 8d 3c ff ff ff                          mov    DWORD PTR [ebp-0xc4],ecx                       ; LLVM: mov dword ptr [ebp - 0xc4], ecx
  0049ED68: 68 4c f2 50 00                             push   0x50f24c                                       ; LLVM: push 0x50f24c
  0049ED6D: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ED6F: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049ED72: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049ED75: 8b fa                                      mov    edi,edx                                        ; LLVM: mov edi, edx
  0049ED77: 83 c9 ff                                   or     ecx,0xffffffff                                 ; LLVM: or ecx, -0x1
  0049ED7A: 33 c0                                      xor    eax,eax                                        ; LLVM: xor eax, eax
  0049ED7C: f2 ae                                      repnz scas al,BYTE PTR es:[edi]                       ; LLVM: repne  scasb al, byte ptr es:[edi]
  0049ED7E: f7 d1                                      not    ecx                                            ; LLVM: not ecx
  0049ED80: 49                                         dec    ecx                                            ; LLVM: dec ecx
  0049ED81: 51                                         push   ecx                                            ; LLVM: push ecx
  0049ED82: 52                                         push   edx                                            ; LLVM: push edx
  0049ED83: 8d 8d 40 ff ff ff                          lea    ecx,[ebp-0xc0]                                 ; LLVM: lea ecx, [ebp - 0xc0]
  0049ED89: ff 15 f4 e4 4d 00                          call   DWORD PTR ds:0x4de4f4                          ; LLVM: call dword ptr [0x4de4f4]
  0049ED8F: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049ED91: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049ED94: 50                                         push   eax                                            ; LLVM: push eax
  0049ED95: 68 3c f2 50 00                             push   0x50f23c                                       ; LLVM: push 0x50f23c
  0049ED9A: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049ED9C: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049ED9F: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EDA2: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EDA4: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EDA7: 50                                         push   eax                                            ; LLVM: push eax
  0049EDA8: 89 8d 50 ff ff ff                          mov    DWORD PTR [ebp-0xb0],ecx                       ; LLVM: mov dword ptr [ebp - 0xb0], ecx
  0049EDAE: 68 30 f2 50 00                             push   0x50f230                                       ; LLVM: push 0x50f230
  0049EDB3: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EDB5: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EDB8: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049EDBB: 83 c9 ff                                   or     ecx,0xffffffff                                 ; LLVM: or ecx, -0x1
  0049EDBE: 33 c0                                      xor    eax,eax                                        ; LLVM: xor eax, eax
  0049EDC0: 8b fa                                      mov    edi,edx                                        ; LLVM: mov edi, edx
  0049EDC2: f2 ae                                      repnz scas al,BYTE PTR es:[edi]                       ; LLVM: repne  scasb al, byte ptr es:[edi]
  0049EDC4: f7 d1                                      not    ecx                                            ; LLVM: not ecx
  0049EDC6: 49                                         dec    ecx                                            ; LLVM: dec ecx
  0049EDC7: 51                                         push   ecx                                            ; LLVM: push ecx
  0049EDC8: 52                                         push   edx                                            ; LLVM: push edx
  0049EDC9: 8d 8d 54 ff ff ff                          lea    ecx,[ebp-0xac]                                 ; LLVM: lea ecx, [ebp - 0xac]
  0049EDCF: ff 15 f4 e4 4d 00                          call   DWORD PTR ds:0x4de4f4                          ; LLVM: call dword ptr [0x4de4f4]
  0049EDD5: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EDD7: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EDDA: 50                                         push   eax                                            ; LLVM: push eax
  0049EDDB: 68 20 f2 50 00                             push   0x50f220                                       ; LLVM: push 0x50f220
  0049EDE0: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EDE2: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EDE5: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EDE8: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EDEA: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EDED: 50                                         push   eax                                            ; LLVM: push eax
  0049EDEE: 89 8d 64 ff ff ff                          mov    DWORD PTR [ebp-0x9c],ecx                       ; LLVM: mov dword ptr [ebp - 0x9c], ecx
  0049EDF4: 68 08 f2 50 00                             push   0x50f208                                       ; LLVM: push 0x50f208
  0049EDF9: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EDFB: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EDFE: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EE01: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EE03: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EE06: 50                                         push   eax                                            ; LLVM: push eax
  0049EE07: 89 8d 68 ff ff ff                          mov    DWORD PTR [ebp-0x98],ecx                       ; LLVM: mov dword ptr [ebp - 0x98], ecx
  0049EE0D: 68 f0 f1 50 00                             push   0x50f1f0                                       ; LLVM: push 0x50f1f0
  0049EE12: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EE14: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EE17: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EE1A: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EE1C: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EE1F: 50                                         push   eax                                            ; LLVM: push eax
  0049EE20: 89 8d 6c ff ff ff                          mov    DWORD PTR [ebp-0x94],ecx                       ; LLVM: mov dword ptr [ebp - 0x94], ecx
  0049EE26: 68 e0 f1 50 00                             push   0x50f1e0                                       ; LLVM: push 0x50f1e0
  0049EE2B: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EE2D: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EE30: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049EE33: 83 c9 ff                                   or     ecx,0xffffffff                                 ; LLVM: or ecx, -0x1
  0049EE36: 33 c0                                      xor    eax,eax                                        ; LLVM: xor eax, eax
  0049EE38: 8b fa                                      mov    edi,edx                                        ; LLVM: mov edi, edx
  0049EE3A: f2 ae                                      repnz scas al,BYTE PTR es:[edi]                       ; LLVM: repne  scasb al, byte ptr es:[edi]
  0049EE3C: f7 d1                                      not    ecx                                            ; LLVM: not ecx
  0049EE3E: 49                                         dec    ecx                                            ; LLVM: dec ecx
  0049EE3F: 51                                         push   ecx                                            ; LLVM: push ecx
  0049EE40: 52                                         push   edx                                            ; LLVM: push edx
  0049EE41: 8d 8d 70 ff ff ff                          lea    ecx,[ebp-0x90]                                 ; LLVM: lea ecx, [ebp - 0x90]
  0049EE47: ff 15 f4 e4 4d 00                          call   DWORD PTR ds:0x4de4f4                          ; LLVM: call dword ptr [0x4de4f4]
  0049EE4D: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EE4F: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EE52: 50                                         push   eax                                            ; LLVM: push eax
  0049EE53: 68 d0 f1 50 00                             push   0x50f1d0                                       ; LLVM: push 0x50f1d0
  0049EE58: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EE5A: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EE5D: 39 5d ec                                   cmp    DWORD PTR [ebp-0x14],ebx                       ; LLVM: cmp dword ptr [ebp - 0x14], ebx
  0049EE60: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EE62: 0f 95 c1                                   setne  cl                                             ; LLVM: setne cl
  0049EE65: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EE68: 50                                         push   eax                                            ; LLVM: push eax
  0049EE69: 88 4d ad                                   mov    BYTE PTR [ebp-0x53],cl                         ; LLVM: mov byte ptr [ebp - 0x53], cl
  0049EE6C: 68 b4 f1 50 00                             push   0x50f1b4                                       ; LLVM: push 0x50f1b4
  0049EE71: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EE73: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EE76: 39 5d ec                                   cmp    DWORD PTR [ebp-0x14],ebx                       ; LLVM: cmp dword ptr [ebp - 0x14], ebx
  0049EE79: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EE7B: 0f 95 c1                                   setne  cl                                             ; LLVM: setne cl
  0049EE7E: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EE81: 50                                         push   eax                                            ; LLVM: push eax
  0049EE82: 88 4d ae                                   mov    BYTE PTR [ebp-0x52],cl                         ; LLVM: mov byte ptr [ebp - 0x52], cl
  0049EE85: 68 a8 f1 50 00                             push   0x50f1a8                                       ; LLVM: push 0x50f1a8
  0049EE8A: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EE8C: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EE8F: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EE92: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EE94: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EE97: 50                                         push   eax                                            ; LLVM: push eax
  0049EE98: 89 4d 80                                   mov    DWORD PTR [ebp-0x80],ecx                       ; LLVM: mov dword ptr [ebp - 0x80], ecx
  0049EE9B: 68 a0 f1 50 00                             push   0x50f1a0                                       ; LLVM: push 0x50f1a0
  0049EEA0: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EEA2: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EEA5: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EEA8: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EEAA: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EEAD: 50                                         push   eax                                            ; LLVM: push eax
  0049EEAE: 89 4d 84                                   mov    DWORD PTR [ebp-0x7c],ecx                       ; LLVM: mov dword ptr [ebp - 0x7c], ecx
  0049EEB1: 68 98 f1 50 00                             push   0x50f198                                       ; LLVM: push 0x50f198
  0049EEB6: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EEB8: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EEBB: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EEBE: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EEC0: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EEC3: 50                                         push   eax                                            ; LLVM: push eax
  0049EEC4: 89 4d 88                                   mov    DWORD PTR [ebp-0x78],ecx                       ; LLVM: mov dword ptr [ebp - 0x78], ecx
  0049EEC7: 68 90 f1 50 00                             push   0x50f190                                       ; LLVM: push 0x50f190
  0049EECC: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EECE: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EED1: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EED4: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EED6: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EED9: 50                                         push   eax                                            ; LLVM: push eax
  0049EEDA: 89 4d 8c                                   mov    DWORD PTR [ebp-0x74],ecx                       ; LLVM: mov dword ptr [ebp - 0x74], ecx
  0049EEDD: 68 88 f1 50 00                             push   0x50f188                                       ; LLVM: push 0x50f188
  0049EEE2: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EEE4: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EEE7: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EEEA: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EEEC: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EEEF: 50                                         push   eax                                            ; LLVM: push eax
  0049EEF0: 89 4d 90                                   mov    DWORD PTR [ebp-0x70],ecx                       ; LLVM: mov dword ptr [ebp - 0x70], ecx
  0049EEF3: 68 7c f1 50 00                             push   0x50f17c                                       ; LLVM: push 0x50f17c
  0049EEF8: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EEFA: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EEFD: 8b 4d ec                                   mov    ecx,DWORD PTR [ebp-0x14]                       ; LLVM: mov ecx, dword ptr [ebp - 0x14]
  0049EF00: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EF02: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EF05: 50                                         push   eax                                            ; LLVM: push eax
  0049EF06: 89 4d 94                                   mov    DWORD PTR [ebp-0x6c],ecx                       ; LLVM: mov dword ptr [ebp - 0x6c], ecx
  0049EF09: 68 74 f1 50 00                             push   0x50f174                                       ; LLVM: push 0x50f174
  0049EF0E: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EF10: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EF13: 8b 45 ec                                   mov    eax,DWORD PTR [ebp-0x14]                       ; LLVM: mov eax, dword ptr [ebp - 0x14]
  0049EF16: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EF18: 3b c3                                      cmp    eax,ebx                                        ; LLVM: cmp eax, ebx
  0049EF1A: 0f 95 c1                                   setne  cl                                             ; LLVM: setne cl
  0049EF1D: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EF20: 50                                         push   eax                                            ; LLVM: push eax
  0049EF21: 88 4d 98                                   mov    BYTE PTR [ebp-0x68],cl                         ; LLVM: mov byte ptr [ebp - 0x68], cl
  0049EF24: 68 64 f1 50 00                             push   0x50f164                                       ; LLVM: push 0x50f164
  0049EF29: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EF2B: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EF2E: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049EF31: 83 c9 ff                                   or     ecx,0xffffffff                                 ; LLVM: or ecx, -0x1
  0049EF34: 8b fa                                      mov    edi,edx                                        ; LLVM: mov edi, edx
  0049EF36: 33 c0                                      xor    eax,eax                                        ; LLVM: xor eax, eax
  0049EF38: f2 ae                                      repnz scas al,BYTE PTR es:[edi]                       ; LLVM: repne  scasb al, byte ptr es:[edi]
  0049EF3A: f7 d1                                      not    ecx                                            ; LLVM: not ecx
  0049EF3C: 49                                         dec    ecx                                            ; LLVM: dec ecx
  0049EF3D: 51                                         push   ecx                                            ; LLVM: push ecx
  0049EF3E: 52                                         push   edx                                            ; LLVM: push edx
  0049EF3F: 8d 4d 9c                                   lea    ecx,[ebp-0x64]                                 ; LLVM: lea ecx, [ebp - 0x64]
  0049EF42: ff 15 f4 e4 4d 00                          call   DWORD PTR ds:0x4de4f4                          ; LLVM: call dword ptr [0x4de4f4]
  0049EF48: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0049EF4A: 8d 45 e4                                   lea    eax,[ebp-0x1c]                                 ; LLVM: lea eax, [ebp - 0x1c]
  0049EF4D: 50                                         push   eax                                            ; LLVM: push eax
  0049EF4E: 68 58 f1 50 00                             push   0x50f158                                       ; LLVM: push 0x50f158
  0049EF53: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049EF55: ff 52 4c                                   call   DWORD PTR [edx+0x4c]                           ; LLVM: call dword ptr [edx + 0x4c]
  0049EF58: 8b 55 ec                                   mov    edx,DWORD PTR [ebp-0x14]                       ; LLVM: mov edx, dword ptr [ebp - 0x14]
  0049EF5B: 8b 85 dc fe ff ff                          mov    eax,DWORD PTR [ebp-0x124]                      ; LLVM: mov eax, dword ptr [ebp - 0x124]
  0049EF61: 3b d3                                      cmp    edx,ebx                                        ; LLVM: cmp edx, ebx
  0049EF63: 0f 95 c1                                   setne  cl                                             ; LLVM: setne cl
  0049EF66: 3b c3                                      cmp    eax,ebx                                        ; LLVM: cmp eax, ebx
  0049EF68: 88 4d ac                                   mov    BYTE PTR [ebp-0x54],cl                         ; LLVM: mov byte ptr [ebp - 0x54], cl
  0049EF6B: 75 05                                      jne    0x49ef72                                       ; LLVM: jne 0x49ef72 <?Destroy@UnitEffectManager@@SAXXZ+0xe352>
  0049EF6D: a1 d8 e4 4d 00                             mov    eax,ds:0x4de4d8                                ; LLVM: mov eax, dword ptr [0x4de4d8]
  0049EF72: 8b 55 cc                                   mov    edx,DWORD PTR [ebp-0x34]                       ; LLVM: mov edx, dword ptr [ebp - 0x34]
  0049EF75: 8b 4a 10                                   mov    ecx,DWORD PTR [edx+0x10]                       ; LLVM: mov ecx, dword ptr [edx + 0x10]
  0049EF78: 8b 39                                      mov    edi,DWORD PTR [ecx]                            ; LLVM: mov edi, dword ptr [ecx]
  0049EF7A: 50                                         push   eax                                            ; LLVM: push eax
  0049EF7B: 8d 95 6c f6 ff ff                          lea    edx,[ebp-0x994]                                ; LLVM: lea edx, [ebp - 0x994]
  0049EF81: 68 80 ee 50 00                             push   0x50ee80                                       ; LLVM: push 0x50ee80
  0049EF86: 52                                         push   edx                                            ; LLVM: push edx
  0049EF87: e8 b4 49 f6 ff                             call   0x403940                                       ; LLVM: call 0x403940 <??4RegKeyHandler@@QAEAAV0@ABV0@@Z+0x1370>
  0049EF8C: 83 c4 0c                                   add    esp,0xc                                        ; LLVM: add esp, 0xc
  0049EF8F: 8b d7                                      mov    edx,edi                                        ; LLVM: mov edx, edi
  0049EF91: 8b 7d cc                                   mov    edi,DWORD PTR [ebp-0x34]                       ; LLVM: mov edi, dword ptr [ebp - 0x34]
  0049EF94: 8b 4f 10                                   mov    ecx,DWORD PTR [edi+0x10]                       ; LLVM: mov ecx, dword ptr [edi + 0x10]
  0049EF97: 50                                         push   eax                                            ; LLVM: push eax
  0049EF98: 8b 47 08                                   mov    eax,DWORD PTR [edi+0x8]                        ; LLVM: mov eax, dword ptr [edi + 0x8]
  0049EF9B: 50                                         push   eax                                            ; LLVM: push eax
  0049EF9C: ff 52 04                                   call   DWORD PTR [edx+0x4]                            ; LLVM: call dword ptr [edx + 0x4]
  0049EF9F: 8b 8d 74 ff ff ff                          mov    ecx,DWORD PTR [ebp-0x8c]                       ; LLVM: mov ecx, dword ptr [ebp - 0x8c]
  0049EFA5: 3b cb                                      cmp    ecx,ebx                                        ; LLVM: cmp ecx, ebx
  0049EFA7: 8b 15 d8 e4 4d 00                          mov    edx,DWORD PTR ds:0x4de4d8                      ; LLVM: mov edx, dword ptr [0x4de4d8]
  0049EFAD: 89 55 b4                                   mov    DWORD PTR [ebp-0x4c],edx                       ; LLVM: mov dword ptr [ebp - 0x4c], edx
  0049EFB0: 74 03                                      je     0x49efb5                                       ; LLVM: je 0x49efb5 <?Destroy@UnitEffectManager@@SAXXZ+0xe395>
  0049EFB2: 89 4d b4                                   mov    DWORD PTR [ebp-0x4c],ecx                       ; LLVM: mov dword ptr [ebp - 0x4c], ecx
  0049EFB5: 8b 85 58 ff ff ff                          mov    eax,DWORD PTR [ebp-0xa8]                       ; LLVM: mov eax, dword ptr [ebp - 0xa8]
  0049EFBB: 3b c3                                      cmp    eax,ebx                                        ; LLVM: cmp eax, ebx
  0049EFBD: 89 55 dc                                   mov    DWORD PTR [ebp-0x24],edx                       ; LLVM: mov dword ptr [ebp - 0x24], edx
  0049EFC0: 74 03                                      je     0x49efc5                                       ; LLVM: je 0x49efc5 <?Destroy@UnitEffectManager@@SAXXZ+0xe3a5>
  0049EFC2: 89 45 dc                                   mov    DWORD PTR [ebp-0x24],eax                       ; LLVM: mov dword ptr [ebp - 0x24], eax
  0049EFC5: 8b 85 44 ff ff ff                          mov    eax,DWORD PTR [ebp-0xbc]                       ; LLVM: mov eax, dword ptr [ebp - 0xbc]
  0049EFCB: 3b c3                                      cmp    eax,ebx                                        ; LLVM: cmp eax, ebx
  0049EFCD: 89 55 e0                                   mov    DWORD PTR [ebp-0x20],edx                       ; LLVM: mov dword ptr [ebp - 0x20], edx
  0049EFD0: 74 03                                      je     0x49efd5                                       ; LLVM: je 0x49efd5 <?Destroy@UnitEffectManager@@SAXXZ+0xe3b5>
  0049EFD2: 89 45 e0                                   mov    DWORD PTR [ebp-0x20],eax                       ; LLVM: mov dword ptr [ebp - 0x20], eax
  0049EFD5: 8b 8d 28 ff ff ff                          mov    ecx,DWORD PTR [ebp-0xd8]                       ; LLVM: mov ecx, dword ptr [ebp - 0xd8]
  0049EFDB: 3b cb                                      cmp    ecx,ebx                                        ; LLVM: cmp ecx, ebx
  0049EFDD: 75 02                                      jne    0x49efe1                                       ; LLVM: jne 0x49efe1 <?Destroy@UnitEffectManager@@SAXXZ+0xe3c1>
  0049EFDF: 8b ca                                      mov    ecx,edx                                        ; LLVM: mov ecx, edx
  0049EFE1: 8b 85 f4 fe ff ff                          mov    eax,DWORD PTR [ebp-0x10c]                      ; LLVM: mov eax, dword ptr [ebp - 0x10c]
  0049EFE7: 3b c3                                      cmp    eax,ebx                                        ; LLVM: cmp eax, ebx
  0049EFE9: 75 02                                      jne    0x49efed                                       ; LLVM: jne 0x49efed <?Destroy@UnitEffectManager@@SAXXZ+0xe3cd>
  0049EFEB: 8b c2                                      mov    eax,edx                                        ; LLVM: mov eax, edx
  0049EFED: 8b 57 10                                   mov    edx,DWORD PTR [edi+0x10]                       ; LLVM: mov edx, dword ptr [edi + 0x10]
  0049EFF0: 8b 3a                                      mov    edi,DWORD PTR [edx]                            ; LLVM: mov edi, dword ptr [edx]
  0049EFF2: 8b 55 90                                   mov    edx,DWORD PTR [ebp-0x70]                       ; LLVM: mov edx, dword ptr [ebp - 0x70]
  0049EFF5: 52                                         push   edx                                            ; LLVM: push edx
  0049EFF6: 8b 55 8c                                   mov    edx,DWORD PTR [ebp-0x74]                       ; LLVM: mov edx, dword ptr [ebp - 0x74]
  0049EFF9: 52                                         push   edx                                            ; LLVM: push edx
  0049EFFA: 8b 55 88                                   mov    edx,DWORD PTR [ebp-0x78]                       ; LLVM: mov edx, dword ptr [ebp - 0x78]
  0049EFFD: 52                                         push   edx                                            ; LLVM: push edx
  0049EFFE: 8b 55 84                                   mov    edx,DWORD PTR [ebp-0x7c]                       ; LLVM: mov edx, dword ptr [ebp - 0x7c]
  0049F001: 52                                         push   edx                                            ; LLVM: push edx
  0049F002: 8b 55 80                                   mov    edx,DWORD PTR [ebp-0x80]                       ; LLVM: mov edx, dword ptr [ebp - 0x80]
  0049F005: 52                                         push   edx                                            ; LLVM: push edx
  0049F006: 8b 55 b4                                   mov    edx,DWORD PTR [ebp-0x4c]                       ; LLVM: mov edx, dword ptr [ebp - 0x4c]
  0049F009: 52                                         push   edx                                            ; LLVM: push edx
  0049F00A: 8b 95 6c ff ff ff                          mov    edx,DWORD PTR [ebp-0x94]                       ; LLVM: mov edx, dword ptr [ebp - 0x94]
  0049F010: 52                                         push   edx                                            ; LLVM: push edx
  0049F011: 8b 95 68 ff ff ff                          mov    edx,DWORD PTR [ebp-0x98]                       ; LLVM: mov edx, dword ptr [ebp - 0x98]
  0049F017: 52                                         push   edx                                            ; LLVM: push edx
  0049F018: 8b 95 64 ff ff ff                          mov    edx,DWORD PTR [ebp-0x9c]                       ; LLVM: mov edx, dword ptr [ebp - 0x9c]
  0049F01E: 52                                         push   edx                                            ; LLVM: push edx
  0049F01F: 8b 55 dc                                   mov    edx,DWORD PTR [ebp-0x24]                       ; LLVM: mov edx, dword ptr [ebp - 0x24]
  0049F022: 52                                         push   edx                                            ; LLVM: push edx
  0049F023: 8b 95 50 ff ff ff                          mov    edx,DWORD PTR [ebp-0xb0]                       ; LLVM: mov edx, dword ptr [ebp - 0xb0]
  0049F029: 52                                         push   edx                                            ; LLVM: push edx
  0049F02A: 8b 55 e0                                   mov    edx,DWORD PTR [ebp-0x20]                       ; LLVM: mov edx, dword ptr [ebp - 0x20]
  0049F02D: 52                                         push   edx                                            ; LLVM: push edx
  0049F02E: 8b 95 3c ff ff ff                          mov    edx,DWORD PTR [ebp-0xc4]                       ; LLVM: mov edx, dword ptr [ebp - 0xc4]
  0049F034: 52                                         push   edx                                            ; LLVM: push edx
  0049F035: 8b 95 38 ff ff ff                          mov    edx,DWORD PTR [ebp-0xc8]                       ; LLVM: mov edx, dword ptr [ebp - 0xc8]
  0049F03B: 52                                         push   edx                                            ; LLVM: push edx
  0049F03C: 8b 95 34 ff ff ff                          mov    edx,DWORD PTR [ebp-0xcc]                       ; LLVM: mov edx, dword ptr [ebp - 0xcc]
  0049F042: 52                                         push   edx                                            ; LLVM: push edx
  0049F043: 8b 95 1c ff ff ff                          mov    edx,DWORD PTR [ebp-0xe4]                       ; LLVM: mov edx, dword ptr [ebp - 0xe4]
  0049F049: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F04A: 8b 8d 20 ff ff ff                          mov    ecx,DWORD PTR [ebp-0xe0]                       ; LLVM: mov ecx, dword ptr [ebp - 0xe0]
  0049F050: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F051: 8b 8d 18 ff ff ff                          mov    ecx,DWORD PTR [ebp-0xe8]                       ; LLVM: mov ecx, dword ptr [ebp - 0xe8]
  0049F057: 52                                         push   edx                                            ; LLVM: push edx
  0049F058: 8b 95 14 ff ff ff                          mov    edx,DWORD PTR [ebp-0xec]                       ; LLVM: mov edx, dword ptr [ebp - 0xec]
  0049F05E: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F05F: 8b 8d 10 ff ff ff                          mov    ecx,DWORD PTR [ebp-0xf0]                       ; LLVM: mov ecx, dword ptr [ebp - 0xf0]
  0049F065: 52                                         push   edx                                            ; LLVM: push edx
  0049F066: 8b 95 0c ff ff ff                          mov    edx,DWORD PTR [ebp-0xf4]                       ; LLVM: mov edx, dword ptr [ebp - 0xf4]
  0049F06C: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F06D: 8b 8d 08 ff ff ff                          mov    ecx,DWORD PTR [ebp-0xf8]                       ; LLVM: mov ecx, dword ptr [ebp - 0xf8]
  0049F073: 52                                         push   edx                                            ; LLVM: push edx
  0049F074: 8b 95 04 ff ff ff                          mov    edx,DWORD PTR [ebp-0xfc]                       ; LLVM: mov edx, dword ptr [ebp - 0xfc]
  0049F07A: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F07B: 8b 8d 00 ff ff ff                          mov    ecx,DWORD PTR [ebp-0x100]                      ; LLVM: mov ecx, dword ptr [ebp - 0x100]
  0049F081: 52                                         push   edx                                            ; LLVM: push edx
  0049F082: 8b 95 ec fe ff ff                          mov    edx,DWORD PTR [ebp-0x114]                      ; LLVM: mov edx, dword ptr [ebp - 0x114]
  0049F088: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F089: 50                                         push   eax                                            ; LLVM: push eax
  0049F08A: 8b 85 e8 fe ff ff                          mov    eax,DWORD PTR [ebp-0x118]                      ; LLVM: mov eax, dword ptr [ebp - 0x118]
  0049F090: 52                                         push   edx                                            ; LLVM: push edx
  0049F091: 50                                         push   eax                                            ; LLVM: push eax
  0049F092: 8d 8d 6c f6 ff ff                          lea    ecx,[ebp-0x994]                                ; LLVM: lea ecx, [ebp - 0x994]
  0049F098: 68 a0 ef 50 00                             push   0x50efa0                                       ; LLVM: push 0x50efa0
  0049F09D: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F09E: e8 9d 48 f6 ff                             call   0x403940                                       ; LLVM: call 0x403940 <??4RegKeyHandler@@QAEAAV0@ABV0@@Z+0x1370>
  0049F0A3: 83 c4 78                                   add    esp,0x78                                       ; LLVM: add esp, 0x78
  0049F0A6: 89 7d e0                                   mov    DWORD PTR [ebp-0x20],edi                       ; LLVM: mov dword ptr [ebp - 0x20], edi
  0049F0A9: 8b 7d cc                                   mov    edi,DWORD PTR [ebp-0x34]                       ; LLVM: mov edi, dword ptr [ebp - 0x34]
  0049F0AC: 8b 57 0c                                   mov    edx,DWORD PTR [edi+0xc]                        ; LLVM: mov edx, dword ptr [edi + 0xc]
  0049F0AF: 8b 4f 10                                   mov    ecx,DWORD PTR [edi+0x10]                       ; LLVM: mov ecx, dword ptr [edi + 0x10]
  0049F0B2: 50                                         push   eax                                            ; LLVM: push eax
  0049F0B3: 8b 45 e0                                   mov    eax,DWORD PTR [ebp-0x20]                       ; LLVM: mov eax, dword ptr [ebp - 0x20]
  0049F0B6: 52                                         push   edx                                            ; LLVM: push edx
  0049F0B7: ff 50 04                                   call   DWORD PTR [eax+0x4]                            ; LLVM: call dword ptr [eax + 0x4]
  0049F0BA: 8d 8d a4 fe ff ff                          lea    ecx,[ebp-0x15c]                                ; LLVM: lea ecx, [ebp - 0x15c]
  0049F0C0: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F0C1: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F0C2: 83 c7 1c                                   add    edi,0x1c                                       ; LLVM: add edi, 0x1c
  0049F0C5: 54                                         push   esp                                            ; LLVM: push esp
  0049F0C6: 8b cf                                      mov    ecx,edi                                        ; LLVM: mov ecx, edi
  0049F0C8: e8 f3 0a 00 00                             call   0x49fbc0                                       ; LLVM: call 0x49fbc0 <?Destroy@UnitEffectManager@@SAXXZ+0xefa0>
  0049F0CD: 8d 55 c8                                   lea    edx,[ebp-0x38]                                 ; LLVM: lea edx, [ebp - 0x38]
  0049F0D0: 52                                         push   edx                                            ; LLVM: push edx
  0049F0D1: 8b cf                                      mov    ecx,edi                                        ; LLVM: mov ecx, edi
  0049F0D3: e8 f8 0d 00 00                             call   0x49fed0                                       ; LLVM: call 0x49fed0 <?Destroy@UnitEffectManager@@SAXXZ+0xf2b0>
  0049F0D8: 8b 47 04                                   mov    eax,DWORD PTR [edi+0x4]                        ; LLVM: mov eax, dword ptr [edi + 0x4]
  0049F0DB: 3b c3                                      cmp    eax,ebx                                        ; LLVM: cmp eax, ebx
  0049F0DD: 75 05                                      jne    0x49f0e4                                       ; LLVM: jne 0x49f0e4 <?Destroy@UnitEffectManager@@SAXXZ+0xe4c4>
  0049F0DF: 89 5d e0                                   mov    DWORD PTR [ebp-0x20],ebx                       ; LLVM: mov dword ptr [ebp - 0x20], ebx
  0049F0E2: eb 19                                      jmp    0x49f0fd                                       ; LLVM: jmp 0x49f0fd <?Destroy@UnitEffectManager@@SAXXZ+0xe4dd>
  0049F0E4: 8b 7f 08                                   mov    edi,DWORD PTR [edi+0x8]                        ; LLVM: mov edi, dword ptr [edi + 0x8]
  0049F0E7: 2b f8                                      sub    edi,eax                                        ; LLVM: sub edi, eax
  0049F0E9: b8 79 78 78 78                             mov    eax,0x78787879                                 ; LLVM: mov eax, 0x78787879
  0049F0EE: f7 ef                                      imul   edi                                            ; LLVM: imul edi
  0049F0F0: c1 fa 07                                   sar    edx,0x7                                        ; LLVM: sar edx, 0x7
  0049F0F3: 8b c2                                      mov    eax,edx                                        ; LLVM: mov eax, edx
  0049F0F5: c1 e8 1f                                   shr    eax,0x1f                                       ; LLVM: shr eax, 0x1f
  0049F0F8: 03 d0                                      add    edx,eax                                        ; LLVM: add edx, eax
  0049F0FA: 89 55 e0                                   mov    DWORD PTR [ebp-0x20],edx                       ; LLVM: mov dword ptr [ebp - 0x20], edx
  0049F0FD: 8d 8d d8 fe ff ff                          lea    ecx,[ebp-0x128]                                ; LLVM: lea ecx, [ebp - 0x128]
  0049F103: 51                                         push   ecx                                            ; LLVM: push ecx
  0049F104: 8d 8d 90 fe ff ff                          lea    ecx,[ebp-0x170]                                ; LLVM: lea ecx, [ebp - 0x170]
  0049F10A: ff 15 10 e5 4d 00                          call   DWORD PTR ds:0x4de510                          ; LLVM: call dword ptr [0x4de510]
  0049F110: 89 9d a0 fe ff ff                          mov    DWORD PTR [ebp-0x160],ebx                      ; LLVM: mov dword ptr [ebp - 0x160], ebx
  0049F116: 8d 95 90 fe ff ff                          lea    edx,[ebp-0x170]                                ; LLVM: lea edx, [ebp - 0x170]
  0049F11C: 52                                         push   edx                                            ; LLVM: push edx
  0049F11D: 8d 45 c0                                   lea    eax,[ebp-0x40]                                 ; LLVM: lea eax, [ebp - 0x40]
  0049F120: 50                                         push   eax                                            ; LLVM: push eax
  0049F121: 8d 4d d0                                   lea    ecx,[ebp-0x30]                                 ; LLVM: lea ecx, [ebp - 0x30]
  0049F124: c6 45 fc 0c                                mov    BYTE PTR [ebp-0x4],0xc                         ; LLVM: mov byte ptr [ebp - 0x4], 0xc
  0049F128: e8 f3 3b f8 ff                             call   0x422d20                                       ; LLVM: call 0x422d20 <?RemoveReferenceTo@Character@@UAEXPAVUnit@@@Z+0x4e0>
  0049F12D: 8b 38                                      mov    edi,DWORD PTR [eax]                            ; LLVM: mov edi, dword ptr [eax]
  0049F12F: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0049F131: 8d 8d 90 fe ff ff                          lea    ecx,[ebp-0x170]                                ; LLVM: lea ecx, [ebp - 0x170]
  0049F137: c6 45 fc 0b                                mov    BYTE PTR [ebp-0x4],0xb                         ; LLVM: mov byte ptr [ebp - 0x4], 0xb
  0049F13B: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0049F141: 8b 4d e0                                   mov    ecx,DWORD PTR [ebp-0x20]                       ; LLVM: mov ecx, dword ptr [ebp - 0x20]
  0049F144: 49                                         dec    ecx                                            ; LLVM: dec ecx
  0049F145: 89 4f 1c                                   mov    DWORD PTR [edi+0x1c],ecx                       ; LLVM: mov dword ptr [edi + 0x1c], ecx
  0049F148: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0049F14A: e8 05 2a 03 00                             call   0x4d1b54                                       ; LLVM: call 0x4d1b54 <ExpFltr_end+0x524>
  0049F14F: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0049F151: 8d 4d 9c                                   lea    ecx,[ebp-0x64]                                 ; LLVM: lea ecx, [ebp - 0x64]
  0049F154: c6 45 fc 15                                mov    BYTE PTR [ebp-0x4],0x15                        ; LLVM: mov byte ptr [ebp - 0x4], 0x15
  0049F158: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0049F15E: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0049F160: 8d 8d 70 ff ff ff                          lea    ecx,[ebp-0x90]                                 ; LLVM: lea ecx, [ebp - 0x90]
  0049F166: c6 45 fc 14                                mov    BYTE PTR [ebp-0x4],0x14                        ; LLVM: mov byte ptr [ebp - 0x4], 0x14
  0049F16A: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0049F170: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0049F172: 8d 8d 54 ff ff ff                          lea    ecx,[ebp-0xac]                                 ; LLVM: lea ecx, [ebp - 0xac]
  0049F178: c6 45 fc 13                                mov    BYTE PTR [ebp-0x4],0x13                        ; LLVM: mov byte ptr [ebp - 0x4], 0x13
  0049F17C: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0049F182: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0049F184: 8d 8d 40 ff ff ff                          lea    ecx,[ebp-0xc0]                                 ; LLVM: lea ecx, [ebp - 0xc0]
  0049F18A: c6 45 fc 12                                mov    BYTE PTR [ebp-0x4],0x12                        ; LLVM: mov byte ptr [ebp - 0x4], 0x12
  0049F18E: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0049F194: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0049F196: 8d 8d 24 ff ff ff                          lea    ecx,[ebp-0xdc]                                 ; LLVM: lea ecx, [ebp - 0xdc]
  0049F19C: c6 45 fc 11                                mov    BYTE PTR [ebp-0x4],0x11                        ; LLVM: mov byte ptr [ebp - 0x4], 0x11
  0049F1A0: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0049F1A6: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0049F1A8: 8d 8d f0 fe ff ff                          lea    ecx,[ebp-0x110]                                ; LLVM: lea ecx, [ebp - 0x110]
  0049F1AE: c6 45 fc 10                                mov    BYTE PTR [ebp-0x4],0x10                        ; LLVM: mov byte ptr [ebp - 0x4], 0x10
  0049F1B2: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0049F1B8: 6a 01                                      push   0x1                                            ; LLVM: push 0x1
  0049F1BA: 8d 8d d8 fe ff ff                          lea    ecx,[ebp-0x128]                                ; LLVM: lea ecx, [ebp - 0x128]
  0049F1C0: c6 45 fc 0f                                mov    BYTE PTR [ebp-0x4],0xf                         ; LLVM: mov byte ptr [ebp - 0x4], 0xf
  0049F1C4: ff 15 14 e5 4d 00                          call   DWORD PTR ds:0x4de514                          ; LLVM: call dword ptr [0x4de514]
  0049F1CA: 8d 8d c4 fe ff ff                          lea    ecx,[ebp-0x13c]                                ; LLVM: lea ecx, [ebp - 0x13c]
  0049F1D0: c6 45 fc 0e                                mov    BYTE PTR [ebp-0x4],0xe                         ; LLVM: mov byte ptr [ebp - 0x4], 0xe
  0049F1D4: e8 a7 0c 00 00                             call   0x49fe80                                       ; LLVM: call 0x49fe80 <?Destroy@UnitEffectManager@@SAXXZ+0xf260>
  0049F1D9: 8d 8d b4 fe ff ff                          lea    ecx,[ebp-0x14c]                                ; LLVM: lea ecx, [ebp - 0x14c]
  0049F1DF: c6 45 fc 0d                                mov    BYTE PTR [ebp-0x4],0xd                         ; LLVM: mov byte ptr [ebp - 0x4], 0xd
  0049F1E3: e8 d8 0b 00 00                             call   0x49fdc0                                       ; LLVM: call 0x49fdc0 <?Destroy@UnitEffectManager@@SAXXZ+0xf1a0>
  0049F1E8: 8d 8d a4 fe ff ff                          lea    ecx,[ebp-0x15c]                                ; LLVM: lea ecx, [ebp - 0x15c]
  0049F1EE: c6 45 fc 01                                mov    BYTE PTR [ebp-0x4],0x1                         ; LLVM: mov byte ptr [ebp - 0x4], 0x1
