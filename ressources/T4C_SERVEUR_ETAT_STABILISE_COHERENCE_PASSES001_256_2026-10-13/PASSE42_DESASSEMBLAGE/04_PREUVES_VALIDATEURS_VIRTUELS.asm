; T4C Server(1).exe - Passe 42
; VA, octets bruts, instructions objdump Intel; verification directe de chaque ligne sur .text.
; Fenetres volontairement selectionnees selon les branches analysees; une fonction peut continuer au-dela.

; Type 1: premiers cas de verification  [0x4c60a0,0x4c6190)
  4c60a0: 55                                          push   ebp
  4c60a1: 8b ec                                       mov    ebp,esp
  4c60a3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c60a9: 6a ff                                       push   0xffffffff
  4c60ab: 68 18 d9 4d 00                              push   0x4dd918
  4c60b0: 50                                          push   eax
  4c60b1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c60b8: 56                                          push   esi
  4c60b9: 57                                          push   edi
  4c60ba: 8b f1                                       mov    esi,ecx
  4c60bc: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c60bf: 25 ff ff 00 00                              and    eax,0xffff
  4c60c4: 48                                          dec    eax
  4c60c5: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c60cc: bf 01 00 00 00                              mov    edi,0x1
  4c60d1: 0f 84 85 00 00 00                           je     0x4c615c
  4c60d7: 48                                          dec    eax
  4c60d8: 74 48                                       je     0x4c6122
  4c60da: 48                                          dec    eax
  4c60db: 0f 85 96 00 00 00                           jne    0x4c6177
  4c60e1: 51                                          push   ecx
  4c60e2: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c60e5: 8b cc                                       mov    ecx,esp
  4c60e7: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c60ea: 50                                          push   eax
  4c60eb: e8 5c b9 00 00                              call   0x4d1a4c
  4c60f0: 8d 8e f0 00 00 00                           lea    ecx,[esi+0xf0]
  4c60f6: e8 05 38 f4 ff                              call   0x409900
  4c60fb: 85 c0                                       test   eax,eax
  4c60fd: 75 7a                                       jne    0x4c6179
  4c60ff: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c6102: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c6109: e8 32 b9 00 00                              call   0x4d1a40
  4c610e: 33 c0                                       xor    eax,eax
  4c6110: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c6113: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c611a: 5f                                          pop    edi
  4c611b: 5e                                          pop    esi
  4c611c: 8b e5                                       mov    esp,ebp
  4c611e: 5d                                          pop    ebp
  4c611f: c2 08 00                                    ret    0x8
  4c6122: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c6125: e8 58 b9 00 00                              call   0x4d1a82
  4c612a: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c612d: e8 4a b9 00 00                              call   0x4d1a7c
  4c6132: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c6135: 8b 41 f8                                    mov    eax,DWORD PTR [ecx-0x8]
  4c6138: 85 c0                                       test   eax,eax
  4c613a: 74 3d                                       je     0x4c6179
  4c613c: 51                                          push   ecx
  4c613d: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c6140: 8b cc                                       mov    ecx,esp
  4c6142: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c6145: 52                                          push   edx
  4c6146: e8 01 b9 00 00                              call   0x4d1a4c
  4c614b: 8d 8e 80 00 00 00                           lea    ecx,[esi+0x80]
  4c6151: e8 aa 37 f4 ff                              call   0x409900
  4c6156: 85 c0                                       test   eax,eax
  4c6158: 75 1f                                       jne    0x4c6179
  4c615a: eb 1b                                       jmp    0x4c6177
  4c615c: 51                                          push   ecx
  4c615d: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c6160: 8b cc                                       mov    ecx,esp
  4c6162: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c6165: 50                                          push   eax
  4c6166: e8 e1 b8 00 00                              call   0x4d1a4c
  4c616b: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c616e: e8 8d 37 f4 ff                              call   0x409900
  4c6173: 85 c0                                       test   eax,eax
  4c6175: 75 02                                       jne    0x4c6179
  4c6177: 33 ff                                       xor    edi,edi
  4c6179: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c617c: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c6183: e8 b8 b8 00 00                              call   0x4d1a40
  4c6188: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c618b: 8b c7                                       mov    eax,edi
  4c618d: 5f                                          pop    edi
  4c618e: 64                                          fs
  4c618f: 89                                          .byte 0x89

