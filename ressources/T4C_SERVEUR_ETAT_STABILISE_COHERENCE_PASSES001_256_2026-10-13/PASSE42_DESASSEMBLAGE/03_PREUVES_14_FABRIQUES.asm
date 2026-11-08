; T4C Server(1).exe - Passe 42
; VA, octets bruts, instructions objdump Intel; verification directe de chaque ligne sur .text.
; Fenetres volontairement selectionnees selon les branches analysees; une fonction peut continuer au-dela.

; Type 1: fabrique  [0x4c68e0,0x4c693c)
  4c68e0: 55                                          push   ebp
  4c68e1: 8b ec                                       mov    ebp,esp
  4c68e3: 6a ff                                       push   0xffffffff
  4c68e5: 68 9b d9 4d 00                              push   0x4dd99b
  4c68ea: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c68f0: 50                                          push   eax
  4c68f1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c68f8: 51                                          push   ecx
  4c68f9: 68 60 01 00 00                              push   0x160
  4c68fe: e8 ed b6 f7 ff                              call   0x441ff0
  4c6903: 83 c4 04                                    add    esp,0x4
  4c6906: 89 45 f0                                    mov    DWORD PTR [ebp-0x10],eax
  4c6909: 85 c0                                       test   eax,eax
  4c690b: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c6912: 74 09                                       je     0x4c691d
  4c6914: 8b c8                                       mov    ecx,eax
  4c6916: e8 75 f6 ff ff                              call   0x4c5f90
  4c691b: eb 02                                       jmp    0x4c691f
  4c691d: 33 c0                                       xor    eax,eax
  4c691f: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c6922: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c6925: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c692b: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c692e: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c6931: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c6938: 8b e5                                       mov    esp,ebp
  4c693a: 5d                                          pop    ebp
  4c693b: c3                                          ret

; Type 2: fabrique  [0x4c3ec0,0x4c3f34)
  4c3ec0: 55                                          push   ebp
  4c3ec1: 8b ec                                       mov    ebp,esp
  4c3ec3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c3ec9: 6a ff                                       push   0xffffffff
  4c3ecb: 68 bb d5 4d 00                              push   0x4dd5bb
  4c3ed0: 50                                          push   eax
  4c3ed1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c3ed8: 56                                          push   esi
  4c3ed9: 8b 75 08                                    mov    esi,DWORD PTR [ebp+0x8]
  4c3edc: 8b 86 ac 03 00 00                           mov    eax,DWORD PTR [esi+0x3ac]
  4c3ee2: 68 70 3b 4c 00                              push   0x4c3b70
  4c3ee7: 50                                          push   eax
  4c3ee8: e8 23 cc fc ff                              call   0x490b10
  4c3eed: 68 88 00 00 00                              push   0x88
  4c3ef2: e8 f9 e0 f7 ff                              call   0x441ff0
  4c3ef7: 83 c4 0c                                    add    esp,0xc
  4c3efa: 89 45 08                                    mov    DWORD PTR [ebp+0x8],eax
  4c3efd: 85 c0                                       test   eax,eax
  4c3eff: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c3f06: 74 09                                       je     0x4c3f11
  4c3f08: 8b c8                                       mov    ecx,eax
  4c3f0a: e8 51 f3 ff ff                              call   0x4c3260
  4c3f0f: eb 02                                       jmp    0x4c3f13
  4c3f11: 33 c0                                       xor    eax,eax
  4c3f13: 89 70 04                                    mov    DWORD PTR [eax+0x4],esi
  4c3f16: 8b 8e ac 03 00 00                           mov    ecx,DWORD PTR [esi+0x3ac]
  4c3f1c: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c3f1f: ff 86 ac 03 00 00                           inc    DWORD PTR [esi+0x3ac]
  4c3f25: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c3f28: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c3f2f: 5e                                          pop    esi
  4c3f30: 8b e5                                       mov    esp,ebp
  4c3f32: 5d                                          pop    ebp
  4c3f33: c3                                          ret

