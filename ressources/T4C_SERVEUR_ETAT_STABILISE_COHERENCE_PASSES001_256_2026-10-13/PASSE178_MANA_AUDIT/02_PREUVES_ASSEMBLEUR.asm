; Instructions extraites du PE ; sources GNU objdump et LLVM objdump
; Le masque historique est conserve tel quel hors des nouvelles plages.
  0048D920: 8b ce                                         mov    ecx,esi                              ; llvm: mov	ecx, esi
  0048D922: 50                                            push   eax                                  ; llvm: push	eax
  0048D923: 8d 45 10                                      lea    eax,[ebp+0x10]                       ; llvm: lea	eax, [ebp + 0x10]
  0048D926: 50                                            push   eax                                  ; llvm: push	eax
  0048D927: ff 57 48                                      call   DWORD PTR [edi+0x48]                 ; llvm: call	dword ptr [edi + 0x48]
  0048D92A: 8b 00                                         mov    eax,DWORD PTR [eax]                  ; llvm: mov	eax, dword ptr [eax]
  0048D92C: 8b 4d 08                                      mov    ecx,DWORD PTR [ebp+0x8]              ; llvm: mov	ecx, dword ptr [ebp + 0x8]
  0048D92F: 8b 55 0c                                      mov    edx,DWORD PTR [ebp+0xc]              ; llvm: mov	edx, dword ptr [ebp + 0xc]
  0048D932: 50                                            push   eax                                  ; llvm: push	eax
  0048D933: 51                                            push   ecx                                  ; llvm: push	ecx
  0048D934: 81 e2 ff ff 00 00                             and    edx,0xffff                           ; llvm: and	edx, 0xffff
  0048D93A: 52                                            push   edx                                  ; llvm: push	edx
  0048D93B: 68 74 de 50 00                                push   0x50de74                             ; llvm: push	0x50de74
  0048D940: 68 00 02 00 00                                push   0x200                                ; llvm: push	0x200
  0048D945: c7 45 fc 01 00 00 00                          mov    DWORD PTR [ebp-0x4],0x1              ; llvm: mov	dword ptr [ebp - 0x4], 0x1
  0048D94C: e8 ef 43 fe ff                                call   0x471d40                             ; llvm: call	0x471d40 <?DebugLog@CT4CLog@@SAXGPBDZZ>
  0048D951: 83 c4 14                                      add    esp,0x14                             ; llvm: add	esp, 0x14
  0048D954: 8d 4d 10                                      lea    ecx,[ebp+0x10]                       ; llvm: lea	ecx, [ebp + 0x10]
  0048D957: c7 45 fc ff ff ff ff                          mov    DWORD PTR [ebp-0x4],0xffffffff       ; llvm: mov	dword ptr [ebp - 0x4], 0xffffffff
  0048D95E: e8 dd 40 04 00                                call   0x4d1a40                             ; llvm: call	0x4d1a40 <ExpFltr_end+0x410>