; Type 2: debut du selecteur de parametres  [0x4c32f0,0x4c33b0)
  4c32f0: 55                                          push   ebp
  4c32f1: 8b ec                                       mov    ebp,esp
  4c32f3: 6a ff                                       push   0xffffffff
  4c32f5: 68 48 d5 4d 00                              push   0x4dd548
  4c32fa: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c3300: 50                                          push   eax
  4c3301: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c3308: 51                                          push   ecx
  4c3309: 53                                          push   ebx
  4c330a: 56                                          push   esi
  4c330b: 57                                          push   edi
  4c330c: 8b d9                                       mov    ebx,ecx
  4c330e: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c3311: 33 f6                                       xor    esi,esi
  4c3313: 25 ff ff 00 00                              and    eax,0xffff
  4c3318: 48                                          dec    eax
  4c3319: bf 01 00 00 00                              mov    edi,0x1
  4c331e: 89 75 fc                                    mov    DWORD PTR [ebp-0x4],esi
  4c3321: 89 7d f0                                    mov    DWORD PTR [ebp-0x10],edi
  4c3324: 0f 84 44 05 00 00                           je     0x4c386e
  4c332a: 48                                          dec    eax
  4c332b: 74 32                                       je     0x4c335f
  4c332d: 48                                          dec    eax
  4c332e: 74 08                                       je     0x4c3338
  4c3330: 89 75 f0                                    mov    DWORD PTR [ebp-0x10],esi
  4c3333: e9 52 05 00 00                              jmp    0x4c388a
  4c3338: 51                                          push   ecx
  4c3339: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c333c: 8b cc                                       mov    ecx,esp
  4c333e: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c3341: 50                                          push   eax
  4c3342: e8 05 e7 00 00                              call   0x4d1a4c
  4c3347: 8d 4b 10                                    lea    ecx,[ebx+0x10]
  4c334a: e8 b1 65 f4 ff                              call   0x409900
  4c334f: 3b c6                                       cmp    eax,esi
  4c3351: 0f 85 33 05 00 00                           jne    0x4c388a
  4c3357: 89 75 f0                                    mov    DWORD PTR [ebp-0x10],esi
  4c335a: e9 2b 05 00 00                              jmp    0x4c388a
  4c335f: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c3362: 8b 35 e4 e2 4d 00                           mov    esi,DWORD PTR ds:0x4de2e4
  4c3368: 68 30 01 51 00                              push   0x510130
  4c336d: 51                                          push   ecx
  4c336e: ff d6                                       call   esi
  4c3370: 83 c4 08                                    add    esp,0x8
  4c3373: 85 c0                                       test   eax,eax
  4c3375: 0f 84 eb 04 00 00                           je     0x4c3866
  4c337b: 8b 55 08                                    mov    edx,DWORD PTR [ebp+0x8]
  4c337e: 68 2c 01 51 00                              push   0x51012c
  4c3383: 52                                          push   edx
  4c3384: ff d6                                       call   esi
  4c3386: 83 c4 08                                    add    esp,0x8
  4c3389: 85 c0                                       test   eax,eax
  4c338b: 0f 84 d5 04 00 00                           je     0x4c3866
  4c3391: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  4c3394: 68 24 01 51 00                              push   0x510124
  4c3399: 50                                          push   eax
  4c339a: ff d6                                       call   esi
  4c339c: 83 c4 08                                    add    esp,0x8
  4c339f: 85 c0                                       test   eax,eax
  4c33a1: 0f 84 b7 04 00 00                           je     0x4c385e
  4c33a7: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c33aa: 68 20 01 51 00                              push   0x510120
  4c33af: 51                                          push   ecx

; Type 3: controle par identifiant de parametre  [0x4c5be0,0x4c5c90)
  4c5be0: 55                                          push   ebp
  4c5be1: 8b ec                                       mov    ebp,esp
  4c5be3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c5be9: 6a ff                                       push   0xffffffff
  4c5beb: 68 78 d8 4d 00                              push   0x4dd878
  4c5bf0: 50                                          push   eax
  4c5bf1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c5bf8: 56                                          push   esi
  4c5bf9: 57                                          push   edi
  4c5bfa: 8b f1                                       mov    esi,ecx
  4c5bfc: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c5bff: 25 ff ff 00 00                              and    eax,0xffff
  4c5c04: 48                                          dec    eax
  4c5c05: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c5c0c: bf 01 00 00 00                              mov    edi,0x1
  4c5c11: 74 38                                       je     0x4c5c4b
  4c5c13: 48                                          dec    eax
  4c5c14: 74 18                                       je     0x4c5c2e
  4c5c16: 48                                          dec    eax
  4c5c17: 75 46                                       jne    0x4c5c5f
  4c5c19: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  4c5c1c: 50                                          push   eax
  4c5c1d: ff 15 14 e3 4d 00                           call   DWORD PTR ds:0x4de314
  4c5c23: 83 c4 04                                    add    esp,0x4
  4c5c26: 89 86 80 00 00 00                           mov    DWORD PTR [esi+0x80],eax
  4c5c2c: eb 33                                       jmp    0x4c5c61
  4c5c2e: 51                                          push   ecx
  4c5c2f: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c5c32: 8b cc                                       mov    ecx,esp
  4c5c34: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c5c37: 52                                          push   edx
  4c5c38: e8 0f be 00 00                              call   0x4d1a4c
  4c5c3d: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c5c40: e8 bb 3c f4 ff                              call   0x409900
  4c5c45: 85 c0                                       test   eax,eax
  4c5c47: 75 18                                       jne    0x4c5c61
  4c5c49: eb 14                                       jmp    0x4c5c5f
  4c5c4b: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  4c5c4e: 50                                          push   eax
  4c5c4f: ff 15 14 e3 4d 00                           call   DWORD PTR ds:0x4de314
  4c5c55: 83 c4 04                                    add    esp,0x4
  4c5c58: 85 c0                                       test   eax,eax
  4c5c5a: 89 46 0c                                    mov    DWORD PTR [esi+0xc],eax
  4c5c5d: 75 02                                       jne    0x4c5c61
  4c5c5f: 33 ff                                       xor    edi,edi
  4c5c61: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c5c64: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c5c6b: e8 d0 bd 00 00                              call   0x4d1a40
  4c5c70: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5c73: 8b c7                                       mov    eax,edi
  4c5c75: 5f                                          pop    edi
  4c5c76: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c5c7d: 5e                                          pop    esi
  4c5c7e: 8b e5                                       mov    esp,ebp
  4c5c80: 5d                                          pop    ebp
  4c5c81: c2 08 00                                    ret    0x8
  4c5c84: 90                                          nop
  4c5c85: 90                                          nop
  4c5c86: 90                                          nop
  4c5c87: 90                                          nop
  4c5c88: 90                                          nop
  4c5c89: 90                                          nop
  4c5c8a: 90                                          nop
  4c5c8b: 90                                          nop
  4c5c8c: 90                                          nop
  4c5c8d: 90                                          nop
  4c5c8e: 90                                          nop
  4c5c8f: 90                                          nop