; Type 3: fabrique  [0x4c5ef0,0x4c5f64)
  4c5ef0: 55                                          push   ebp
  4c5ef1: 8b ec                                       mov    ebp,esp
  4c5ef3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c5ef9: 6a ff                                       push   0xffffffff
  4c5efb: 68 9b d8 4d 00                              push   0x4dd89b
  4c5f00: 50                                          push   eax
  4c5f01: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c5f08: 56                                          push   esi
  4c5f09: 8b 75 08                                    mov    esi,DWORD PTR [ebp+0x8]
  4c5f0c: 8b 86 ac 03 00 00                           mov    eax,DWORD PTR [esi+0x3ac]
  4c5f12: 68 90 5c 4c 00                              push   0x4c5c90
  4c5f17: 50                                          push   eax
  4c5f18: e8 f3 ab fc ff                              call   0x490b10
  4c5f1d: 68 88 00 00 00                              push   0x88
  4c5f22: e8 c9 c0 f7 ff                              call   0x441ff0
  4c5f27: 83 c4 0c                                    add    esp,0xc
  4c5f2a: 89 45 08                                    mov    DWORD PTR [ebp+0x8],eax
  4c5f2d: 85 c0                                       test   eax,eax
  4c5f2f: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c5f36: 74 09                                       je     0x4c5f41
  4c5f38: 8b c8                                       mov    ecx,eax
  4c5f3a: e8 f1 fb ff ff                              call   0x4c5b30
  4c5f3f: eb 02                                       jmp    0x4c5f43
  4c5f41: 33 c0                                       xor    eax,eax
  4c5f43: 89 70 04                                    mov    DWORD PTR [eax+0x4],esi
  4c5f46: 8b 8e ac 03 00 00                           mov    ecx,DWORD PTR [esi+0x3ac]
  4c5f4c: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c5f4f: ff 86 ac 03 00 00                           inc    DWORD PTR [esi+0x3ac]
  4c5f55: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5f58: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c5f5f: 5e                                          pop    esi
  4c5f60: 8b e5                                       mov    esp,ebp
  4c5f62: 5d                                          pop    ebp
  4c5f63: c3                                          ret

; Type 6: fabrique  [0x4c4230,0x4c426c)
  4c4230: 55                                          push   ebp
  4c4231: 8b ec                                       mov    ebp,esp
  4c4233: 6a 10                                       push   0x10
  4c4235: e8 b6 dd f7 ff                              call   0x441ff0
  4c423a: 83 c4 04                                    add    esp,0x4
  4c423d: 85 c0                                       test   eax,eax
  4c423f: 74 18                                       je     0x4c4259
  4c4241: 8b c8                                       mov    ecx,eax
  4c4243: e8 f8 fc ff ff                              call   0x4c3f40
  4c4248: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c424b: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c424e: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c4254: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c4257: 5d                                          pop    ebp
  4c4258: c3                                          ret
  4c4259: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c425c: 33 c0                                       xor    eax,eax
  4c425e: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c4261: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c4267: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c426a: 5d                                          pop    ebp
  4c426b: c3                                          ret

