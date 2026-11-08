; T4C Server(1).exe — preuves machine-code pour la passe 41
; Instructions copiees de objdump Intel et verifiees byte par byte contre le PE original.
; Les adresses sont des VA et tous les commentaires sont des annotations statiques, sans execution du serveur.

; Insertion des éléments WDA de 228 octets et parcours de ses chemins realloc / insert — [0x4AA930,0x4AAECF)
  4aa930: 55                                          push   ebp
  4aa931: 8b ec                                       mov    ebp,esp
  4aa933: 6a ff                                       push   0xffffffff
  4aa935: 68 f7 c2 4d 00                              push   0x4dc2f7
  4aa93a: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4aa940: 50                                          push   eax
  4aa941: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4aa948: 81 ec 1c 01 00 00                           sub    esp,0x11c
  4aa94e: 53                                          push   ebx
  4aa94f: 56                                          push   esi
  4aa950: 8b 75 10                                    mov    esi,DWORD PTR [ebp+0x10]
  4aa953: 57                                          push   edi
  4aa954: 8b f9                                       mov    edi,ecx
  4aa956: 89 65 f0                                    mov    DWORD PTR [ebp-0x10],esp
  4aa959: 56                                          push   esi
  4aa95a: 8d 8d 04 ff ff ff                           lea    ecx,[ebp-0xfc]
  4aa960: 89 7d e8                                    mov    DWORD PTR [ebp-0x18],edi
  4aa963: e8 c8 07 00 00                              call   0x4ab130
  4aa968: 8d 46 10                                    lea    eax,[esi+0x10]
  4aa96b: 50                                          push   eax
  4aa96c: 8d 8d 14 ff ff ff                           lea    ecx,[ebp-0xec]
  4aa972: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4aa979: e8 b2 09 00 00                              call   0x4ab330
  4aa97e: 8a 4e 20                                    mov    cl,BYTE PTR [esi+0x20]
  4aa981: 8b 56 24                                    mov    edx,DWORD PTR [esi+0x24]
  4aa984: 8d 46 28                                    lea    eax,[esi+0x28]
  4aa987: 88 8d 24 ff ff ff                           mov    BYTE PTR [ebp-0xdc],cl
  4aa98d: 50                                          push   eax
  4aa98e: 8d 8d 2c ff ff ff                           lea    ecx,[ebp-0xd4]
  4aa994: c6 45 fc 01                                 mov    BYTE PTR [ebp-0x4],0x1
  4aa998: 89 95 28 ff ff ff                           mov    DWORD PTR [ebp-0xd8],edx
  4aa99e: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aa9a4: 8d 4e 38                                    lea    ecx,[esi+0x38]
  4aa9a7: 51                                          push   ecx
  4aa9a8: 8d 8d 3c ff ff ff                           lea    ecx,[ebp-0xc4]
  4aa9ae: c6 45 fc 02                                 mov    BYTE PTR [ebp-0x4],0x2
  4aa9b2: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aa9b8: 8d 56 48                                    lea    edx,[esi+0x48]
  4aa9bb: 52                                          push   edx
  4aa9bc: 8d 8d 4c ff ff ff                           lea    ecx,[ebp-0xb4]
  4aa9c2: c6 45 fc 03                                 mov    BYTE PTR [ebp-0x4],0x3
  4aa9c6: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aa9cc: 8d 46 58                                    lea    eax,[esi+0x58]
  4aa9cf: 50                                          push   eax
  4aa9d0: 8d 8d 5c ff ff ff                           lea    ecx,[ebp-0xa4]
  4aa9d6: c6 45 fc 04                                 mov    BYTE PTR [ebp-0x4],0x4
  4aa9da: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aa9e0: 8d 4e 68                                    lea    ecx,[esi+0x68]
  4aa9e3: 51                                          push   ecx
  4aa9e4: 8d 8d 6c ff ff ff                           lea    ecx,[ebp-0x94]
  4aa9ea: c6 45 fc 05                                 mov    BYTE PTR [ebp-0x4],0x5
  4aa9ee: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aa9f4: 8d 56 78                                    lea    edx,[esi+0x78]
  4aa9f7: 52                                          push   edx
  4aa9f8: 8d 8d 7c ff ff ff                           lea    ecx,[ebp-0x84]
  4aa9fe: c6 45 fc 06                                 mov    BYTE PTR [ebp-0x4],0x6
  4aaa02: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aaa08: 8b 86 88 00 00 00                           mov    eax,DWORD PTR [esi+0x88]
  4aaa0e: 8d 8e 8c 00 00 00                           lea    ecx,[esi+0x8c]
  4aaa14: 51                                          push   ecx
  4aaa15: 8d 4d 90                                    lea    ecx,[ebp-0x70]
  4aaa18: c6 45 fc 07                                 mov    BYTE PTR [ebp-0x4],0x7
  4aaa1c: 89 45 8c                                    mov    DWORD PTR [ebp-0x74],eax
  4aaa1f: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aaa25: 8b 96 9c 00 00 00                           mov    edx,DWORD PTR [esi+0x9c]
  4aaa2b: 8b 86 a0 00 00 00                           mov    eax,DWORD PTR [esi+0xa0]
  4aaa31: 8b 8e a4 00 00 00                           mov    ecx,DWORD PTR [esi+0xa4]
  4aaa37: 89 55 a0                                    mov    DWORD PTR [ebp-0x60],edx
  4aaa3a: 8b 96 a8 00 00 00                           mov    edx,DWORD PTR [esi+0xa8]
  4aaa40: 89 45 a4                                    mov    DWORD PTR [ebp-0x5c],eax
  4aaa43: 8b 86 ac 00 00 00                           mov    eax,DWORD PTR [esi+0xac]
  4aaa49: 89 4d a8                                    mov    DWORD PTR [ebp-0x58],ecx
  4aaa4c: 8b 8e b0 00 00 00                           mov    ecx,DWORD PTR [esi+0xb0]
  4aaa52: 89 55 ac                                    mov    DWORD PTR [ebp-0x54],edx
  4aaa55: 8b 96 b4 00 00 00                           mov    edx,DWORD PTR [esi+0xb4]
  4aaa5b: 89 45 b0                                    mov    DWORD PTR [ebp-0x50],eax
  4aaa5e: 8b 86 b8 00 00 00                           mov    eax,DWORD PTR [esi+0xb8]
  4aaa64: c6 45 fc 08                                 mov    BYTE PTR [ebp-0x4],0x8
  4aaa68: 89 4d b4                                    mov    DWORD PTR [ebp-0x4c],ecx
  4aaa6b: 89 55 b8                                    mov    DWORD PTR [ebp-0x48],edx
  4aaa6e: 8a 8e bc 00 00 00                           mov    cl,BYTE PTR [esi+0xbc]
  4aaa74: 8a 96 bd 00 00 00                           mov    dl,BYTE PTR [esi+0xbd]
  4aaa7a: 88 4d c0                                    mov    BYTE PTR [ebp-0x40],cl
  4aaa7d: 8b 8e c0 00 00 00                           mov    ecx,DWORD PTR [esi+0xc0]
  4aaa83: 88 55 c1                                    mov    BYTE PTR [ebp-0x3f],dl
  4aaa86: 89 45 bc                                    mov    DWORD PTR [ebp-0x44],eax
  4aaa89: 8a 86 be 00 00 00                           mov    al,BYTE PTR [esi+0xbe]
  4aaa8f: 8d 96 c4 00 00 00                           lea    edx,[esi+0xc4]
  4aaa95: 89 4d c4                                    mov    DWORD PTR [ebp-0x3c],ecx
  4aaa98: 52                                          push   edx
  4aaa99: 8d 4d c8                                    lea    ecx,[ebp-0x38]
  4aaa9c: 88 45 c2                                    mov    BYTE PTR [ebp-0x3e],al
  4aaa9f: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aaaa5: 81 c6 d4 00 00 00                           add    esi,0xd4
  4aaaab: 56                                          push   esi
  4aaaac: 8d 4d d8                                    lea    ecx,[ebp-0x28]
  4aaaaf: c6 45 fc 09                                 mov    BYTE PTR [ebp-0x4],0x9
  4aaab3: ff 15 10 e5 4d 00                           call   DWORD PTR ds:0x4de510
  4aaab9: 8b 4f 04                                    mov    ecx,DWORD PTR [edi+0x4]
  4aaabc: 85 c9                                       test   ecx,ecx
  4aaabe: c7 45 fc 0a 00 00 00                        mov    DWORD PTR [ebp-0x4],0xa
  4aaac5: 75 07                                       jne    0x4aaace
  4aaac7: 33 f6                                       xor    esi,esi
  4aaac9: 89 75 10                                    mov    DWORD PTR [ebp+0x10],esi
  4aaacc: eb 1d                                       jmp    0x4aaaeb
  4aaace: 8b 77 0c                                    mov    esi,DWORD PTR [edi+0xc]
  4aaad1: 2b f1                                       sub    esi,ecx
  4aaad3: b8 ef 23 b8 8f                              mov    eax,0x8fb823ef
  4aaad8: f7 ee                                       imul   esi
  4aaada: 03 d6                                       add    edx,esi
  4aaadc: c1 fa 07                                    sar    edx,0x7
  4aaadf: 8b c2                                       mov    eax,edx
  4aaae1: c1 e8 1f                                    shr    eax,0x1f
  4aaae4: 03 d0                                       add    edx,eax
  4aaae6: 89 55 10                                    mov    DWORD PTR [ebp+0x10],edx
  4aaae9: 8b f2                                       mov    esi,edx
  4aaaeb: 8b 5d 0c                                    mov    ebx,DWORD PTR [ebp+0xc]
  4aaaee: 85 db                                       test   ebx,ebx
  4aaaf0: 0f 84 d9 03 00 00                           je     0x4aaecf
  4aaaf6: 85 c9                                       test   ecx,ecx
  4aaaf8: 75 04                                       jne    0x4aaafe
  4aaafa: 33 d2                                       xor    edx,edx
  4aaafc: eb 1b                                       jmp    0x4aab19
  4aaafe: 8b 77 08                                    mov    esi,DWORD PTR [edi+0x8]
  4aab01: 2b f1                                       sub    esi,ecx
  4aab03: b8 ef 23 b8 8f                              mov    eax,0x8fb823ef
  4aab08: f7 ee                                       imul   esi
  4aab0a: 03 d6                                       add    edx,esi
  4aab0c: 8b 75 10                                    mov    esi,DWORD PTR [ebp+0x10]
  4aab0f: c1 fa 07                                    sar    edx,0x7
  4aab12: 8b c2                                       mov    eax,edx
  4aab14: c1 e8 1f                                    shr    eax,0x1f
  4aab17: 03 d0                                       add    edx,eax
  4aab19: b8 47 70 1f 01                              mov    eax,0x11f7047
  4aab1e: 2b c2                                       sub    eax,edx
  4aab20: 3b c3                                       cmp    eax,ebx
  4aab22: 73 38                                       jae    0x4aab5c
  4aab24: 68 80 05 50 00                              push   0x500580
  4aab29: 8d 8d f4 fe ff ff                           lea    ecx,[ebp-0x10c]
  4aab2f: ff 15 0c e5 4d 00                           call   DWORD PTR ds:0x4de50c
  4aab35: 8d 8d f4 fe ff ff                           lea    ecx,[ebp-0x10c]
  4aab3b: 51                                          push   ecx
  4aab3c: 8d 8d d8 fe ff ff                           lea    ecx,[ebp-0x128]
  4aab42: c6 45 fc 0b                                 mov    BYTE PTR [ebp-0x4],0xb
  4aab46: e8 d5 a8 f5 ff                              call   0x405420
  4aab4b: 68 e8 0a 4e 00                              push   0x4e0ae8
  4aab50: 8d 95 d8 fe ff ff                           lea    edx,[ebp-0x128]
  4aab56: 52                                          push   edx
  4aab57: e8 fa 71 02 00                              call   0x4d1d56
  4aab5c: 85 c9                                       test   ecx,ecx
  4aab5e: 75 04                                       jne    0x4aab64
  4aab60: 33 d2                                       xor    edx,edx
  4aab62: eb 1b                                       jmp    0x4aab7f
  4aab64: 8b 77 08                                    mov    esi,DWORD PTR [edi+0x8]
  4aab67: 2b f1                                       sub    esi,ecx
  4aab69: b8 ef 23 b8 8f                              mov    eax,0x8fb823ef
  4aab6e: f7 ee                                       imul   esi
  4aab70: 03 d6                                       add    edx,esi
  4aab72: 8b 75 10                                    mov    esi,DWORD PTR [ebp+0x10]
  4aab75: c1 fa 07                                    sar    edx,0x7
  4aab78: 8b c2                                       mov    eax,edx
  4aab7a: c1 e8 1f                                    shr    eax,0x1f
  4aab7d: 03 d0                                       add    edx,eax
  4aab7f: 03 d3                                       add    edx,ebx
  4aab81: 3b f2                                       cmp    esi,edx
  4aab83: 0f 83 ad 01 00 00                           jae    0x4aad36
  4aab89: 8b c6                                       mov    eax,esi
  4aab8b: d1 e8                                       shr    eax,1
  4aab8d: ba 47 70 1f 01                              mov    edx,0x11f7047
  4aab92: 2b d0                                       sub    edx,eax
  4aab94: 3b d6                                       cmp    edx,esi
  4aab96: 73 0c                                       jae    0x4aaba4
  4aab98: c7 45 10 00 00 00 00                        mov    DWORD PTR [ebp+0x10],0x0
  4aab9f: 8b 75 10                                    mov    esi,DWORD PTR [ebp+0x10]
  4aaba2: eb 05                                       jmp    0x4aaba9
  4aaba4: 03 f0                                       add    esi,eax
  4aaba6: 89 75 10                                    mov    DWORD PTR [ebp+0x10],esi
  4aaba9: 85 c9                                       test   ecx,ecx
  4aabab: 75 04                                       jne    0x4aabb1
  4aabad: 33 d2                                       xor    edx,edx
  4aabaf: eb 1b                                       jmp    0x4aabcc
  4aabb1: 8b 77 08                                    mov    esi,DWORD PTR [edi+0x8]
  4aabb4: 2b f1                                       sub    esi,ecx
  4aabb6: b8 ef 23 b8 8f                              mov    eax,0x8fb823ef
  4aabbb: f7 ee                                       imul   esi
  4aabbd: 03 d6                                       add    edx,esi
  4aabbf: 8b 75 10                                    mov    esi,DWORD PTR [ebp+0x10]
  4aabc2: c1 fa 07                                    sar    edx,0x7
  4aabc5: 8b c2                                       mov    eax,edx
  4aabc7: c1 e8 1f                                    shr    eax,0x1f
  4aabca: 03 d0                                       add    edx,eax
  4aabcc: 03 d3                                       add    edx,ebx
  4aabce: 3b f2                                       cmp    esi,edx
  4aabd0: 73 27                                       jae    0x4aabf9
  4aabd2: 85 c9                                       test   ecx,ecx
  4aabd4: 75 04                                       jne    0x4aabda
  4aabd6: 33 d2                                       xor    edx,edx
  4aabd8: eb 18                                       jmp    0x4aabf2
  4aabda: 8b 77 08                                    mov    esi,DWORD PTR [edi+0x8]
  4aabdd: 2b f1                                       sub    esi,ecx
  4aabdf: b8 ef 23 b8 8f                              mov    eax,0x8fb823ef
  4aabe4: f7 ee                                       imul   esi
  4aabe6: 03 d6                                       add    edx,esi
  4aabe8: c1 fa 07                                    sar    edx,0x7
  4aabeb: 8b ca                                       mov    ecx,edx
  4aabed: c1 e9 1f                                    shr    ecx,0x1f
  4aabf0: 03 d1                                       add    edx,ecx
  4aabf2: 03 d3                                       add    edx,ebx
  4aabf4: 89 55 10                                    mov    DWORD PTR [ebp+0x10],edx
  4aabf7: 8b f2                                       mov    esi,edx
  4aabf9: 8d 14 f6                                    lea    edx,[esi+esi*8]
  4aabfc: 8d 04 56                                    lea    eax,[esi+edx*2]
  4aabff: 8d 04 40                                    lea    eax,[eax+eax*2]
  4aac02: c1 e0 02                                    shl    eax,0x2
  4aac05: 50                                          push   eax
  4aac06: e8 e5 73 f9 ff                              call   0x441ff0
  4aac0b: 83 c4 04                                    add    esp,0x4
  4aac0e: 50                                          push   eax
  4aac0f: 51                                          push   ecx
  4aac10: 8d 55 08                                    lea    edx,[ebp+0x8]
  4aac13: 8b cc                                       mov    ecx,esp
  4aac15: 89 65 ec                                    mov    DWORD PTR [ebp-0x14],esp
  4aac18: 52                                          push   edx
  4aac19: 89 45 e8                                    mov    DWORD PTR [ebp-0x18],eax
  4aac1c: 89 45 0c                                    mov    DWORD PTR [ebp+0xc],eax
  4aac1f: c6 45 fc 0c                                 mov    BYTE PTR [ebp-0x4],0xc
  4aac23: e8 f8 f3 ff ff                              call   0x4aa020
  4aac28: 51                                          push   ecx
  4aac29: 8b c4                                       mov    eax,esp
  4aac2b: 89 65 ec                                    mov    DWORD PTR [ebp-0x14],esp
  4aac2e: 50                                          push   eax
  4aac2f: 8b cf                                       mov    ecx,edi
  4aac31: e8 4a 04 00 00                              call   0x4ab080
  4aac36: 8b cf                                       mov    ecx,edi
  4aac38: e8 e3 17 00 00                              call   0x4ac420
  4aac3d: 8d 8d 04 ff ff ff                           lea    ecx,[ebp-0xfc]
  4aac43: 51                                          push   ecx
  4aac44: 53                                          push   ebx
  4aac45: 50                                          push   eax
  4aac46: 8b cf                                       mov    ecx,edi
  4aac48: 89 45 0c                                    mov    DWORD PTR [ebp+0xc],eax
  4aac4b: e8 e0 07 00 00                              call   0x4ab430
  4aac50: 50                                          push   eax
  4aac51: 51                                          push   ecx
  4aac52: 8b d4                                       mov    edx,esp
  4aac54: 89 65 ec                                    mov    DWORD PTR [ebp-0x14],esp
  4aac57: 52                                          push   edx
  4aac58: 8b cf                                       mov    ecx,edi
  4aac5a: 89 45 0c                                    mov    DWORD PTR [ebp+0xc],eax
  4aac5d: e8 3e f1 ff ff                              call   0x4a9da0
  4aac62: 51                                          push   ecx
  4aac63: 8d 45 08                                    lea    eax,[ebp+0x8]
  4aac66: 8b cc                                       mov    ecx,esp
  4aac68: 89 65 ec                                    mov    DWORD PTR [ebp-0x14],esp
  4aac6b: 50                                          push   eax
  4aac6c: e8 af f3 ff ff                              call   0x4aa020
  4aac71: 8b cf                                       mov    ecx,edi
  4aac73: e8 a8 17 00 00                              call   0x4ac420
  4aac78: 8b 47 04                                    mov    eax,DWORD PTR [edi+0x4]
  4aac7b: 85 c0                                       test   eax,eax
  4aac7d: c7 45 fc 0a 00 00 00                        mov    DWORD PTR [ebp-0x4],0xa
  4aac84: 74 31                                       je     0x4aacb7
  4aac86: 8b 4f 08                                    mov    ecx,DWORD PTR [edi+0x8]
  4aac89: 8b f0                                       mov    esi,eax
  4aac8b: 3b f1                                       cmp    esi,ecx
  4aac8d: 89 4d 0c                                    mov    DWORD PTR [ebp+0xc],ecx
  4aac90: 74 16                                       je     0x4aaca8
  4aac92: 6a 00                                       push   0x0
  4aac94: 8b ce                                       mov    ecx,esi
  4aac96: e8 35 20 00 00                              call   0x4accd0
  4aac9b: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4aac9e: 81 c6 e4 00 00 00                           add    esi,0xe4
  4aaca4: 3b f0                                       cmp    esi,eax
  4aaca6: 75 ea                                       jne    0x4aac92
  4aaca8: 8b 47 04                                    mov    eax,DWORD PTR [edi+0x4]
  4aacab: 50                                          push   eax
  4aacac: e8 af 73 f9 ff                              call   0x442060
  4aacb1: 8b 75 10                                    mov    esi,DWORD PTR [ebp+0x10]
  4aacb4: 83 c4 04                                    add    esp,0x4
  4aacb7: 8d 0c f6                                    lea    ecx,[esi+esi*8]
  4aacba: 8d 34 4e                                    lea    esi,[esi+ecx*2]
  4aacbd: 8d 14 76                                    lea    edx,[esi+esi*2]
  4aacc0: 8b 75 e8                                    mov    esi,DWORD PTR [ebp-0x18]
  4aacc3: 8d 04 96                                    lea    eax,[esi+edx*4]
  4aacc6: 89 47 0c                                    mov    DWORD PTR [edi+0xc],eax
  4aacc9: 8b 47 04                                    mov    eax,DWORD PTR [edi+0x4]
  4aaccc: 85 c0                                       test   eax,eax
  4aacce: 75 04                                       jne    0x4aacd4
  4aacd0: 33 d2                                       xor    edx,edx
  4aacd2: eb 18                                       jmp    0x4aacec
  4aacd4: 8b 4f 08                                    mov    ecx,DWORD PTR [edi+0x8]
  4aacd7: 2b c8                                       sub    ecx,eax
  4aacd9: b8 ef 23 b8 8f                              mov    eax,0x8fb823ef
  4aacde: f7 e9                                       imul   ecx
  4aace0: 03 d1                                       add    edx,ecx
  4aace2: c1 fa 07                                    sar    edx,0x7
  4aace5: 8b ca                                       mov    ecx,edx
  4aace7: c1 e9 1f                                    shr    ecx,0x1f
  4aacea: 03 d1                                       add    edx,ecx
  4aacec: 03 da                                       add    ebx,edx
  4aacee: 8d 14 db                                    lea    edx,[ebx+ebx*8]
  4aacf1: 8d 04 53                                    lea    eax,[ebx+edx*2]
  4aacf4: 8d 04 40                                    lea    eax,[eax+eax*2]
  4aacf7: 8d 0c 86                                    lea    ecx,[esi+eax*4]
  4aacfa: 89 4f 08                                    mov    DWORD PTR [edi+0x8],ecx
  4aacfd: 89 77 04                                    mov    DWORD PTR [edi+0x4],esi
  4aad00: e9 ca 01 00 00                              jmp    0x4aaecf
  4aad05: 8b 5d e8                                    mov    ebx,DWORD PTR [ebp-0x18]
  4aad08: 8b 7d 0c                                    mov    edi,DWORD PTR [ebp+0xc]
  4aad0b: 3b df                                       cmp    ebx,edi
  4aad0d: 8b f3                                       mov    esi,ebx
  4aad0f: 74 13                                       je     0x4aad24
  4aad11: 6a 00                                       push   0x0
  4aad13: 8b ce                                       mov    ecx,esi
  4aad15: e8 b6 1f 00 00                              call   0x4accd0
  4aad1a: 81 c6 e4 00 00 00                           add    esi,0xe4
  4aad20: 3b f7                                       cmp    esi,edi
  4aad22: 75 ed                                       jne    0x4aad11
  4aad24: 53                                          push   ebx
  4aad25: e8 36 73 f9 ff                              call   0x442060
  4aad2a: 83 c4 04                                    add    esp,0x4
  4aad2d: 6a 00                                       push   0x0
  4aad2f: 6a 00                                       push   0x0
  4aad31: e8 20 70 02 00                              call   0x4d1d56
  4aad36: 8b 77 08                                    mov    esi,DWORD PTR [edi+0x8]
  4aad39: 8b 55 08                                    mov    edx,DWORD PTR [ebp+0x8]
  4aad3c: 8b ce                                       mov    ecx,esi
  4aad3e: 2b ca                                       sub    ecx,edx
  4aad40: b8 ef 23 b8 8f                              mov    eax,0x8fb823ef
  4aad45: f7 e9                                       imul   ecx
  4aad47: 03 d1                                       add    edx,ecx
  4aad49: c1 fa 07                                    sar    edx,0x7
  4aad4c: 8b c2                                       mov    eax,edx
  4aad4e: c1 e8 1f                                    shr    eax,0x1f
  4aad51: 03 d0                                       add    edx,eax
  4aad53: 3b d3                                       cmp    edx,ebx
  4aad55: 0f 83 e3 00 00 00                           jae    0x4aae3e
  4aad5b: 8b 55 08                                    mov    edx,DWORD PTR [ebp+0x8]
  4aad5e: 8d 0c db                                    lea    ecx,[ebx+ebx*8]
  4aad61: 8d 34 4b                                    lea    esi,[ebx+ecx*2]
  4aad64: 8d 34 76                                    lea    esi,[esi+esi*2]
  4aad67: c1 e6 02                                    shl    esi,0x2
  4aad6a: 8d 04 16                                    lea    eax,[esi+edx*1]
  4aad6d: 50                                          push   eax
  4aad6e: 51                                          push   ecx
  4aad6f: 8b cc                                       mov    ecx,esp
  4aad71: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aad74: 51                                          push   ecx
  4aad75: 8b cf                                       mov    ecx,edi
  4aad77: e8 24 f0 ff ff                              call   0x4a9da0
  4aad7c: 51                                          push   ecx
  4aad7d: 8d 55 08                                    lea    edx,[ebp+0x8]
  4aad80: 8b cc                                       mov    ecx,esp
  4aad82: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aad85: 52                                          push   edx
  4aad86: e8 95 f2 ff ff                              call   0x4aa020
  4aad8b: 8b cf                                       mov    ecx,edi
  4aad8d: e8 8e 16 00 00                              call   0x4ac420
  4aad92: 8b 55 08                                    mov    edx,DWORD PTR [ebp+0x8]
  4aad95: 8b 4f 08                                    mov    ecx,DWORD PTR [edi+0x8]
  4aad98: 2b ca                                       sub    ecx,edx
  4aad9a: 8d 85 04 ff ff ff                           lea    eax,[ebp-0xfc]
  4aada0: 50                                          push   eax
  4aada1: b8 ef 23 b8 8f                              mov    eax,0x8fb823ef
  4aada6: f7 e9                                       imul   ecx
  4aada8: 03 d1                                       add    edx,ecx
  4aadaa: c1 fa 07                                    sar    edx,0x7
  4aadad: 8b ca                                       mov    ecx,edx
  4aadaf: c1 e9 1f                                    shr    ecx,0x1f
  4aadb2: 03 d1                                       add    edx,ecx
  4aadb4: 8b c3                                       mov    eax,ebx
  4aadb6: 2b c2                                       sub    eax,edx
  4aadb8: 50                                          push   eax
  4aadb9: 8b 47 08                                    mov    eax,DWORD PTR [edi+0x8]
  4aadbc: 50                                          push   eax
  4aadbd: 8b cf                                       mov    ecx,edi
  4aadbf: c6 45 fc 0e                                 mov    BYTE PTR [ebp-0x4],0xe
  4aadc3: e8 68 06 00 00                              call   0x4ab430
  4aadc8: 8b 47 08                                    mov    eax,DWORD PTR [edi+0x8]
  4aadcb: 8d 8d 04 ff ff ff                           lea    ecx,[ebp-0xfc]
  4aadd1: 51                                          push   ecx
  4aadd2: 51                                          push   ecx
  4aadd3: 8b d4                                       mov    edx,esp
  4aadd5: 89 65 0c                                    mov    DWORD PTR [ebp+0xc],esp
  4aadd8: 03 c6                                       add    eax,esi
  4aadda: 53                                          push   ebx
  4aaddb: 89 47 08                                    mov    DWORD PTR [edi+0x8],eax
  4aadde: 52                                          push   edx
  4aaddf: 8d 45 0c                                    lea    eax,[ebp+0xc]
  4aade2: 50                                          push   eax
  4aade3: 8b cf                                       mov    ecx,edi
  4aade5: c7 45 fc 0a 00 00 00                        mov    DWORD PTR [ebp-0x4],0xa
  4aadec: e8 af ef ff ff                              call   0x4a9da0
  4aadf1: 8b c8                                       mov    ecx,eax
  4aadf3: e8 c8 0b 00 00                              call   0x4ab9c0
  4aadf8: 51                                          push   ecx
  4aadf9: 8b cc                                       mov    ecx,esp
  4aadfb: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aadfe: e9 bb 00 00 00                              jmp    0x4aaebe
  4aae03: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4aae06: 8b 55 e8                                    mov    edx,DWORD PTR [ebp-0x18]
  4aae09: 8b 7a 08                                    mov    edi,DWORD PTR [edx+0x8]
  4aae0c: 8d 0c c0                                    lea    ecx,[eax+eax*8]
  4aae0f: 8d 04 48                                    lea    eax,[eax+ecx*2]
  4aae12: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  4aae15: 8d 04 40                                    lea    eax,[eax+eax*2]
  4aae18: c1 e0 02                                    shl    eax,0x2
  4aae1b: 03 f8                                       add    edi,eax
  4aae1d: 8d 34 08                                    lea    esi,[eax+ecx*1]
  4aae20: 3b f7                                       cmp    esi,edi
  4aae22: 74 11                                       je     0x4aae35
  4aae24: 8b ce                                       mov    ecx,esi
  4aae26: e8 65 e1 ff ff                              call   0x4a8f90
  4aae2b: 81 c6 e4 00 00 00                           add    esi,0xe4
  4aae31: 3b f7                                       cmp    esi,edi
  4aae33: 75 ef                                       jne    0x4aae24
  4aae35: 6a 00                                       push   0x0
  4aae37: 6a 00                                       push   0x0
  4aae39: e8 18 6f 02 00                              call   0x4d1d56
  4aae3e: 56                                          push   esi
  4aae3f: 51                                          push   ecx
  4aae40: 8d 55 0c                                    lea    edx,[ebp+0xc]
  4aae43: 8b cc                                       mov    ecx,esp
  4aae45: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aae48: 52                                          push   edx
  4aae49: 89 75 0c                                    mov    DWORD PTR [ebp+0xc],esi
  4aae4c: e8 cf f1 ff ff                              call   0x4aa020
  4aae51: 51                                          push   ecx
  4aae52: 8b c4                                       mov    eax,esp
  4aae54: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aae57: 53                                          push   ebx
  4aae58: 50                                          push   eax
  4aae59: 8d 4d 0c                                    lea    ecx,[ebp+0xc]
  4aae5c: e8 5f 0b 00 00                              call   0x4ab9c0
  4aae61: 8b cf                                       mov    ecx,edi
  4aae63: e8 b8 15 00 00                              call   0x4ac420
  4aae68: 51                                          push   ecx
  4aae69: 8b 4d 0c                                    mov    ecx,DWORD PTR [ebp+0xc]
  4aae6c: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aae6f: 89 47 08                                    mov    DWORD PTR [edi+0x8],eax
  4aae72: 8b c4                                       mov    eax,esp
  4aae74: 51                                          push   ecx
  4aae75: 8b d4                                       mov    edx,esp
  4aae77: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aae7a: 53                                          push   ebx
  4aae7b: 89 08                                       mov    DWORD PTR [eax],ecx
  4aae7d: 52                                          push   edx
  4aae7e: 8d 4d 0c                                    lea    ecx,[ebp+0xc]
  4aae81: e8 3a 0b 00 00                              call   0x4ab9c0
  4aae86: 51                                          push   ecx
  4aae87: 8d 45 08                                    lea    eax,[ebp+0x8]
  4aae8a: 8b cc                                       mov    ecx,esp
  4aae8c: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aae8f: 50                                          push   eax
  4aae90: e8 8b f1 ff ff                              call   0x4aa020
  4aae95: 8d 4d ec                                    lea    ecx,[ebp-0x14]
  4aae98: 51                                          push   ecx
  4aae99: e8 d2 1a 00 00                              call   0x4ac970
  4aae9e: 83 c4 10                                    add    esp,0x10
  4aaea1: 8d 95 04 ff ff ff                           lea    edx,[ebp-0xfc]
  4aaea7: 52                                          push   edx
  4aaea8: 51                                          push   ecx
  4aaea9: 8b c4                                       mov    eax,esp
  4aaeab: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aaeae: 53                                          push   ebx
  4aaeaf: 50                                          push   eax
  4aaeb0: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4aaeb3: e8 d8 01 00 00                              call   0x4ab090
  4aaeb8: 51                                          push   ecx
  4aaeb9: 8b cc                                       mov    ecx,esp
  4aaebb: 89 65 10                                    mov    DWORD PTR [ebp+0x10],esp
  4aaebe: 8d 55 08                                    lea    edx,[ebp+0x8]
  4aaec1: 52                                          push   edx
  4aaec2: e8 59 f1 ff ff                              call   0x4aa020
  4aaec7: e8 44 17 00 00                              call   0x4ac610
  4aaecc: 83 c4 0c                                    add    esp,0xc