; Type 6: verifications et conversions  [0x4c3fc0,0x4c4090)
  4c3fc0: 55                                          push   ebp
  4c3fc1: 8b ec                                       mov    ebp,esp
  4c3fc3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c3fc9: 6a ff                                       push   0xffffffff
  4c3fcb: 68 d8 d5 4d 00                              push   0x4dd5d8
  4c3fd0: 50                                          push   eax
  4c3fd1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c3fd8: 53                                          push   ebx
  4c3fd9: 56                                          push   esi
  4c3fda: 57                                          push   edi
  4c3fdb: 8b f1                                       mov    esi,ecx
  4c3fdd: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c3fe0: 25 ff ff 00 00                              and    eax,0xffff
  4c3fe5: 48                                          dec    eax
  4c3fe6: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c3fed: bb 01 00 00 00                              mov    ebx,0x1
  4c3ff2: 74 2e                                       je     0x4c4022
  4c3ff4: 48                                          dec    eax
  4c3ff5: 75 75                                       jne    0x4c406c
  4c3ff7: 33 c0                                       xor    eax,eax
  4c3ff9: 8a 46 0e                                    mov    al,BYTE PTR [esi+0xe]
  4c3ffc: 53                                          push   ebx
  4c3ffd: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c4000: 50                                          push   eax
  4c4001: 51                                          push   ecx
  4c4002: 8b cc                                       mov    ecx,esp
  4c4004: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c4007: 52                                          push   edx
  4c4008: e8 3f da 00 00                              call   0x4d1a4c
  4c400d: e8 be 62 fc ff                              call   0x48a2d0
  4c4012: 83 c4 0c                                    add    esp,0xc
  4c4015: 66 85 c0                                    test   ax,ax
  4c4018: 66 89 46 0c                                 mov    WORD PTR [esi+0xc],ax
  4c401c: 75 4e                                       jne    0x4c406c
  4c401e: 33 db                                       xor    ebx,ebx
  4c4020: eb 4a                                       jmp    0x4c406c
  4c4022: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  4c4025: 8b 3d e4 e2 4d 00                           mov    edi,DWORD PTR ds:0x4de2e4
  4c402b: 68 6c 01 51 00                              push   0x51016c
  4c4030: 50                                          push   eax
  4c4031: ff d7                                       call   edi
  4c4033: 83 c4 08                                    add    esp,0x8
  4c4036: 85 c0                                       test   eax,eax
  4c4038: 75 06                                       jne    0x4c4040
  4c403a: c6 46 0e 03                                 mov    BYTE PTR [esi+0xe],0x3
  4c403e: eb 2c                                       jmp    0x4c406c
  4c4040: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c4043: 68 68 01 51 00                              push   0x510168
  4c4048: 51                                          push   ecx
  4c4049: ff d7                                       call   edi
  4c404b: 83 c4 08                                    add    esp,0x8
  4c404e: 85 c0                                       test   eax,eax
  4c4050: 74 16                                       je     0x4c4068
  4c4052: 8b 55 08                                    mov    edx,DWORD PTR [ebp+0x8]
  4c4055: 68 60 01 51 00                              push   0x510160
  4c405a: 52                                          push   edx
  4c405b: ff d7                                       call   edi
  4c405d: 83 c4 08                                    add    esp,0x8
  4c4060: 85 c0                                       test   eax,eax
  4c4062: 74 04                                       je     0x4c4068
  4c4064: 33 db                                       xor    ebx,ebx
  4c4066: eb 04                                       jmp    0x4c406c
  4c4068: c6 46 0e 02                                 mov    BYTE PTR [esi+0xe],0x2
  4c406c: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c406f: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c4076: e8 c5 d9 00 00                              call   0x4d1a40
  4c407b: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c407e: 5f                                          pop    edi
  4c407f: 5e                                          pop    esi
  4c4080: 8b c3                                       mov    eax,ebx
  4c4082: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c4089: 5b                                          pop    ebx
  4c408a: 8b e5                                       mov    esp,ebp
  4c408c: 5d                                          pop    ebp
  4c408d: c2 08 00                                    ret    0x8

