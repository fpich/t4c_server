; Instructions extraites du PE ; sources GNU objdump et LLVM objdump
; Le masque historique est conserve tel quel hors des nouvelles plages.
  004A8A6E: 8a 85 10 ff ff ff                             mov    al,BYTE PTR [ebp-0xf0]               ; llvm: mov	al, byte ptr [ebp - 0xf0]
  004A8A74: 83 ec 10                                      sub    esp,0x10                             ; llvm: sub	esp, 0x10
  004A8A77: 8b fc                                         mov    edi,esp                              ; llvm: mov	edi, esp
  004A8A79: 89 65 08                                      mov    DWORD PTR [ebp+0x8],esp              ; llvm: mov	dword ptr [ebp + 0x8], esp
  004A8A7C: 53                                            push   ebx                                  ; llvm: push	ebx
  004A8A7D: 8b cf                                         mov    ecx,edi                              ; llvm: mov	ecx, edi
  004A8A7F: 88 07                                         mov    BYTE PTR [edi],al                    ; llvm: mov	byte ptr [edi], al
  004A8A81: ff 15 14 e5 4d 00                             call   DWORD PTR ds:0x4de514                ; llvm: call	dword ptr [0x4de514]
  004A8A87: 8b 0d ec e4 4d 00                             mov    ecx,DWORD PTR ds:0x4de4ec            ; llvm: mov	ecx, dword ptr [0x4de4ec]
  004A8A8D: 8b 11                                         mov    edx,DWORD PTR [ecx]                  ; llvm: mov	edx, dword ptr [ecx]
  004A8A8F: 52                                            push   edx                                  ; llvm: push	edx
  004A8A90: 53                                            push   ebx                                  ; llvm: push	ebx
  004A8A91: 8d 85 10 ff ff ff                             lea    eax,[ebp-0xf0]                       ; llvm: lea	eax, [ebp - 0xf0]
  004A8A97: 50                                            push   eax                                  ; llvm: push	eax
  004A8A98: 8b cf                                         mov    ecx,edi                              ; llvm: mov	ecx, edi
  004A8A9A: ff 15 fc e4 4d 00                             call   DWORD PTR ds:0x4de4fc                ; llvm: call	dword ptr [0x4de4fc]
  004A8AA0: 8d 8d a0 fe ff ff                             lea    ecx,[ebp-0x160]                      ; llvm: lea	ecx, [ebp - 0x160]
  004A8AA6: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8AA7: 8b 4d f0                                      mov    ecx,DWORD PTR [ebp-0x10]             ; llvm: mov	ecx, dword ptr [ebp - 0x10]
  004A8AAA: e8 11 4e 00 00                                call   0x4ad8c0                             ; llvm: call	0x4ad8c0 <?Destroy@UnitEffectManager@@SAXXZ+0x1cca0>
  004A8AAF: 8b 15 ec e4 4d 00                             mov    edx,DWORD PTR ds:0x4de4ec            ; llvm: mov	edx, dword ptr [0x4de4ec]
  004A8AB5: 8b 0a                                         mov    ecx,DWORD PTR [edx]                  ; llvm: mov	ecx, dword ptr [edx]
  004A8AB7: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8AB8: 53                                            push   ebx                                  ; llvm: push	ebx
  004A8AB9: 50                                            push   eax                                  ; llvm: push	eax
  004A8ABA: 8d 8d 10 ff ff ff                             lea    ecx,[ebp-0xf0]                       ; llvm: lea	ecx, [ebp - 0xf0]
  004A8AC0: c6 45 fc 0b                                   mov    BYTE PTR [ebp-0x4],0xb               ; llvm: mov	byte ptr [ebp - 0x4], 0xb
  004A8AC4: ff 15 fc e4 4d 00                             call   DWORD PTR ds:0x4de4fc                ; llvm: call	dword ptr [0x4de4fc]
  004A8ACA: 6a 01                                         push   0x1                                  ; llvm: push	0x1
  004A8ACC: 8d 8d a0 fe ff ff                             lea    ecx,[ebp-0x160]                      ; llvm: lea	ecx, [ebp - 0x160]
  004A8AD2: c6 45 fc 0a                                   mov    BYTE PTR [ebp-0x4],0xa               ; llvm: mov	byte ptr [ebp - 0x4], 0xa
  004A8AD6: ff 15 14 e5 4d 00                             call   DWORD PTR ds:0x4de514                ; llvm: call	dword ptr [0x4de514]
  004A8ADC: 8a 55 bc                                      mov    dl,BYTE PTR [ebp-0x44]               ; llvm: mov	dl, byte ptr [ebp - 0x44]
  004A8ADF: 83 ec 10                                      sub    esp,0x10                             ; llvm: sub	esp, 0x10
  004A8AE2: 8b fc                                         mov    edi,esp                              ; llvm: mov	edi, esp
  004A8AE4: 89 65 08                                      mov    DWORD PTR [ebp+0x8],esp              ; llvm: mov	dword ptr [ebp + 0x8], esp
  004A8AE7: 53                                            push   ebx                                  ; llvm: push	ebx
  004A8AE8: 8b cf                                         mov    ecx,edi                              ; llvm: mov	ecx, edi
  004A8AEA: 88 17                                         mov    BYTE PTR [edi],dl                    ; llvm: mov	byte ptr [edi], dl
  004A8AEC: ff 15 14 e5 4d 00                             call   DWORD PTR ds:0x4de514                ; llvm: call	dword ptr [0x4de514]
  004A8AF2: a1 ec e4 4d 00                                mov    eax,ds:0x4de4ec                      ; llvm: mov	eax, dword ptr [0x4de4ec]
  004A8AF7: 8b 08                                         mov    ecx,DWORD PTR [eax]                  ; llvm: mov	ecx, dword ptr [eax]
  004A8AF9: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8AFA: 53                                            push   ebx                                  ; llvm: push	ebx
  004A8AFB: 8d 55 bc                                      lea    edx,[ebp-0x44]                       ; llvm: lea	edx, [ebp - 0x44]
  004A8AFE: 52                                            push   edx                                  ; llvm: push	edx
  004A8AFF: 8b cf                                         mov    ecx,edi                              ; llvm: mov	ecx, edi
  004A8B01: ff 15 fc e4 4d 00                             call   DWORD PTR ds:0x4de4fc                ; llvm: call	dword ptr [0x4de4fc]
  004A8B07: 8b 7d f0                                      mov    edi,DWORD PTR [ebp-0x10]             ; llvm: mov	edi, dword ptr [ebp - 0x10]
  004A8B0A: 8d 85 b0 fe ff ff                             lea    eax,[ebp-0x150]                      ; llvm: lea	eax, [ebp - 0x150]
  004A8B10: 50                                            push   eax                                  ; llvm: push	eax
  004A8B11: 8b cf                                         mov    ecx,edi                              ; llvm: mov	ecx, edi
  004A8B13: e8 a8 4d 00 00                                call   0x4ad8c0                             ; llvm: call	0x4ad8c0 <?Destroy@UnitEffectManager@@SAXXZ+0x1cca0>
  004A8B18: 8b 0d ec e4 4d 00                             mov    ecx,DWORD PTR ds:0x4de4ec            ; llvm: mov	ecx, dword ptr [0x4de4ec]
  004A8B1E: 8b 11                                         mov    edx,DWORD PTR [ecx]                  ; llvm: mov	edx, dword ptr [ecx]
  004A8B20: 52                                            push   edx                                  ; llvm: push	edx
  004A8B21: 53                                            push   ebx                                  ; llvm: push	ebx
  004A8B22: 50                                            push   eax                                  ; llvm: push	eax
  004A8B23: 8d 4d bc                                      lea    ecx,[ebp-0x44]                       ; llvm: lea	ecx, [ebp - 0x44]
  004A8B26: c6 45 fc 0c                                   mov    BYTE PTR [ebp-0x4],0xc               ; llvm: mov	byte ptr [ebp - 0x4], 0xc
  004A8B2A: ff 15 fc e4 4d 00                             call   DWORD PTR ds:0x4de4fc                ; llvm: call	dword ptr [0x4de4fc]
  004A8B30: 6a 01                                         push   0x1                                  ; llvm: push	0x1
  004A8B32: 8d 8d b0 fe ff ff                             lea    ecx,[ebp-0x150]                      ; llvm: lea	ecx, [ebp - 0x150]
  004A8B38: c6 45 fc 0a                                   mov    BYTE PTR [ebp-0x4],0xa               ; llvm: mov	byte ptr [ebp - 0x4], 0xa
  004A8B3C: ff 15 14 e5 4d 00                             call   DWORD PTR ds:0x4de514                ; llvm: call	dword ptr [0x4de514]
  004A8B42: 8b 85 14 ff ff ff                             mov    eax,DWORD PTR [ebp-0xec]             ; llvm: mov	eax, dword ptr [ebp - 0xec]
  004A8B48: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8B4A: 88 9d 74 f6 ff ff                             mov    BYTE PTR [ebp-0x98c],bl              ; llvm: mov	byte ptr [ebp - 0x98c], bl
  004A8B50: 75 05                                         jne    0x4a8b57                             ; llvm: jne	0x4a8b57 <?Destroy@UnitEffectManager@@SAXXZ+0x17f37>
  004A8B52: a1 d8 e4 4d 00                                mov    eax,ds:0x4de4d8                      ; llvm: mov	eax, dword ptr [0x4de4d8]
  004A8B57: 8b 95 0c ff ff ff                             mov    edx,DWORD PTR [ebp-0xf4]             ; llvm: mov	edx, dword ptr [ebp - 0xf4]
  004A8B5D: 8b 4f 10                                      mov    ecx,DWORD PTR [edi+0x10]             ; llvm: mov	ecx, dword ptr [edi + 0x10]
  004A8B60: 8b 39                                         mov    edi,DWORD PTR [ecx]                  ; llvm: mov	edi, dword ptr [ecx]
  004A8B62: 52                                            push   edx                                  ; llvm: push	edx
  004A8B63: 50                                            push   eax                                  ; llvm: push	eax
  004A8B64: 8d 85 74 f6 ff ff                             lea    eax,[ebp-0x98c]                      ; llvm: lea	eax, [ebp - 0x98c]
  004A8B6A: 68 d8 f7 50 00                                push   0x50f7d8                             ; llvm: push	0x50f7d8
  004A8B6F: 50                                            push   eax                                  ; llvm: push	eax
  004A8B70: e8 cb ad f5 ff                                call   0x403940                             ; llvm: call	0x403940 <??4RegKeyHandler@@QAEAAV0@ABV0@@Z+0x1370>
  004A8B75: 83 c4 10                                      add    esp,0x10                             ; llvm: add	esp, 0x10
  004A8B78: 8b d7                                         mov    edx,edi                              ; llvm: mov	edx, edi
  004A8B7A: 8b 7d f0                                      mov    edi,DWORD PTR [ebp-0x10]             ; llvm: mov	edi, dword ptr [ebp - 0x10]
  004A8B7D: 8b 4f 08                                      mov    ecx,DWORD PTR [edi+0x8]              ; llvm: mov	ecx, dword ptr [edi + 0x8]
  004A8B80: 50                                            push   eax                                  ; llvm: push	eax
  004A8B81: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8B82: 8b 4f 10                                      mov    ecx,DWORD PTR [edi+0x10]             ; llvm: mov	ecx, dword ptr [edi + 0x10]
  004A8B85: ff 52 04                                      call   DWORD PTR [edx+0x4]                  ; llvm: call	dword ptr [edx + 0x4]
  004A8B88: 38 5d a5                                      cmp    BYTE PTR [ebp-0x5b],bl               ; llvm: cmp	byte ptr [ebp - 0x5b], bl
  004A8B8B: c7 45 08 90 f7 50 00                          mov    DWORD PTR [ebp+0x8],0x50f790         ; llvm: mov	dword ptr [ebp + 0x8], 0x50f790
  004A8B92: 75 07                                         jne    0x4a8b9b                             ; llvm: jne	0x4a8b9b <?Destroy@UnitEffectManager@@SAXXZ+0x17f7b>
  004A8B94: c7 45 08 88 f7 50 00                          mov    DWORD PTR [ebp+0x8],0x50f788         ; llvm: mov	dword ptr [ebp + 0x8], 0x50f788
  004A8B9B: 38 5d a4                                      cmp    BYTE PTR [ebp-0x5c],bl               ; llvm: cmp	byte ptr [ebp - 0x5c], bl
  004A8B9E: c7 45 cc 90 f7 50 00                          mov    DWORD PTR [ebp-0x34],0x50f790        ; llvm: mov	dword ptr [ebp - 0x34], 0x50f790
  004A8BA5: 75 07                                         jne    0x4a8bae                             ; llvm: jne	0x4a8bae <?Destroy@UnitEffectManager@@SAXXZ+0x17f8e>
  004A8BA7: c7 45 cc 88 f7 50 00                          mov    DWORD PTR [ebp-0x34],0x50f788        ; llvm: mov	dword ptr [ebp - 0x34], 0x50f788
  004A8BAE: 8b 8d 78 ff ff ff                             mov    ecx,DWORD PTR [ebp-0x88]             ; llvm: mov	ecx, dword ptr [ebp - 0x88]
  004A8BB4: 3b cb                                         cmp    ecx,ebx                              ; llvm: cmp	ecx, ebx
  004A8BB6: 8b 15 d8 e4 4d 00                             mov    edx,DWORD PTR ds:0x4de4d8            ; llvm: mov	edx, dword ptr [0x4de4d8]
  004A8BBC: 89 55 d0                                      mov    DWORD PTR [ebp-0x30],edx             ; llvm: mov	dword ptr [ebp - 0x30], edx
  004A8BBF: 74 03                                         je     0x4a8bc4                             ; llvm: je	0x4a8bc4 <?Destroy@UnitEffectManager@@SAXXZ+0x17fa4>
  004A8BC1: 89 4d d0                                      mov    DWORD PTR [ebp-0x30],ecx             ; llvm: mov	dword ptr [ebp - 0x30], ecx
  004A8BC4: 8b 85 64 ff ff ff                             mov    eax,DWORD PTR [ebp-0x9c]             ; llvm: mov	eax, dword ptr [ebp - 0x9c]
  004A8BCA: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8BCC: 89 55 dc                                      mov    DWORD PTR [ebp-0x24],edx             ; llvm: mov	dword ptr [ebp - 0x24], edx
  004A8BCF: 74 03                                         je     0x4a8bd4                             ; llvm: je	0x4a8bd4 <?Destroy@UnitEffectManager@@SAXXZ+0x17fb4>
  004A8BD1: 89 45 dc                                      mov    DWORD PTR [ebp-0x24],eax             ; llvm: mov	dword ptr [ebp - 0x24], eax
  004A8BD4: 8b 85 54 ff ff ff                             mov    eax,DWORD PTR [ebp-0xac]             ; llvm: mov	eax, dword ptr [ebp - 0xac]
  004A8BDA: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8BDC: 89 55 d4                                      mov    DWORD PTR [ebp-0x2c],edx             ; llvm: mov	dword ptr [ebp - 0x2c], edx
  004A8BDF: 74 03                                         je     0x4a8be4                             ; llvm: je	0x4a8be4 <?Destroy@UnitEffectManager@@SAXXZ+0x17fc4>
  004A8BE1: 89 45 d4                                      mov    DWORD PTR [ebp-0x2c],eax             ; llvm: mov	dword ptr [ebp - 0x2c], eax
  004A8BE4: 8b 85 44 ff ff ff                             mov    eax,DWORD PTR [ebp-0xbc]             ; llvm: mov	eax, dword ptr [ebp - 0xbc]
  004A8BEA: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8BEC: 89 55 e4                                      mov    DWORD PTR [ebp-0x1c],edx             ; llvm: mov	dword ptr [ebp - 0x1c], edx
  004A8BEF: 74 03                                         je     0x4a8bf4                             ; llvm: je	0x4a8bf4 <?Destroy@UnitEffectManager@@SAXXZ+0x17fd4>
  004A8BF1: 89 45 e4                                      mov    DWORD PTR [ebp-0x1c],eax             ; llvm: mov	dword ptr [ebp - 0x1c], eax
  004A8BF4: 8b 8d 34 ff ff ff                             mov    ecx,DWORD PTR [ebp-0xcc]             ; llvm: mov	ecx, dword ptr [ebp - 0xcc]
  004A8BFA: 3b cb                                         cmp    ecx,ebx                              ; llvm: cmp	ecx, ebx
  004A8BFC: 75 02                                         jne    0x4a8c00                             ; llvm: jne	0x4a8c00 <?Destroy@UnitEffectManager@@SAXXZ+0x17fe0>
  004A8BFE: 8b ca                                         mov    ecx,edx                              ; llvm: mov	ecx, edx
  004A8C00: 8b 85 24 ff ff ff                             mov    eax,DWORD PTR [ebp-0xdc]             ; llvm: mov	eax, dword ptr [ebp - 0xdc]
  004A8C06: 3b c3                                         cmp    eax,ebx                              ; llvm: cmp	eax, ebx
  004A8C08: 75 02                                         jne    0x4a8c0c                             ; llvm: jne	0x4a8c0c <?Destroy@UnitEffectManager@@SAXXZ+0x17fec>
  004A8C0A: 8b c2                                         mov    eax,edx                              ; llvm: mov	eax, edx
  004A8C0C: 8b 57 10                                      mov    edx,DWORD PTR [edi+0x10]             ; llvm: mov	edx, dword ptr [edi + 0x10]
  004A8C0F: 8b 3a                                         mov    edi,DWORD PTR [edx]                  ; llvm: mov	edi, dword ptr [edx]
  004A8C11: 8b 55 08                                      mov    edx,DWORD PTR [ebp+0x8]              ; llvm: mov	edx, dword ptr [ebp + 0x8]
  004A8C14: 52                                            push   edx                                  ; llvm: push	edx
  004A8C15: 8b 55 cc                                      mov    edx,DWORD PTR [ebp-0x34]             ; llvm: mov	edx, dword ptr [ebp - 0x34]
  004A8C18: 52                                            push   edx                                  ; llvm: push	edx
  004A8C19: 8b 55 a0                                      mov    edx,DWORD PTR [ebp-0x60]             ; llvm: mov	edx, dword ptr [ebp - 0x60]
  004A8C1C: 52                                            push   edx                                  ; llvm: push	edx
  004A8C1D: 8b 55 9c                                      mov    edx,DWORD PTR [ebp-0x64]             ; llvm: mov	edx, dword ptr [ebp - 0x64]
  004A8C20: 52                                            push   edx                                  ; llvm: push	edx
  004A8C21: 8b 55 98                                      mov    edx,DWORD PTR [ebp-0x68]             ; llvm: mov	edx, dword ptr [ebp - 0x68]
  004A8C24: 52                                            push   edx                                  ; llvm: push	edx
  004A8C25: 8b 55 94                                      mov    edx,DWORD PTR [ebp-0x6c]             ; llvm: mov	edx, dword ptr [ebp - 0x6c]
  004A8C28: 52                                            push   edx                                  ; llvm: push	edx
  004A8C29: 8b 55 90                                      mov    edx,DWORD PTR [ebp-0x70]             ; llvm: mov	edx, dword ptr [ebp - 0x70]
  004A8C2C: 52                                            push   edx                                  ; llvm: push	edx
  004A8C2D: 8b 55 88                                      mov    edx,DWORD PTR [ebp-0x78]             ; llvm: mov	edx, dword ptr [ebp - 0x78]
  004A8C30: 52                                            push   edx                                  ; llvm: push	edx
  004A8C31: 8b 55 84                                      mov    edx,DWORD PTR [ebp-0x7c]             ; llvm: mov	edx, dword ptr [ebp - 0x7c]
  004A8C34: 52                                            push   edx                                  ; llvm: push	edx
  004A8C35: 8b 55 d0                                      mov    edx,DWORD PTR [ebp-0x30]             ; llvm: mov	edx, dword ptr [ebp - 0x30]
  004A8C38: 52                                            push   edx                                  ; llvm: push	edx
  004A8C39: 8b 95 70 ff ff ff                             mov    edx,DWORD PTR [ebp-0x90]             ; llvm: mov	edx, dword ptr [ebp - 0x90]
  004A8C3F: 52                                            push   edx                                  ; llvm: push	edx
  004A8C40: 8b 55 dc                                      mov    edx,DWORD PTR [ebp-0x24]             ; llvm: mov	edx, dword ptr [ebp - 0x24]
  004A8C43: 52                                            push   edx                                  ; llvm: push	edx
  004A8C44: 8b 55 d4                                      mov    edx,DWORD PTR [ebp-0x2c]             ; llvm: mov	edx, dword ptr [ebp - 0x2c]
  004A8C47: 52                                            push   edx                                  ; llvm: push	edx
  004A8C48: 8b 55 e4                                      mov    edx,DWORD PTR [ebp-0x1c]             ; llvm: mov	edx, dword ptr [ebp - 0x1c]
  004A8C4B: 52                                            push   edx                                  ; llvm: push	edx
  004A8C4C: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8C4D: 50                                            push   eax                                  ; llvm: push	eax
  004A8C4E: 8d 85 74 f6 ff ff                             lea    eax,[ebp-0x98c]                      ; llvm: lea	eax, [ebp - 0x98c]
  004A8C54: 68 78 f6 50 00                                push   0x50f678                             ; llvm: push	0x50f678
  004A8C59: 50                                            push   eax                                  ; llvm: push	eax
  004A8C5A: e8 e1 ac f5 ff                                call   0x403940                             ; llvm: call	0x403940 <??4RegKeyHandler@@QAEAAV0@ABV0@@Z+0x1370>
  004A8C5F: 83 c4 48                                      add    esp,0x48                             ; llvm: add	esp, 0x48
  004A8C62: 8b d7                                         mov    edx,edi                              ; llvm: mov	edx, edi
  004A8C64: 8b 7d f0                                      mov    edi,DWORD PTR [ebp-0x10]             ; llvm: mov	edi, dword ptr [ebp - 0x10]
  004A8C67: 8b 4f 0c                                      mov    ecx,DWORD PTR [edi+0xc]              ; llvm: mov	ecx, dword ptr [edi + 0xc]
  004A8C6A: 50                                            push   eax                                  ; llvm: push	eax
  004A8C6B: 51                                            push   ecx                                  ; llvm: push	ecx
  004A8C6C: 8b 4f 10                                      mov    ecx,DWORD PTR [edi+0x10]             ; llvm: mov	ecx, dword ptr [edi + 0x10]
  004A8C6F: ff 52 04                                      call   DWORD PTR [edx+0x4]                  ; llvm: call	dword ptr [edx + 0x4]