; Construction par copie d une sous-collection de records de 44 octets — [0x4AB130,0x4AB1A6)
  4ab130: 55                                          push   ebp
  4ab131: 8b ec                                       mov    ebp,esp
  4ab133: 53                                          push   ebx
  4ab134: 8b 5d 08                                    mov    ebx,DWORD PTR [ebp+0x8]
  4ab137: 8a 03                                       mov    al,BYTE PTR [ebx]
  4ab139: 56                                          push   esi
  4ab13a: 8b f1                                       mov    esi,ecx
  4ab13c: 57                                          push   edi
  4ab13d: 88 06                                       mov    BYTE PTR [esi],al
  4ab13f: 8b 43 04                                    mov    eax,DWORD PTR [ebx+0x4]
  4ab142: 33 ff                                       xor    edi,edi
  4ab144: 3b c7                                       cmp    eax,edi
  4ab146: 75 04                                       jne    0x4ab14c
  4ab148: 33 d2                                       xor    edx,edx
  4ab14a: eb 16                                       jmp    0x4ab162
  4ab14c: 8b 4b 08                                    mov    ecx,DWORD PTR [ebx+0x8]
  4ab14f: 2b c8                                       sub    ecx,eax
  4ab151: b8 e9 a2 8b 2e                              mov    eax,0x2e8ba2e9
  4ab156: f7 e9                                       imul   ecx
  4ab158: c1 fa 03                                    sar    edx,0x3
  4ab15b: 8b c2                                       mov    eax,edx
  4ab15d: c1 e8 1f                                    shr    eax,0x1f
  4ab160: 03 d0                                       add    edx,eax
  4ab162: 3b d7                                       cmp    edx,edi
  4ab164: 89 7e 04                                    mov    DWORD PTR [esi+0x4],edi
  4ab167: 89 7e 08                                    mov    DWORD PTR [esi+0x8],edi
  4ab16a: 89 7e 0c                                    mov    DWORD PTR [esi+0xc],edi
  4ab16d: 74 30                                       je     0x4ab19f
  4ab16f: 8d 0c 92                                    lea    ecx,[edx+edx*4]
  4ab172: 8d 3c 4a                                    lea    edi,[edx+ecx*2]
  4ab175: c1 e7 02                                    shl    edi,0x2
  4ab178: 57                                          push   edi
  4ab179: e8 72 6e f9 ff                              call   0x441ff0
  4ab17e: 83 c4 04                                    add    esp,0x4
  4ab181: 03 f8                                       add    edi,eax
  4ab183: 89 46 04                                    mov    DWORD PTR [esi+0x4],eax
  4ab186: 89 46 08                                    mov    DWORD PTR [esi+0x8],eax
  4ab189: 89 7e 0c                                    mov    DWORD PTR [esi+0xc],edi
  4ab18c: 8b 4b 08                                    mov    ecx,DWORD PTR [ebx+0x8]
  4ab18f: 8b 5b 04                                    mov    ebx,DWORD PTR [ebx+0x4]
  4ab192: 50                                          push   eax
  4ab193: 51                                          push   ecx
  4ab194: 53                                          push   ebx
  4ab195: 8b ce                                       mov    ecx,esi
  4ab197: e8 c4 19 00 00                              call   0x4acb60
  4ab19c: 89 46 08                                    mov    DWORD PTR [esi+0x8],eax
  4ab19f: 5f                                          pop    edi
  4ab1a0: 8b c6                                       mov    eax,esi
  4ab1a2: 5e                                          pop    esi
  4ab1a3: 5b                                          pop    ebx
  4ab1a4: 5d                                          pop    ebp
  4ab1a5: c2                                          .byte 0xc2