; Type 7: verifications sur plusieurs ID  [0x4c7180,0x4c7210)
  4c7180: 55                                          push   ebp
  4c7181: 8b ec                                       mov    ebp,esp
  4c7183: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c7189: 6a ff                                       push   0xffffffff
  4c718b: 68 78 da 4d 00                              push   0x4dda78
  4c7190: 50                                          push   eax
  4c7191: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c7198: 56                                          push   esi
  4c7199: 8b f1                                       mov    esi,ecx
  4c719b: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c719e: 25 ff ff 00 00                              and    eax,0xffff
  4c71a3: 48                                          dec    eax
  4c71a4: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c71ab: 74 38                                       je     0x4c71e5
  4c71ad: 48                                          dec    eax
  4c71ae: 74 1e                                       je     0x4c71ce
  4c71b0: 48                                          dec    eax
  4c71b1: 74 04                                       je     0x4c71b7
  4c71b3: 33 f6                                       xor    esi,esi
  4c71b5: eb 47                                       jmp    0x4c71fe
  4c71b7: 51                                          push   ecx
  4c71b8: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c71bb: 8b cc                                       mov    ecx,esp
  4c71bd: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c71c0: 50                                          push   eax
  4c71c1: e8 86 a8 00 00                              call   0x4d1a4c
  4c71c6: 8d 8e f0 00 00 00                           lea    ecx,[esi+0xf0]
  4c71cc: eb 29                                       jmp    0x4c71f7
  4c71ce: 51                                          push   ecx
  4c71cf: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c71d2: 8b cc                                       mov    ecx,esp
  4c71d4: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c71d7: 52                                          push   edx
  4c71d8: e8 6f a8 00 00                              call   0x4d1a4c
  4c71dd: 8d 8e 80 00 00 00                           lea    ecx,[esi+0x80]
  4c71e3: eb 12                                       jmp    0x4c71f7
  4c71e5: 51                                          push   ecx
  4c71e6: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c71e9: 8b cc                                       mov    ecx,esp
  4c71eb: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c71ee: 50                                          push   eax
  4c71ef: e8 58 a8 00 00                              call   0x4d1a4c
  4c71f4: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c71f7: e8 04 27 f4 ff                              call   0x409900
  4c71fc: 8b f0                                       mov    esi,eax
  4c71fe: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c7201: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c7208: e8 33 a8 00 00                              call   0x4d1a40
  4c720d: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]

; Type 9: table de branchement et premiere validation  [0x4c75a0,0x4c7660)
  4c75a0: 55                                          push   ebp
  4c75a1: 8b ec                                       mov    ebp,esp
  4c75a3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c75a9: 6a ff                                       push   0xffffffff
  4c75ab: 68 f8 da 4d 00                              push   0x4ddaf8
  4c75b0: 50                                          push   eax
  4c75b1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c75b8: 53                                          push   ebx
  4c75b9: 56                                          push   esi
  4c75ba: 57                                          push   edi
  4c75bb: 8b f9                                       mov    edi,ecx
  4c75bd: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c75c0: 25 ff ff 00 00                              and    eax,0xffff
  4c75c5: 48                                          dec    eax
  4c75c6: 83 f8 03                                    cmp    eax,0x3
  4c75c9: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c75d0: bb 01 00 00 00                              mov    ebx,0x1
  4c75d5: 0f 87 08 01 00 00                           ja     0x4c76e3
  4c75db: ff 24 85 0c 77 4c 00                        jmp    DWORD PTR [eax*4+0x4c770c]
  4c75e2: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c75e5: 8b 35 e4 e2 4d 00                           mov    esi,DWORD PTR ds:0x4de2e4
  4c75eb: 68 78 02 51 00                              push   0x510278
  4c75f0: 51                                          push   ecx
  4c75f1: ff d6                                       call   esi
  4c75f3: 83 c4 08                                    add    esp,0x8
  4c75f6: 85 c0                                       test   eax,eax
  4c75f8: 75 0b                                       jne    0x4c7605
  4c75fa: 66 c7 47 0e 01 00                           mov    WORD PTR [edi+0xe],0x1
  4c7600: e9 e0 00 00 00                              jmp    0x4c76e5
  4c7605: 8b 55 08                                    mov    edx,DWORD PTR [ebp+0x8]
  4c7608: 68 6c 02 51 00                              push   0x51026c
  4c760d: 52                                          push   edx
  4c760e: ff d6                                       call   esi
  4c7610: 83 c4 08                                    add    esp,0x8
  4c7613: 85 c0                                       test   eax,eax
  4c7615: 75 0b                                       jne    0x4c7622
  4c7617: 66 c7 47 0e 02 00                           mov    WORD PTR [edi+0xe],0x2
  4c761d: e9 c3 00 00 00                              jmp    0x4c76e5
  4c7622: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  4c7625: 68 64 02 51 00                              push   0x510264
  4c762a: 50                                          push   eax
  4c762b: ff d6                                       call   esi
  4c762d: 83 c4 08                                    add    esp,0x8
  4c7630: 85 c0                                       test   eax,eax
  4c7632: 75 0b                                       jne    0x4c763f
  4c7634: 66 c7 47 0e 05 00                           mov    WORD PTR [edi+0xe],0x5
  4c763a: e9 a6 00 00 00                              jmp    0x4c76e5
  4c763f: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c7642: 68 58 02 51 00                              push   0x510258
  4c7647: 51                                          push   ecx
  4c7648: ff d6                                       call   esi
  4c764a: 83 c4 08                                    add    esp,0x8
  4c764d: 85 c0                                       test   eax,eax
  4c764f: 75 0b                                       jne    0x4c765c
  4c7651: 66 c7 47 0e 03 00                           mov    WORD PTR [edi+0xe],0x3
  4c7657: e9 89 00 00 00                              jmp    0x4c76e5
  4c765c: 8b 55 08                                    mov    edx,DWORD PTR [ebp+0x8]
  4c765f: 68                                          .byte 0x68

