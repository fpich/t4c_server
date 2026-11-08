; Instructions extraites du PE ; sources GNU objdump et LLVM objdump
; Le masque historique est conserve tel quel hors des nouvelles plages.
  0045AC11: 8d 45 e4                                      lea    eax,[ebp-0x1c]                       ; llvm: lea	eax, [ebp - 0x1c]
  0045AC14: 50                                            push   eax                                  ; llvm: push	eax
  0045AC15: 8b cf                                         mov    ecx,edi                              ; llvm: mov	ecx, edi
  0045AC17: e8 24 1b 00 00                                call   0x45c740                             ; llvm: call	0x45c740 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x2010>
  0045AC1C: 8b 45 ec                                      mov    eax,DWORD PTR [ebp-0x14]             ; llvm: mov	eax, dword ptr [ebp - 0x14]
  0045AC1F: 33 f6                                         xor    esi,esi                              ; llvm: xor	esi, esi
  0045AC21: 85 c0                                         test   eax,eax                              ; llvm: test	eax, eax
  0045AC23: c7 45 fc 0a 00 00 00                          mov    DWORD PTR [ebp-0x4],0xa              ; llvm: mov	dword ptr [ebp - 0x4], 0xa
  0045AC2A: 76 6b                                         jbe    0x45ac97                             ; llvm: jbe	0x45ac97 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x567>
  0045AC2C: 3b c6                                         cmp    eax,esi                              ; llvm: cmp	eax, esi
  0045AC2E: 8b 4d e8                                      mov    ecx,DWORD PTR [ebp-0x18]             ; llvm: mov	ecx, dword ptr [ebp - 0x18]
  0045AC31: 72 1b                                         jb     0x45ac4e                             ; llvm: jb	0x45ac4e <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x51e>
  0045AC33: 85 c9                                         test   ecx,ecx                              ; llvm: test	ecx, ecx
  0045AC35: 74 17                                         je     0x45ac4e                             ; llvm: je	0x45ac4e <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x51e>
  0045AC37: 8d 4d e4                                      lea    ecx,[ebp-0x1c]                       ; llvm: lea	ecx, [ebp - 0x1c]
  0045AC3A: ff 15 e4 e4 4d 00                             call   DWORD PTR ds:0x4de4e4                ; llvm: call	dword ptr [0x4de4e4]
  0045AC40: 8b 4d e8                                      mov    ecx,DWORD PTR [ebp-0x18]             ; llvm: mov	ecx, dword ptr [ebp - 0x18]
  0045AC43: 8b 45 ec                                      mov    eax,DWORD PTR [ebp-0x14]             ; llvm: mov	eax, dword ptr [ebp - 0x14]
  0045AC46: 8d 14 0e                                      lea    edx,[esi+ecx*1]                      ; llvm: lea	edx, [esi + ecx]
  0045AC49: 89 55 14                                      mov    DWORD PTR [ebp+0x14],edx             ; llvm: mov	dword ptr [ebp + 0x14], edx
  0045AC4C: eb 09                                         jmp    0x45ac57                             ; llvm: jmp	0x45ac57 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x527>
  0045AC4E: 8b 15 d8 e4 4d 00                             mov    edx,DWORD PTR ds:0x4de4d8            ; llvm: mov	edx, dword ptr [0x4de4d8]
  0045AC54: 89 55 14                                      mov    DWORD PTR [ebp+0x14],edx             ; llvm: mov	dword ptr [ebp + 0x14], edx
  0045AC57: 3b c6                                         cmp    eax,esi                              ; llvm: cmp	eax, esi
  0045AC59: 72 15                                         jb     0x45ac70                             ; llvm: jb	0x45ac70 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x540>
  0045AC5B: 85 c9                                         test   ecx,ecx                              ; llvm: test	ecx, ecx
  0045AC5D: 74 11                                         je     0x45ac70                             ; llvm: je	0x45ac70 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x540>
  0045AC5F: 8d 4d e4                                      lea    ecx,[ebp-0x1c]                       ; llvm: lea	ecx, [ebp - 0x1c]
  0045AC62: ff 15 e4 e4 4d 00                             call   DWORD PTR ds:0x4de4e4                ; llvm: call	dword ptr [0x4de4e4]
  0045AC68: 8b 45 e8                                      mov    eax,DWORD PTR [ebp-0x18]             ; llvm: mov	eax, dword ptr [ebp - 0x18]
  0045AC6B: 8d 1c 06                                      lea    ebx,[esi+eax*1]                      ; llvm: lea	ebx, [esi + eax]
  0045AC6E: eb 06                                         jmp    0x45ac76                             ; llvm: jmp	0x45ac76 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x546>
  0045AC70: 8b 1d d8 e4 4d 00                             mov    ebx,DWORD PTR ds:0x4de4d8            ; llvm: mov	ebx, dword ptr [0x4de4d8]
  0045AC76: 8b 4d 14                                      mov    ecx,DWORD PTR [ebp+0x14]             ; llvm: mov	ecx, dword ptr [ebp + 0x14]
  0045AC79: 0f be 11                                      movsx  edx,BYTE PTR [ecx]                   ; llvm: movsx	edx, byte ptr [ecx]
  0045AC7C: 52                                            push   edx                                  ; llvm: push	edx
  0045AC7D: ff 15 04 e3 4d 00                             call   DWORD PTR ds:0x4de304                ; llvm: call	dword ptr [0x4de304]
  0045AC83: 83 c4 04                                      add    esp,0x4                              ; llvm: add	esp, 0x4
  0045AC86: 88 03                                         mov    BYTE PTR [ebx],al                    ; llvm: mov	byte ptr [ebx], al
  0045AC88: 8b 45 ec                                      mov    eax,DWORD PTR [ebp-0x14]             ; llvm: mov	eax, dword ptr [ebp - 0x14]
  0045AC8B: 46                                            inc    esi                                  ; llvm: inc	esi
  0045AC8C: 3b c6                                         cmp    eax,esi                              ; llvm: cmp	eax, esi
  0045AC8E: 77 9e                                         ja     0x45ac2e                             ; llvm: ja	0x45ac2e <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x4fe>
  0045AC90: 8b 5d 1c                                      mov    ebx,DWORD PTR [ebp+0x1c]             ; llvm: mov	ebx, dword ptr [ebp + 0x1c]
  0045AC93: 33 f6                                         xor    esi,esi                              ; llvm: xor	esi, esi
  0045AC95: eb 02                                         jmp    0x45ac99                             ; llvm: jmp	0x45ac99 <?OnServerInitialisation@SimpleMonster@@UAEXPAVUnit@@00PAX1G@Z+0x569>
  0045AC97: 33 f6                                         xor    esi,esi                              ; llvm: xor	esi, esi
