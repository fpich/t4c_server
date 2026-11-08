; PASSE 107, Cibles de JMP/Jcc directs signalées hors fenêtre par les passes précédentes
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 3787 distinct instructions; 73 graph entry points

  004013f0: 55                                              push   ebp
  004013f1: 8b ec                                           mov    ebp,esp
  004013f3: 83 ec 08                                        sub    esp,0x8
  004013f6: 53                                              push   ebx
  004013f7: 56                                              push   esi
  004013f8: 8b f1                                           mov    esi,ecx
  004013fa: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004013fd: 85 c9                                           test   ecx,ecx
  004013ff: 57                                              push   edi
  00401400: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00401403: 8b 07                                           mov    eax,DWORD PTR [edi]
  00401405: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00401408: 74 4b                                           je     0x401455
  0040140a: 8b c8                                           mov    ecx,eax
  0040140c: 3b c1                                           cmp    eax,ecx
  0040140e: 75 45                                           jne    0x401455
  00401410: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00401413: 8a 43 11                                        mov    al,BYTE PTR [ebx+0x11]
  00401416: 84 c0                                           test   al,al
  00401418: 8b fb                                           mov    edi,ebx
  0040141a: 75 1f                                           jne    0x40143b
  0040141c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0040141f: 50                                              push   eax
  00401420: 8b ce                                           mov    ecx,esi
  00401422: e8 79 2d 00 00                                  call   0x4041a0
  00401427: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00401429: 53                                              push   ebx
  0040142a: e8 31 0c 04 00                                  call   0x442060
  0040142f: 8a 47 11                                        mov    al,BYTE PTR [edi+0x11]
  00401432: 83 c4 04                                        add    esp,0x4
  00401435: 84 c0                                           test   al,al
  00401437: 8b df                                           mov    ebx,edi
  00401439: 74 e1                                           je     0x40141c
  0040143b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040143e: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00401441: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00401444: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0040144b: 89 00                                           mov    DWORD PTR [eax],eax
  0040144d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00401450: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00401453: eb 21                                           jmp    0x401476
  00401455: 3b c7                                           cmp    eax,edi
  00401457: 74 1d                                           je     0x401476
  00401459: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0040145c: 8b d8                                           mov    ebx,eax
  0040145e: e8 bd 33 00 00                                  call   0x404820
  00401463: 53                                              push   ebx
  00401464: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00401467: 51                                              push   ecx
  00401468: 8b ce                                           mov    ecx,esi
  0040146a: e8 f1 27 00 00                                  call   0x403c60
  0040146f: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00401472: 3b c7                                           cmp    eax,edi
  00401474: 75 e3                                           jne    0x401459
  00401476: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00401479: 52                                              push   edx
  0040147a: e8 e1 0b 04 00                                  call   0x442060
  0040147f: 83 c4 04                                        add    esp,0x4
  00401482: 33 c0                                           xor    eax,eax
  00401484: 5f                                              pop    edi
  00401485: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00401488: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0040148b: 5e                                              pop    esi
  0040148c: 5b                                              pop    ebx
  0040148d: 8b e5                                           mov    esp,ebp
  0040148f: 5d                                              pop    ebp
  00401490: c3                                              ret
  00403210: 56                                              push   esi
  00403211: 57                                              push   edi
  00403212: 8b f9                                           mov    edi,ecx
  00403214: 8b 37                                           mov    esi,DWORD PTR [edi]
  00403216: 85 f6                                           test   esi,esi
  00403218: 74 3e                                           je     0x403258
  0040321a: 8d 46 08                                        lea    eax,[esi+0x8]
  0040321d: 50                                              push   eax
  0040321e: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  00403224: 85 c0                                           test   eax,eax
  00403226: 75 2a                                           jne    0x403252
  00403228: 85 f6                                           test   esi,esi
  0040322a: 74 26                                           je     0x403252
  0040322c: 8b 06                                           mov    eax,DWORD PTR [esi]
  0040322e: 85 c0                                           test   eax,eax
  00403230: 74 07                                           je     0x403239
  00403232: 50                                              push   eax
  00403233: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  00403239: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040323c: 85 c0                                           test   eax,eax
  0040323e: 74 09                                           je     0x403249
  00403240: 50                                              push   eax
  00403241: e8 4a b2 0c 00                                  call   0x4ce490
  00403246: 83 c4 04                                        add    esp,0x4
  00403249: 56                                              push   esi
  0040324a: e8 11 ee 03 00                                  call   0x442060
  0040324f: 83 c4 04                                        add    esp,0x4
  00403252: c7 07 00 00 00 00                               mov    DWORD PTR [edi],0x0
  00403258: 5f                                              pop    edi
  00403259: 5e                                              pop    esi
  0040325a: c3                                              ret
  004038e0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004038e2: 85 c0                                           test   eax,eax
  004038e4: 74 06                                           je     0x4038ec
  004038e6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004038e8: 50                                              push   eax
  004038e9: ff 51 08                                        call   DWORD PTR [ecx+0x8]
  004038ec: c3                                              ret
  00405a20: c7 01 8c e5 4d 00                               mov    DWORD PTR [ecx],0x4de58c
  00405a26: 83 c1 08                                        add    ecx,0x8
  00405a29: 51                                              push   ecx
  00405a2a: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00405a30: c3                                              ret
  00405b30: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00405b32: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00405b34: ff 60 08                                        jmp    DWORD PTR [eax+0x8]
  0040f1f0: 56                                              push   esi
  0040f1f1: 8b f1                                           mov    esi,ecx
  0040f1f3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040f1f6: 85 c0                                           test   eax,eax
  0040f1f8: 74 1c                                           je     0x40f216
  0040f1fa: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0040f1fd: 8a 01                                           mov    al,BYTE PTR [ecx]
  0040f1ff: 84 c0                                           test   al,al
  0040f201: 74 0a                                           je     0x40f20d
  0040f203: 3c ff                                           cmp    al,0xff
  0040f205: 74 06                                           je     0x40f20d
  0040f207: fe c8                                           dec    al
  0040f209: 88 01                                           mov    BYTE PTR [ecx],al
  0040f20b: eb 09                                           jmp    0x40f216
  0040f20d: 51                                              push   ecx
  0040f20e: e8 4d 2e 03 00                                  call   0x442060
  0040f213: 83 c4 04                                        add    esp,0x4
  0040f216: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  0040f21d: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0040f224: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  0040f22b: 5e                                              pop    esi
  0040f22c: c3                                              ret
  00412ae0: 55                                              push   ebp
  00412ae1: 8b ec                                           mov    ebp,esp
  00412ae3: 83 ec 08                                        sub    esp,0x8
  00412ae6: 53                                              push   ebx
  00412ae7: 56                                              push   esi
  00412ae8: 8b f1                                           mov    esi,ecx
  00412aea: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00412aed: 85 c9                                           test   ecx,ecx
  00412aef: 57                                              push   edi
  00412af0: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00412af3: 8b 07                                           mov    eax,DWORD PTR [edi]
  00412af5: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00412af8: 74 4b                                           je     0x412b45
  00412afa: 8b c8                                           mov    ecx,eax
  00412afc: 3b c1                                           cmp    eax,ecx
  00412afe: 75 45                                           jne    0x412b45
  00412b00: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00412b03: 8a 43 15                                        mov    al,BYTE PTR [ebx+0x15]
  00412b06: 84 c0                                           test   al,al
  00412b08: 8b fb                                           mov    edi,ebx
  00412b0a: 75 1f                                           jne    0x412b2b
  00412b0c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00412b0f: 50                                              push   eax
  00412b10: 8b ce                                           mov    ecx,esi
  00412b12: e8 a9 08 01 00                                  call   0x4233c0
  00412b17: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00412b19: 53                                              push   ebx
  00412b1a: e8 41 f5 02 00                                  call   0x442060
  00412b1f: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  00412b22: 83 c4 04                                        add    esp,0x4
  00412b25: 84 c0                                           test   al,al
  00412b27: 8b df                                           mov    ebx,edi
  00412b29: 74 e1                                           je     0x412b0c
  00412b2b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00412b2e: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00412b31: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00412b34: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00412b3b: 89 00                                           mov    DWORD PTR [eax],eax
  00412b3d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00412b40: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00412b43: eb 21                                           jmp    0x412b66
  00412b45: 3b c7                                           cmp    eax,edi
  00412b47: 74 1d                                           je     0x412b66
  00412b49: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00412b4c: 8b d8                                           mov    ebx,eax
  00412b4e: e8 7d 15 01 00                                  call   0x4240d0
  00412b53: 53                                              push   ebx
  00412b54: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00412b57: 51                                              push   ecx
  00412b58: 8b ce                                           mov    ecx,esi
  00412b5a: e8 11 04 01 00                                  call   0x422f70
  00412b5f: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00412b62: 3b c7                                           cmp    eax,edi
  00412b64: 75 e3                                           jne    0x412b49
  00412b66: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00412b69: 52                                              push   edx
  00412b6a: e8 f1 f4 02 00                                  call   0x442060
  00412b6f: 83 c4 04                                        add    esp,0x4
  00412b72: 33 c0                                           xor    eax,eax
  00412b74: 5f                                              pop    edi
  00412b75: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00412b78: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00412b7b: 5e                                              pop    esi
  00412b7c: 5b                                              pop    ebx
  00412b7d: 8b e5                                           mov    esp,ebp
  00412b7f: 5d                                              pop    ebp
  00412b80: c3                                              ret
  00413300: 55                                              push   ebp
  00413301: 8b ec                                           mov    ebp,esp
  00413303: 83 ec 08                                        sub    esp,0x8
  00413306: 53                                              push   ebx
  00413307: 56                                              push   esi
  00413308: 8b f1                                           mov    esi,ecx
  0041330a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0041330d: 85 c9                                           test   ecx,ecx
  0041330f: 57                                              push   edi
  00413310: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00413313: 8b 07                                           mov    eax,DWORD PTR [edi]
  00413315: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00413318: 74 55                                           je     0x41336f
  0041331a: 8b c8                                           mov    ecx,eax
  0041331c: 3b c1                                           cmp    eax,ecx
  0041331e: 75 4f                                           jne    0x41336f
  00413320: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00413323: 8a 43 21                                        mov    al,BYTE PTR [ebx+0x21]
  00413326: 84 c0                                           test   al,al
  00413328: 8b fb                                           mov    edi,ebx
  0041332a: 75 29                                           jne    0x413355
  0041332c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0041332f: 50                                              push   eax
  00413330: 8b ce                                           mov    ecx,esi
  00413332: e8 a9 05 01 00                                  call   0x4238e0
  00413337: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00413339: 6a 00                                           push   0x0
  0041333b: 8d 4b 0c                                        lea    ecx,[ebx+0xc]
  0041333e: e8 8d 1e 01 00                                  call   0x4251d0
  00413343: 53                                              push   ebx
  00413344: e8 17 ed 02 00                                  call   0x442060
  00413349: 8a 47 21                                        mov    al,BYTE PTR [edi+0x21]
  0041334c: 83 c4 04                                        add    esp,0x4
  0041334f: 84 c0                                           test   al,al
  00413351: 8b df                                           mov    ebx,edi
  00413353: 74 d7                                           je     0x41332c
  00413355: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00413358: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0041335b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0041335e: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00413365: 89 00                                           mov    DWORD PTR [eax],eax
  00413367: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0041336a: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0041336d: eb 21                                           jmp    0x413390
  0041336f: 3b c7                                           cmp    eax,edi
  00413371: 74 1d                                           je     0x413390
  00413373: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00413376: 8b d8                                           mov    ebx,eax
  00413378: e8 a3 0e 01 00                                  call   0x424220
  0041337d: 53                                              push   ebx
  0041337e: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00413381: 51                                              push   ecx
  00413382: 8b ce                                           mov    ecx,esi
  00413384: e8 d7 00 01 00                                  call   0x423460
  00413389: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0041338c: 3b c7                                           cmp    eax,edi
  0041338e: 75 e3                                           jne    0x413373
  00413390: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00413393: 52                                              push   edx
  00413394: e8 c7 ec 02 00                                  call   0x442060
  00413399: 83 c4 04                                        add    esp,0x4
  0041339c: 33 c0                                           xor    eax,eax
  0041339e: 5f                                              pop    edi
  0041339f: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004133a2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004133a5: 5e                                              pop    esi
  004133a6: 5b                                              pop    ebx
  004133a7: 8b e5                                           mov    esp,ebp
  004133a9: 5d                                              pop    ebp
  004133aa: c3                                              ret
  00422920: 55                                              push   ebp
  00422921: 8b ec                                           mov    ebp,esp
  00422923: 51                                              push   ecx
  00422924: 56                                              push   esi
  00422925: 8b f1                                           mov    esi,ecx
  00422927: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042292a: 85 c0                                           test   eax,eax
  0042292c: 74 0c                                           je     0x42293a
  0042292e: 50                                              push   eax
  0042292f: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00422932: e8 29 f7 01 00                                  call   0x442060
  00422937: 83 c4 04                                        add    esp,0x4
  0042293a: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  00422941: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00422948: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  0042294f: 5e                                              pop    esi
  00422950: 8b e5                                           mov    esp,ebp
  00422952: 5d                                              pop    ebp
  00422953: c3                                              ret
  00422be0: 55                                              push   ebp
  00422be1: 8b ec                                           mov    ebp,esp
  00422be3: 51                                              push   ecx
  00422be4: 56                                              push   esi
  00422be5: 8b f1                                           mov    esi,ecx
  00422be7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00422bea: 85 c0                                           test   eax,eax
  00422bec: 74 0c                                           je     0x422bfa
  00422bee: 50                                              push   eax
  00422bef: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00422bf2: e8 69 f4 01 00                                  call   0x442060
  00422bf7: 83 c4 04                                        add    esp,0x4
  00422bfa: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  00422c01: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00422c08: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  00422c0f: 5e                                              pop    esi
  00422c10: 8b e5                                           mov    esp,ebp
  00422c12: 5d                                              pop    ebp
  00422c13: c3                                              ret
  00422c20: 56                                              push   esi
  00422c21: 8b f1                                           mov    esi,ecx
  00422c23: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00422c26: 85 c0                                           test   eax,eax
  00422c28: 74 1c                                           je     0x422c46
  00422c2a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00422c2d: 8a 01                                           mov    al,BYTE PTR [ecx]
  00422c2f: 84 c0                                           test   al,al
  00422c31: 74 0a                                           je     0x422c3d
  00422c33: 3c ff                                           cmp    al,0xff
  00422c35: 74 06                                           je     0x422c3d
  00422c37: fe c8                                           dec    al
  00422c39: 88 01                                           mov    BYTE PTR [ecx],al
  00422c3b: eb 09                                           jmp    0x422c46
  00422c3d: 51                                              push   ecx
  00422c3e: e8 1d f4 01 00                                  call   0x442060
  00422c43: 83 c4 04                                        add    esp,0x4
  00422c46: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  00422c4d: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00422c54: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  00422c5b: 5e                                              pop    esi
  00422c5c: c3                                              ret
  004256a0: 55                                              push   ebp
  004256a1: 8b ec                                           mov    ebp,esp
  004256a3: 83 ec 08                                        sub    esp,0x8
  004256a6: 53                                              push   ebx
  004256a7: 56                                              push   esi
  004256a8: 8b f1                                           mov    esi,ecx
  004256aa: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004256ad: 85 c9                                           test   ecx,ecx
  004256af: 57                                              push   edi
  004256b0: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004256b3: 8b 07                                           mov    eax,DWORD PTR [edi]
  004256b5: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004256b8: 74 55                                           je     0x42570f
  004256ba: 8b c8                                           mov    ecx,eax
  004256bc: 3b c1                                           cmp    eax,ecx
  004256be: 75 4f                                           jne    0x42570f
  004256c0: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  004256c3: 8a 43 49                                        mov    al,BYTE PTR [ebx+0x49]
  004256c6: 84 c0                                           test   al,al
  004256c8: 8b fb                                           mov    edi,ebx
  004256ca: 75 29                                           jne    0x4256f5
  004256cc: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004256cf: 50                                              push   eax
  004256d0: 8b ce                                           mov    ecx,esi
  004256d2: e8 09 3c 00 00                                  call   0x4292e0
  004256d7: 8b 3f                                           mov    edi,DWORD PTR [edi]
  004256d9: 6a 00                                           push   0x0
  004256db: 8d 4b 0c                                        lea    ecx,[ebx+0xc]
  004256de: e8 8d 53 00 00                                  call   0x42aa70
  004256e3: 53                                              push   ebx
  004256e4: e8 77 c9 01 00                                  call   0x442060
  004256e9: 8a 47 49                                        mov    al,BYTE PTR [edi+0x49]
  004256ec: 83 c4 04                                        add    esp,0x4
  004256ef: 84 c0                                           test   al,al
  004256f1: 8b df                                           mov    ebx,edi
  004256f3: 74 d7                                           je     0x4256cc
  004256f5: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004256f8: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004256fb: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004256fe: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00425705: 89 00                                           mov    DWORD PTR [eax],eax
  00425707: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042570a: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0042570d: eb 21                                           jmp    0x425730
  0042570f: 3b c7                                           cmp    eax,edi
  00425711: 74 1d                                           je     0x425730
  00425713: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00425716: 8b d8                                           mov    ebx,eax
  00425718: e8 f3 3f 00 00                                  call   0x429710
  0042571d: 53                                              push   ebx
  0042571e: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00425721: 51                                              push   ecx
  00425722: 8b ce                                           mov    ecx,esi
  00425724: e8 27 23 00 00                                  call   0x427a50
  00425729: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0042572c: 3b c7                                           cmp    eax,edi
  0042572e: 75 e3                                           jne    0x425713
  00425730: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00425733: 52                                              push   edx
  00425734: e8 27 c9 01 00                                  call   0x442060
  00425739: 83 c4 04                                        add    esp,0x4
  0042573c: 33 c0                                           xor    eax,eax
  0042573e: 5f                                              pop    edi
  0042573f: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00425742: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00425745: 5e                                              pop    esi
  00425746: 5b                                              pop    ebx
  00425747: 8b e5                                           mov    esp,ebp
  00425749: 5d                                              pop    ebp
  0042574a: c3                                              ret
  004280a0: 53                                              push   ebx
  004280a1: 8b d9                                           mov    ebx,ecx
  004280a3: 56                                              push   esi
  004280a4: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004280a7: 33 c0                                           xor    eax,eax
  004280a9: 3b f0                                           cmp    esi,eax
  004280ab: 74 25                                           je     0x4280d2
  004280ad: 57                                              push   edi
  004280ae: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004280b1: 3b f7                                           cmp    esi,edi
  004280b3: 74 0e                                           je     0x4280c3
  004280b5: 8b ce                                           mov    ecx,esi
  004280b7: e8 f4 00 00 00                                  call   0x4281b0
  004280bc: 83 c6 2c                                        add    esi,0x2c
  004280bf: 3b f7                                           cmp    esi,edi
  004280c1: 75 f2                                           jne    0x4280b5
  004280c3: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004280c6: 50                                              push   eax
  004280c7: e8 94 9f 01 00                                  call   0x442060
  004280cc: 83 c4 04                                        add    esp,0x4
  004280cf: 33 c0                                           xor    eax,eax
  004280d1: 5f                                              pop    edi
  004280d2: 5e                                              pop    esi
  004280d3: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004280d6: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004280d9: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  004280dc: 5b                                              pop    ebx
  004280dd: c3                                              ret
  00428440: 55                                              push   ebp
  00428441: 8b ec                                           mov    ebp,esp
  00428443: 83 ec 08                                        sub    esp,0x8
  00428446: 53                                              push   ebx
  00428447: 56                                              push   esi
  00428448: 8b f1                                           mov    esi,ecx
  0042844a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042844d: 85 c9                                           test   ecx,ecx
  0042844f: 57                                              push   edi
  00428450: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00428453: 8b 07                                           mov    eax,DWORD PTR [edi]
  00428455: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00428458: 74 4b                                           je     0x4284a5
  0042845a: 8b c8                                           mov    ecx,eax
  0042845c: 3b c1                                           cmp    eax,ecx
  0042845e: 75 45                                           jne    0x4284a5
  00428460: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00428463: 8a 43 15                                        mov    al,BYTE PTR [ebx+0x15]
  00428466: 84 c0                                           test   al,al
  00428468: 8b fb                                           mov    edi,ebx
  0042846a: 75 1f                                           jne    0x42848b
  0042846c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0042846f: 50                                              push   eax
  00428470: 8b ce                                           mov    ecx,esi
  00428472: e8 29 0d 00 00                                  call   0x4291a0
  00428477: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00428479: 53                                              push   ebx
  0042847a: e8 e1 9b 01 00                                  call   0x442060
  0042847f: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  00428482: 83 c4 04                                        add    esp,0x4
  00428485: 84 c0                                           test   al,al
  00428487: 8b df                                           mov    ebx,edi
  00428489: 74 e1                                           je     0x42846c
  0042848b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042848e: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00428491: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428494: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0042849b: 89 00                                           mov    DWORD PTR [eax],eax
  0042849d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004284a0: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  004284a3: eb 21                                           jmp    0x4284c6
  004284a5: 3b c7                                           cmp    eax,edi
  004284a7: 74 1d                                           je     0x4284c6
  004284a9: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004284ac: 8b d8                                           mov    ebx,eax
  004284ae: e8 dd 0d 00 00                                  call   0x429290
  004284b3: 53                                              push   ebx
  004284b4: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  004284b7: 51                                              push   ecx
  004284b8: 8b ce                                           mov    ecx,esi
  004284ba: e8 41 f1 ff ff                                  call   0x427600
  004284bf: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004284c2: 3b c7                                           cmp    eax,edi
  004284c4: 75 e3                                           jne    0x4284a9
  004284c6: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004284c9: 52                                              push   edx
  004284ca: e8 91 9b 01 00                                  call   0x442060
  004284cf: 83 c4 04                                        add    esp,0x4
  004284d2: 33 c0                                           xor    eax,eax
  004284d4: 5f                                              pop    edi
  004284d5: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004284d8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004284db: 5e                                              pop    esi
  004284dc: 5b                                              pop    ebx
  004284dd: 8b e5                                           mov    esp,ebp
  004284df: 5d                                              pop    ebp
  004284e0: c3                                              ret
  0042da10: 53                                              push   ebx
  0042da11: 56                                              push   esi
  0042da12: 57                                              push   edi
  0042da13: 8b f9                                           mov    edi,ecx
  0042da15: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  0042da18: 85 db                                           test   ebx,ebx
  0042da1a: 75 04                                           jne    0x42da20
  0042da1c: 33 f6                                           xor    esi,esi
  0042da1e: eb 02                                           jmp    0x42da22
  0042da20: 8b 33                                           mov    esi,DWORD PTR [ebx]
  0042da22: 3b f3                                           cmp    esi,ebx
  0042da24: 74 27                                           je     0x42da4d
  0042da26: 8b c6                                           mov    eax,esi
  0042da28: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042da2b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042da2d: 8b 36                                           mov    esi,DWORD PTR [esi]
  0042da2f: 89 11                                           mov    DWORD PTR [ecx],edx
  0042da31: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042da33: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042da36: 50                                              push   eax
  0042da37: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042da3a: e8 21 46 01 00                                  call   0x442060
  0042da3f: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0042da42: 83 c4 04                                        add    esp,0x4
  0042da45: 49                                              dec    ecx
  0042da46: 3b f3                                           cmp    esi,ebx
  0042da48: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  0042da4b: 75 d9                                           jne    0x42da26
  0042da4d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0042da50: 50                                              push   eax
  0042da51: e8 0a 46 01 00                                  call   0x442060
  0042da56: 83 c4 04                                        add    esp,0x4
  0042da59: 33 c0                                           xor    eax,eax
  0042da5b: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  0042da5e: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  0042da61: 5f                                              pop    edi
  0042da62: 5e                                              pop    esi
  0042da63: 5b                                              pop    ebx
  0042da64: c3                                              ret
  0042e330: 53                                              push   ebx
  0042e331: 56                                              push   esi
  0042e332: 8b f1                                           mov    esi,ecx
  0042e334: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  0042e337: 33 db                                           xor    ebx,ebx
  0042e339: 3b c3                                           cmp    eax,ebx
  0042e33b: 57                                              push   edi
  0042e33c: 74 12                                           je     0x42e350
  0042e33e: 48                                              dec    eax
  0042e33f: 3b c3                                           cmp    eax,ebx
  0042e341: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  0042e344: 75 03                                           jne    0x42e349
  0042e346: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0042e349: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  0042e34c: 3b c3                                           cmp    eax,ebx
  0042e34e: 75 ee                                           jne    0x42e33e
  0042e350: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  0042e353: 3b fb                                           cmp    edi,ebx
  0042e355: 76 15                                           jbe    0x42e36c
  0042e357: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042e35a: 8b 4c b8 fc                                     mov    ecx,DWORD PTR [eax+edi*4-0x4]
  0042e35e: 4f                                              dec    edi
  0042e35f: 51                                              push   ecx
  0042e360: e8 fb 3c 01 00                                  call   0x442060
  0042e365: 83 c4 04                                        add    esp,0x4
  0042e368: 3b fb                                           cmp    edi,ebx
  0042e36a: 77 eb                                           ja     0x42e357
  0042e36c: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0042e36f: 52                                              push   edx
  0042e370: e8 eb 3c 01 00                                  call   0x442060
  0042e375: 83 c4 04                                        add    esp,0x4
  0042e378: 5f                                              pop    edi
  0042e379: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042e37c: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0042e37f: 5e                                              pop    esi
  0042e380: 5b                                              pop    ebx
  0042e381: c3                                              ret
  0042e390: 55                                              push   ebp
  0042e391: 8b ec                                           mov    ebp,esp
  0042e393: 83 ec 08                                        sub    esp,0x8
  0042e396: 53                                              push   ebx
  0042e397: 56                                              push   esi
  0042e398: 8b f1                                           mov    esi,ecx
  0042e39a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042e39d: 85 c9                                           test   ecx,ecx
  0042e39f: 57                                              push   edi
  0042e3a0: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  0042e3a3: 8b 07                                           mov    eax,DWORD PTR [edi]
  0042e3a5: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0042e3a8: 74 4b                                           je     0x42e3f5
  0042e3aa: 8b c8                                           mov    ecx,eax
  0042e3ac: 3b c1                                           cmp    eax,ecx
  0042e3ae: 75 45                                           jne    0x42e3f5
  0042e3b0: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  0042e3b3: 8a 43 21                                        mov    al,BYTE PTR [ebx+0x21]
  0042e3b6: 84 c0                                           test   al,al
  0042e3b8: 8b fb                                           mov    edi,ebx
  0042e3ba: 75 1f                                           jne    0x42e3db
  0042e3bc: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0042e3bf: 50                                              push   eax
  0042e3c0: 8b ce                                           mov    ecx,esi
  0042e3c2: e8 a9 30 00 00                                  call   0x431470
  0042e3c7: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0042e3c9: 53                                              push   ebx
  0042e3ca: e8 91 3c 01 00                                  call   0x442060
  0042e3cf: 8a 47 21                                        mov    al,BYTE PTR [edi+0x21]
  0042e3d2: 83 c4 04                                        add    esp,0x4
  0042e3d5: 84 c0                                           test   al,al
  0042e3d7: 8b df                                           mov    ebx,edi
  0042e3d9: 74 e1                                           je     0x42e3bc
  0042e3db: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042e3de: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042e3e1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042e3e4: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0042e3eb: 89 00                                           mov    DWORD PTR [eax],eax
  0042e3ed: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042e3f0: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0042e3f3: eb 21                                           jmp    0x42e416
  0042e3f5: 3b c7                                           cmp    eax,edi
  0042e3f7: 74 1d                                           je     0x42e416
  0042e3f9: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0042e3fc: 8b d8                                           mov    ebx,eax
  0042e3fe: e8 cd 34 00 00                                  call   0x4318d0
  0042e403: 53                                              push   ebx
  0042e404: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0042e407: 51                                              push   ecx
  0042e408: 8b ce                                           mov    ecx,esi
  0042e40a: e8 b1 29 00 00                                  call   0x430dc0
  0042e40f: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0042e412: 3b c7                                           cmp    eax,edi
  0042e414: 75 e3                                           jne    0x42e3f9
  0042e416: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0042e419: 52                                              push   edx
  0042e41a: e8 41 3c 01 00                                  call   0x442060
  0042e41f: 83 c4 04                                        add    esp,0x4
  0042e422: 33 c0                                           xor    eax,eax
  0042e424: 5f                                              pop    edi
  0042e425: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042e428: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0042e42b: 5e                                              pop    esi
  0042e42c: 5b                                              pop    ebx
  0042e42d: 8b e5                                           mov    esp,ebp
  0042e42f: 5d                                              pop    ebp
  0042e430: c3                                              ret
  00431280: 55                                              push   ebp
  00431281: 8b ec                                           mov    ebp,esp
  00431283: 51                                              push   ecx
  00431284: 56                                              push   esi
  00431285: 8b f1                                           mov    esi,ecx
  00431287: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043128a: 85 c0                                           test   eax,eax
  0043128c: 74 0c                                           je     0x43129a
  0043128e: 50                                              push   eax
  0043128f: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00431292: e8 c9 0d 01 00                                  call   0x442060
  00431297: 83 c4 04                                        add    esp,0x4
  0043129a: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004312a1: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004312a8: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004312af: 5e                                              pop    esi
  004312b0: 8b e5                                           mov    esp,ebp
  004312b2: 5d                                              pop    ebp
  004312b3: c3                                              ret
  00436f90: 55                                              push   ebp
  00436f91: 8b ec                                           mov    ebp,esp
  00436f93: 6a ff                                           push   0xffffffff
  00436f95: 68 98 55 4d 00                                  push   0x4d5598
  00436f9a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00436fa0: 50                                              push   eax
  00436fa1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00436fa8: 51                                              push   ecx
  00436fa9: 56                                              push   esi
  00436faa: 8b f1                                           mov    esi,ecx
  00436fac: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00436faf: 8d 4e 70                                        lea    ecx,[esi+0x70]
  00436fb2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00436fb9: e8 a2 27 fd ff                                  call   0x409760
  00436fbe: 8b ce                                           mov    ecx,esi
  00436fc0: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00436fc7: e8 94 27 fd ff                                  call   0x409760
  00436fcc: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00436fcf: 5e                                              pop    esi
  00436fd0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00436fd7: 8b e5                                           mov    esp,ebp
  00436fd9: 5d                                              pop    ebp
  00436fda: c3                                              ret
  00437000: e9 3b aa 09 00                                  jmp    0x4d1a40
  00437090: 53                                              push   ebx
  00437091: 56                                              push   esi
  00437092: 8b f1                                           mov    esi,ecx
  00437094: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  00437097: 57                                              push   edi
  00437098: 33 ff                                           xor    edi,edi
  0043709a: c7 06 a4 ee 4d 00                               mov    DWORD PTR [esi],0x4deea4
  004370a0: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004370a3: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004370a6: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004370aa: bb 01 00 00 00                                  mov    ebx,0x1
  004370af: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  004370b2: 74 0a                                           je     0x4370be
  004370b4: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004370b7: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004370b9: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004370bc: eb 03                                           jmp    0x4370c1
  004370be: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004370c1: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004370c4: 3b c7                                           cmp    eax,edi
  004370c6: 0f 84 ef 00 00 00                               je     0x4371bb
  004370cc: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  004370cf: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004370d2: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  004370d5: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004370d8: 3b c1                                           cmp    eax,ecx
  004370da: 74 5b                                           je     0x437137
  004370dc: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004370df: 74 52                                           je     0x437133
  004370e1: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004370e3: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004370e6: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004370e9: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004370ec: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004370ef: 8b 10                                           mov    edx,DWORD PTR [eax]
  004370f1: 89 11                                           mov    DWORD PTR [ecx],edx
  004370f3: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  004370f6: 3b c3                                           cmp    eax,ebx
  004370f8: 75 17                                           jne    0x437111
  004370fa: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004370fd: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00437100: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00437103: 52                                              push   edx
  00437104: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00437107: e8 54 af 00 00                                  call   0x442060
  0043710c: 83 c4 04                                        add    esp,0x4
  0043710f: eb 9e                                           jmp    0x4370af
  00437111: 83 f8 02                                        cmp    eax,0x2
  00437114: 0f 85 90 00 00 00                               jne    0x4371aa
  0043711a: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  0043711d: 8b 02                                           mov    eax,DWORD PTR [edx]
  0043711f: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00437122: 52                                              push   edx
  00437123: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00437126: e8 35 af 00 00                                  call   0x442060
  0043712b: 83 c4 04                                        add    esp,0x4
  0043712e: e9 7c ff ff ff                                  jmp    0x4370af
  00437133: 3b c1                                           cmp    eax,ecx
  00437135: 75 35                                           jne    0x43716c
  00437137: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043713a: 74 35                                           je     0x437171
  0043713c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043713f: 89 39                                           mov    DWORD PTR [ecx],edi
  00437141: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00437144: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00437147: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0043714a: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  0043714e: 8b ca                                           mov    ecx,edx
  00437150: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00437153: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00437156: 75 52                                           jne    0x4371aa
  00437158: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0043715b: 52                                              push   edx
  0043715c: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  0043715f: e8 fc ae 00 00                                  call   0x442060
  00437164: 83 c4 04                                        add    esp,0x4
  00437167: e9 43 ff ff ff                                  jmp    0x4370af
  0043716c: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  0043716f: 75 2d                                           jne    0x43719e
  00437171: 3b c1                                           cmp    eax,ecx
  00437173: 74 29                                           je     0x43719e
  00437175: 8b 00                                           mov    eax,DWORD PTR [eax]
  00437177: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0043717a: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0043717d: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0043717f: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00437182: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00437185: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  00437188: 75 20                                           jne    0x4371aa
  0043718a: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0043718d: 52                                              push   edx
  0043718e: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00437191: e8 ca ae 00 00                                  call   0x442060
  00437196: 83 c4 04                                        add    esp,0x4
  00437199: e9 11 ff ff ff                                  jmp    0x4370af
  0043719e: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  004371a1: 89 7e 24                                        mov    DWORD PTR [esi+0x24],edi
  004371a4: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  004371a7: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004371aa: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004371ad: 52                                              push   edx
  004371ae: e8 ad ae 00 00                                  call   0x442060
  004371b3: 83 c4 04                                        add    esp,0x4
  004371b6: e9 f4 fe ff ff                                  jmp    0x4370af
  004371bb: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  004371be: 74 04                                           je     0x4371c4
  004371c0: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  004371c4: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004371c7: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004371cd: 83 c6 08                                        add    esi,0x8
  004371d0: 56                                              push   esi
  004371d1: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  004371d7: 5f                                              pop    edi
  004371d8: 5e                                              pop    esi
  004371d9: 5b                                              pop    ebx
  004371da: c3                                              ret
  0043e410: 55                                              push   ebp
  0043e411: 8b ec                                           mov    ebp,esp
  0043e413: 6a ff                                           push   0xffffffff
  0043e415: 68 8b 5c 4d 00                                  push   0x4d5c8b
  0043e41a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043e420: 50                                              push   eax
  0043e421: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043e428: 51                                              push   ecx
  0043e429: 56                                              push   esi
  0043e42a: 8b f1                                           mov    esi,ecx
  0043e42c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0043e42f: 8d 4e 5c                                        lea    ecx,[esi+0x5c]
  0043e432: c7 45 fc 10 00 00 00                            mov    DWORD PTR [ebp-0x4],0x10
  0043e439: e8 02 36 09 00                                  call   0x4d1a40
  0043e43e: 8d 4e 54                                        lea    ecx,[esi+0x54]
  0043e441: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  0043e445: e8 f6 35 09 00                                  call   0x4d1a40
  0043e44a: 8d 4e 50                                        lea    ecx,[esi+0x50]
  0043e44d: c6 45 fc 0e                                     mov    BYTE PTR [ebp-0x4],0xe
  0043e451: e8 ea 35 09 00                                  call   0x4d1a40
  0043e456: 8d 4e 4c                                        lea    ecx,[esi+0x4c]
  0043e459: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  0043e45d: e8 de 35 09 00                                  call   0x4d1a40
  0043e462: 8d 4e 48                                        lea    ecx,[esi+0x48]
  0043e465: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0043e469: e8 d2 35 09 00                                  call   0x4d1a40
  0043e46e: 8d 4e 44                                        lea    ecx,[esi+0x44]
  0043e471: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  0043e475: e8 c6 35 09 00                                  call   0x4d1a40
  0043e47a: 8d 4e 3c                                        lea    ecx,[esi+0x3c]
  0043e47d: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  0043e481: e8 ba 35 09 00                                  call   0x4d1a40
  0043e486: 8d 4e 34                                        lea    ecx,[esi+0x34]
  0043e489: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  0043e48d: e8 ae 35 09 00                                  call   0x4d1a40
  0043e492: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  0043e495: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0043e499: e8 a2 35 09 00                                  call   0x4d1a40
  0043e49e: 8d 4e 28                                        lea    ecx,[esi+0x28]
  0043e4a1: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0043e4a5: e8 96 35 09 00                                  call   0x4d1a40
  0043e4aa: 8d 4e 20                                        lea    ecx,[esi+0x20]
  0043e4ad: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0043e4b1: e8 8a 35 09 00                                  call   0x4d1a40
  0043e4b6: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  0043e4b9: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0043e4bd: e8 7e 35 09 00                                  call   0x4d1a40
  0043e4c2: 8d 4e 18                                        lea    ecx,[esi+0x18]
  0043e4c5: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0043e4c9: e8 72 35 09 00                                  call   0x4d1a40
  0043e4ce: 8d 4e 14                                        lea    ecx,[esi+0x14]
  0043e4d1: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0043e4d5: e8 66 35 09 00                                  call   0x4d1a40
  0043e4da: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0043e4dd: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0043e4e1: e8 5a 35 09 00                                  call   0x4d1a40
  0043e4e6: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  0043e4e9: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0043e4ed: e8 4e 35 09 00                                  call   0x4d1a40
  0043e4f2: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0043e4f5: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0043e4f9: e8 42 35 09 00                                  call   0x4d1a40
  0043e4fe: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0043e501: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043e508: e8 33 35 09 00                                  call   0x4d1a40
  0043e50d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043e510: 5e                                              pop    esi
  0043e511: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043e518: 8b e5                                           mov    esp,ebp
  0043e51a: 5d                                              pop    ebp
  0043e51b: c3                                              ret
  0043e520: 55                                              push   ebp
  0043e521: 8b ec                                           mov    ebp,esp
  0043e523: 6a ff                                           push   0xffffffff
  0043e525: 68 a8 5c 4d 00                                  push   0x4d5ca8
  0043e52a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043e530: 50                                              push   eax
  0043e531: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043e538: 51                                              push   ecx
  0043e539: 56                                              push   esi
  0043e53a: 8b f1                                           mov    esi,ecx
  0043e53c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0043e53f: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0043e542: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0043e549: e8 f2 34 09 00                                  call   0x4d1a40
  0043e54e: 8b ce                                           mov    ecx,esi
  0043e550: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043e557: e8 e4 34 09 00                                  call   0x4d1a40
  0043e55c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043e55f: 5e                                              pop    esi
  0043e560: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043e567: 8b e5                                           mov    esp,ebp
  0043e569: 5d                                              pop    ebp
  0043e56a: c3                                              ret
  0043e570: 83 c1 08                                        add    ecx,0x8
  0043e573: e9 c8 34 09 00                                  jmp    0x4d1a40
  0043e580: 55                                              push   ebp
  0043e581: 8b ec                                           mov    ebp,esp
  0043e583: 6a ff                                           push   0xffffffff
  0043e585: 68 c8 5c 4d 00                                  push   0x4d5cc8
  0043e58a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043e590: 50                                              push   eax
  0043e591: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043e598: 51                                              push   ecx
  0043e599: 56                                              push   esi
  0043e59a: 8b f1                                           mov    esi,ecx
  0043e59c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0043e59f: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0043e5a2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0043e5a9: e8 92 34 09 00                                  call   0x4d1a40
  0043e5ae: 8b ce                                           mov    ecx,esi
  0043e5b0: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043e5b7: e8 84 34 09 00                                  call   0x4d1a40
  0043e5bc: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043e5bf: 5e                                              pop    esi
  0043e5c0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043e5c7: 8b e5                                           mov    esp,ebp
  0043e5c9: 5d                                              pop    ebp
  0043e5ca: c3                                              ret
  0043e5d0: 55                                              push   ebp
  0043e5d1: 8b ec                                           mov    ebp,esp
  0043e5d3: 6a ff                                           push   0xffffffff
  0043e5d5: 68 e8 5c 4d 00                                  push   0x4d5ce8
  0043e5da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043e5e0: 50                                              push   eax
  0043e5e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043e5e8: 51                                              push   ecx
  0043e5e9: 56                                              push   esi
  0043e5ea: 8b f1                                           mov    esi,ecx
  0043e5ec: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0043e5ef: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0043e5f2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0043e5f9: e8 42 34 09 00                                  call   0x4d1a40
  0043e5fe: 8b ce                                           mov    ecx,esi
  0043e600: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043e607: e8 34 34 09 00                                  call   0x4d1a40
  0043e60c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043e60f: 5e                                              pop    esi
  0043e610: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043e617: 8b e5                                           mov    esp,ebp
  0043e619: 5d                                              pop    ebp
  0043e61a: c3                                              ret
  004454b0: 56                                              push   esi
  004454b1: 8b f1                                           mov    esi,ecx
  004454b3: 8d 46 08                                        lea    eax,[esi+0x8]
  004454b6: 50                                              push   eax
  004454b7: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004454bd: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  004454c4: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004454ca: 33 c0                                           xor    eax,eax
  004454cc: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004454cf: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004454d2: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004454d5: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004454d8: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  004454db: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  004454de: c7 06 6c e6 4d 00                               mov    DWORD PTR [esi],0x4de66c
  004454e4: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004454e8: 8b c6                                           mov    eax,esi
  004454ea: 5e                                              pop    esi
  004454eb: c3                                              ret
  0044c730: 55                                              push   ebp
  0044c731: 8b ec                                           mov    ebp,esp
  0044c733: 6a ff                                           push   0xffffffff
  0044c735: 68 f1 67 4d 00                                  push   0x4d67f1
  0044c73a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044c740: 50                                              push   eax
  0044c741: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044c748: 83 ec 08                                        sub    esp,0x8
  0044c74b: 53                                              push   ebx
  0044c74c: 56                                              push   esi
  0044c74d: 57                                              push   edi
  0044c74e: 8b f9                                           mov    edi,ecx
  0044c750: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0044c753: 33 db                                           xor    ebx,ebx
  0044c755: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0044c758: 8d b7 dc 01 00 00                               lea    esi,[edi+0x1dc]
  0044c75e: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0044c761: c7 06 c4 ee 4d 00                               mov    DWORD PTR [esi],0x4deec4
  0044c767: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  0044c76a: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0044c76e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044c771: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0044c774: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044c778: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0044c77b: 74 0a                                           je     0x44c787
  0044c77d: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0044c780: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044c782: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0044c785: eb 07                                           jmp    0x44c78e
  0044c787: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0044c78e: 39 5e 20                                        cmp    DWORD PTR [esi+0x20],ebx
  0044c791: 74 09                                           je     0x44c79c
  0044c793: 8b ce                                           mov    ecx,esi
  0044c795: e8 c6 11 00 00                                  call   0x44d960
  0044c79a: eb dc                                           jmp    0x44c778
  0044c79c: 39 5e 40                                        cmp    DWORD PTR [esi+0x40],ebx
  0044c79f: 74 04                                           je     0x44c7a5
  0044c7a1: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0044c7a5: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0044c7a8: 8b 1d e0 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0e0
  0044c7ae: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0044c7b4: 83 c6 08                                        add    esi,0x8
  0044c7b7: 56                                              push   esi
  0044c7b8: ff d3                                           call   ebx
  0044c7ba: 8d b7 98 01 00 00                               lea    esi,[edi+0x198]
  0044c7c0: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0044c7c3: c7 06 b4 ee 4d 00                               mov    DWORD PTR [esi],0x4deeb4
  0044c7c9: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  0044c7cc: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0044c7d0: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044c7d3: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044c7da: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044c7de: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0044c7e1: 85 c0                                           test   eax,eax
  0044c7e3: 74 0a                                           je     0x44c7ef
  0044c7e5: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0044c7e8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044c7ea: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  0044c7ed: eb 07                                           jmp    0x44c7f6
  0044c7ef: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  0044c7f6: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0044c7f9: 85 c0                                           test   eax,eax
  0044c7fb: 74 09                                           je     0x44c806
  0044c7fd: 8b ce                                           mov    ecx,esi
  0044c7ff: e8 9c 0f 00 00                                  call   0x44d7a0
  0044c804: eb d8                                           jmp    0x44c7de
  0044c806: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  0044c809: 85 c0                                           test   eax,eax
  0044c80b: 74 04                                           je     0x44c811
  0044c80d: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  0044c811: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044c818: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0044c81e: 83 c6 08                                        add    esi,0x8
  0044c821: 56                                              push   esi
  0044c822: ff d3                                           call   ebx
  0044c824: 8d b7 44 01 00 00                               lea    esi,[edi+0x144]
  0044c82a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0044c82d: c7 06 a4 ee 4d 00                               mov    DWORD PTR [esi],0x4deea4
  0044c833: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  0044c836: 8b ce                                           mov    ecx,esi
  0044c838: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0044c83c: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0044c83f: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  0044c846: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044c84a: e8 11 0f 00 00                                  call   0x44d760
  0044c84f: 85 c0                                           test   eax,eax
  0044c851: 74 12                                           je     0x44c865
  0044c853: 8b ce                                           mov    ecx,esi
  0044c855: e8 16 0e 00 00                                  call   0x44d670
  0044c85a: 8b ce                                           mov    ecx,esi
  0044c85c: e8 ff 0e 00 00                                  call   0x44d760
  0044c861: 85 c0                                           test   eax,eax
  0044c863: 75 ee                                           jne    0x44c853
  0044c865: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0044c86b: 83 c6 08                                        add    esi,0x8
  0044c86e: 56                                              push   esi
  0044c86f: ff d3                                           call   ebx
  0044c871: 8d 8f 40 01 00 00                               lea    ecx,[edi+0x140]
  0044c877: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0044c87b: e8 c0 51 08 00                                  call   0x4d1a40
  0044c880: 8d 77 40                                        lea    esi,[edi+0x40]
  0044c883: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0044c886: 8d 4e 70                                        lea    ecx,[esi+0x70]
  0044c889: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0044c88d: e8 ce ce fb ff                                  call   0x409760
  0044c892: 8b ce                                           mov    ecx,esi
  0044c894: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0044c898: e8 c3 ce fb ff                                  call   0x409760
  0044c89d: 8b 47 24                                        mov    eax,DWORD PTR [edi+0x24]
  0044c8a0: 33 f6                                           xor    esi,esi
  0044c8a2: 3b c6                                           cmp    eax,esi
  0044c8a4: 74 1c                                           je     0x44c8c2
  0044c8a6: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0044c8a9: 8a 01                                           mov    al,BYTE PTR [ecx]
  0044c8ab: 84 c0                                           test   al,al
  0044c8ad: 74 0a                                           je     0x44c8b9
  0044c8af: 3c ff                                           cmp    al,0xff
  0044c8b1: 74 06                                           je     0x44c8b9
  0044c8b3: fe c8                                           dec    al
  0044c8b5: 88 01                                           mov    BYTE PTR [ecx],al
  0044c8b7: eb 09                                           jmp    0x44c8c2
  0044c8b9: 51                                              push   ecx
  0044c8ba: e8 a1 57 ff ff                                  call   0x442060
  0044c8bf: 83 c4 04                                        add    esp,0x4
  0044c8c2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044c8c5: 89 77 24                                        mov    DWORD PTR [edi+0x24],esi
  0044c8c8: 89 77 28                                        mov    DWORD PTR [edi+0x28],esi
  0044c8cb: 89 77 2c                                        mov    DWORD PTR [edi+0x2c],esi
  0044c8ce: 5f                                              pop    edi
  0044c8cf: 5e                                              pop    esi
  0044c8d0: 5b                                              pop    ebx
  0044c8d1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044c8d8: 8b e5                                           mov    esp,ebp
  0044c8da: 5d                                              pop    ebp
  0044c8db: c3                                              ret
  0044e860: 55                                              push   ebp
  0044e861: 8b ec                                           mov    ebp,esp
  0044e863: 6a ff                                           push   0xffffffff
  0044e865: 68 7e 69 4d 00                                  push   0x4d697e
  0044e86a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044e870: 50                                              push   eax
  0044e871: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044e878: 51                                              push   ecx
  0044e879: 53                                              push   ebx
  0044e87a: 56                                              push   esi
  0044e87b: 8b f1                                           mov    esi,ecx
  0044e87d: 8d 86 e0 01 00 00                               lea    eax,[esi+0x1e0]
  0044e883: 50                                              push   eax
  0044e884: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0044e887: c7 86 d8 01 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0x1d8],0x4de58c
  0044e891: c7 86 dc 01 00 00 ff ff ff ff                   mov    DWORD PTR [esi+0x1dc],0xffffffff
  0044e89b: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044e8a1: 33 db                                           xor    ebx,ebx
  0044e8a3: 8b ce                                           mov    ecx,esi
  0044e8a5: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0044e8a8: e8 43 01 00 00                                  call   0x44e9f0
  0044e8ad: 33 c9                                           xor    ecx,ecx
  0044e8af: 8d 56 11                                        lea    edx,[esi+0x11]
  0044e8b2: 89 0a                                           mov    DWORD PTR [edx],ecx
  0044e8b4: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0044e8b7: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0044e8ba: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  0044e8bd: 89 4a 10                                        mov    DWORD PTR [edx+0x10],ecx
  0044e8c0: 33 c0                                           xor    eax,eax
  0044e8c2: 8d 8e 0b 01 00 00                               lea    ecx,[esi+0x10b]
  0044e8c8: 89 01                                           mov    DWORD PTR [ecx],eax
  0044e8ca: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0044e8cd: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0044e8d0: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  0044e8d3: 89 41 10                                        mov    DWORD PTR [ecx+0x10],eax
  0044e8d6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044e8d9: 33 d2                                           xor    edx,edx
  0044e8db: 8d 86 6f 01 00 00                               lea    eax,[esi+0x16f]
  0044e8e1: 89 10                                           mov    DWORD PTR [eax],edx
  0044e8e3: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0044e8e6: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  0044e8e9: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  0044e8ec: 89 50 10                                        mov    DWORD PTR [eax+0x10],edx
  0044e8ef: 89 9e d4 01 00 00                               mov    DWORD PTR [esi+0x1d4],ebx
  0044e8f5: 88 5e 10                                        mov    BYTE PTR [esi+0x10],bl
  0044e8f8: 89 9e f8 01 00 00                               mov    DWORD PTR [esi+0x1f8],ebx
  0044e8fe: 89 9e fc 01 00 00                               mov    DWORD PTR [esi+0x1fc],ebx
  0044e904: 8b c6                                           mov    eax,esi
  0044e906: 5e                                              pop    esi
  0044e907: 5b                                              pop    ebx
  0044e908: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044e90f: 8b e5                                           mov    esp,ebp
  0044e911: 5d                                              pop    ebp
  0044e912: c3                                              ret
  0044e920: 55                                              push   ebp
  0044e921: 8b ec                                           mov    ebp,esp
  0044e923: 6a ff                                           push   0xffffffff
  0044e925: 68 9e 69 4d 00                                  push   0x4d699e
  0044e92a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044e930: 50                                              push   eax
  0044e931: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044e938: 51                                              push   ecx
  0044e939: 56                                              push   esi
  0044e93a: 8b f1                                           mov    esi,ecx
  0044e93c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0044e93f: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044e946: e8 c5 00 00 00                                  call   0x44ea10
  0044e94b: c7 86 d8 01 00 00 8c e5 4d 00                   mov    DWORD PTR [esi+0x1d8],0x4de58c
  0044e955: 81 c6 e0 01 00 00                               add    esi,0x1e0
  0044e95b: 56                                              push   esi
  0044e95c: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  0044e962: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0044e965: 5e                                              pop    esi
  0044e966: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0044e96d: 8b e5                                           mov    esp,ebp
  0044e96f: 5d                                              pop    ebp
  0044e970: c3                                              ret
  00455840: 51                                              push   ecx
  00455841: ff 15 18 e4 4d 00                               call   DWORD PTR ds:0x4de418
  00455847: 85 c0                                           test   eax,eax
  00455849: 7d 06                                           jge    0x455851
  0045584b: 50                                              push   eax
  0045584c: e8 0b cd 07 00                                  call   0x4d255c
  00455851: c3                                              ret
  00458d20: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00458d22: 85 c0                                           test   eax,eax
  00458d24: 74 06                                           je     0x458d2c
  00458d26: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00458d28: 50                                              push   eax
  00458d29: ff 51 08                                        call   DWORD PTR [ecx+0x8]
  00458d2c: c3                                              ret
  0045e330: 55                                              push   ebp
  0045e331: 8b ec                                           mov    ebp,esp
  0045e333: 51                                              push   ecx
  0045e334: 53                                              push   ebx
  0045e335: 8b d1                                           mov    edx,ecx
  0045e337: 56                                              push   esi
  0045e338: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  0045e33b: 33 db                                           xor    ebx,ebx
  0045e33d: 3b f3                                           cmp    esi,ebx
  0045e33f: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0045e342: 74 4e                                           je     0x45e392
  0045e344: 57                                              push   edi
  0045e345: 8b 7a 08                                        mov    edi,DWORD PTR [edx+0x8]
  0045e348: 3b f7                                           cmp    esi,edi
  0045e34a: 74 36                                           je     0x45e382
  0045e34c: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0045e34f: 3b c3                                           cmp    eax,ebx
  0045e351: 74 1f                                           je     0x45e372
  0045e353: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0045e356: 8a 01                                           mov    al,BYTE PTR [ecx]
  0045e358: 3a c3                                           cmp    al,bl
  0045e35a: 74 0a                                           je     0x45e366
  0045e35c: 3c ff                                           cmp    al,0xff
  0045e35e: 74 06                                           je     0x45e366
  0045e360: fe c8                                           dec    al
  0045e362: 88 01                                           mov    BYTE PTR [ecx],al
  0045e364: eb 0c                                           jmp    0x45e372
  0045e366: 51                                              push   ecx
  0045e367: e8 f4 3c fe ff                                  call   0x442060
  0045e36c: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0045e36f: 83 c4 04                                        add    esp,0x4
  0045e372: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0045e375: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0045e378: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0045e37b: 83 c6 10                                        add    esi,0x10
  0045e37e: 3b f7                                           cmp    esi,edi
  0045e380: 75 ca                                           jne    0x45e34c
  0045e382: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0045e385: 50                                              push   eax
  0045e386: e8 d5 3c fe ff                                  call   0x442060
  0045e38b: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0045e38e: 83 c4 04                                        add    esp,0x4
  0045e391: 5f                                              pop    edi
  0045e392: 5e                                              pop    esi
  0045e393: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  0045e396: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  0045e399: 89 5a 0c                                        mov    DWORD PTR [edx+0xc],ebx
  0045e39c: 5b                                              pop    ebx
  0045e39d: 8b e5                                           mov    esp,ebp
  0045e39f: 5d                                              pop    ebp
  0045e3a0: c3                                              ret
  004611b0: 55                                              push   ebp
  004611b1: 8b ec                                           mov    ebp,esp
  004611b3: 6a ff                                           push   0xffffffff
  004611b5: 68 23 7a 4d 00                                  push   0x4d7a23
  004611ba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004611c0: 50                                              push   eax
  004611c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004611c8: 51                                              push   ecx
  004611c9: 56                                              push   esi
  004611ca: 8b f1                                           mov    esi,ecx
  004611cc: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004611cf: 8d 8e e0 00 00 00                               lea    ecx,[esi+0xe0]
  004611d5: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004611dc: e8 7f 85 fa ff                                  call   0x409760
  004611e1: 8d 4e 70                                        lea    ecx,[esi+0x70]
  004611e4: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004611e8: e8 73 85 fa ff                                  call   0x409760
  004611ed: 8b ce                                           mov    ecx,esi
  004611ef: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004611f6: e8 65 85 fa ff                                  call   0x409760
  004611fb: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004611fe: 5e                                              pop    esi
  004611ff: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00461206: 8b e5                                           mov    esp,ebp
  00461208: 5d                                              pop    ebp
  00461209: c3                                              ret
  00461210: 53                                              push   ebx
  00461211: 56                                              push   esi
  00461212: 8b f1                                           mov    esi,ecx
  00461214: 8b 46 5c                                        mov    eax,DWORD PTR [esi+0x5c]
  00461217: 57                                              push   edi
  00461218: 33 ff                                           xor    edi,edi
  0046121a: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  00461221: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  00461224: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  00461227: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  0046122b: bb 01 00 00 00                                  mov    ebx,0x1
  00461230: 39 7e 78                                        cmp    DWORD PTR [esi+0x78],edi
  00461233: 74 0a                                           je     0x46123f
  00461235: 8b 4e 58                                        mov    ecx,DWORD PTR [esi+0x58]
  00461238: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0046123a: 89 56 58                                        mov    DWORD PTR [esi+0x58],edx
  0046123d: eb 03                                           jmp    0x461242
  0046123f: 89 5e 78                                        mov    DWORD PTR [esi+0x78],ebx
  00461242: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  00461245: 3b c7                                           cmp    eax,edi
  00461247: 0f 84 ef 00 00 00                               je     0x46133c
  0046124d: 8b 4e 60                                        mov    ecx,DWORD PTR [esi+0x60]
  00461250: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  00461253: ff 4e 70                                        dec    DWORD PTR [esi+0x70]
  00461256: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  00461259: 3b c1                                           cmp    eax,ecx
  0046125b: 74 5b                                           je     0x4612b8
  0046125d: 3b 46 5c                                        cmp    eax,DWORD PTR [esi+0x5c]
  00461260: 74 52                                           je     0x4612b4
  00461262: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00461264: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00461267: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0046126a: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  0046126d: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00461270: 8b 10                                           mov    edx,DWORD PTR [eax]
  00461272: 89 11                                           mov    DWORD PTR [ecx],edx
  00461274: 8b 46 78                                        mov    eax,DWORD PTR [esi+0x78]
  00461277: 3b c3                                           cmp    eax,ebx
  00461279: 75 17                                           jne    0x461292
  0046127b: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  0046127e: 8b 56 64                                        mov    edx,DWORD PTR [esi+0x64]
  00461281: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00461284: 52                                              push   edx
  00461285: 89 4e 58                                        mov    DWORD PTR [esi+0x58],ecx
  00461288: e8 d3 0d fe ff                                  call   0x442060
  0046128d: 83 c4 04                                        add    esp,0x4
  00461290: eb 9e                                           jmp    0x461230
  00461292: 83 f8 02                                        cmp    eax,0x2
  00461295: 0f 85 90 00 00 00                               jne    0x46132b
  0046129b: 8b 56 58                                        mov    edx,DWORD PTR [esi+0x58]
  0046129e: 8b 02                                           mov    eax,DWORD PTR [edx]
  004612a0: 8b 56 64                                        mov    edx,DWORD PTR [esi+0x64]
  004612a3: 52                                              push   edx
  004612a4: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  004612a7: e8 b4 0d fe ff                                  call   0x442060
  004612ac: 83 c4 04                                        add    esp,0x4
  004612af: e9 7c ff ff ff                                  jmp    0x461230
  004612b4: 3b c1                                           cmp    eax,ecx
  004612b6: 75 35                                           jne    0x4612ed
  004612b8: 3b 46 5c                                        cmp    eax,DWORD PTR [esi+0x5c]
  004612bb: 74 35                                           je     0x4612f2
  004612bd: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004612c0: 89 39                                           mov    DWORD PTR [ecx],edi
  004612c2: 8b 56 58                                        mov    edx,DWORD PTR [esi+0x58]
  004612c5: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004612c8: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004612cb: 83 7e 78 02                                     cmp    DWORD PTR [esi+0x78],0x2
  004612cf: 8b ca                                           mov    ecx,edx
  004612d1: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004612d4: 89 56 58                                        mov    DWORD PTR [esi+0x58],edx
  004612d7: 75 52                                           jne    0x46132b
  004612d9: 8b 56 64                                        mov    edx,DWORD PTR [esi+0x64]
  004612dc: 52                                              push   edx
  004612dd: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  004612e0: e8 7b 0d fe ff                                  call   0x442060
  004612e5: 83 c4 04                                        add    esp,0x4
  004612e8: e9 43 ff ff ff                                  jmp    0x461230
  004612ed: 3b 46 5c                                        cmp    eax,DWORD PTR [esi+0x5c]
  004612f0: 75 2d                                           jne    0x46131f
  004612f2: 3b c1                                           cmp    eax,ecx
  004612f4: 74 29                                           je     0x46131f
  004612f6: 8b 00                                           mov    eax,DWORD PTR [eax]
  004612f8: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004612fb: 8b 4e 58                                        mov    ecx,DWORD PTR [esi+0x58]
  004612fe: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00461300: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  00461303: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  00461306: 39 5e 78                                        cmp    DWORD PTR [esi+0x78],ebx
  00461309: 75 20                                           jne    0x46132b
  0046130b: 8b 56 64                                        mov    edx,DWORD PTR [esi+0x64]
  0046130e: 52                                              push   edx
  0046130f: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  00461312: e8 49 0d fe ff                                  call   0x442060
  00461317: 83 c4 04                                        add    esp,0x4
  0046131a: e9 11 ff ff ff                                  jmp    0x461230
  0046131f: 89 7e 58                                        mov    DWORD PTR [esi+0x58],edi
  00461322: 89 7e 5c                                        mov    DWORD PTR [esi+0x5c],edi
  00461325: 89 7e 60                                        mov    DWORD PTR [esi+0x60],edi
  00461328: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  0046132b: 8b 56 64                                        mov    edx,DWORD PTR [esi+0x64]
  0046132e: 52                                              push   edx
  0046132f: e8 2c 0d fe ff                                  call   0x442060
  00461334: 83 c4 04                                        add    esp,0x4
  00461337: e9 f4 fe ff ff                                  jmp    0x461230
  0046133c: 39 7e 78                                        cmp    DWORD PTR [esi+0x78],edi
  0046133f: 74 04                                           je     0x461345
  00461341: c6 46 6c 07                                     mov    BYTE PTR [esi+0x6c],0x7
  00461345: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  00461348: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  0046134f: 83 c6 40                                        add    esi,0x40
  00461352: 56                                              push   esi
  00461353: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00461359: 5f                                              pop    edi
  0046135a: 5e                                              pop    esi
  0046135b: 5b                                              pop    ebx
  0046135c: c3                                              ret
  00474186: 6a 01                                           push   0x1
  00474188: 6a 03                                           push   0x3
  0047418a: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0047418d: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  00474193: 51                                              push   ecx
  00474194: 8b cc                                           mov    ecx,esp
  00474196: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00474199: 50                                              push   eax
  0047419a: e8 c5 d8 05 00                                  call   0x4d1a64
  0047419f: e8 2c 61 01 00                                  call   0x48a2d0
  004741a4: 83 c4 0c                                        add    esp,0xc
  004741a7: 33 ff                                           xor    edi,edi
  004741a9: 8b f0                                           mov    esi,eax
  004741ab: 66 85 f6                                        test   si,si
  004741ae: 74 2e                                           je     0x4741de
  004741b0: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004741b2: 85 c0                                           test   eax,eax
  004741b4: 75 05                                           jne    0x4741bb
  004741b6: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004741bb: 50                                              push   eax
  004741bc: 68 34 a2 50 00                                  push   0x50a234
  004741c1: 6a 04                                           push   0x4
  004741c3: e8 78 db ff ff                                  call   0x471d40
  004741c8: 56                                              push   esi
  004741c9: e8 72 5f 01 00                                  call   0x48a140
  004741ce: 66 8b 7b 0c                                     mov    di,WORD PTR [ebx+0xc]
  004741d2: 83 c4 10                                        add    esp,0x10
  004741d5: 81 e6 ff ff 00 00                               and    esi,0xffff
  004741db: 89 73 0c                                        mov    DWORD PTR [ebx+0xc],esi
  004741de: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004741e0: 85 c0                                           test   eax,eax
  004741e2: 75 05                                           jne    0x4741e9
  004741e4: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004741e9: 50                                              push   eax
  004741ea: 33 c0                                           xor    eax,eax
  004741ec: 66 8b 43 0c                                     mov    ax,WORD PTR [ebx+0xc]
  004741f0: 33 c9                                           xor    ecx,ecx
  004741f2: 66 8b 4b 10                                     mov    cx,WORD PTR [ebx+0x10]
  004741f6: 50                                              push   eax
  004741f7: 51                                              push   ecx
  004741f8: e8 13 36 fc ff                                  call   0x437810
  004741fd: 83 c4 0c                                        add    esp,0xc
  00474200: 66 85 ff                                        test   di,di
  00474203: 8b f0                                           mov    esi,eax
  00474205: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00474208: 74 1c                                           je     0x474226
  0047420a: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0047420c: 85 c0                                           test   eax,eax
  0047420e: 75 05                                           jne    0x474215
  00474210: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00474215: 6a 01                                           push   0x1
  00474217: 6a 00                                           push   0x0
  00474219: 6a 03                                           push   0x3
  0047421b: 50                                              push   eax
  0047421c: 56                                              push   esi
  0047421d: 57                                              push   edi
  0047421e: e8 6d 5a 01 00                                  call   0x489c90
  00474223: 83 c4 18                                        add    esp,0x18
  00474226: 33 ff                                           xor    edi,edi
  00474228: 3b f7                                           cmp    esi,edi
  0047422a: 0f 84 08 05 00 00                               je     0x474738
  00474230: 66 8b 53 24                                     mov    dx,WORD PTR [ebx+0x24]
  00474234: 66 89 56 2c                                     mov    WORD PTR [esi+0x2c],dx
  00474238: 8b 43 10                                        mov    eax,DWORD PTR [ebx+0x10]
  0047423b: 48                                              dec    eax
  0047423c: 83 f8 0c                                        cmp    eax,0xc
  0047423f: 77 27                                           ja     0x474268
  00474241: 33 c9                                           xor    ecx,ecx
  00474243: 8a 88 44 50 47 00                               mov    cl,BYTE PTR [eax+0x475044]
  00474249: ff 24 8d 34 50 47 00                            jmp    DWORD PTR [ecx*4+0x475034]
  00474268: 66 89 7e 36                                     mov    WORD PTR [esi+0x36],di
  0047426c: 66 8b 53 10                                     mov    dx,WORD PTR [ebx+0x10]
  00474270: 66 89 56 32                                     mov    WORD PTR [esi+0x32],dx
  00474274: 66 8b 43 28                                     mov    ax,WORD PTR [ebx+0x28]
  00474278: 66 89 46 34                                     mov    WORD PTR [esi+0x34],ax
  0047427c: 66 8b 4b 2c                                     mov    cx,WORD PTR [ebx+0x2c]
  00474280: 66 89 4e 2e                                     mov    WORD PTR [esi+0x2e],cx
  00474284: 8b 53 30                                        mov    edx,DWORD PTR [ebx+0x30]
  00474287: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  0047428a: 8b 43 34                                        mov    eax,DWORD PTR [ebx+0x34]
  0047428d: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  00474290: 8b 4b 38                                        mov    ecx,DWORD PTR [ebx+0x38]
  00474293: 89 4e 58                                        mov    DWORD PTR [esi+0x58],ecx
  00474296: 8b 53 3c                                        mov    edx,DWORD PTR [ebx+0x3c]
  00474299: 89 56 5c                                        mov    DWORD PTR [esi+0x5c],edx
  0047429c: 66 8b 43 40                                     mov    ax,WORD PTR [ebx+0x40]
  004742a0: 66 89 46 60                                     mov    WORD PTR [esi+0x60],ax
  004742a4: 66 8b 4b 44                                     mov    cx,WORD PTR [ebx+0x44]
  004742a8: 66 89 4e 62                                     mov    WORD PTR [esi+0x62],cx
  004742ac: 66 8b 53 58                                     mov    dx,WORD PTR [ebx+0x58]
  004742b0: 66 89 96 48 01 00 00                            mov    WORD PTR [esi+0x148],dx
  004742b7: 66 8b 43 5c                                     mov    ax,WORD PTR [ebx+0x5c]
  004742bb: 66 89 86 4a 01 00 00                            mov    WORD PTR [esi+0x14a],ax
  004742c2: 8a 8b d1 00 00 00                               mov    cl,BYTE PTR [ebx+0xd1]
  004742c8: 88 8e 4e 01 00 00                               mov    BYTE PTR [esi+0x14e],cl
  004742ce: 8a 93 d2 00 00 00                               mov    dl,BYTE PTR [ebx+0xd2]
  004742d4: 88 96 4f 01 00 00                               mov    BYTE PTR [esi+0x14f],dl
  004742da: 8b 83 90 00 00 00                               mov    eax,DWORD PTR [ebx+0x90]
  004742e0: 89 86 b0 01 00 00                               mov    DWORD PTR [esi+0x1b0],eax
  004742e6: 8b 8b 8c 00 00 00                               mov    ecx,DWORD PTR [ebx+0x8c]
  004742ec: 89 8e b4 01 00 00                               mov    DWORD PTR [esi+0x1b4],ecx
  004742f2: 8b 93 88 00 00 00                               mov    edx,DWORD PTR [ebx+0x88]
  004742f8: 89 96 b8 01 00 00                               mov    DWORD PTR [esi+0x1b8],edx
  004742fe: 8b 83 a8 00 00 00                               mov    eax,DWORD PTR [ebx+0xa8]
  00474304: 89 86 60 01 00 00                               mov    DWORD PTR [esi+0x160],eax
  0047430a: 8b 8b b0 00 00 00                               mov    ecx,DWORD PTR [ebx+0xb0]
  00474310: 89 8e 58 01 00 00                               mov    DWORD PTR [esi+0x158],ecx
  00474316: 8b 93 ac 00 00 00                               mov    edx,DWORD PTR [ebx+0xac]
  0047431c: 89 96 5c 01 00 00                               mov    DWORD PTR [esi+0x15c],edx
  00474322: 89 be 50 01 00 00                               mov    DWORD PTR [esi+0x150],edi
  00474328: 66 8b 43 74                                     mov    ax,WORD PTR [ebx+0x74]
  0047432c: 66 89 86 54 01 00 00                            mov    WORD PTR [esi+0x154],ax
  00474333: 66 8b 4b 60                                     mov    cx,WORD PTR [ebx+0x60]
  00474337: 66 89 8e 4c 01 00 00                            mov    WORD PTR [esi+0x14c],cx
  0047433e: 8b 43 7c                                        mov    eax,DWORD PTR [ebx+0x7c]
  00474341: 3b c7                                           cmp    eax,edi
  00474343: 75 05                                           jne    0x47434a
  00474345: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0047434a: 50                                              push   eax
  0047434b: 8d 8e 68 01 00 00                               lea    ecx,[esi+0x168]
  00474351: e8 02 d7 05 00                                  call   0x4d1a58
  00474356: 8b 93 b8 00 00 00                               mov    edx,DWORD PTR [ebx+0xb8]
  0047435c: 89 56 3c                                        mov    DWORD PTR [esi+0x3c],edx
  0047435f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00474364: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00474366: 51                                              push   ecx
  00474367: 57                                              push   edi
  00474368: 8d 93 c0 00 00 00                               lea    edx,[ebx+0xc0]
  0047436e: 52                                              push   edx
  0047436f: 8d 4e 48                                        lea    ecx,[esi+0x48]
  00474372: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00474378: 8a 83 bc 00 00 00                               mov    al,BYTE PTR [ebx+0xbc]
  0047437e: 88 46 46                                        mov    BYTE PTR [esi+0x46],al
  00474381: 8a 8b d0 00 00 00                               mov    cl,BYTE PTR [ebx+0xd0]
  00474387: 88 4e 47                                        mov    BYTE PTR [esi+0x47],cl
  0047438a: 8a 93 a4 00 00 00                               mov    dl,BYTE PTR [ebx+0xa4]
  00474390: 88 56 44                                        mov    BYTE PTR [esi+0x44],dl
  00474393: 8b 43 1c                                        mov    eax,DWORD PTR [ebx+0x1c]
  00474396: 40                                              inc    eax
  00474397: 50                                              push   eax
  00474398: e8 63 a1 05 00                                  call   0x4ce500
  0047439d: 8b d0                                           mov    edx,eax
  0047439f: 89 56 28                                        mov    DWORD PTR [esi+0x28],edx
  004743a2: 8b 43 18                                        mov    eax,DWORD PTR [ebx+0x18]
  004743a5: 83 c4 04                                        add    esp,0x4
  004743a8: 3b c7                                           cmp    eax,edi
  004743aa: 75 05                                           jne    0x4743b1
  004743ac: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004743b1: 83 c9 ff                                        or     ecx,0xffffffff
  004743b4: 8b f8                                           mov    edi,eax
  004743b6: 33 c0                                           xor    eax,eax
  004743b8: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004743ba: f7 d1                                           not    ecx
  004743bc: 2b f9                                           sub    edi,ecx
  004743be: 8b c1                                           mov    eax,ecx
  004743c0: c1 e9 02                                        shr    ecx,0x2
  004743c3: 8b f7                                           mov    esi,edi
  004743c5: 8b fa                                           mov    edi,edx
  004743c7: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004743c9: 8b c8                                           mov    ecx,eax
  004743cb: 83 e1 03                                        and    ecx,0x3
  004743ce: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004743d0: 8b 43 6c                                        mov    eax,DWORD PTR [ebx+0x6c]
  004743d3: 85 c0                                           test   eax,eax
  004743d5: 74 52                                           je     0x474429
  004743d7: 6a 04                                           push   0x4
  004743d9: e8 12 dc fc ff                                  call   0x441ff0
  004743de: 83 c4 04                                        add    esp,0x4
  004743e1: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004743e4: 85 c0                                           test   eax,eax
  004743e6: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004743ea: 74 0b                                           je     0x4743f7
  004743ec: 8b c8                                           mov    ecx,eax
  004743ee: e8 6b d6 05 00                                  call   0x4d1a5e
  004743f3: 8b f0                                           mov    esi,eax
  004743f5: eb 02                                           jmp    0x4743f9
  004743f7: 33 f6                                           xor    esi,esi
  004743f9: 8b 43 68                                        mov    eax,DWORD PTR [ebx+0x68]
  004743fc: 85 c0                                           test   eax,eax
  004743fe: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00474402: 75 05                                           jne    0x474409
  00474404: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00474409: 50                                              push   eax
  0047440a: 8b ce                                           mov    ecx,esi
  0047440c: e8 47 d6 05 00                                  call   0x4d1a58
  00474411: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00474414: 51                                              push   ecx
  00474415: 8d 8d 14 ff ff ff                               lea    ecx,[ebp-0xec]
  0047441b: e8 c0 3c fc ff                                  call   0x4380e0
  00474420: 56                                              push   esi
  00474421: 8d 4d a8                                        lea    ecx,[ebp-0x58]
  00474424: e8 27 3d 00 00                                  call   0x478150
  00474429: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  0047442c: 8d b3 94 00 00 00                               lea    esi,[ebx+0x94]
  00474432: 68 b4 06 50 00                                  push   0x5006b4
  00474437: 56                                              push   esi
  00474438: ff 15 4c e5 4d 00                               call   DWORD PTR ds:0x4de54c
  0047443e: 83 c4 08                                        add    esp,0x8
  00474441: 8b ce                                           mov    ecx,esi
  00474443: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  00474449: 51                                              push   ecx
  0047444a: 8b cc                                           mov    ecx,esp
  0047444c: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0047444f: 50                                              push   eax
  00474450: e8 0f d6 05 00                                  call   0x4d1a64
  00474455: 8d 8f d8 00 00 00                               lea    ecx,[edi+0xd8]
  0047445b: e8 a0 54 f9 ff                                  call   0x409900
  00474460: 85 c0                                           test   eax,eax
  00474462: 75 2b                                           jne    0x47448f
  00474464: 8b 83 98 00 00 00                               mov    eax,DWORD PTR [ebx+0x98]
  0047446a: 85 c0                                           test   eax,eax
  0047446c: 8b 15 d8 e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4d8
  00474472: 75 02                                           jne    0x474476
  00474474: 8b c2                                           mov    eax,edx
  00474476: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  00474478: 85 c9                                           test   ecx,ecx
  0047447a: 75 02                                           jne    0x47447e
  0047447c: 8b ca                                           mov    ecx,edx
  0047447e: 50                                              push   eax
  0047447f: 51                                              push   ecx
  00474480: 68 f8 a1 50 00                                  push   0x50a1f8
  00474485: 6a 08                                           push   0x8
  00474487: e8 b4 d8 ff ff                                  call   0x471d40
  0047448c: 83 c4 10                                        add    esp,0x10
  0047448f: 8d 4b 48                                        lea    ecx,[ebx+0x48]
  00474492: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  00474498: 51                                              push   ecx
  00474499: 8b cc                                           mov    ecx,esp
  0047449b: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0047449e: 50                                              push   eax
  0047449f: e8 c0 d5 05 00                                  call   0x4d1a64
  004744a4: 8d 4f 68                                        lea    ecx,[edi+0x68]
  004744a7: e8 54 54 f9 ff                                  call   0x409900
  004744ac: 85 c0                                           test   eax,eax
  004744ae: 75 28                                           jne    0x4744d8
  004744b0: 8b 43 4c                                        mov    eax,DWORD PTR [ebx+0x4c]
  004744b3: 85 c0                                           test   eax,eax
  004744b5: 8b 15 d8 e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4d8
  004744bb: 75 02                                           jne    0x4744bf
  004744bd: 8b c2                                           mov    eax,edx
  004744bf: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004744c1: 85 c9                                           test   ecx,ecx
  004744c3: 75 02                                           jne    0x4744c7
  004744c5: 8b ca                                           mov    ecx,edx
  004744c7: 50                                              push   eax
  004744c8: 51                                              push   ecx
  004744c9: 68 b8 a1 50 00                                  push   0x50a1b8
  004744ce: 6a 08                                           push   0x8
  004744d0: e8 6b d8 ff ff                                  call   0x471d40
  004744d5: 83 c4 10                                        add    esp,0x10
  004744d8: 8b 73 ec                                        mov    esi,DWORD PTR [ebx-0x14]
  004744db: 3b 73 f0                                        cmp    esi,DWORD PTR [ebx-0x10]
  004744de: 74 3d                                           je     0x47451d
  004744e0: 81 c7 c0 01 00 00                               add    edi,0x1c0
  004744e6: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  004744e9: 6a 04                                           push   0x4
  004744eb: e8 00 db fc ff                                  call   0x441ff0
  004744f0: 83 c4 04                                        add    esp,0x4
  004744f3: 8b ce                                           mov    ecx,esi
  004744f5: 8b f8                                           mov    edi,eax
  004744f7: e8 d4 22 03 00                                  call   0x4a67d0
  004744fc: 8b ce                                           mov    ecx,esi
  004744fe: 66 89 07                                        mov    WORD PTR [edi],ax
  00474501: e8 da 22 03 00                                  call   0x4a67e0
  00474506: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00474509: 57                                              push   edi
  0047450a: 66 89 47 02                                     mov    WORD PTR [edi+0x2],ax
  0047450e: e8 fd 3a 00 00                                  call   0x478010
  00474513: 8b 43 f0                                        mov    eax,DWORD PTR [ebx-0x10]
  00474516: 83 c6 24                                        add    esi,0x24
  00474519: 3b f0                                           cmp    esi,eax
  0047451b: 75 cc                                           jne    0x4744e9
  0047451d: 8b 73 dc                                        mov    esi,DWORD PTR [ebx-0x24]
  00474520: 3b 73 e0                                        cmp    esi,DWORD PTR [ebx-0x20]
  00474523: 0f 84 af 00 00 00                               je     0x4745d8
  00474529: 68 80 00 00 00                                  push   0x80
  0047452e: e8 bd da fc ff                                  call   0x441ff0
  00474533: 8b f8                                           mov    edi,eax
  00474535: 83 c4 04                                        add    esp,0x4
  00474538: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0047453b: 85 ff                                           test   edi,edi
  0047453d: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00474541: 74 0a                                           je     0x47454d
  00474543: 8d 4f 08                                        lea    ecx,[edi+0x8]
  00474546: e8 75 51 f9 ff                                  call   0x4096c0
  0047454b: eb 02                                           jmp    0x47454f
  0047454d: 33 ff                                           xor    edi,edi
  0047454f: 8b ce                                           mov    ecx,esi
  00474551: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00474555: e8 66 0c 03 00                                  call   0x4a51c0
  0047455a: 8b ce                                           mov    ecx,esi
  0047455c: 66 89 07                                        mov    WORD PTR [edi],ax
  0047455f: e8 4c 0c 03 00                                  call   0x4a51b0
  00474564: 8d 95 f4 fe ff ff                               lea    edx,[ebp-0x10c]
  0047456a: 52                                              push   edx
  0047456b: 8b ce                                           mov    ecx,esi
  0047456d: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00474570: e8 5b 0c 03 00                                  call   0x4a51d0
  00474575: 8b c8                                           mov    ecx,eax
  00474577: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0047457b: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  00474581: 51                                              push   ecx
  00474582: 8b cc                                           mov    ecx,esp
  00474584: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00474587: 50                                              push   eax
  00474588: e8 d7 d4 05 00                                  call   0x4d1a64
  0047458d: 8d 4f 08                                        lea    ecx,[edi+0x8]
  00474590: e8 6b 53 f9 ff                                  call   0x409900
  00474595: 6a 01                                           push   0x1
  00474597: 8d 8d f4 fe ff ff                               lea    ecx,[ebp-0x10c]
  0047459d: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004745a1: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004745a7: 8b ce                                           mov    ecx,esi
  004745a9: e8 82 0d 03 00                                  call   0x4a5330
  004745ae: 8b ce                                           mov    ecx,esi
  004745b0: 89 47 78                                        mov    DWORD PTR [edi+0x78],eax
  004745b3: e8 68 0d 03 00                                  call   0x4a5320
  004745b8: 89 47 7c                                        mov    DWORD PTR [edi+0x7c],eax
  004745bb: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004745be: 57                                              push   edi
  004745bf: 8d 88 04 02 00 00                               lea    ecx,[eax+0x204]
  004745c5: e8 e6 3a 00 00                                  call   0x4780b0
  004745ca: 8b 43 e0                                        mov    eax,DWORD PTR [ebx-0x20]
  004745cd: 83 c6 38                                        add    esi,0x38
  004745d0: 3b f0                                           cmp    esi,eax
  004745d2: 0f 85 51 ff ff ff                               jne    0x474529
  004745d8: 8b 7b cc                                        mov    edi,DWORD PTR [ebx-0x34]
  004745db: 3b 7b d0                                        cmp    edi,DWORD PTR [ebx-0x30]
  004745de: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  004745e1: 0f 84 74 01 00 00                               je     0x47475b
  004745e7: 6a 44                                           push   0x44
  004745e9: e8 02 da fc ff                                  call   0x441ff0
  004745ee: 8b f0                                           mov    esi,eax
  004745f0: 83 c4 04                                        add    esp,0x4
  004745f3: 89 b5 5c ff ff ff                               mov    DWORD PTR [ebp-0xa4],esi
  004745f9: 85 f6                                           test   esi,esi
  004745fb: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004745ff: 74 2d                                           je     0x47462e
  00474601: 8b ce                                           mov    ecx,esi
  00474603: e8 e8 e7 fa ff                                  call   0x422df0
  00474608: 33 c0                                           xor    eax,eax
  0047460a: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0047460d: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00474610: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00474613: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  00474616: c7 06 78 f5 4d 00                               mov    DWORD PTR [esi],0x4df578
  0047461c: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  0047461f: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00474623: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  00474626: 89 b5 5c ff ff ff                               mov    DWORD PTR [ebp-0xa4],esi
  0047462c: eb 0a                                           jmp    0x474638
  0047462e: c7 85 5c ff ff ff 00 00 00 00                   mov    DWORD PTR [ebp-0xa4],0x0
  00474638: 8b cf                                           mov    ecx,edi
  0047463a: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0047463e: e8 cd 10 03 00                                  call   0x4a5710
  00474643: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474646: 89 8d 58 ff ff ff                               mov    DWORD PTR [ebp-0xa8],ecx
  0047464c: 8b cf                                           mov    ecx,edi
  0047464e: e8 bd 10 03 00                                  call   0x4a5710
  00474653: 8b 95 58 ff ff ff                               mov    edx,DWORD PTR [ebp-0xa8]
  00474659: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  0047465c: 0f 84 ae 00 00 00                               je     0x474710
  00474662: 6a 0c                                           push   0xc
  00474664: e8 87 d9 fc ff                                  call   0x441ff0
  00474669: 8b f0                                           mov    esi,eax
  0047466b: 83 c4 04                                        add    esp,0x4
  0047466e: 89 b5 60 ff ff ff                               mov    DWORD PTR [ebp-0xa0],esi
  00474674: 85 f6                                           test   esi,esi
  00474676: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0047467a: 74 18                                           je     0x474694
  0047467c: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0047467f: e8 da d3 05 00                                  call   0x4d1a5e
  00474684: 8d 4e 08                                        lea    ecx,[esi+0x8]
  00474687: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0047468b: e8 ce d3 05 00                                  call   0x4d1a5e
  00474690: 8b fe                                           mov    edi,esi
  00474692: eb 02                                           jmp    0x474696
  00474694: 33 ff                                           xor    edi,edi
  00474696: 6a 02                                           push   0x2
  00474698: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0047469c: e8 4f d9 fc ff                                  call   0x441ff0
  004746a1: 8b 8d 5c ff ff ff                               mov    ecx,DWORD PTR [ebp-0xa4]
  004746a7: 8b f0                                           mov    esi,eax
  004746a9: 83 c4 04                                        add    esp,0x4
  004746ac: 56                                              push   esi
  004746ad: 66 c7 06 00 00                                  mov    WORD PTR [esi],0x0
  004746b2: e8 19 38 00 00                                  call   0x477ed0
  004746b7: 8b 8d 58 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xa8]
  004746bd: 89 37                                           mov    DWORD PTR [edi],esi
  004746bf: e8 ac 1e 03 00                                  call   0x4a6570
  004746c4: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004746c7: 85 c0                                           test   eax,eax
  004746c9: 75 05                                           jne    0x4746d0
  004746cb: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004746d0: 50                                              push   eax
  004746d1: 8d 4f 04                                        lea    ecx,[edi+0x4]
  004746d4: e8 7f d3 05 00                                  call   0x4d1a58
  004746d9: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004746db: 85 c0                                           test   eax,eax
  004746dd: 75 05                                           jne    0x4746e4
  004746df: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004746e4: 50                                              push   eax
  004746e5: 8d 4f 08                                        lea    ecx,[edi+0x8]
  004746e8: e8 6b d3 05 00                                  call   0x4d1a58
  004746ed: 57                                              push   edi
  004746ee: 8d 8d 64 ff ff ff                               lea    ecx,[ebp-0x9c]
  004746f4: e8 f7 3a 00 00                                  call   0x4781f0
  004746f9: 8b 85 58 ff ff ff                               mov    eax,DWORD PTR [ebp-0xa8]
  004746ff: 8b 7d f0                                        mov    edi,DWORD PTR [ebp-0x10]
  00474702: 83 c0 28                                        add    eax,0x28
  00474705: 89 85 58 ff ff ff                               mov    DWORD PTR [ebp-0xa8],eax
  0047470b: e9 3c ff ff ff                                  jmp    0x47464c
  00474710: 8b 85 5c ff ff ff                               mov    eax,DWORD PTR [ebp-0xa4]
  00474716: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00474719: 50                                              push   eax
  0047471a: 81 c1 6c 01 00 00                               add    ecx,0x16c
  00474720: e8 4b 38 00 00                                  call   0x477f70
  00474725: 8b 43 d0                                        mov    eax,DWORD PTR [ebx-0x30]
  00474728: 83 c7 28                                        add    edi,0x28
  0047472b: 3b f8                                           cmp    edi,eax
  0047472d: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00474730: 0f 85 b1 fe ff ff                               jne    0x4745e7
  00474736: eb 23                                           jmp    0x47475b
  00474738: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0047473a: 3b c7                                           cmp    eax,edi
  0047473c: 75 05                                           jne    0x474743
  0047473e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00474743: 8b 53 0c                                        mov    edx,DWORD PTR [ebx+0xc]
  00474746: 52                                              push   edx
  00474747: 50                                              push   eax
  00474748: 8b 43 10                                        mov    eax,DWORD PTR [ebx+0x10]
  0047474b: 50                                              push   eax
  0047474c: 68 7c a1 50 00                                  push   0x50a17c
  00474751: 6a 08                                           push   0x8
  00474753: e8 e8 d5 ff ff                                  call   0x471d40
  00474758: 83 c4 14                                        add    esp,0x14
  0047475b: 8b 8d 04 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xfc]
  00474761: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00474764: 81 c3 10 01 00 00                               add    ebx,0x110
  0047476a: 8d 53 c8                                        lea    edx,[ebx-0x38]
  0047476d: 3b d0                                           cmp    edx,eax
  0047476f: 0f 85 11 fa ff ff                               jne    0x474186
  00474775: 8b 8d 38 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xc8]
  0047477b: 8b 75 cc                                        mov    esi,DWORD PTR [ebp-0x34]
  0047477e: 33 c0                                           xor    eax,eax
  00474780: 33 ff                                           xor    edi,edi
  00474782: 33 d2                                           xor    edx,edx
  00474784: 89 8d 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],ecx
  0047478a: 89 85 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],eax
  00474790: c6 85 48 ff ff ff 08                            mov    BYTE PTR [ebp-0xb8],0x8
  00474797: 89 75 c8                                        mov    DWORD PTR [ebp-0x38],esi
  0047479a: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  0047479d: c6 45 dc 08                                     mov    BYTE PTR [ebp-0x24],0x8
  004747a1: bb 02 00 00 00                                  mov    ebx,0x2
  004747a6: 3b c7                                           cmp    eax,edi
  004747a8: 74 0a                                           je     0x4747b4
  004747aa: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004747ac: 89 8d 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],ecx
  004747b2: eb 0b                                           jmp    0x4747bf
  004747b4: b8 01 00 00 00                                  mov    eax,0x1
  004747b9: 89 85 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],eax
  004747bf: 3b cf                                           cmp    ecx,edi
  004747c1: 0f 84 5e 01 00 00                               je     0x474925
  004747c7: 3b d7                                           cmp    edx,edi
  004747c9: 74 07                                           je     0x4747d2
  004747cb: 8b 36                                           mov    esi,DWORD PTR [esi]
  004747cd: 89 75 c8                                        mov    DWORD PTR [ebp-0x38],esi
  004747d0: eb 08                                           jmp    0x4747da
  004747d2: ba 01 00 00 00                                  mov    edx,0x1
  004747d7: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  004747da: 3b f7                                           cmp    esi,edi
  004747dc: 75 0b                                           jne    0x4747e9
  004747de: 3b d7                                           cmp    edx,edi
  004747e0: 74 04                                           je     0x4747e6
  004747e2: c6 45 dc 07                                     mov    BYTE PTR [ebp-0x24],0x7
  004747e6: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  004747e9: 6a 01                                           push   0x1
  004747eb: 6a 03                                           push   0x3
  004747ed: 8d 4d a8                                        lea    ecx,[ebp-0x58]
  004747f0: e8 2b 32 00 00                                  call   0x477a20
  004747f5: 8b c8                                           mov    ecx,eax
  004747f7: e8 74 d5 fa ff                                  call   0x421d70
  004747fc: 51                                              push   ecx
  004747fd: 8b cc                                           mov    ecx,esp
  004747ff: 89 a5 60 ff ff ff                               mov    DWORD PTR [ebp-0xa0],esp
  00474805: 50                                              push   eax
  00474806: e8 59 d2 05 00                                  call   0x4d1a64
  0047480b: e8 c0 5a 01 00                                  call   0x48a2d0
  00474810: 83 c4 0c                                        add    esp,0xc
  00474813: 66 3b c7                                        cmp    ax,di
  00474816: 74 16                                           je     0x47482e
  00474818: 8b 8d 34 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xcc]
  0047481e: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00474821: 25 ff ff 00 00                                  and    eax,0xffff
  00474826: 89 82 50 01 00 00                               mov    DWORD PTR [edx+0x150],eax
  0047482c: eb 25                                           jmp    0x474853
  0047482e: 8b 85 34 ff ff ff                               mov    eax,DWORD PTR [ebp-0xcc]
  00474834: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00474837: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  0047483a: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  0047483d: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00474840: 52                                              push   edx
  00474841: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00474843: 52                                              push   edx
  00474844: 68 44 a1 50 00                                  push   0x50a144
  00474849: 6a 08                                           push   0x8
  0047484b: e8 f0 d4 ff ff                                  call   0x471d40
  00474850: 83 c4 10                                        add    esp,0x10
  00474853: 8b 55 e0                                        mov    edx,DWORD PTR [ebp-0x20]
  00474856: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  00474859: 8b 4d cc                                        mov    ecx,DWORD PTR [ebp-0x34]
  0047485c: 4a                                              dec    edx
  0047485d: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  00474860: 8b 55 d0                                        mov    edx,DWORD PTR [ebp-0x30]
  00474863: 3b c2                                           cmp    eax,edx
  00474865: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  00474868: 74 37                                           je     0x4748a1
  0047486a: 3b c1                                           cmp    eax,ecx
  0047486c: 74 52                                           je     0x4748c0
  0047486e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00474870: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00474873: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00474876: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  00474879: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0047487c: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047487e: 89 11                                           mov    DWORD PTR [ecx],edx
  00474880: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00474883: 83 f8 01                                        cmp    eax,0x1
  00474886: 75 0b                                           jne    0x474893
  00474888: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  0047488b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0047488e: 89 4d c8                                        mov    DWORD PTR [ebp-0x38],ecx
  00474891: eb 55                                           jmp    0x4748e8
  00474893: 3b c3                                           cmp    eax,ebx
  00474895: 75 51                                           jne    0x4748e8
  00474897: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  0047489a: 8b 02                                           mov    eax,DWORD PTR [edx]
  0047489c: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  0047489f: eb 47                                           jmp    0x4748e8
  004748a1: 3b c1                                           cmp    eax,ecx
  004748a3: 74 1b                                           je     0x4748c0
  004748a5: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004748a8: 89 39                                           mov    DWORD PTR [ecx],edi
  004748aa: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  004748ad: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004748b0: 89 55 d0                                        mov    DWORD PTR [ebp-0x30],edx
  004748b3: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004748b6: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  004748b9: 39 5d e8                                        cmp    DWORD PTR [ebp-0x18],ebx
  004748bc: 75 2a                                           jne    0x4748e8
  004748be: eb 25                                           jmp    0x4748e5
  004748c0: 3b c2                                           cmp    eax,edx
  004748c2: 74 18                                           je     0x4748dc
  004748c4: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004748c6: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  004748c9: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  004748cc: 8b 02                                           mov    eax,DWORD PTR [edx]
  004748ce: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  004748d1: 89 45 cc                                        mov    DWORD PTR [ebp-0x34],eax
  004748d4: 83 7d e8 01                                     cmp    DWORD PTR [ebp-0x18],0x1
  004748d8: 75 0e                                           jne    0x4748e8
  004748da: eb 09                                           jmp    0x4748e5
  004748dc: 89 7d c8                                        mov    DWORD PTR [ebp-0x38],edi
  004748df: 89 7d cc                                        mov    DWORD PTR [ebp-0x34],edi
  004748e2: 89 7d d0                                        mov    DWORD PTR [ebp-0x30],edi
  004748e5: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  004748e8: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004748eb: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  004748ee: 3b f7                                           cmp    esi,edi
  004748f0: 74 10                                           je     0x474902
  004748f2: 8b ce                                           mov    ecx,esi
  004748f4: e8 47 d1 05 00                                  call   0x4d1a40
  004748f9: 56                                              push   esi
  004748fa: e8 61 d7 fc ff                                  call   0x442060
  004748ff: 83 c4 04                                        add    esp,0x4
  00474902: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  00474905: 51                                              push   ecx
  00474906: e8 55 d7 fc ff                                  call   0x442060
  0047490b: 8b 8d 34 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xcc]
  00474911: 8b 85 54 ff ff ff                               mov    eax,DWORD PTR [ebp-0xac]
  00474917: 8b 75 c8                                        mov    esi,DWORD PTR [ebp-0x38]
  0047491a: 8b 55 e8                                        mov    edx,DWORD PTR [ebp-0x18]
  0047491d: 83 c4 04                                        add    esp,0x4
  00474920: e9 81 fe ff ff                                  jmp    0x4747a6
  00474925: 3b c7                                           cmp    eax,edi
  00474927: 74 07                                           je     0x474930
  00474929: c6 85 48 ff ff ff 07                            mov    BYTE PTR [ebp-0xb8],0x7
  00474930: 8b 45 88                                        mov    eax,DWORD PTR [ebp-0x78]
  00474933: 33 c9                                           xor    ecx,ecx
  00474935: 89 bd 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],edi
  0047493b: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  0047493e: 89 4d a4                                        mov    DWORD PTR [ebp-0x5c],ecx
  00474941: c6 45 98 08                                     mov    BYTE PTR [ebp-0x68],0x8
  00474945: 3b cf                                           cmp    ecx,edi
  00474947: 74 07                                           je     0x474950
  00474949: 8b 00                                           mov    eax,DWORD PTR [eax]
  0047494b: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  0047494e: eb 08                                           jmp    0x474958
  00474950: b9 01 00 00 00                                  mov    ecx,0x1
  00474955: 89 4d a4                                        mov    DWORD PTR [ebp-0x5c],ecx
  00474958: 3b c7                                           cmp    eax,edi
  0047495a: 0f 84 22 01 00 00                               je     0x474a82
  00474960: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  00474963: 6a 01                                           push   0x1
  00474965: 6a 03                                           push   0x3
  00474967: 51                                              push   ecx
  00474968: 8d 5e 04                                        lea    ebx,[esi+0x4]
  0047496b: 8b cc                                           mov    ecx,esp
  0047496d: 89 a5 60 ff ff ff                               mov    DWORD PTR [ebp-0xa0],esp
  00474973: 53                                              push   ebx
  00474974: e8 d3 d0 05 00                                  call   0x4d1a4c
  00474979: e8 52 59 01 00                                  call   0x48a2d0
  0047497e: 8b 16                                           mov    edx,DWORD PTR [esi]
  00474980: 66 89 02                                        mov    WORD PTR [edx],ax
  00474983: 8b 06                                           mov    eax,DWORD PTR [esi]
  00474985: 83 c4 0c                                        add    esp,0xc
  00474988: 66 39 38                                        cmp    WORD PTR [eax],di
  0047498b: 75 16                                           jne    0x4749a3
  0047498d: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  00474990: 8b 1b                                           mov    ebx,DWORD PTR [ebx]
  00474992: 56                                              push   esi
  00474993: 53                                              push   ebx
  00474994: 68 08 a1 50 00                                  push   0x50a108
  00474999: 6a 08                                           push   0x8
  0047499b: e8 a0 d3 ff ff                                  call   0x471d40
  004749a0: 83 c4 10                                        add    esp,0x10
  004749a3: 8b 55 9c                                        mov    edx,DWORD PTR [ebp-0x64]
  004749a6: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  004749a9: 8b 4d 88                                        mov    ecx,DWORD PTR [ebp-0x78]
  004749ac: 4a                                              dec    edx
  004749ad: 89 55 9c                                        mov    DWORD PTR [ebp-0x64],edx
  004749b0: 8b 55 8c                                        mov    edx,DWORD PTR [ebp-0x74]
  004749b3: 3b c2                                           cmp    eax,edx
  004749b5: 89 45 90                                        mov    DWORD PTR [ebp-0x70],eax
  004749b8: 74 38                                           je     0x4749f2
  004749ba: 3b c1                                           cmp    eax,ecx
  004749bc: 74 54                                           je     0x474a12
  004749be: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004749c0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004749c3: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004749c6: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  004749c9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004749cc: 8b 10                                           mov    edx,DWORD PTR [eax]
  004749ce: 89 11                                           mov    DWORD PTR [ecx],edx
  004749d0: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  004749d3: 83 f8 01                                        cmp    eax,0x1
  004749d6: 75 0b                                           jne    0x4749e3
  004749d8: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  004749db: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004749de: 89 4d 84                                        mov    DWORD PTR [ebp-0x7c],ecx
  004749e1: eb 57                                           jmp    0x474a3a
  004749e3: 83 f8 02                                        cmp    eax,0x2
  004749e6: 75 52                                           jne    0x474a3a
  004749e8: 8b 55 84                                        mov    edx,DWORD PTR [ebp-0x7c]
  004749eb: 8b 02                                           mov    eax,DWORD PTR [edx]
  004749ed: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  004749f0: eb 48                                           jmp    0x474a3a
  004749f2: 3b c1                                           cmp    eax,ecx
  004749f4: 74 1c                                           je     0x474a12
  004749f6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004749f9: 89 39                                           mov    DWORD PTR [ecx],edi
  004749fb: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  004749fe: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00474a01: 89 55 8c                                        mov    DWORD PTR [ebp-0x74],edx
  00474a04: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474a07: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  00474a0a: 83 7d a4 02                                     cmp    DWORD PTR [ebp-0x5c],0x2
  00474a0e: 75 2a                                           jne    0x474a3a
  00474a10: eb 25                                           jmp    0x474a37
  00474a12: 3b c2                                           cmp    eax,edx
  00474a14: 74 18                                           je     0x474a2e
  00474a16: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00474a18: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00474a1b: 8b 55 84                                        mov    edx,DWORD PTR [ebp-0x7c]
  00474a1e: 8b 02                                           mov    eax,DWORD PTR [edx]
  00474a20: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  00474a23: 89 45 88                                        mov    DWORD PTR [ebp-0x78],eax
  00474a26: 83 7d a4 01                                     cmp    DWORD PTR [ebp-0x5c],0x1
  00474a2a: 75 0e                                           jne    0x474a3a
  00474a2c: eb 09                                           jmp    0x474a37
  00474a2e: 89 7d 84                                        mov    DWORD PTR [ebp-0x7c],edi
  00474a31: 89 7d 88                                        mov    DWORD PTR [ebp-0x78],edi
  00474a34: 89 7d 8c                                        mov    DWORD PTR [ebp-0x74],edi
  00474a37: 89 7d a4                                        mov    DWORD PTR [ebp-0x5c],edi
  00474a3a: 8b 45 90                                        mov    eax,DWORD PTR [ebp-0x70]
  00474a3d: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  00474a40: 3b f7                                           cmp    esi,edi
  00474a42: 89 b5 60 ff ff ff                               mov    DWORD PTR [ebp-0xa0],esi
  00474a48: 74 21                                           je     0x474a6b
  00474a4a: 8d 4e 08                                        lea    ecx,[esi+0x8]
  00474a4d: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  00474a51: e8 ea cf 05 00                                  call   0x4d1a40
  00474a56: 8d 4e 04                                        lea    ecx,[esi+0x4]
  00474a59: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00474a5d: e8 de cf 05 00                                  call   0x4d1a40
  00474a62: 56                                              push   esi
  00474a63: e8 f8 d5 fc ff                                  call   0x442060
  00474a68: 83 c4 04                                        add    esp,0x4
  00474a6b: 8b 4d 90                                        mov    ecx,DWORD PTR [ebp-0x70]
  00474a6e: 51                                              push   ecx
  00474a6f: e8 ec d5 fc ff                                  call   0x442060
  00474a74: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  00474a77: 8b 4d a4                                        mov    ecx,DWORD PTR [ebp-0x5c]
  00474a7a: 83 c4 04                                        add    esp,0x4
  00474a7d: e9 c3 fe ff ff                                  jmp    0x474945
  00474a82: 3b cf                                           cmp    ecx,edi
  00474a84: 74 04                                           je     0x474a8a
  00474a86: c6 45 98 07                                     mov    BYTE PTR [ebp-0x68],0x7
  00474a8a: 89 7d a4                                        mov    DWORD PTR [ebp-0x5c],edi
  00474a8d: e8 be 2a fc ff                                  call   0x437550
  00474a92: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00474a95: 8b cb                                           mov    ecx,ebx
  00474a97: e8 d4 8b 02 00                                  call   0x49d670
  00474a9c: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  00474a9f: 8b cb                                           mov    ecx,ebx
  00474aa1: e8 ca 8b 02 00                                  call   0x49d670
  00474aa6: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  00474aa9: 0f 84 20 02 00 00                               je     0x474ccf
  00474aaf: eb 02                                           jmp    0x474ab3
  00474ab1: 33 ff                                           xor    edi,edi
  00474ab3: 6a 01                                           push   0x1
  00474ab5: 6a 03                                           push   0x3
  00474ab7: 8b ce                                           mov    ecx,esi
  00474ab9: e8 02 20 03 00                                  call   0x4a6ac0
  00474abe: 8b c8                                           mov    ecx,eax
  00474ac0: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  00474ac6: 51                                              push   ecx
  00474ac7: 8b cc                                           mov    ecx,esp
  00474ac9: 89 a5 60 ff ff ff                               mov    DWORD PTR [ebp-0xa0],esp
  00474acf: 50                                              push   eax
  00474ad0: e8 8f cf 05 00                                  call   0x4d1a64
  00474ad5: e8 f6 57 01 00                                  call   0x48a2d0
  00474ada: 83 c4 0c                                        add    esp,0xc
  00474add: 8b d8                                           mov    ebx,eax
  00474adf: 66 3b df                                        cmp    bx,di
  00474ae2: 0f 84 8d 01 00 00                               je     0x474c75
  00474ae8: 8d 95 64 fe ff ff                               lea    edx,[ebp-0x19c]
  00474aee: 52                                              push   edx
  00474aef: 8b ce                                           mov    ecx,esi
  00474af1: e8 9a 1f 03 00                                  call   0x4a6a90
  00474af6: 66 8b 40 08                                     mov    ax,WORD PTR [eax+0x8]
  00474afa: 50                                              push   eax
  00474afb: e8 c0 d3 ff ff                                  call   0x471ec0
  00474b00: 8b f8                                           mov    edi,eax
  00474b02: 83 c4 04                                        add    esp,0x4
  00474b05: 85 ff                                           test   edi,edi
  00474b07: 0f 84 0b 01 00 00                               je     0x474c18
  00474b0d: 8d 8d ac fe ff ff                               lea    ecx,[ebp-0x154]
  00474b13: 51                                              push   ecx
  00474b14: 8b ce                                           mov    ecx,esi
  00474b16: e8 75 1f 03 00                                  call   0x4a6a90
  00474b1b: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474b1d: 8d 85 94 fe ff ff                               lea    eax,[ebp-0x16c]
  00474b23: 50                                              push   eax
  00474b24: 8b ce                                           mov    ecx,esi
  00474b26: 89 95 08 ff ff ff                               mov    DWORD PTR [ebp-0xf8],edx
  00474b2c: e8 5f 1f 03 00                                  call   0x4a6a90
  00474b31: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474b34: 8d 95 7c fe ff ff                               lea    edx,[ebp-0x184]
  00474b3a: 89 8d 0c ff ff ff                               mov    DWORD PTR [ebp-0xf4],ecx
  00474b40: 52                                              push   edx
  00474b41: 8b ce                                           mov    ecx,esi
  00474b43: e8 48 1f 03 00                                  call   0x4a6a90
  00474b48: 8b 95 08 ff ff ff                               mov    edx,DWORD PTR [ebp-0xf8]
  00474b4e: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00474b51: 33 c9                                           xor    ecx,ecx
  00474b53: 66 8b 4f 2c                                     mov    cx,WORD PTR [edi+0x2c]
  00474b57: 3b d1                                           cmp    edx,ecx
  00474b59: 0f 8d b9 00 00 00                               jge    0x474c18
  00474b5f: 8b 8d 0c ff ff ff                               mov    ecx,DWORD PTR [ebp-0xf4]
  00474b65: 33 d2                                           xor    edx,edx
  00474b67: 66 8b 57 2e                                     mov    dx,WORD PTR [edi+0x2e]
  00474b6b: 3b ca                                           cmp    ecx,edx
  00474b6d: 0f 8d a5 00 00 00                               jge    0x474c18
  00474b73: 8b 95 08 ff ff ff                               mov    edx,DWORD PTR [ebp-0xf8]
  00474b79: 85 d2                                           test   edx,edx
  00474b7b: 0f 8c 97 00 00 00                               jl     0x474c18
  00474b81: 85 c9                                           test   ecx,ecx
  00474b83: 0f 8c 8f 00 00 00                               jl     0x474c18
  00474b89: 6a 00                                           push   0x0
  00474b8b: 6a 00                                           push   0x0
  00474b8d: 83 ec 0c                                        sub    esp,0xc
  00474b90: 8b cc                                           mov    ecx,esp
  00474b92: 89 11                                           mov    DWORD PTR [ecx],edx
  00474b94: 8b 95 0c ff ff ff                               mov    edx,DWORD PTR [ebp-0xf4]
  00474b9a: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00474b9d: 81 e3 ff ff 00 00                               and    ebx,0xffff
  00474ba3: 53                                              push   ebx
  00474ba4: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00474ba7: 6a 03                                           push   0x3
  00474ba9: 8b cf                                           mov    ecx,edi
  00474bab: e8 50 b3 03 00                                  call   0x4aff00
  00474bb0: 85 c0                                           test   eax,eax
  00474bb2: 0f 85 01 01 00 00                               jne    0x474cb9
  00474bb8: 8b ce                                           mov    ecx,esi
  00474bba: e8 01 1f 03 00                                  call   0x4a6ac0
  00474bbf: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474bc2: 85 c0                                           test   eax,eax
  00474bc4: 8b 3d d8 e4 4d 00                               mov    edi,DWORD PTR ds:0x4de4d8
  00474bca: 74 02                                           je     0x474bce
  00474bcc: 8b f8                                           mov    edi,eax
  00474bce: 8d 85 e8 fe ff ff                               lea    eax,[ebp-0x118]
  00474bd4: 50                                              push   eax
  00474bd5: 8b ce                                           mov    ecx,esi
  00474bd7: e8 b4 1e 03 00                                  call   0x4a6a90
  00474bdc: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00474bdf: 51                                              push   ecx
  00474be0: 8d 95 d0 fe ff ff                               lea    edx,[ebp-0x130]
  00474be6: 52                                              push   edx
  00474be7: 8b ce                                           mov    ecx,esi
  00474be9: e8 a2 1e 03 00                                  call   0x4a6a90
  00474bee: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474bf1: 50                                              push   eax
  00474bf2: 8d 8d 70 fe ff ff                               lea    ecx,[ebp-0x190]
  00474bf8: 51                                              push   ecx
  00474bf9: 8b ce                                           mov    ecx,esi
  00474bfb: e8 90 1e 03 00                                  call   0x4a6a90
  00474c00: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474c02: 52                                              push   edx
  00474c03: 57                                              push   edi
  00474c04: 68 d4 a0 50 00                                  push   0x50a0d4
  00474c09: 6a 08                                           push   0x8
  00474c0b: e8 30 d1 ff ff                                  call   0x471d40
  00474c10: 83 c4 18                                        add    esp,0x18
  00474c13: e9 a1 00 00 00                                  jmp    0x474cb9
  00474c18: 8b ce                                           mov    ecx,esi
  00474c1a: e8 a1 1e 03 00                                  call   0x4a6ac0
  00474c1f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474c22: 85 c0                                           test   eax,eax
  00474c24: 8b 3d d8 e4 4d 00                               mov    edi,DWORD PTR ds:0x4de4d8
  00474c2a: 74 02                                           je     0x474c2e
  00474c2c: 8b f8                                           mov    edi,eax
  00474c2e: 8d 85 b8 fe ff ff                               lea    eax,[ebp-0x148]
  00474c34: 50                                              push   eax
  00474c35: 8b ce                                           mov    ecx,esi
  00474c37: e8 54 1e 03 00                                  call   0x4a6a90
  00474c3c: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00474c3f: 51                                              push   ecx
  00474c40: 8d 95 88 fe ff ff                               lea    edx,[ebp-0x178]
  00474c46: 52                                              push   edx
  00474c47: 8b ce                                           mov    ecx,esi
  00474c49: e8 42 1e 03 00                                  call   0x4a6a90
  00474c4e: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474c51: 50                                              push   eax
  00474c52: 8d 8d a0 fe ff ff                               lea    ecx,[ebp-0x160]
  00474c58: 51                                              push   ecx
  00474c59: 8b ce                                           mov    ecx,esi
  00474c5b: e8 30 1e 03 00                                  call   0x4a6a90
  00474c60: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474c62: 52                                              push   edx
  00474c63: 57                                              push   edi
  00474c64: 68 98 a0 50 00                                  push   0x50a098
  00474c69: 6a 08                                           push   0x8
  00474c6b: e8 d0 d0 ff ff                                  call   0x471d40
  00474c70: 83 c4 18                                        add    esp,0x18
  00474c73: eb 44                                           jmp    0x474cb9
  00474c75: 8d 85 dc fe ff ff                               lea    eax,[ebp-0x124]
  00474c7b: 50                                              push   eax
  00474c7c: 8b ce                                           mov    ecx,esi
  00474c7e: e8 0d 1e 03 00                                  call   0x4a6a90
  00474c83: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00474c86: 51                                              push   ecx
  00474c87: 8d 95 c4 fe ff ff                               lea    edx,[ebp-0x13c]
  00474c8d: 52                                              push   edx
  00474c8e: 8b ce                                           mov    ecx,esi
  00474c90: e8 fb 1d 03 00                                  call   0x4a6a90
  00474c95: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474c98: 50                                              push   eax
  00474c99: 8d 8d f8 fe ff ff                               lea    ecx,[ebp-0x108]
  00474c9f: 51                                              push   ecx
  00474ca0: 8b ce                                           mov    ecx,esi
  00474ca2: e8 e9 1d 03 00                                  call   0x4a6a90
  00474ca7: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474ca9: 52                                              push   edx
  00474caa: 68 5c a0 50 00                                  push   0x50a05c
  00474caf: 6a 08                                           push   0x8
  00474cb1: e8 8a d0 ff ff                                  call   0x471d40
  00474cb6: 83 c4 14                                        add    esp,0x14
  00474cb9: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00474cbc: 83 c6 38                                        add    esi,0x38
  00474cbf: e8 ac 89 02 00                                  call   0x49d670
  00474cc4: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  00474cc7: 0f 85 e4 fd ff ff                               jne    0x474ab1
  00474ccd: 33 ff                                           xor    edi,edi
  00474ccf: 8b 55 88                                        mov    edx,DWORD PTR [ebp-0x78]
  00474cd2: 8b c2                                           mov    eax,edx
  00474cd4: 33 c9                                           xor    ecx,ecx
  00474cd6: c7 85 64 ff ff ff 88 f5 4d 00                   mov    DWORD PTR [ebp-0x9c],0x4df588
  00474ce0: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  00474ce3: 89 4d a4                                        mov    DWORD PTR [ebp-0x5c],ecx
  00474ce6: c6 45 98 08                                     mov    BYTE PTR [ebp-0x68],0x8
  00474cea: 3b cf                                           cmp    ecx,edi
  00474cec: 74 07                                           je     0x474cf5
  00474cee: 8b 00                                           mov    eax,DWORD PTR [eax]
  00474cf0: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  00474cf3: eb 08                                           jmp    0x474cfd
  00474cf5: b9 01 00 00 00                                  mov    ecx,0x1
  00474cfa: 89 4d a4                                        mov    DWORD PTR [ebp-0x5c],ecx
  00474cfd: 3b c7                                           cmp    eax,edi
  00474cff: 0f 84 ab 00 00 00                               je     0x474db0
  00474d05: 8b 5d 9c                                        mov    ebx,DWORD PTR [ebp-0x64]
  00474d08: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  00474d0b: 4b                                              dec    ebx
  00474d0c: 3b c1                                           cmp    eax,ecx
  00474d0e: 89 45 90                                        mov    DWORD PTR [ebp-0x70],eax
  00474d11: 89 5d 9c                                        mov    DWORD PTR [ebp-0x64],ebx
  00474d14: 74 38                                           je     0x474d4e
  00474d16: 3b c2                                           cmp    eax,edx
  00474d18: 74 54                                           je     0x474d6e
  00474d1a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00474d1c: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00474d1f: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00474d22: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  00474d25: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474d28: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474d2a: 89 11                                           mov    DWORD PTR [ecx],edx
  00474d2c: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00474d2f: 83 f8 01                                        cmp    eax,0x1
  00474d32: 75 0b                                           jne    0x474d3f
  00474d34: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  00474d37: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474d3a: 89 4d 84                                        mov    DWORD PTR [ebp-0x7c],ecx
  00474d3d: eb 57                                           jmp    0x474d96
  00474d3f: 83 f8 02                                        cmp    eax,0x2
  00474d42: 75 52                                           jne    0x474d96
  00474d44: 8b 55 84                                        mov    edx,DWORD PTR [ebp-0x7c]
  00474d47: 8b 02                                           mov    eax,DWORD PTR [edx]
  00474d49: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  00474d4c: eb 48                                           jmp    0x474d96
  00474d4e: 3b c2                                           cmp    eax,edx
  00474d50: 74 1c                                           je     0x474d6e
  00474d52: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474d55: 89 39                                           mov    DWORD PTR [ecx],edi
  00474d57: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  00474d5a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00474d5d: 89 55 8c                                        mov    DWORD PTR [ebp-0x74],edx
  00474d60: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474d63: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  00474d66: 83 7d a4 02                                     cmp    DWORD PTR [ebp-0x5c],0x2
  00474d6a: 75 2a                                           jne    0x474d96
  00474d6c: eb 25                                           jmp    0x474d93
  00474d6e: 3b c1                                           cmp    eax,ecx
  00474d70: 74 18                                           je     0x474d8a
  00474d72: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00474d74: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00474d77: 8b 55 84                                        mov    edx,DWORD PTR [ebp-0x7c]
  00474d7a: 8b 02                                           mov    eax,DWORD PTR [edx]
  00474d7c: 89 45 84                                        mov    DWORD PTR [ebp-0x7c],eax
  00474d7f: 89 45 88                                        mov    DWORD PTR [ebp-0x78],eax
  00474d82: 83 7d a4 01                                     cmp    DWORD PTR [ebp-0x5c],0x1
  00474d86: 75 0e                                           jne    0x474d96
  00474d88: eb 09                                           jmp    0x474d93
  00474d8a: 89 7d 84                                        mov    DWORD PTR [ebp-0x7c],edi
  00474d8d: 89 7d 88                                        mov    DWORD PTR [ebp-0x78],edi
  00474d90: 89 7d 8c                                        mov    DWORD PTR [ebp-0x74],edi
  00474d93: 89 7d a4                                        mov    DWORD PTR [ebp-0x5c],edi
  00474d96: 8b 45 90                                        mov    eax,DWORD PTR [ebp-0x70]
  00474d99: 50                                              push   eax
  00474d9a: e8 c1 d2 fc ff                                  call   0x442060
  00474d9f: 8b 45 84                                        mov    eax,DWORD PTR [ebp-0x7c]
  00474da2: 8b 55 88                                        mov    edx,DWORD PTR [ebp-0x78]
  00474da5: 8b 4d a4                                        mov    ecx,DWORD PTR [ebp-0x5c]
  00474da8: 83 c4 04                                        add    esp,0x4
  00474dab: e9 3a ff ff ff                                  jmp    0x474cea
  00474db0: 3b cf                                           cmp    ecx,edi
  00474db2: 74 04                                           je     0x474db8
  00474db4: c6 45 98 07                                     mov    BYTE PTR [ebp-0x68],0x7
  00474db8: 8b 35 e0 e0 4d 00                               mov    esi,DWORD PTR ds:0x4de0e0
  00474dbe: 8d 8d 6c ff ff ff                               lea    ecx,[ebp-0x94]
  00474dc4: bb 8c e5 4d 00                                  mov    ebx,0x4de58c
  00474dc9: 51                                              push   ecx
  00474dca: 89 7d a4                                        mov    DWORD PTR [ebp-0x5c],edi
  00474dcd: 89 9d 64 ff ff ff                               mov    DWORD PTR [ebp-0x9c],ebx
  00474dd3: ff d6                                           call   esi
  00474dd5: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  00474dd8: 8b c2                                           mov    eax,edx
  00474dda: 33 c9                                           xor    ecx,ecx
  00474ddc: c7 45 a8 98 f5 4d 00                            mov    DWORD PTR [ebp-0x58],0x4df598
  00474de3: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  00474de6: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  00474de9: c6 45 dc 08                                     mov    BYTE PTR [ebp-0x24],0x8
  00474ded: 3b cf                                           cmp    ecx,edi
  00474def: 74 07                                           je     0x474df8
  00474df1: 8b 00                                           mov    eax,DWORD PTR [eax]
  00474df3: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  00474df6: eb 08                                           jmp    0x474e00
  00474df8: b9 01 00 00 00                                  mov    ecx,0x1
  00474dfd: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  00474e00: 3b c7                                           cmp    eax,edi
  00474e02: 0f 84 a7 00 00 00                               je     0x474eaf
  00474e08: ff 4d e0                                        dec    DWORD PTR [ebp-0x20]
  00474e0b: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  00474e0e: 3b c1                                           cmp    eax,ecx
  00474e10: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  00474e13: 74 38                                           je     0x474e4d
  00474e15: 3b c2                                           cmp    eax,edx
  00474e17: 74 54                                           je     0x474e6d
  00474e19: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474e1b: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474e1e: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00474e21: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  00474e24: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474e27: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474e29: 89 11                                           mov    DWORD PTR [ecx],edx
  00474e2b: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00474e2e: 83 f8 01                                        cmp    eax,0x1
  00474e31: 75 0b                                           jne    0x474e3e
  00474e33: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  00474e36: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474e39: 89 4d c8                                        mov    DWORD PTR [ebp-0x38],ecx
  00474e3c: eb 57                                           jmp    0x474e95
  00474e3e: 83 f8 02                                        cmp    eax,0x2
  00474e41: 75 52                                           jne    0x474e95
  00474e43: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  00474e46: 8b 02                                           mov    eax,DWORD PTR [edx]
  00474e48: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  00474e4b: eb 48                                           jmp    0x474e95
  00474e4d: 3b c2                                           cmp    eax,edx
  00474e4f: 74 1c                                           je     0x474e6d
  00474e51: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474e54: 89 39                                           mov    DWORD PTR [ecx],edi
  00474e56: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  00474e59: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00474e5c: 89 55 d0                                        mov    DWORD PTR [ebp-0x30],edx
  00474e5f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474e62: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  00474e65: 83 7d e8 02                                     cmp    DWORD PTR [ebp-0x18],0x2
  00474e69: 75 2a                                           jne    0x474e95
  00474e6b: eb 25                                           jmp    0x474e92
  00474e6d: 3b c1                                           cmp    eax,ecx
  00474e6f: 74 18                                           je     0x474e89
  00474e71: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00474e73: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00474e76: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  00474e79: 8b 02                                           mov    eax,DWORD PTR [edx]
  00474e7b: 89 45 c8                                        mov    DWORD PTR [ebp-0x38],eax
  00474e7e: 89 45 cc                                        mov    DWORD PTR [ebp-0x34],eax
  00474e81: 83 7d e8 01                                     cmp    DWORD PTR [ebp-0x18],0x1
  00474e85: 75 0e                                           jne    0x474e95
  00474e87: eb 09                                           jmp    0x474e92
  00474e89: 89 7d c8                                        mov    DWORD PTR [ebp-0x38],edi
  00474e8c: 89 7d cc                                        mov    DWORD PTR [ebp-0x34],edi
  00474e8f: 89 7d d0                                        mov    DWORD PTR [ebp-0x30],edi
  00474e92: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00474e95: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  00474e98: 50                                              push   eax
  00474e99: e8 c2 d1 fc ff                                  call   0x442060
  00474e9e: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  00474ea1: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  00474ea4: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00474ea7: 83 c4 04                                        add    esp,0x4
  00474eaa: e9 3e ff ff ff                                  jmp    0x474ded
  00474eaf: 3b cf                                           cmp    ecx,edi
  00474eb1: 74 04                                           je     0x474eb7
  00474eb3: c6 45 dc 07                                     mov    BYTE PTR [ebp-0x24],0x7
  00474eb7: 8d 4d b0                                        lea    ecx,[ebp-0x50]
  00474eba: 51                                              push   ecx
  00474ebb: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00474ebe: 89 5d a8                                        mov    DWORD PTR [ebp-0x58],ebx
  00474ec1: ff d6                                           call   esi
  00474ec3: 8b 95 38 ff ff ff                               mov    edx,DWORD PTR [ebp-0xc8]
  00474ec9: 8b c2                                           mov    eax,edx
  00474ecb: 33 c9                                           xor    ecx,ecx
  00474ecd: c7 85 14 ff ff ff e4 ee 4d 00                   mov    DWORD PTR [ebp-0xec],0x4deee4
  00474ed7: 89 85 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],eax
  00474edd: 89 8d 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],ecx
  00474ee3: c6 85 48 ff ff ff 08                            mov    BYTE PTR [ebp-0xb8],0x8
  00474eea: 3b cf                                           cmp    ecx,edi
  00474eec: 74 0a                                           je     0x474ef8
  00474eee: 8b 00                                           mov    eax,DWORD PTR [eax]
  00474ef0: 89 85 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],eax
  00474ef6: eb 0b                                           jmp    0x474f03
  00474ef8: b9 01 00 00 00                                  mov    ecx,0x1
  00474efd: 89 8d 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],ecx
  00474f03: 3b c7                                           cmp    eax,edi
  00474f05: 0f 84 f5 00 00 00                               je     0x475000
  00474f0b: ff 8d 4c ff ff ff                               dec    DWORD PTR [ebp-0xb4]
  00474f11: 8b 8d 3c ff ff ff                               mov    ecx,DWORD PTR [ebp-0xc4]
  00474f17: 3b c1                                           cmp    eax,ecx
  00474f19: 89 85 40 ff ff ff                               mov    DWORD PTR [ebp-0xc0],eax
  00474f1f: 74 4d                                           je     0x474f6e
  00474f21: 3b c2                                           cmp    eax,edx
  00474f23: 74 75                                           je     0x474f9a
  00474f25: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474f27: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474f2a: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00474f2d: 8b 85 34 ff ff ff                               mov    eax,DWORD PTR [ebp-0xcc]
  00474f33: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474f36: 8b 10                                           mov    edx,DWORD PTR [eax]
  00474f38: 89 11                                           mov    DWORD PTR [ecx],edx
  00474f3a: 8b 85 54 ff ff ff                               mov    eax,DWORD PTR [ebp-0xac]
  00474f40: 83 f8 01                                        cmp    eax,0x1
  00474f43: 75 14                                           jne    0x474f59
  00474f45: 8b 85 34 ff ff ff                               mov    eax,DWORD PTR [ebp-0xcc]
  00474f4b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474f4e: 89 8d 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],ecx
  00474f54: e9 81 00 00 00                                  jmp    0x474fda
  00474f59: 83 f8 02                                        cmp    eax,0x2
  00474f5c: 75 7c                                           jne    0x474fda
  00474f5e: 8b 95 34 ff ff ff                               mov    edx,DWORD PTR [ebp-0xcc]
  00474f64: 8b 02                                           mov    eax,DWORD PTR [edx]
  00474f66: 89 85 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],eax
  00474f6c: eb 6c                                           jmp    0x474fda
  00474f6e: 3b c2                                           cmp    eax,edx
  00474f70: 74 28                                           je     0x474f9a
  00474f72: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00474f75: 89 39                                           mov    DWORD PTR [ecx],edi
  00474f77: 8b 85 34 ff ff ff                               mov    eax,DWORD PTR [ebp-0xcc]
  00474f7d: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00474f80: 89 95 3c ff ff ff                               mov    DWORD PTR [ebp-0xc4],edx
  00474f86: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00474f89: 89 85 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],eax
  00474f8f: 83 bd 54 ff ff ff 02                            cmp    DWORD PTR [ebp-0xac],0x2
  00474f96: 75 42                                           jne    0x474fda
  00474f98: eb 3a                                           jmp    0x474fd4
  00474f9a: 3b c1                                           cmp    eax,ecx
  00474f9c: 74 24                                           je     0x474fc2
  00474f9e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00474fa0: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00474fa3: 8b 95 34 ff ff ff                               mov    edx,DWORD PTR [ebp-0xcc]
  00474fa9: 8b 02                                           mov    eax,DWORD PTR [edx]
  00474fab: 89 85 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],eax
  00474fb1: 89 85 38 ff ff ff                               mov    DWORD PTR [ebp-0xc8],eax
  00474fb7: 83 bd 54 ff ff ff 01                            cmp    DWORD PTR [ebp-0xac],0x1
  00474fbe: 75 1a                                           jne    0x474fda
  00474fc0: eb 12                                           jmp    0x474fd4
  00474fc2: 89 bd 34 ff ff ff                               mov    DWORD PTR [ebp-0xcc],edi
  00474fc8: 89 bd 38 ff ff ff                               mov    DWORD PTR [ebp-0xc8],edi
  00474fce: 89 bd 3c ff ff ff                               mov    DWORD PTR [ebp-0xc4],edi
  00474fd4: 89 bd 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],edi
  00474fda: 8b 85 40 ff ff ff                               mov    eax,DWORD PTR [ebp-0xc0]
  00474fe0: 50                                              push   eax
  00474fe1: e8 7a d0 fc ff                                  call   0x442060
  00474fe6: 8b 95 38 ff ff ff                               mov    edx,DWORD PTR [ebp-0xc8]
  00474fec: 8b 85 34 ff ff ff                               mov    eax,DWORD PTR [ebp-0xcc]
  00474ff2: 8b 8d 54 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xac]
  00474ff8: 83 c4 04                                        add    esp,0x4
  00474ffb: e9 ea fe ff ff                                  jmp    0x474eea
  00475000: 3b cf                                           cmp    ecx,edi
  00475002: 74 07                                           je     0x47500b
  00475004: c6 85 48 ff ff ff 07                            mov    BYTE PTR [ebp-0xb8],0x7
  0047500b: 8d 8d 1c ff ff ff                               lea    ecx,[ebp-0xe4]
  00475011: 51                                              push   ecx
  00475012: 89 bd 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],edi
  00475018: 89 9d 14 ff ff ff                               mov    DWORD PTR [ebp-0xec],ebx
  0047501e: ff d6                                           call   esi
  00475020: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00475023: 5f                                              pop    edi
  00475024: 5e                                              pop    esi
  00475025: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0047502c: 5b                                              pop    ebx
  0047502d: 8b e5                                           mov    esp,ebp
  0047502f: 5d                                              pop    ebp
  00475030: c2 04 00                                        ret    0x4
  00476220: c3                                              ret
  00479e50: e9 eb 7b 05 00                                  jmp    0x4d1a40
  00485100: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00485102: 50                                              push   eax
  00485103: e8 58 cf fb ff                                  call   0x442060
  00485108: 59                                              pop    ecx
  00485109: c3                                              ret
  00488450: 53                                              push   ebx
  00488451: 8b d9                                           mov    ebx,ecx
  00488453: 56                                              push   esi
  00488454: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  00488457: 33 c0                                           xor    eax,eax
  00488459: 3b f0                                           cmp    esi,eax
  0048845b: 74 25                                           je     0x488482
  0048845d: 57                                              push   edi
  0048845e: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00488461: 3b f7                                           cmp    esi,edi
  00488463: 74 0e                                           je     0x488473
  00488465: 8b ce                                           mov    ecx,esi
  00488467: e8 d4 95 04 00                                  call   0x4d1a40
  0048846c: 83 c6 04                                        add    esi,0x4
  0048846f: 3b f7                                           cmp    esi,edi
  00488471: 75 f2                                           jne    0x488465
  00488473: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00488476: 50                                              push   eax
  00488477: e8 e4 9b fb ff                                  call   0x442060
  0048847c: 83 c4 04                                        add    esp,0x4
  0048847f: 33 c0                                           xor    eax,eax
  00488481: 5f                                              pop    edi
  00488482: 5e                                              pop    esi
  00488483: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00488486: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00488489: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0048848c: 5b                                              pop    ebx
  0048848d: c3                                              ret
  00488490: 55                                              push   ebp
  00488491: 8b ec                                           mov    ebp,esp
  00488493: 51                                              push   ecx
  00488494: 56                                              push   esi
  00488495: 8b f1                                           mov    esi,ecx
  00488497: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048849a: 85 c0                                           test   eax,eax
  0048849c: 74 0c                                           je     0x4884aa
  0048849e: 50                                              push   eax
  0048849f: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004884a2: e8 b9 9b fb ff                                  call   0x442060
  004884a7: 83 c4 04                                        add    esp,0x4
  004884aa: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004884b1: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004884b8: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004884bf: 5e                                              pop    esi
  004884c0: 8b e5                                           mov    esp,ebp
  004884c2: 5d                                              pop    ebp
  004884c3: c3                                              ret
  0048e34b: a8 01                                           test   al,0x1
  0048e34d: 8b d0                                           mov    edx,eax
  0048e34f: 75 0a                                           jne    0x48e35b
  0048e351: d1 ea                                           shr    edx,1
  0048e353: 8a 14 32                                        mov    dl,BYTE PTR [edx+esi*1]
  0048e356: c0 ea 04                                        shr    dl,0x4
  0048e359: eb 08                                           jmp    0x48e363
  0048e35b: d1 ea                                           shr    edx,1
  0048e35d: 8a 14 32                                        mov    dl,BYTE PTR [edx+esi*1]
  0048e360: 80 e2 0f                                        and    dl,0xf
  0048e363: 88 55 10                                        mov    BYTE PTR [ebp+0x10],dl
  0048e366: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0048e369: 81 e2 ff 00 00 00                               and    edx,0xff
  0048e36f: 83 fa 0f                                        cmp    edx,0xf
  0048e372: 77 65                                           ja     0x48e3d9
  0048e374: ff 24 95 e8 e3 48 00                            jmp    DWORD PTR [edx*4+0x48e3e8]
  0048e3d9: 40                                              inc    eax
  0048e3da: 3b c7                                           cmp    eax,edi
  0048e3dc: 0f 82 69 ff ff ff                               jb     0x48e34b
  0048e3e2: 5e                                              pop    esi
  0048e3e3: 5f                                              pop    edi
  0048e3e4: 5d                                              pop    ebp
  0048e3e5: c3                                              ret
  0048e6c8: 33 d2                                           xor    edx,edx
  0048e6ca: 8a 16                                           mov    dl,BYTE PTR [esi]
  0048e6cc: 83 c2 d0                                        add    edx,0xffffffd0
  0048e6cf: 83 fa 16                                        cmp    edx,0x16
  0048e6d2: 77 61                                           ja     0x48e735
  0048e6d4: ff 24 95 dc e7 48 00                            jmp    DWORD PTR [edx*4+0x48e7dc]
  0048e735: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0048e739: 33 d2                                           xor    edx,edx
  0048e73b: 8a 56 01                                        mov    dl,BYTE PTR [esi+0x1]
  0048e73e: 83 c2 d0                                        add    edx,0xffffffd0
  0048e741: 83 fa 16                                        cmp    edx,0x16
  0048e744: 0f 87 80 00 00 00                               ja     0x48e7ca
  0048e74a: ff 24 95 38 e8 48 00                            jmp    DWORD PTR [edx*4+0x48e838]
  0048e7ca: 40                                              inc    eax
  0048e7cb: 83 c6 02                                        add    esi,0x2
  0048e7ce: 3b c7                                           cmp    eax,edi
  0048e7d0: 0f 82 f2 fe ff ff                               jb     0x48e6c8
  0048e7d6: 5e                                              pop    esi
  0048e7d7: 5f                                              pop    edi
  0048e7d8: 5d                                              pop    ebp
  0048e7d9: c3                                              ret
  0048fcb0: 55                                              push   ebp
  0048fcb1: 8b ec                                           mov    ebp,esp
  0048fcb3: 51                                              push   ecx
  0048fcb4: 53                                              push   ebx
  0048fcb5: 8b d9                                           mov    ebx,ecx
  0048fcb7: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0048fcba: 85 c0                                           test   eax,eax
  0048fcbc: 57                                              push   edi
  0048fcbd: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0048fcc0: 75 04                                           jne    0x48fcc6
  0048fcc2: 33 ff                                           xor    edi,edi
  0048fcc4: eb 02                                           jmp    0x48fcc8
  0048fcc6: 8b 38                                           mov    edi,DWORD PTR [eax]
  0048fcc8: 3b f8                                           cmp    edi,eax
  0048fcca: 74 34                                           je     0x48fd00
  0048fccc: 56                                              push   esi
  0048fccd: 8b f7                                           mov    esi,edi
  0048fccf: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048fcd2: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  0048fcd4: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0048fcd6: 89 08                                           mov    DWORD PTR [eax],ecx
  0048fcd8: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048fcda: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048fcdd: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0048fce0: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0048fce3: e8 f8 ec ff ff                                  call   0x48e9e0
  0048fce8: 56                                              push   esi
  0048fce9: e8 72 23 fb ff                                  call   0x442060
  0048fcee: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0048fcf1: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048fcf4: 83 c4 04                                        add    esp,0x4
  0048fcf7: 49                                              dec    ecx
  0048fcf8: 3b f8                                           cmp    edi,eax
  0048fcfa: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0048fcfd: 75 ce                                           jne    0x48fccd
  0048fcff: 5e                                              pop    esi
  0048fd00: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0048fd03: 51                                              push   ecx
  0048fd04: e8 57 23 fb ff                                  call   0x442060
  0048fd09: 83 c4 04                                        add    esp,0x4
  0048fd0c: 33 c0                                           xor    eax,eax
  0048fd0e: 5f                                              pop    edi
  0048fd0f: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0048fd12: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0048fd15: 5b                                              pop    ebx
  0048fd16: 8b e5                                           mov    esp,ebp
  0048fd18: 5d                                              pop    ebp
  0048fd19: c3                                              ret
  0048fd50: 55                                              push   ebp
  0048fd51: 8b ec                                           mov    ebp,esp
  0048fd53: 51                                              push   ecx
  0048fd54: 53                                              push   ebx
  0048fd55: 8b d9                                           mov    ebx,ecx
  0048fd57: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0048fd5a: 85 c0                                           test   eax,eax
  0048fd5c: 57                                              push   edi
  0048fd5d: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0048fd60: 75 04                                           jne    0x48fd66
  0048fd62: 33 ff                                           xor    edi,edi
  0048fd64: eb 02                                           jmp    0x48fd68
  0048fd66: 8b 38                                           mov    edi,DWORD PTR [eax]
  0048fd68: 3b f8                                           cmp    edi,eax
  0048fd6a: 74 34                                           je     0x48fda0
  0048fd6c: 56                                              push   esi
  0048fd6d: 8b f7                                           mov    esi,edi
  0048fd6f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048fd72: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  0048fd74: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0048fd76: 89 08                                           mov    DWORD PTR [eax],ecx
  0048fd78: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048fd7a: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048fd7d: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0048fd80: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0048fd83: e8 48 f4 ff ff                                  call   0x48f1d0
  0048fd88: 56                                              push   esi
  0048fd89: e8 d2 22 fb ff                                  call   0x442060
  0048fd8e: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0048fd91: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048fd94: 83 c4 04                                        add    esp,0x4
  0048fd97: 49                                              dec    ecx
  0048fd98: 3b f8                                           cmp    edi,eax
  0048fd9a: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0048fd9d: 75 ce                                           jne    0x48fd6d
  0048fd9f: 5e                                              pop    esi
  0048fda0: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0048fda3: 51                                              push   ecx
  0048fda4: e8 b7 22 fb ff                                  call   0x442060
  0048fda9: 83 c4 04                                        add    esp,0x4
  0048fdac: 33 c0                                           xor    eax,eax
  0048fdae: 5f                                              pop    edi
  0048fdaf: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0048fdb2: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0048fdb5: 5b                                              pop    ebx
  0048fdb6: 8b e5                                           mov    esp,ebp
  0048fdb8: 5d                                              pop    ebp
  0048fdb9: c3                                              ret
  0048fdd0: 55                                              push   ebp
  0048fdd1: 8b ec                                           mov    ebp,esp
  0048fdd3: 51                                              push   ecx
  0048fdd4: 56                                              push   esi
  0048fdd5: 8b f1                                           mov    esi,ecx
  0048fdd7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0048fdda: 85 c0                                           test   eax,eax
  0048fddc: 74 0c                                           je     0x48fdea
  0048fdde: 50                                              push   eax
  0048fddf: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0048fde2: e8 79 22 fb ff                                  call   0x442060
  0048fde7: 83 c4 04                                        add    esp,0x4
  0048fdea: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  0048fdf1: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0048fdf8: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  0048fdff: 5e                                              pop    esi
  0048fe00: 8b e5                                           mov    esp,ebp
  0048fe02: 5d                                              pop    ebp
  0048fe03: c3                                              ret
  00491c20: 51                                              push   ecx
  00491c21: ff 15 18 e4 4d 00                               call   DWORD PTR ds:0x4de418
  00491c27: c3                                              ret
  004920a0: 56                                              push   esi
  004920a1: 8b f1                                           mov    esi,ecx
  004920a3: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004920a6: 85 c0                                           test   eax,eax
  004920a8: 74 1c                                           je     0x4920c6
  004920aa: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004920ad: 8a 01                                           mov    al,BYTE PTR [ecx]
  004920af: 84 c0                                           test   al,al
  004920b1: 74 0a                                           je     0x4920bd
  004920b3: 3c ff                                           cmp    al,0xff
  004920b5: 74 06                                           je     0x4920bd
  004920b7: fe c8                                           dec    al
  004920b9: 88 01                                           mov    BYTE PTR [ecx],al
  004920bb: eb 09                                           jmp    0x4920c6
  004920bd: 51                                              push   ecx
  004920be: e8 9d ff fa ff                                  call   0x442060
  004920c3: 83 c4 04                                        add    esp,0x4
  004920c6: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004920cd: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004920d4: c7 46 10 00 00 00 00                            mov    DWORD PTR [esi+0x10],0x0
  004920db: 5e                                              pop    esi
  004920dc: c3                                              ret
  00495120: 55                                              push   ebp
  00495121: 8b ec                                           mov    ebp,esp
  00495123: 83 ec 08                                        sub    esp,0x8
  00495126: 53                                              push   ebx
  00495127: 56                                              push   esi
  00495128: 8b f1                                           mov    esi,ecx
  0049512a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049512d: 85 c9                                           test   ecx,ecx
  0049512f: 57                                              push   edi
  00495130: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00495133: 8b 07                                           mov    eax,DWORD PTR [edi]
  00495135: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00495138: 74 4b                                           je     0x495185
  0049513a: 8b c8                                           mov    ecx,eax
  0049513c: 3b c1                                           cmp    eax,ecx
  0049513e: 75 45                                           jne    0x495185
  00495140: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00495143: 8a 43 15                                        mov    al,BYTE PTR [ebx+0x15]
  00495146: 84 c0                                           test   al,al
  00495148: 8b fb                                           mov    edi,ebx
  0049514a: 75 1f                                           jne    0x49516b
  0049514c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0049514f: 50                                              push   eax
  00495150: 8b ce                                           mov    ecx,esi
  00495152: e8 f9 1d 00 00                                  call   0x496f50
  00495157: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00495159: 53                                              push   ebx
  0049515a: e8 01 cf fa ff                                  call   0x442060
  0049515f: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  00495162: 83 c4 04                                        add    esp,0x4
  00495165: 84 c0                                           test   al,al
  00495167: 8b df                                           mov    ebx,edi
  00495169: 74 e1                                           je     0x49514c
  0049516b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049516e: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00495171: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00495174: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0049517b: 89 00                                           mov    DWORD PTR [eax],eax
  0049517d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00495180: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00495183: eb 21                                           jmp    0x4951a6
  00495185: 3b c7                                           cmp    eax,edi
  00495187: 74 1d                                           je     0x4951a6
  00495189: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0049518c: 8b d8                                           mov    ebx,eax
  0049518e: e8 bd 2a 00 00                                  call   0x497c50
  00495193: 53                                              push   ebx
  00495194: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00495197: 51                                              push   ecx
  00495198: 8b ce                                           mov    ecx,esi
  0049519a: e8 61 19 00 00                                  call   0x496b00
  0049519f: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004951a2: 3b c7                                           cmp    eax,edi
  004951a4: 75 e3                                           jne    0x495189
  004951a6: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004951a9: 52                                              push   edx
  004951aa: e8 b1 ce fa ff                                  call   0x442060
  004951af: 83 c4 04                                        add    esp,0x4
  004951b2: 33 c0                                           xor    eax,eax
  004951b4: 5f                                              pop    edi
  004951b5: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004951b8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004951bb: 5e                                              pop    esi
  004951bc: 5b                                              pop    ebx
  004951bd: 8b e5                                           mov    esp,ebp
  004951bf: 5d                                              pop    ebp
  004951c0: c3                                              ret
  004951d0: 53                                              push   ebx
  004951d1: 8b d9                                           mov    ebx,ecx
  004951d3: 56                                              push   esi
  004951d4: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004951d7: 33 c0                                           xor    eax,eax
  004951d9: 3b f0                                           cmp    esi,eax
  004951db: 74 25                                           je     0x495202
  004951dd: 57                                              push   edi
  004951de: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004951e1: 3b f7                                           cmp    esi,edi
  004951e3: 74 0e                                           je     0x4951f3
  004951e5: 8b ce                                           mov    ecx,esi
  004951e7: e8 a4 ef ff ff                                  call   0x494190
  004951ec: 83 c6 24                                        add    esi,0x24
  004951ef: 3b f7                                           cmp    esi,edi
  004951f1: 75 f2                                           jne    0x4951e5
  004951f3: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004951f6: 50                                              push   eax
  004951f7: e8 64 ce fa ff                                  call   0x442060
  004951fc: 83 c4 04                                        add    esp,0x4
  004951ff: 33 c0                                           xor    eax,eax
  00495201: 5f                                              pop    edi
  00495202: 5e                                              pop    esi
  00495203: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00495206: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00495209: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0049520c: 5b                                              pop    ebx
  0049520d: c3                                              ret
  00495240: 55                                              push   ebp
  00495241: 8b ec                                           mov    ebp,esp
  00495243: 51                                              push   ecx
  00495244: 56                                              push   esi
  00495245: 8b f1                                           mov    esi,ecx
  00495247: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049524a: 85 c0                                           test   eax,eax
  0049524c: 74 0c                                           je     0x49525a
  0049524e: 50                                              push   eax
  0049524f: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00495252: e8 09 ce fa ff                                  call   0x442060
  00495257: 83 c4 04                                        add    esp,0x4
  0049525a: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  00495261: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00495268: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  0049526f: 5e                                              pop    esi
  00495270: 8b e5                                           mov    esp,ebp
  00495272: 5d                                              pop    ebp
  00495273: c3                                              ret
  004952b0: 55                                              push   ebp
  004952b1: 8b ec                                           mov    ebp,esp
  004952b3: 51                                              push   ecx
  004952b4: 56                                              push   esi
  004952b5: 8b f1                                           mov    esi,ecx
  004952b7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004952ba: 85 c0                                           test   eax,eax
  004952bc: 74 0c                                           je     0x4952ca
  004952be: 50                                              push   eax
  004952bf: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004952c2: e8 99 cd fa ff                                  call   0x442060
  004952c7: 83 c4 04                                        add    esp,0x4
  004952ca: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004952d1: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004952d8: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004952df: 5e                                              pop    esi
  004952e0: 8b e5                                           mov    esp,ebp
  004952e2: 5d                                              pop    ebp
  004952e3: c3                                              ret
  0049ab60: 53                                              push   ebx
  0049ab61: 8b d9                                           mov    ebx,ecx
  0049ab63: 56                                              push   esi
  0049ab64: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049ab67: 85 f6                                           test   esi,esi
  0049ab69: 74 24                                           je     0x49ab8f
  0049ab6b: 57                                              push   edi
  0049ab6c: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0049ab6f: 3b f7                                           cmp    esi,edi
  0049ab71: 74 0f                                           je     0x49ab82
  0049ab73: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049ab75: 6a 00                                           push   0x0
  0049ab77: 8b ce                                           mov    ecx,esi
  0049ab79: ff 10                                           call   DWORD PTR [eax]
  0049ab7b: 83 c6 28                                        add    esi,0x28
  0049ab7e: 3b f7                                           cmp    esi,edi
  0049ab80: 75 f1                                           jne    0x49ab73
  0049ab82: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049ab85: 51                                              push   ecx
  0049ab86: e8 d5 74 fa ff                                  call   0x442060
  0049ab8b: 83 c4 04                                        add    esp,0x4
  0049ab8e: 5f                                              pop    edi
  0049ab8f: 33 c0                                           xor    eax,eax
  0049ab91: 5e                                              pop    esi
  0049ab92: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049ab95: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049ab98: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0049ab9b: 5b                                              pop    ebx
  0049ab9c: c3                                              ret
  0049abd0: 55                                              push   ebp
  0049abd1: 8b ec                                           mov    ebp,esp
  0049abd3: 51                                              push   ecx
  0049abd4: 56                                              push   esi
  0049abd5: 8b f1                                           mov    esi,ecx
  0049abd7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049abda: 85 c0                                           test   eax,eax
  0049abdc: 74 0c                                           je     0x49abea
  0049abde: 50                                              push   eax
  0049abdf: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0049abe2: e8 79 74 fa ff                                  call   0x442060
  0049abe7: 83 c4 04                                        add    esp,0x4
  0049abea: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  0049abf1: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0049abf8: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  0049abff: 5e                                              pop    esi
  0049ac00: 8b e5                                           mov    esp,ebp
  0049ac02: 5d                                              pop    ebp
  0049ac03: c3                                              ret
  0049fa40: 53                                              push   ebx
  0049fa41: 8b d9                                           mov    ebx,ecx
  0049fa43: 56                                              push   esi
  0049fa44: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049fa47: 85 f6                                           test   esi,esi
  0049fa49: 74 24                                           je     0x49fa6f
  0049fa4b: 57                                              push   edi
  0049fa4c: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0049fa4f: 3b f7                                           cmp    esi,edi
  0049fa51: 74 0f                                           je     0x49fa62
  0049fa53: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049fa55: 6a 00                                           push   0x0
  0049fa57: 8b ce                                           mov    ecx,esi
  0049fa59: ff 10                                           call   DWORD PTR [eax]
  0049fa5b: 83 c6 28                                        add    esi,0x28
  0049fa5e: 3b f7                                           cmp    esi,edi
  0049fa60: 75 f1                                           jne    0x49fa53
  0049fa62: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049fa65: 51                                              push   ecx
  0049fa66: e8 f5 25 fa ff                                  call   0x442060
  0049fa6b: 83 c4 04                                        add    esp,0x4
  0049fa6e: 5f                                              pop    edi
  0049fa6f: 33 c0                                           xor    eax,eax
  0049fa71: 5e                                              pop    esi
  0049fa72: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049fa75: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049fa78: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0049fa7b: 5b                                              pop    ebx
  0049fa7c: c3                                              ret
  0049fb20: 53                                              push   ebx
  0049fb21: 8b d9                                           mov    ebx,ecx
  0049fb23: 56                                              push   esi
  0049fb24: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049fb27: 85 f6                                           test   esi,esi
  0049fb29: 74 24                                           je     0x49fb4f
  0049fb2b: 57                                              push   edi
  0049fb2c: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0049fb2f: 3b f7                                           cmp    esi,edi
  0049fb31: 74 0f                                           je     0x49fb42
  0049fb33: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049fb35: 6a 00                                           push   0x0
  0049fb37: 8b ce                                           mov    ecx,esi
  0049fb39: ff 10                                           call   DWORD PTR [eax]
  0049fb3b: 83 c6 24                                        add    esi,0x24
  0049fb3e: 3b f7                                           cmp    esi,edi
  0049fb40: 75 f1                                           jne    0x49fb33
  0049fb42: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049fb45: 51                                              push   ecx
  0049fb46: e8 15 25 fa ff                                  call   0x442060
  0049fb4b: 83 c4 04                                        add    esp,0x4
  0049fb4e: 5f                                              pop    edi
  0049fb4f: 33 c0                                           xor    eax,eax
  0049fb51: 5e                                              pop    esi
  0049fb52: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049fb55: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049fb58: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0049fb5b: 5b                                              pop    ebx
  0049fb5c: c3                                              ret
  004a8f90: 55                                              push   ebp
  004a8f91: 8b ec                                           mov    ebp,esp
  004a8f93: 6a ff                                           push   0xffffffff
  004a8f95: 68 49 c0 4d 00                                  push   0x4dc049
  004a8f9a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a8fa0: 50                                              push   eax
  004a8fa1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a8fa8: 51                                              push   ecx
  004a8fa9: 53                                              push   ebx
  004a8faa: 56                                              push   esi
  004a8fab: 8b f1                                           mov    esi,ecx
  004a8fad: 57                                              push   edi
  004a8fae: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004a8fb1: 6a 01                                           push   0x1
  004a8fb3: 8d 8e d4 00 00 00                               lea    ecx,[esi+0xd4]
  004a8fb9: c7 45 fc 09 00 00 00                            mov    DWORD PTR [ebp-0x4],0x9
  004a8fc0: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a8fc6: 6a 01                                           push   0x1
  004a8fc8: 8d 8e c4 00 00 00                               lea    ecx,[esi+0xc4]
  004a8fce: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  004a8fd2: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a8fd8: 6a 01                                           push   0x1
  004a8fda: 8d 8e 8c 00 00 00                               lea    ecx,[esi+0x8c]
  004a8fe0: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  004a8fe4: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a8fea: 6a 01                                           push   0x1
  004a8fec: 8d 4e 78                                        lea    ecx,[esi+0x78]
  004a8fef: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004a8ff3: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a8ff9: 6a 01                                           push   0x1
  004a8ffb: 8d 4e 68                                        lea    ecx,[esi+0x68]
  004a8ffe: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004a9002: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a9008: 8b 46 5c                                        mov    eax,DWORD PTR [esi+0x5c]
  004a900b: 33 db                                           xor    ebx,ebx
  004a900d: 3b c3                                           cmp    eax,ebx
  004a900f: 74 1c                                           je     0x4a902d
  004a9011: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a9014: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a9016: 84 c0                                           test   al,al
  004a9018: 74 0a                                           je     0x4a9024
  004a901a: 3c ff                                           cmp    al,0xff
  004a901c: 74 06                                           je     0x4a9024
  004a901e: fe c8                                           dec    al
  004a9020: 88 01                                           mov    BYTE PTR [ecx],al
  004a9022: eb 09                                           jmp    0x4a902d
  004a9024: 51                                              push   ecx
  004a9025: e8 36 90 f9 ff                                  call   0x442060
  004a902a: 83 c4 04                                        add    esp,0x4
  004a902d: 89 5e 5c                                        mov    DWORD PTR [esi+0x5c],ebx
  004a9030: 89 5e 60                                        mov    DWORD PTR [esi+0x60],ebx
  004a9033: 89 5e 64                                        mov    DWORD PTR [esi+0x64],ebx
  004a9036: 8b 46 4c                                        mov    eax,DWORD PTR [esi+0x4c]
  004a9039: 3b c3                                           cmp    eax,ebx
  004a903b: 74 1c                                           je     0x4a9059
  004a903d: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a9040: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a9042: 84 c0                                           test   al,al
  004a9044: 74 0a                                           je     0x4a9050
  004a9046: 3c ff                                           cmp    al,0xff
  004a9048: 74 06                                           je     0x4a9050
  004a904a: fe c8                                           dec    al
  004a904c: 88 01                                           mov    BYTE PTR [ecx],al
  004a904e: eb 09                                           jmp    0x4a9059
  004a9050: 51                                              push   ecx
  004a9051: e8 0a 90 f9 ff                                  call   0x442060
  004a9056: 83 c4 04                                        add    esp,0x4
  004a9059: 89 5e 4c                                        mov    DWORD PTR [esi+0x4c],ebx
  004a905c: 89 5e 50                                        mov    DWORD PTR [esi+0x50],ebx
  004a905f: 89 5e 54                                        mov    DWORD PTR [esi+0x54],ebx
  004a9062: 8b 46 3c                                        mov    eax,DWORD PTR [esi+0x3c]
  004a9065: 3b c3                                           cmp    eax,ebx
  004a9067: 74 1c                                           je     0x4a9085
  004a9069: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a906c: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a906e: 84 c0                                           test   al,al
  004a9070: 74 0a                                           je     0x4a907c
  004a9072: 3c ff                                           cmp    al,0xff
  004a9074: 74 06                                           je     0x4a907c
  004a9076: fe c8                                           dec    al
  004a9078: 88 01                                           mov    BYTE PTR [ecx],al
  004a907a: eb 09                                           jmp    0x4a9085
  004a907c: 51                                              push   ecx
  004a907d: e8 de 8f f9 ff                                  call   0x442060
  004a9082: 83 c4 04                                        add    esp,0x4
  004a9085: 89 5e 3c                                        mov    DWORD PTR [esi+0x3c],ebx
  004a9088: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  004a908b: 89 5e 44                                        mov    DWORD PTR [esi+0x44],ebx
  004a908e: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  004a9091: 3b c3                                           cmp    eax,ebx
  004a9093: 74 1c                                           je     0x4a90b1
  004a9095: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a9098: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a909a: 84 c0                                           test   al,al
  004a909c: 74 0a                                           je     0x4a90a8
  004a909e: 3c ff                                           cmp    al,0xff
  004a90a0: 74 06                                           je     0x4a90a8
  004a90a2: fe c8                                           dec    al
  004a90a4: 88 01                                           mov    BYTE PTR [ecx],al
  004a90a6: eb 09                                           jmp    0x4a90b1
  004a90a8: 51                                              push   ecx
  004a90a9: e8 b2 8f f9 ff                                  call   0x442060
  004a90ae: 83 c4 04                                        add    esp,0x4
  004a90b1: 89 5e 2c                                        mov    DWORD PTR [esi+0x2c],ebx
  004a90b4: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  004a90b7: 89 5e 34                                        mov    DWORD PTR [esi+0x34],ebx
  004a90ba: 8b 7e 14                                        mov    edi,DWORD PTR [esi+0x14]
  004a90bd: 3b fb                                           cmp    edi,ebx
  004a90bf: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a90c3: 74 24                                           je     0x4a90e9
  004a90c5: 8b 5e 18                                        mov    ebx,DWORD PTR [esi+0x18]
  004a90c8: 3b fb                                           cmp    edi,ebx
  004a90ca: 74 0f                                           je     0x4a90db
  004a90cc: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a90ce: 6a 00                                           push   0x0
  004a90d0: 8b cf                                           mov    ecx,edi
  004a90d2: ff 10                                           call   DWORD PTR [eax]
  004a90d4: 83 c7 1c                                        add    edi,0x1c
  004a90d7: 3b fb                                           cmp    edi,ebx
  004a90d9: 75 f1                                           jne    0x4a90cc
  004a90db: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  004a90de: 50                                              push   eax
  004a90df: e8 7c 8f f9 ff                                  call   0x442060
  004a90e4: 83 c4 04                                        add    esp,0x4
  004a90e7: 33 db                                           xor    ebx,ebx
  004a90e9: 89 5e 14                                        mov    DWORD PTR [esi+0x14],ebx
  004a90ec: 89 5e 18                                        mov    DWORD PTR [esi+0x18],ebx
  004a90ef: 89 5e 1c                                        mov    DWORD PTR [esi+0x1c],ebx
  004a90f2: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004a90f5: 3b fb                                           cmp    edi,ebx
  004a90f7: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004a90fe: 74 24                                           je     0x4a9124
  004a9100: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004a9103: 3b fb                                           cmp    edi,ebx
  004a9105: 74 0f                                           je     0x4a9116
  004a9107: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a9109: 6a 00                                           push   0x0
  004a910b: 8b cf                                           mov    ecx,edi
  004a910d: ff 12                                           call   DWORD PTR [edx]
  004a910f: 83 c7 2c                                        add    edi,0x2c
  004a9112: 3b fb                                           cmp    edi,ebx
  004a9114: 75 f1                                           jne    0x4a9107
  004a9116: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a9119: 50                                              push   eax
  004a911a: e8 41 8f f9 ff                                  call   0x442060
  004a911f: 83 c4 04                                        add    esp,0x4
  004a9122: 33 db                                           xor    ebx,ebx
  004a9124: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a9127: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  004a912a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004a912d: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004a9130: 5f                                              pop    edi
  004a9131: 5e                                              pop    esi
  004a9132: 5b                                              pop    ebx
  004a9133: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a913a: 8b e5                                           mov    esp,ebp
  004a913c: 5d                                              pop    ebp
  004a913d: c3                                              ret
  004a9ce0: 53                                              push   ebx
  004a9ce1: 8b d9                                           mov    ebx,ecx
  004a9ce3: 56                                              push   esi
  004a9ce4: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004a9ce7: 85 f6                                           test   esi,esi
  004a9ce9: 74 24                                           je     0x4a9d0f
  004a9ceb: 57                                              push   edi
  004a9cec: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004a9cef: 3b f7                                           cmp    esi,edi
  004a9cf1: 74 0f                                           je     0x4a9d02
  004a9cf3: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a9cf5: 6a 00                                           push   0x0
  004a9cf7: 8b ce                                           mov    ecx,esi
  004a9cf9: ff 10                                           call   DWORD PTR [eax]
  004a9cfb: 83 c6 2c                                        add    esi,0x2c
  004a9cfe: 3b f7                                           cmp    esi,edi
  004a9d00: 75 f1                                           jne    0x4a9cf3
  004a9d02: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a9d05: 51                                              push   ecx
  004a9d06: e8 55 83 f9 ff                                  call   0x442060
  004a9d0b: 83 c4 04                                        add    esp,0x4
  004a9d0e: 5f                                              pop    edi
  004a9d0f: 33 c0                                           xor    eax,eax
  004a9d11: 5e                                              pop    esi
  004a9d12: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004a9d15: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004a9d18: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  004a9d1b: 5b                                              pop    ebx
  004a9d1c: c3                                              ret
  004a9d50: 53                                              push   ebx
  004a9d51: 8b d9                                           mov    ebx,ecx
  004a9d53: 56                                              push   esi
  004a9d54: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004a9d57: 85 f6                                           test   esi,esi
  004a9d59: 74 24                                           je     0x4a9d7f
  004a9d5b: 57                                              push   edi
  004a9d5c: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004a9d5f: 3b f7                                           cmp    esi,edi
  004a9d61: 74 0f                                           je     0x4a9d72
  004a9d63: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a9d65: 6a 00                                           push   0x0
  004a9d67: 8b ce                                           mov    ecx,esi
  004a9d69: ff 10                                           call   DWORD PTR [eax]
  004a9d6b: 83 c6 1c                                        add    esi,0x1c
  004a9d6e: 3b f7                                           cmp    esi,edi
  004a9d70: 75 f1                                           jne    0x4a9d63
  004a9d72: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a9d75: 51                                              push   ecx
  004a9d76: e8 e5 82 f9 ff                                  call   0x442060
  004a9d7b: 83 c4 04                                        add    esp,0x4
  004a9d7e: 5f                                              pop    edi
  004a9d7f: 33 c0                                           xor    eax,eax
  004a9d81: 5e                                              pop    esi
  004a9d82: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004a9d85: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004a9d88: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  004a9d8b: 5b                                              pop    ebx
  004a9d8c: c3                                              ret
  004ade70: 56                                              push   esi
  004ade71: 8b f1                                           mov    esi,ecx
  004ade73: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004ade76: 85 c0                                           test   eax,eax
  004ade78: 74 1c                                           je     0x4ade96
  004ade7a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004ade7d: 8a 01                                           mov    al,BYTE PTR [ecx]
  004ade7f: 84 c0                                           test   al,al
  004ade81: 74 0a                                           je     0x4ade8d
  004ade83: 3c ff                                           cmp    al,0xff
  004ade85: 74 06                                           je     0x4ade8d
  004ade87: fe c8                                           dec    al
  004ade89: 88 01                                           mov    BYTE PTR [ecx],al
  004ade8b: eb 09                                           jmp    0x4ade96
  004ade8d: 51                                              push   ecx
  004ade8e: e8 cd 41 f9 ff                                  call   0x442060
  004ade93: 83 c4 04                                        add    esp,0x4
  004ade96: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004ade9d: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004adea4: c7 46 10 00 00 00 00                            mov    DWORD PTR [esi+0x10],0x0
  004adeab: 5e                                              pop    esi
  004adeac: c3                                              ret
  004b2a00: 55                                              push   ebp
  004b2a01: 8b ec                                           mov    ebp,esp
  004b2a03: 51                                              push   ecx
  004b2a04: 56                                              push   esi
  004b2a05: 8b f1                                           mov    esi,ecx
  004b2a07: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004b2a0a: 85 c0                                           test   eax,eax
  004b2a0c: 74 0c                                           je     0x4b2a1a
  004b2a0e: 50                                              push   eax
  004b2a0f: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004b2a12: e8 49 f6 f8 ff                                  call   0x442060
  004b2a17: 83 c4 04                                        add    esp,0x4
  004b2a1a: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004b2a21: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004b2a28: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004b2a2f: 5e                                              pop    esi
  004b2a30: 8b e5                                           mov    esp,ebp
  004b2a32: 5d                                              pop    ebp
  004b2a33: c3                                              ret
  004b4030: 53                                              push   ebx
  004b4031: 8b d9                                           mov    ebx,ecx
  004b4033: 56                                              push   esi
  004b4034: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004b4037: 33 c0                                           xor    eax,eax
  004b4039: 3b f0                                           cmp    esi,eax
  004b403b: 74 25                                           je     0x4b4062
  004b403d: 57                                              push   edi
  004b403e: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004b4041: 3b f7                                           cmp    esi,edi
  004b4043: 74 0e                                           je     0x4b4053
  004b4045: 8b ce                                           mov    ecx,esi
  004b4047: e8 24 00 00 00                                  call   0x4b4070
  004b404c: 83 c6 14                                        add    esi,0x14
  004b404f: 3b f7                                           cmp    esi,edi
  004b4051: 75 f2                                           jne    0x4b4045
  004b4053: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004b4056: 50                                              push   eax
  004b4057: e8 04 e0 f8 ff                                  call   0x442060
  004b405c: 83 c4 04                                        add    esp,0x4
  004b405f: 33 c0                                           xor    eax,eax
  004b4061: 5f                                              pop    edi
  004b4062: 5e                                              pop    esi
  004b4063: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004b4066: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004b4069: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  004b406c: 5b                                              pop    ebx
  004b406d: c3                                              ret
  004bba60: 56                                              push   esi
  004bba61: 8b f1                                           mov    esi,ecx
  004bba63: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004bba66: 85 c0                                           test   eax,eax
  004bba68: 74 1c                                           je     0x4bba86
  004bba6a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004bba6d: 8a 01                                           mov    al,BYTE PTR [ecx]
  004bba6f: 84 c0                                           test   al,al
  004bba71: 74 0a                                           je     0x4bba7d
  004bba73: 3c ff                                           cmp    al,0xff
  004bba75: 74 06                                           je     0x4bba7d
  004bba77: fe c8                                           dec    al
  004bba79: 88 01                                           mov    BYTE PTR [ecx],al
  004bba7b: eb 09                                           jmp    0x4bba86
  004bba7d: 51                                              push   ecx
  004bba7e: e8 dd 65 f8 ff                                  call   0x442060
  004bba83: 83 c4 04                                        add    esp,0x4
  004bba86: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004bba8d: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004bba94: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004bba9b: 5e                                              pop    esi
  004bba9c: c3                                              ret
  004bdf30: 56                                              push   esi
  004bdf31: 8b f1                                           mov    esi,ecx
  004bdf33: 8d 46 40                                        lea    eax,[esi+0x40]
  004bdf36: 50                                              push   eax
  004bdf37: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bdf3e: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bdf45: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bdf4b: 33 c0                                           xor    eax,eax
  004bdf4d: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bdf50: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bdf53: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bdf56: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bdf59: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bdf5c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bdf5f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bdf66: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bdf6a: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004bdf6d: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004bdf70: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004bdf73: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004bdf76: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004bdf79: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004bdf7c: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bdf7f: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bdf82: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bdf85: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bdf88: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bdf8b: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004bdf8e: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bdf91: c7 06 02 00 00 00                               mov    DWORD PTR [esi],0x2
  004bdf97: 8b c6                                           mov    eax,esi
  004bdf99: 5e                                              pop    esi
  004bdf9a: c3                                              ret
  004c0085: 8b 4d 20                                        mov    ecx,DWORD PTR [ebp+0x20]
  004c0088: e8 63 c3 f8 ff                                  call   0x44c3f0
  004c008d: 53                                              push   ebx
  004c008e: 8b 5d 20                                        mov    ebx,DWORD PTR [ebp+0x20]
  004c0091: 8b cb                                           mov    ecx,ebx
  004c0093: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  004c0096: e8 05 c4 f8 ff                                  call   0x44c4a0
  004c009b: 8b cb                                           mov    ecx,ebx
  004c009d: e8 4e c3 f8 ff                                  call   0x44c3f0
  004c00a2: 85 c0                                           test   eax,eax
  004c00a4: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  004c00a7: 0f 85 dd 00 00 00                               jne    0x4c018a
  004c00ad: 8b 43 38                                        mov    eax,DWORD PTR [ebx+0x38]
  004c00b0: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  004c00b3: 8b 4b 28                                        mov    ecx,DWORD PTR [ebx+0x28]
  004c00b6: 48                                              dec    eax
  004c00b7: 89 43 38                                        mov    DWORD PTR [ebx+0x38],eax
  004c00ba: 8b c2                                           mov    eax,edx
  004c00bc: 3b c1                                           cmp    eax,ecx
  004c00be: 89 53 2c                                        mov    DWORD PTR [ebx+0x2c],edx
  004c00c1: 74 3d                                           je     0x4c0100
  004c00c3: 3b 43 24                                        cmp    eax,DWORD PTR [ebx+0x24]
  004c00c6: 74 34                                           je     0x4c00fc
  004c00c8: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004c00ca: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004c00cd: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004c00d0: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  004c00d3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004c00d6: 8b 10                                           mov    edx,DWORD PTR [eax]
  004c00d8: 89 11                                           mov    DWORD PTR [ecx],edx
  004c00da: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  004c00dd: 83 f8 01                                        cmp    eax,0x1
  004c00e0: 75 0b                                           jne    0x4c00ed
  004c00e2: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  004c00e5: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004c00e8: 89 4b 20                                        mov    DWORD PTR [ebx+0x20],ecx
  004c00eb: eb 75                                           jmp    0x4c0162
  004c00ed: 83 f8 02                                        cmp    eax,0x2
  004c00f0: 75 70                                           jne    0x4c0162
  004c00f2: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  004c00f5: 8b 02                                           mov    eax,DWORD PTR [edx]
  004c00f7: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  004c00fa: eb 66                                           jmp    0x4c0162
  004c00fc: 3b c1                                           cmp    eax,ecx
  004c00fe: 75 2e                                           jne    0x4c012e
  004c0100: 3b 43 24                                        cmp    eax,DWORD PTR [ebx+0x24]
  004c0103: 74 2e                                           je     0x4c0133
  004c0105: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004c0108: c7 01 00 00 00 00                               mov    DWORD PTR [ecx],0x0
  004c010e: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  004c0111: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004c0114: 89 43 28                                        mov    DWORD PTR [ebx+0x28],eax
  004c0117: 83 7b 40 02                                     cmp    DWORD PTR [ebx+0x40],0x2
  004c011b: 8b ca                                           mov    ecx,edx
  004c011d: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004c0120: 89 53 20                                        mov    DWORD PTR [ebx+0x20],edx
  004c0123: 75 3d                                           jne    0x4c0162
  004c0125: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  004c012c: eb 34                                           jmp    0x4c0162
  004c012e: 3b 43 24                                        cmp    eax,DWORD PTR [ebx+0x24]
  004c0131: 75 21                                           jne    0x4c0154
  004c0133: 3b c1                                           cmp    eax,ecx
  004c0135: 74 1d                                           je     0x4c0154
  004c0137: 8b 00                                           mov    eax,DWORD PTR [eax]
  004c0139: 33 c9                                           xor    ecx,ecx
  004c013b: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004c013e: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  004c0141: 8b 02                                           mov    eax,DWORD PTR [edx]
  004c0143: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  004c0146: 89 43 24                                        mov    DWORD PTR [ebx+0x24],eax
  004c0149: 83 7b 40 01                                     cmp    DWORD PTR [ebx+0x40],0x1
  004c014d: 75 13                                           jne    0x4c0162
  004c014f: 89 4b 40                                        mov    DWORD PTR [ebx+0x40],ecx
  004c0152: eb 0e                                           jmp    0x4c0162
  004c0154: 33 c0                                           xor    eax,eax
  004c0156: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  004c0159: 89 43 24                                        mov    DWORD PTR [ebx+0x24],eax
  004c015c: 89 43 28                                        mov    DWORD PTR [ebx+0x28],eax
  004c015f: 89 43 40                                        mov    DWORD PTR [ebx+0x40],eax
  004c0162: 8b 43 2c                                        mov    eax,DWORD PTR [ebx+0x2c]
  004c0165: 50                                              push   eax
  004c0166: e8 f5 1e f8 ff                                  call   0x442060
  004c016b: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  004c016e: 8b 4d 20                                        mov    ecx,DWORD PTR [ebp+0x20]
  004c0171: 83 c4 04                                        add    esp,0x4
  004c0174: 50                                              push   eax
  004c0175: e8 86 c2 f8 ff                                  call   0x44c400
  004c017a: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  004c017d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004c017f: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  004c0185: 8b 45 20                                        mov    eax,DWORD PTR [ebp+0x20]
  004c0188: eb 03                                           jmp    0x4c018d
  004c018a: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  004c018d: 50                                              push   eax
  004c018e: 8b ce                                           mov    ecx,esi
  004c0190: e8 8b 0b f6 ff                                  call   0x420d20
  004c0195: 6a 12                                           push   0x12
  004c0197: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c019a: e8 b1 5f fc ff                                  call   0x486150
  004c019f: 6a 01                                           push   0x1
  004c01a1: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c01a4: e8 07 60 fc ff                                  call   0x4861b0
  004c01a9: 8b cf                                           mov    ecx,edi
  004c01ab: e8 50 b5 fc ff                                  call   0x48b700
  004c01b0: 50                                              push   eax
  004c01b1: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c01b4: e8 37 60 fc ff                                  call   0x4861f0
  004c01b9: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c01bb: 6a 00                                           push   0x0
  004c01bd: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c01c0: 51                                              push   ecx
  004c01c1: 8b ce                                           mov    ecx,esi
  004c01c3: ff 90 6c 01 00 00                               call   DWORD PTR [eax+0x16c]
  004c01c9: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c01cb: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  004c01ce: 50                                              push   eax
  004c01cf: 8b ce                                           mov    ecx,esi
  004c01d1: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  004c01d7: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c01da: e8 e1 5c fc ff                                  call   0x485ec0
  004c01df: 6a 12                                           push   0x12
  004c01e1: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c01e4: e8 67 5f fc ff                                  call   0x486150
  004c01e9: 6a 00                                           push   0x0
  004c01eb: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c01ee: e8 bd 5f fc ff                                  call   0x4861b0
  004c01f3: 8b cf                                           mov    ecx,edi
  004c01f5: e8 06 b5 fc ff                                  call   0x48b700
  004c01fa: 50                                              push   eax
  004c01fb: 8d 4d c4                                        lea    ecx,[ebp-0x3c]
  004c01fe: e8 ed 5f fc ff                                  call   0x4861f0
  004c0203: 8b 17                                           mov    edx,DWORD PTR [edi]
  004c0205: 6a 00                                           push   0x0
  004c0207: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  004c020a: 50                                              push   eax
  004c020b: 8b cf                                           mov    ecx,edi
  004c020d: ff 92 6c 01 00 00                               call   DWORD PTR [edx+0x16c]
  004c0213: 8b 17                                           mov    edx,DWORD PTR [edi]
  004c0215: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  004c0218: 50                                              push   eax
  004c0219: 8b cf                                           mov    ecx,edi
  004c021b: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  004c0221: e9 fc fb ff ff                                  jmp    0x4bfe22
  004c0500: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c0502: 68 42 4e 00 00                                  push   0x4e42
  004c0507: 8b ce                                           mov    ecx,esi
  004c0509: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004c050c: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c050e: 68 58 13 51 00                                  push   0x511358
  004c0513: 8b ce                                           mov    ecx,esi
  004c0515: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004c051b: 50                                              push   eax
  004c051c: 6a 17                                           push   0x17
  004c051e: e8 cd d4 f7 ff                                  call   0x43d9f0
  004c0523: 83 c4 08                                        add    esp,0x8
  004c0526: 8b cc                                           mov    ecx,esp
  004c0528: 89 65 20                                        mov    DWORD PTR [ebp+0x20],esp
  004c052b: 50                                              push   eax
  004c052c: e8 33 15 01 00                                  call   0x4d1a64
  004c0531: 8b ce                                           mov    ecx,esi
  004c0533: e8 58 29 f6 ff                                  call   0x422e90
  004c0538: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c053b: 5f                                              pop    edi
  004c053c: 5e                                              pop    esi
  004c053d: b8 03 00 00 00                                  mov    eax,0x3
  004c0542: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c0549: 5b                                              pop    ebx
  004c054a: 8b e5                                           mov    esp,ebp
  004c054c: 5d                                              pop    ebp
  004c054d: c3                                              ret
  004c9780: 56                                              push   esi
  004c9781: 8b f1                                           mov    esi,ecx
  004c9783: e8 08 2e f8 ff                                  call   0x44c590
  004c9788: c7 06 bc 00 4e 00                               mov    DWORD PTR [esi],0x4e00bc
  004c978e: c7 46 08 ac 00 4e 00                            mov    DWORD PTR [esi+0x8],0x4e00ac
  004c9795: 8b c6                                           mov    eax,esi
  004c9797: 5e                                              pop    esi
  004c9798: c3                                              ret
  004cd430: 56                                              push   esi
  004cd431: 8b f1                                           mov    esi,ecx
  004cd433: e8 58 f1 f7 ff                                  call   0x44c590
  004cd438: c7 06 5c 02 4e 00                               mov    DWORD PTR [esi],0x4e025c
  004cd43e: c7 46 08 4c 02 4e 00                            mov    DWORD PTR [esi+0x8],0x4e024c
  004cd445: 8b c6                                           mov    eax,esi
  004cd447: 5e                                              pop    esi
  004cd448: c3                                              ret
  004cd8e0: 56                                              push   esi
  004cd8e1: 8b f1                                           mov    esi,ecx
  004cd8e3: e8 a8 ec f7 ff                                  call   0x44c590
  004cd8e8: c7 06 94 03 4e 00                               mov    DWORD PTR [esi],0x4e0394
  004cd8ee: c7 46 08 84 03 4e 00                            mov    DWORD PTR [esi+0x8],0x4e0384
  004cd8f5: 8b c6                                           mov    eax,esi
  004cd8f7: 5e                                              pop    esi
  004cd8f8: c3                                              ret
  004d26c3: 8b 75 fc                                        mov    esi,DWORD PTR [ebp-0x4]
  004d26c6: 8b 7d f8                                        mov    edi,DWORD PTR [ebp-0x8]
  004d26c9: 66 8b 3f                                        mov    di,WORD PTR [edi]
  004d26cc: 66 81 e7 ff f7                                  and    di,0xf7ff
  004d26d1: 66 89 3e                                        mov    WORD PTR [esi],di
  004d26d4: 0f b7 f7                                        movzx  esi,di
  004d26d7: 81 fe 02 40 00 00                               cmp    esi,0x4002
  004d26dd: 0f 8f 98 00 00 00                               jg     0x4d277b
  004d26e3: 0f 84 ab 00 00 00                               je     0x4d2794
  004d26e9: 83 c6 fe                                        add    esi,0xfffffffe
  004d26ec: 83 fe 0f                                        cmp    esi,0xf
  004d26ef: 0f 87 98 00 00 00                               ja     0x4d278d
  004d26f5: ff 24 b5 30 2a 4d 00                            jmp    DWORD PTR [esi*4+0x4d2a30]
  004d277b: 81 c6 fd bf ff ff                               add    esi,0xffffbffd
  004d2781: 83 fe 0e                                        cmp    esi,0xe
  004d2784: 77 07                                           ja     0x4d278d
  004d2786: ff 24 b5 70 2a 4d 00                            jmp    DWORD PTR [esi*4+0x4d2a70]
  004d278d: 66 f7 c7 00 20                                  test   di,0x2000
  004d2792: 74 5f                                           je     0x4d27f3
  004d2794: 8b 34 18                                        mov    esi,DWORD PTR [eax+ebx*1]
  004d2797: 03 d3                                           add    edx,ebx
  004d2799: 03 c3                                           add    eax,ebx
  004d279b: 89 31                                           mov    DWORD PTR [ecx],esi
  004d279d: 83 45 f8 02                                     add    DWORD PTR [ebp-0x8],0x2
  004d27a1: 83 6d fc 10                                     sub    DWORD PTR [ebp-0x4],0x10
  004d27a5: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  004d27a8: 83 e9 10                                        sub    ecx,0x10
  004d27ab: 66 83 3e 00                                     cmp    WORD PTR [esi],0x0
  004d27af: 0f 85 0e ff ff ff                               jne    0x4d26c3
  004d27b5: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  004d27b8: 8b 5d 1c                                        mov    ebx,DWORD PTR [ebp+0x1c]
  004d27bb: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  004d27be: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  004d27c1: 2b 4d d8                                        sub    ecx,DWORD PTR [ebp-0x28]
  004d27c4: c1 e0 04                                        shl    eax,0x4
  004d27c7: 03 c2                                           add    eax,edx
  004d27c9: 33 d2                                           xor    edx,edx
  004d27cb: 8d 4c 4b fe                                     lea    ecx,[ebx+ecx*2-0x2]
  004d27cf: 3b cb                                           cmp    ecx,ebx
  004d27d1: 72 77                                           jb     0x4d284a
  004d27d3: 66 8b 31                                        mov    si,WORD PTR [ecx]
  004d27d6: 0f b7 fe                                        movzx  edi,si
  004d27d9: 81 e7 ff bf ff ff                               and    edi,0xffffbfff
  004d27df: 81 ff 0c 08 00 00                               cmp    edi,0x80c
  004d27e5: 75 31                                           jne    0x4d2818
  004d27e7: 66 f7 c6 00 40                                  test   si,0x4000
  004d27ec: 74 0f                                           je     0x4d27fd
  004d27ee: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  004d27f1: eb 0c                                           jmp    0x4d27ff
  004d27f3: b8 57 00 07 80                                  mov    eax,0x80070057
  004d27f8: e9 2b 02 00 00                                  jmp    0x4d2a28
  004d27fd: 8b f0                                           mov    esi,eax
  004d27ff: 66 83 3e 0a                                     cmp    WORD PTR [esi],0xa
  004d2803: 75 13                                           jne    0x4d2818
  004d2805: 81 7e 08 04 00 02 80                            cmp    DWORD PTR [esi+0x8],0x80020004
  004d280c: 75 0a                                           jne    0x4d2818
  004d280e: 42                                              inc    edx
  004d280f: 83 c0 10                                        add    eax,0x10
  004d2812: 49                                              dec    ecx
  004d2813: 49                                              dec    ecx
  004d2814: 3b cb                                           cmp    ecx,ebx
  004d2816: 73 bb                                           jae    0x4d27d3
  004d2818: 85 d2                                           test   edx,edx
  004d281a: 76 2e                                           jbe    0x4d284a
  004d281c: 33 c9                                           xor    ecx,ecx
  004d281e: 39 4d d8                                        cmp    DWORD PTR [ebp-0x28],ecx
  004d2821: 76 1e                                           jbe    0x4d2841
  004d2823: 8b 5d f4                                        mov    ebx,DWORD PTR [ebp-0xc]
  004d2826: 8b c2                                           mov    eax,edx
  004d2828: c1 e0 04                                        shl    eax,0x4
  004d282b: 03 c3                                           add    eax,ebx
  004d282d: 8b f3                                           mov    esi,ebx
  004d282f: 8b f8                                           mov    edi,eax
  004d2831: a5                                              movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004d2832: a5                                              movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004d2833: a5                                              movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004d2834: 41                                              inc    ecx
  004d2835: 83 c3 10                                        add    ebx,0x10
  004d2838: a5                                              movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004d2839: 83 c0 10                                        add    eax,0x10
  004d283c: 3b 4d d8                                        cmp    ecx,DWORD PTR [ebp-0x28]
  004d283f: 72 ec                                           jb     0x4d282d
  004d2841: 29 55 d4                                        sub    DWORD PTR [ebp-0x2c],edx
  004d2844: c1 e2 04                                        shl    edx,0x4
  004d2847: 01 55 cc                                        add    DWORD PTR [ebp-0x34],edx
  004d284a: 8d 45 dc                                        lea    eax,[ebp-0x24]
  004d284d: 50                                              push   eax
  004d284e: ff 15 04 e4 4d 00                               call   DWORD PTR ds:0x4de404
  004d2854: 8b 75 14                                        mov    esi,DWORD PTR [ebp+0x14]
  004d2857: 6a 08                                           push   0x8
  004d2859: 83 4d ec ff                                     or     DWORD PTR [ebp-0x14],0xffffffff
  004d285d: 59                                              pop    ecx
  004d285e: 8d 55 ec                                        lea    edx,[ebp-0x14]
  004d2861: 33 c0                                           xor    eax,eax
  004d2863: 52                                              push   edx
  004d2864: 8d 55 ac                                        lea    edx,[ebp-0x54]
  004d2867: 52                                              push   edx
  004d2868: 8d 7d ac                                        lea    edi,[ebp-0x54]
  004d286b: 66 8b d6                                        mov    dx,si
  004d286e: f3 ab                                           rep stos DWORD PTR es:[edi],eax
  004d2870: 66 f7 da                                        neg    dx
  004d2873: 1b d2                                           sbb    edx,edx
  004d2875: 8d 7d dc                                        lea    edi,[ebp-0x24]
  004d2878: 23 d7                                           and    edx,edi
  004d287a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004d287d: 52                                              push   edx
  004d287e: 8d 55 cc                                        lea    edx,[ebp-0x34]
  004d2881: 52                                              push   edx
  004d2882: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d2884: ff 75 10                                        push   DWORD PTR [ebp+0x10]
  004d2887: 33 ff                                           xor    edi,edi
  004d2889: 57                                              push   edi
  004d288a: 68 98 49 56 00                                  push   0x564998
  004d288f: ff 75 0c                                        push   DWORD PTR [ebp+0xc]
  004d2892: 50                                              push   eax
  004d2893: ff 51 18                                        call   DWORD PTR [ecx+0x18]
  004d2896: 8b d8                                           mov    ebx,eax
  004d2898: 3b df                                           cmp    ebx,edi
  004d289a: 0f 8d f2 00 00 00                               jge    0x4d2992
  004d28a0: 8d 45 dc                                        lea    eax,[ebp-0x24]
  004d28a3: 50                                              push   eax
  004d28a4: ff 15 18 e4 4d 00                               call   DWORD PTR ds:0x4de418
  004d28aa: 81 fb 09 00 02 80                               cmp    ebx,0x80020009
  004d28b0: 0f 85 70 01 00 00                               jne    0x4d2a26
  004d28b6: 39 7d c4                                        cmp    DWORD PTR [ebp-0x3c],edi
  004d28b9: 74 07                                           je     0x4d28c2
  004d28bb: 8d 45 ac                                        lea    eax,[ebp-0x54]
  004d28be: 50                                              push   eax
  004d28bf: ff 55 c4                                        call   DWORD PTR [ebp-0x3c]
  004d28c2: 8d 45 18                                        lea    eax,[ebp+0x18]
  004d28c5: 89 7d 18                                        mov    DWORD PTR [ebp+0x18],edi
  004d28c8: 50                                              push   eax
  004d28c9: ff 15 0c e4 4d 00                               call   DWORD PTR ds:0x4de40c
  004d28cf: 85 c0                                           test   eax,eax
  004d28d1: 7c 6d                                           jl     0x4d2940
  004d28d3: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d28d6: 68 48 13 51 00                                  push   0x511348
  004d28db: 50                                              push   eax
  004d28dc: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d28de: ff 51 0c                                        call   DWORD PTR [ecx+0xc]
  004d28e1: 39 7d b0                                        cmp    DWORD PTR [ebp-0x50],edi
  004d28e4: 74 0c                                           je     0x4d28f2
  004d28e6: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d28e9: ff 75 b0                                        push   DWORD PTR [ebp-0x50]
  004d28ec: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d28ee: 50                                              push   eax
  004d28ef: ff 51 10                                        call   DWORD PTR [ecx+0x10]
  004d28f2: 39 7d b4                                        cmp    DWORD PTR [ebp-0x4c],edi
  004d28f5: 74 0c                                           je     0x4d2903
  004d28f7: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d28fa: ff 75 b4                                        push   DWORD PTR [ebp-0x4c]
  004d28fd: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d28ff: 50                                              push   eax
  004d2900: ff 51 14                                        call   DWORD PTR [ecx+0x14]
  004d2903: 39 7d b8                                        cmp    DWORD PTR [ebp-0x48],edi
  004d2906: 74 0c                                           je     0x4d2914
  004d2908: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d290b: ff 75 b8                                        push   DWORD PTR [ebp-0x48]
  004d290e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d2910: 50                                              push   eax
  004d2911: ff 51 18                                        call   DWORD PTR [ecx+0x18]
  004d2914: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d2917: ff 75 bc                                        push   DWORD PTR [ebp-0x44]
  004d291a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d291c: 50                                              push   eax
  004d291d: ff 51 1c                                        call   DWORD PTR [ecx+0x1c]
  004d2920: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d2923: 8b 75 24                                        mov    esi,DWORD PTR [ebp+0x24]
  004d2926: 56                                              push   esi
  004d2927: 68 38 13 51 00                                  push   0x511338
  004d292c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d292e: 50                                              push   eax
  004d292f: ff 11                                           call   DWORD PTR [ecx]
  004d2931: 85 c0                                           test   eax,eax
  004d2933: 7d 02                                           jge    0x4d2937
  004d2935: 89 3e                                           mov    DWORD PTR [esi],edi
  004d2937: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d293a: 50                                              push   eax
  004d293b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004d293d: ff 51 08                                        call   DWORD PTR [ecx+0x8]
  004d2940: 39 7d b0                                        cmp    DWORD PTR [ebp-0x50],edi
  004d2943: 8b 35 14 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de414
  004d2949: 74 05                                           je     0x4d2950
  004d294b: ff 75 b0                                        push   DWORD PTR [ebp-0x50]
  004d294e: ff d6                                           call   esi
  004d2950: 39 7d b4                                        cmp    DWORD PTR [ebp-0x4c],edi
  004d2953: 74 05                                           je     0x4d295a
  004d2955: ff 75 b4                                        push   DWORD PTR [ebp-0x4c]
  004d2958: ff d6                                           call   esi
  004d295a: 39 7d b8                                        cmp    DWORD PTR [ebp-0x48],edi
  004d295d: 74 05                                           je     0x4d2964
  004d295f: ff 75 b8                                        push   DWORD PTR [ebp-0x48]
  004d2962: ff d6                                           call   esi
  004d2964: 66 39 7d ac                                     cmp    WORD PTR [ebp-0x54],di
  004d2968: 74 20                                           je     0x4d298a
  004d296a: 66 81 7d ac 00 fe                               cmp    WORD PTR [ebp-0x54],0xfe00
  004d2970: 72 0a                                           jb     0x4d297c
  004d2972: b8 ff ff 04 80                                  mov    eax,0x8004ffff
  004d2977: e9 ac 00 00 00                                  jmp    0x4d2a28
  004d297c: 0f b7 45 ac                                     movzx  eax,WORD PTR [ebp-0x54]
  004d2980: 2d 00 fe fb 7f                                  sub    eax,0x7ffbfe00
  004d2985: e9 9e 00 00 00                                  jmp    0x4d2a28
  004d298a: 8b 45 c8                                        mov    eax,DWORD PTR [ebp-0x38]
  004d298d: e9 96 00 00 00                                  jmp    0x4d2a28
  004d2992: 66 3b f7                                        cmp    si,di
  004d2995: 0f 84 8b 00 00 00                               je     0x4d2a26
  004d299b: 66 83 fe 0c                                     cmp    si,0xc
  004d299f: 74 1c                                           je     0x4d29bd
  004d29a1: 66 3b 75 dc                                     cmp    si,WORD PTR [ebp-0x24]
  004d29a5: 74 16                                           je     0x4d29bd
  004d29a7: 56                                              push   esi
  004d29a8: 8d 45 dc                                        lea    eax,[ebp-0x24]
  004d29ab: 57                                              push   edi
  004d29ac: 50                                              push   eax
  004d29ad: 8d 45 dc                                        lea    eax,[ebp-0x24]
  004d29b0: 50                                              push   eax
  004d29b1: ff 15 f4 e3 4d 00                               call   DWORD PTR ds:0x4de3f4
  004d29b7: 8b d8                                           mov    ebx,eax
  004d29b9: 3b df                                           cmp    ebx,edi
  004d29bb: 7c 5f                                           jl     0x4d2a1c
  004d29bd: 0f b7 c6                                        movzx  eax,si
  004d29c0: 83 c0 fe                                        add    eax,0xfffffffe
  004d29c3: 83 f8 0f                                        cmp    eax,0xf
  004d29c6: 77 39                                           ja     0x4d2a01
  004d29c8: ff 24 85 ac 2a 4d 00                            jmp    DWORD PTR [eax*4+0x4d2aac]
  004d2a01: 66 81 e6 00 60                                  and    si,0x6000
  004d2a06: 66 81 fe 00 20                                  cmp    si,0x2000
  004d2a0b: 75 0a                                           jne    0x4d2a17
  004d2a0d: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004d2a10: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  004d2a13: 89 08                                           mov    DWORD PTR [eax],ecx
  004d2a15: eb 0f                                           jmp    0x4d2a26
  004d2a17: bb 57 00 07 80                                  mov    ebx,0x80070057
  004d2a1c: 8d 45 dc                                        lea    eax,[ebp-0x24]
  004d2a1f: 50                                              push   eax
  004d2a20: ff 15 18 e4 4d 00                               call   DWORD PTR ds:0x4de418
  004d2a26: 8b c3                                           mov    eax,ebx
  004d2a28: 8d 65 a0                                        lea    esp,[ebp-0x60]
  004d2a2b: 5f                                              pop    edi
  004d2a2c: 5e                                              pop    esi
  004d2a2d: 5b                                              pop    ebx
  004d2a2e: c9                                              leave
  004d2a2f: c3                                              ret
