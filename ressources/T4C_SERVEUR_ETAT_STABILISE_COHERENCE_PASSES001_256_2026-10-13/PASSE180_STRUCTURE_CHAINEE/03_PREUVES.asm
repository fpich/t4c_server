; T4C executable original — instructions reconstruites depuis une entree de flot et verifiees GNU+LLVM.
; 0x44F5C7 : mov eax,[esi+0x24] deja couvert. Fallthrough vers 0x44F5CA, instruction partiellement masquee.
  0044F5C7: 8b 46 24                                   mov    eax,DWORD PTR [esi+0x24]                       ; LLVM: mov eax, dword ptr [esi + 0x24]
  0044F5CA: 89 46 20                                   mov    DWORD PTR [esi+0x20],eax                       ; LLVM: mov dword ptr [esi + 0x20], eax
  0044F5CD: 89 7e 40                                   mov    DWORD PTR [esi+0x40],edi                       ; LLVM: mov dword ptr [esi + 0x40], edi
  0044F5D0: c6 46 34 08                                mov    BYTE PTR [esi+0x34],0x8                        ; LLVM: mov byte ptr [esi + 0x34], 0x8
  0044F5D4: bb 01 00 00 00                             mov    ebx,0x1                                        ; LLVM: mov ebx, 0x1
  0044F5D9: 39 7e 40                                   cmp    DWORD PTR [esi+0x40],edi                       ; LLVM: cmp dword ptr [esi + 0x40], edi
  0044F5DC: 74 0a                                      je     0x44f5e8                                       ; LLVM: je 0x44f5e8 <?ObjectInList@ObjectTimer@@SAHK@Z+0x1408>
  0044F5DE: 8b 4e 20                                   mov    ecx,DWORD PTR [esi+0x20]                       ; LLVM: mov ecx, dword ptr [esi + 0x20]
  0044F5E1: 8b 11                                      mov    edx,DWORD PTR [ecx]                            ; LLVM: mov edx, dword ptr [ecx]
  0044F5E3: 89 56 20                                   mov    DWORD PTR [esi+0x20],edx                       ; LLVM: mov dword ptr [esi + 0x20], edx
  0044F5E6: eb 03                                      jmp    0x44f5eb                                       ; LLVM: jmp 0x44f5eb <?ObjectInList@ObjectTimer@@SAHK@Z+0x140b>
  0044F5E8: 89 5e 40                                   mov    DWORD PTR [esi+0x40],ebx                       ; LLVM: mov dword ptr [esi + 0x40], ebx
  0044F5EB: 8b 46 20                                   mov    eax,DWORD PTR [esi+0x20]                       ; LLVM: mov eax, dword ptr [esi + 0x20]
  0044F5EE: 3b c7                                      cmp    eax,edi                                        ; LLVM: cmp eax, edi
  0044F5F0: 0f 84 c9 00 00 00                          je     0x44f6bf                                       ; LLVM: je 0x44f6bf <?ObjectInList@ObjectTimer@@SAHK@Z+0x14df>
  0044F5F6: 8b 4e 28                                   mov    ecx,DWORD PTR [esi+0x28]                       ; LLVM: mov ecx, dword ptr [esi + 0x28]
  0044F5F9: 89 46 2c                                   mov    DWORD PTR [esi+0x2c],eax                       ; LLVM: mov dword ptr [esi + 0x2c], eax
  0044F5FC: ff 4e 38                                   dec    DWORD PTR [esi+0x38]                           ; LLVM: dec dword ptr [esi + 0x38]
  0044F5FF: 8b 46 20                                   mov    eax,DWORD PTR [esi+0x20]                       ; LLVM: mov eax, dword ptr [esi + 0x20]
  0044F602: 3b c1                                      cmp    eax,ecx                                        ; LLVM: cmp eax, ecx
  0044F604: 74 3c                                      je     0x44f642                                       ; LLVM: je 0x44f642 <?ObjectInList@ObjectTimer@@SAHK@Z+0x1462>
  0044F606: 3b 46 24                                   cmp    eax,DWORD PTR [esi+0x24]                       ; LLVM: cmp eax, dword ptr [esi + 0x24]
  0044F609: 74 33                                      je     0x44f63e                                       ; LLVM: je 0x44f63e <?ObjectInList@ObjectTimer@@SAHK@Z+0x145e>
  0044F60B: 8b 08                                      mov    ecx,DWORD PTR [eax]                            ; LLVM: mov ecx, dword ptr [eax]
  0044F60D: 8b 50 04                                   mov    edx,DWORD PTR [eax+0x4]                        ; LLVM: mov edx, dword ptr [eax + 0x4]
  0044F610: 89 51 04                                   mov    DWORD PTR [ecx+0x4],edx                        ; LLVM: mov dword ptr [ecx + 0x4], edx
  0044F613: 8b 46 20                                   mov    eax,DWORD PTR [esi+0x20]                       ; LLVM: mov eax, dword ptr [esi + 0x20]
  0044F616: 8b 48 04                                   mov    ecx,DWORD PTR [eax+0x4]                        ; LLVM: mov ecx, dword ptr [eax + 0x4]
  0044F619: 8b 10                                      mov    edx,DWORD PTR [eax]                            ; LLVM: mov edx, dword ptr [eax]
  0044F61B: 89 11                                      mov    DWORD PTR [ecx],edx                            ; LLVM: mov dword ptr [ecx], edx
  0044F61D: 8b 46 40                                   mov    eax,DWORD PTR [esi+0x40]                       ; LLVM: mov eax, dword ptr [esi + 0x40]
  0044F620: 3b c3                                      cmp    eax,ebx                                        ; LLVM: cmp eax, ebx
  0044F622: 75 0b                                      jne    0x44f62f                                       ; LLVM: jne 0x44f62f <?ObjectInList@ObjectTimer@@SAHK@Z+0x144f>
  0044F624: 8b 46 20                                   mov    eax,DWORD PTR [esi+0x20]                       ; LLVM: mov eax, dword ptr [esi + 0x20]
  0044F627: 8b 48 04                                   mov    ecx,DWORD PTR [eax+0x4]                        ; LLVM: mov ecx, dword ptr [eax + 0x4]
  0044F62A: 89 4e 20                                   mov    DWORD PTR [esi+0x20],ecx                       ; LLVM: mov dword ptr [esi + 0x20], ecx
  0044F62D: eb 62                                      jmp    0x44f691                                       ; LLVM: jmp 0x44f691 <?ObjectInList@ObjectTimer@@SAHK@Z+0x14b1>
  0044F62F: 83 f8 02                                   cmp    eax,0x2                                        ; LLVM: cmp eax, 0x2
  0044F632: 75 5d                                      jne    0x44f691                                       ; LLVM: jne 0x44f691 <?ObjectInList@ObjectTimer@@SAHK@Z+0x14b1>
  0044F634: 8b 56 20                                   mov    edx,DWORD PTR [esi+0x20]                       ; LLVM: mov edx, dword ptr [esi + 0x20]
  0044F637: 8b 02                                      mov    eax,DWORD PTR [edx]                            ; LLVM: mov eax, dword ptr [edx]
  0044F639: 89 46 20                                   mov    DWORD PTR [esi+0x20],eax                       ; LLVM: mov dword ptr [esi + 0x20], eax
  0044F63C: eb 53                                      jmp    0x44f691                                       ; LLVM: jmp 0x44f691 <?ObjectInList@ObjectTimer@@SAHK@Z+0x14b1>
  0044F63E: 3b c1                                      cmp    eax,ecx                                        ; LLVM: cmp eax, ecx
  0044F640: 75 23                                      jne    0x44f665                                       ; LLVM: jne 0x44f665 <?ObjectInList@ObjectTimer@@SAHK@Z+0x1485>
  0044F642: 3b 46 24                                   cmp    eax,DWORD PTR [esi+0x24]                       ; LLVM: cmp eax, dword ptr [esi + 0x24]
  0044F645: 74 23                                      je     0x44f66a                                       ; LLVM: je 0x44f66a <?ObjectInList@ObjectTimer@@SAHK@Z+0x148a>
  0044F647: 8b 48 04                                   mov    ecx,DWORD PTR [eax+0x4]                        ; LLVM: mov ecx, dword ptr [eax + 0x4]
  0044F64A: 89 39                                      mov    DWORD PTR [ecx],edi                            ; LLVM: mov dword ptr [ecx], edi
  0044F64C: 8b 56 20                                   mov    edx,DWORD PTR [esi+0x20]                       ; LLVM: mov edx, dword ptr [esi + 0x20]
  0044F64F: 8b 42 04                                   mov    eax,DWORD PTR [edx+0x4]                        ; LLVM: mov eax, dword ptr [edx + 0x4]
  0044F652: 89 46 28                                   mov    DWORD PTR [esi+0x28],eax                       ; LLVM: mov dword ptr [esi + 0x28], eax
  0044F655: 83 7e 40 02                                cmp    DWORD PTR [esi+0x40],0x2                       ; LLVM: cmp dword ptr [esi + 0x40], 0x2
  0044F659: 8b ca                                      mov    ecx,edx                                        ; LLVM: mov ecx, edx
  0044F65B: 8b 51 04                                   mov    edx,DWORD PTR [ecx+0x4]                        ; LLVM: mov edx, dword ptr [ecx + 0x4]
  0044F65E: 89 56 20                                   mov    DWORD PTR [esi+0x20],edx                       ; LLVM: mov dword ptr [esi + 0x20], edx
  0044F661: 75 2e                                      jne    0x44f691                                       ; LLVM: jne 0x44f691 <?ObjectInList@ObjectTimer@@SAHK@Z+0x14b1>
  0044F663: eb 29                                      jmp    0x44f68e                                       ; LLVM: jmp 0x44f68e <?ObjectInList@ObjectTimer@@SAHK@Z+0x14ae>
  0044F665: 3b 46 24                                   cmp    eax,DWORD PTR [esi+0x24]                       ; LLVM: cmp eax, dword ptr [esi + 0x24]
  0044F668: 75 1b                                      jne    0x44f685                                       ; LLVM: jne 0x44f685 <?ObjectInList@ObjectTimer@@SAHK@Z+0x14a5>
  0044F66A: 3b c1                                      cmp    eax,ecx                                        ; LLVM: cmp eax, ecx
  0044F66C: 74 17                                      je     0x44f685                                       ; LLVM: je 0x44f685 <?ObjectInList@ObjectTimer@@SAHK@Z+0x14a5>
  0044F66E: 8b 00                                      mov    eax,DWORD PTR [eax]                            ; LLVM: mov eax, dword ptr [eax]
  0044F670: 89 78 04                                   mov    DWORD PTR [eax+0x4],edi                        ; LLVM: mov dword ptr [eax + 0x4], edi
  0044F673: 8b 4e 20                                   mov    ecx,DWORD PTR [esi+0x20]                       ; LLVM: mov ecx, dword ptr [esi + 0x20]
  0044F676: 8b 01                                      mov    eax,DWORD PTR [ecx]                            ; LLVM: mov eax, dword ptr [ecx]
  0044F678: 89 46 20                                   mov    DWORD PTR [esi+0x20],eax                       ; LLVM: mov dword ptr [esi + 0x20], eax
  0044F67B: 89 46 24                                   mov    DWORD PTR [esi+0x24],eax                       ; LLVM: mov dword ptr [esi + 0x24], eax
  0044F67E: 39 5e 40                                   cmp    DWORD PTR [esi+0x40],ebx                       ; LLVM: cmp dword ptr [esi + 0x40], ebx
  0044F681: 75 0e                                      jne    0x44f691                                       ; LLVM: jne 0x44f691 <?ObjectInList@ObjectTimer@@SAHK@Z+0x14b1>
  0044F683: eb 09                                      jmp    0x44f68e                                       ; LLVM: jmp 0x44f68e <?ObjectInList@ObjectTimer@@SAHK@Z+0x14ae>
  0044F685: 89 7e 20                                   mov    DWORD PTR [esi+0x20],edi                       ; LLVM: mov dword ptr [esi + 0x20], edi
  0044F688: 89 7e 24                                   mov    DWORD PTR [esi+0x24],edi                       ; LLVM: mov dword ptr [esi + 0x24], edi
  0044F68B: 89 7e 28                                   mov    DWORD PTR [esi+0x28],edi                       ; LLVM: mov dword ptr [esi + 0x28], edi
  0044F68E: 89 7e 40                                   mov    DWORD PTR [esi+0x40],edi                       ; LLVM: mov dword ptr [esi + 0x40], edi
  0044F691: 8b 56 2c                                   mov    edx,DWORD PTR [esi+0x2c]                       ; LLVM: mov edx, dword ptr [esi + 0x2c]
  0044F694: 8b 7a 08                                   mov    edi,DWORD PTR [edx+0x8]                        ; LLVM: mov edi, dword ptr [edx + 0x8]
  0044F697: 85 ff                                      test   edi,edi                                        ; LLVM: test edi, edi
  0044F699: 74 11                                      je     0x44f6ac                                       ; LLVM: je 0x44f6ac <?ObjectInList@ObjectTimer@@SAHK@Z+0x14cc>
  0044F69B: 8d 4f 04                                   lea    ecx,[edi+0x4]                                  ; LLVM: lea ecx, [edi + 0x4]
  0044F69E: e8 9d 23 08 00                             call   0x4d1a40                                       ; LLVM: call 0x4d1a40 <ExpFltr_end+0x410>
  0044F6A3: 57                                         push   edi                                            ; LLVM: push edi
  0044F6A4: e8 b7 29 ff ff                             call   0x442060                                       ; LLVM: call 0x442060 <??4SpellEffectManager@@QAEAAV0@ABV0@@Z+0x3fe0>
  0044F6A9: 83 c4 04                                   add    esp,0x4                                        ; LLVM: add esp, 0x4
  0044F6AC: 8b 46 2c                                   mov    eax,DWORD PTR [esi+0x2c]                       ; LLVM: mov eax, dword ptr [esi + 0x2c]
  0044F6AF: 50                                         push   eax                                            ; LLVM: push eax
  0044F6B0: e8 ab 29 ff ff                             call   0x442060                                       ; LLVM: call 0x442060 <??4SpellEffectManager@@QAEAAV0@ABV0@@Z+0x3fe0>
  0044F6B5: 83 c4 04                                   add    esp,0x4                                        ; LLVM: add esp, 0x4
  0044F6B8: 33 ff                                      xor    edi,edi                                        ; LLVM: xor edi, edi
  0044F6BA: e9 1a ff ff ff                             jmp    0x44f5d9                                       ; LLVM: jmp 0x44f5d9 <?ObjectInList@ObjectTimer@@SAHK@Z+0x13f9>
  0044F6BF: 39 7e 40                                   cmp    DWORD PTR [esi+0x40],edi                       ; LLVM: cmp dword ptr [esi + 0x40], edi
  0044F6C2: 74 04                                      je     0x44f6c8                                       ; LLVM: je 0x44f6c8 <?ObjectInList@ObjectTimer@@SAHK@Z+0x14e8>
  0044F6C4: c6 46 34 07                                mov    BYTE PTR [esi+0x34],0x7                        ; LLVM: mov byte ptr [esi + 0x34], 0x7
  0044F6C8: 8b 4d 08                                   mov    ecx,DWORD PTR [ebp+0x8]                        ; LLVM: mov ecx, dword ptr [ebp + 0x8]
  0044F6CB: 89 7e 40                                   mov    DWORD PTR [esi+0x40],edi                       ; LLVM: mov dword ptr [esi + 0x40], edi
  0044F6CE: e8 fd f2 ff ff                             call   0x44e9d0                                       ; LLVM: call 0x44e9d0 <?ObjectInList@ObjectTimer@@SAHK@Z+0x7f0>
  0044F6D3: 3b f7                                      cmp    esi,edi                                        ; LLVM: cmp esi, edi
  0044F6D5: 74 07                                      je     0x44f6de                                       ; LLVM: je 0x44f6de <?ObjectInList@ObjectTimer@@SAHK@Z+0x14fe>
  0044F6D7: 8b 16                                      mov    edx,DWORD PTR [esi]                            ; LLVM: mov edx, dword ptr [esi]
  0044F6D9: 53                                         push   ebx                                            ; LLVM: push ebx
  0044F6DA: 8b ce                                      mov    ecx,esi                                        ; LLVM: mov ecx, esi
  0044F6DC: ff 12                                      call   DWORD PTR [edx]                                ; LLVM: call dword ptr [edx]
  0044F6DE: 8b 45 e8                                   mov    eax,DWORD PTR [ebp-0x18]                       ; LLVM: mov eax, dword ptr [ebp - 0x18]
  0044F6E1: 50                                         push   eax                                            ; LLVM: push eax
  0044F6E2: e8 79 29 ff ff                             call   0x442060                                       ; LLVM: call 0x442060 <??4SpellEffectManager@@QAEAAV0@ABV0@@Z+0x3fe0>
  0044F6E7: 8b 7d 08                                   mov    edi,DWORD PTR [ebp+0x8]                        ; LLVM: mov edi, dword ptr [ebp + 0x8]
  0044F6EA: 83 c4 04                                   add    esp,0x4                                        ; LLVM: add esp, 0x4