; Type 10: validation particuliere ID 3 et delegation au type 1  [0x4c54b0,0x4c5572)
  4c54b0: 55                                          push   ebp
  4c54b1: 8b ec                                       mov    ebp,esp
  4c54b3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c54b9: 6a ff                                       push   0xffffffff
  4c54bb: 68 58 d7 4d 00                              push   0x4dd758
  4c54c0: 50                                          push   eax
  4c54c1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c54c8: 56                                          push   esi
  4c54c9: 57                                          push   edi
  4c54ca: 8b f1                                       mov    esi,ecx
  4c54cc: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c54cf: 66 3d 03 00                                 cmp    ax,0x3
  4c54d3: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c54da: 75 48                                       jne    0x4c5524
  4c54dc: 51                                          push   ecx
  4c54dd: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c54e0: 8b cc                                       mov    ecx,esp
  4c54e2: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c54e5: 50                                          push   eax
  4c54e6: bf 01 00 00 00                              mov    edi,0x1
  4c54eb: e8 5c c5 00 00                              call   0x4d1a4c
  4c54f0: 8d 8e 60 01 00 00                           lea    ecx,[esi+0x160]
  4c54f6: e8 05 44 f4 ff                              call   0x409900
  4c54fb: 85 c0                                       test   eax,eax
  4c54fd: 75 02                                       jne    0x4c5501
  4c54ff: 33 ff                                       xor    edi,edi
  4c5501: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c5504: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c550b: e8 30 c5 00 00                              call   0x4d1a40
  4c5510: 8b c7                                       mov    eax,edi
  4c5512: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5515: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c551c: 5f                                          pop    edi
  4c551d: 5e                                          pop    esi
  4c551e: 8b e5                                       mov    esp,ebp
  4c5520: 5d                                          pop    ebp
  4c5521: c2 08 00                                    ret    0x8
  4c5524: 66 3d 04 00                                 cmp    ax,0x4
  4c5528: 74 0d                                       je     0x4c5537
  4c552a: 50                                          push   eax
  4c552b: 51                                          push   ecx
  4c552c: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c552f: 8b cc                                       mov    ecx,esp
  4c5531: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c5534: 52                                          push   edx
  4c5535: eb 0c                                       jmp    0x4c5543
  4c5537: 6a 03                                       push   0x3
  4c5539: 51                                          push   ecx
  4c553a: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c553d: 8b cc                                       mov    ecx,esp
  4c553f: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c5542: 50                                          push   eax
  4c5543: e8 04 c5 00 00                              call   0x4d1a4c
  4c5548: 8b ce                                       mov    ecx,esi
  4c554a: e8 51 0b 00 00                              call   0x4c60a0
  4c554f: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c5552: 8b f0                                       mov    esi,eax
  4c5554: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c555b: e8 e0 c4 00 00                              call   0x4d1a40
  4c5560: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5563: 5f                                          pop    edi
  4c5564: 8b c6                                       mov    eax,esi
  4c5566: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c556d: 5e                                          pop    esi
  4c556e: 8b e5                                       mov    esp,ebp
  4c5570: 5d                                          pop    ebp
  4c5571: c2                                          .byte 0xc2

; Type 11: validation constante vraie  [0x4c73a0,0x4c73b3)
  4c73a0: 55                                          push   ebp
  4c73a1: 8b ec                                       mov    ebp,esp
  4c73a3: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c73a6: e8 95 a6 00 00                              call   0x4d1a40
  4c73ab: b8 01 00 00 00                              mov    eax,0x1
  4c73b0: 5d                                          pop    ebp
  4c73b1: c2                                          .byte 0xc2
  4c73b2: 08                                          .byte 0x8

