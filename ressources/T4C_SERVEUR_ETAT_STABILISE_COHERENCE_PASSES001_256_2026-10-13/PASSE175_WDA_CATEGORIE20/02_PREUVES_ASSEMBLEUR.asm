; Instructions extraites du PE ; sources GNU objdump et LLVM objdump
; Le masque historique est conserve tel quel hors des nouvelles plages.
  0045B9B2: 8d 55 e4                                      lea    edx,[ebp-0x1c]                       ; llvm: lea	edx, [ebp - 0x1c]
  0045B9B5: 52                                            push   edx                                  ; llvm: push	edx
  0045B9B6: 8b cf                                         mov    ecx,edi                              ; llvm: mov	ecx, edi
  0045B9B8: e8 93 09 00 00                                call   0x45c350                             ; llvm: call	0x45c350 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x1c20>
  0045B9BD: 8b 45 ec                                      mov    eax,DWORD PTR [ebp-0x14]             ; llvm: mov	eax, dword ptr [ebp - 0x14]
  0045B9C0: 33 f6                                         xor    esi,esi                              ; llvm: xor	esi, esi
  0045B9C2: 85 c0                                         test   eax,eax                              ; llvm: test	eax, eax
  0045B9C4: c7 45 fc 24 00 00 00                          mov    DWORD PTR [ebp-0x4],0x24             ; llvm: mov	dword ptr [ebp - 0x4], 0x24
  0045B9CB: 76 5b                                         jbe    0x45ba28                             ; llvm: jbe	0x45ba28 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x12f8>
  0045B9CD: 3b c6                                         cmp    eax,esi                              ; llvm: cmp	eax, esi
  0045B9CF: 8b 4d e8                                      mov    ecx,DWORD PTR [ebp-0x18]             ; llvm: mov	ecx, dword ptr [ebp - 0x18]
  0045B9D2: 72 18                                         jb     0x45b9ec                             ; llvm: jb	0x45b9ec <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x12bc>
  0045B9D4: 85 c9                                         test   ecx,ecx                              ; llvm: test	ecx, ecx
  0045B9D6: 74 14                                         je     0x45b9ec                             ; llvm: je	0x45b9ec <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x12bc>
  0045B9D8: 8d 4d e4                                      lea    ecx,[ebp-0x1c]                       ; llvm: lea	ecx, [ebp - 0x1c]
  0045B9DB: ff 15 e4 e4 4d 00                             call   DWORD PTR ds:0x4de4e4                ; llvm: call	dword ptr [0x4de4e4]
  0045B9E1: 8b 4d e8                                      mov    ecx,DWORD PTR [ebp-0x18]             ; llvm: mov	ecx, dword ptr [ebp - 0x18]
  0045B9E4: 8b 45 ec                                      mov    eax,DWORD PTR [ebp-0x14]             ; llvm: mov	eax, dword ptr [ebp - 0x14]
  0045B9E7: 8d 1c 0e                                      lea    ebx,[esi+ecx*1]                      ; llvm: lea	ebx, [esi + ecx]
  0045B9EA: eb 06                                         jmp    0x45b9f2                             ; llvm: jmp	0x45b9f2 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x12c2>
  0045B9EC: 8b 1d d8 e4 4d 00                             mov    ebx,DWORD PTR ds:0x4de4d8            ; llvm: mov	ebx, dword ptr [0x4de4d8]
  0045B9F2: 3b c6                                         cmp    eax,esi                              ; llvm: cmp	eax, esi
  0045B9F4: 72 15                                         jb     0x45ba0b                             ; llvm: jb	0x45ba0b <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x12db>
  0045B9F6: 85 c9                                         test   ecx,ecx                              ; llvm: test	ecx, ecx
  0045B9F8: 74 11                                         je     0x45ba0b                             ; llvm: je	0x45ba0b <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x12db>
  0045B9FA: 8d 4d e4                                      lea    ecx,[ebp-0x1c]                       ; llvm: lea	ecx, [ebp - 0x1c]
  0045B9FD: ff 15 e4 e4 4d 00                             call   DWORD PTR ds:0x4de4e4                ; llvm: call	dword ptr [0x4de4e4]
  0045BA03: 8b 45 e8                                      mov    eax,DWORD PTR [ebp-0x18]             ; llvm: mov	eax, dword ptr [ebp - 0x18]
  0045BA06: 8d 3c 06                                      lea    edi,[esi+eax*1]                      ; llvm: lea	edi, [esi + eax]
  0045BA09: eb 06                                         jmp    0x45ba11                             ; llvm: jmp	0x45ba11 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x12e1>
  0045BA0B: 8b 3d d8 e4 4d 00                             mov    edi,DWORD PTR ds:0x4de4d8            ; llvm: mov	edi, dword ptr [0x4de4d8]
  0045BA11: 0f be 0b                                      movsx  ecx,BYTE PTR [ebx]                   ; llvm: movsx	ecx, byte ptr [ebx]
  0045BA14: 51                                            push   ecx                                  ; llvm: push	ecx
  0045BA15: ff 15 04 e3 4d 00                             call   DWORD PTR ds:0x4de304                ; llvm: call	dword ptr [0x4de304]
  0045BA1B: 83 c4 04                                      add    esp,0x4                              ; llvm: add	esp, 0x4
  0045BA1E: 88 07                                         mov    BYTE PTR [edi],al                    ; llvm: mov	byte ptr [edi], al
  0045BA20: 8b 45 ec                                      mov    eax,DWORD PTR [ebp-0x14]             ; llvm: mov	eax, dword ptr [ebp - 0x14]
  0045BA23: 46                                            inc    esi                                  ; llvm: inc	esi
  0045BA24: 3b c6                                         cmp    eax,esi                              ; llvm: cmp	eax, esi
  0045BA26: 77 a7                                         ja     0x45b9cf                             ; llvm: ja	0x45b9cf <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x129f>
