; T4C Server(1).exe - Passe 42
; VA, octets bruts, instructions objdump Intel; verification directe de chaque ligne sur .text.
; Fenetres volontairement selectionnees selon les branches analysees; une fonction peut continuer au-dela.

; Type 2: ecriture du vptr constructeur  [0x4c3260,0x4c3286)
  4c3260: 56                                          push   esi
  4c3261: 8b f1                                       mov    esi,ecx
  4c3263: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c3266: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c326c: e8 4f 64 f4 ff                              call   0x4096c0
  4c3271: c7 06 6c fd 4d 00                           mov    DWORD PTR [esi],0x4dfd6c
  4c3277: c7 86 80 00 00 00 00                        mov    DWORD PTR [esi+0x80],0x0
  4c327e: 00 00 00                                    4c3281:	8b c6                	mov    eax,esi
  4c3283: 5e                                          pop    esi
  4c3284: c3                                          ret
  4c3285: 90                                          nop

; Type 3: constructeur  [0x4c5b30,0x4c5b60)
  4c5b30: 56                                          push   esi
  4c5b31: 8b f1                                       mov    esi,ecx
  4c5b33: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c5b36: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c5b3c: e8 7f 3b f4 ff                              call   0x4096c0
  4c5b41: c7 06 c0 fd 4d 00                           mov    DWORD PTR [esi],0x4dfdc0
  4c5b47: c7 46 0c 00 00 00 00                        mov    DWORD PTR [esi+0xc],0x0
  4c5b4e: 8b c6                                       mov    eax,esi
  4c5b50: 5e                                          pop    esi
  4c5b51: c3                                          ret
  4c5b52: 90                                          nop
  4c5b53: 90                                          nop
  4c5b54: 90                                          nop
  4c5b55: 90                                          nop
  4c5b56: 90                                          nop
  4c5b57: 90                                          nop
  4c5b58: 90                                          nop
  4c5b59: 90                                          nop
  4c5b5a: 90                                          nop
  4c5b5b: 90                                          nop
  4c5b5c: 90                                          nop
  4c5b5d: 90                                          nop
  4c5b5e: 90                                          nop
  4c5b5f: 90                                          nop

; Type 6: initialisation vptr  [0x4c3f40,0x4c3f52)
  4c3f40: 8b c1                                       mov    eax,ecx
  4c3f42: 33 c9                                       xor    ecx,ecx
  4c3f44: c7 00 78 fd 4d 00                           mov    DWORD PTR [eax],0x4dfd78
  4c3f4a: 66 89 48 0c                                 mov    WORD PTR [eax+0xc],cx
  4c3f4e: 88 48 0e                                    mov    BYTE PTR [eax+0xe],cl
  4c3f51: c3                                          ret

; Type 7: constructeur  [0x4c7050,0x4c70c0)
  4c7050: 55                                          push   ebp
  4c7051: 8b ec                                       mov    ebp,esp
  4c7053: 6a ff                                       push   0xffffffff
  4c7055: 68 29 da 4d 00                              push   0x4dda29
  4c705a: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c7060: 50                                          push   eax
  4c7061: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c7068: 51                                          push   ecx
  4c7069: 56                                          push   esi
  4c706a: 8b f1                                       mov    esi,ecx
  4c706c: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c706f: 89 75 f0                                    mov    DWORD PTR [ebp-0x10],esi
  4c7072: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c7078: e8 43 26 f4 ff                              call   0x4096c0
  4c707d: 8d 8e 80 00 00 00                           lea    ecx,[esi+0x80]
  4c7083: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c708a: e8 31 26 f4 ff                              call   0x4096c0
  4c708f: 8d 8e f0 00 00 00                           lea    ecx,[esi+0xf0]
  4c7095: c6 45 fc 01                                 mov    BYTE PTR [ebp-0x4],0x1
  4c7099: e8 22 26 f4 ff                              call   0x4096c0
  4c709e: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c70a1: c7 06 e8 fd 4d 00                           mov    DWORD PTR [esi],0x4dfde8
  4c70a7: 8b c6                                       mov    eax,esi
  4c70a9: 5e                                          pop    esi
  4c70aa: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c70b1: 8b e5                                       mov    esp,ebp
  4c70b3: 5d                                          pop    ebp
  4c70b4: c3                                          ret
  4c70b5: 90                                          nop
  4c70b6: 90                                          nop
  4c70b7: 90                                          nop
  4c70b8: 90                                          nop
  4c70b9: 90                                          nop
  4c70ba: 90                                          nop
  4c70bb: 90                                          nop
  4c70bc: 90                                          nop
  4c70bd: 90                                          nop
  4c70be: 90                                          nop
  4c70bf: 90                                          nop