; Copie/reconstruction d enregistrements imbriques de 44 octets — [0x4AB1B0,0x4AB2BF)
  4ab1b0: 55                                          push   ebp
  4ab1b1: 8b ec                                       mov    ebp,esp
  4ab1b3: 6a ff                                       push   0xffffffff
  4ab1b5: 68 29 c3 4d 00                              push   0x4dc329
  4ab1ba: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  4ab1c0: 50                                          push   eax
  4ab1c1: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  4ab1c8: 83 ec 08                                    sub    esp,0x8
  4ab1cb: 53                                          push   ebx
  4ab1cc: 56                                          push   esi
  4ab1cd: 8b 75 10                                    mov    esi,DWORD PTR [ebp+0x10]
  4ab1d0: 57                                          push   edi
  4ab1d1: 8b 7d 08                                    mov    edi,DWORD PTR [ebp+0x8]
  4ab1d4: 89 65 f0                                    mov    DWORD PTR [ebp-0x10],esp
  4ab1d7: 89 7d ec                                    mov    DWORD PTR [ebp-0x14],edi
  4ab1da: c7 45 fc 00 00 00 00                        mov    DWORD PTR [ebp-0x4],0x0
  4ab1e1: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4ab1e4: 85 c0                                       test   eax,eax
  4ab1e6: 0f 86 be 00 00 00                           jbe    0x4ab2aa
  4ab1ec: 89 7d 10                                    mov    DWORD PTR [ebp+0x10],edi
  4ab1ef: 85 ff                                       test   edi,edi
  4ab1f1: 74 7f                                       je     0x4ab272
  4ab1f3: 8b 46 04                                    mov    eax,DWORD PTR [esi+0x4]
  4ab1f6: 89 47 04                                    mov    DWORD PTR [edi+0x4],eax
  4ab1f9: 8b 4e 08                                    mov    ecx,DWORD PTR [esi+0x8]
  4ab1fc: 89 4f 08                                    mov    DWORD PTR [edi+0x8],ecx
  4ab1ff: 8b 56 0c                                    mov    edx,DWORD PTR [esi+0xc]
  4ab202: 89 57 0c                                    mov    DWORD PTR [edi+0xc],edx
  4ab205: 8b 46 10                                    mov    eax,DWORD PTR [esi+0x10]
  4ab208: 89 47 10                                    mov    DWORD PTR [edi+0x10],eax
  4ab20b: 8a 4e 14                                    mov    cl,BYTE PTR [esi+0x14]
  4ab20e: 88 4f 14                                    mov    BYTE PTR [edi+0x14],cl
  4ab211: c7 07 28 f9 4d 00                           mov    DWORD PTR [edi],0x4df928
  4ab217: 8b 56 18                                    mov    edx,DWORD PTR [esi+0x18]
  4ab21a: 89 57 18                                    mov    DWORD PTR [edi+0x18],edx
  4ab21d: 8a 46 1c                                    mov    al,BYTE PTR [esi+0x1c]
  4ab220: 8d 5f 1c                                    lea    ebx,[edi+0x1c]
  4ab223: 88 03                                       mov    BYTE PTR [ebx],al
  4ab225: 8b 46 20                                    mov    eax,DWORD PTR [esi+0x20]
  4ab228: 85 c0                                       test   eax,eax
  4ab22a: c6 45 fc 02                                 mov    BYTE PTR [ebp-0x4],0x2
  4ab22e: 75 04                                       jne    0x4ab234
  4ab230: 33 d2                                       xor    edx,edx
  4ab232: eb 16                                       jmp    0x4ab24a
  4ab234: 8b 4e 24                                    mov    ecx,DWORD PTR [esi+0x24]
  4ab237: 2b c8                                       sub    ecx,eax
  4ab239: b8 e9 a2 8b 2e                              mov    eax,0x2e8ba2e9
  4ab23e: f7 e9                                       imul   ecx
  4ab240: c1 fa 03                                    sar    edx,0x3
  4ab243: 8b c2                                       mov    eax,edx
  4ab245: c1 e8 1f                                    shr    eax,0x1f
  4ab248: 03 d0                                       add    edx,eax
  4ab24a: 52                                          push   edx
  4ab24b: 8b cb                                       mov    ecx,ebx
  4ab24d: e8 6e 00 00 00                              call   0x4ab2c0
  4ab252: 84 c0                                       test   al,al
  4ab254: 74 16                                       je     0x4ab26c
  4ab256: 8b 53 04                                    mov    edx,DWORD PTR [ebx+0x4]
  4ab259: 8b 46 24                                    mov    eax,DWORD PTR [esi+0x24]
  4ab25c: 8b 4e 20                                    mov    ecx,DWORD PTR [esi+0x20]
  4ab25f: 52                                          push   edx
  4ab260: 50                                          push   eax
  4ab261: 51                                          push   ecx
  4ab262: 8b cb                                       mov    ecx,ebx
  4ab264: e8 77 07 00 00                              call   0x4ab9e0
  4ab269: 89 43 08                                    mov    DWORD PTR [ebx+0x8],eax
  4ab26c: c7 07 28 fa 4d 00                           mov    DWORD PTR [edi],0x4dfa28
  4ab272: 8b 4d 0c                                    mov    ecx,DWORD PTR [ebp+0xc]
  4ab275: 49                                          dec    ecx
  4ab276: 83 c7 2c                                    add    edi,0x2c
  4ab279: c6 45 fc 00                                 mov    BYTE PTR [ebp-0x4],0x0
  4ab27d: 89 4d 0c                                    mov    DWORD PTR [ebp+0xc],ecx
  4ab280: 89 7d 08                                    mov    DWORD PTR [ebp+0x8],edi
  4ab283: e9 59 ff ff ff                              jmp    0x4ab1e1
  4ab288: 8b 75 ec                                    mov    esi,DWORD PTR [ebp-0x14]
  4ab28b: 8b 7d 08                                    mov    edi,DWORD PTR [ebp+0x8]
  4ab28e: 3b f7                                       cmp    esi,edi
  4ab290: 74 0f                                       je     0x4ab2a1
  4ab292: 8b 06                                       mov    eax,DWORD PTR [esi]
  4ab294: 6a 00                                       push   0x0
  4ab296: 8b ce                                       mov    ecx,esi
  4ab298: ff 10                                       call   DWORD PTR [eax]
  4ab29a: 83 c6 2c                                    add    esi,0x2c
  4ab29d: 3b f7                                       cmp    esi,edi
  4ab29f: 75 f1                                       jne    0x4ab292
  4ab2a1: 6a 00                                       push   0x0
  4ab2a3: 6a 00                                       push   0x0
  4ab2a5: e8 ac 6a 02 00                              call   0x4d1d56
  4ab2aa: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4ab2ad: 8b c7                                       mov    eax,edi
  4ab2af: 5f                                          pop    edi
  4ab2b0: 5e                                          pop    esi
  4ab2b1: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4ab2b8: 5b                                          pop    ebx
  4ab2b9: 8b e5                                       mov    esp,ebp
  4ab2bb: 5d                                          pop    ebp
  4ab2bc: c2 0c 00                                    ret    0xc