; Type 7: fabrique  [0x4c72d0,0x4c7330)
  4c72d0: 55                                          push   ebp
  4c72d1: 8b ec                                       mov    ebp,esp
  4c72d3: 6a ff                                       push   0xffffffff
  4c72d5: 68 9b da 4d 00                              push   0x4dda9b
  4c72da: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c72e0: 50                                          push   eax
  4c72e1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c72e8: 51                                          push   ecx
  4c72e9: 68 60 01 00 00                              push   0x160
  4c72ee: e8 fd ac f7 ff                              call   0x441ff0
  4c72f3: 83 c4 04                                    add    esp,0x4
  4c72f6: 89 45 f0                                    mov    DWORD PTR [ebp-0x10],eax
  4c72f9: 85 c0                                       test   eax,eax
  4c72fb: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c7302: 74 09                                       je     0x4c730d
  4c7304: 8b c8                                       mov    ecx,eax
  4c7306: e8 45 fd ff ff                              call   0x4c7050
  4c730b: eb 02                                       jmp    0x4c730f
  4c730d: 33 c0                                       xor    eax,eax
  4c730f: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c7312: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c7315: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c731b: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c731e: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c7321: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c7328: 8b e5                                       mov    esp,ebp
  4c732a: 5d                                          pop    ebp
  4c732b: c3                                          ret
  4c732c: 90                                          nop
  4c732d: 90                                          nop
  4c732e: 90                                          nop
  4c732f: 90                                          nop

; Type 9: fabrique  [0x4c7910,0x4c7984)
  4c7910: 55                                          push   ebp
  4c7911: 8b ec                                       mov    ebp,esp
  4c7913: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c7919: 6a ff                                       push   0xffffffff
  4c791b: 68 1b db 4d 00                              push   0x4ddb1b
  4c7920: 50                                          push   eax
  4c7921: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c7928: 56                                          push   esi
  4c7929: 8b 75 08                                    mov    esi,DWORD PTR [ebp+0x8]
  4c792c: 8b 86 ac 03 00 00                           mov    eax,DWORD PTR [esi+0x3ac]
  4c7932: 68 90 79 4c 00                              push   0x4c7990
  4c7937: 50                                          push   eax
  4c7938: e8 d3 91 fc ff                              call   0x490b10
  4c793d: 68 f8 00 00 00                              push   0xf8
  4c7942: e8 a9 a6 f7 ff                              call   0x441ff0
  4c7947: 83 c4 0c                                    add    esp,0xc
  4c794a: 89 45 08                                    mov    DWORD PTR [ebp+0x8],eax
  4c794d: 85 c0                                       test   eax,eax
  4c794f: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c7956: 74 09                                       je     0x4c7961
  4c7958: 8b c8                                       mov    ecx,eax
  4c795a: e8 11 fb ff ff                              call   0x4c7470
  4c795f: eb 02                                       jmp    0x4c7963
  4c7961: 33 c0                                       xor    eax,eax
  4c7963: 89 70 04                                    mov    DWORD PTR [eax+0x4],esi
  4c7966: 8b 8e ac 03 00 00                           mov    ecx,DWORD PTR [esi+0x3ac]
  4c796c: 89 48 10                                    mov    DWORD PTR [eax+0x10],ecx
  4c796f: ff 86 ac 03 00 00                           inc    DWORD PTR [esi+0x3ac]
  4c7975: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c7978: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c797f: 5e                                          pop    esi
  4c7980: 8b e5                                       mov    esp,ebp
  4c7982: 5d                                          pop    ebp
  4c7983: c3                                          ret

; Type 10: fabrique et vptr derivee  [0x4c5630,0x4c56a1)
  4c5630: 55                                          push   ebp
  4c5631: 8b ec                                       mov    ebp,esp
  4c5633: 6a ff                                       push   0xffffffff
  4c5635: 68 83 d7 4d 00                              push   0x4dd783
  4c563a: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c5640: 50                                          push   eax
  4c5641: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c5648: 51                                          push   ecx
  4c5649: 56                                          push   esi
  4c564a: 68 d0 01 00 00                              push   0x1d0
  4c564f: e8 9c c9 f7 ff                              call   0x441ff0
  4c5654: 8b f0                                       mov    esi,eax
  4c5656: 83 c4 04                                    add    esp,0x4
  4c5659: 89 75 f0                                    mov    DWORD PTR [ebp-0x10],esi
  4c565c: 33 c0                                       xor    eax,eax
  4c565e: 3b f0                                       cmp    esi,eax
  4c5660: 89 45 fc                                    mov    DWORD PTR [ebp-0x4],eax
  4c5663: 74 1e                                       je     0x4c5683
  4c5665: 8b ce                                       mov    ecx,esi
  4c5667: e8 24 09 00 00                              call   0x4c5f90
  4c566c: 8d 8e 60 01 00 00                           lea    ecx,[esi+0x160]
  4c5672: c6 45 fc 01                                 mov    BYTE PTR [ebp-0x4],0x1
  4c5676: e8 45 40 f4 ff                              call   0x4096c0
  4c567b: c7 06 a4 fd 4d 00                           mov    DWORD PTR [esi],0x4dfda4
  4c5681: 8b c6                                       mov    eax,esi
  4c5683: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c5686: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c5689: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c568f: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c5692: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5695: 5e                                          pop    esi
  4c5696: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c569d: 8b e5                                       mov    esp,ebp
  4c569f: 5d                                          pop    ebp
  4c56a0: c3                                          ret