; Type 12: validation constante vraie  [0x4c7cb0,0x4c7cc4)
  4c7cb0: 55                                          push   ebp
  4c7cb1: 8b ec                                       mov    ebp,esp
  4c7cb3: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c7cb6: e8 85 9d 00 00                              call   0x4d1a40
  4c7cbb: b8 01 00 00 00                              mov    eax,0x1
  4c7cc0: 5d                                          pop    ebp
  4c7cc1: c2 08 00                                    ret    0x8

; Type 13: debut et cas acceptes  [0x4c4fd0,0x4c5080)
  4c4fd0: 55                                          push   ebp
  4c4fd1: 8b ec                                       mov    ebp,esp
  4c4fd3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c4fd9: 6a ff                                       push   0xffffffff
  4c4fdb: 68 d8 d6 4d 00                              push   0x4dd6d8
  4c4fe0: 50                                          push   eax
  4c4fe1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c4fe8: 56                                          push   esi
  4c4fe9: 8b f1                                       mov    esi,ecx
  4c4feb: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c4fee: 25 ff ff 00 00                              and    eax,0xffff
  4c4ff3: 48                                          dec    eax
  4c4ff4: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c4ffb: 74 62                                       je     0x4c505f
  4c4ffd: 48                                          dec    eax
  4c4ffe: 74 22                                       je     0x4c5022
  4c5000: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c5003: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c500a: e8 31 ca 00 00                              call   0x4d1a40
  4c500f: 33 c0                                       xor    eax,eax
  4c5011: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5014: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c501b: 5e                                          pop    esi
  4c501c: 8b e5                                       mov    esp,ebp
  4c501e: 5d                                          pop    ebp
  4c501f: c2 08 00                                    ret    0x8
  4c5022: 51                                          push   ecx
  4c5023: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c5026: 8b cc                                       mov    ecx,esp
  4c5028: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c502b: 50                                          push   eax
  4c502c: e8 1b ca 00 00                              call   0x4d1a4c
  4c5031: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c5034: e8 c7 48 f4 ff                              call   0x409900
  4c5039: 85 c0                                       test   eax,eax
  4c503b: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c5042: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c5045: 75 2a                                       jne    0x4c5071
  4c5047: e8 f4 c9 00 00                              call   0x4d1a40
  4c504c: 33 c0                                       xor    eax,eax
  4c504e: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5051: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c5058: 5e                                          pop    esi
  4c5059: 8b e5                                       mov    esp,ebp
  4c505b: 5d                                          pop    ebp
  4c505c: c2 08 00                                    ret    0x8
  4c505f: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4c5062: 51                                          push   ecx
  4c5063: ff 15 14 e3 4d 00                           call   DWORD PTR ds:0x4de314
  4c5069: 83 c4 04                                    add    esp,0x4
  4c506c: 89 46 0c                                    mov    DWORD PTR [esi+0xc],eax
  4c506f: eb c8                                       jmp    0x4c5039
  4c5071: e8 ca c9 00 00                              call   0x4d1a40
  4c5076: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5079: b8 01 00 00 00                              mov    eax,0x1
  4c507e: 64                                          fs
  4c507f: 89                                          .byte 0x89

