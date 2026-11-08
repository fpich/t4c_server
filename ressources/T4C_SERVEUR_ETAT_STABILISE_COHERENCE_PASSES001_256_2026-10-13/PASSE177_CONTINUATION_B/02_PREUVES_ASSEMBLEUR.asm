; Instructions extraites du PE ; sources GNU objdump et LLVM objdump
; Le masque historique est conserve tel quel hors des nouvelles plages.
  004A8DA8: 6a 01                                         push   0x1                                  ; llvm: push	0x1
  004A8DAA: 8d 4d ac                                      lea    ecx,[ebp-0x54]                       ; llvm: lea	ecx, [ebp - 0x54]
  004A8DAD: c6 45 fc 17                                   mov    BYTE PTR [ebp-0x4],0x17              ; llvm: mov	byte ptr [ebp - 0x4], 0x17
  004A8DB1: ff 15 14 e5 4d 00                             call   DWORD PTR ds:0x4de514                ; llvm: call	dword ptr [0x4de514]
  004A8DB7: 6a 01                                         push   0x1                                  ; llvm: push	0x1
  004A8DB9: 8d 8d 74 ff ff ff                             lea    ecx,[ebp-0x8c]                       ; llvm: lea	ecx, [ebp - 0x8c]
  004A8DBF: c6 45 fc 16                                   mov    BYTE PTR [ebp-0x4],0x16              ; llvm: mov	byte ptr [ebp - 0x4], 0x16
  004A8DC3: ff 15 14 e5 4d 00                             call   DWORD PTR ds:0x4de514                ; llvm: call	dword ptr [0x4de514]
  004A8DC9: 6a 01                                         push   0x1                                  ; llvm: push	0x1
  004A8DCB: 8d 8d 60 ff ff ff                             lea    ecx,[ebp-0xa0]                       ; llvm: lea	ecx, [ebp - 0xa0]
  004A8DD1: c6 45 fc 15                                   mov    BYTE PTR [ebp-0x4],0x15              ; llvm: mov	byte ptr [ebp - 0x4], 0x15
  004A8DD5: ff 15 14 e5 4d 00                             call   DWORD PTR ds:0x4de514                ; llvm: call	dword ptr [0x4de514]
  004A8DDB: 6a 01                                         push   0x1                                  ; llvm: push	0x1
  004A8DDD: 8d 8d 50 ff ff ff                             lea    ecx,[ebp-0xb0]                       ; llvm: lea	ecx, [ebp - 0xb0]
  004A8DE3: c6 45 fc 14                                   mov    BYTE PTR [ebp-0x4],0x14              ; llvm: mov	byte ptr [ebp - 0x4], 0x14
  004A8DE7: ff 15 14 e5 4d 00                             call   DWORD PTR ds:0x4de514                ; llvm: call	dword ptr [0x4de514]
  004A8DED: 8b 85 44 ff ff ff                             mov    eax,DWORD PTR [ebp-0xbc]             ; llvm: mov	eax, dword ptr [ebp - 0xbc]
  004A8DF3: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8DF5: 74 1c                                         je     0x4a8e13                             ; llvm: je	0x4a8e13 <?Destroy@UnitEffectManager@@SAXXZ+0x181f3>
  004A8DF7: 8d 48 ff                                      lea    ecx,[eax-0x1]                        ; llvm: lea	ecx, [eax - 0x1]
  004A8DFA: 8a 01                                         mov    al,BYTE PTR [ecx]                    ; llvm: mov	al, byte ptr [ecx]
  004A8DFC: 3a c3                                         cmp    al,bl                                ; llvm: cmp	al, bl
  004A8DFE: 74 0a                                         je     0x4a8e0a                             ; llvm: je	0x4a8e0a <?Destroy@UnitEffectManager@@SAXXZ+0x181ea>
  004A8E00: 3c ff                                         cmp    al,0xff                              ; llvm: cmp	al, -0x1
  004A8E02: 74 06                                         je     0x4a8e0a                             ; llvm: je	0x4a8e0a <?Destroy@UnitEffectManager@@SAXXZ+0x181ea>
  004A8E04: fe c8                                         dec    al                                   ; llvm: dec	al
  004A8E06: 88 01                                         mov    BYTE PTR [ecx],al                    ; llvm: mov	byte ptr [ecx], al
  004A8E08: eb 09                                         jmp    0x4a8e13                             ; llvm: jmp	0x4a8e13 <?Destroy@UnitEffectManager@@SAXXZ+0x181f3>
  004A8E0A: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8E0B: e8 50 92 f9 ff                                call   0x442060                             ; llvm: call	0x442060 <??4SpellEffectManager@@QAEAAV0@ABV0@@Z+0x3fe0>
  004A8E10: 83 c4 04                                      add    esp,0x4                              ; llvm: add	esp, 0x4
  004A8E13: 8b 85 34 ff ff ff                             mov    eax,DWORD PTR [ebp-0xcc]             ; llvm: mov	eax, dword ptr [ebp - 0xcc]
  004A8E19: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8E1B: 89 9d 44 ff ff ff                             mov    DWORD PTR [ebp-0xbc],ebx             ; llvm: mov	dword ptr [ebp - 0xbc], ebx
  004A8E21: 89 9d 48 ff ff ff                             mov    DWORD PTR [ebp-0xb8],ebx             ; llvm: mov	dword ptr [ebp - 0xb8], ebx
  004A8E27: 89 9d 4c ff ff ff                             mov    DWORD PTR [ebp-0xb4],ebx             ; llvm: mov	dword ptr [ebp - 0xb4], ebx
  004A8E2D: 74 1c                                         je     0x4a8e4b                             ; llvm: je	0x4a8e4b <?Destroy@UnitEffectManager@@SAXXZ+0x1822b>
  004A8E2F: 8d 48 ff                                      lea    ecx,[eax-0x1]                        ; llvm: lea	ecx, [eax - 0x1]
  004A8E32: 8a 01                                         mov    al,BYTE PTR [ecx]                    ; llvm: mov	al, byte ptr [ecx]
  004A8E34: 3a c3                                         cmp    al,bl                                ; llvm: cmp	al, bl
  004A8E36: 74 0a                                         je     0x4a8e42                             ; llvm: je	0x4a8e42 <?Destroy@UnitEffectManager@@SAXXZ+0x18222>
  004A8E38: 3c ff                                         cmp    al,0xff                              ; llvm: cmp	al, -0x1
  004A8E3A: 74 06                                         je     0x4a8e42                             ; llvm: je	0x4a8e42 <?Destroy@UnitEffectManager@@SAXXZ+0x18222>
  004A8E3C: fe c8                                         dec    al                                   ; llvm: dec	al
  004A8E3E: 88 01                                         mov    BYTE PTR [ecx],al                    ; llvm: mov	byte ptr [ecx], al
  004A8E40: eb 09                                         jmp    0x4a8e4b                             ; llvm: jmp	0x4a8e4b <?Destroy@UnitEffectManager@@SAXXZ+0x1822b>
  004A8E42: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8E43: e8 18 92 f9 ff                                call   0x442060                             ; llvm: call	0x442060 <??4SpellEffectManager@@QAEAAV0@ABV0@@Z+0x3fe0>
  004A8E48: 83 c4 04                                      add    esp,0x4                              ; llvm: add	esp, 0x4
  004A8E4B: 8b 85 24 ff ff ff                             mov    eax,DWORD PTR [ebp-0xdc]             ; llvm: mov	eax, dword ptr [ebp - 0xdc]
  004A8E51: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8E53: 89 9d 34 ff ff ff                             mov    DWORD PTR [ebp-0xcc],ebx             ; llvm: mov	dword ptr [ebp - 0xcc], ebx
  004A8E59: 89 9d 38 ff ff ff                             mov    DWORD PTR [ebp-0xc8],ebx             ; llvm: mov	dword ptr [ebp - 0xc8], ebx
  004A8E5F: 89 9d 3c ff ff ff                             mov    DWORD PTR [ebp-0xc4],ebx             ; llvm: mov	dword ptr [ebp - 0xc4], ebx
  004A8E65: 74 1c                                         je     0x4a8e83                             ; llvm: je	0x4a8e83 <?Destroy@UnitEffectManager@@SAXXZ+0x18263>
  004A8E67: 8d 48 ff                                      lea    ecx,[eax-0x1]                        ; llvm: lea	ecx, [eax - 0x1]
  004A8E6A: 8a 01                                         mov    al,BYTE PTR [ecx]                    ; llvm: mov	al, byte ptr [ecx]
  004A8E6C: 3a c3                                         cmp    al,bl                                ; llvm: cmp	al, bl
  004A8E6E: 74 0a                                         je     0x4a8e7a                             ; llvm: je	0x4a8e7a <?Destroy@UnitEffectManager@@SAXXZ+0x1825a>
  004A8E70: 3c ff                                         cmp    al,0xff                              ; llvm: cmp	al, -0x1
  004A8E72: 74 06                                         je     0x4a8e7a                             ; llvm: je	0x4a8e7a <?Destroy@UnitEffectManager@@SAXXZ+0x1825a>
  004A8E74: fe c8                                         dec    al                                   ; llvm: dec	al
  004A8E76: 88 01                                         mov    BYTE PTR [ecx],al                    ; llvm: mov	byte ptr [ecx], al
  004A8E78: eb 09                                         jmp    0x4a8e83                             ; llvm: jmp	0x4a8e83 <?Destroy@UnitEffectManager@@SAXXZ+0x18263>
  004A8E7A: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8E7B: e8 e0 91 f9 ff                                call   0x442060                             ; llvm: call	0x442060 <??4SpellEffectManager@@QAEAAV0@ABV0@@Z+0x3fe0>
  004A8E80: 83 c4 04                                      add    esp,0x4                              ; llvm: add	esp, 0x4
  004A8E83: 8b 85 14 ff ff ff                             mov    eax,DWORD PTR [ebp-0xec]             ; llvm: mov	eax, dword ptr [ebp - 0xec]
  004A8E89: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8E8B: 89 9d 24 ff ff ff                             mov    DWORD PTR [ebp-0xdc],ebx             ; llvm: mov	dword ptr [ebp - 0xdc], ebx
  004A8E91: 89 9d 28 ff ff ff                             mov    DWORD PTR [ebp-0xd8],ebx             ; llvm: mov	dword ptr [ebp - 0xd8], ebx
  004A8E97: 89 9d 2c ff ff ff                             mov    DWORD PTR [ebp-0xd4],ebx             ; llvm: mov	dword ptr [ebp - 0xd4], ebx
  004A8E9D: 74 1c                                         je     0x4a8ebb                             ; llvm: je	0x4a8ebb <?Destroy@UnitEffectManager@@SAXXZ+0x1829b>
  004A8E9F: 8d 48 ff                                      lea    ecx,[eax-0x1]                        ; llvm: lea	ecx, [eax - 0x1]
  004A8EA2: 8a 01                                         mov    al,BYTE PTR [ecx]                    ; llvm: mov	al, byte ptr [ecx]
  004A8EA4: 3a c3                                         cmp    al,bl                                ; llvm: cmp	al, bl
  004A8EA6: 74 0a                                         je     0x4a8eb2                             ; llvm: je	0x4a8eb2 <?Destroy@UnitEffectManager@@SAXXZ+0x18292>
  004A8EA8: 3c ff                                         cmp    al,0xff                              ; llvm: cmp	al, -0x1
  004A8EAA: 74 06                                         je     0x4a8eb2                             ; llvm: je	0x4a8eb2 <?Destroy@UnitEffectManager@@SAXXZ+0x18292>
  004A8EAC: fe c8                                         dec    al                                   ; llvm: dec	al
  004A8EAE: 88 01                                         mov    BYTE PTR [ecx],al                    ; llvm: mov	byte ptr [ecx], al
  004A8EB0: eb 09                                         jmp    0x4a8ebb                             ; llvm: jmp	0x4a8ebb <?Destroy@UnitEffectManager@@SAXXZ+0x1829b>
  004A8EB2: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8EB3: e8 a8 91 f9 ff                                call   0x442060                             ; llvm: call	0x442060 <??4SpellEffectManager@@QAEAAV0@ABV0@@Z+0x3fe0>
  004A8EB8: 83 c4 04                                      add    esp,0x4                              ; llvm: add	esp, 0x4