; Type 11: fabrique  [0x4c7430,0x4c7490)
  4c7430: 55                                          push   ebp
  4c7431: 8b ec                                       mov    ebp,esp
  4c7433: 6a 0c                                       push   0xc
  4c7435: e8 b6 ab f7 ff                              call   0x441ff0
  4c743a: 83 c4 04                                    add    esp,0x4
  4c743d: 85 c0                                       test   eax,eax
  4c743f: 74 18                                       je     0x4c7459
  4c7441: 8b c8                                       mov    ecx,eax
  4c7443: e8 e8 fe ff ff                              call   0x4c7330
  4c7448: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c744b: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c744e: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c7454: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c7457: 5d                                          pop    ebp
  4c7458: c3                                          ret
  4c7459: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c745c: 33 c0                                       xor    eax,eax
  4c745e: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c7461: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c7467: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c746a: 5d                                          pop    ebp
  4c746b: c3                                          ret
  4c746c: 90                                          nop
  4c746d: 90                                          nop
  4c746e: 90                                          nop
  4c746f: 90                                          nop
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
  4c748f: 89                                          .byte 0x89

; Type 12: fabrique  [0x4c7df0,0x4c7e2c)
  4c7df0: 55                                          push   ebp
  4c7df1: 8b ec                                       mov    ebp,esp
  4c7df3: 6a 0c                                       push   0xc
  4c7df5: e8 f6 a1 f7 ff                              call   0x441ff0
  4c7dfa: 83 c4 04                                    add    esp,0x4
  4c7dfd: 85 c0                                       test   eax,eax
  4c7dff: 74 18                                       je     0x4c7e19
  4c7e01: 8b c8                                       mov    ecx,eax
  4c7e03: e8 38 fe ff ff                              call   0x4c7c40
  4c7e08: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c7e0b: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c7e0e: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c7e14: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c7e17: 5d                                          pop    ebp
  4c7e18: c3                                          ret
  4c7e19: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c7e1c: 33 c0                                       xor    eax,eax
  4c7e1e: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c7e21: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c7e27: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c7e2a: 5d                                          pop    ebp
  4c7e2b: c3                                          ret