; Type 14: quatre cas et table de branchement  [0x4c5880,0x4c5970)
  4c5880: 55                                          push   ebp
  4c5881: 8b ec                                       mov    ebp,esp
  4c5883: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c5889: 6a ff                                       push   0xffffffff
  4c588b: 68 38 d8 4d 00                              push   0x4dd838
  4c5890: 50                                          push   eax
  4c5891: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c5898: 56                                          push   esi
  4c5899: 8b f1                                       mov    esi,ecx
  4c589b: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c589e: 25 ff ff 00 00                              and    eax,0xffff
  4c58a3: 48                                          dec    eax
  4c58a4: 83 f8 03                                    cmp    eax,0x3
  4c58a7: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c58ae: 77 42                                       ja     0x4c58f2
  4c58b0: ff 24 85 70 59 4c 00                        jmp    DWORD PTR [eax*4+0x4c5970]
  4c58b7: 51                                          push   ecx
  4c58b8: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c58bb: 8b cc                                       mov    ecx,esp
  4c58bd: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c58c0: 52                                          push   edx
  4c58c1: e8 86 c1 00 00                              call   0x4d1a4c
  4c58c6: 8d 8e 80 00 00 00                           lea    ecx,[esi+0x80]
  4c58cc: e8 2f 40 f4 ff                              call   0x409900
  4c58d1: 85 c0                                       test   eax,eax
  4c58d3: 75 74                                       jne    0x4c5949
  4c58d5: eb 1b                                       jmp    0x4c58f2
  4c58d7: 51                                          push   ecx
  4c58d8: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c58db: 8b cc                                       mov    ecx,esp
  4c58dd: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c58e0: 50                                          push   eax
  4c58e1: e8 66 c1 00 00                              call   0x4d1a4c
  4c58e6: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c58e9: e8 12 40 f4 ff                              call   0x409900
  4c58ee: 85 c0                                       test   eax,eax
  4c58f0: 75 57                                       jne    0x4c5949
  4c58f2: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c58f5: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c58fc: e8 3f c1 00 00                              call   0x4d1a40
  4c5901: 33 c0                                       xor    eax,eax
  4c5903: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c5906: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c590d: 5e                                          pop    esi
  4c590e: 8b e5                                       mov    esp,ebp
  4c5910: 5d                                          pop    ebp
  4c5911: c2 08 00                                    ret    0x8
  4c5914: 51                                          push   ecx
  4c5915: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c5918: 8b cc                                       mov    ecx,esp
  4c591a: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c591d: 52                                          push   edx
  4c591e: e8 29 c1 00 00                              call   0x4d1a4c
  4c5923: 8d 8e f0 00 00 00                           lea    ecx,[esi+0xf0]
  4c5929: eb be                                       jmp    0x4c58e9
  4c592b: 51                                          push   ecx
  4c592c: 8d 45 08                                    lea    eax,[ebp+0x8]
  4c592f: 8b cc                                       mov    ecx,esp
  4c5931: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c5934: 50                                          push   eax
  4c5935: e8 12 c1 00 00                              call   0x4d1a4c
  4c593a: 8d 8e 60 01 00 00                           lea    ecx,[esi+0x160]
  4c5940: e8 bb 3f f4 ff                              call   0x409900
  4c5945: 85 c0                                       test   eax,eax
  4c5947: 74 a9                                       je     0x4c58f2
  4c5949: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c594c: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c5953: e8 e8 c0 00 00                              call   0x4d1a40
  4c5958: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c595b: b8 01 00 00 00                              mov    eax,0x1
  4c5960: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c5967: 5e                                          pop    esi
  4c5968: 8b e5                                       mov    esp,ebp
  4c596a: 5d                                          pop    ebp
  4c596b: c2 08 00                                    ret    0x8
  4c596e: 8b ff                                       mov    edi,edi

; Type 15: ID 1 / ID 2  [0x4c69c0,0x4c6a85)
  4c69c0: 55                                          push   ebp
  4c69c1: 8b ec                                       mov    ebp,esp
  4c69c3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c69c9: 6a ff                                       push   0xffffffff
  4c69cb: 68 b8 d9 4d 00                              push   0x4dd9b8
  4c69d0: 50                                          push   eax
  4c69d1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c69d8: 56                                          push   esi
  4c69d9: 8b f1                                       mov    esi,ecx
  4c69db: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c69de: 25 ff ff 00 00                              and    eax,0xffff
  4c69e3: 48                                          dec    eax
  4c69e4: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c69eb: 74 5d                                       je     0x4c6a4a
  4c69ed: 48                                          dec    eax
  4c69ee: 74 22                                       je     0x4c6a12
  4c69f0: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c69f3: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c69fa: e8 41 b0 00 00                              call   0x4d1a40
  4c69ff: 33 c0                                       xor    eax,eax
  4c6a01: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c6a04: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c6a0b: 5e                                          pop    esi
  4c6a0c: 8b e5                                       mov    esp,ebp
  4c6a0e: 5d                                          pop    ebp
  4c6a0f: c2 08 00                                    ret    0x8
  4c6a12: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  4c6a15: 50                                          push   eax
  4c6a16: ff 15 14 e3 4d 00                           call   DWORD PTR ds:0x4de314
  4c6a1c: 83 c4 04                                    add    esp,0x4
  4c6a1f: 89 86 80 00 00 00                           mov    DWORD PTR [esi+0x80],eax
  4c6a25: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c6a28: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c6a2f: e8 0c b0 00 00                              call   0x4d1a40
  4c6a34: b8 01 00 00 00                              mov    eax,0x1
  4c6a39: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c6a3c: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c6a43: 5e                                          pop    esi
  4c6a44: 8b e5                                       mov    esp,ebp
  4c6a46: 5d                                          pop    ebp
  4c6a47: c2 08 00                                    ret    0x8
  4c6a4a: 51                                          push   ecx
  4c6a4b: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c6a4e: 8b cc                                       mov    ecx,esp
  4c6a50: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c6a53: 52                                          push   edx
  4c6a54: e8 f3 af 00 00                              call   0x4d1a4c
  4c6a59: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c6a5c: e8 9f 2e f4 ff                              call   0x409900
  4c6a61: 85 c0                                       test   eax,eax
  4c6a63: 75 c0                                       jne    0x4c6a25
  4c6a65: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c6a68: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c6a6f: e8 cc af 00 00                              call   0x4d1a40
  4c6a74: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c6a77: 33 c0                                       xor    eax,eax
  4c6a79: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c6a80: 5e                                          pop    esi
  4c6a81: 8b e5                                       mov    esp,ebp
  4c6a83: 5d                                          pop    ebp
  4c6a84: c2                                          .byte 0xc2

