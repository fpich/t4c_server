; PASSE 112, Dernière fermeture du graphe : destinations directes nouvelles encore manquantes
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 1757 distinct instructions; 30 graph entry points

  00402d80: 55                                              push   ebp
  00402d81: 8b ec                                           mov    ebp,esp
  00402d83: 6a ff                                           push   0xffffffff
  00402d85: 68 6d 30 4d 00                                  push   0x4d306d
  00402d8a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00402d90: 50                                              push   eax
  00402d91: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00402d98: 83 ec 0c                                        sub    esp,0xc
  00402d9b: 53                                              push   ebx
  00402d9c: 56                                              push   esi
  00402d9d: 57                                              push   edi
  00402d9e: 33 db                                           xor    ebx,ebx
  00402da0: 53                                              push   ebx
  00402da1: ff 15 bc e4 4d 00                               call   DWORD PTR ds:0x4de4bc
  00402da7: 3b c3                                           cmp    eax,ebx
  00402da9: 74 09                                           je     0x402db4
  00402dab: 83 f8 01                                        cmp    eax,0x1
  00402dae: 0f 85 b0 03 00 00                               jne    0x403164
  00402db4: 6a 17                                           push   0x17
  00402db6: 53                                              push   ebx
  00402db7: 68 c8 04 50 00                                  push   0x5004c8
  00402dbc: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00402dbf: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  00402dc2: e8 99 0b 00 00                                  call   0x403960
  00402dc7: 3b c3                                           cmp    eax,ebx
  00402dc9: 7d 0d                                           jge    0x402dd8
  00402dcb: 3d 02 40 00 80                                  cmp    eax,0x80004002
  00402dd0: 74 06                                           je     0x402dd8
  00402dd2: 50                                              push   eax
  00402dd3: e8 84 f7 0c 00                                  call   0x4d255c
  00402dd8: 51                                              push   ecx
  00402dd9: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00402ddc: 8b f4                                           mov    esi,esp
  00402dde: 6a 0c                                           push   0xc
  00402de0: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00402de3: e8 08 f2 03 00                                  call   0x441ff0
  00402de8: 83 c4 04                                        add    esp,0x4
  00402deb: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00402dee: 3b c3                                           cmp    eax,ebx
  00402df0: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00402df4: 74 0d                                           je     0x402e03
  00402df6: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00402df9: 51                                              push   ecx
  00402dfa: 8b c8                                           mov    ecx,eax
  00402dfc: e8 5f 04 00 00                                  call   0x403260
  00402e01: eb 02                                           jmp    0x402e05
  00402e03: 33 c0                                           xor    eax,eax
  00402e05: 3b c3                                           cmp    eax,ebx
  00402e07: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402e0a: 89 06                                           mov    DWORD PTR [esi],eax
  00402e0c: 75 0a                                           jne    0x402e18
  00402e0e: 68 0e 00 07 80                                  push   0x8007000e
  00402e13: e8 44 f7 0c 00                                  call   0x4d255c
  00402e18: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00402e1b: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402e1e: e8 cd 0a 00 00                                  call   0x4038f0
  00402e23: 8b c8                                           mov    ecx,eax
  00402e25: e8 56 06 00 00                                  call   0x403480
  00402e2a: 51                                              push   ecx
  00402e2b: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  00402e2e: 8b f4                                           mov    esi,esp
  00402e30: 6a 0c                                           push   0xc
  00402e32: e8 b9 f1 03 00                                  call   0x441ff0
  00402e37: 83 c4 04                                        add    esp,0x4
  00402e3a: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00402e3d: 3b c3                                           cmp    eax,ebx
  00402e3f: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00402e43: 74 0d                                           je     0x402e52
  00402e45: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00402e48: 52                                              push   edx
  00402e49: 8b c8                                           mov    ecx,eax
  00402e4b: e8 10 04 00 00                                  call   0x403260
  00402e50: eb 02                                           jmp    0x402e54
  00402e52: 33 c0                                           xor    eax,eax
  00402e54: 3b c3                                           cmp    eax,ebx
  00402e56: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402e59: 89 06                                           mov    DWORD PTR [esi],eax
  00402e5b: 75 0a                                           jne    0x402e67
  00402e5d: 68 0e 00 07 80                                  push   0x8007000e
  00402e62: e8 f5 f6 0c 00                                  call   0x4d255c
  00402e67: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00402e6a: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402e6d: e8 7e 0a 00 00                                  call   0x4038f0
  00402e72: 8b c8                                           mov    ecx,eax
  00402e74: e8 67 05 00 00                                  call   0x4033e0
  00402e79: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00402e7c: 6a 01                                           push   0x1
  00402e7e: 51                                              push   ecx
  00402e7f: 8b cc                                           mov    ecx,esp
  00402e81: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  00402e84: 50                                              push   eax
  00402e85: e8 f6 02 00 00                                  call   0x403180
  00402e8a: 51                                              push   ecx
  00402e8b: 8b cc                                           mov    ecx,esp
  00402e8d: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  00402e90: 68 58 13 51 00                                  push   0x511358
  00402e95: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00402e99: e8 e2 02 00 00                                  call   0x403180
  00402e9e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00402ea1: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402ea4: e8 47 0a 00 00                                  call   0x4038f0
  00402ea9: 8b c8                                           mov    ecx,eax
  00402eab: e8 10 07 00 00                                  call   0x4035c0
  00402eb0: 51                                              push   ecx
  00402eb1: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  00402eb4: 8b f4                                           mov    esi,esp
  00402eb6: 6a 0c                                           push   0xc
  00402eb8: e8 33 f1 03 00                                  call   0x441ff0
  00402ebd: 83 c4 04                                        add    esp,0x4
  00402ec0: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00402ec3: 3b c3                                           cmp    eax,ebx
  00402ec5: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  00402ec9: 74 0d                                           je     0x402ed8
  00402ecb: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00402ece: 51                                              push   ecx
  00402ecf: 8b c8                                           mov    ecx,eax
  00402ed1: e8 8a 03 00 00                                  call   0x403260
  00402ed6: eb 02                                           jmp    0x402eda
  00402ed8: 33 c0                                           xor    eax,eax
  00402eda: 3b c3                                           cmp    eax,ebx
  00402edc: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402edf: 89 06                                           mov    DWORD PTR [esi],eax
  00402ee1: 75 0a                                           jne    0x402eed
  00402ee3: 68 0e 00 07 80                                  push   0x8007000e
  00402ee8: e8 6f f6 0c 00                                  call   0x4d255c
  00402eed: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00402ef0: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402ef3: e8 f8 09 00 00                                  call   0x4038f0
  00402ef8: 8b c8                                           mov    ecx,eax
  00402efa: e8 a1 03 00 00                                  call   0x4032a0
  00402eff: 51                                              push   ecx
  00402f00: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  00402f03: 8b f4                                           mov    esi,esp
  00402f05: 6a 0c                                           push   0xc
  00402f07: e8 e4 f0 03 00                                  call   0x441ff0
  00402f0c: 83 c4 04                                        add    esp,0x4
  00402f0f: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00402f12: 3b c3                                           cmp    eax,ebx
  00402f14: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  00402f18: 74 0d                                           je     0x402f27
  00402f1a: 8b 55 18                                        mov    edx,DWORD PTR [ebp+0x18]
  00402f1d: 52                                              push   edx
  00402f1e: 8b c8                                           mov    ecx,eax
  00402f20: e8 3b 03 00 00                                  call   0x403260
  00402f25: eb 02                                           jmp    0x402f29
  00402f27: 33 c0                                           xor    eax,eax
  00402f29: 3b c3                                           cmp    eax,ebx
  00402f2b: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402f2e: 89 06                                           mov    DWORD PTR [esi],eax
  00402f30: 75 0a                                           jne    0x402f3c
  00402f32: 68 0e 00 07 80                                  push   0x8007000e
  00402f37: e8 20 f6 0c 00                                  call   0x4d255c
  00402f3c: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00402f3f: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402f42: e8 a9 09 00 00                                  call   0x4038f0
  00402f47: 8b c8                                           mov    ecx,eax
  00402f49: e8 f2 03 00 00                                  call   0x403340
  00402f4e: 51                                              push   ecx
  00402f4f: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  00402f52: 8b f4                                           mov    esi,esp
  00402f54: 6a 0c                                           push   0xc
  00402f56: e8 95 f0 03 00                                  call   0x441ff0
  00402f5b: 83 c4 04                                        add    esp,0x4
  00402f5e: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00402f61: 3b c3                                           cmp    eax,ebx
  00402f63: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  00402f67: 74 0e                                           je     0x402f77
  00402f69: 68 90 04 50 00                                  push   0x500490
  00402f6e: 8b c8                                           mov    ecx,eax
  00402f70: e8 eb 02 00 00                                  call   0x403260
  00402f75: eb 02                                           jmp    0x402f79
  00402f77: 33 c0                                           xor    eax,eax
  00402f79: 3b c3                                           cmp    eax,ebx
  00402f7b: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402f7e: 89 06                                           mov    DWORD PTR [esi],eax
  00402f80: 75 0a                                           jne    0x402f8c
  00402f82: 68 0e 00 07 80                                  push   0x8007000e
  00402f87: e8 d0 f5 0c 00                                  call   0x4d255c
  00402f8c: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00402f8f: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00402f92: e8 59 09 00 00                                  call   0x4038f0
  00402f97: 8b c8                                           mov    ecx,eax
  00402f99: e8 12 07 00 00                                  call   0x4036b0
  00402f9e: 8b 7d 20                                        mov    edi,DWORD PTR [ebp+0x20]
  00402fa1: 3b fb                                           cmp    edi,ebx
  00402fa3: 75 09                                           jne    0x402fae
  00402fa5: 39 5d 24                                        cmp    DWORD PTR [ebp+0x24],ebx
  00402fa8: 0f 84 d4 00 00 00                               je     0x403082
  00402fae: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00402fb1: 3b c3                                           cmp    eax,ebx
  00402fb3: 75 0d                                           jne    0x402fc2
  00402fb5: 68 03 40 00 80                                  push   0x80004003
  00402fba: e8 9d f5 0c 00                                  call   0x4d255c
  00402fbf: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00402fc2: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00402fc4: 6a 02                                           push   0x2
  00402fc6: 50                                              push   eax
  00402fc7: 8b f0                                           mov    esi,eax
  00402fc9: ff 91 58 01 00 00                               call   DWORD PTR [ecx+0x158]
  00402fcf: 3b c3                                           cmp    eax,ebx
  00402fd1: 7d 0c                                           jge    0x402fdf
  00402fd3: 68 80 04 50 00                                  push   0x500480
  00402fd8: 56                                              push   esi
  00402fd9: 50                                              push   eax
  00402fda: e8 8b f5 0c 00                                  call   0x4d256a
  00402fdf: 3b fb                                           cmp    edi,ebx
  00402fe1: 74 4c                                           je     0x40302f
  00402fe3: 51                                              push   ecx
  00402fe4: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  00402fe7: 8b f4                                           mov    esi,esp
  00402fe9: 6a 0c                                           push   0xc
  00402feb: e8 00 f0 03 00                                  call   0x441ff0
  00402ff0: 83 c4 04                                        add    esp,0x4
  00402ff3: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00402ff6: 3b c3                                           cmp    eax,ebx
  00402ff8: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  00402ffc: 74 0a                                           je     0x403008
  00402ffe: 57                                              push   edi
  00402fff: 8b c8                                           mov    ecx,eax
  00403001: e8 5a 02 00 00                                  call   0x403260
  00403006: eb 02                                           jmp    0x40300a
  00403008: 33 c0                                           xor    eax,eax
  0040300a: 3b c3                                           cmp    eax,ebx
  0040300c: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0040300f: 89 06                                           mov    DWORD PTR [esi],eax
  00403011: 75 0a                                           jne    0x40301d
  00403013: 68 0e 00 07 80                                  push   0x8007000e
  00403018: e8 3f f5 0c 00                                  call   0x4d255c
  0040301d: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00403020: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00403023: e8 c8 08 00 00                                  call   0x4038f0
  00403028: 8b c8                                           mov    ecx,eax
  0040302a: e8 21 07 00 00                                  call   0x403750
  0040302f: 8b 7d 24                                        mov    edi,DWORD PTR [ebp+0x24]
  00403032: 3b fb                                           cmp    edi,ebx
  00403034: 74 4c                                           je     0x403082
  00403036: 51                                              push   ecx
  00403037: 89 65 24                                        mov    DWORD PTR [ebp+0x24],esp
  0040303a: 8b f4                                           mov    esi,esp
  0040303c: 6a 0c                                           push   0xc
  0040303e: e8 ad ef 03 00                                  call   0x441ff0
  00403043: 83 c4 04                                        add    esp,0x4
  00403046: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00403049: 3b c3                                           cmp    eax,ebx
  0040304b: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  0040304f: 74 0a                                           je     0x40305b
  00403051: 57                                              push   edi
  00403052: 8b c8                                           mov    ecx,eax
  00403054: e8 07 02 00 00                                  call   0x403260
  00403059: eb 02                                           jmp    0x40305d
  0040305b: 33 c0                                           xor    eax,eax
  0040305d: 3b c3                                           cmp    eax,ebx
  0040305f: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00403062: 89 06                                           mov    DWORD PTR [esi],eax
  00403064: 75 0a                                           jne    0x403070
  00403066: 68 0e 00 07 80                                  push   0x8007000e
  0040306b: e8 ec f4 0c 00                                  call   0x4d255c
  00403070: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00403073: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00403076: e8 75 08 00 00                                  call   0x4038f0
  0040307b: 8b c8                                           mov    ecx,eax
  0040307d: e8 6e 07 00 00                                  call   0x4037f0
  00403082: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  00403085: 3b c3                                           cmp    eax,ebx
  00403087: 74 1f                                           je     0x4030a8
  00403089: 53                                              push   ebx
  0040308a: 51                                              push   ecx
  0040308b: 8b cc                                           mov    ecx,esp
  0040308d: 89 65 24                                        mov    DWORD PTR [ebp+0x24],esp
  00403090: 50                                              push   eax
  00403091: e8 ea 00 00 00                                  call   0x403180
  00403096: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00403099: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0040309c: e8 4f 08 00 00                                  call   0x4038f0
  004030a1: 8b c8                                           mov    ecx,eax
  004030a3: e8 78 04 00 00                                  call   0x403520
  004030a8: 8b 75 28                                        mov    esi,DWORD PTR [ebp+0x28]
  004030ab: 3b f3                                           cmp    esi,ebx
  004030ad: 74 4d                                           je     0x4030fc
  004030af: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004030b2: 3b c3                                           cmp    eax,ebx
  004030b4: 89 5d 24                                        mov    DWORD PTR [ebp+0x24],ebx
  004030b7: 75 04                                           jne    0x4030bd
  004030b9: 33 c9                                           xor    ecx,ecx
  004030bb: eb 02                                           jmp    0x4030bf
  004030bd: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004030bf: 3b c8                                           cmp    ecx,eax
  004030c1: 89 4d 24                                        mov    DWORD PTR [ebp+0x24],ecx
  004030c4: 74 36                                           je     0x4030fc
  004030c6: 53                                              push   ebx
  004030c7: 8d 4d 24                                        lea    ecx,[ebp+0x24]
  004030ca: e8 41 08 00 00                                  call   0x403910
  004030cf: 8b 10                                           mov    edx,DWORD PTR [eax]
  004030d1: 51                                              push   ecx
  004030d2: 8b cc                                           mov    ecx,esp
  004030d4: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  004030d7: 52                                              push   edx
  004030d8: e8 a3 00 00 00                                  call   0x403180
  004030dd: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004030e0: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004030e3: e8 08 08 00 00                                  call   0x4038f0
  004030e8: 8b c8                                           mov    ecx,eax
  004030ea: e8 31 04 00 00                                  call   0x403520
  004030ef: 8b 45 24                                        mov    eax,DWORD PTR [ebp+0x24]
  004030f2: 8b 00                                           mov    eax,DWORD PTR [eax]
  004030f4: 3b 46 04                                        cmp    eax,DWORD PTR [esi+0x4]
  004030f7: 89 45 24                                        mov    DWORD PTR [ebp+0x24],eax
  004030fa: 75 ca                                           jne    0x4030c6
  004030fc: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  004030ff: 3b c3                                           cmp    eax,ebx
  00403101: 75 0d                                           jne    0x403110
  00403103: 68 03 40 00 80                                  push   0x80004003
  00403108: e8 4f f4 0c 00                                  call   0x4d255c
  0040310d: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00403110: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403112: 8d 55 24                                        lea    edx,[ebp+0x24]
  00403115: 52                                              push   edx
  00403116: 50                                              push   eax
  00403117: 8b f0                                           mov    esi,eax
  00403119: ff 51 24                                        call   DWORD PTR [ecx+0x24]
  0040311c: 3b c3                                           cmp    eax,ebx
  0040311e: 7d 0c                                           jge    0x40312c
  00403120: 68 80 04 50 00                                  push   0x500480
  00403125: 56                                              push   esi
  00403126: 50                                              push   eax
  00403127: e8 3e f4 0c 00                                  call   0x4d256a
  0040312c: 39 5d 24                                        cmp    DWORD PTR [ebp+0x24],ebx
  0040312f: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00403132: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00403139: 75 1f                                           jne    0x40315a
  0040313b: 3b c3                                           cmp    eax,ebx
  0040313d: 74 06                                           je     0x403145
  0040313f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403141: 50                                              push   eax
  00403142: ff 51 08                                        call   DWORD PTR [ecx+0x8]
  00403145: b0 01                                           mov    al,0x1
  00403147: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0040314a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00403151: 5f                                              pop    edi
  00403152: 5e                                              pop    esi
  00403153: 5b                                              pop    ebx
  00403154: 8b e5                                           mov    esp,ebp
  00403156: 5d                                              pop    ebp
  00403157: c2 24 00                                        ret    0x24
  0040315a: 3b c3                                           cmp    eax,ebx
  0040315c: 74 06                                           je     0x403164
  0040315e: 8b 10                                           mov    edx,DWORD PTR [eax]
  00403160: 50                                              push   eax
  00403161: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00403164: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00403167: 5f                                              pop    edi
  00403168: 5e                                              pop    esi
  00403169: 32 c0                                           xor    al,al
  0040316b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00403172: 5b                                              pop    ebx
  00403173: 8b e5                                           mov    esp,ebp
  00403175: 5d                                              pop    ebp
  00403176: c2 24 00                                        ret    0x24
  00403920: 55                                              push   ebp
  00403921: 8b ec                                           mov    ebp,esp
  00403923: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00403926: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00403929: c1 e0 05                                        shl    eax,0x5
  0040392c: 03 c2                                           add    eax,edx
  0040392e: 5d                                              pop    ebp
  0040392f: c2 04 00                                        ret    0x4
  00403be0: 55                                              push   ebp
  00403be1: 8b ec                                           mov    ebp,esp
  00403be3: 51                                              push   ecx
  00403be4: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00403be7: 53                                              push   ebx
  00403be8: 56                                              push   esi
  00403be9: 8b f1                                           mov    esi,ecx
  00403beb: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00403bee: 3b c8                                           cmp    ecx,eax
  00403bf0: 57                                              push   edi
  00403bf1: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  00403bf4: 74 4e                                           je     0x403c44
  00403bf6: 51                                              push   ecx
  00403bf7: 51                                              push   ecx
  00403bf8: 54                                              push   esp
  00403bf9: 8b ce                                           mov    ecx,esi
  00403bfb: e8 70 ff ff ff                                  call   0x403b70
  00403c00: 51                                              push   ecx
  00403c01: 8d 45 10                                        lea    eax,[ebp+0x10]
  00403c04: 8b cc                                           mov    ecx,esp
  00403c06: 50                                              push   eax
  00403c07: e8 b4 0a 00 00                                  call   0x4046c0
  00403c0c: e8 af 0d 00 00                                  call   0x4049c0
  00403c11: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00403c14: 8b f8                                           mov    edi,eax
  00403c16: 83 c4 0c                                        add    esp,0xc
  00403c19: 3b fb                                           cmp    edi,ebx
  00403c1b: 8b f7                                           mov    esi,edi
  00403c1d: 74 0e                                           je     0x403c2d
  00403c1f: 8b ce                                           mov    ecx,esi
  00403c21: e8 9a ed ff ff                                  call   0x4029c0
  00403c26: 83 c6 20                                        add    esi,0x20
  00403c29: 3b f3                                           cmp    esi,ebx
  00403c2b: 75 f2                                           jne    0x403c1f
  00403c2d: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00403c30: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00403c33: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00403c36: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00403c39: 89 10                                           mov    DWORD PTR [eax],edx
  00403c3b: 5f                                              pop    edi
  00403c3c: 5e                                              pop    esi
  00403c3d: 5b                                              pop    ebx
  00403c3e: 8b e5                                           mov    esp,ebp
  00403c40: 5d                                              pop    ebp
  00403c41: c2 0c 00                                        ret    0xc
  00403c44: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00403c47: 5f                                              pop    edi
  00403c48: 5e                                              pop    esi
  00403c49: 89 08                                           mov    DWORD PTR [eax],ecx
  00403c4b: 5b                                              pop    ebx
  00403c4c: 8b e5                                           mov    esp,ebp
  00403c4e: 5d                                              pop    ebp
  00403c4f: c2 0c 00                                        ret    0xc
  00407860: 55                                              push   ebp
  00407861: 8b ec                                           mov    ebp,esp
  00407863: 83 ec 08                                        sub    esp,0x8
  00407866: 53                                              push   ebx
  00407867: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0040786a: 56                                              push   esi
  0040786b: 57                                              push   edi
  0040786c: 8b 79 04                                        mov    edi,DWORD PTR [ecx+0x4]
  0040786f: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00407872: 8a 56 49                                        mov    dl,BYTE PTR [esi+0x49]
  00407875: 84 d2                                           test   dl,dl
  00407877: b0 01                                           mov    al,0x1
  00407879: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  0040787c: 88 45 fc                                        mov    BYTE PTR [ebp-0x4],al
  0040787f: 75 27                                           jne    0x4078a8
  00407881: 8d 46 0c                                        lea    eax,[esi+0xc]
  00407884: 50                                              push   eax
  00407885: 53                                              push   ebx
  00407886: 8b fe                                           mov    edi,esi
  00407888: e8 c3 ea ff ff                                  call   0x406350
  0040788d: 83 c4 08                                        add    esp,0x8
  00407890: 84 c0                                           test   al,al
  00407892: 88 45 fc                                        mov    BYTE PTR [ebp-0x4],al
  00407895: 74 04                                           je     0x40789b
  00407897: 8b 36                                           mov    esi,DWORD PTR [esi]
  00407899: eb 03                                           jmp    0x40789e
  0040789b: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  0040789e: 8a 4e 49                                        mov    cl,BYTE PTR [esi+0x49]
  004078a1: 84 c9                                           test   cl,cl
  004078a3: 74 dc                                           je     0x407881
  004078a5: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004078a8: 84 c0                                           test   al,al
  004078aa: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004078ad: 74 30                                           je     0x4078df
  004078af: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004078b2: 3b 3a                                           cmp    edi,DWORD PTR [edx]
  004078b4: 75 21                                           jne    0x4078d7
  004078b6: 53                                              push   ebx
  004078b7: 57                                              push   edi
  004078b8: 6a 01                                           push   0x1
  004078ba: 8d 45 f8                                        lea    eax,[ebp-0x8]
  004078bd: 50                                              push   eax
  004078be: e8 0d 0a 00 00                                  call   0x4082d0
  004078c3: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004078c5: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004078c8: 5f                                              pop    edi
  004078c9: 5e                                              pop    esi
  004078ca: 89 08                                           mov    DWORD PTR [eax],ecx
  004078cc: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  004078d0: 5b                                              pop    ebx
  004078d1: 8b e5                                           mov    esp,ebp
  004078d3: 5d                                              pop    ebp
  004078d4: c2 08 00                                        ret    0x8
  004078d7: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004078da: e8 71 19 00 00                                  call   0x409250
  004078df: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004078e2: 8d 42 0c                                        lea    eax,[edx+0xc]
  004078e5: 53                                              push   ebx
  004078e6: 50                                              push   eax
  004078e7: e8 64 ea ff ff                                  call   0x406350
  004078ec: 83 c4 08                                        add    esp,0x8
  004078ef: 84 c0                                           test   al,al
  004078f1: 74 26                                           je     0x407919
  004078f3: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004078f6: 53                                              push   ebx
  004078f7: 57                                              push   edi
  004078f8: 50                                              push   eax
  004078f9: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  004078fc: 51                                              push   ecx
  004078fd: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00407900: e8 cb 09 00 00                                  call   0x4082d0
  00407905: 8b 10                                           mov    edx,DWORD PTR [eax]
  00407907: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040790a: 5f                                              pop    edi
  0040790b: 5e                                              pop    esi
  0040790c: 89 10                                           mov    DWORD PTR [eax],edx
  0040790e: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  00407912: 5b                                              pop    ebx
  00407913: 8b e5                                           mov    esp,ebp
  00407915: 5d                                              pop    ebp
  00407916: c2 08 00                                        ret    0x8
  00407919: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0040791c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0040791f: 5f                                              pop    edi
  00407920: 5e                                              pop    esi
  00407921: 89 08                                           mov    DWORD PTR [eax],ecx
  00407923: c6 40 04 00                                     mov    BYTE PTR [eax+0x4],0x0
  00407927: 5b                                              pop    ebx
  00407928: 8b e5                                           mov    esp,ebp
  0040792a: 5d                                              pop    ebp
  0040792b: c2 08 00                                        ret    0x8
  00407930: 55                                              push   ebp
  00407931: 8b ec                                           mov    ebp,esp
  00407933: 6a ff                                           push   0xffffffff
  00407935: 68 f4 34 4d 00                                  push   0x4d34f4
  0040793a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00407940: 50                                              push   eax
  00407941: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00407948: 51                                              push   ecx
  00407949: 53                                              push   ebx
  0040794a: 56                                              push   esi
  0040794b: 57                                              push   edi
  0040794c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0040794f: 8b 07                                           mov    eax,DWORD PTR [edi]
  00407951: 8b d9                                           mov    ebx,ecx
  00407953: 89 03                                           mov    DWORD PTR [ebx],eax
  00407955: 8a 47 04                                        mov    al,BYTE PTR [edi+0x4]
  00407958: 8d 4b 04                                        lea    ecx,[ebx+0x4]
  0040795b: 8d 77 04                                        lea    esi,[edi+0x4]
  0040795e: 88 01                                           mov    BYTE PTR [ecx],al
  00407960: 33 c0                                           xor    eax,eax
  00407962: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  00407965: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00407968: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  0040796b: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00407971: 8b 12                                           mov    edx,DWORD PTR [edx]
  00407973: 52                                              push   edx
  00407974: 50                                              push   eax
  00407975: 56                                              push   esi
  00407976: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  00407979: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0040797f: 8a 47 14                                        mov    al,BYTE PTR [edi+0x14]
  00407982: 8d 73 14                                        lea    esi,[ebx+0x14]
  00407985: 6a 00                                           push   0x0
  00407987: 8b ce                                           mov    ecx,esi
  00407989: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00407990: 88 06                                           mov    BYTE PTR [esi],al
  00407992: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00407998: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0040799d: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0040799f: 51                                              push   ecx
  004079a0: 6a 00                                           push   0x0
  004079a2: 8d 47 14                                        lea    eax,[edi+0x14]
  004079a5: 50                                              push   eax
  004079a6: 8b ce                                           mov    ecx,esi
  004079a8: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004079ae: 8b 57 24                                        mov    edx,DWORD PTR [edi+0x24]
  004079b1: 89 53 24                                        mov    DWORD PTR [ebx+0x24],edx
  004079b4: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  004079b7: 89 43 28                                        mov    DWORD PTR [ebx+0x28],eax
  004079ba: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004079bd: 8a 06                                           mov    al,BYTE PTR [esi]
  004079bf: 8d 7b 2c                                        lea    edi,[ebx+0x2c]
  004079c2: 88 07                                           mov    BYTE PTR [edi],al
  004079c4: 33 c0                                           xor    eax,eax
  004079c6: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004079c9: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004079cc: 89 47 0c                                        mov    DWORD PTR [edi+0xc],eax
  004079cf: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004079d5: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004079d8: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004079da: 8b c2                                           mov    eax,edx
  004079dc: 3b c8                                           cmp    ecx,eax
  004079de: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004079e5: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004079e8: 73 05                                           jae    0x4079ef
  004079ea: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  004079ed: 8b c1                                           mov    eax,ecx
  004079ef: 3b fe                                           cmp    edi,esi
  004079f1: 75 1b                                           jne    0x407a0e
  004079f3: 51                                              push   ecx
  004079f4: 50                                              push   eax
  004079f5: 8b cf                                           mov    ecx,edi
  004079f7: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004079fd: 6a 00                                           push   0x0
  004079ff: 6a 00                                           push   0x0
  00407a01: 8b cf                                           mov    ecx,edi
  00407a03: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00407a09: e9 81 00 00 00                                  jmp    0x407a8f
  00407a0e: 85 c0                                           test   eax,eax
  00407a10: 76 41                                           jbe    0x407a53
  00407a12: 3b c2                                           cmp    eax,edx
  00407a14: 75 3d                                           jne    0x407a53
  00407a16: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00407a19: 85 c9                                           test   ecx,ecx
  00407a1b: 75 06                                           jne    0x407a23
  00407a1d: 8b 0d d8 e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4d8
  00407a23: 80 79 ff fe                                     cmp    BYTE PTR [ecx-0x1],0xfe
  00407a27: 73 2a                                           jae    0x407a53
  00407a29: 6a 01                                           push   0x1
  00407a2b: 8b cf                                           mov    ecx,edi
  00407a2d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00407a33: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00407a36: 85 c0                                           test   eax,eax
  00407a38: 75 05                                           jne    0x407a3f
  00407a3a: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00407a3f: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00407a42: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00407a45: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  00407a48: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00407a4b: 89 4f 0c                                        mov    DWORD PTR [edi+0xc],ecx
  00407a4e: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00407a51: eb 3c                                           jmp    0x407a8f
  00407a53: 6a 01                                           push   0x1
  00407a55: 50                                              push   eax
  00407a56: 8b cf                                           mov    ecx,edi
  00407a58: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00407a5e: 84 c0                                           test   al,al
  00407a60: 74 2d                                           je     0x407a8f
  00407a62: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00407a65: 85 f6                                           test   esi,esi
  00407a67: 75 06                                           jne    0x407a6f
  00407a69: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00407a6f: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00407a72: 8b 7f 04                                        mov    edi,DWORD PTR [edi+0x4]
  00407a75: 8b d1                                           mov    edx,ecx
  00407a77: c1 e9 02                                        shr    ecx,0x2
  00407a7a: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00407a7c: 8b ca                                           mov    ecx,edx
  00407a7e: 83 e1 03                                        and    ecx,0x3
  00407a81: 8b c2                                           mov    eax,edx
  00407a83: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00407a85: 50                                              push   eax
  00407a86: 8d 4b 2c                                        lea    ecx,[ebx+0x2c]
  00407a89: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00407a8f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00407a92: 5f                                              pop    edi
  00407a93: 5e                                              pop    esi
  00407a94: 8b c3                                           mov    eax,ebx
  00407a96: 5b                                              pop    ebx
  00407a97: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00407a9e: 8b e5                                           mov    esp,ebp
  00407aa0: 5d                                              pop    ebp
  00407aa1: c2 08 00                                        ret    0x8
  004115c0: 55                                              push   ebp
  004115c1: 8b ec                                           mov    ebp,esp
  004115c3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004115c6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004115c9: 3b ca                                           cmp    ecx,edx
  004115cb: 74 15                                           je     0x4115e2
  004115cd: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004115d0: 56                                              push   esi
  004115d1: 8b 31                                           mov    esi,DWORD PTR [ecx]
  004115d3: 89 30                                           mov    DWORD PTR [eax],esi
  004115d5: 83 c1 04                                        add    ecx,0x4
  004115d8: 83 c0 04                                        add    eax,0x4
  004115db: 3b ca                                           cmp    ecx,edx
  004115dd: 75 f2                                           jne    0x4115d1
  004115df: 5e                                              pop    esi
  004115e0: 5d                                              pop    ebp
  004115e1: c3                                              ret
  004115e2: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004115e5: 5d                                              pop    ebp
  004115e6: c3                                              ret
  004115f0: 55                                              push   ebp
  004115f1: 8b ec                                           mov    ebp,esp
  004115f3: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004115f6: 85 c9                                           test   ecx,ecx
  004115f8: 76 12                                           jbe    0x41160c
  004115fa: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004115fd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00411600: 56                                              push   esi
  00411601: 8b 32                                           mov    esi,DWORD PTR [edx]
  00411603: 89 30                                           mov    DWORD PTR [eax],esi
  00411605: 83 c0 04                                        add    eax,0x4
  00411608: 49                                              dec    ecx
  00411609: 75 f6                                           jne    0x411601
  0041160b: 5e                                              pop    esi
  0041160c: 5d                                              pop    ebp
  0041160d: c3                                              ret
  00428020: 55                                              push   ebp
  00428021: 8b ec                                           mov    ebp,esp
  00428023: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00428028: 53                                              push   ebx
  00428029: 56                                              push   esi
  0042802a: 57                                              push   edi
  0042802b: 8b 7d 1c                                        mov    edi,DWORD PTR [ebp+0x1c]
  0042802e: 85 ff                                           test   edi,edi
  00428030: 8b c8                                           mov    ecx,eax
  00428032: 74 02                                           je     0x428036
  00428034: 8b cf                                           mov    ecx,edi
  00428036: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00428039: 85 f6                                           test   esi,esi
  0042803b: 74 02                                           je     0x42803f
  0042803d: 8b c6                                           mov    eax,esi
  0042803f: 51                                              push   ecx
  00428040: 50                                              push   eax
  00428041: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  00428047: 83 c4 08                                        add    esp,0x8
  0042804a: 85 c0                                           test   eax,eax
  0042804c: 0f 9c c3                                        setl   bl
  0042804f: 85 f6                                           test   esi,esi
  00428051: 74 1c                                           je     0x42806f
  00428053: 8a 46 ff                                        mov    al,BYTE PTR [esi-0x1]
  00428056: 84 c0                                           test   al,al
  00428058: 74 0b                                           je     0x428065
  0042805a: 3c ff                                           cmp    al,0xff
  0042805c: 74 07                                           je     0x428065
  0042805e: fe c8                                           dec    al
  00428060: 88 46 ff                                        mov    BYTE PTR [esi-0x1],al
  00428063: eb 0a                                           jmp    0x42806f
  00428065: 4e                                              dec    esi
  00428066: 56                                              push   esi
  00428067: e8 f4 9f 01 00                                  call   0x442060
  0042806c: 83 c4 04                                        add    esp,0x4
  0042806f: 85 ff                                           test   edi,edi
  00428071: 74 23                                           je     0x428096
  00428073: 8a 47 ff                                        mov    al,BYTE PTR [edi-0x1]
  00428076: 84 c0                                           test   al,al
  00428078: 74 12                                           je     0x42808c
  0042807a: 3c ff                                           cmp    al,0xff
  0042807c: 74 0e                                           je     0x42808c
  0042807e: fe c8                                           dec    al
  00428080: 88 47 ff                                        mov    BYTE PTR [edi-0x1],al
  00428083: 5f                                              pop    edi
  00428084: 5e                                              pop    esi
  00428085: 8a c3                                           mov    al,bl
  00428087: 5b                                              pop    ebx
  00428088: 5d                                              pop    ebp
  00428089: c2 20 00                                        ret    0x20
  0042808c: 4f                                              dec    edi
  0042808d: 57                                              push   edi
  0042808e: e8 cd 9f 01 00                                  call   0x442060
  00428093: 83 c4 04                                        add    esp,0x4
  00428096: 5f                                              pop    edi
  00428097: 5e                                              pop    esi
  00428098: 8a c3                                           mov    al,bl
  0042809a: 5b                                              pop    ebx
  0042809b: 5d                                              pop    ebp
  0042809c: c2 20 00                                        ret    0x20
  004289f0: 55                                              push   ebp
  004289f1: 8b ec                                           mov    ebp,esp
  004289f3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004289f6: 83 c0 0c                                        add    eax,0xc
  004289f9: 5d                                              pop    ebp
  004289fa: c3                                              ret
  00428e00: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00428e02: c3                                              ret
  00428ec0: 55                                              push   ebp
  00428ec1: 8b ec                                           mov    ebp,esp
  00428ec3: 56                                              push   esi
  00428ec4: 57                                              push   edi
  00428ec5: 8b f9                                           mov    edi,ecx
  00428ec7: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00428eca: 85 c0                                           test   eax,eax
  00428ecc: 74 0d                                           je     0x428edb
  00428ece: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00428ed1: 2b c8                                           sub    ecx,eax
  00428ed3: f7 c1 f8 ff ff ff                               test   ecx,0xfffffff8
  00428ed9: 75 04                                           jne    0x428edf
  00428edb: 33 f6                                           xor    esi,esi
  00428edd: eb 08                                           jmp    0x428ee7
  00428edf: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00428ee2: 2b f0                                           sub    esi,eax
  00428ee4: c1 fe 03                                        sar    esi,0x3
  00428ee7: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00428eea: 52                                              push   edx
  00428eeb: 6a 01                                           push   0x1
  00428eed: 51                                              push   ecx
  00428eee: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00428ef1: 8b cc                                           mov    ecx,esp
  00428ef3: 50                                              push   eax
  00428ef4: e8 77 00 00 00                                  call   0x428f70
  00428ef9: 8b cf                                           mov    ecx,edi
  00428efb: e8 70 0e 00 00                                  call   0x429d70
  00428f00: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00428f03: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428f06: 8d 14 f1                                        lea    edx,[ecx+esi*8]
  00428f09: 5f                                              pop    edi
  00428f0a: 89 10                                           mov    DWORD PTR [eax],edx
  00428f0c: 5e                                              pop    esi
  00428f0d: 5d                                              pop    ebp
  00428f0e: c2 0c 00                                        ret    0xc
  00429370: 55                                              push   ebp
  00429371: 8b ec                                           mov    ebp,esp
  00429373: 6a ff                                           push   0xffffffff
  00429375: 68 99 4a 4d 00                                  push   0x4d4a99
  0042937a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00429380: 50                                              push   eax
  00429381: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00429388: 83 ec 34                                        sub    esp,0x34
  0042938b: 53                                              push   ebx
  0042938c: 56                                              push   esi
  0042938d: 57                                              push   edi
  0042938e: 8b f9                                           mov    edi,ecx
  00429390: 81 7f 08 43 44 44 04                            cmp    DWORD PTR [edi+0x8],0x4444443
  00429397: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0042939a: 72 57                                           jb     0x4293f3
  0042939c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  0042939f: 6a 00                                           push   0x0
  004293a1: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004293a4: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  004293a7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004293ad: 83 c9 ff                                        or     ecx,0xffffffff
  004293b0: 33 c0                                           xor    eax,eax
  004293b2: bf a0 06 50 00                                  mov    edi,0x5006a0
  004293b7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004293b9: f7 d1                                           not    ecx
  004293bb: 49                                              dec    ecx
  004293bc: 51                                              push   ecx
  004293bd: 68 a0 06 50 00                                  push   0x5006a0
  004293c2: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004293c5: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  004293cb: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004293ce: 51                                              push   ecx
  004293cf: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  004293d2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004293d9: e8 a2 bc fd ff                                  call   0x405080
  004293de: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004293e3: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004293e6: 52                                              push   edx
  004293e7: c7 45 c0 f8 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5f8
  004293ee: e8 63 89 0a 00                                  call   0x4d1d56
  004293f3: 6a 4c                                           push   0x4c
  004293f5: e8 f6 8b 01 00                                  call   0x441ff0
  004293fa: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004293fd: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00429400: 8b d8                                           mov    ebx,eax
  00429402: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00429405: c6 43 48 00                                     mov    BYTE PTR [ebx+0x48],0x0
  00429409: c6 43 49 00                                     mov    BYTE PTR [ebx+0x49],0x0
  0042940d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00429410: 89 03                                           mov    DWORD PTR [ebx],eax
  00429412: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00429415: 52                                              push   edx
  00429416: 8d 43 0c                                        lea    eax,[ebx+0xc]
  00429419: 50                                              push   eax
  0042941a: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0042941d: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00429420: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00429427: e8 54 15 00 00                                  call   0x42a980
  0042942c: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0042942f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00429432: 83 c4 0c                                        add    esp,0xc
  00429435: 42                                              inc    edx
  00429436: 3b f0                                           cmp    esi,eax
  00429438: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0042943b: 75 10                                           jne    0x42944d
  0042943d: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00429440: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00429443: 89 19                                           mov    DWORD PTR [ecx],ebx
  00429445: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00429448: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  0042944b: eb 22                                           jmp    0x42946f
  0042944d: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  00429450: 84 c0                                           test   al,al
  00429452: 74 0d                                           je     0x429461
  00429454: 89 1e                                           mov    DWORD PTR [esi],ebx
  00429456: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00429459: 3b 30                                           cmp    esi,DWORD PTR [eax]
  0042945b: 75 12                                           jne    0x42946f
  0042945d: 89 18                                           mov    DWORD PTR [eax],ebx
  0042945f: eb 0e                                           jmp    0x42946f
  00429461: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00429464: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00429467: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  0042946a: 75 03                                           jne    0x42946f
  0042946c: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  0042946f: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00429472: 8a 51 48                                        mov    dl,BYTE PTR [ecx+0x48]
  00429475: 84 d2                                           test   dl,dl
  00429477: 8b c3                                           mov    eax,ebx
  00429479: 0f 85 98 01 00 00                               jne    0x429617
  0042947f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00429482: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00429485: 8b 16                                           mov    edx,DWORD PTR [esi]
  00429487: 3b ca                                           cmp    ecx,edx
  00429489: 0f 85 c6 00 00 00                               jne    0x429555
  0042948f: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00429492: 80 7a 48 00                                     cmp    BYTE PTR [edx+0x48],0x0
  00429496: 75 1d                                           jne    0x4294b5
  00429498: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  0042949c: c6 42 48 01                                     mov    BYTE PTR [edx+0x48],0x1
  004294a0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004294a3: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004294a6: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  004294aa: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004294ad: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004294b0: e9 54 01 00 00                                  jmp    0x429609
  004294b5: 3b 41 08                                        cmp    eax,DWORD PTR [ecx+0x8]
  004294b8: 75 3b                                           jne    0x4294f5
  004294ba: 8b c1                                           mov    eax,ecx
  004294bc: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004294bf: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004294c1: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004294c4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004294c6: 80 7a 49 00                                     cmp    BYTE PTR [edx+0x49],0x0
  004294ca: 75 03                                           jne    0x4294cf
  004294cc: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004294cf: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004294d2: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004294d5: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004294d8: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004294db: 75 05                                           jne    0x4294e2
  004294dd: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004294e0: eb 0e                                           jmp    0x4294f0
  004294e2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004294e5: 3b 02                                           cmp    eax,DWORD PTR [edx]
  004294e7: 75 04                                           jne    0x4294ed
  004294e9: 89 0a                                           mov    DWORD PTR [edx],ecx
  004294eb: eb 03                                           jmp    0x4294f0
  004294ed: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004294f0: 89 01                                           mov    DWORD PTR [ecx],eax
  004294f2: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004294f5: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004294f8: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  004294fc: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004294ff: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00429502: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  00429506: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00429509: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0042950c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042950e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00429511: 89 31                                           mov    DWORD PTR [ecx],esi
  00429513: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00429516: 80 7e 49 00                                     cmp    BYTE PTR [esi+0x49],0x0
  0042951a: 75 03                                           jne    0x42951f
  0042951c: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0042951f: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00429522: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00429525: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00429528: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0042952b: 75 0b                                           jne    0x429538
  0042952d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00429530: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00429533: e9 ce 00 00 00                                  jmp    0x429606
  00429538: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0042953b: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  0042953e: 75 0b                                           jne    0x42954b
  00429540: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00429543: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00429546: e9 bb 00 00 00                                  jmp    0x429606
  0042954b: 89 16                                           mov    DWORD PTR [esi],edx
  0042954d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00429550: e9 b1 00 00 00                                  jmp    0x429606
  00429555: 80 7a 48 00                                     cmp    BYTE PTR [edx+0x48],0x0
  00429559: 75 1d                                           jne    0x429578
  0042955b: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  0042955f: c6 42 48 01                                     mov    BYTE PTR [edx+0x48],0x1
  00429563: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00429566: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00429569: c6 42 48 00                                     mov    BYTE PTR [edx+0x48],0x0
  0042956d: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00429570: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00429573: e9 91 00 00 00                                  jmp    0x429609
  00429578: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  0042957a: 75 3d                                           jne    0x4295b9
  0042957c: 8b c1                                           mov    eax,ecx
  0042957e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00429580: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00429583: 89 10                                           mov    DWORD PTR [eax],edx
  00429585: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00429588: 80 7a 49 00                                     cmp    BYTE PTR [edx+0x49],0x0
  0042958c: 75 03                                           jne    0x429591
  0042958e: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00429591: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00429594: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00429597: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0042959a: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0042959d: 75 05                                           jne    0x4295a4
  0042959f: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004295a2: eb 0f                                           jmp    0x4295b3
  004295a4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004295a7: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  004295aa: 75 05                                           jne    0x4295b1
  004295ac: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004295af: eb 02                                           jmp    0x4295b3
  004295b1: 89 0a                                           mov    DWORD PTR [edx],ecx
  004295b3: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004295b6: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004295b9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004295bc: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  004295c0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004295c3: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004295c6: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  004295ca: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004295cd: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004295d0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004295d3: 8b 32                                           mov    esi,DWORD PTR [edx]
  004295d5: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  004295d8: 8b 32                                           mov    esi,DWORD PTR [edx]
  004295da: 80 7e 49 00                                     cmp    BYTE PTR [esi+0x49],0x0
  004295de: 75 03                                           jne    0x4295e3
  004295e0: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004295e3: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004295e6: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  004295e9: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  004295ec: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  004295ef: 75 05                                           jne    0x4295f6
  004295f1: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004295f4: eb 0e                                           jmp    0x429604
  004295f6: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004295f9: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  004295fb: 75 04                                           jne    0x429601
  004295fd: 89 16                                           mov    DWORD PTR [esi],edx
  004295ff: eb 03                                           jmp    0x429604
  00429601: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00429604: 89 0a                                           mov    DWORD PTR [edx],ecx
  00429606: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00429609: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042960c: 8a 51 48                                        mov    dl,BYTE PTR [ecx+0x48]
  0042960f: 84 d2                                           test   dl,dl
  00429611: 0f 84 68 fe ff ff                               je     0x42947f
  00429617: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0042961a: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0042961d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00429620: c6 40 48 01                                     mov    BYTE PTR [eax+0x48],0x1
  00429624: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00429627: 5f                                              pop    edi
  00429628: 89 18                                           mov    DWORD PTR [eax],ebx
  0042962a: 5e                                              pop    esi
  0042962b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00429632: 5b                                              pop    ebx
  00429633: 8b e5                                           mov    esp,ebp
  00429635: 5d                                              pop    ebp
  00429636: c2 10 00                                        ret    0x10
  00429650: 55                                              push   ebp
  00429651: 8b ec                                           mov    ebp,esp
  00429653: 6a ff                                           push   0xffffffff
  00429655: 68 b9 4a 4d 00                                  push   0x4d4ab9
  0042965a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00429660: 50                                              push   eax
  00429661: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00429668: 83 ec 0c                                        sub    esp,0xc
  0042966b: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042966e: 53                                              push   ebx
  0042966f: 56                                              push   esi
  00429670: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  00429673: 89 4d ec                                        mov    DWORD PTR [ebp-0x14],ecx
  00429676: 8a 4e 49                                        mov    cl,BYTE PTR [esi+0x49]
  00429679: 33 db                                           xor    ebx,ebx
  0042967b: 3a cb                                           cmp    cl,bl
  0042967d: 57                                              push   edi
  0042967e: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00429681: 75 65                                           jne    0x4296e8
  00429683: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00429686: 8a 07                                           mov    al,BYTE PTR [edi]
  00429688: 83 ec 10                                        sub    esp,0x10
  0042968b: 8b cc                                           mov    ecx,esp
  0042968d: 88 01                                           mov    BYTE PTR [ecx],al
  0042968f: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00429692: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00429695: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  00429698: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042969d: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042969f: 89 65 08                                        mov    DWORD PTR [ebp+0x8],esp
  004296a2: 52                                              push   edx
  004296a3: 53                                              push   ebx
  004296a4: 57                                              push   edi
  004296a5: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004296ab: 56                                              push   esi
  004296ac: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004296af: e8 3c f3 ff ff                                  call   0x4289f0
  004296b4: 83 ec 0c                                        sub    esp,0xc
  004296b7: 8b cc                                           mov    ecx,esp
  004296b9: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004296bc: 50                                              push   eax
  004296bd: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004296c3: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004296c6: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004296cd: e8 4e e9 ff ff                                  call   0x428020
  004296d2: 3a c3                                           cmp    al,bl
  004296d4: 74 05                                           je     0x4296db
  004296d6: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  004296d9: eb 05                                           jmp    0x4296e0
  004296db: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004296de: 8b 36                                           mov    esi,DWORD PTR [esi]
  004296e0: 38 5e 49                                        cmp    BYTE PTR [esi+0x49],bl
  004296e3: 74 a1                                           je     0x429686
  004296e5: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  004296e8: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004296eb: 5f                                              pop    edi
  004296ec: 5e                                              pop    esi
  004296ed: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004296f4: 5b                                              pop    ebx
  004296f5: 8b e5                                           mov    esp,ebp
  004296f7: 5d                                              pop    ebp
  004296f8: c2 04 00                                        ret    0x4
  00429700: 55                                              push   ebp
  00429701: 8b ec                                           mov    ebp,esp
  00429703: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00429706: 5d                                              pop    ebp
  00429707: c2 04 00                                        ret    0x4
  0042a160: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042a162: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  0042a165: 84 d2                                           test   dl,dl
  0042a167: 53                                              push   ebx
  0042a168: 74 07                                           je     0x42a171
  0042a16a: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0042a16d: 89 01                                           mov    DWORD PTR [ecx],eax
  0042a16f: 5b                                              pop    ebx
  0042a170: c3                                              ret
  0042a171: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042a173: 8a 5a 49                                        mov    bl,BYTE PTR [edx+0x49]
  0042a176: 84 db                                           test   bl,bl
  0042a178: 75 1a                                           jne    0x42a194
  0042a17a: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0042a17d: 8a 58 49                                        mov    bl,BYTE PTR [eax+0x49]
  0042a180: 84 db                                           test   bl,bl
  0042a182: 75 0c                                           jne    0x42a190
  0042a184: 8b d0                                           mov    edx,eax
  0042a186: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0042a189: 8a 58 49                                        mov    bl,BYTE PTR [eax+0x49]
  0042a18c: 84 db                                           test   bl,bl
  0042a18e: 74 f4                                           je     0x42a184
  0042a190: 89 11                                           mov    DWORD PTR [ecx],edx
  0042a192: 5b                                              pop    ebx
  0042a193: c3                                              ret
  0042a194: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042a197: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  0042a19a: 84 d2                                           test   dl,dl
  0042a19c: 75 1b                                           jne    0x42a1b9
  0042a19e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042a1a0: 3b 10                                           cmp    edx,DWORD PTR [eax]
  0042a1a2: 75 0c                                           jne    0x42a1b0
  0042a1a4: 89 01                                           mov    DWORD PTR [ecx],eax
  0042a1a6: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042a1a9: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  0042a1ac: 84 d2                                           test   dl,dl
  0042a1ae: 74 ee                                           je     0x42a19e
  0042a1b0: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  0042a1b3: 84 d2                                           test   dl,dl
  0042a1b5: 75 02                                           jne    0x42a1b9
  0042a1b7: 89 01                                           mov    DWORD PTR [ecx],eax
  0042a1b9: 5b                                              pop    ebx
  0042a1ba: c3                                              ret
  0042e930: 55                                              push   ebp
  0042e931: 8b ec                                           mov    ebp,esp
  0042e933: 53                                              push   ebx
  0042e934: 56                                              push   esi
  0042e935: 57                                              push   edi
  0042e936: 6a 00                                           push   0x0
  0042e938: 6a 02                                           push   0x2
  0042e93a: 6a 02                                           push   0x2
  0042e93c: e8 f1 3b 0a 00                                  call   0x4d2532
  0042e941: 83 f8 ff                                        cmp    eax,0xffffffff
  0042e944: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0042e947: 89 07                                           mov    DWORD PTR [edi],eax
  0042e949: 0f 84 e3 00 00 00                               je     0x42ea32
  0042e94f: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042e952: 8b 75 14                                        mov    esi,DWORD PTR [ebp+0x14]
  0042e955: 53                                              push   ebx
  0042e956: 66 c7 06 02 00                                  mov    WORD PTR [esi],0x2
  0042e95b: e8 cc 3b 0a 00                                  call   0x4d252c
  0042e960: 66 89 46 02                                     mov    WORD PTR [esi+0x2],ax
  0042e964: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042e967: 85 c0                                           test   eax,eax
  0042e969: 75 4a                                           jne    0x42e9b5
  0042e96b: 68 84 2b 50 00                                  push   0x502b84
  0042e970: 68 00 04 00 00                                  push   0x400
  0042e975: e8 c6 33 04 00                                  call   0x471d40
  0042e97a: 83 c4 08                                        add    esp,0x8
  0042e97d: 6a 00                                           push   0x0
  0042e97f: e8 a2 3b 0a 00                                  call   0x4d2526
  0042e984: 83 f8 ff                                        cmp    eax,0xffffffff
  0042e987: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042e98a: 75 32                                           jne    0x42e9be
  0042e98c: 68 68 2b 50 00                                  push   0x502b68
  0042e991: 68 00 04 00 00                                  push   0x400
  0042e996: e8 a5 33 04 00                                  call   0x471d40
  0042e99b: 8b 07                                           mov    eax,DWORD PTR [edi]
  0042e99d: 83 c4 08                                        add    esp,0x8
  0042e9a0: 50                                              push   eax
  0042e9a1: e8 68 3b 0a 00                                  call   0x4d250e
  0042e9a6: c7 07 00 00 00 00                               mov    DWORD PTR [edi],0x0
  0042e9ac: 5f                                              pop    edi
  0042e9ad: 5e                                              pop    esi
  0042e9ae: 32 c0                                           xor    al,al
  0042e9b0: 5b                                              pop    ebx
  0042e9b1: 5d                                              pop    ebp
  0042e9b2: c2 10 00                                        ret    0x10
  0042e9b5: 50                                              push   eax
  0042e9b6: e8 65 3b 0a 00                                  call   0x4d2520
  0042e9bb: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042e9be: 68 4c 2b 50 00                                  push   0x502b4c
  0042e9c3: 68 00 04 00 00                                  push   0x400
  0042e9c8: e8 73 33 04 00                                  call   0x471d40
  0042e9cd: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0042e9cf: 83 c4 08                                        add    esp,0x8
  0042e9d2: 6a 10                                           push   0x10
  0042e9d4: 56                                              push   esi
  0042e9d5: 51                                              push   ecx
  0042e9d6: e8 3f 3b 0a 00                                  call   0x4d251a
  0042e9db: 85 c0                                           test   eax,eax
  0042e9dd: 75 1d                                           jne    0x42e9fc
  0042e9df: 8b 07                                           mov    eax,DWORD PTR [edi]
  0042e9e1: 8d 55 0c                                        lea    edx,[ebp+0xc]
  0042e9e4: 52                                              push   edx
  0042e9e5: 56                                              push   esi
  0042e9e6: 50                                              push   eax
  0042e9e7: c7 45 0c 10 00 00 00                            mov    DWORD PTR [ebp+0xc],0x10
  0042e9ee: e8 21 3b 0a 00                                  call   0x4d2514
  0042e9f3: 5f                                              pop    edi
  0042e9f4: 5e                                              pop    esi
  0042e9f5: b0 01                                           mov    al,0x1
  0042e9f7: 5b                                              pop    ebx
  0042e9f8: 5d                                              pop    ebp
  0042e9f9: c2 10 00                                        ret    0x10
  0042e9fc: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042e9ff: 85 c0                                           test   eax,eax
  0042ea01: 74 19                                           je     0x42ea1c
  0042ea03: 81 e3 ff ff 00 00                               and    ebx,0xffff
  0042ea09: 53                                              push   ebx
  0042ea0a: 50                                              push   eax
  0042ea0b: 68 24 2b 50 00                                  push   0x502b24
  0042ea10: 6a 04                                           push   0x4
  0042ea12: e8 29 33 04 00                                  call   0x471d40
  0042ea17: 83 c4 10                                        add    esp,0x10
  0042ea1a: eb 16                                           jmp    0x42ea32
  0042ea1c: 81 e3 ff ff 00 00                               and    ebx,0xffff
  0042ea22: 53                                              push   ebx
  0042ea23: 68 00 2b 50 00                                  push   0x502b00
  0042ea28: 6a 04                                           push   0x4
  0042ea2a: e8 11 33 04 00                                  call   0x471d40
  0042ea2f: 83 c4 0c                                        add    esp,0xc
  0042ea32: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0042ea34: 51                                              push   ecx
  0042ea35: e8 d4 3a 0a 00                                  call   0x4d250e
  0042ea3a: c7 07 00 00 00 00                               mov    DWORD PTR [edi],0x0
  0042ea40: 5f                                              pop    edi
  0042ea41: 5e                                              pop    esi
  0042ea42: 32 c0                                           xor    al,al
  0042ea44: 5b                                              pop    ebx
  0042ea45: 5d                                              pop    ebp
  0042ea46: c2 10 00                                        ret    0x10
  00431320: 55                                              push   ebp
  00431321: 8b ec                                           mov    ebp,esp
  00431323: 51                                              push   ecx
  00431324: 8b c1                                           mov    eax,ecx
  00431326: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  00431329: 88 08                                           mov    BYTE PTR [eax],cl
  0043132b: 33 c9                                           xor    ecx,ecx
  0043132d: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00431330: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00431333: 89 48 0c                                        mov    DWORD PTR [eax+0xc],ecx
  00431336: 89 48 10                                        mov    DWORD PTR [eax+0x10],ecx
  00431339: 8b e5                                           mov    esp,ebp
  0043133b: 5d                                              pop    ebp
  0043133c: c3                                              ret
  004313a0: 55                                              push   ebp
  004313a1: 8b ec                                           mov    ebp,esp
  004313a3: 83 ec 08                                        sub    esp,0x8
  004313a6: 53                                              push   ebx
  004313a7: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004313aa: 56                                              push   esi
  004313ab: 57                                              push   edi
  004313ac: 8b 79 04                                        mov    edi,DWORD PTR [ecx+0x4]
  004313af: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  004313b2: 8a 56 21                                        mov    dl,BYTE PTR [esi+0x21]
  004313b5: 84 d2                                           test   dl,dl
  004313b7: b0 01                                           mov    al,0x1
  004313b9: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004313bc: 88 45 fc                                        mov    BYTE PTR [ebp-0x4],al
  004313bf: 75 27                                           jne    0x4313e8
  004313c1: 8d 46 0c                                        lea    eax,[esi+0xc]
  004313c4: 50                                              push   eax
  004313c5: 53                                              push   ebx
  004313c6: 8b fe                                           mov    edi,esi
  004313c8: e8 d3 cc ff ff                                  call   0x42e0a0
  004313cd: 83 c4 08                                        add    esp,0x8
  004313d0: 84 c0                                           test   al,al
  004313d2: 88 45 fc                                        mov    BYTE PTR [ebp-0x4],al
  004313d5: 74 04                                           je     0x4313db
  004313d7: 8b 36                                           mov    esi,DWORD PTR [esi]
  004313d9: eb 03                                           jmp    0x4313de
  004313db: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  004313de: 8a 4e 21                                        mov    cl,BYTE PTR [esi+0x21]
  004313e1: 84 c9                                           test   cl,cl
  004313e3: 74 dc                                           je     0x4313c1
  004313e5: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004313e8: 84 c0                                           test   al,al
  004313ea: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004313ed: 74 30                                           je     0x43141f
  004313ef: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004313f2: 3b 3a                                           cmp    edi,DWORD PTR [edx]
  004313f4: 75 21                                           jne    0x431417
  004313f6: 53                                              push   ebx
  004313f7: 57                                              push   edi
  004313f8: 6a 01                                           push   0x1
  004313fa: 8d 45 f8                                        lea    eax,[ebp-0x8]
  004313fd: 50                                              push   eax
  004313fe: e8 9d 01 00 00                                  call   0x4315a0
  00431403: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00431405: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00431408: 5f                                              pop    edi
  00431409: 5e                                              pop    esi
  0043140a: 89 08                                           mov    DWORD PTR [eax],ecx
  0043140c: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  00431410: 5b                                              pop    ebx
  00431411: 8b e5                                           mov    esp,ebp
  00431413: 5d                                              pop    ebp
  00431414: c2 08 00                                        ret    0x8
  00431417: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0043141a: e8 81 08 00 00                                  call   0x431ca0
  0043141f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00431422: 8d 42 0c                                        lea    eax,[edx+0xc]
  00431425: 53                                              push   ebx
  00431426: 50                                              push   eax
  00431427: e8 74 cc ff ff                                  call   0x42e0a0
  0043142c: 83 c4 08                                        add    esp,0x8
  0043142f: 84 c0                                           test   al,al
  00431431: 74 26                                           je     0x431459
  00431433: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00431436: 53                                              push   ebx
  00431437: 57                                              push   edi
  00431438: 50                                              push   eax
  00431439: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0043143c: 51                                              push   ecx
  0043143d: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00431440: e8 5b 01 00 00                                  call   0x4315a0
  00431445: 8b 10                                           mov    edx,DWORD PTR [eax]
  00431447: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043144a: 5f                                              pop    edi
  0043144b: 5e                                              pop    esi
  0043144c: 89 10                                           mov    DWORD PTR [eax],edx
  0043144e: c6 40 04 01                                     mov    BYTE PTR [eax+0x4],0x1
  00431452: 5b                                              pop    ebx
  00431453: 8b e5                                           mov    esp,ebp
  00431455: 5d                                              pop    ebp
  00431456: c2 08 00                                        ret    0x8
  00431459: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043145c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0043145f: 5f                                              pop    edi
  00431460: 5e                                              pop    esi
  00431461: 89 08                                           mov    DWORD PTR [eax],ecx
  00431463: c6 40 04 00                                     mov    BYTE PTR [eax+0x4],0x0
  00431467: 5b                                              pop    ebx
  00431468: 8b e5                                           mov    esp,ebp
  0043146a: 5d                                              pop    ebp
  0043146b: c2 08 00                                        ret    0x8
  00431560: 56                                              push   esi
  00431561: 6a 24                                           push   0x24
  00431563: 8b f1                                           mov    esi,ecx
  00431565: e8 86 0a 01 00                                  call   0x441ff0
  0043156a: 33 c9                                           xor    ecx,ecx
  0043156c: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0043156f: 88 48 21                                        mov    BYTE PTR [eax+0x21],cl
  00431572: b2 01                                           mov    dl,0x1
  00431574: 88 50 20                                        mov    BYTE PTR [eax+0x20],dl
  00431577: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0043157a: 88 50 21                                        mov    BYTE PTR [eax+0x21],dl
  0043157d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00431580: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00431583: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00431586: 89 00                                           mov    DWORD PTR [eax],eax
  00431588: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043158b: 83 c4 04                                        add    esp,0x4
  0043158e: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00431591: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00431594: 5e                                              pop    esi
  00431595: c3                                              ret
  004320e0: 55                                              push   ebp
  004320e1: 8b ec                                           mov    ebp,esp
  004320e3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004320e6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004320e9: 3b ca                                           cmp    ecx,edx
  004320eb: 74 2f                                           je     0x43211c
  004320ed: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004320f0: 53                                              push   ebx
  004320f1: 56                                              push   esi
  004320f2: 57                                              push   edi
  004320f3: 8b f1                                           mov    esi,ecx
  004320f5: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  004320f7: 8b f8                                           mov    edi,eax
  004320f9: 89 1f                                           mov    DWORD PTR [edi],ebx
  004320fb: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  004320fe: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00432101: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00432104: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00432107: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  0043210a: 83 c1 10                                        add    ecx,0x10
  0043210d: 83 c0 10                                        add    eax,0x10
  00432110: 3b ca                                           cmp    ecx,edx
  00432112: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00432115: 75 dc                                           jne    0x4320f3
  00432117: 5f                                              pop    edi
  00432118: 5e                                              pop    esi
  00432119: 5b                                              pop    ebx
  0043211a: 5d                                              pop    ebp
  0043211b: c3                                              ret
  0043211c: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0043211f: 5d                                              pop    ebp
  00432120: c3                                              ret
  0043bbc0: 55                                              push   ebp
  0043bbc1: 8b ec                                           mov    ebp,esp
  0043bbc3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0043bbc6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bbc9: 89 08                                           mov    DWORD PTR [eax],ecx
  0043bbcb: 5d                                              pop    ebp
  0043bbcc: c2 04 00                                        ret    0x4
  0048e330: 55                                              push   ebp
  0048e331: 8b ec                                           mov    ebp,esp
  0048e333: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0048e336: 57                                              push   edi
  0048e337: 8d 3c 09                                        lea    edi,[ecx+ecx*1]
  0048e33a: 33 c0                                           xor    eax,eax
  0048e33c: 85 ff                                           test   edi,edi
  0048e33e: 0f 86 9f 00 00 00                               jbe    0x48e3e3
  0048e344: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0048e347: 56                                              push   esi
  0048e348: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
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
  004ce436: ff 25 d0 e3 4d 00                               jmp    DWORD PTR ds:0x4de3d0
  004ce43c: ff 25 e8 e3 4d 00                               jmp    DWORD PTR ds:0x4de3e8
  004ce442: ff 25 ec e3 4d 00                               jmp    DWORD PTR ds:0x4de3ec
  004ce448: ff 25 dc e3 4d 00                               jmp    DWORD PTR ds:0x4de3dc
  004ce53c: ff 25 34 e5 4d 00                               jmp    DWORD PTR ds:0x4de534
  004d0620: 55                                              push   ebp
  004d0621: 8b ec                                           mov    ebp,esp
  004d0623: 83 ec 1c                                        sub    esp,0x1c
  004d0626: 56                                              push   esi
  004d0627: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004d062a: 57                                              push   edi
  004d062b: 33 c0                                           xor    eax,eax
  004d062d: b9 07 00 00 00                                  mov    ecx,0x7
  004d0632: 8b fe                                           mov    edi,esi
  004d0634: f3 ab                                           rep stos DWORD PTR es:[edi],eax
  004d0636: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004d0639: 6a 1c                                           push   0x1c
  004d063b: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004d063e: 50                                              push   eax
  004d063f: 51                                              push   ecx
  004d0640: e8 6b 00 00 00                                  call   0x4d06b0
  004d0645: 83 c4 0c                                        add    esp,0xc
  004d0648: 83 f8 1c                                        cmp    eax,0x1c
  004d064b: 74 08                                           je     0x4d0655
  004d064d: 5f                                              pop    edi
  004d064e: 33 c0                                           xor    eax,eax
  004d0650: 5e                                              pop    esi
  004d0651: 8b e5                                           mov    esp,ebp
  004d0653: 5d                                              pop    ebp
  004d0654: c3                                              ret
  004d0655: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004d0658: b8 00 00 01 00                                  mov    eax,0x10000
  004d065d: 3b c8                                           cmp    ecx,eax
  004d065f: 75 2a                                           jne    0x4d068b
  004d0661: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  004d0664: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004d0667: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004d066a: 33 c0                                           xor    eax,eax
  004d066c: 89 16                                           mov    DWORD PTR [esi],edx
  004d066e: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  004d0671: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004d0674: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004d0677: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004d067a: 5f                                              pop    edi
  004d067b: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004d067e: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004d0681: b8 01 00 00 00                                  mov    eax,0x1
  004d0686: 5e                                              pop    esi
  004d0687: 8b e5                                           mov    esp,ebp
  004d0689: 5d                                              pop    ebp
  004d068a: c3                                              ret
  004d068b: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004d068e: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004d0691: 56                                              push   esi
  004d0692: 89 06                                           mov    DWORD PTR [esi],eax
  004d0694: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004d0697: e8 84 00 00 00                                  call   0x4d0720
  004d069c: 83 c4 04                                        add    esp,0x4
  004d069f: 5f                                              pop    edi
  004d06a0: b8 01 00 00 00                                  mov    eax,0x1
  004d06a5: 5e                                              pop    esi
  004d06a6: 8b e5                                           mov    esp,ebp
  004d06a8: 5d                                              pop    ebp
  004d06a9: c3                                              ret
  004d0840: 55                                              push   ebp
  004d0841: 8b ec                                           mov    ebp,esp
  004d0843: 81 ec 04 01 00 00                               sub    esp,0x104
  004d0849: 53                                              push   ebx
  004d084a: 56                                              push   esi
  004d084b: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004d084e: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004d0851: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  004d0854: 57                                              push   edi
  004d0855: 50                                              push   eax
  004d0856: 51                                              push   ecx
  004d0857: e8 64 0c 00 00                                  call   0x4d14c0
  004d085c: 8b 16                                           mov    edx,DWORD PTR [esi]
  004d085e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004d0861: 83 c4 04                                        add    esp,0x4
  004d0864: 50                                              push   eax
  004d0865: 52                                              push   edx
  004d0866: 68 8c 0c 51 00                                  push   0x510c8c
  004d086b: 57                                              push   edi
  004d086c: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d0872: 83 c4 14                                        add    esp,0x14
  004d0875: 57                                              push   edi
  004d0876: ff 15 f4 e0 4d 00                               call   DWORD PTR ds:0x4de0f4
  004d087c: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004d087f: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004d0882: 8b 06                                           mov    eax,DWORD PTR [esi]
  004d0884: 85 c0                                           test   eax,eax
  004d0886: 74 59                                           je     0x4d08e1
  004d0888: 68 04 01 00 00                                  push   0x104
  004d088d: 8d 8d fc fe ff ff                               lea    ecx,[ebp-0x104]
  004d0893: 51                                              push   ecx
  004d0894: 50                                              push   eax
  004d0895: ff 15 ac e1 4d 00                               call   DWORD PTR ds:0x4de1ac
  004d089b: 85 c0                                           test   eax,eax
  004d089d: 76 42                                           jbe    0x4d08e1
  004d089f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004d08a2: 8d 95 fc fe ff ff                               lea    edx,[ebp-0x104]
  004d08a8: 52                                              push   edx
  004d08a9: 0f bf d0                                        movsx  edx,ax
  004d08ac: 8b cb                                           mov    ecx,ebx
  004d08ae: 2b c8                                           sub    ecx,eax
  004d08b0: 51                                              push   ecx
  004d08b1: 03 d7                                           add    edx,edi
  004d08b3: 52                                              push   edx
  004d08b4: e8 87 00 00 00                                  call   0x4d0940
  004d08b9: 83 c4 0c                                        add    esp,0xc
  004d08bc: 66 81 3d 58 49 56 00 00 02                      cmp    WORD PTR ds:0x564958,0x200
  004d08c5: 73 1a                                           jae    0x4d08e1
  004d08c7: a1 58 49 56 00                                  mov    eax,ds:0x564958
  004d08cc: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004d08ce: 25 ff ff 00 00                                  and    eax,0xffff
  004d08d3: 66 ff 05 58 49 56 00                            inc    WORD PTR ds:0x564958
  004d08da: 89 0c 85 58 41 56 00                            mov    DWORD PTR [eax*4+0x564158],ecx
  004d08e1: ff 15 84 e0 4d 00                               call   DWORD PTR ds:0x4de084
  004d08e7: 39 06                                           cmp    DWORD PTR [esi],eax
  004d08e9: 75 22                                           jne    0x4d090d
  004d08eb: 57                                              push   edi
  004d08ec: ff 15 f4 e0 4d 00                               call   DWORD PTR ds:0x4de0f4
  004d08f2: 8b d3                                           mov    edx,ebx
  004d08f4: 81 e2 ff ff 00 00                               and    edx,0xffff
  004d08fa: 83 c2 14                                        add    edx,0x14
  004d08fd: 3b c2                                           cmp    eax,edx
  004d08ff: 7d 0c                                           jge    0x4d090d
  004d0901: 68 74 0c 51 00                                  push   0x510c74
  004d0906: 57                                              push   edi
  004d0907: ff 15 94 e0 4d 00                               call   DWORD PTR ds:0x4de094
  004d090d: 8b 46 18                                        mov    eax,DWORD PTR [esi+0x18]
  004d0910: 85 c0                                           test   eax,eax
  004d0912: 74 20                                           je     0x4d0934
  004d0914: 57                                              push   edi
  004d0915: ff 15 f4 e0 4d 00                               call   DWORD PTR ds:0x4de0f4
  004d091b: 81 e3 ff ff 00 00                               and    ebx,0xffff
  004d0921: 83 c3 0c                                        add    ebx,0xc
  004d0924: 3b c3                                           cmp    eax,ebx
  004d0926: 7d 0c                                           jge    0x4d0934
  004d0928: 68 64 0c 51 00                                  push   0x510c64
  004d092d: 57                                              push   edi
  004d092e: ff 15 94 e0 4d 00                               call   DWORD PTR ds:0x4de094
  004d0934: 5f                                              pop    edi
  004d0935: 5e                                              pop    esi
  004d0936: 5b                                              pop    ebx
  004d0937: 8b e5                                           mov    esp,ebp
  004d0939: 5d                                              pop    ebp
  004d093a: c3                                              ret
  004d1230: 55                                              push   ebp
  004d1231: 8b ec                                           mov    ebp,esp
  004d1233: 83 ec 28                                        sub    esp,0x28
  004d1236: 53                                              push   ebx
  004d1237: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004d123a: 56                                              push   esi
  004d123b: 8b 35 24 e1 4d 00                               mov    esi,DWORD PTR ds:0x4de124
  004d1241: 57                                              push   edi
  004d1242: 68 98 0e 51 00                                  push   0x510e98
  004d1247: 53                                              push   ebx
  004d1248: ff d6                                           call   esi
  004d124a: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004d124d: 83 c3 40                                        add    ebx,0x40
  004d1250: 68 98 0e 51 00                                  push   0x510e98
  004d1255: 53                                              push   ebx
  004d1256: c7 07 00 00 00 00                               mov    DWORD PTR [edi],0x0
  004d125c: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  004d125f: ff d6                                           call   esi
  004d1261: 33 c0                                           xor    eax,eax
  004d1263: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004d1266: 8b 15 58 49 56 00                               mov    edx,DWORD PTR ds:0x564958
  004d126c: 66 3b d0                                        cmp    dx,ax
  004d126f: 0f 84 90 01 00 00                               je     0x4d1405
  004d1275: 81 e2 ff ff 00 00                               and    edx,0xffff
  004d127b: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004d127e: 7e 19                                           jle    0x4d1299
  004d1280: 33 c9                                           xor    ecx,ecx
  004d1282: 39 1c 8d 58 41 56 00                            cmp    DWORD PTR [ecx*4+0x564158],ebx
  004d1289: 77 08                                           ja     0x4d1293
  004d128b: 40                                              inc    eax
  004d128c: 0f bf c8                                        movsx  ecx,ax
  004d128f: 3b ca                                           cmp    ecx,edx
  004d1291: 7c ef                                           jl     0x4d1282
  004d1293: 66 85 c0                                        test   ax,ax
  004d1296: 7e 01                                           jle    0x4d1299
  004d1298: 48                                              dec    eax
  004d1299: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004d129c: 51                                              push   ecx
  004d129d: 8d 55 f0                                        lea    edx,[ebp-0x10]
  004d12a0: 52                                              push   edx
  004d12a1: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004d12a4: 51                                              push   ecx
  004d12a5: 0f bf c0                                        movsx  eax,ax
  004d12a8: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  004d12ab: 52                                              push   edx
  004d12ac: 8b 14 85 58 41 56 00                            mov    edx,DWORD PTR [eax*4+0x564158]
  004d12b3: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004d12b6: 51                                              push   ecx
  004d12b7: 52                                              push   edx
  004d12b8: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004d12bb: e8 50 01 00 00                                  call   0x4d1410
  004d12c0: 83 c4 18                                        add    esp,0x18
  004d12c3: 85 c0                                           test   eax,eax
  004d12c5: 0f 84 3a 01 00 00                               je     0x4d1405
  004d12cb: 33 d2                                           xor    edx,edx
  004d12cd: 83 ce ff                                        or     esi,0xffffffff
  004d12d0: 66 39 55 f0                                     cmp    WORD PTR [ebp-0x10],dx
  004d12d4: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004d12d7: 0f 8e 82 00 00 00                               jle    0x4d135f
  004d12dd: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004d12e0: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004d12e3: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004d12e6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004d12e8: 85 c0                                           test   eax,eax
  004d12ea: 74 63                                           je     0x4d134f
  004d12ec: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004d12ef: 03 04 8d 58 41 56 00                            add    eax,DWORD PTR [ecx*4+0x564158]
  004d12f6: 80 38 e9                                        cmp    BYTE PTR [eax],0xe9
  004d12f9: 75 2a                                           jne    0x4d1325
  004d12fb: 33 c9                                           xor    ecx,ecx
  004d12fd: 8a 48 04                                        mov    cl,BYTE PTR [eax+0x4]
  004d1300: 33 db                                           xor    ebx,ebx
  004d1302: 8a 58 03                                        mov    bl,BYTE PTR [eax+0x3]
  004d1305: c1 e1 08                                        shl    ecx,0x8
  004d1308: 03 cb                                           add    ecx,ebx
  004d130a: 33 db                                           xor    ebx,ebx
  004d130c: 8a 58 02                                        mov    bl,BYTE PTR [eax+0x2]
  004d130f: c1 e1 08                                        shl    ecx,0x8
  004d1312: 03 cb                                           add    ecx,ebx
  004d1314: 33 db                                           xor    ebx,ebx
  004d1316: 8a 58 01                                        mov    bl,BYTE PTR [eax+0x1]
  004d1319: c1 e1 08                                        shl    ecx,0x8
  004d131c: 03 d8                                           add    ebx,eax
  004d131e: 8d 44 0b 05                                     lea    eax,[ebx+ecx*1+0x5]
  004d1322: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004d1325: 3b d8                                           cmp    ebx,eax
  004d1327: 76 11                                           jbe    0x4d133a
  004d1329: 8b cb                                           mov    ecx,ebx
  004d132b: 2b c8                                           sub    ecx,eax
  004d132d: 3b ce                                           cmp    ecx,esi
  004d132f: 73 1e                                           jae    0x4d134f
  004d1331: 8b f1                                           mov    esi,ecx
  004d1333: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  004d1336: 89 07                                           mov    DWORD PTR [edi],eax
  004d1338: eb 15                                           jmp    0x4d134f
  004d133a: 8b c8                                           mov    ecx,eax
  004d133c: 2b cb                                           sub    ecx,ebx
  004d133e: 3b 4d f8                                        cmp    ecx,DWORD PTR [ebp-0x8]
  004d1341: 73 09                                           jae    0x4d134c
  004d1343: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004d1346: 89 55 dc                                        mov    DWORD PTR [ebp-0x24],edx
  004d1349: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004d134c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004d134f: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004d1352: 42                                              inc    edx
  004d1353: 83 c1 04                                        add    ecx,0x4
  004d1356: 66 3b 55 f0                                     cmp    dx,WORD PTR [ebp-0x10]
  004d135a: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  004d135d: 7c 84                                           jl     0x4d12e3
  004d135f: 33 ff                                           xor    edi,edi
  004d1361: 33 c9                                           xor    ecx,ecx
  004d1363: 83 fe ff                                        cmp    esi,0xffffffff
  004d1366: 8b 75 e4                                        mov    esi,DWORD PTR [ebp-0x1c]
  004d1369: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004d136c: 74 39                                           je     0x4d13a7
  004d136e: 33 c0                                           xor    eax,eax
  004d1370: 66 39 45 fc                                     cmp    WORD PTR [ebp-0x4],ax
  004d1374: 7e 31                                           jle    0x4d13a7
  004d1376: 0f bf 55 e0                                     movsx  edx,WORD PTR [ebp-0x20]
  004d137a: 89 55 08                                        mov    DWORD PTR [ebp+0x8],edx
  004d137d: 0f bf d0                                        movsx  edx,ax
  004d1380: 33 db                                           xor    ebx,ebx
  004d1382: 66 8b 1c 56                                     mov    bx,WORD PTR [esi+edx*2]
  004d1386: 3b 5d 08                                        cmp    ebx,DWORD PTR [ebp+0x8]
  004d1389: 74 09                                           je     0x4d1394
  004d138b: 40                                              inc    eax
  004d138c: 66 3b 45 fc                                     cmp    ax,WORD PTR [ebp-0x4]
  004d1390: 7c eb                                           jl     0x4d137d
  004d1392: eb 13                                           jmp    0x4d13a7
  004d1394: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004d1397: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  004d139a: 0f bf c0                                        movsx  eax,ax
  004d139d: 8b 0c 81                                        mov    ecx,DWORD PTR [ecx+eax*4]
  004d13a0: 03 0c 95 58 41 56 00                            add    ecx,DWORD PTR [edx*4+0x564158]
  004d13a7: 83 7d f8 ff                                     cmp    DWORD PTR [ebp-0x8],0xffffffff
  004d13ab: 74 38                                           je     0x4d13e5
  004d13ad: 33 c0                                           xor    eax,eax
  004d13af: 66 39 45 fc                                     cmp    WORD PTR [ebp-0x4],ax
  004d13b3: 7e 30                                           jle    0x4d13e5
  004d13b5: 0f bf 55 dc                                     movsx  edx,WORD PTR [ebp-0x24]
  004d13b9: 0f bf f8                                        movsx  edi,ax
  004d13bc: 33 db                                           xor    ebx,ebx
  004d13be: 66 8b 1c 7e                                     mov    bx,WORD PTR [esi+edi*2]
  004d13c2: 3b da                                           cmp    ebx,edx
  004d13c4: 74 0c                                           je     0x4d13d2
  004d13c6: 40                                              inc    eax
  004d13c7: 66 3b 45 fc                                     cmp    ax,WORD PTR [ebp-0x4]
  004d13cb: 7c ec                                           jl     0x4d13b9
  004d13cd: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004d13d0: eb 13                                           jmp    0x4d13e5
  004d13d2: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004d13d5: 0f bf c0                                        movsx  eax,ax
  004d13d8: 8b 3c 82                                        mov    edi,DWORD PTR [edx+eax*4]
  004d13db: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004d13de: 03 3c 85 58 41 56 00                            add    edi,DWORD PTR [eax*4+0x564158]
  004d13e5: 85 c9                                           test   ecx,ecx
  004d13e7: 8b 35 6c e0 4d 00                               mov    esi,DWORD PTR ds:0x4de06c
  004d13ed: 74 09                                           je     0x4d13f8
  004d13ef: 6a 40                                           push   0x40
  004d13f1: 51                                              push   ecx
  004d13f2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004d13f5: 51                                              push   ecx
  004d13f6: ff d6                                           call   esi
  004d13f8: 85 ff                                           test   edi,edi
  004d13fa: 74 09                                           je     0x4d1405
  004d13fc: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  004d13ff: 6a 40                                           push   0x40
  004d1401: 57                                              push   edi
  004d1402: 52                                              push   edx
  004d1403: ff d6                                           call   esi
  004d1405: 5f                                              pop    edi
  004d1406: 5e                                              pop    esi
  004d1407: 5b                                              pop    ebx
  004d1408: 8b e5                                           mov    esp,ebp
  004d140a: 5d                                              pop    ebp
  004d140b: c3                                              ret