; Type 13: fabrique avec initialisation directe du vptr  [0x4c52a0,0x4c5309)
  4c52a0: 55                                          push   ebp
  4c52a1: 8b ec                                       mov    ebp,esp
  4c52a3: 6a ff                                       push   0xffffffff
  4c52a5: 68 1b d7 4d 00                              push   0x4dd71b
  4c52aa: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c52b0: 50                                          push   eax
  4c52b1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c52b8: 51                                          push   ecx
  4c52b9: 56                                          push   esi
  4c52ba: 68 80 00 00 00                              push   0x80
  4c52bf: e8 2c cd f7 ff                              call   0x441ff0
  4c52c4: 8b f0                                       mov    esi,eax
  4c52c6: 83 c4 04                                    add    esp,0x4
  4c52c9: 89 75 f0                                    mov    DWORD PTR [ebp-0x10],esi
  4c52cc: 33 c0                                       xor    eax,eax
  4c52ce: 3b f0                                       cmp    esi,eax
  4c52d0: 89 45 fc                                    mov    DWORD PTR [ebp-0x4],eax
  4c52d3: 74 16                                       je     0x4c52eb
  4c52d5: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c52d8: c7 06 d4 e5 4d 00                           mov    DWORD PTR [esi],0x4de5d4
  4c52de: e8 dd 43 f4 ff                              call   0x4096c0
  4c52e3: c7 06 9c fd 4d 00                           mov    DWORD PTR [esi],0x4dfd9c
  4c52e9: 8b c6                                       mov    eax,esi
  4c52eb: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c52ee: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c52f1: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c52f7: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c52fa: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c52fd: 5e                                          pop    esi
  4c52fe: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c5305: 8b e5                                       mov    esp,ebp
  4c5307: 5d                                          pop    ebp
  4c5308: c3                                          ret

; Type 14: fabrique  [0x4c5ad0,0x4c5b30)
  4c5ad0: 55                                          push   ebp
  4c5ad1: 8b ec                                       mov    ebp,esp
  4c5ad3: 6a ff                                       push   0xffffffff
  4c5ad5: 68 5b d8 4d 00                              push   0x4dd85b
  4c5ada: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c5ae0: 50                                          push   eax
  4c5ae1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c5ae8: 51                                          push   ecx
  4c5ae9: 68 d0 01 00 00                              push   0x1d0
  4c5aee: e8 fd c4 f7 ff                              call   0x441ff0
  4c5af3: 83 c4 04                                    add    esp,0x4
  4c5af6: 89 45 f0                                    mov    DWORD PTR [ebp-0x10],eax
  4c5af9: 85 c0                                       test   eax,eax
  4c5afb: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c5b02: 74 09                                       je     0x4c5b0d
  4c5b04: 8b c8                                       mov    ecx,eax
  4c5b06: e8 25 fc ff ff                              call   0x4c5730
  4c5b0b: eb 02                                       jmp    0x4c5b0f
  4c5b0d: 33 c0                                       xor    eax,eax
  4c5b0f: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c5b12: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  4c5b15: 8b 89 ac 03 00 00                           mov    ecx,DWORD PTR [ecx+0x3ac]
  4c5b1b: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c5b1e: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5b21: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c5b28: 8b e5                                       mov    esp,ebp
  4c5b2a: 5d                                          pop    ebp
  4c5b2b: c3                                          ret
  4c5b2c: 90                                          nop
  4c5b2d: 90                                          nop
  4c5b2e: 90                                          nop
  4c5b2f: 90                                          nop