; Type 16: ID 1 / ID 2  [0x4c4790,0x4c4850)
  4c4790: 55                                          push   ebp
  4c4791: 8b ec                                       mov    ebp,esp
  4c4793: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c4799: 6a ff                                       push   0xffffffff
  4c479b: 68 58 d6 4d 00                              push   0x4dd658
  4c47a0: 50                                          push   eax
  4c47a1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c47a8: 56                                          push   esi
  4c47a9: 8b f1                                       mov    esi,ecx
  4c47ab: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c47ae: 25 ff ff 00 00                              and    eax,0xffff
  4c47b3: 48                                          dec    eax
  4c47b4: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c47bb: 74 5a                                       je     0x4c4817
  4c47bd: 48                                          dec    eax
  4c47be: 74 22                                       je     0x4c47e2
  4c47c0: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c47c3: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c47ca: e8 71 d2 00 00                              call   0x4d1a40
  4c47cf: 33 c0                                       xor    eax,eax
  4c47d1: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c47d4: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c47db: 5e                                          pop    esi
  4c47dc: 8b e5                                       mov    esp,ebp
  4c47de: 5d                                          pop    ebp
  4c47df: c2 08 00                                    ret    0x8
  4c47e2: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  4c47e5: 50                                          push   eax
  4c47e6: ff 15 14 e3 4d 00                           call   DWORD PTR ds:0x4de314
  4c47ec: 83 c4 04                                    add    esp,0x4
  4c47ef: 89 46 0c                                    mov    DWORD PTR [esi+0xc],eax
  4c47f2: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c47f5: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c47fc: e8 3f d2 00 00                              call   0x4d1a40
  4c4801: b8 01 00 00 00                              mov    eax,0x1
  4c4806: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c4809: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c4810: 5e                                          pop    esi
  4c4811: 8b e5                                       mov    esp,ebp
  4c4813: 5d                                          pop    ebp
  4c4814: c2 08 00                                    ret    0x8
  4c4817: 51                                          push   ecx
  4c4818: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c481b: 8b cc                                       mov    ecx,esp
  4c481d: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4c4820: 52                                          push   edx
  4c4821: e8 26 d2 00 00                              call   0x4d1a4c
  4c4826: 8d 4e 10                                    lea    ecx,[esi+0x10]
  4c4829: e8 d2 50 f4 ff                              call   0x409900
  4c482e: 85 c0                                       test   eax,eax
  4c4830: 75 c0                                       jne    0x4c47f2
  4c4832: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c4835: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c483c: e8 ff d1 00 00                              call   0x4d1a40
  4c4841: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c4844: 33 c0                                       xor    eax,eax
  4c4846: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c484d: 5e                                          pop    esi
  4c484e: 8b e5                                       mov    esp,ebp

; Type 17: ID 1 / ID 2  [0x4c42f0,0x4c4380)
  4c42f0: 55                                          push   ebp
  4c42f1: 8b ec                                       mov    ebp,esp
  4c42f3: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4c42f9: 6a ff                                       push   0xffffffff
  4c42fb: 68 18 d6 4d 00                              push   0x4dd618
  4c4300: 50                                          push   eax
  4c4301: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4c4308: 56                                          push   esi
  4c4309: 8b f1                                       mov    esi,ecx
  4c430b: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4c430e: 25 ff ff 00 00                              and    eax,0xffff
  4c4313: 48                                          dec    eax
  4c4314: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4c431b: 74 5a                                       je     0x4c4377
  4c431d: 48                                          dec    eax
  4c431e: 74 22                                       je     0x4c4342
  4c4320: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c4323: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c432a: e8 11 d7 00 00                              call   0x4d1a40
  4c432f: 33 c0                                       xor    eax,eax
  4c4331: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c4334: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c433b: 5e                                          pop    esi
  4c433c: 8b e5                                       mov    esp,ebp
  4c433e: 5d                                          pop    ebp
  4c433f: c2 08 00                                    ret    0x8
  4c4342: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  4c4345: 50                                          push   eax
  4c4346: ff 15 14 e3 4d 00                           call   DWORD PTR ds:0x4de314
  4c434c: 83 c4 04                                    add    esp,0x4
  4c434f: 89 46 0c                                    mov    DWORD PTR [esi+0xc],eax
  4c4352: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4c4355: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4c435c: e8 df d6 00 00                              call   0x4d1a40
  4c4361: b8 01 00 00 00                              mov    eax,0x1
  4c4366: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4c4369: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4c4370: 5e                                          pop    esi
  4c4371: 8b e5                                       mov    esp,ebp
  4c4373: 5d                                          pop    ebp
  4c4374: c2 08 00                                    ret    0x8
  4c4377: 51                                          push   ecx
  4c4378: 8d 55 08                                    lea    edx,[ebp+0x8]
  4c437b: 8b cc                                       mov    ecx,esp
  4c437d: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp

