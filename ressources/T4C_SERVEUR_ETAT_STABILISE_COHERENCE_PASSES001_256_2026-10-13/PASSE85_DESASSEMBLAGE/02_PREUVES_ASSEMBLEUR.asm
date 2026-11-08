; PASSE 85, Cibles directes des mondes, unites, combats et sorts
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 3172 distinct instructions; 81 graph entry points

  00403940: 55                                              push   ebp
  00403941: 8b ec                                           mov    ebp,esp
  00403943: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00403946: 56                                              push   esi
  00403947: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0040394a: 8d 45 10                                        lea    eax,[ebp+0x10]
  0040394d: 50                                              push   eax
  0040394e: 51                                              push   ecx
  0040394f: 56                                              push   esi
  00403950: ff 15 70 e3 4d 00                               call   DWORD PTR ds:0x4de370
  00403956: 83 c4 0c                                        add    esp,0xc
  00403959: 8b c6                                           mov    eax,esi
  0040395b: 5e                                              pop    esi
  0040395c: 5d                                              pop    ebp
  0040395d: c3                                              ret
  00406d30: 55                                              push   ebp
  00406d31: 8b ec                                           mov    ebp,esp
  00406d33: 6a ff                                           push   0xffffffff
  00406d35: 68 44 34 4d 00                                  push   0x4d3444
  00406d3a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00406d40: 50                                              push   eax
  00406d41: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00406d48: 81 ec 74 01 00 00                               sub    esp,0x174
  00406d4e: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00406d51: 53                                              push   ebx
  00406d52: 56                                              push   esi
  00406d53: 57                                              push   edi
  00406d54: 33 f6                                           xor    esi,esi
  00406d56: 56                                              push   esi
  00406d57: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00406d5a: 88 45 cc                                        mov    BYTE PTR [ebp-0x34],al
  00406d5d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406d63: 8a 4d 0f                                        mov    cl,BYTE PTR [ebp+0xf]
  00406d66: 88 4d dc                                        mov    BYTE PTR [ebp-0x24],cl
  00406d69: 56                                              push   esi
  00406d6a: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00406d6d: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  00406d70: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406d76: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00406d79: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00406d7c: 8d 8d 80 fe ff ff                               lea    ecx,[ebp-0x180]
  00406d82: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00406d89: e8 02 24 05 00                                  call   0x459190
  00406d8e: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00406d91: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00406d94: 83 c9 ff                                        or     ecx,0xffffffff
  00406d97: 33 c0                                           xor    eax,eax
  00406d99: 8b fb                                           mov    edi,ebx
  00406d9b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00406d9d: f7 d1                                           not    ecx
  00406d9f: 49                                              dec    ecx
  00406da0: 8b f1                                           mov    esi,ecx
  00406da2: 53                                              push   ebx
  00406da3: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00406da6: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00406daa: 89 55 c8                                        mov    DWORD PTR [ebp-0x38],edx
  00406dad: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00406db0: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  00406db6: 84 c0                                           test   al,al
  00406db8: 74 18                                           je     0x406dd2
  00406dba: 8b 55 d0                                        mov    edx,DWORD PTR [ebp-0x30]
  00406dbd: 56                                              push   esi
  00406dbe: 8b c3                                           mov    eax,ebx
  00406dc0: 2b c2                                           sub    eax,edx
  00406dc2: 50                                              push   eax
  00406dc3: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00406dc6: 51                                              push   ecx
  00406dc7: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00406dca: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00406dd0: eb 32                                           jmp    0x406e04
  00406dd2: 6a 01                                           push   0x1
  00406dd4: 56                                              push   esi
  00406dd5: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00406dd8: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00406dde: 84 c0                                           test   al,al
  00406de0: 74 22                                           je     0x406e04
  00406de2: 8b 7d d0                                        mov    edi,DWORD PTR [ebp-0x30]
  00406de5: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00406de8: 8b ce                                           mov    ecx,esi
  00406dea: 8b d1                                           mov    edx,ecx
  00406dec: c1 e9 02                                        shr    ecx,0x2
  00406def: 8b f3                                           mov    esi,ebx
  00406df1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00406df3: 8b ca                                           mov    ecx,edx
  00406df5: 83 e1 03                                        and    ecx,0x3
  00406df8: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00406dfa: 50                                              push   eax
  00406dfb: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  00406dfe: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00406e04: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00406e07: 83 c9 ff                                        or     ecx,0xffffffff
  00406e0a: 33 c0                                           xor    eax,eax
  00406e0c: 8b fe                                           mov    edi,esi
  00406e0e: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00406e10: f7 d1                                           not    ecx
  00406e12: 49                                              dec    ecx
  00406e13: 8b f9                                           mov    edi,ecx
  00406e15: 56                                              push   esi
  00406e16: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00406e19: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00406e1c: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  00406e22: 84 c0                                           test   al,al
  00406e24: 74 18                                           je     0x406e3e
  00406e26: 57                                              push   edi
  00406e27: 8b 7d e0                                        mov    edi,DWORD PTR [ebp-0x20]
  00406e2a: 8b ce                                           mov    ecx,esi
  00406e2c: 2b cf                                           sub    ecx,edi
  00406e2e: 51                                              push   ecx
  00406e2f: 8d 55 dc                                        lea    edx,[ebp-0x24]
  00406e32: 52                                              push   edx
  00406e33: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00406e36: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00406e3c: eb 33                                           jmp    0x406e71
  00406e3e: 6a 01                                           push   0x1
  00406e40: 57                                              push   edi
  00406e41: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00406e44: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00406e4a: 84 c0                                           test   al,al
  00406e4c: 74 23                                           je     0x406e71
  00406e4e: 8b cf                                           mov    ecx,edi
  00406e50: 8b 7d e0                                        mov    edi,DWORD PTR [ebp-0x20]
  00406e53: 8b c1                                           mov    eax,ecx
  00406e55: c1 e9 02                                        shr    ecx,0x2
  00406e58: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00406e5a: 8b c8                                           mov    ecx,eax
  00406e5c: 83 e1 03                                        and    ecx,0x3
  00406e5f: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00406e61: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00406e64: 51                                              push   ecx
  00406e65: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00406e68: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00406e6e: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00406e71: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00406e74: 53                                              push   ebx
  00406e75: 52                                              push   edx
  00406e76: 8d 8d 80 fe ff ff                               lea    ecx,[ebp-0x180]
  00406e7c: e8 8f 23 05 00                                  call   0x459210
  00406e81: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00406e84: 50                                              push   eax
  00406e85: 56                                              push   esi
  00406e86: 8d 8d 80 fe ff ff                               lea    ecx,[ebp-0x180]
  00406e8c: e8 6f 24 05 00                                  call   0x459300
  00406e91: 8b f0                                           mov    esi,eax
  00406e93: 50                                              push   eax
  00406e94: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00406e97: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  00406e9a: 58                                              pop    eax
  00406e9b: e8 60 d3 02 00                                  call   0x434200
  00406ea0: 8b 10                                           mov    edx,DWORD PTR [eax]
  00406ea2: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00406ea5: 51                                              push   ecx
  00406ea6: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00406ea9: 68 18 14 51 00                                  push   0x511418
  00406eae: 51                                              push   ecx
  00406eaf: 8b c8                                           mov    ecx,eax
  00406eb1: ff 12                                           call   DWORD PTR [edx]
  00406eb3: 68 20 14 51 00                                  push   0x511420
  00406eb8: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00406ebe: e8 3d d3 02 00                                  call   0x434200
  00406ec3: 8b 10                                           mov    edx,DWORD PTR [eax]
  00406ec5: 68 1c 14 51 00                                  push   0x51141c
  00406eca: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00406ecd: 51                                              push   ecx
  00406ece: 8b c8                                           mov    ecx,eax
  00406ed0: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00406ed3: 8d 55 c8                                        lea    edx,[ebp-0x38]
  00406ed6: 52                                              push   edx
  00406ed7: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  00406eda: e8 11 0d 00 00                                  call   0x407bf0
  00406edf: c7 45 bc 00 00 00 00                            mov    DWORD PTR [ebp-0x44],0x0
  00406ee6: 8d 45 90                                        lea    eax,[ebp-0x70]
  00406ee9: 50                                              push   eax
  00406eea: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00406eed: 51                                              push   ecx
  00406eee: b9 f8 13 51 00                                  mov    ecx,0x5113f8
  00406ef3: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00406ef7: e8 b4 0b 00 00                                  call   0x407ab0
  00406efc: 8b 38                                           mov    edi,DWORD PTR [eax]
  00406efe: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  00406f01: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00406f05: e8 b6 fd ff ff                                  call   0x406cc0
  00406f0a: 89 77 38                                        mov    DWORD PTR [edi+0x38],esi
  00406f0d: e8 ee d2 02 00                                  call   0x434200
  00406f12: 8b 10                                           mov    edx,DWORD PTR [eax]
  00406f14: 68 1c 14 51 00                                  push   0x51141c
  00406f19: 8b c8                                           mov    ecx,eax
  00406f1b: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00406f1e: 68 20 14 51 00                                  push   0x511420
  00406f23: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00406f29: 8d 8d 80 fe ff ff                               lea    ecx,[ebp-0x180]
  00406f2f: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00406f33: e8 68 22 05 00                                  call   0x4591a0
  00406f38: 6a 01                                           push   0x1
  00406f3a: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00406f3d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00406f44: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406f4a: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  00406f4d: 85 c0                                           test   eax,eax
  00406f4f: 74 2b                                           je     0x406f7c
  00406f51: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00406f54: 8a 01                                           mov    al,BYTE PTR [ecx]
  00406f56: 84 c0                                           test   al,al
  00406f58: 74 19                                           je     0x406f73
  00406f5a: 3c ff                                           cmp    al,0xff
  00406f5c: 74 15                                           je     0x406f73
  00406f5e: fe c8                                           dec    al
  00406f60: 88 01                                           mov    BYTE PTR [ecx],al
  00406f62: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00406f65: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00406f6c: 5f                                              pop    edi
  00406f6d: 5e                                              pop    esi
  00406f6e: 5b                                              pop    ebx
  00406f6f: 8b e5                                           mov    esp,ebp
  00406f71: 5d                                              pop    ebp
  00406f72: c3                                              ret
  00406f73: 51                                              push   ecx
  00406f74: e8 e7 b0 03 00                                  call   0x442060
  00406f79: 83 c4 04                                        add    esp,0x4
  00406f7c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00406f7f: 5f                                              pop    edi
  00406f80: 5e                                              pop    esi
  00406f81: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00406f88: 5b                                              pop    ebx
  00406f89: 8b e5                                           mov    esp,ebp
  00406f8b: 5d                                              pop    ebp
  00406f8c: c3                                              ret
  00407190: 55                                              push   ebp
  00407191: 8b ec                                           mov    ebp,esp
  00407193: 6a ff                                           push   0xffffffff
  00407195: 68 a1 34 4d 00                                  push   0x4d34a1
  0040719a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004071a0: 50                                              push   eax
  004071a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004071a8: 83 ec 2c                                        sub    esp,0x2c
  004071ab: 8a 45 13                                        mov    al,BYTE PTR [ebp+0x13]
  004071ae: 53                                              push   ebx
  004071af: 56                                              push   esi
  004071b0: 57                                              push   edi
  004071b1: 33 db                                           xor    ebx,ebx
  004071b3: 53                                              push   ebx
  004071b4: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004071b7: 88 45 cc                                        mov    BYTE PTR [ebp-0x34],al
  004071ba: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004071c0: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004071c3: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004071c6: ff 15 f8 e4 4d 00                               call   DWORD PTR ds:0x4de4f8
  004071cc: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004071cf: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004071d2: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004071d5: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004071d8: 89 4d c8                                        mov    DWORD PTR [ebp-0x38],ecx
  004071db: 83 c9 ff                                        or     ecx,0xffffffff
  004071de: 33 c0                                           xor    eax,eax
  004071e0: 8b fa                                           mov    edi,edx
  004071e2: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004071e4: f7 d1                                           not    ecx
  004071e6: 49                                              dec    ecx
  004071e7: 51                                              push   ecx
  004071e8: 52                                              push   edx
  004071e9: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004071ec: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004071f3: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  004071f9: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004071fc: 83 c9 ff                                        or     ecx,0xffffffff
  004071ff: 33 c0                                           xor    eax,eax
  00407201: 8b fa                                           mov    edi,edx
  00407203: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00407205: f7 d1                                           not    ecx
  00407207: 49                                              dec    ecx
  00407208: 51                                              push   ecx
  00407209: 52                                              push   edx
  0040720a: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0040720d: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00407213: 50                                              push   eax
  00407214: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00407217: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0040721a: 58                                              pop    eax
  0040721b: e8 e0 cf 02 00                                  call   0x434200
  00407220: 8b 10                                           mov    edx,DWORD PTR [eax]
  00407222: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00407225: 51                                              push   ecx
  00407226: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00407229: 68 18 14 51 00                                  push   0x511418
  0040722e: 51                                              push   ecx
  0040722f: 8b c8                                           mov    ecx,eax
  00407231: ff 12                                           call   DWORD PTR [edx]
  00407233: 68 20 14 51 00                                  push   0x511420
  00407238: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  0040723e: e8 bd cf 02 00                                  call   0x434200
  00407243: 8b 10                                           mov    edx,DWORD PTR [eax]
  00407245: 68 1c 14 51 00                                  push   0x51141c
  0040724a: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0040724d: 51                                              push   ecx
  0040724e: 8b c8                                           mov    ecx,eax
  00407250: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00407253: 8d 55 c8                                        lea    edx,[ebp-0x38]
  00407256: 52                                              push   edx
  00407257: b9 f8 13 51 00                                  mov    ecx,0x5113f8
  0040725c: e8 cf 1b 00 00                                  call   0x408e30
  00407261: 3b 05 fc 13 51 00                               cmp    eax,DWORD PTR ds:0x5113fc
  00407267: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0040726a: 74 19                                           je     0x407285
  0040726c: 83 c0 0c                                        add    eax,0xc
  0040726f: 50                                              push   eax
  00407270: 8d 45 c8                                        lea    eax,[ebp-0x38]
  00407273: 50                                              push   eax
  00407274: e8 d7 f0 ff ff                                  call   0x406350
  00407279: 83 c4 08                                        add    esp,0x8
  0040727c: 84 c0                                           test   al,al
  0040727e: 75 05                                           jne    0x407285
  00407280: 8d 45 10                                        lea    eax,[ebp+0x10]
  00407283: eb 0c                                           jmp    0x407291
  00407285: 8b 0d fc 13 51 00                               mov    ecx,DWORD PTR ds:0x5113fc
  0040728b: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  0040728e: 8d 45 08                                        lea    eax,[ebp+0x8]
  00407291: 8b 30                                           mov    esi,DWORD PTR [eax]
  00407293: 3b 35 fc 13 51 00                               cmp    esi,DWORD PTR ds:0x5113fc
  00407299: 75 4c                                           jne    0x4072e7
  0040729b: e8 60 cf 02 00                                  call   0x434200
  004072a0: 8b 10                                           mov    edx,DWORD PTR [eax]
  004072a2: 68 1c 14 51 00                                  push   0x51141c
  004072a7: 8b c8                                           mov    ecx,eax
  004072a9: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004072ac: 68 20 14 51 00                                  push   0x511420
  004072b1: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  004072b7: 6a 01                                           push   0x1
  004072b9: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004072bc: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004072c3: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004072c9: 6a 01                                           push   0x1
  004072cb: 8d 4d cc                                        lea    ecx,[ebp-0x34]
  004072ce: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004072d4: 33 c0                                           xor    eax,eax
  004072d6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004072d9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004072e0: 5f                                              pop    edi
  004072e1: 5e                                              pop    esi
  004072e2: 5b                                              pop    ebx
  004072e3: 8b e5                                           mov    esp,ebp
  004072e5: 5d                                              pop    ebp
  004072e6: c3                                              ret
  004072e7: e8 14 cf 02 00                                  call   0x434200
  004072ec: 8b 10                                           mov    edx,DWORD PTR [eax]
  004072ee: 68 1c 14 51 00                                  push   0x51141c
  004072f3: 8b c8                                           mov    ecx,eax
  004072f5: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004072f8: 68 20 14 51 00                                  push   0x511420
  004072fd: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00407303: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  00407306: 3b c3                                           cmp    eax,ebx
  00407308: 8b 76 38                                        mov    esi,DWORD PTR [esi+0x38]
  0040730b: 74 1c                                           je     0x407329
  0040730d: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00407310: 8a 01                                           mov    al,BYTE PTR [ecx]
  00407312: 3a c3                                           cmp    al,bl
  00407314: 74 0a                                           je     0x407320
  00407316: 3c ff                                           cmp    al,0xff
  00407318: 74 06                                           je     0x407320
  0040731a: fe c8                                           dec    al
  0040731c: 88 01                                           mov    BYTE PTR [ecx],al
  0040731e: eb 09                                           jmp    0x407329
  00407320: 51                                              push   ecx
  00407321: e8 3a ad 03 00                                  call   0x442060
  00407326: 83 c4 04                                        add    esp,0x4
  00407329: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0040732c: 3b c3                                           cmp    eax,ebx
  0040732e: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  00407331: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  00407334: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  00407337: 74 2d                                           je     0x407366
  00407339: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0040733c: 8a 01                                           mov    al,BYTE PTR [ecx]
  0040733e: 3a c3                                           cmp    al,bl
  00407340: 74 1b                                           je     0x40735d
  00407342: 3c ff                                           cmp    al,0xff
  00407344: 74 17                                           je     0x40735d
  00407346: fe c8                                           dec    al
  00407348: 88 01                                           mov    BYTE PTR [ecx],al
  0040734a: 8b c6                                           mov    eax,esi
  0040734c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0040734f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00407356: 5f                                              pop    edi
  00407357: 5e                                              pop    esi
  00407358: 5b                                              pop    ebx
  00407359: 8b e5                                           mov    esp,ebp
  0040735b: 5d                                              pop    ebp
  0040735c: c3                                              ret
  0040735d: 51                                              push   ecx
  0040735e: e8 fd ac 03 00                                  call   0x442060
  00407363: 83 c4 04                                        add    esp,0x4
  00407366: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00407369: 5f                                              pop    edi
  0040736a: 8b c6                                           mov    eax,esi
  0040736c: 5e                                              pop    esi
  0040736d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00407374: 5b                                              pop    ebx
  00407375: 8b e5                                           mov    esp,ebp
  00407377: 5d                                              pop    ebp
  00407378: c3                                              ret
  00407670: 55                                              push   ebp
  00407671: 8b ec                                           mov    ebp,esp
  00407673: 51                                              push   ecx
  00407674: 8d 45 08                                        lea    eax,[ebp+0x8]
  00407677: 50                                              push   eax
  00407678: 51                                              push   ecx
  00407679: 54                                              push   esp
  0040767a: b9 e8 13 51 00                                  mov    ecx,0x5113e8
  0040767f: e8 bc 00 00 00                                  call   0x407740
  00407684: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00407687: 51                                              push   ecx
  00407688: b9 e8 13 51 00                                  mov    ecx,0x5113e8
  0040768d: e8 ee 04 00 00                                  call   0x407b80
  00407692: 8b e5                                           mov    esp,ebp
  00407694: 5d                                              pop    ebp
  00407695: c3                                              ret
  00410900: 55                                              push   ebp
  00410901: 8b ec                                           mov    ebp,esp
  00410903: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00410906: 25 ff ff 00 00                                  and    eax,0xffff
  0041090b: 25 03 00 00 80                                  and    eax,0x80000003
  00410910: 56                                              push   esi
  00410911: 79 05                                           jns    0x410918
  00410913: 48                                              dec    eax
  00410914: 83 c8 fc                                        or     eax,0xfffffffc
  00410917: 40                                              inc    eax
  00410918: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0041091b: 81 e2 ff ff 00 00                               and    edx,0xffff
  00410921: 81 e2 03 00 00 80                               and    edx,0x80000003
  00410927: 79 05                                           jns    0x41092e
  00410929: 4a                                              dec    edx
  0041092a: 83 ca fc                                        or     edx,0xfffffffc
  0041092d: 42                                              inc    edx
  0041092e: 8d 04 82                                        lea    eax,[edx+eax*4]
  00410931: 8d 54 80 05                                     lea    edx,[eax+eax*4+0x5]
  00410935: 83 3c 91 00                                     cmp    DWORD PTR [ecx+edx*4],0x0
  00410939: 75 07                                           jne    0x410942
  0041093b: 33 c0                                           xor    eax,eax
  0041093d: 5e                                              pop    esi
  0041093e: 5d                                              pop    ebp
  0041093f: c2 08 00                                        ret    0x8
  00410942: 8d 04 80                                        lea    eax,[eax+eax*4]
  00410945: 8d 54 81 04                                     lea    edx,[ecx+eax*4+0x4]
  00410949: 8b 4a 0c                                        mov    ecx,DWORD PTR [edx+0xc]
  0041094c: 8b c1                                           mov    eax,ecx
  0041094e: c1 e8 0a                                        shr    eax,0xa
  00410951: 8b f0                                           mov    esi,eax
  00410953: c1 e6 0a                                        shl    esi,0xa
  00410956: 2b ce                                           sub    ecx,esi
  00410958: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  0041095b: 3b f0                                           cmp    esi,eax
  0041095d: 77 02                                           ja     0x410961
  0041095f: 2b c6                                           sub    eax,esi
  00410961: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  00410964: 8b 04 82                                        mov    eax,DWORD PTR [edx+eax*4]
  00410967: 8b 04 88                                        mov    eax,DWORD PTR [eax+ecx*4]
  0041096a: 5e                                              pop    esi
  0041096b: 5d                                              pop    ebp
  0041096c: c2 08 00                                        ret    0x8
  00410c60: 55                                              push   ebp
  00410c61: 8b ec                                           mov    ebp,esp
  00410c63: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00410c66: 25 ff ff 00 00                                  and    eax,0xffff
  00410c6b: 25 03 00 00 80                                  and    eax,0x80000003
  00410c70: 56                                              push   esi
  00410c71: 57                                              push   edi
  00410c72: 79 05                                           jns    0x410c79
  00410c74: 48                                              dec    eax
  00410c75: 83 c8 fc                                        or     eax,0xfffffffc
  00410c78: 40                                              inc    eax
  00410c79: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00410c7c: 81 e2 ff ff 00 00                               and    edx,0xffff
  00410c82: 81 e2 03 00 00 80                               and    edx,0x80000003
  00410c88: 79 05                                           jns    0x410c8f
  00410c8a: 4a                                              dec    edx
  00410c8b: 83 ca fc                                        or     edx,0xfffffffc
  00410c8e: 42                                              inc    edx
  00410c8f: 8d 04 82                                        lea    eax,[edx+eax*4]
  00410c92: 8d 04 80                                        lea    eax,[eax+eax*4]
  00410c95: 8b 74 81 10                                     mov    esi,DWORD PTR [ecx+eax*4+0x10]
  00410c99: 8d 7c 81 04                                     lea    edi,[ecx+eax*4+0x4]
  00410c9d: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  00410ca0: 03 47 0c                                        add    eax,DWORD PTR [edi+0xc]
  00410ca3: 3b ff                                           cmp    edi,edi
  00410ca5: 75 04                                           jne    0x410cab
  00410ca7: 3b f0                                           cmp    esi,eax
  00410ca9: 74 42                                           je     0x410ced
  00410cab: 8b c6                                           mov    eax,esi
  00410cad: c1 e8 0a                                        shr    eax,0xa
  00410cb0: 8b c8                                           mov    ecx,eax
  00410cb2: c1 e1 0a                                        shl    ecx,0xa
  00410cb5: 8b d1                                           mov    edx,ecx
  00410cb7: 8b ce                                           mov    ecx,esi
  00410cb9: 2b ca                                           sub    ecx,edx
  00410cbb: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00410cbe: 3b d0                                           cmp    edx,eax
  00410cc0: 77 02                                           ja     0x410cc4
  00410cc2: 2b c2                                           sub    eax,edx
  00410cc4: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00410cc7: 8b 04 82                                        mov    eax,DWORD PTR [edx+eax*4]
  00410cca: 8b 0c 88                                        mov    ecx,DWORD PTR [eax+ecx*4]
  00410ccd: 8d 55 08                                        lea    edx,[ebp+0x8]
  00410cd0: 52                                              push   edx
  00410cd1: 51                                              push   ecx
  00410cd2: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  00410cd5: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00410cd8: 54                                              push   esp
  00410cd9: e8 12 04 00 00                                  call   0x4110f0
  00410cde: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00410ce1: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00410ce4: 50                                              push   eax
  00410ce5: e8 16 04 00 00                                  call   0x411100
  00410cea: 46                                              inc    esi
  00410ceb: eb b0                                           jmp    0x410c9d
  00410ced: 5f                                              pop    edi
  00410cee: 5e                                              pop    esi
  00410cef: 5d                                              pop    ebp
  00410cf0: c2 0c 00                                        ret    0xc
  00410d30: 55                                              push   ebp
  00410d31: 8b ec                                           mov    ebp,esp
  00410d33: 83 ec 08                                        sub    esp,0x8
  00410d36: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00410d39: 25 ff ff 00 00                                  and    eax,0xffff
  00410d3e: 25 03 00 00 80                                  and    eax,0x80000003
  00410d43: 56                                              push   esi
  00410d44: 57                                              push   edi
  00410d45: 79 05                                           jns    0x410d4c
  00410d47: 48                                              dec    eax
  00410d48: 83 c8 fc                                        or     eax,0xfffffffc
  00410d4b: 40                                              inc    eax
  00410d4c: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00410d4f: 81 e2 ff ff 00 00                               and    edx,0xffff
  00410d55: 81 e2 03 00 00 80                               and    edx,0x80000003
  00410d5b: 79 05                                           jns    0x410d62
  00410d5d: 4a                                              dec    edx
  00410d5e: 83 ca fc                                        or     edx,0xfffffffc
  00410d61: 42                                              inc    edx
  00410d62: 8d 04 82                                        lea    eax,[edx+eax*4]
  00410d65: 8d 04 80                                        lea    eax,[eax+eax*4]
  00410d68: 8d 74 81 04                                     lea    esi,[ecx+eax*4+0x4]
  00410d6c: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00410d6f: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  00410d72: 03 46 0c                                        add    eax,DWORD PTR [esi+0xc]
  00410d75: 3b f6                                           cmp    esi,esi
  00410d77: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  00410d7a: 75 04                                           jne    0x410d80
  00410d7c: 3b c8                                           cmp    ecx,eax
  00410d7e: 74 45                                           je     0x410dc5
  00410d80: 8b c1                                           mov    eax,ecx
  00410d82: c1 e8 0a                                        shr    eax,0xa
  00410d85: 8b d0                                           mov    edx,eax
  00410d87: c1 e2 0a                                        shl    edx,0xa
  00410d8a: 2b ca                                           sub    ecx,edx
  00410d8c: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00410d8f: 3b d0                                           cmp    edx,eax
  00410d91: 77 02                                           ja     0x410d95
  00410d93: 2b c2                                           sub    eax,edx
  00410d95: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00410d98: 8b 04 82                                        mov    eax,DWORD PTR [edx+eax*4]
  00410d9b: 8b 3c 88                                        mov    edi,DWORD PTR [eax+ecx*4]
  00410d9e: 8b cf                                           mov    ecx,edi
  00410da0: e8 cb a8 07 00                                  call   0x48b670
  00410da5: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00410da8: 0f be c8                                        movsx  ecx,al
  00410dab: 81 e2 ff ff 00 00                               and    edx,0xffff
  00410db1: 3b ca                                           cmp    ecx,edx
  00410db3: 74 06                                           je     0x410dbb
  00410db5: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00410db8: 41                                              inc    ecx
  00410db9: eb b4                                           jmp    0x410d6f
  00410dbb: 8b c7                                           mov    eax,edi
  00410dbd: 5f                                              pop    edi
  00410dbe: 5e                                              pop    esi
  00410dbf: 8b e5                                           mov    esp,ebp
  00410dc1: 5d                                              pop    ebp
  00410dc2: c2 0c 00                                        ret    0xc
  00410dc5: 5f                                              pop    edi
  00410dc6: 33 c0                                           xor    eax,eax
  00410dc8: 5e                                              pop    esi
  00410dc9: 8b e5                                           mov    esp,ebp
  00410dcb: 5d                                              pop    ebp
  00410dcc: c2 0c 00                                        ret    0xc
  004133d0: 55                                              push   ebp
  004133d1: 8b ec                                           mov    ebp,esp
  004133d3: 51                                              push   ecx
  004133d4: 56                                              push   esi
  004133d5: b9 78 16 51 00                                  mov    ecx,0x511678
  004133da: e8 a1 b5 03 00                                  call   0x44e980
  004133df: 33 f6                                           xor    esi,esi
  004133e1: 56                                              push   esi
  004133e2: 68 e0 11 50 00                                  push   0x5011e0
  004133e7: b9 78 16 51 00                                  mov    ecx,0x511678
  004133ec: e8 8f b9 03 00                                  call   0x44ed80
  004133f1: b9 78 16 51 00                                  mov    ecx,0x511678
  004133f6: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  004133f9: e8 62 b9 03 00                                  call   0x44ed60
  004133fe: 85 c0                                           test   eax,eax
  00413400: 74 2c                                           je     0x41342e
  00413402: 8d 45 fc                                        lea    eax,[ebp-0x4]
  00413405: 50                                              push   eax
  00413406: 6a 01                                           push   0x1
  00413408: b9 78 16 51 00                                  mov    ecx,0x511678
  0041340d: e8 fe ba 03 00                                  call   0x44ef10
  00413412: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00413415: 8b c8                                           mov    ecx,eax
  00413417: 2b ce                                           sub    ecx,esi
  00413419: 83 f9 01                                        cmp    ecx,0x1
  0041341c: 77 10                                           ja     0x41342e
  0041341e: b9 78 16 51 00                                  mov    ecx,0x511678
  00413423: 8b f0                                           mov    esi,eax
  00413425: e8 36 b9 03 00                                  call   0x44ed60
  0041342a: 85 c0                                           test   eax,eax
  0041342c: 75 d4                                           jne    0x413402
  0041342e: b9 78 16 51 00                                  mov    ecx,0x511678
  00413433: e8 38 b9 03 00                                  call   0x44ed70
  00413438: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0041343b: 46                                              inc    esi
  0041343c: 56                                              push   esi
  0041343d: e8 ce 82 07 00                                  call   0x48b710
  00413442: b9 78 16 51 00                                  mov    ecx,0x511678
  00413447: e8 84 b5 03 00                                  call   0x44e9d0
  0041344c: 5e                                              pop    esi
  0041344d: 8b e5                                           mov    esp,ebp
  0041344f: 5d                                              pop    ebp
  00413450: c3                                              ret
  0041f510: 55                                              push   ebp
  0041f511: 8b ec                                           mov    ebp,esp
  0041f513: 51                                              push   ecx
  0041f514: 8b 81 0c 04 00 00                               mov    eax,DWORD PTR [ecx+0x40c]
  0041f51a: 53                                              push   ebx
  0041f51b: 56                                              push   esi
  0041f51c: 57                                              push   edi
  0041f51d: 33 ff                                           xor    edi,edi
  0041f51f: 3b c7                                           cmp    eax,edi
  0041f521: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0041f524: 75 05                                           jne    0x41f52b
  0041f526: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0041f52b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041f52e: 51                                              push   ecx
  0041f52f: 50                                              push   eax
  0041f530: e8 0b e6 01 00                                  call   0x43db40
  0041f535: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0041f538: 8a 55 0f                                        mov    dl,BYTE PTR [ebp+0xf]
  0041f53b: 8b f0                                           mov    esi,eax
  0041f53d: 89 7b 04                                        mov    DWORD PTR [ebx+0x4],edi
  0041f540: 89 7b 08                                        mov    DWORD PTR [ebx+0x8],edi
  0041f543: 89 7b 0c                                        mov    DWORD PTR [ebx+0xc],edi
  0041f546: 83 c9 ff                                        or     ecx,0xffffffff
  0041f549: 83 c4 08                                        add    esp,0x8
  0041f54c: 33 c0                                           xor    eax,eax
  0041f54e: 88 13                                           mov    BYTE PTR [ebx],dl
  0041f550: 8b fe                                           mov    edi,esi
  0041f552: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0041f554: f7 d1                                           not    ecx
  0041f556: 49                                              dec    ecx
  0041f557: 8b f9                                           mov    edi,ecx
  0041f559: 6a 01                                           push   0x1
  0041f55b: 57                                              push   edi
  0041f55c: 8b cb                                           mov    ecx,ebx
  0041f55e: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0041f561: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0041f567: 84 c0                                           test   al,al
  0041f569: 74 1d                                           je     0x41f588
  0041f56b: 8b cf                                           mov    ecx,edi
  0041f56d: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0041f570: 8b c1                                           mov    eax,ecx
  0041f572: c1 e9 02                                        shr    ecx,0x2
  0041f575: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0041f577: 8b c8                                           mov    ecx,eax
  0041f579: 83 e1 03                                        and    ecx,0x3
  0041f57c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0041f57e: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0041f581: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0041f584: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  0041f588: 5f                                              pop    edi
  0041f589: 5e                                              pop    esi
  0041f58a: 8b c3                                           mov    eax,ebx
  0041f58c: 5b                                              pop    ebx
  0041f58d: 8b e5                                           mov    esp,ebp
  0041f58f: 5d                                              pop    ebp
  0041f590: c2 08 00                                        ret    0x8
  00422870: 55                                              push   ebp
  00422871: 8b ec                                           mov    ebp,esp
  00422873: 83 ec 08                                        sub    esp,0x8
  00422876: 53                                              push   ebx
  00422877: 56                                              push   esi
  00422878: 8b f1                                           mov    esi,ecx
  0042287a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042287d: 85 c9                                           test   ecx,ecx
  0042287f: 57                                              push   edi
  00422880: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00422883: 8b 07                                           mov    eax,DWORD PTR [edi]
  00422885: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00422888: 74 4b                                           je     0x4228d5
  0042288a: 8b c8                                           mov    ecx,eax
  0042288c: 3b c1                                           cmp    eax,ecx
  0042288e: 75 45                                           jne    0x4228d5
  00422890: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00422893: 8a 43 15                                        mov    al,BYTE PTR [ebx+0x15]
  00422896: 84 c0                                           test   al,al
  00422898: 8b fb                                           mov    edi,ebx
  0042289a: 75 1f                                           jne    0x4228bb
  0042289c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0042289f: 50                                              push   eax
  004228a0: 8b ce                                           mov    ecx,esi
  004228a2: e8 19 0b 00 00                                  call   0x4233c0
  004228a7: 8b 3f                                           mov    edi,DWORD PTR [edi]
  004228a9: 53                                              push   ebx
  004228aa: e8 b1 f7 01 00                                  call   0x442060
  004228af: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  004228b2: 83 c4 04                                        add    esp,0x4
  004228b5: 84 c0                                           test   al,al
  004228b7: 8b df                                           mov    ebx,edi
  004228b9: 74 e1                                           je     0x42289c
  004228bb: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004228be: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004228c1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004228c4: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004228cb: 89 00                                           mov    DWORD PTR [eax],eax
  004228cd: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004228d0: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  004228d3: eb 21                                           jmp    0x4228f6
  004228d5: 3b c7                                           cmp    eax,edi
  004228d7: 74 1d                                           je     0x4228f6
  004228d9: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004228dc: 8b d8                                           mov    ebx,eax
  004228de: e8 ed 17 00 00                                  call   0x4240d0
  004228e3: 53                                              push   ebx
  004228e4: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  004228e7: 51                                              push   ecx
  004228e8: 8b ce                                           mov    ecx,esi
  004228ea: e8 81 06 00 00                                  call   0x422f70
  004228ef: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004228f2: 3b c7                                           cmp    eax,edi
  004228f4: 75 e3                                           jne    0x4228d9
  004228f6: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004228f9: 52                                              push   edx
  004228fa: e8 61 f7 01 00                                  call   0x442060
  004228ff: 83 c4 04                                        add    esp,0x4
  00422902: 33 c0                                           xor    eax,eax
  00422904: 5f                                              pop    edi
  00422905: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00422908: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0042290b: 5e                                              pop    esi
  0042290c: 5b                                              pop    ebx
  0042290d: 8b e5                                           mov    esp,ebp
  0042290f: 5d                                              pop    ebp
  00422910: c3                                              ret
  00422960: 55                                              push   ebp
  00422961: 8b ec                                           mov    ebp,esp
  00422963: 51                                              push   ecx
  00422964: 53                                              push   ebx
  00422965: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00422968: 56                                              push   esi
  00422969: 8b f1                                           mov    esi,ecx
  0042296b: 3b f3                                           cmp    esi,ebx
  0042296d: 57                                              push   edi
  0042296e: 0f 84 90 01 00 00                               je     0x422b04
  00422974: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00422977: 33 d2                                           xor    edx,edx
  00422979: 3b ca                                           cmp    ecx,edx
  0042297b: 74 0d                                           je     0x42298a
  0042297d: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00422980: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00422983: 2b f9                                           sub    edi,ecx
  00422985: c1 ff 04                                        sar    edi,0x4
  00422988: 75 35                                           jne    0x4229bf
  0042298a: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042298d: 3b c2                                           cmp    eax,edx
  0042298f: 74 1a                                           je     0x4229ab
  00422991: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00422994: 51                                              push   ecx
  00422995: 50                                              push   eax
  00422996: 8b ce                                           mov    ecx,esi
  00422998: e8 63 03 00 00                                  call   0x422d00
  0042299d: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004229a0: 52                                              push   edx
  004229a1: e8 ba f6 01 00                                  call   0x442060
  004229a6: 83 c4 04                                        add    esp,0x4
  004229a9: 33 d2                                           xor    edx,edx
  004229ab: 5f                                              pop    edi
  004229ac: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004229af: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004229b2: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004229b5: 8b c6                                           mov    eax,esi
  004229b7: 5e                                              pop    esi
  004229b8: 5b                                              pop    ebx
  004229b9: 8b e5                                           mov    esp,ebp
  004229bb: 5d                                              pop    ebp
  004229bc: c2 04 00                                        ret    0x4
  004229bf: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004229c2: 85 d2                                           test   edx,edx
  004229c4: 75 04                                           jne    0x4229ca
  004229c6: 33 c0                                           xor    eax,eax
  004229c8: eb 08                                           jmp    0x4229d2
  004229ca: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004229cd: 2b c2                                           sub    eax,edx
  004229cf: c1 f8 04                                        sar    eax,0x4
  004229d2: 3b f8                                           cmp    edi,eax
  004229d4: 77 6e                                           ja     0x422a44
  004229d6: 8b c1                                           mov    eax,ecx
  004229d8: 3b 45 fc                                        cmp    eax,DWORD PTR [ebp-0x4]
  004229db: 74 2a                                           je     0x422a07
  004229dd: 8b c8                                           mov    ecx,eax
  004229df: 8b 19                                           mov    ebx,DWORD PTR [ecx]
  004229e1: 8b fa                                           mov    edi,edx
  004229e3: 89 1f                                           mov    DWORD PTR [edi],ebx
  004229e5: 8b 59 04                                        mov    ebx,DWORD PTR [ecx+0x4]
  004229e8: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  004229eb: 8b 59 08                                        mov    ebx,DWORD PTR [ecx+0x8]
  004229ee: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  004229f1: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  004229f4: 89 4f 0c                                        mov    DWORD PTR [edi+0xc],ecx
  004229f7: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004229fa: 83 c0 10                                        add    eax,0x10
  004229fd: 83 c2 10                                        add    edx,0x10
  00422a00: 3b c1                                           cmp    eax,ecx
  00422a02: 75 d9                                           jne    0x4229dd
  00422a04: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00422a07: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00422a0a: 85 c9                                           test   ecx,ecx
  00422a0c: 75 18                                           jne    0x422a26
  00422a0e: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00422a11: 33 c0                                           xor    eax,eax
  00422a13: c1 e0 04                                        shl    eax,0x4
  00422a16: 03 c1                                           add    eax,ecx
  00422a18: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00422a1b: 5f                                              pop    edi
  00422a1c: 8b c6                                           mov    eax,esi
  00422a1e: 5e                                              pop    esi
  00422a1f: 5b                                              pop    ebx
  00422a20: 8b e5                                           mov    esp,ebp
  00422a22: 5d                                              pop    ebp
  00422a23: c2 04 00                                        ret    0x4
  00422a26: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00422a29: 2b c1                                           sub    eax,ecx
  00422a2b: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00422a2e: c1 f8 04                                        sar    eax,0x4
  00422a31: c1 e0 04                                        shl    eax,0x4
  00422a34: 03 c1                                           add    eax,ecx
  00422a36: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00422a39: 5f                                              pop    edi
  00422a3a: 8b c6                                           mov    eax,esi
  00422a3c: 5e                                              pop    esi
  00422a3d: 5b                                              pop    ebx
  00422a3e: 8b e5                                           mov    esp,ebp
  00422a40: 5d                                              pop    ebp
  00422a41: c2 04 00                                        ret    0x4
  00422a44: 85 d2                                           test   edx,edx
  00422a46: 75 04                                           jne    0x422a4c
  00422a48: 33 c0                                           xor    eax,eax
  00422a4a: eb 08                                           jmp    0x422a54
  00422a4c: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  00422a4f: 2b c2                                           sub    eax,edx
  00422a51: c1 f8 04                                        sar    eax,0x4
  00422a54: 3b f8                                           cmp    edi,eax
  00422a56: 77 52                                           ja     0x422aaa
  00422a58: 85 d2                                           test   edx,edx
  00422a5a: 75 04                                           jne    0x422a60
  00422a5c: 33 c0                                           xor    eax,eax
  00422a5e: eb 08                                           jmp    0x422a68
  00422a60: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00422a63: 2b c2                                           sub    eax,edx
  00422a65: c1 f8 04                                        sar    eax,0x4
  00422a68: c1 e0 04                                        shl    eax,0x4
  00422a6b: 03 c1                                           add    eax,ecx
  00422a6d: 3b c8                                           cmp    ecx,eax
  00422a6f: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00422a72: 74 2b                                           je     0x422a9f
  00422a74: 8b f9                                           mov    edi,ecx
  00422a76: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  00422a78: 89 1a                                           mov    DWORD PTR [edx],ebx
  00422a7a: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00422a7d: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  00422a80: 8b 5f 08                                        mov    ebx,DWORD PTR [edi+0x8]
  00422a83: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  00422a86: 8b 7f 0c                                        mov    edi,DWORD PTR [edi+0xc]
  00422a89: 89 7a 0c                                        mov    DWORD PTR [edx+0xc],edi
  00422a8c: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  00422a8f: 83 c2 10                                        add    edx,0x10
  00422a92: 83 c1 10                                        add    ecx,0x10
  00422a95: 3b c8                                           cmp    ecx,eax
  00422a97: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00422a9a: 75 d8                                           jne    0x422a74
  00422a9c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00422a9f: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00422aa2: 8b 5b 08                                        mov    ebx,DWORD PTR [ebx+0x8]
  00422aa5: 52                                              push   edx
  00422aa6: 53                                              push   ebx
  00422aa7: 50                                              push   eax
  00422aa8: eb 50                                           jmp    0x422afa
  00422aaa: 52                                              push   edx
  00422aab: 89 55 08                                        mov    DWORD PTR [ebp+0x8],edx
  00422aae: e8 ad f5 01 00                                  call   0x442060
  00422ab3: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00422ab6: 33 d2                                           xor    edx,edx
  00422ab8: 83 c4 04                                        add    esp,0x4
  00422abb: 3b ca                                           cmp    ecx,edx
  00422abd: 75 04                                           jne    0x422ac3
  00422abf: 33 c0                                           xor    eax,eax
  00422ac1: eb 08                                           jmp    0x422acb
  00422ac3: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00422ac6: 2b c1                                           sub    eax,ecx
  00422ac8: c1 f8 04                                        sar    eax,0x4
  00422acb: 3b c2                                           cmp    eax,edx
  00422acd: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00422ad0: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00422ad3: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  00422ad6: 74 2c                                           je     0x422b04
  00422ad8: c1 e0 04                                        shl    eax,0x4
  00422adb: 8b f8                                           mov    edi,eax
  00422add: 57                                              push   edi
  00422ade: e8 0d f5 01 00                                  call   0x441ff0
  00422ae3: 83 c4 04                                        add    esp,0x4
  00422ae6: 03 f8                                           add    edi,eax
  00422ae8: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00422aeb: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00422aee: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00422af1: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00422af4: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  00422af7: 50                                              push   eax
  00422af8: 51                                              push   ecx
  00422af9: 53                                              push   ebx
  00422afa: 8b ce                                           mov    ecx,esi
  00422afc: e8 ff 1d 00 00                                  call   0x424900
  00422b01: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00422b04: 5f                                              pop    edi
  00422b05: 8b c6                                           mov    eax,esi
  00422b07: 5e                                              pop    esi
  00422b08: 5b                                              pop    ebx
  00422b09: 8b e5                                           mov    esp,ebp
  00422b0b: 5d                                              pop    ebp
  00422b0c: c2 04 00                                        ret    0x4
  00422b10: 55                                              push   ebp
  00422b11: 8b ec                                           mov    ebp,esp
  00422b13: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00422b16: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422b19: 89 08                                           mov    DWORD PTR [eax],ecx
  00422b1b: 5d                                              pop    ebp
  00422b1c: c2 04 00                                        ret    0x4
  00422b20: 55                                              push   ebp
  00422b21: 8b ec                                           mov    ebp,esp
  00422b23: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00422b26: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422b29: 89 08                                           mov    DWORD PTR [eax],ecx
  00422b2b: 5d                                              pop    ebp
  00422b2c: c2 04 00                                        ret    0x4
  00422b30: 55                                              push   ebp
  00422b31: 8b ec                                           mov    ebp,esp
  00422b33: 83 ec 08                                        sub    esp,0x8
  00422b36: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00422b39: 53                                              push   ebx
  00422b3a: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00422b3d: 3b d8                                           cmp    ebx,eax
  00422b3f: 56                                              push   esi
  00422b40: 8b f1                                           mov    esi,ecx
  00422b42: 57                                              push   edi
  00422b43: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  00422b46: 74 6d                                           je     0x422bb5
  00422b48: 53                                              push   ebx
  00422b49: 51                                              push   ecx
  00422b4a: 54                                              push   esp
  00422b4b: e8 d0 ff ff ff                                  call   0x422b20
  00422b50: 51                                              push   ecx
  00422b51: 8d 45 10                                        lea    eax,[ebp+0x10]
  00422b54: 8b cc                                           mov    ecx,esp
  00422b56: 50                                              push   eax
  00422b57: e8 b4 01 00 00                                  call   0x422d10
  00422b5c: e8 ef 1d 00 00                                  call   0x424950
  00422b61: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  00422b64: 8b d0                                           mov    edx,eax
  00422b66: 83 c4 0c                                        add    esp,0xc
  00422b69: 3b d7                                           cmp    edx,edi
  00422b6b: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00422b6e: 74 42                                           je     0x422bb2
  00422b70: 8d 72 04                                        lea    esi,[edx+0x4]
  00422b73: 33 db                                           xor    ebx,ebx
  00422b75: 8b 06                                           mov    eax,DWORD PTR [esi]
  00422b77: 3b c3                                           cmp    eax,ebx
  00422b79: 74 1f                                           je     0x422b9a
  00422b7b: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00422b7e: 8a 01                                           mov    al,BYTE PTR [ecx]
  00422b80: 3a c3                                           cmp    al,bl
  00422b82: 74 0a                                           je     0x422b8e
  00422b84: 3c ff                                           cmp    al,0xff
  00422b86: 74 06                                           je     0x422b8e
  00422b88: fe c8                                           dec    al
  00422b8a: 88 01                                           mov    BYTE PTR [ecx],al
  00422b8c: eb 0c                                           jmp    0x422b9a
  00422b8e: 51                                              push   ecx
  00422b8f: e8 cc f4 01 00                                  call   0x442060
  00422b94: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  00422b97: 83 c4 04                                        add    esp,0x4
  00422b9a: 89 1e                                           mov    DWORD PTR [esi],ebx
  00422b9c: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00422b9f: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00422ba2: 83 c6 10                                        add    esi,0x10
  00422ba5: 8d 4e fc                                        lea    ecx,[esi-0x4]
  00422ba8: 3b cf                                           cmp    ecx,edi
  00422baa: 75 c9                                           jne    0x422b75
  00422bac: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00422baf: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  00422bb2: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00422bb5: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422bb8: 5f                                              pop    edi
  00422bb9: 5e                                              pop    esi
  00422bba: 89 18                                           mov    DWORD PTR [eax],ebx
  00422bbc: 5b                                              pop    ebx
  00422bbd: 8b e5                                           mov    esp,ebp
  00422bbf: 5d                                              pop    ebp
  00422bc0: c2 0c 00                                        ret    0xc
  00422bd0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00422bd2: c3                                              ret
  00422c80: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00422c83: 85 d2                                           test   edx,edx
  00422c85: 75 03                                           jne    0x422c8a
  00422c87: 33 c0                                           xor    eax,eax
  00422c89: c3                                              ret
  00422c8a: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00422c8d: 2b c2                                           sub    eax,edx
  00422c8f: c1 f8 02                                        sar    eax,0x2
  00422c92: c3                                              ret
  00422ca0: 55                                              push   ebp
  00422ca1: 8b ec                                           mov    ebp,esp
  00422ca3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422ca6: 56                                              push   esi
  00422ca7: 8b f1                                           mov    esi,ecx
  00422ca9: 33 c9                                           xor    ecx,ecx
  00422cab: 3b c1                                           cmp    eax,ecx
  00422cad: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00422cb0: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00422cb3: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  00422cb6: 75 07                                           jne    0x422cbf
  00422cb8: 32 c0                                           xor    al,al
  00422cba: 5e                                              pop    esi
  00422cbb: 5d                                              pop    ebp
  00422cbc: c2 04 00                                        ret    0x4
  00422cbf: 57                                              push   edi
  00422cc0: 8d 3c 85 00 00 00 00                            lea    edi,[eax*4+0x0]
  00422cc7: 57                                              push   edi
  00422cc8: e8 23 f3 01 00                                  call   0x441ff0
  00422ccd: 83 c4 04                                        add    esp,0x4
  00422cd0: 03 f8                                           add    edi,eax
  00422cd2: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00422cd5: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00422cd8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00422cdb: 5f                                              pop    edi
  00422cdc: b0 01                                           mov    al,0x1
  00422cde: 5e                                              pop    esi
  00422cdf: 5d                                              pop    ebp
  00422ce0: c2 04 00                                        ret    0x4
  00422df0: 56                                              push   esi
  00422df1: 8b f1                                           mov    esi,ecx
  00422df3: 8d 46 08                                        lea    eax,[esi+0x8]
  00422df6: 50                                              push   eax
  00422df7: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00422dfd: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00422e04: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00422e0a: 8b c6                                           mov    eax,esi
  00422e0c: 5e                                              pop    esi
  00422e0d: c3                                              ret
  00423400: 55                                              push   ebp
  00423401: 8b ec                                           mov    ebp,esp
  00423403: 56                                              push   esi
  00423404: 57                                              push   edi
  00423405: 8b f9                                           mov    edi,ecx
  00423407: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0042340a: 85 c0                                           test   eax,eax
  0042340c: 74 0d                                           je     0x42341b
  0042340e: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00423411: 2b c8                                           sub    ecx,eax
  00423413: f7 c1 f0 ff ff ff                               test   ecx,0xfffffff0
  00423419: 75 04                                           jne    0x42341f
  0042341b: 33 f6                                           xor    esi,esi
  0042341d: eb 08                                           jmp    0x423427
  0042341f: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00423422: 2b f0                                           sub    esi,eax
  00423424: c1 fe 04                                        sar    esi,0x4
  00423427: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0042342a: 52                                              push   edx
  0042342b: 6a 01                                           push   0x1
  0042342d: 51                                              push   ecx
  0042342e: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00423431: 8b cc                                           mov    ecx,esp
  00423433: 50                                              push   eax
  00423434: e8 d7 f8 ff ff                                  call   0x422d10
  00423439: 8b cf                                           mov    ecx,edi
  0042343b: e8 40 08 00 00                                  call   0x423c80
  00423440: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00423443: c1 e6 04                                        shl    esi,0x4
  00423446: 03 f0                                           add    esi,eax
  00423448: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042344b: 5f                                              pop    edi
  0042344c: 89 30                                           mov    DWORD PTR [eax],esi
  0042344e: 5e                                              pop    esi
  0042344f: 5d                                              pop    ebp
  00423450: c2 0c 00                                        ret    0xc
  00423c50: 55                                              push   ebp
  00423c51: 8b ec                                           mov    ebp,esp
  00423c53: 6a 18                                           push   0x18
  00423c55: e8 96 e3 01 00                                  call   0x441ff0
  00423c5a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00423c5d: 8a 55 0c                                        mov    dl,BYTE PTR [ebp+0xc]
  00423c60: 83 c4 04                                        add    esp,0x4
  00423c63: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00423c66: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  00423c69: c6 40 15 00                                     mov    BYTE PTR [eax+0x15],0x0
  00423c6d: 5d                                              pop    ebp
  00423c6e: c2 08 00                                        ret    0x8
  00424400: 53                                              push   ebx
  00424401: 56                                              push   esi
  00424402: 8b f1                                           mov    esi,ecx
  00424404: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  00424407: 57                                              push   edi
  00424408: 33 ff                                           xor    edi,edi
  0042440a: c7 06 6c e8 4d 00                               mov    DWORD PTR [esi],0x4de86c
  00424410: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00424413: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00424416: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0042441a: bb 01 00 00 00                                  mov    ebx,0x1
  0042441f: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  00424422: 74 0a                                           je     0x42442e
  00424424: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00424427: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00424429: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0042442c: eb 03                                           jmp    0x424431
  0042442e: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00424431: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00424434: 3b c7                                           cmp    eax,edi
  00424436: 0f 84 ef 00 00 00                               je     0x42452b
  0042443c: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  0042443f: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00424442: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  00424445: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00424448: 3b c1                                           cmp    eax,ecx
  0042444a: 74 5b                                           je     0x4244a7
  0042444c: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0042444f: 74 52                                           je     0x4244a3
  00424451: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00424453: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00424456: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00424459: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0042445c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042445f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00424461: 89 11                                           mov    DWORD PTR [ecx],edx
  00424463: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00424466: 3b c3                                           cmp    eax,ebx
  00424468: 75 17                                           jne    0x424481
  0042446a: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0042446d: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00424470: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00424473: 52                                              push   edx
  00424474: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00424477: e8 e4 db 01 00                                  call   0x442060
  0042447c: 83 c4 04                                        add    esp,0x4
  0042447f: eb 9e                                           jmp    0x42441f
  00424481: 83 f8 02                                        cmp    eax,0x2
  00424484: 0f 85 90 00 00 00                               jne    0x42451a
  0042448a: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0042448d: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042448f: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00424492: 52                                              push   edx
  00424493: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00424496: e8 c5 db 01 00                                  call   0x442060
  0042449b: 83 c4 04                                        add    esp,0x4
  0042449e: e9 7c ff ff ff                                  jmp    0x42441f
  004244a3: 3b c1                                           cmp    eax,ecx
  004244a5: 75 35                                           jne    0x4244dc
  004244a7: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004244aa: 74 35                                           je     0x4244e1
  004244ac: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004244af: 89 39                                           mov    DWORD PTR [ecx],edi
  004244b1: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004244b4: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004244b7: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004244ba: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  004244be: 8b ca                                           mov    ecx,edx
  004244c0: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004244c3: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004244c6: 75 52                                           jne    0x42451a
  004244c8: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004244cb: 52                                              push   edx
  004244cc: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004244cf: e8 8c db 01 00                                  call   0x442060
  004244d4: 83 c4 04                                        add    esp,0x4
  004244d7: e9 43 ff ff ff                                  jmp    0x42441f
  004244dc: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004244df: 75 2d                                           jne    0x42450e
  004244e1: 3b c1                                           cmp    eax,ecx
  004244e3: 74 29                                           je     0x42450e
  004244e5: 8b 00                                           mov    eax,DWORD PTR [eax]
  004244e7: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004244ea: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004244ed: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004244ef: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004244f2: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004244f5: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  004244f8: 75 20                                           jne    0x42451a
  004244fa: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004244fd: 52                                              push   edx
  004244fe: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00424501: e8 5a db 01 00                                  call   0x442060
  00424506: 83 c4 04                                        add    esp,0x4
  00424509: e9 11 ff ff ff                                  jmp    0x42441f
  0042450e: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  00424511: 89 7e 24                                        mov    DWORD PTR [esi+0x24],edi
  00424514: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  00424517: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0042451a: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0042451d: 52                                              push   edx
  0042451e: e8 3d db 01 00                                  call   0x442060
  00424523: 83 c4 04                                        add    esp,0x4
  00424526: e9 f4 fe ff ff                                  jmp    0x42441f
  0042452b: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  0042452e: 74 04                                           je     0x424534
  00424530: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  00424534: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00424537: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0042453d: 83 c6 08                                        add    esi,0x8
  00424540: 56                                              push   esi
  00424541: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00424547: 5f                                              pop    edi
  00424548: 5e                                              pop    esi
  00424549: 5b                                              pop    ebx
  0042454a: c3                                              ret
  00424550: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00424553: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  00424556: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  00424559: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  0042455c: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0042455f: 3b c2                                           cmp    eax,edx
  00424561: 74 57                                           je     0x4245ba
  00424563: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00424566: 74 4e                                           je     0x4245b6
  00424568: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042456a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042456d: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00424570: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00424573: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00424576: 8b 00                                           mov    eax,DWORD PTR [eax]
  00424578: 89 02                                           mov    DWORD PTR [edx],eax
  0042457a: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0042457d: 83 f8 01                                        cmp    eax,0x1
  00424580: 75 16                                           jne    0x424598
  00424582: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00424585: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00424588: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0042458b: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0042458e: 51                                              push   ecx
  0042458f: e8 cc da 01 00                                  call   0x442060
  00424594: 83 c4 04                                        add    esp,0x4
  00424597: c3                                              ret
  00424598: 83 f8 02                                        cmp    eax,0x2
  0042459b: 0f 85 8c 00 00 00                               jne    0x42462d
  004245a1: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004245a4: 8b 02                                           mov    eax,DWORD PTR [edx]
  004245a6: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  004245a9: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  004245ac: 51                                              push   ecx
  004245ad: e8 ae da 01 00                                  call   0x442060
  004245b2: 83 c4 04                                        add    esp,0x4
  004245b5: c3                                              ret
  004245b6: 3b c2                                           cmp    eax,edx
  004245b8: 75 34                                           jne    0x4245ee
  004245ba: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  004245bd: 74 34                                           je     0x4245f3
  004245bf: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004245c2: 33 d2                                           xor    edx,edx
  004245c4: 89 10                                           mov    DWORD PTR [eax],edx
  004245c6: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  004245c9: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004245cc: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  004245cf: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  004245d2: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004245d5: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  004245d8: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  004245dc: 75 4f                                           jne    0x42462d
  004245de: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  004245e1: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  004245e4: 51                                              push   ecx
  004245e5: e8 76 da 01 00                                  call   0x442060
  004245ea: 83 c4 04                                        add    esp,0x4
  004245ed: c3                                              ret
  004245ee: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  004245f1: 75 2c                                           jne    0x42461f
  004245f3: 3b c2                                           cmp    eax,edx
  004245f5: 74 28                                           je     0x42461f
  004245f7: 8b 00                                           mov    eax,DWORD PTR [eax]
  004245f9: 33 d2                                           xor    edx,edx
  004245fb: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004245fe: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00424601: 8b 00                                           mov    eax,DWORD PTR [eax]
  00424603: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00424606: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  00424609: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  0042460d: 75 1e                                           jne    0x42462d
  0042460f: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00424612: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00424615: 51                                              push   ecx
  00424616: e8 45 da 01 00                                  call   0x442060
  0042461b: 83 c4 04                                        add    esp,0x4
  0042461e: c3                                              ret
  0042461f: 33 d2                                           xor    edx,edx
  00424621: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  00424624: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  00424627: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  0042462a: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0042462d: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00424630: 51                                              push   ecx
  00424631: e8 2a da 01 00                                  call   0x442060
  00424636: 83 c4 04                                        add    esp,0x4
  00424639: c3                                              ret
  00424640: 56                                              push   esi
  00424641: 8b f1                                           mov    esi,ecx
  00424643: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00424646: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  00424649: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0042464c: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  0042464f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00424652: 3b c1                                           cmp    eax,ecx
  00424654: 74 3d                                           je     0x424693
  00424656: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00424659: 74 34                                           je     0x42468f
  0042465b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042465d: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00424660: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00424663: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00424666: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00424669: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042466b: 89 11                                           mov    DWORD PTR [ecx],edx
  0042466d: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00424670: 83 f8 01                                        cmp    eax,0x1
  00424673: 75 0b                                           jne    0x424680
  00424675: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00424678: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042467b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0042467e: eb 67                                           jmp    0x4246e7
  00424680: 83 f8 02                                        cmp    eax,0x2
  00424683: 75 62                                           jne    0x4246e7
  00424685: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00424688: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042468a: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0042468d: eb 58                                           jmp    0x4246e7
  0042468f: 3b c1                                           cmp    eax,ecx
  00424691: 75 23                                           jne    0x4246b6
  00424693: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00424696: 74 23                                           je     0x4246bb
  00424698: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042469b: 33 c9                                           xor    ecx,ecx
  0042469d: 89 0a                                           mov    DWORD PTR [edx],ecx
  0042469f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004246a2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004246a5: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  004246a8: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004246ab: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  004246af: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004246b2: 75 33                                           jne    0x4246e7
  004246b4: eb 2e                                           jmp    0x4246e4
  004246b6: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004246b9: 75 1e                                           jne    0x4246d9
  004246bb: 3b c1                                           cmp    eax,ecx
  004246bd: 74 1a                                           je     0x4246d9
  004246bf: 8b 00                                           mov    eax,DWORD PTR [eax]
  004246c1: 33 c9                                           xor    ecx,ecx
  004246c3: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004246c6: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004246c9: 8b 02                                           mov    eax,DWORD PTR [edx]
  004246cb: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004246ce: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004246d1: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  004246d5: 75 10                                           jne    0x4246e7
  004246d7: eb 0b                                           jmp    0x4246e4
  004246d9: 33 c9                                           xor    ecx,ecx
  004246db: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  004246de: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  004246e1: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  004246e4: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  004246e7: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  004246ea: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004246ed: 51                                              push   ecx
  004246ee: e8 6d d9 01 00                                  call   0x442060
  004246f3: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004246f6: 52                                              push   edx
  004246f7: e8 64 d9 01 00                                  call   0x442060
  004246fc: 83 c4 08                                        add    esp,0x8
  004246ff: 5e                                              pop    esi
  00424700: c3                                              ret
  00424710: 8b 51 40                                        mov    edx,DWORD PTR [ecx+0x40]
  00424713: 85 d2                                           test   edx,edx
  00424715: b8 01 00 00 00                                  mov    eax,0x1
  0042471a: 74 0a                                           je     0x424726
  0042471c: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0042471f: 8b 12                                           mov    edx,DWORD PTR [edx]
  00424721: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  00424724: eb 03                                           jmp    0x424729
  00424726: 89 41 40                                        mov    DWORD PTR [ecx+0x40],eax
  00424729: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0042472c: 85 d2                                           test   edx,edx
  0042472e: 75 14                                           jne    0x424744
  00424730: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  00424733: 85 c0                                           test   eax,eax
  00424735: 74 04                                           je     0x42473b
  00424737: c6 41 34 07                                     mov    BYTE PTR [ecx+0x34],0x7
  0042473b: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  00424742: 33 c0                                           xor    eax,eax
  00424744: c3                                              ret
  004248a0: 55                                              push   ebp
  004248a1: 8b ec                                           mov    ebp,esp
  004248a3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004248a6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004248a9: 3b ca                                           cmp    ecx,edx
  004248ab: 74 1b                                           je     0x4248c8
  004248ad: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004248b0: 56                                              push   esi
  004248b1: 85 c0                                           test   eax,eax
  004248b3: 74 04                                           je     0x4248b9
  004248b5: 8b 31                                           mov    esi,DWORD PTR [ecx]
  004248b7: 89 30                                           mov    DWORD PTR [eax],esi
  004248b9: 83 c1 04                                        add    ecx,0x4
  004248bc: 83 c0 04                                        add    eax,0x4
  004248bf: 3b ca                                           cmp    ecx,edx
  004248c1: 75 ee                                           jne    0x4248b1
  004248c3: 5e                                              pop    esi
  004248c4: 5d                                              pop    ebp
  004248c5: c2 0c 00                                        ret    0xc
  004248c8: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004248cb: 5d                                              pop    ebp
  004248cc: c2 0c 00                                        ret    0xc
  00424900: 55                                              push   ebp
  00424901: 8b ec                                           mov    ebp,esp
  00424903: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00424906: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00424909: 3b ca                                           cmp    ecx,edx
  0042490b: 74 35                                           je     0x424942
  0042490d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00424910: 53                                              push   ebx
  00424911: 56                                              push   esi
  00424912: 57                                              push   edi
  00424913: 85 c0                                           test   eax,eax
  00424915: 74 1a                                           je     0x424931
  00424917: 8b f1                                           mov    esi,ecx
  00424919: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0042491b: 8b f8                                           mov    edi,eax
  0042491d: 89 1f                                           mov    DWORD PTR [edi],ebx
  0042491f: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00424922: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00424925: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00424928: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  0042492b: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  0042492e: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00424931: 83 c1 10                                        add    ecx,0x10
  00424934: 83 c0 10                                        add    eax,0x10
  00424937: 3b ca                                           cmp    ecx,edx
  00424939: 75 d8                                           jne    0x424913
  0042493b: 5f                                              pop    edi
  0042493c: 5e                                              pop    esi
  0042493d: 5b                                              pop    ebx
  0042493e: 5d                                              pop    ebp
  0042493f: c2 0c 00                                        ret    0xc
  00424942: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00424945: 5d                                              pop    ebp
  00424946: c2 0c 00                                        ret    0xc
  00425200: 55                                              push   ebp
  00425201: 8b ec                                           mov    ebp,esp
  00425203: 56                                              push   esi
  00425204: 8b f1                                           mov    esi,ecx
  00425206: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00425209: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0042520c: 57                                              push   edi
  0042520d: 33 ff                                           xor    edi,edi
  0042520f: 42                                              inc    edx
  00425210: 3b c7                                           cmp    eax,edi
  00425212: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00425215: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00425218: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0042521c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0042521f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00425222: 6a 0c                                           push   0xc
  00425224: 75 35                                           jne    0x42525b
  00425226: e8 c5 cd 01 00                                  call   0x441ff0
  0042522b: 83 c4 04                                        add    esp,0x4
  0042522e: 3b c7                                           cmp    eax,edi
  00425230: 74 07                                           je     0x425239
  00425232: 89 38                                           mov    DWORD PTR [eax],edi
  00425234: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00425237: eb 02                                           jmp    0x42523b
  00425239: 33 c0                                           xor    eax,eax
  0042523b: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0042523e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00425241: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00425244: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00425247: 89 38                                           mov    DWORD PTR [eax],edi
  00425249: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0042524c: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0042524f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00425252: 5f                                              pop    edi
  00425253: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00425256: 5e                                              pop    esi
  00425257: 5d                                              pop    ebp
  00425258: c2 04 00                                        ret    0x4
  0042525b: e8 90 cd 01 00                                  call   0x441ff0
  00425260: 83 c4 04                                        add    esp,0x4
  00425263: 3b c7                                           cmp    eax,edi
  00425265: 74 07                                           je     0x42526e
  00425267: 89 38                                           mov    DWORD PTR [eax],edi
  00425269: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0042526c: eb 02                                           jmp    0x425270
  0042526e: 33 c0                                           xor    eax,eax
  00425270: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00425273: 89 01                                           mov    DWORD PTR [ecx],eax
  00425275: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00425278: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0042527b: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0042527e: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00425281: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00425284: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00425287: 89 38                                           mov    DWORD PTR [eax],edi
  00425289: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0042528c: 5f                                              pop    edi
  0042528d: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00425290: 5e                                              pop    esi
  00425291: 5d                                              pop    ebp
  00425292: c2 04 00                                        ret    0x4
  00425430: 8b 41 28                                        mov    eax,DWORD PTR [ecx+0x28]
  00425433: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00425436: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  0042543d: c6 41 34 08                                     mov    BYTE PTR [ecx+0x34],0x8
  00425441: c3                                              ret
  00425450: 8b 41 28                                        mov    eax,DWORD PTR [ecx+0x28]
  00425453: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00425456: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  0042545d: c6 41 34 08                                     mov    BYTE PTR [ecx+0x34],0x8
  00425461: c3                                              ret
  00436fe0: 55                                              push   ebp
  00436fe1: 8b ec                                           mov    ebp,esp
  00436fe3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436fe6: 56                                              push   esi
  00436fe7: 8b f1                                           mov    esi,ecx
  00436fe9: 50                                              push   eax
  00436fea: e8 5d aa 09 00                                  call   0x4d1a4c
  00436fef: 8b c6                                           mov    eax,esi
  00436ff1: 5e                                              pop    esi
  00436ff2: 5d                                              pop    ebp
  00436ff3: c2 04 00                                        ret    0x4
  00437010: 55                                              push   ebp
  00437011: 8b ec                                           mov    ebp,esp
  00437013: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00437016: 8b c1                                           mov    eax,ecx
  00437018: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0043701b: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0043701e: 56                                              push   esi
  0043701f: 57                                              push   edi
  00437020: 8d 72 08                                        lea    esi,[edx+0x8]
  00437023: 8d 78 08                                        lea    edi,[eax+0x8]
  00437026: b9 06 00 00 00                                  mov    ecx,0x6
  0043702b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043702d: c7 00 8c e5 4d 00                               mov    DWORD PTR [eax],0x4de58c
  00437033: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  00437036: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00437039: 8b 4a 24                                        mov    ecx,DWORD PTR [edx+0x24]
  0043703c: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  0043703f: 8b 4a 28                                        mov    ecx,DWORD PTR [edx+0x28]
  00437042: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  00437045: 8b 4a 2c                                        mov    ecx,DWORD PTR [edx+0x2c]
  00437048: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  0043704b: 8b 4a 30                                        mov    ecx,DWORD PTR [edx+0x30]
  0043704e: 89 48 30                                        mov    DWORD PTR [eax+0x30],ecx
  00437051: 8a 4a 34                                        mov    cl,BYTE PTR [edx+0x34]
  00437054: 88 48 34                                        mov    BYTE PTR [eax+0x34],cl
  00437057: 8b 4a 38                                        mov    ecx,DWORD PTR [edx+0x38]
  0043705a: 89 48 38                                        mov    DWORD PTR [eax+0x38],ecx
  0043705d: 8b 4a 3c                                        mov    ecx,DWORD PTR [edx+0x3c]
  00437060: 89 48 3c                                        mov    DWORD PTR [eax+0x3c],ecx
  00437063: 8b 4a 40                                        mov    ecx,DWORD PTR [edx+0x40]
  00437066: 89 48 40                                        mov    DWORD PTR [eax+0x40],ecx
  00437069: c7 00 a4 ee 4d 00                               mov    DWORD PTR [eax],0x4deea4
  0043706f: 8b 4a 44                                        mov    ecx,DWORD PTR [edx+0x44]
  00437072: 89 48 44                                        mov    DWORD PTR [eax+0x44],ecx
  00437075: 8b 4a 48                                        mov    ecx,DWORD PTR [edx+0x48]
  00437078: 89 48 48                                        mov    DWORD PTR [eax+0x48],ecx
  0043707b: 8b 52 4c                                        mov    edx,DWORD PTR [edx+0x4c]
  0043707e: 5f                                              pop    edi
  0043707f: 89 50 4c                                        mov    DWORD PTR [eax+0x4c],edx
  00437082: 5e                                              pop    esi
  00437083: 5d                                              pop    ebp
  00437084: c2 04 00                                        ret    0x4
  004371e0: 55                                              push   ebp
  004371e1: 8b ec                                           mov    ebp,esp
  004371e3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004371e6: 8b c1                                           mov    eax,ecx
  004371e8: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004371eb: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004371ee: 56                                              push   esi
  004371ef: 57                                              push   edi
  004371f0: 8d 72 08                                        lea    esi,[edx+0x8]
  004371f3: 8d 78 08                                        lea    edi,[eax+0x8]
  004371f6: b9 06 00 00 00                                  mov    ecx,0x6
  004371fb: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004371fd: c7 00 8c e5 4d 00                               mov    DWORD PTR [eax],0x4de58c
  00437203: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  00437206: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00437209: 8b 4a 24                                        mov    ecx,DWORD PTR [edx+0x24]
  0043720c: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  0043720f: 8b 4a 28                                        mov    ecx,DWORD PTR [edx+0x28]
  00437212: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  00437215: 8b 4a 2c                                        mov    ecx,DWORD PTR [edx+0x2c]
  00437218: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  0043721b: 8b 4a 30                                        mov    ecx,DWORD PTR [edx+0x30]
  0043721e: 89 48 30                                        mov    DWORD PTR [eax+0x30],ecx
  00437221: 8a 4a 34                                        mov    cl,BYTE PTR [edx+0x34]
  00437224: 88 48 34                                        mov    BYTE PTR [eax+0x34],cl
  00437227: 8b 4a 38                                        mov    ecx,DWORD PTR [edx+0x38]
  0043722a: 89 48 38                                        mov    DWORD PTR [eax+0x38],ecx
  0043722d: 8b 4a 3c                                        mov    ecx,DWORD PTR [edx+0x3c]
  00437230: 89 48 3c                                        mov    DWORD PTR [eax+0x3c],ecx
  00437233: 8b 52 40                                        mov    edx,DWORD PTR [edx+0x40]
  00437236: 5f                                              pop    edi
  00437237: 89 50 40                                        mov    DWORD PTR [eax+0x40],edx
  0043723a: c7 00 b4 ee 4d 00                               mov    DWORD PTR [eax],0x4deeb4
  00437240: 5e                                              pop    esi
  00437241: 5d                                              pop    ebp
  00437242: c2 04 00                                        ret    0x4
  00437250: 55                                              push   ebp
  00437251: 8b ec                                           mov    ebp,esp
  00437253: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00437256: 8b c1                                           mov    eax,ecx
  00437258: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0043725b: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0043725e: 56                                              push   esi
  0043725f: 57                                              push   edi
  00437260: 8d 72 08                                        lea    esi,[edx+0x8]
  00437263: 8d 78 08                                        lea    edi,[eax+0x8]
  00437266: b9 06 00 00 00                                  mov    ecx,0x6
  0043726b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043726d: c7 00 8c e5 4d 00                               mov    DWORD PTR [eax],0x4de58c
  00437273: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  00437276: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00437279: 8b 4a 24                                        mov    ecx,DWORD PTR [edx+0x24]
  0043727c: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  0043727f: 8b 4a 28                                        mov    ecx,DWORD PTR [edx+0x28]
  00437282: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  00437285: 8b 4a 2c                                        mov    ecx,DWORD PTR [edx+0x2c]
  00437288: 89 48 2c                                        mov    DWORD PTR [eax+0x2c],ecx
  0043728b: 8b 4a 30                                        mov    ecx,DWORD PTR [edx+0x30]
  0043728e: 89 48 30                                        mov    DWORD PTR [eax+0x30],ecx
  00437291: 8a 4a 34                                        mov    cl,BYTE PTR [edx+0x34]
  00437294: 88 48 34                                        mov    BYTE PTR [eax+0x34],cl
  00437297: 8b 4a 38                                        mov    ecx,DWORD PTR [edx+0x38]
  0043729a: 89 48 38                                        mov    DWORD PTR [eax+0x38],ecx
  0043729d: 8b 4a 3c                                        mov    ecx,DWORD PTR [edx+0x3c]
  004372a0: 89 48 3c                                        mov    DWORD PTR [eax+0x3c],ecx
  004372a3: 8b 52 40                                        mov    edx,DWORD PTR [edx+0x40]
  004372a6: 5f                                              pop    edi
  004372a7: 89 50 40                                        mov    DWORD PTR [eax+0x40],edx
  004372aa: c7 00 c4 ee 4d 00                               mov    DWORD PTR [eax],0x4deec4
  004372b0: 5e                                              pop    esi
  004372b1: 5d                                              pop    ebp
  004372b2: c2 04 00                                        ret    0x4
  004378d0: 53                                              push   ebx
  004378d1: 56                                              push   esi
  004378d2: 8b f1                                           mov    esi,ecx
  004378d4: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004378d7: 57                                              push   edi
  004378d8: 33 ff                                           xor    edi,edi
  004378da: c7 06 a4 ee 4d 00                               mov    DWORD PTR [esi],0x4deea4
  004378e0: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004378e3: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004378e6: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004378ea: bb 01 00 00 00                                  mov    ebx,0x1
  004378ef: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  004378f2: 74 0a                                           je     0x4378fe
  004378f4: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004378f7: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004378f9: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004378fc: eb 03                                           jmp    0x437901
  004378fe: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00437901: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00437904: 3b c7                                           cmp    eax,edi
  00437906: 0f 84 ef 00 00 00                               je     0x4379fb
  0043790c: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  0043790f: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00437912: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  00437915: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00437918: 3b c1                                           cmp    eax,ecx
  0043791a: 74 5b                                           je     0x437977
  0043791c: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043791f: 74 52                                           je     0x437973
  00437921: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00437923: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00437926: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00437929: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043792c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043792f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00437931: 89 11                                           mov    DWORD PTR [ecx],edx
  00437933: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00437936: 3b c3                                           cmp    eax,ebx
  00437938: 75 17                                           jne    0x437951
  0043793a: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043793d: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00437940: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00437943: 52                                              push   edx
  00437944: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00437947: e8 14 a7 00 00                                  call   0x442060
  0043794c: 83 c4 04                                        add    esp,0x4
  0043794f: eb 9e                                           jmp    0x4378ef
  00437951: 83 f8 02                                        cmp    eax,0x2
  00437954: 0f 85 90 00 00 00                               jne    0x4379ea
  0043795a: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0043795d: 8b 02                                           mov    eax,DWORD PTR [edx]
  0043795f: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00437962: 52                                              push   edx
  00437963: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00437966: e8 f5 a6 00 00                                  call   0x442060
  0043796b: 83 c4 04                                        add    esp,0x4
  0043796e: e9 7c ff ff ff                                  jmp    0x4378ef
  00437973: 3b c1                                           cmp    eax,ecx
  00437975: 75 35                                           jne    0x4379ac
  00437977: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043797a: 74 35                                           je     0x4379b1
  0043797c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043797f: 89 39                                           mov    DWORD PTR [ecx],edi
  00437981: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00437984: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00437987: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0043798a: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0043798e: 8b ca                                           mov    ecx,edx
  00437990: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00437993: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00437996: 75 52                                           jne    0x4379ea
  00437998: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0043799b: 52                                              push   edx
  0043799c: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0043799f: e8 bc a6 00 00                                  call   0x442060
  004379a4: 83 c4 04                                        add    esp,0x4
  004379a7: e9 43 ff ff ff                                  jmp    0x4378ef
  004379ac: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004379af: 75 2d                                           jne    0x4379de
  004379b1: 3b c1                                           cmp    eax,ecx
  004379b3: 74 29                                           je     0x4379de
  004379b5: 8b 00                                           mov    eax,DWORD PTR [eax]
  004379b7: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004379ba: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004379bd: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004379bf: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004379c2: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004379c5: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  004379c8: 75 20                                           jne    0x4379ea
  004379ca: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004379cd: 52                                              push   edx
  004379ce: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004379d1: e8 8a a6 00 00                                  call   0x442060
  004379d6: 83 c4 04                                        add    esp,0x4
  004379d9: e9 11 ff ff ff                                  jmp    0x4378ef
  004379de: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  004379e1: 89 7e 24                                        mov    DWORD PTR [esi+0x24],edi
  004379e4: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  004379e7: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004379ea: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004379ed: 52                                              push   edx
  004379ee: e8 6d a6 00 00                                  call   0x442060
  004379f3: 83 c4 04                                        add    esp,0x4
  004379f6: e9 f4 fe ff ff                                  jmp    0x4378ef
  004379fb: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  004379fe: 74 04                                           je     0x437a04
  00437a00: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  00437a04: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00437a07: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00437a0d: 83 c6 08                                        add    esi,0x8
  00437a10: 56                                              push   esi
  00437a11: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00437a17: 5f                                              pop    edi
  00437a18: 5e                                              pop    esi
  00437a19: 5b                                              pop    ebx
  00437a1a: c3                                              ret
  0043bfd0: 66 ff 89 50 01 00 00                            dec    WORD PTR [ecx+0x150]
  0043bfd7: c3                                              ret
  0043bfe0: 57                                              push   edi
  0043bfe1: 8b f9                                           mov    edi,ecx
  0043bfe3: e8 a8 62 03 00                                  call   0x472290
  0043bfe8: 39 87 54 01 00 00                               cmp    DWORD PTR [edi+0x154],eax
  0043bfee: 0f 87 cb 00 00 00                               ja     0x43c0bf
  0043bff4: 66 8b 87 50 01 00 00                            mov    ax,WORD PTR [edi+0x150]
  0043bffb: 66 8b 8f 4c 01 00 00                            mov    cx,WORD PTR [edi+0x14c]
  0043c002: 66 3b c1                                        cmp    ax,cx
  0043c005: 0f 83 95 00 00 00                               jae    0x43c0a0
  0043c00b: 8b 87 04 01 00 00                               mov    eax,DWORD PTR [edi+0x104]
  0043c011: 53                                              push   ebx
  0043c012: 56                                              push   esi
  0043c013: 8d b7 04 01 00 00                               lea    esi,[edi+0x104]
  0043c019: 8b ce                                           mov    ecx,esi
  0043c01b: 33 db                                           xor    ebx,ebx
  0043c01d: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0043c020: 8b 87 3c 01 00 00                               mov    eax,DWORD PTR [edi+0x13c]
  0043c026: 48                                              dec    eax
  0043c027: 50                                              push   eax
  0043c028: 53                                              push   ebx
  0043c029: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0043c02e: e8 6d d0 01 00                                  call   0x4590a0
  0043c033: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  0043c036: 33 c9                                           xor    ecx,ecx
  0043c038: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0043c03b: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  0043c03e: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0043c042: 8b 56 40                                        mov    edx,DWORD PTR [esi+0x40]
  0043c045: 85 d2                                           test   edx,edx
  0043c047: 74 0a                                           je     0x43c053
  0043c049: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0043c04c: 8b 12                                           mov    edx,DWORD PTR [edx]
  0043c04e: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0043c051: eb 07                                           jmp    0x43c05a
  0043c053: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0043c05a: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0043c05d: 85 d2                                           test   edx,edx
  0043c05f: 74 11                                           je     0x43c072
  0043c061: 8b 97 24 01 00 00                               mov    edx,DWORD PTR [edi+0x124]
  0043c067: 8b 5a 08                                        mov    ebx,DWORD PTR [edx+0x8]
  0043c06a: 41                                              inc    ecx
  0043c06b: 66 3b c8                                        cmp    cx,ax
  0043c06e: 77 14                                           ja     0x43c084
  0043c070: eb d0                                           jmp    0x43c042
  0043c072: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0043c075: 85 c0                                           test   eax,eax
  0043c077: 74 04                                           je     0x43c07d
  0043c079: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0043c07d: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0043c084: 85 db                                           test   ebx,ebx
  0043c086: 74 0d                                           je     0x43c095
  0043c088: 33 c0                                           xor    eax,eax
  0043c08a: 66 8b 03                                        mov    ax,WORD PTR [ebx]
  0043c08d: 8b cf                                           mov    ecx,edi
  0043c08f: 50                                              push   eax
  0043c090: e8 3b 00 00 00                                  call   0x43c0d0
  0043c095: 8b 16                                           mov    edx,DWORD PTR [esi]
  0043c097: 8b ce                                           mov    ecx,esi
  0043c099: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0043c09c: 5e                                              pop    esi
  0043c09d: 5b                                              pop    ebx
  0043c09e: 5f                                              pop    edi
  0043c09f: c3                                              ret
  0043c0a0: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0043c0a6: 51                                              push   ecx
  0043c0a7: 25 ff ff 00 00                                  and    eax,0xffff
  0043c0ac: 50                                              push   eax
  0043c0ad: 68 cc 34 50 00                                  push   0x5034cc
  0043c0b2: 68 00 08 00 00                                  push   0x800
  0043c0b7: e8 84 5c 03 00                                  call   0x471d40
  0043c0bc: 83 c4 10                                        add    esp,0x10
  0043c0bf: 5f                                              pop    edi
  0043c0c0: c3                                              ret
  0044ac10: 55                                              push   ebp
  0044ac11: 8b ec                                           mov    ebp,esp
  0044ac13: 56                                              push   esi
  0044ac14: 57                                              push   edi
  0044ac15: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0044ac18: 8a 07                                           mov    al,BYTE PTR [edi]
  0044ac1a: 8b f1                                           mov    esi,ecx
  0044ac1c: 88 06                                           mov    BYTE PTR [esi],al
  0044ac1e: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0044ac21: 33 d2                                           xor    edx,edx
  0044ac23: 3b ca                                           cmp    ecx,edx
  0044ac25: 75 04                                           jne    0x44ac2b
  0044ac27: 33 c0                                           xor    eax,eax
  0044ac29: eb 08                                           jmp    0x44ac33
  0044ac2b: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0044ac2e: 2b c1                                           sub    eax,ecx
  0044ac30: c1 f8 02                                        sar    eax,0x2
  0044ac33: 3b c2                                           cmp    eax,edx
  0044ac35: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0044ac38: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0044ac3b: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0044ac3e: 74 38                                           je     0x44ac78
  0044ac40: 53                                              push   ebx
  0044ac41: 8d 1c 85 00 00 00 00                            lea    ebx,[eax*4+0x0]
  0044ac48: 53                                              push   ebx
  0044ac49: e8 a2 73 ff ff                                  call   0x441ff0
  0044ac4e: 83 c4 04                                        add    esp,0x4
  0044ac51: 03 d8                                           add    ebx,eax
  0044ac53: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0044ac56: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044ac59: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0044ac5c: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0044ac5f: 8b 7f 04                                        mov    edi,DWORD PTR [edi+0x4]
  0044ac62: 50                                              push   eax
  0044ac63: 51                                              push   ecx
  0044ac64: 57                                              push   edi
  0044ac65: 8b ce                                           mov    ecx,esi
  0044ac67: e8 34 9c fd ff                                  call   0x4248a0
  0044ac6c: 5b                                              pop    ebx
  0044ac6d: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044ac70: 5f                                              pop    edi
  0044ac71: 8b c6                                           mov    eax,esi
  0044ac73: 5e                                              pop    esi
  0044ac74: 5d                                              pop    ebp
  0044ac75: c2 04 00                                        ret    0x4
  0044ac78: 5f                                              pop    edi
  0044ac79: 8b c6                                           mov    eax,esi
  0044ac7b: 5e                                              pop    esi
  0044ac7c: 5d                                              pop    ebp
  0044ac7d: c2 04 00                                        ret    0x4
  0044ac80: 55                                              push   ebp
  0044ac81: 8b ec                                           mov    ebp,esp
  0044ac83: 51                                              push   ecx
  0044ac84: 53                                              push   ebx
  0044ac85: 56                                              push   esi
  0044ac86: 8b f1                                           mov    esi,ecx
  0044ac88: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044ac8b: 3b f1                                           cmp    esi,ecx
  0044ac8d: 57                                              push   edi
  0044ac8e: 0f 84 54 01 00 00                               je     0x44ade8
  0044ac94: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0044ac97: 33 d2                                           xor    edx,edx
  0044ac99: 3b c2                                           cmp    eax,edx
  0044ac9b: 74 0c                                           je     0x44aca9
  0044ac9d: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  0044aca0: 8b df                                           mov    ebx,edi
  0044aca2: 2b d8                                           sub    ebx,eax
  0044aca4: c1 fb 02                                        sar    ebx,0x2
  0044aca7: 75 35                                           jne    0x44acde
  0044aca9: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0044acac: 3b c2                                           cmp    eax,edx
  0044acae: 74 1a                                           je     0x44acca
  0044acb0: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0044acb3: 51                                              push   ecx
  0044acb4: 50                                              push   eax
  0044acb5: 8b ce                                           mov    ecx,esi
  0044acb7: e8 34 80 fd ff                                  call   0x422cf0
  0044acbc: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0044acbf: 52                                              push   edx
  0044acc0: e8 9b 73 ff ff                                  call   0x442060
  0044acc5: 83 c4 04                                        add    esp,0x4
  0044acc8: 33 d2                                           xor    edx,edx
  0044acca: 5f                                              pop    edi
  0044accb: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0044acce: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0044acd1: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0044acd4: 8b c6                                           mov    eax,esi
  0044acd6: 5e                                              pop    esi
  0044acd7: 5b                                              pop    ebx
  0044acd8: 8b e5                                           mov    esp,ebp
  0044acda: 5d                                              pop    ebp
  0044acdb: c2 04 00                                        ret    0x4
  0044acde: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0044ace1: 3b ca                                           cmp    ecx,edx
  0044ace3: 75 04                                           jne    0x44ace9
  0044ace5: 33 d2                                           xor    edx,edx
  0044ace7: eb 08                                           jmp    0x44acf1
  0044ace9: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0044acec: 2b d1                                           sub    edx,ecx
  0044acee: c1 fa 02                                        sar    edx,0x2
  0044acf1: 3b da                                           cmp    ebx,edx
  0044acf3: 77 4e                                           ja     0x44ad43
  0044acf5: 3b c7                                           cmp    eax,edi
  0044acf7: 74 0e                                           je     0x44ad07
  0044acf9: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044acfb: 89 11                                           mov    DWORD PTR [ecx],edx
  0044acfd: 83 c0 04                                        add    eax,0x4
  0044ad00: 83 c1 04                                        add    ecx,0x4
  0044ad03: 3b c7                                           cmp    eax,edi
  0044ad05: 75 f2                                           jne    0x44acf9
  0044ad07: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044ad0a: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044ad0d: 85 c9                                           test   ecx,ecx
  0044ad0f: 75 16                                           jne    0x44ad27
  0044ad11: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0044ad14: 33 c0                                           xor    eax,eax
  0044ad16: 8d 14 81                                        lea    edx,[ecx+eax*4]
  0044ad19: 5f                                              pop    edi
  0044ad1a: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0044ad1d: 8b c6                                           mov    eax,esi
  0044ad1f: 5e                                              pop    esi
  0044ad20: 5b                                              pop    ebx
  0044ad21: 8b e5                                           mov    esp,ebp
  0044ad23: 5d                                              pop    ebp
  0044ad24: c2 04 00                                        ret    0x4
  0044ad27: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0044ad2a: 2b c1                                           sub    eax,ecx
  0044ad2c: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0044ad2f: c1 f8 02                                        sar    eax,0x2
  0044ad32: 8d 14 81                                        lea    edx,[ecx+eax*4]
  0044ad35: 5f                                              pop    edi
  0044ad36: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0044ad39: 8b c6                                           mov    eax,esi
  0044ad3b: 5e                                              pop    esi
  0044ad3c: 5b                                              pop    ebx
  0044ad3d: 8b e5                                           mov    esp,ebp
  0044ad3f: 5d                                              pop    ebp
  0044ad40: c2 04 00                                        ret    0x4
  0044ad43: 33 ff                                           xor    edi,edi
  0044ad45: 3b cf                                           cmp    ecx,edi
  0044ad47: 75 04                                           jne    0x44ad4d
  0044ad49: 33 d2                                           xor    edx,edx
  0044ad4b: eb 08                                           jmp    0x44ad55
  0044ad4d: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0044ad50: 2b d1                                           sub    edx,ecx
  0044ad52: c1 fa 02                                        sar    edx,0x2
  0044ad55: 3b da                                           cmp    ebx,edx
  0044ad57: 77 32                                           ja     0x44ad8b
  0044ad59: 3b cf                                           cmp    ecx,edi
  0044ad5b: 75 04                                           jne    0x44ad61
  0044ad5d: 33 d2                                           xor    edx,edx
  0044ad5f: eb 08                                           jmp    0x44ad69
  0044ad61: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0044ad64: 2b d1                                           sub    edx,ecx
  0044ad66: c1 fa 02                                        sar    edx,0x2
  0044ad69: 8d 14 90                                        lea    edx,[eax+edx*4]
  0044ad6c: 3b c2                                           cmp    eax,edx
  0044ad6e: 74 0e                                           je     0x44ad7e
  0044ad70: 8b 38                                           mov    edi,DWORD PTR [eax]
  0044ad72: 89 39                                           mov    DWORD PTR [ecx],edi
  0044ad74: 83 c0 04                                        add    eax,0x4
  0044ad77: 83 c1 04                                        add    ecx,0x4
  0044ad7a: 3b c2                                           cmp    eax,edx
  0044ad7c: 75 f2                                           jne    0x44ad70
  0044ad7e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044ad81: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0044ad84: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0044ad87: 51                                              push   ecx
  0044ad88: 50                                              push   eax
  0044ad89: eb 52                                           jmp    0x44addd
  0044ad8b: 51                                              push   ecx
  0044ad8c: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0044ad8f: e8 cc 72 ff ff                                  call   0x442060
  0044ad94: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0044ad97: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0044ad9a: 83 c4 04                                        add    esp,0x4
  0044ad9d: 3b cf                                           cmp    ecx,edi
  0044ad9f: 75 04                                           jne    0x44ada5
  0044ada1: 33 c0                                           xor    eax,eax
  0044ada3: eb 08                                           jmp    0x44adad
  0044ada5: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0044ada8: 2b c1                                           sub    eax,ecx
  0044adaa: c1 f8 02                                        sar    eax,0x2
  0044adad: 3b c7                                           cmp    eax,edi
  0044adaf: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0044adb2: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  0044adb5: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0044adb8: 74 2e                                           je     0x44ade8
  0044adba: 8d 3c 85 00 00 00 00                            lea    edi,[eax*4+0x0]
  0044adc1: 57                                              push   edi
  0044adc2: e8 29 72 ff ff                                  call   0x441ff0
  0044adc7: 83 c4 04                                        add    esp,0x4
  0044adca: 03 f8                                           add    edi,eax
  0044adcc: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0044adcf: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044add2: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0044add5: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0044add8: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0044addb: 50                                              push   eax
  0044addc: 51                                              push   ecx
  0044addd: 52                                              push   edx
  0044adde: 8b ce                                           mov    ecx,esi
  0044ade0: e8 bb 9a fd ff                                  call   0x4248a0
  0044ade5: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044ade8: 5f                                              pop    edi
  0044ade9: 8b c6                                           mov    eax,esi
  0044adeb: 5e                                              pop    esi
  0044adec: 5b                                              pop    ebx
  0044aded: 8b e5                                           mov    esp,ebp
  0044adef: 5d                                              pop    ebp
  0044adf0: c2 04 00                                        ret    0x4
  0044ae00: 55                                              push   ebp
  0044ae01: 8b ec                                           mov    ebp,esp
  0044ae03: 56                                              push   esi
  0044ae04: 57                                              push   edi
  0044ae05: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0044ae08: 8a 07                                           mov    al,BYTE PTR [edi]
  0044ae0a: 8b f1                                           mov    esi,ecx
  0044ae0c: 88 06                                           mov    BYTE PTR [esi],al
  0044ae0e: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0044ae11: 33 d2                                           xor    edx,edx
  0044ae13: 3b ca                                           cmp    ecx,edx
  0044ae15: 75 04                                           jne    0x44ae1b
  0044ae17: 33 c0                                           xor    eax,eax
  0044ae19: eb 08                                           jmp    0x44ae23
  0044ae1b: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0044ae1e: 2b c1                                           sub    eax,ecx
  0044ae20: c1 f8 04                                        sar    eax,0x4
  0044ae23: 3b c2                                           cmp    eax,edx
  0044ae25: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0044ae28: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0044ae2b: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0044ae2e: 74 36                                           je     0x44ae66
  0044ae30: c1 e0 04                                        shl    eax,0x4
  0044ae33: 53                                              push   ebx
  0044ae34: 8b d8                                           mov    ebx,eax
  0044ae36: 53                                              push   ebx
  0044ae37: e8 b4 71 ff ff                                  call   0x441ff0
  0044ae3c: 83 c4 04                                        add    esp,0x4
  0044ae3f: 03 d8                                           add    ebx,eax
  0044ae41: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0044ae44: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044ae47: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0044ae4a: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0044ae4d: 8b 7f 04                                        mov    edi,DWORD PTR [edi+0x4]
  0044ae50: 50                                              push   eax
  0044ae51: 51                                              push   ecx
  0044ae52: 57                                              push   edi
  0044ae53: 8b ce                                           mov    ecx,esi
  0044ae55: e8 a6 9a fd ff                                  call   0x424900
  0044ae5a: 5b                                              pop    ebx
  0044ae5b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044ae5e: 5f                                              pop    edi
  0044ae5f: 8b c6                                           mov    eax,esi
  0044ae61: 5e                                              pop    esi
  0044ae62: 5d                                              pop    ebp
  0044ae63: c2 04 00                                        ret    0x4
  0044ae66: 5f                                              pop    edi
  0044ae67: 8b c6                                           mov    eax,esi
  0044ae69: 5e                                              pop    esi
  0044ae6a: 5d                                              pop    ebp
  0044ae6b: c2 04 00                                        ret    0x4
  0044afc0: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044afc3: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  0044afc6: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  0044afc9: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  0044afcc: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044afcf: 3b c2                                           cmp    eax,edx
  0044afd1: 74 57                                           je     0x44b02a
  0044afd3: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044afd6: 74 4e                                           je     0x44b026
  0044afd8: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044afda: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044afdd: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0044afe0: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044afe3: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044afe6: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044afe8: 89 02                                           mov    DWORD PTR [edx],eax
  0044afea: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0044afed: 83 f8 01                                        cmp    eax,0x1
  0044aff0: 75 16                                           jne    0x44b008
  0044aff2: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044aff5: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0044aff8: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044affb: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044affe: 51                                              push   ecx
  0044afff: e8 5c 70 ff ff                                  call   0x442060
  0044b004: 83 c4 04                                        add    esp,0x4
  0044b007: c3                                              ret
  0044b008: 83 f8 02                                        cmp    eax,0x2
  0044b00b: 0f 85 8c 00 00 00                               jne    0x44b09d
  0044b011: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044b014: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044b016: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044b019: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044b01c: 51                                              push   ecx
  0044b01d: e8 3e 70 ff ff                                  call   0x442060
  0044b022: 83 c4 04                                        add    esp,0x4
  0044b025: c3                                              ret
  0044b026: 3b c2                                           cmp    eax,edx
  0044b028: 75 34                                           jne    0x44b05e
  0044b02a: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044b02d: 74 34                                           je     0x44b063
  0044b02f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044b032: 33 d2                                           xor    edx,edx
  0044b034: 89 10                                           mov    DWORD PTR [eax],edx
  0044b036: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044b039: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044b03c: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  0044b03f: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044b042: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044b045: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044b048: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  0044b04c: 75 4f                                           jne    0x44b09d
  0044b04e: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044b051: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044b054: 51                                              push   ecx
  0044b055: e8 06 70 ff ff                                  call   0x442060
  0044b05a: 83 c4 04                                        add    esp,0x4
  0044b05d: c3                                              ret
  0044b05e: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044b061: 75 2c                                           jne    0x44b08f
  0044b063: 3b c2                                           cmp    eax,edx
  0044b065: 74 28                                           je     0x44b08f
  0044b067: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044b069: 33 d2                                           xor    edx,edx
  0044b06b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0044b06e: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044b071: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044b073: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044b076: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  0044b079: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  0044b07d: 75 1e                                           jne    0x44b09d
  0044b07f: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044b082: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044b085: 51                                              push   ecx
  0044b086: e8 d5 6f ff ff                                  call   0x442060
  0044b08b: 83 c4 04                                        add    esp,0x4
  0044b08e: c3                                              ret
  0044b08f: 33 d2                                           xor    edx,edx
  0044b091: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  0044b094: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  0044b097: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  0044b09a: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044b09d: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044b0a0: 51                                              push   ecx
  0044b0a1: e8 ba 6f ff ff                                  call   0x442060
  0044b0a6: 83 c4 04                                        add    esp,0x4
  0044b0a9: c3                                              ret
  0044d570: 56                                              push   esi
  0044d571: 8b f1                                           mov    esi,ecx
  0044d573: 8d 46 08                                        lea    eax,[esi+0x8]
  0044d576: 50                                              push   eax
  0044d577: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0044d57d: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  0044d584: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044d58a: 33 c0                                           xor    eax,eax
  0044d58c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0044d58f: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0044d592: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0044d595: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  0044d598: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  0044d59b: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  0044d59e: c7 06 a4 ee 4d 00                               mov    DWORD PTR [esi],0x4deea4
  0044d5a4: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044d5a8: 8b c6                                           mov    eax,esi
  0044d5aa: 5e                                              pop    esi
  0044d5ab: c3                                              ret
  0044d5b0: 8b 51 40                                        mov    edx,DWORD PTR [ecx+0x40]
  0044d5b3: 85 d2                                           test   edx,edx
  0044d5b5: b8 01 00 00 00                                  mov    eax,0x1
  0044d5ba: 74 0a                                           je     0x44d5c6
  0044d5bc: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d5bf: 8b 12                                           mov    edx,DWORD PTR [edx]
  0044d5c1: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  0044d5c4: eb 03                                           jmp    0x44d5c9
  0044d5c6: 89 41 40                                        mov    DWORD PTR [ecx+0x40],eax
  0044d5c9: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d5cc: 85 d2                                           test   edx,edx
  0044d5ce: 75 14                                           jne    0x44d5e4
  0044d5d0: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0044d5d3: 85 c0                                           test   eax,eax
  0044d5d5: 74 04                                           je     0x44d5db
  0044d5d7: c6 41 34 07                                     mov    BYTE PTR [ecx+0x34],0x7
  0044d5db: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  0044d5e2: 33 c0                                           xor    eax,eax
  0044d5e4: c3                                              ret
  0044d5f0: 56                                              push   esi
  0044d5f1: 8b f1                                           mov    esi,ecx
  0044d5f3: 8d 46 08                                        lea    eax,[esi+0x8]
  0044d5f6: 50                                              push   eax
  0044d5f7: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0044d5fd: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  0044d604: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044d60a: 33 c0                                           xor    eax,eax
  0044d60c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0044d60f: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0044d612: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0044d615: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  0044d618: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  0044d61b: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  0044d61e: c7 06 c4 ee 4d 00                               mov    DWORD PTR [esi],0x4deec4
  0044d624: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044d628: 8b c6                                           mov    eax,esi
  0044d62a: 5e                                              pop    esi
  0044d62b: c3                                              ret
  0044d630: 8b 51 40                                        mov    edx,DWORD PTR [ecx+0x40]
  0044d633: 85 d2                                           test   edx,edx
  0044d635: b8 01 00 00 00                                  mov    eax,0x1
  0044d63a: 74 0a                                           je     0x44d646
  0044d63c: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d63f: 8b 12                                           mov    edx,DWORD PTR [edx]
  0044d641: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  0044d644: eb 03                                           jmp    0x44d649
  0044d646: 89 41 40                                        mov    DWORD PTR [ecx+0x40],eax
  0044d649: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d64c: 85 d2                                           test   edx,edx
  0044d64e: 75 14                                           jne    0x44d664
  0044d650: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0044d653: 85 c0                                           test   eax,eax
  0044d655: 74 04                                           je     0x44d65b
  0044d657: c6 41 34 07                                     mov    BYTE PTR [ecx+0x34],0x7
  0044d65b: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  0044d662: 33 c0                                           xor    eax,eax
  0044d664: c3                                              ret
  0044d7a0: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d7a3: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  0044d7a6: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  0044d7a9: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  0044d7ac: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d7af: 3b c2                                           cmp    eax,edx
  0044d7b1: 74 57                                           je     0x44d80a
  0044d7b3: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044d7b6: 74 4e                                           je     0x44d806
  0044d7b8: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044d7ba: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d7bd: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0044d7c0: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d7c3: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044d7c6: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044d7c8: 89 02                                           mov    DWORD PTR [edx],eax
  0044d7ca: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0044d7cd: 83 f8 01                                        cmp    eax,0x1
  0044d7d0: 75 16                                           jne    0x44d7e8
  0044d7d2: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d7d5: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0044d7d8: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d7db: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d7de: 51                                              push   ecx
  0044d7df: e8 7c 48 ff ff                                  call   0x442060
  0044d7e4: 83 c4 04                                        add    esp,0x4
  0044d7e7: c3                                              ret
  0044d7e8: 83 f8 02                                        cmp    eax,0x2
  0044d7eb: 0f 85 8c 00 00 00                               jne    0x44d87d
  0044d7f1: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d7f4: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044d7f6: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d7f9: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d7fc: 51                                              push   ecx
  0044d7fd: e8 5e 48 ff ff                                  call   0x442060
  0044d802: 83 c4 04                                        add    esp,0x4
  0044d805: c3                                              ret
  0044d806: 3b c2                                           cmp    eax,edx
  0044d808: 75 34                                           jne    0x44d83e
  0044d80a: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044d80d: 74 34                                           je     0x44d843
  0044d80f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d812: 33 d2                                           xor    edx,edx
  0044d814: 89 10                                           mov    DWORD PTR [eax],edx
  0044d816: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d819: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d81c: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  0044d81f: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d822: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d825: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d828: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  0044d82c: 75 4f                                           jne    0x44d87d
  0044d82e: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044d831: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d834: 51                                              push   ecx
  0044d835: e8 26 48 ff ff                                  call   0x442060
  0044d83a: 83 c4 04                                        add    esp,0x4
  0044d83d: c3                                              ret
  0044d83e: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044d841: 75 2c                                           jne    0x44d86f
  0044d843: 3b c2                                           cmp    eax,edx
  0044d845: 74 28                                           je     0x44d86f
  0044d847: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044d849: 33 d2                                           xor    edx,edx
  0044d84b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0044d84e: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d851: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044d853: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d856: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  0044d859: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  0044d85d: 75 1e                                           jne    0x44d87d
  0044d85f: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044d862: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d865: 51                                              push   ecx
  0044d866: e8 f5 47 ff ff                                  call   0x442060
  0044d86b: 83 c4 04                                        add    esp,0x4
  0044d86e: c3                                              ret
  0044d86f: 33 d2                                           xor    edx,edx
  0044d871: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  0044d874: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  0044d877: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  0044d87a: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044d87d: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d880: 51                                              push   ecx
  0044d881: e8 da 47 ff ff                                  call   0x442060
  0044d886: 83 c4 04                                        add    esp,0x4
  0044d889: c3                                              ret
  0044d890: 56                                              push   esi
  0044d891: 8b f1                                           mov    esi,ecx
  0044d893: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044d896: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  0044d899: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0044d89c: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  0044d89f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044d8a2: 3b c1                                           cmp    eax,ecx
  0044d8a4: 74 3d                                           je     0x44d8e3
  0044d8a6: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0044d8a9: 74 34                                           je     0x44d8df
  0044d8ab: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0044d8ad: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044d8b0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0044d8b3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044d8b6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044d8b9: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044d8bb: 89 11                                           mov    DWORD PTR [ecx],edx
  0044d8bd: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0044d8c0: 83 f8 01                                        cmp    eax,0x1
  0044d8c3: 75 0b                                           jne    0x44d8d0
  0044d8c5: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044d8c8: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044d8cb: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0044d8ce: eb 67                                           jmp    0x44d937
  0044d8d0: 83 f8 02                                        cmp    eax,0x2
  0044d8d3: 75 62                                           jne    0x44d937
  0044d8d5: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0044d8d8: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044d8da: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044d8dd: eb 58                                           jmp    0x44d937
  0044d8df: 3b c1                                           cmp    eax,ecx
  0044d8e1: 75 23                                           jne    0x44d906
  0044d8e3: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0044d8e6: 74 23                                           je     0x44d90b
  0044d8e8: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044d8eb: 33 c9                                           xor    ecx,ecx
  0044d8ed: 89 0a                                           mov    DWORD PTR [edx],ecx
  0044d8ef: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044d8f2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044d8f5: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  0044d8f8: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044d8fb: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0044d8ff: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0044d902: 75 33                                           jne    0x44d937
  0044d904: eb 2e                                           jmp    0x44d934
  0044d906: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0044d909: 75 1e                                           jne    0x44d929
  0044d90b: 3b c1                                           cmp    eax,ecx
  0044d90d: 74 1a                                           je     0x44d929
  0044d90f: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044d911: 33 c9                                           xor    ecx,ecx
  0044d913: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0044d916: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0044d919: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044d91b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044d91e: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0044d921: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  0044d925: 75 10                                           jne    0x44d937
  0044d927: eb 0b                                           jmp    0x44d934
  0044d929: 33 c9                                           xor    ecx,ecx
  0044d92b: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0044d92e: 89 4e 24                                        mov    DWORD PTR [esi+0x24],ecx
  0044d931: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  0044d934: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  0044d937: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  0044d93a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0044d93d: 51                                              push   ecx
  0044d93e: e8 1d 47 ff ff                                  call   0x442060
  0044d943: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0044d946: 52                                              push   edx
  0044d947: e8 14 47 ff ff                                  call   0x442060
  0044d94c: 83 c4 08                                        add    esp,0x8
  0044d94f: 5e                                              pop    esi
  0044d950: c3                                              ret
  0044d960: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d963: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  0044d966: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  0044d969: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  0044d96c: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d96f: 3b c2                                           cmp    eax,edx
  0044d971: 74 57                                           je     0x44d9ca
  0044d973: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044d976: 74 4e                                           je     0x44d9c6
  0044d978: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044d97a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d97d: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0044d980: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d983: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0044d986: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044d988: 89 02                                           mov    DWORD PTR [edx],eax
  0044d98a: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0044d98d: 83 f8 01                                        cmp    eax,0x1
  0044d990: 75 16                                           jne    0x44d9a8
  0044d992: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d995: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0044d998: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d99b: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d99e: 51                                              push   ecx
  0044d99f: e8 bc 46 ff ff                                  call   0x442060
  0044d9a4: 83 c4 04                                        add    esp,0x4
  0044d9a7: c3                                              ret
  0044d9a8: 83 f8 02                                        cmp    eax,0x2
  0044d9ab: 0f 85 8c 00 00 00                               jne    0x44da3d
  0044d9b1: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  0044d9b4: 8b 02                                           mov    eax,DWORD PTR [edx]
  0044d9b6: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d9b9: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d9bc: 51                                              push   ecx
  0044d9bd: e8 9e 46 ff ff                                  call   0x442060
  0044d9c2: 83 c4 04                                        add    esp,0x4
  0044d9c5: c3                                              ret
  0044d9c6: 3b c2                                           cmp    eax,edx
  0044d9c8: 75 34                                           jne    0x44d9fe
  0044d9ca: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044d9cd: 74 34                                           je     0x44da03
  0044d9cf: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d9d2: 33 d2                                           xor    edx,edx
  0044d9d4: 89 10                                           mov    DWORD PTR [eax],edx
  0044d9d6: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d9d9: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d9dc: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  0044d9df: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044d9e2: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044d9e5: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044d9e8: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  0044d9ec: 75 4f                                           jne    0x44da3d
  0044d9ee: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044d9f1: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044d9f4: 51                                              push   ecx
  0044d9f5: e8 66 46 ff ff                                  call   0x442060
  0044d9fa: 83 c4 04                                        add    esp,0x4
  0044d9fd: c3                                              ret
  0044d9fe: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  0044da01: 75 2c                                           jne    0x44da2f
  0044da03: 3b c2                                           cmp    eax,edx
  0044da05: 74 28                                           je     0x44da2f
  0044da07: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044da09: 33 d2                                           xor    edx,edx
  0044da0b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0044da0e: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0044da11: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044da13: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0044da16: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  0044da19: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  0044da1d: 75 1e                                           jne    0x44da3d
  0044da1f: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044da22: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044da25: 51                                              push   ecx
  0044da26: e8 35 46 ff ff                                  call   0x442060
  0044da2b: 83 c4 04                                        add    esp,0x4
  0044da2e: c3                                              ret
  0044da2f: 33 d2                                           xor    edx,edx
  0044da31: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  0044da34: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  0044da37: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  0044da3a: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0044da3d: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0044da40: 51                                              push   ecx
  0044da41: e8 1a 46 ff ff                                  call   0x442060
  0044da46: 83 c4 04                                        add    esp,0x4
  0044da49: c3                                              ret
  0044da50: 56                                              push   esi
  0044da51: 8b f1                                           mov    esi,ecx
  0044da53: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044da56: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  0044da59: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0044da5c: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  0044da5f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044da62: 33 d2                                           xor    edx,edx
  0044da64: 3b c1                                           cmp    eax,ecx
  0044da66: 57                                              push   edi
  0044da67: 74 3d                                           je     0x44daa6
  0044da69: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0044da6c: 74 34                                           je     0x44daa2
  0044da6e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0044da70: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0044da73: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0044da76: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044da79: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044da7c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044da7e: 89 01                                           mov    DWORD PTR [ecx],eax
  0044da80: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0044da83: 83 f8 01                                        cmp    eax,0x1
  0044da86: 75 0b                                           jne    0x44da93
  0044da88: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0044da8b: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0044da8e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044da91: eb 61                                           jmp    0x44daf4
  0044da93: 83 f8 02                                        cmp    eax,0x2
  0044da96: 75 5c                                           jne    0x44daf4
  0044da98: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0044da9b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0044da9d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044daa0: eb 52                                           jmp    0x44daf4
  0044daa2: 3b c1                                           cmp    eax,ecx
  0044daa4: 75 21                                           jne    0x44dac7
  0044daa6: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0044daa9: 74 21                                           je     0x44dacc
  0044daab: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044daae: 89 11                                           mov    DWORD PTR [ecx],edx
  0044dab0: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044dab3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044dab6: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  0044dab9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044dabc: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0044dac0: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  0044dac3: 75 2f                                           jne    0x44daf4
  0044dac5: eb 2a                                           jmp    0x44daf1
  0044dac7: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0044daca: 75 1c                                           jne    0x44dae8
  0044dacc: 3b c1                                           cmp    eax,ecx
  0044dace: 74 18                                           je     0x44dae8
  0044dad0: 8b 00                                           mov    eax,DWORD PTR [eax]
  0044dad2: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0044dad5: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0044dad8: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0044dada: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044dadd: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0044dae0: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  0044dae4: 75 0e                                           jne    0x44daf4
  0044dae6: eb 09                                           jmp    0x44daf1
  0044dae8: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0044daeb: 89 56 24                                        mov    DWORD PTR [esi+0x24],edx
  0044daee: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  0044daf1: 89 56 40                                        mov    DWORD PTR [esi+0x40],edx
  0044daf4: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  0044daf7: 8b 78 08                                        mov    edi,DWORD PTR [eax+0x8]
  0044dafa: 3b fa                                           cmp    edi,edx
  0044dafc: 74 10                                           je     0x44db0e
  0044dafe: 8b cf                                           mov    ecx,edi
  0044db00: e8 1b 00 00 00                                  call   0x44db20
  0044db05: 57                                              push   edi
  0044db06: e8 55 45 ff ff                                  call   0x442060
  0044db0b: 83 c4 04                                        add    esp,0x4
  0044db0e: 8b 4e 2c                                        mov    ecx,DWORD PTR [esi+0x2c]
  0044db11: 51                                              push   ecx
  0044db12: e8 49 45 ff ff                                  call   0x442060
  0044db17: 83 c4 04                                        add    esp,0x4
  0044db1a: 5f                                              pop    edi
  0044db1b: 5e                                              pop    esi
  0044db1c: c3                                              ret
  0044e980: 55                                              push   ebp
  0044e981: 8b ec                                           mov    ebp,esp
  0044e983: 83 ec 08                                        sub    esp,0x8
  0044e986: 50                                              push   eax
  0044e987: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  0044e98a: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0044e98d: 58                                              pop    eax
  0044e98e: e8 6d 58 fe ff                                  call   0x434200
  0044e993: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044e995: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0044e998: 51                                              push   ecx
  0044e999: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  0044e99c: 68 88 46 51 00                                  push   0x514688
  0044e9a1: 51                                              push   ecx
  0044e9a2: 8b c8                                           mov    ecx,eax
  0044e9a4: ff 12                                           call   DWORD PTR [edx]
  0044e9a6: 68 90 46 51 00                                  push   0x514690
  0044e9ab: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  0044e9b1: e8 4a 58 fe ff                                  call   0x434200
  0044e9b6: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044e9b8: 68 8c 46 51 00                                  push   0x51468c
  0044e9bd: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0044e9c0: 51                                              push   ecx
  0044e9c1: 8b c8                                           mov    ecx,eax
  0044e9c3: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0044e9c6: 8b e5                                           mov    esp,ebp
  0044e9c8: 5d                                              pop    ebp
  0044e9c9: c3                                              ret
  0044e9d0: e8 2b 58 fe ff                                  call   0x434200
  0044e9d5: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044e9d7: 68 8c 46 51 00                                  push   0x51468c
  0044e9dc: 8b c8                                           mov    ecx,eax
  0044e9de: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0044e9e1: 68 90 46 51 00                                  push   0x514690
  0044e9e6: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  0044e9ec: c3                                              ret
  0044ec70: 56                                              push   esi
  0044ec71: 8b f1                                           mov    esi,ecx
  0044ec73: e8 08 fd ff ff                                  call   0x44e980
  0044ec78: 8a 46 10                                        mov    al,BYTE PTR [esi+0x10]
  0044ec7b: 84 c0                                           test   al,al
  0044ec7d: 74 0b                                           je     0x44ec8a
  0044ec7f: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0044ec82: 6a 01                                           push   0x1
  0044ec84: 50                                              push   eax
  0044ec85: e8 dc f7 07 00                                  call   0x4ce466
  0044ec8a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0044ec8d: 51                                              push   ecx
  0044ec8e: c6 46 10 00                                     mov    BYTE PTR [esi+0x10],0x0
  0044ec92: e8 c9 f7 07 00                                  call   0x4ce460
  0044ec97: 8b ce                                           mov    ecx,esi
  0044ec99: e8 32 fd ff ff                                  call   0x44e9d0
  0044ec9e: 5e                                              pop    esi
  0044ec9f: c3                                              ret
  0044ed60: 8b 41 0c                                        mov    eax,DWORD PTR [ecx+0xc]
  0044ed63: 50                                              push   eax
  0044ed64: e8 03 f7 07 00                                  call   0x4ce46c
  0044ed69: 66 f7 d8                                        neg    ax
  0044ed6c: 1b c0                                           sbb    eax,eax
  0044ed6e: 40                                              inc    eax
  0044ed6f: c3                                              ret
  0044ed70: 8b 41 0c                                        mov    eax,DWORD PTR [ecx+0xc]
  0044ed73: 50                                              push   eax
  0044ed74: e8 05 f7 07 00                                  call   0x4ce47e
  0044ed79: 66 f7 d8                                        neg    ax
  0044ed7c: 1b c0                                           sbb    eax,eax
  0044ed7e: 40                                              inc    eax
  0044ed7f: c3                                              ret
  0044ef10: 55                                              push   ebp
  0044ef11: 8b ec                                           mov    ebp,esp
  0044ef13: 81 ec 90 01 00 00                               sub    esp,0x190
  0044ef19: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0044ef1c: 56                                              push   esi
  0044ef1d: 6a 00                                           push   0x0
  0044ef1f: 6a 00                                           push   0x0
  0044ef21: 50                                              push   eax
  0044ef22: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0044ef28: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044ef2b: 6a ee                                           push   0xffffffee
  0044ef2d: 8b f1                                           mov    esi,ecx
  0044ef2f: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0044ef32: 50                                              push   eax
  0044ef33: 51                                              push   ecx
  0044ef34: e8 4b f5 07 00                                  call   0x4ce484
  0044ef39: 66 85 c0                                        test   ax,ax
  0044ef3c: 66 89 06                                        mov    WORD PTR [esi],ax
  0044ef3f: 74 2c                                           je     0x44ef6d
  0044ef41: 8d 55 0e                                        lea    edx,[ebp+0xe]
  0044ef44: 52                                              push   edx
  0044ef45: 68 c8 00 00 00                                  push   0xc8
  0044ef4a: 8d 85 38 ff ff ff                               lea    eax,[ebp-0xc8]
  0044ef50: 50                                              push   eax
  0044ef51: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0044ef54: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0044ef57: 51                                              push   ecx
  0044ef58: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0044ef5b: 8d 95 70 fe ff ff                               lea    edx,[ebp-0x190]
  0044ef61: 52                                              push   edx
  0044ef62: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0044ef65: 50                                              push   eax
  0044ef66: 51                                              push   ecx
  0044ef67: 52                                              push   edx
  0044ef68: e8 c3 f4 07 00                                  call   0x4ce430
  0044ef6d: 66 8b 06                                        mov    ax,WORD PTR [esi]
  0044ef70: 5e                                              pop    esi
  0044ef71: 8b e5                                           mov    esp,ebp
  0044ef73: 5d                                              pop    ebp
  0044ef74: c2 08 00                                        ret    0x8
  0044ef80: 55                                              push   ebp
  0044ef81: 8b ec                                           mov    ebp,esp
  0044ef83: 81 ec 90 01 00 00                               sub    esp,0x190
  0044ef89: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0044ef8c: 56                                              push   esi
  0044ef8d: 6a 00                                           push   0x0
  0044ef8f: 6a 00                                           push   0x0
  0044ef91: 50                                              push   eax
  0044ef92: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  0044ef98: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044ef9b: 6a f0                                           push   0xfffffff0
  0044ef9d: 8b f1                                           mov    esi,ecx
  0044ef9f: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0044efa2: 50                                              push   eax
  0044efa3: 51                                              push   ecx
  0044efa4: e8 db f4 07 00                                  call   0x4ce484
  0044efa9: 66 85 c0                                        test   ax,ax
  0044efac: 66 89 06                                        mov    WORD PTR [esi],ax
  0044efaf: 74 2c                                           je     0x44efdd
  0044efb1: 8d 55 0e                                        lea    edx,[ebp+0xe]
  0044efb4: 52                                              push   edx
  0044efb5: 68 c8 00 00 00                                  push   0xc8
  0044efba: 8d 85 38 ff ff ff                               lea    eax,[ebp-0xc8]
  0044efc0: 50                                              push   eax
  0044efc1: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0044efc4: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0044efc7: 51                                              push   ecx
  0044efc8: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0044efcb: 8d 95 70 fe ff ff                               lea    edx,[ebp-0x190]
  0044efd1: 52                                              push   edx
  0044efd2: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0044efd5: 50                                              push   eax
  0044efd6: 51                                              push   ecx
  0044efd7: 52                                              push   edx
  0044efd8: e8 53 f4 07 00                                  call   0x4ce430
  0044efdd: 66 8b 06                                        mov    ax,WORD PTR [esi]
  0044efe0: 5e                                              pop    esi
  0044efe1: 8b e5                                           mov    esp,ebp
  0044efe3: 5d                                              pop    ebp
  0044efe4: c2 08 00                                        ret    0x8
  0044f050: 55                                              push   ebp
  0044f051: 8b ec                                           mov    ebp,esp
  0044f053: 51                                              push   ecx
  0044f054: 56                                              push   esi
  0044f055: 6a 00                                           push   0x0
  0044f057: 6a 00                                           push   0x0
  0044f059: 8d 45 fc                                        lea    eax,[ebp-0x4]
  0044f05c: 50                                              push   eax
  0044f05d: 8b f1                                           mov    esi,ecx
  0044f05f: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044f062: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0044f065: 6a ef                                           push   0xffffffef
  0044f067: 51                                              push   ecx
  0044f068: 52                                              push   edx
  0044f069: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044f070: e8 0f f4 07 00                                  call   0x4ce484
  0044f075: 8a 4d fc                                        mov    cl,BYTE PTR [ebp-0x4]
  0044f078: 66 89 06                                        mov    WORD PTR [esi],ax
  0044f07b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0044f07e: 88 08                                           mov    BYTE PTR [eax],cl
  0044f080: 66 8b 06                                        mov    ax,WORD PTR [esi]
  0044f083: 5e                                              pop    esi
  0044f084: 8b e5                                           mov    esp,ebp
  0044f086: 5d                                              pop    ebp
  0044f087: c2 08 00                                        ret    0x8
  0044f120: 55                                              push   ebp
  0044f121: 8b ec                                           mov    ebp,esp
  0044f123: 51                                              push   ecx
  0044f124: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0044f127: 56                                              push   esi
  0044f128: 8b f1                                           mov    esi,ecx
  0044f12a: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0044f12d: 8d 45 fc                                        lea    eax,[ebp-0x4]
  0044f130: 50                                              push   eax
  0044f131: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044f134: 51                                              push   ecx
  0044f135: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0044f138: 52                                              push   edx
  0044f139: 6a 01                                           push   0x1
  0044f13b: 50                                              push   eax
  0044f13c: 51                                              push   ecx
  0044f13d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044f144: e8 3b f3 07 00                                  call   0x4ce484
  0044f149: 66 89 06                                        mov    WORD PTR [esi],ax
  0044f14c: 5e                                              pop    esi
  0044f14d: 8b e5                                           mov    esp,ebp
  0044f14f: 5d                                              pop    ebp
  0044f150: c2 0c 00                                        ret    0xc
  0048fb80: 55                                              push   ebp
  0048fb81: 8b ec                                           mov    ebp,esp
  0048fb83: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048fb86: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0048fb89: 5d                                              pop    ebp
  0048fb8a: c2 04 00                                        ret    0x4
  0048fd20: 55                                              push   ebp
  0048fd21: 8b ec                                           mov    ebp,esp
  0048fd23: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0048fd26: 85 c0                                           test   eax,eax
  0048fd28: 75 0b                                           jne    0x48fd35
  0048fd2a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048fd2d: 33 c9                                           xor    ecx,ecx
  0048fd2f: 89 08                                           mov    DWORD PTR [eax],ecx
  0048fd31: 5d                                              pop    ebp
  0048fd32: c2 04 00                                        ret    0x4
  0048fd35: 8b 00                                           mov    eax,DWORD PTR [eax]
  0048fd37: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0048fd3a: 89 01                                           mov    DWORD PTR [ecx],eax
  0048fd3c: 8b c1                                           mov    eax,ecx
  0048fd3e: 5d                                              pop    ebp
  0048fd3f: c2 04 00                                        ret    0x4
  0048ff20: 55                                              push   ebp
  0048ff21: 8b ec                                           mov    ebp,esp
  0048ff23: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0048ff26: 53                                              push   ebx
  0048ff27: 57                                              push   edi
  0048ff28: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0048ff2b: 3b f8                                           cmp    edi,eax
  0048ff2d: 8b d9                                           mov    ebx,ecx
  0048ff2f: 74 3f                                           je     0x48ff70
  0048ff31: 56                                              push   esi
  0048ff32: 8b f7                                           mov    esi,edi
  0048ff34: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048ff37: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  0048ff39: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0048ff3b: 89 08                                           mov    DWORD PTR [eax],ecx
  0048ff3d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048ff3f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048ff42: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0048ff45: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0048ff48: e8 93 ea ff ff                                  call   0x48e9e0
  0048ff4d: 56                                              push   esi
  0048ff4e: e8 0d 21 fb ff                                  call   0x442060
  0048ff53: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0048ff56: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0048ff59: 83 c4 04                                        add    esp,0x4
  0048ff5c: 49                                              dec    ecx
  0048ff5d: 3b f8                                           cmp    edi,eax
  0048ff5f: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0048ff62: 75 ce                                           jne    0x48ff32
  0048ff64: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048ff67: 5e                                              pop    esi
  0048ff68: 89 38                                           mov    DWORD PTR [eax],edi
  0048ff6a: 5f                                              pop    edi
  0048ff6b: 5b                                              pop    ebx
  0048ff6c: 5d                                              pop    ebp
  0048ff6d: c2 0c 00                                        ret    0xc
  0048ff70: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048ff73: 89 38                                           mov    DWORD PTR [eax],edi
  0048ff75: 5f                                              pop    edi
  0048ff76: 5b                                              pop    ebx
  0048ff77: 5d                                              pop    ebp
  0048ff78: c2 0c 00                                        ret    0xc
  004900b0: 55                                              push   ebp
  004900b1: 8b ec                                           mov    ebp,esp
  004900b3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004900b6: 53                                              push   ebx
  004900b7: 57                                              push   edi
  004900b8: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004900bb: 3b f8                                           cmp    edi,eax
  004900bd: 8b d9                                           mov    ebx,ecx
  004900bf: 74 3f                                           je     0x490100
  004900c1: 56                                              push   esi
  004900c2: 8b f7                                           mov    esi,edi
  004900c4: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004900c7: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004900c9: 8b 3f                                           mov    edi,DWORD PTR [edi]
  004900cb: 89 08                                           mov    DWORD PTR [eax],ecx
  004900cd: 8b 16                                           mov    edx,DWORD PTR [esi]
  004900cf: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004900d2: 8d 4e 08                                        lea    ecx,[esi+0x8]
  004900d5: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004900d8: e8 f3 f0 ff ff                                  call   0x48f1d0
  004900dd: 56                                              push   esi
  004900de: e8 7d 1f fb ff                                  call   0x442060
  004900e3: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004900e6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004900e9: 83 c4 04                                        add    esp,0x4
  004900ec: 49                                              dec    ecx
  004900ed: 3b f8                                           cmp    edi,eax
  004900ef: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004900f2: 75 ce                                           jne    0x4900c2
  004900f4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004900f7: 5e                                              pop    esi
  004900f8: 89 38                                           mov    DWORD PTR [eax],edi
  004900fa: 5f                                              pop    edi
  004900fb: 5b                                              pop    ebx
  004900fc: 5d                                              pop    ebp
  004900fd: c2 0c 00                                        ret    0xc
  00490100: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00490103: 89 38                                           mov    DWORD PTR [eax],edi
  00490105: 5f                                              pop    edi
  00490106: 5b                                              pop    ebx
  00490107: 5d                                              pop    ebp
  00490108: c2 0c 00                                        ret    0xc
  00490110: 55                                              push   ebp
  00490111: 8b ec                                           mov    ebp,esp
  00490113: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00490116: 56                                              push   esi
  00490117: 8b f1                                           mov    esi,ecx
  00490119: 33 c9                                           xor    ecx,ecx
  0049011b: 3b c1                                           cmp    eax,ecx
  0049011d: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00490120: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00490123: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  00490126: 75 07                                           jne    0x49012f
  00490128: 32 c0                                           xor    al,al
  0049012a: 5e                                              pop    esi
  0049012b: 5d                                              pop    ebp
  0049012c: c2 04 00                                        ret    0x4
  0049012f: 57                                              push   edi
  00490130: 8d 3c c5 00 00 00 00                            lea    edi,[eax*8+0x0]
  00490137: 57                                              push   edi
  00490138: e8 b3 1e fb ff                                  call   0x441ff0
  0049013d: 83 c4 04                                        add    esp,0x4
  00490140: 03 f8                                           add    edi,eax
  00490142: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00490145: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00490148: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049014b: 5f                                              pop    edi
  0049014c: b0 01                                           mov    al,0x1
  0049014e: 5e                                              pop    esi
  0049014f: 5d                                              pop    ebp
  00490150: c2 04 00                                        ret    0x4
  004902f0: 56                                              push   esi
  004902f1: 8b f1                                           mov    esi,ecx
  004902f3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004902f6: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  004902f9: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004902fc: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  004902ff: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00490302: 33 d2                                           xor    edx,edx
  00490304: 3b c1                                           cmp    eax,ecx
  00490306: 57                                              push   edi
  00490307: 74 3d                                           je     0x490346
  00490309: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0049030c: 74 34                                           je     0x490342
  0049030e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00490310: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00490313: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  00490316: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00490319: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0049031c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0049031e: 89 01                                           mov    DWORD PTR [ecx],eax
  00490320: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00490323: 83 f8 01                                        cmp    eax,0x1
  00490326: 75 0b                                           jne    0x490333
  00490328: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0049032b: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0049032e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00490331: eb 61                                           jmp    0x490394
  00490333: 83 f8 02                                        cmp    eax,0x2
  00490336: 75 5c                                           jne    0x490394
  00490338: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0049033b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0049033d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00490340: eb 52                                           jmp    0x490394
  00490342: 3b c1                                           cmp    eax,ecx
  00490344: 75 21                                           jne    0x490367
  00490346: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00490349: 74 21                                           je     0x49036c
  0049034b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0049034e: 89 11                                           mov    DWORD PTR [ecx],edx
  00490350: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00490353: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00490356: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  00490359: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0049035c: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  00490360: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00490363: 75 2f                                           jne    0x490394
  00490365: eb 2a                                           jmp    0x490391
  00490367: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0049036a: 75 1c                                           jne    0x490388
  0049036c: 3b c1                                           cmp    eax,ecx
  0049036e: 74 18                                           je     0x490388
  00490370: 8b 00                                           mov    eax,DWORD PTR [eax]
  00490372: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00490375: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00490378: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0049037a: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0049037d: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00490380: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  00490384: 75 0e                                           jne    0x490394
  00490386: eb 09                                           jmp    0x490391
  00490388: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0049038b: 89 56 24                                        mov    DWORD PTR [esi+0x24],edx
  0049038e: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  00490391: 89 56 40                                        mov    DWORD PTR [esi+0x40],edx
  00490394: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  00490397: 8b 78 08                                        mov    edi,DWORD PTR [eax+0x8]
  0049039a: 3b fa                                           cmp    edi,edx
  0049039c: 74 10                                           je     0x4903ae
  0049039e: 8b cf                                           mov    ecx,edi
  004903a0: e8 ab d8 ff ff                                  call   0x48dc50
  004903a5: 57                                              push   edi
  004903a6: e8 b5 1c fb ff                                  call   0x442060
  004903ab: 83 c4 04                                        add    esp,0x4
  004903ae: 8b 4e 2c                                        mov    ecx,DWORD PTR [esi+0x2c]
  004903b1: 51                                              push   ecx
  004903b2: e8 a9 1c fb ff                                  call   0x442060
  004903b7: 83 c4 04                                        add    esp,0x4
  004903ba: 5f                                              pop    edi
  004903bb: 5e                                              pop    esi
  004903bc: c3                                              ret
  00490970: e9 cb 10 04 00                                  jmp    0x4d1a40
  004b2a40: 55                                              push   ebp
  004b2a41: 8b ec                                           mov    ebp,esp
  004b2a43: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b2a46: 56                                              push   esi
  004b2a47: 8b f1                                           mov    esi,ecx
  004b2a49: 33 c9                                           xor    ecx,ecx
  004b2a4b: 3b c1                                           cmp    eax,ecx
  004b2a4d: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004b2a50: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004b2a53: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  004b2a56: 75 07                                           jne    0x4b2a5f
  004b2a58: 32 c0                                           xor    al,al
  004b2a5a: 5e                                              pop    esi
  004b2a5b: 5d                                              pop    ebp
  004b2a5c: c2 04 00                                        ret    0x4
  004b2a5f: 57                                              push   edi
  004b2a60: 8d 3c 85 00 00 00 00                            lea    edi,[eax*4+0x0]
  004b2a67: 57                                              push   edi
  004b2a68: e8 83 f5 f8 ff                                  call   0x441ff0
  004b2a6d: 83 c4 04                                        add    esp,0x4
  004b2a70: 03 f8                                           add    edi,eax
  004b2a72: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004b2a75: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004b2a78: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004b2a7b: 5f                                              pop    edi
  004b2a7c: b0 01                                           mov    al,0x1
  004b2a7e: 5e                                              pop    esi
  004b2a7f: 5d                                              pop    ebp
  004b2a80: c2 04 00                                        ret    0x4
  004ce490: 55                                              push   ebp
  004ce491: 8b ec                                           mov    ebp,esp
  004ce493: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ce496: 50                                              push   eax
  004ce497: e8 c4 3b f7 ff                                  call   0x442060
  004ce49c: 83 c4 04                                        add    esp,0x4
  004ce49f: 5d                                              pop    ebp
  004ce4a0: c3                                              ret
  004ce500: 55                                              push   ebp
  004ce501: 8b ec                                           mov    ebp,esp
  004ce503: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ce506: 50                                              push   eax
  004ce507: e8 e4 3a f7 ff                                  call   0x441ff0
  004ce50c: 83 c4 04                                        add    esp,0x4
  004ce50f: 5d                                              pop    ebp
  004ce510: c3                                              ret
  004d1a7c: ff 25 60 e2 4d 00                               jmp    DWORD PTR ds:0x4de260
  004d1a82: ff 25 5c e2 4d 00                               jmp    DWORD PTR ds:0x4de25c
  004d1a94: ff 25 50 e2 4d 00                               jmp    DWORD PTR ds:0x4de250
  004d1a9a: ff 25 4c e2 4d 00                               jmp    DWORD PTR ds:0x4de24c
  004d1aa0: ff 25 48 e2 4d 00                               jmp    DWORD PTR ds:0x4de248
  004d1aa6: ff 25 44 e2 4d 00                               jmp    DWORD PTR ds:0x4de244
  004d1aac: ff 25 40 e2 4d 00                               jmp    DWORD PTR ds:0x4de240
  004d1ab8: ff 25 38 e2 4d 00                               jmp    DWORD PTR ds:0x4de238
  004d1b24: ff 25 f0 e1 4d 00                               jmp    DWORD PTR ds:0x4de1f0
  004d1cb0: 51                                              push   ecx
  004d1cb1: 3d 00 10 00 00                                  cmp    eax,0x1000
  004d1cb6: 8d 4c 24 08                                     lea    ecx,[esp+0x8]
  004d1cba: 72 14                                           jb     0x4d1cd0
  004d1cbc: 81 e9 00 10 00 00                               sub    ecx,0x1000
  004d1cc2: 2d 00 10 00 00                                  sub    eax,0x1000
  004d1cc7: 85 01                                           test   DWORD PTR [ecx],eax
  004d1cc9: 3d 00 10 00 00                                  cmp    eax,0x1000
  004d1cce: 73 ec                                           jae    0x4d1cbc
  004d1cd0: 2b c8                                           sub    ecx,eax
  004d1cd2: 8b c4                                           mov    eax,esp
  004d1cd4: 85 01                                           test   DWORD PTR [ecx],eax
  004d1cd6: 8b e1                                           mov    esp,ecx
  004d1cd8: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d1cda: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004d1cdd: 50                                              push   eax
  004d1cde: c3                                              ret
  004d1d7a: ff 25 50 e3 4d 00                               jmp    DWORD PTR ds:0x4de350
  004d1d80: ff 25 4c e3 4d 00                               jmp    DWORD PTR ds:0x4de34c
  004d1e20: 80 f9 40                                        cmp    cl,0x40
  004d1e23: 73 16                                           jae    0x4d1e3b
  004d1e25: 80 f9 20                                        cmp    cl,0x20
  004d1e28: 73 06                                           jae    0x4d1e30
  004d1e2a: 0f ad d0                                        shrd   eax,edx,cl
  004d1e2d: d3 fa                                           sar    edx,cl
  004d1e2f: c3                                              ret
  004d1e30: 8b c2                                           mov    eax,edx
  004d1e32: c1 fa 1f                                        sar    edx,0x1f
  004d1e35: 80 e1 1f                                        and    cl,0x1f
  004d1e38: d3 f8                                           sar    eax,cl
  004d1e3a: c3                                              ret
  004d1e3b: c1 fa 1f                                        sar    edx,0x1f
  004d1e3e: 8b c2                                           mov    eax,edx
  004d1e40: c3                                              ret
  004d1e60: 57                                              push   edi
  004d1e61: 56                                              push   esi
  004d1e62: 53                                              push   ebx
  004d1e63: 33 ff                                           xor    edi,edi
  004d1e65: 8b 44 24 14                                     mov    eax,DWORD PTR [esp+0x14]
  004d1e69: 0b c0                                           or     eax,eax
  004d1e6b: 7d 14                                           jge    0x4d1e81
  004d1e6d: 47                                              inc    edi
  004d1e6e: 8b 54 24 10                                     mov    edx,DWORD PTR [esp+0x10]
  004d1e72: f7 d8                                           neg    eax
  004d1e74: f7 da                                           neg    edx
  004d1e76: 83 d8 00                                        sbb    eax,0x0
  004d1e79: 89 44 24 14                                     mov    DWORD PTR [esp+0x14],eax
  004d1e7d: 89 54 24 10                                     mov    DWORD PTR [esp+0x10],edx
  004d1e81: 8b 44 24 1c                                     mov    eax,DWORD PTR [esp+0x1c]
  004d1e85: 0b c0                                           or     eax,eax
  004d1e87: 7d 14                                           jge    0x4d1e9d
  004d1e89: 47                                              inc    edi
  004d1e8a: 8b 54 24 18                                     mov    edx,DWORD PTR [esp+0x18]
  004d1e8e: f7 d8                                           neg    eax
  004d1e90: f7 da                                           neg    edx
  004d1e92: 83 d8 00                                        sbb    eax,0x0
  004d1e95: 89 44 24 1c                                     mov    DWORD PTR [esp+0x1c],eax
  004d1e99: 89 54 24 18                                     mov    DWORD PTR [esp+0x18],edx
  004d1e9d: 0b c0                                           or     eax,eax
  004d1e9f: 75 18                                           jne    0x4d1eb9
  004d1ea1: 8b 4c 24 18                                     mov    ecx,DWORD PTR [esp+0x18]
  004d1ea5: 8b 44 24 14                                     mov    eax,DWORD PTR [esp+0x14]
  004d1ea9: 33 d2                                           xor    edx,edx
  004d1eab: f7 f1                                           div    ecx
  004d1ead: 8b d8                                           mov    ebx,eax
  004d1eaf: 8b 44 24 10                                     mov    eax,DWORD PTR [esp+0x10]
  004d1eb3: f7 f1                                           div    ecx
  004d1eb5: 8b d3                                           mov    edx,ebx
  004d1eb7: eb 41                                           jmp    0x4d1efa
  004d1eb9: 8b d8                                           mov    ebx,eax
  004d1ebb: 8b 4c 24 18                                     mov    ecx,DWORD PTR [esp+0x18]
  004d1ebf: 8b 54 24 14                                     mov    edx,DWORD PTR [esp+0x14]
  004d1ec3: 8b 44 24 10                                     mov    eax,DWORD PTR [esp+0x10]
  004d1ec7: d1 eb                                           shr    ebx,1
  004d1ec9: d1 d9                                           rcr    ecx,1
  004d1ecb: d1 ea                                           shr    edx,1
  004d1ecd: d1 d8                                           rcr    eax,1
  004d1ecf: 0b db                                           or     ebx,ebx
  004d1ed1: 75 f4                                           jne    0x4d1ec7
  004d1ed3: f7 f1                                           div    ecx
  004d1ed5: 8b f0                                           mov    esi,eax
  004d1ed7: f7 64 24 1c                                     mul    DWORD PTR [esp+0x1c]
  004d1edb: 8b c8                                           mov    ecx,eax
  004d1edd: 8b 44 24 18                                     mov    eax,DWORD PTR [esp+0x18]
  004d1ee1: f7 e6                                           mul    esi
  004d1ee3: 03 d1                                           add    edx,ecx
  004d1ee5: 72 0e                                           jb     0x4d1ef5
  004d1ee7: 3b 54 24 14                                     cmp    edx,DWORD PTR [esp+0x14]
  004d1eeb: 77 08                                           ja     0x4d1ef5
  004d1eed: 72 07                                           jb     0x4d1ef6
  004d1eef: 3b 44 24 10                                     cmp    eax,DWORD PTR [esp+0x10]
  004d1ef3: 76 01                                           jbe    0x4d1ef6
  004d1ef5: 4e                                              dec    esi
  004d1ef6: 33 d2                                           xor    edx,edx
  004d1ef8: 8b c6                                           mov    eax,esi
  004d1efa: 4f                                              dec    edi
  004d1efb: 75 07                                           jne    0x4d1f04
  004d1efd: f7 da                                           neg    edx
  004d1eff: f7 d8                                           neg    eax
  004d1f01: 83 da 00                                        sbb    edx,0x0
  004d1f04: 5b                                              pop    ebx
  004d1f05: 5e                                              pop    esi
  004d1f06: 5f                                              pop    edi
  004d1f07: c2 10 00                                        ret    0x10