; Type 15: fabrique  [0x4c6fd0,0x4c7050)
  4c6fd0: 55                                          push   ebp
  4c6fd1: 8b ec                                       mov    ebp,esp
  4c6fd3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c6fd9: 6a ff                                       push   0xffffffff
  4c6fdb: 68 fb d9 4d 00                              push   0x4dd9fb
  4c6fe0: 50                                          push   eax
  4c6fe1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c6fe8: 56                                          push   esi
  4c6fe9: 8b 75 08                                    mov    esi,DWORD PTR [ebp+0x8]
  4c6fec: 8b 86 ac 03 00 00                           mov    eax,DWORD PTR [esi+0x3ac]
  4c6ff2: 68 e0 6b 4c 00                              push   0x4c6be0
  4c6ff7: 50                                          push   eax
  4c6ff8: e8 13 9b fc ff                              call   0x490b10
  4c6ffd: 68 88 00 00 00                              push   0x88
  4c7002: e8 e9 af f7 ff                              call   0x441ff0
  4c7007: 83 c4 0c                                    add    esp,0xc
  4c700a: 89 45 08                                    mov    DWORD PTR [ebp+0x8],eax
  4c700d: 85 c0                                       test   eax,eax
  4c700f: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c7016: 74 09                                       je     0x4c7021
  4c7018: 8b c8                                       mov    ecx,eax
  4c701a: e8 41 f9 ff ff                              call   0x4c6960
  4c701f: eb 02                                       jmp    0x4c7023
  4c7021: 33 c0                                       xor    eax,eax
  4c7023: 89 70 04                                    mov    DWORD PTR [eax+0x4],esi
  4c7026: 8b 8e ac 03 00 00                           mov    ecx,DWORD PTR [esi+0x3ac]
  4c702c: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c702f: ff 86 ac 03 00 00                           inc    DWORD PTR [esi+0x3ac]
  4c7035: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c7038: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c703f: 5e                                          pop    esi
  4c7040: 8b e5                                       mov    esp,ebp
  4c7042: 5d                                          pop    ebp
  4c7043: c3                                          ret
  4c7044: 90                                          nop
  4c7045: 90                                          nop
  4c7046: 90                                          nop
  4c7047: 90                                          nop
  4c7048: 90                                          nop
  4c7049: 90                                          nop
  4c704a: 90                                          nop
  4c704b: 90                                          nop
  4c704c: 90                                          nop
  4c704d: 90                                          nop
  4c704e: 90                                          nop
  4c704f: 90                                          nop

; Type 16: fabrique  [0x4c4f30,0x4c4fd0)
  4c4f30: 55                                          push   ebp
  4c4f31: 8b ec                                       mov    ebp,esp
  4c4f33: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c4f39: 6a ff                                       push   0xffffffff
  4c4f3b: 68 bb d6 4d 00                              push   0x4dd6bb
  4c4f40: 50                                          push   eax
  4c4f41: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c4f48: 56                                          push   esi
  4c4f49: 8b 75 08                                    mov    esi,DWORD PTR [ebp+0x8]
  4c4f4c: 8b 86 ac 03 00 00                           mov    eax,DWORD PTR [esi+0x3ac]
  4c4f52: 68 60 4c 4c 00                              push   0x4c4c60
  4c4f57: 50                                          push   eax
  4c4f58: e8 b3 bb fc ff                              call   0x490b10
  4c4f5d: 68 80 00 00 00                              push   0x80
  4c4f62: e8 89 d0 f7 ff                              call   0x441ff0
  4c4f67: 83 c4 0c                                    add    esp,0xc
  4c4f6a: 89 45 08                                    mov    DWORD PTR [ebp+0x8],eax
  4c4f6d: 85 c0                                       test   eax,eax
  4c4f6f: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c4f76: 74 09                                       je     0x4c4f81
  4c4f78: 8b c8                                       mov    ecx,eax
  4c4f7a: e8 b1 f7 ff ff                              call   0x4c4730
  4c4f7f: eb 02                                       jmp    0x4c4f83
  4c4f81: 33 c0                                       xor    eax,eax
  4c4f83: 89 70 04                                    mov    DWORD PTR [eax+0x4],esi
  4c4f86: 8b 8e ac 03 00 00                           mov    ecx,DWORD PTR [esi+0x3ac]
  4c4f8c: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c4f8f: ff 86 ac 03 00 00                           inc    DWORD PTR [esi+0x3ac]
  4c4f95: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c4f98: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c4f9f: 5e                                          pop    esi
  4c4fa0: 8b e5                                       mov    esp,ebp
  4c4fa2: 5d                                          pop    ebp
  4c4fa3: c3                                          ret
  4c4fa4: 90                                          nop
  4c4fa5: 90                                          nop
  4c4fa6: 90                                          nop
  4c4fa7: 90                                          nop
  4c4fa8: 90                                          nop
  4c4fa9: 90                                          nop
  4c4faa: 90                                          nop
  4c4fab: 90                                          nop
  4c4fac: 90                                          nop
  4c4fad: 90                                          nop
  4c4fae: 90                                          nop
  4c4faf: 90                                          nop
  4c4fb0: e9 0b 00 00 00                              jmp    0x4c4fc0
  4c4fb5: 90                                          nop
  4c4fb6: 90                                          nop
  4c4fb7: 90                                          nop
  4c4fb8: 90                                          nop
  4c4fb9: 90                                          nop
  4c4fba: 90                                          nop
  4c4fbb: 90                                          nop
  4c4fbc: 90                                          nop
  4c4fbd: 90                                          nop
  4c4fbe: 90                                          nop
  4c4fbf: 90                                          nop
  4c4fc0: 6a 0d                                       push   0xd
  4c4fc2: 68 a0 52 4c 00                              push   0x4c52a0
  4c4fc7: e8 04 bc f9 ff                              call   0x460bd0
  4c4fcc: 83 c4 08                                    add    esp,0x8
  4c4fcf: c3                                          ret

; Type 17: fabrique  [0x4c4690,0x4c4720)
  4c4690: 55                                          push   ebp
  4c4691: 8b ec                                       mov    ebp,esp
  4c4693: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c4699: 6a ff                                       push   0xffffffff
  4c469b: 68 3b d6 4d 00                              push   0x4dd63b
  4c46a0: 50                                          push   eax
  4c46a1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c46a8: 56                                          push   esi
  4c46a9: 8b 75 08                                    mov    esi,DWORD PTR [ebp+0x8]
  4c46ac: 8b 86 ac 03 00 00                           mov    eax,DWORD PTR [esi+0x3ac]
  4c46b2: 68 c0 43 4c 00                              push   0x4c43c0
  4c46b7: 50                                          push   eax
  4c46b8: e8 53 c4 fc ff                              call   0x490b10
  4c46bd: 68 80 00 00 00                              push   0x80
  4c46c2: e8 29 d9 f7 ff                              call   0x441ff0
  4c46c7: 83 c4 0c                                    add    esp,0xc
  4c46ca: 89 45 08                                    mov    DWORD PTR [ebp+0x8],eax
  4c46cd: 85 c0                                       test   eax,eax
  4c46cf: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c46d6: 74 09                                       je     0x4c46e1
  4c46d8: 8b c8                                       mov    ecx,eax
  4c46da: e8 91 fb ff ff                              call   0x4c4270
  4c46df: eb 02                                       jmp    0x4c46e3
  4c46e1: 33 c0                                       xor    eax,eax
  4c46e3: 89 70 04                                    mov    DWORD PTR [eax+0x4],esi
  4c46e6: 8b 8e ac 03 00 00                           mov    ecx,DWORD PTR [esi+0x3ac]
  4c46ec: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  4c46ef: ff 86 ac 03 00 00                           inc    DWORD PTR [esi+0x3ac]
  4c46f5: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c46f8: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c46ff: 5e                                          pop    esi
  4c4700: 8b e5                                       mov    esp,ebp
  4c4702: 5d                                          pop    ebp
  4c4703: c3                                          ret
  4c4704: 90                                          nop
  4c4705: 90                                          nop
  4c4706: 90                                          nop
  4c4707: 90                                          nop
  4c4708: 90                                          nop
  4c4709: 90                                          nop
  4c470a: 90                                          nop
  4c470b: 90                                          nop
  4c470c: 90                                          nop
  4c470d: 90                                          nop
  4c470e: 90                                          nop
  4c470f: 90                                          nop
  4c4710: e9 0b 00 00 00                              jmp    0x4c4720
  4c4715: 90                                          nop
  4c4716: 90                                          nop
  4c4717: 90                                          nop
  4c4718: 90                                          nop
  4c4719: 90                                          nop
  4c471a: 90                                          nop
  4c471b: 90                                          nop
  4c471c: 90                                          nop
  4c471d: 90                                          nop
  4c471e: 90                                          nop
  4c471f: 90                                          nop