; Type 9: constructeur  [0x4c7470,0x4c74d0)
  4c7470: 55                                          push   ebp
  4c7471: 8b ec                                       mov    ebp,esp
  4c7473: 6a ff                                       push   0xffffffff
  4c7475: 68 bb da 4d 00                              push   0x4ddabb
  4c747a: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c7480: 50                                          push   eax
  4c7481: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c7488: 51                                          push   ecx
  4c7489: 56                                          push   esi
  4c748a: 8b f1                                       mov    esi,ecx
  4c748c: 8d 4e 18                                    lea    ecx,[esi+0x18]
  4c748f: 89 75 f0                                    mov    DWORD PTR [ebp-0x10],esi
  4c7492: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c7498: e8 23 22 f4 ff                              call   0x4096c0
  4c749d: 8d 8e 88 00 00 00                           lea    ecx,[esi+0x88]
  4c74a3: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c74aa: e8 11 22 f4 ff                              call   0x4096c0
  4c74af: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c74b2: c7 06 10 fe 4d 00                           mov    DWORD PTR [esi],0x4dfe10
  4c74b8: 8b c6                                       mov    eax,esi
  4c74ba: 5e                                          pop    esi
  4c74bb: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c74c2: 8b e5                                       mov    esp,ebp
  4c74c4: 5d                                          pop    ebp
  4c74c5: c3                                          ret
  4c74c6: 90                                          nop
  4c74c7: 90                                          nop
  4c74c8: 90                                          nop
  4c74c9: 90                                          nop
  4c74ca: 90                                          nop
  4c74cb: 90                                          nop
  4c74cc: 90                                          nop
  4c74cd: 90                                          nop
  4c74ce: 90                                          nop
  4c74cf: 90                                          nop

; Type 10: constructeur derivation avec vptr finale  [0x4c56e0,0x4c5710)
  4c56e0: 55                                          push   ebp
  4c56e1: 8b ec                                       mov    ebp,esp
  4c56e3: 6a ff                                       push   0xffffffff
  4c56e5: 68 98 d7 4d 00                              push   0x4dd798
  4c56ea: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c56f0: 50                                          push   eax
  4c56f1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c56f8: 51                                          push   ecx
  4c56f9: 56                                          push   esi
  4c56fa: 8b f1                                       mov    esi,ecx
  4c56fc: 89 75 f0                                    mov    DWORD PTR [ebp-0x10],esi
  4c56ff: 8d 8e 60 01 00 00                           lea    ecx,[esi+0x160]
  4c5705: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c570c: e8                                          .byte 0xe8
  4c570d: 4f                                          dec    edi
  4c570e: 40                                          inc    eax
  4c570f: f4                                          hlt

; Type 11: constructeur  [0x4c7330,0x4c7340)
  4c7330: 8b c1                                       mov    eax,ecx
  4c7332: c7 00 04 fe 4d 00                           mov    DWORD PTR [eax],0x4dfe04
  4c7338: c3                                          ret
  4c7339: 90                                          nop
  4c733a: 90                                          nop
  4c733b: 90                                          nop
  4c733c: 90                                          nop
  4c733d: 90                                          nop
  4c733e: 90                                          nop
  4c733f: 90                                          nop

; Type 12: constructeur vptr  [0x4c7c40,0x4c7c49)
  4c7c40: 8b c1                                       mov    eax,ecx
  4c7c42: c7 00 30 fe 4d 00                           mov    DWORD PTR [eax],0x4dfe30
  4c7c48: c3                                          ret

; Type 14: constructeur  [0x4c5730,0x4c57b0)
  4c5730: 55                                          push   ebp
  4c5731: 8b ec                                       mov    ebp,esp
  4c5733: 6a ff                                       push   0xffffffff
  4c5735: 68 d7 d7 4d 00                              push   0x4dd7d7
  4c573a: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c5740: 50                                          push   eax
  4c5741: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c5748: 51                                          push   ecx
  4c5749: 56                                          push   esi
  4c574a: 8b f1                                       mov    esi,ecx
  4c574c: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c574f: 89 75 f0                                    mov    DWORD PTR [ebp-0x10],esi
  4c5752: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c5758: e8 63 3f f4 ff                              call   0x4096c0
  4c575d: 8d 8e 80 00 00 00                           lea    ecx,[esi+0x80]
  4c5763: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c576a: e8 51 3f f4 ff                              call   0x4096c0
  4c576f: 8d 8e f0 00 00 00                           lea    ecx,[esi+0xf0]
  4c5775: c6 45 fc 01                                 mov    BYTE PTR [ebp-0x4],0x1
  4c5779: e8 42 3f f4 ff                              call   0x4096c0
  4c577e: 8d 8e 60 01 00 00                           lea    ecx,[esi+0x160]
  4c5784: c6 45 fc 02                                 mov    BYTE PTR [ebp-0x4],0x2
  4c5788: e8 33 3f f4 ff                              call   0x4096c0
  4c578d: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5790: c7 06 b4 fd 4d 00                           mov    DWORD PTR [esi],0x4dfdb4
  4c5796: 8b c6                                       mov    eax,esi
  4c5798: 5e                                          pop    esi
  4c5799: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c57a0: 8b e5                                       mov    esp,ebp
  4c57a2: 5d                                          pop    ebp
  4c57a3: c3                                          ret
  4c57a4: 90                                          nop
  4c57a5: 90                                          nop
  4c57a6: 90                                          nop
  4c57a7: 90                                          nop
  4c57a8: 90                                          nop
  4c57a9: 90                                          nop
  4c57aa: 90                                          nop
  4c57ab: 90                                          nop
  4c57ac: 90                                          nop
  4c57ad: 90                                          nop
  4c57ae: 90                                          nop
  4c57af: 90                                          nop

; Type 15: constructeur vptr  [0x4c6960,0x4c697b)
  4c6960: 56                                          push   esi
  4c6961: 8b f1                                       mov    esi,ecx
  4c6963: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c6966: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c696c: e8 4f 2d f4 ff                              call   0x4096c0
  4c6971: c7 06 dc fd 4d 00                           mov    DWORD PTR [esi],0x4dfddc
  4c6977: 8b c6                                       mov    eax,esi
  4c6979: 5e                                          pop    esi
  4c697a: c3                                          ret

; Type 16: constructeur vptr  [0x4c4730,0x4c4750)
  4c4730: 56                                          push   esi
  4c4731: 8b f1                                       mov    esi,ecx
  4c4733: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c4736: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c473c: e8 7f 4f f4 ff                              call   0x4096c0
  4c4741: c7 06 90 fd 4d 00                           mov    DWORD PTR [esi],0x4dfd90
  4c4747: 8b c6                                       mov    eax,esi
  4c4749: 5e                                          pop    esi
  4c474a: c3                                          ret
  4c474b: 90                                          nop
  4c474c: 90                                          nop
  4c474d: 90                                          nop
  4c474e: 90                                          nop
  4c474f: 90                                          nop

; Type 17: constructeur  [0x4c4270,0x4c428b)
  4c4270: 56                                          push   esi
  4c4271: 8b f1                                       mov    esi,ecx
  4c4273: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c4276: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c427c: e8 3f 54 f4 ff                              call   0x4096c0
  4c4281: c7 06 84 fd 4d 00                           mov    DWORD PTR [esi],0x4dfd84
  4c4287: 8b c6                                       mov    eax,esi
  4c4289: 5e                                          pop    esi
  4c428a: c3                                          ret

