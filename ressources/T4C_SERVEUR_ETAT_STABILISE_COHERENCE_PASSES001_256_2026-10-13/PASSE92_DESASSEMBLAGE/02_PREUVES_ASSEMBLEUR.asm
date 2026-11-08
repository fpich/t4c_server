; PASSE 92, Extensions des graphes CFG des mondes, sessions et combats
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 5052 distinct instructions; 15 graph entry points

  00414b70: 55                                              push   ebp
  00414b71: 8b ec                                           mov    ebp,esp
  00414b73: 6a ff                                           push   0xffffffff
  00414b75: 68 b6 3b 4d 00                                  push   0x4d3bb6
  00414b7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00414b80: 50                                              push   eax
  00414b81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00414b88: 81 ec ac 04 00 00                               sub    esp,0x4ac
  00414b8e: 53                                              push   ebx
  00414b8f: 56                                              push   esi
  00414b90: 57                                              push   edi
  00414b91: 8b f1                                           mov    esi,ecx
  00414b93: 8b 86 78 01 00 00                               mov    eax,DWORD PTR [esi+0x178]
  00414b99: 33 ff                                           xor    edi,edi
  00414b9b: 3b c7                                           cmp    eax,edi
  00414b9d: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00414ba0: 89 be 98 01 00 00                               mov    DWORD PTR [esi+0x198],edi
  00414ba6: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00414ba9: 0f 84 fc 0f 00 00                               je     0x415bab
  00414baf: e8 6c d8 ff ff                                  call   0x412420
  00414bb4: 68 1c 1c 50 00                                  push   0x501c1c
  00414bb9: 68 00 08 00 00                                  push   0x800
  00414bbe: e8 7d d1 05 00                                  call   0x471d40
  00414bc3: 83 c4 08                                        add    esp,0x8
  00414bc6: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00414bc9: e8 90 ce 0b 00                                  call   0x4d1a5e
  00414bce: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00414bd1: 50                                              push   eax
  00414bd2: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00414bd5: 68 cc 1a 50 00                                  push   0x501acc
  00414bda: 51                                              push   ecx
  00414bdb: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00414bdf: e8 b0 ce 0b 00                                  call   0x4d1a94
  00414be4: 83 c4 0c                                        add    esp,0xc
  00414be7: b9 78 16 51 00                                  mov    ecx,0x511678
  00414bec: e8 8f 9d 03 00                                  call   0x44e980
  00414bf1: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  00414bf4: 57                                              push   edi
  00414bf5: 52                                              push   edx
  00414bf6: b9 78 16 51 00                                  mov    ecx,0x511678
  00414bfb: e8 80 a1 03 00                                  call   0x44ed80
  00414c00: 68 bc 1a 50 00                                  push   0x501abc
  00414c05: 68 00 08 00 00                                  push   0x800
  00414c0a: e8 31 d1 05 00                                  call   0x471d40
  00414c0f: 83 c4 08                                        add    esp,0x8
  00414c12: b9 78 16 51 00                                  mov    ecx,0x511678
  00414c17: e8 44 a1 03 00                                  call   0x44ed60
  00414c1c: 85 c0                                           test   eax,eax
  00414c1e: 0f 84 55 0f 00 00                               je     0x415b79
  00414c24: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00414c27: 50                                              push   eax
  00414c28: 6a 01                                           push   0x1
  00414c2a: b9 78 16 51 00                                  mov    ecx,0x511678
  00414c2f: e8 dc a2 03 00                                  call   0x44ef10
  00414c34: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00414c37: 51                                              push   ecx
  00414c38: 8b ce                                           mov    ecx,esi
  00414c3a: e8 d1 6a 07 00                                  call   0x48b710
  00414c3f: 6a 14                                           push   0x14
  00414c41: 8d 95 48 ff ff ff                               lea    edx,[ebp-0xb8]
  00414c47: 52                                              push   edx
  00414c48: 6a 02                                           push   0x2
  00414c4a: b9 78 16 51 00                                  mov    ecx,0x511678
  00414c4f: e8 cc a4 03 00                                  call   0x44f120
  00414c54: 68 ac 1a 50 00                                  push   0x501aac
  00414c59: 68 00 08 00 00                                  push   0x800
  00414c5e: e8 dd d0 05 00                                  call   0x471d40
  00414c63: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00414c66: 83 c4 08                                        add    esp,0x8
  00414c69: 8d 45 dc                                        lea    eax,[ebp-0x24]
  00414c6c: 50                                              push   eax
  00414c6d: e8 9e 21 04 00                                  call   0x456e10
  00414c72: 8b 00                                           mov    eax,DWORD PTR [eax]
  00414c74: 50                                              push   eax
  00414c75: 8d 8d 48 ff ff ff                               lea    ecx,[ebp-0xb8]
  00414c7b: 51                                              push   ecx
  00414c7c: ff 15 e4 e2 4d 00                               call   DWORD PTR ds:0x4de2e4
  00414c82: 83 c4 08                                        add    esp,0x8
  00414c85: 8b d8                                           mov    ebx,eax
  00414c87: f7 db                                           neg    ebx
  00414c89: 1a db                                           sbb    bl,bl
  00414c8b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00414c8e: fe c3                                           inc    bl
  00414c90: e8 ab cd 0b 00                                  call   0x4d1a40
  00414c95: 84 db                                           test   bl,bl
  00414c97: 0f 84 6f 0e 00 00                               je     0x415b0c
  00414c9d: 68 94 1a 50 00                                  push   0x501a94
  00414ca2: 68 00 08 00 00                                  push   0x800
  00414ca7: e8 94 d0 05 00                                  call   0x471d40
  00414cac: 83 c4 08                                        add    esp,0x8
  00414caf: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00414cb2: 52                                              push   edx
  00414cb3: 6a 03                                           push   0x3
  00414cb5: b9 78 16 51 00                                  mov    ecx,0x511678
  00414cba: e8 51 a2 03 00                                  call   0x44ef10
  00414cbf: 8b 5d ec                                        mov    ebx,DWORD PTR [ebp-0x14]
  00414cc2: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00414cc5: 50                                              push   eax
  00414cc6: 6a 04                                           push   0x4
  00414cc8: b9 78 16 51 00                                  mov    ecx,0x511678
  00414ccd: e8 3e a2 03 00                                  call   0x44ef10
  00414cd2: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00414cd5: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00414cd8: 52                                              push   edx
  00414cd9: 89 8d 78 ff ff ff                               mov    DWORD PTR [ebp-0x88],ecx
  00414cdf: 6a 05                                           push   0x5
  00414ce1: b9 78 16 51 00                                  mov    ecx,0x511678
  00414ce6: e8 25 a2 03 00                                  call   0x44ef10
  00414ceb: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00414cee: 8b 16                                           mov    edx,DWORD PTR [esi]
  00414cf0: 83 ec 0c                                        sub    esp,0xc
  00414cf3: 8b cc                                           mov    ecx,esp
  00414cf5: 89 19                                           mov    DWORD PTR [ecx],ebx
  00414cf7: 8b 9d 78 ff ff ff                               mov    ebx,DWORD PTR [ebp-0x88]
  00414cfd: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00414d00: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00414d03: 8b ce                                           mov    ecx,esi
  00414d05: ff 52 20                                        call   DWORD PTR [edx+0x20]
  00414d08: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00414d0b: 52                                              push   edx
  00414d0c: 6a 07                                           push   0x7
  00414d0e: b9 78 16 51 00                                  mov    ecx,0x511678
  00414d13: e8 f8 a1 03 00                                  call   0x44ef10
  00414d18: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00414d1b: 8b 06                                           mov    eax,DWORD PTR [esi]
  00414d1d: 57                                              push   edi
  00414d1e: 51                                              push   ecx
  00414d1f: 8b ce                                           mov    ecx,esi
  00414d21: ff 90 dc 00 00 00                               call   DWORD PTR [eax+0xdc]
  00414d27: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00414d2a: 52                                              push   edx
  00414d2b: 6a 08                                           push   0x8
  00414d2d: b9 78 16 51 00                                  mov    ecx,0x511678
  00414d32: e8 d9 a1 03 00                                  call   0x44ef10
  00414d37: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00414d3a: 8b 06                                           mov    eax,DWORD PTR [esi]
  00414d3c: 51                                              push   ecx
  00414d3d: 8b ce                                           mov    ecx,esi
  00414d3f: ff 90 d4 00 00 00                               call   DWORD PTR [eax+0xd4]
  00414d45: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00414d48: 52                                              push   edx
  00414d49: 6a 09                                           push   0x9
  00414d4b: b9 78 16 51 00                                  mov    ecx,0x511678
  00414d50: e8 9b a2 03 00                                  call   0x44eff0
  00414d55: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00414d58: 8b 06                                           mov    eax,DWORD PTR [esi]
  00414d5a: 6a 01                                           push   0x1
  00414d5c: 51                                              push   ecx
  00414d5d: 8b ce                                           mov    ecx,esi
  00414d5f: ff 90 f0 00 00 00                               call   DWORD PTR [eax+0xf0]
  00414d65: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00414d68: 52                                              push   edx
  00414d69: 6a 0a                                           push   0xa
  00414d6b: b9 78 16 51 00                                  mov    ecx,0x511678
  00414d70: e8 7b a2 03 00                                  call   0x44eff0
  00414d75: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00414d78: 8b 06                                           mov    eax,DWORD PTR [esi]
  00414d7a: 51                                              push   ecx
  00414d7b: 8b ce                                           mov    ecx,esi
  00414d7d: ff 90 e8 00 00 00                               call   DWORD PTR [eax+0xe8]
  00414d83: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00414d86: 52                                              push   edx
  00414d87: 6a 0b                                           push   0xb
  00414d89: b9 78 16 51 00                                  mov    ecx,0x511678
  00414d8e: e8 5d a2 03 00                                  call   0x44eff0
  00414d93: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00414d96: 50                                              push   eax
  00414d97: 8b ce                                           mov    ecx,esi
  00414d99: e8 22 95 07 00                                  call   0x48e2c0
  00414d9e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00414da1: 51                                              push   ecx
  00414da2: 6a 0c                                           push   0xc
  00414da4: b9 78 16 51 00                                  mov    ecx,0x511678
  00414da9: e8 42 a2 03 00                                  call   0x44eff0
  00414dae: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00414db1: 52                                              push   edx
  00414db2: 8b ce                                           mov    ecx,esi
  00414db4: e8 f7 94 07 00                                  call   0x48e2b0
  00414db9: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00414dbc: 50                                              push   eax
  00414dbd: 6a 0d                                           push   0xd
  00414dbf: b9 78 16 51 00                                  mov    ecx,0x511678
  00414dc4: e8 27 a2 03 00                                  call   0x44eff0
  00414dc9: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00414dcc: 51                                              push   ecx
  00414dcd: 8b ce                                           mov    ecx,esi
  00414dcf: e8 fc 94 07 00                                  call   0x48e2d0
  00414dd4: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00414dd7: 52                                              push   edx
  00414dd8: 6a 0e                                           push   0xe
  00414dda: b9 78 16 51 00                                  mov    ecx,0x511678
  00414ddf: e8 0c a2 03 00                                  call   0x44eff0
  00414de4: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00414de7: 50                                              push   eax
  00414de8: 8b ce                                           mov    ecx,esi
  00414dea: e8 b1 94 07 00                                  call   0x48e2a0
  00414def: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00414df2: 51                                              push   ecx
  00414df3: 6a 0f                                           push   0xf
  00414df5: b9 78 16 51 00                                  mov    ecx,0x511678
  00414dfa: e8 f1 a1 03 00                                  call   0x44eff0
  00414dff: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00414e02: 52                                              push   edx
  00414e03: 8b ce                                           mov    ecx,esi
  00414e05: e8 d6 94 07 00                                  call   0x48e2e0
  00414e0a: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00414e0d: 50                                              push   eax
  00414e0e: 6a 10                                           push   0x10
  00414e10: b9 78 16 51 00                                  mov    ecx,0x511678
  00414e15: e8 d6 a1 03 00                                  call   0x44eff0
  00414e1a: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00414e1d: 8b 16                                           mov    edx,DWORD PTR [esi]
  00414e1f: 50                                              push   eax
  00414e20: 8b ce                                           mov    ecx,esi
  00414e22: ff 92 40 01 00 00                               call   DWORD PTR [edx+0x140]
  00414e28: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00414e2b: 51                                              push   ecx
  00414e2c: 6a 11                                           push   0x11
  00414e2e: b9 78 16 51 00                                  mov    ecx,0x511678
  00414e33: e8 b8 a1 03 00                                  call   0x44eff0
  00414e38: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00414e3b: 52                                              push   edx
  00414e3c: 8b ce                                           mov    ecx,esi
  00414e3e: e8 ad 94 07 00                                  call   0x48e2f0
  00414e43: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00414e46: 50                                              push   eax
  00414e47: 6a 12                                           push   0x12
  00414e49: b9 78 16 51 00                                  mov    ecx,0x511678
  00414e4e: e8 9d a1 03 00                                  call   0x44eff0
  00414e53: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00414e56: 51                                              push   ecx
  00414e57: 8b ce                                           mov    ecx,esi
  00414e59: e8 a2 94 07 00                                  call   0x48e300
  00414e5e: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00414e61: 52                                              push   edx
  00414e62: 6a 13                                           push   0x13
  00414e64: b9 78 16 51 00                                  mov    ecx,0x511678
  00414e69: e8 a2 a0 03 00                                  call   0x44ef10
  00414e6e: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00414e71: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00414e74: 51                                              push   ecx
  00414e75: 6a 14                                           push   0x14
  00414e77: b9 78 16 51 00                                  mov    ecx,0x511678
  00414e7c: 89 45 d8                                        mov    DWORD PTR [ebp-0x28],eax
  00414e7f: e8 6c a1 03 00                                  call   0x44eff0
  00414e84: 66 8b 55 f0                                     mov    dx,WORD PTR [ebp-0x10]
  00414e88: 66 89 56 7c                                     mov    WORD PTR [esi+0x7c],dx
  00414e8c: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00414e8f: 50                                              push   eax
  00414e90: 6a 15                                           push   0x15
  00414e92: b9 78 16 51 00                                  mov    ecx,0x511678
  00414e97: e8 54 a1 03 00                                  call   0x44eff0
  00414e9c: 66 8b 4d f0                                     mov    cx,WORD PTR [ebp-0x10]
  00414ea0: 8d 55 80                                        lea    edx,[ebp-0x80]
  00414ea3: 52                                              push   edx
  00414ea4: 66 89 8e 84 00 00 00                            mov    WORD PTR [esi+0x84],cx
  00414eab: 6a 16                                           push   0x16
  00414ead: b9 78 16 51 00                                  mov    ecx,0x511678
  00414eb2: e8 a9 a2 03 00                                  call   0x44f160
  00414eb7: dd 45 80                                        fld    QWORD PTR [ebp-0x80]
  00414eba: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00414ebc: e8 b9 ce 0b 00                                  call   0x4d1d7a
  00414ec1: 52                                              push   edx
  00414ec2: 50                                              push   eax
  00414ec3: 8b ce                                           mov    ecx,esi
  00414ec5: ff 53 50                                        call   DWORD PTR [ebx+0x50]
  00414ec8: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00414ecb: 50                                              push   eax
  00414ecc: 6a 17                                           push   0x17
  00414ece: b9 78 16 51 00                                  mov    ecx,0x511678
  00414ed3: e8 18 a1 03 00                                  call   0x44eff0
  00414ed8: 66 8b 4d f0                                     mov    cx,WORD PTR [ebp-0x10]
  00414edc: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00414edf: 52                                              push   edx
  00414ee0: 66 89 8e e2 01 00 00                            mov    WORD PTR [esi+0x1e2],cx
  00414ee7: 6a 18                                           push   0x18
  00414ee9: b9 78 16 51 00                                  mov    ecx,0x511678
  00414eee: e8 fd a0 03 00                                  call   0x44eff0
  00414ef3: 66 8b 45 f0                                     mov    ax,WORD PTR [ebp-0x10]
  00414ef7: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00414efa: 51                                              push   ecx
  00414efb: 6a 06                                           push   0x6
  00414efd: b9 78 16 51 00                                  mov    ecx,0x511678
  00414f02: 66 89 86 e0 01 00 00                            mov    WORD PTR [esi+0x1e0],ax
  00414f09: e8 e2 a0 03 00                                  call   0x44eff0
  00414f0e: 8a 55 f0                                        mov    dl,BYTE PTR [ebp-0x10]
  00414f11: 8d 45 88                                        lea    eax,[ebp-0x78]
  00414f14: 50                                              push   eax
  00414f15: 6a 19                                           push   0x19
  00414f17: b9 78 16 51 00                                  mov    ecx,0x511678
  00414f1c: 88 56 58                                        mov    BYTE PTR [esi+0x58],dl
  00414f1f: e8 5c a0 03 00                                  call   0x44ef80
  00414f24: 8b 4d 88                                        mov    ecx,DWORD PTR [ebp-0x78]
  00414f27: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00414f2a: 52                                              push   edx
  00414f2b: 89 8e 80 00 00 00                               mov    DWORD PTR [esi+0x80],ecx
  00414f31: 6a 1a                                           push   0x1a
  00414f33: b9 78 16 51 00                                  mov    ecx,0x511678
  00414f38: e8 b3 a0 03 00                                  call   0x44eff0
  00414f3d: 8a 45 f0                                        mov    al,BYTE PTR [ebp-0x10]
  00414f40: 68 00 04 00 00                                  push   0x400
  00414f45: 8d 8d 48 fb ff ff                               lea    ecx,[ebp-0x4b8]
  00414f4b: 51                                              push   ecx
  00414f4c: 6a 1b                                           push   0x1b
  00414f4e: b9 78 16 51 00                                  mov    ecx,0x511678
  00414f53: 88 46 7e                                        mov    BYTE PTR [esi+0x7e],al
  00414f56: c6 85 48 fb ff ff 00                            mov    BYTE PTR [ebp-0x4b8],0x0
  00414f5d: e8 be a1 03 00                                  call   0x44f120
  00414f62: 8d 95 48 fb ff ff                               lea    edx,[ebp-0x4b8]
  00414f68: 52                                              push   edx
  00414f69: 8d 8e 64 01 00 00                               lea    ecx,[esi+0x164]
  00414f6f: e8 e4 ca 0b 00                                  call   0x4d1a58
  00414f74: 68 00 04 00 00                                  push   0x400
  00414f79: 8d 85 48 fb ff ff                               lea    eax,[ebp-0x4b8]
  00414f7f: 50                                              push   eax
  00414f80: 6a 1c                                           push   0x1c
  00414f82: b9 78 16 51 00                                  mov    ecx,0x511678
  00414f87: c6 85 48 fb ff ff 00                            mov    BYTE PTR [ebp-0x4b8],0x0
  00414f8e: e8 8d a1 03 00                                  call   0x44f120
  00414f93: 8d 8d 48 fb ff ff                               lea    ecx,[ebp-0x4b8]
  00414f99: 51                                              push   ecx
  00414f9a: 8d 8e 68 01 00 00                               lea    ecx,[esi+0x168]
  00414fa0: e8 b3 ca 0b 00                                  call   0x4d1a58
  00414fa5: 8b ce                                           mov    ecx,esi
  00414fa7: e8 74 d4 ff ff                                  call   0x412420
  00414fac: 89 be 90 00 00 00                               mov    DWORD PTR [esi+0x90],edi
  00414fb2: 89 be 88 00 00 00                               mov    DWORD PTR [esi+0x88],edi
  00414fb8: 89 be 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],edi
  00414fbe: 8d 55 ec                                        lea    edx,[ebp-0x14]
  00414fc1: 52                                              push   edx
  00414fc2: 6a 1d                                           push   0x1d
  00414fc4: b9 78 16 51 00                                  mov    ecx,0x511678
  00414fc9: e8 42 9f 03 00                                  call   0x44ef10
  00414fce: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00414fd1: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00414fd4: 51                                              push   ecx
  00414fd5: 6a 1e                                           push   0x1e
  00414fd7: b9 78 16 51 00                                  mov    ecx,0x511678
  00414fdc: 89 86 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],eax
  00414fe2: e8 29 9f 03 00                                  call   0x44ef10
  00414fe7: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00414fea: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00414fed: 50                                              push   eax
  00414fee: 6a 1f                                           push   0x1f
  00414ff0: b9 78 16 51 00                                  mov    ecx,0x511678
  00414ff5: 89 96 88 00 00 00                               mov    DWORD PTR [esi+0x88],edx
  00414ffb: e8 10 9f 03 00                                  call   0x44ef10
  00415000: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00415003: 89 8e 90 00 00 00                               mov    DWORD PTR [esi+0x90],ecx
  00415009: b9 78 16 51 00                                  mov    ecx,0x511678
  0041500e: e8 5d 9d 03 00                                  call   0x44ed70
  00415013: 8b ce                                           mov    ecx,esi
  00415015: e8 06 d4 ff ff                                  call   0x412420
  0041501a: 68 84 1a 50 00                                  push   0x501a84
  0041501f: 68 00 08 00 00                                  push   0x800
  00415024: e8 17 cd 05 00                                  call   0x471d40
  00415029: 83 c4 08                                        add    esp,0x8
  0041502c: 8b ce                                           mov    ecx,esi
  0041502e: e8 cd 66 07 00                                  call   0x48b700
  00415033: 50                                              push   eax
  00415034: 68 78 16 51 00                                  push   0x511678
  00415039: 8b ce                                           mov    ecx,esi
  0041503b: e8 30 a3 07 00                                  call   0x48f370
  00415040: 8b 16                                           mov    edx,DWORD PTR [esi]
  00415042: 57                                              push   edi
  00415043: 68 45 4e 00 00                                  push   0x4e45
  00415048: 8b ce                                           mov    ecx,esi
  0041504a: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0041504d: 85 c0                                           test   eax,eax
  0041504f: 75 11                                           jne    0x415062
  00415051: 8b 06                                           mov    eax,DWORD PTR [esi]
  00415053: 68 24 13 00 00                                  push   0x1324
  00415058: 68 45 4e 00 00                                  push   0x4e45
  0041505d: 8b ce                                           mov    ecx,esi
  0041505f: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00415062: b9 78 16 51 00                                  mov    ecx,0x511678
  00415067: e8 04 9d 03 00                                  call   0x44ed70
  0041506c: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  0041506f: 51                                              push   ecx
  00415070: c7 45 94 8c e5 4d 00                            mov    DWORD PTR [ebp-0x6c],0x4de58c
  00415077: c7 45 98 ff ff ff ff                            mov    DWORD PTR [ebp-0x68],0xffffffff
  0041507e: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00415084: 89 7d b8                                        mov    DWORD PTR [ebp-0x48],edi
  00415087: 89 7d bc                                        mov    DWORD PTR [ebp-0x44],edi
  0041508a: 89 7d c0                                        mov    DWORD PTR [ebp-0x40],edi
  0041508d: 89 7d c4                                        mov    DWORD PTR [ebp-0x3c],edi
  00415090: c7 45 94 98 e8 4d 00                            mov    DWORD PTR [ebp-0x6c],0x4de898
  00415097: 89 7d d4                                        mov    DWORD PTR [ebp-0x2c],edi
  0041509a: c6 45 c8 08                                     mov    BYTE PTR [ebp-0x38],0x8
  0041509e: 89 7d cc                                        mov    DWORD PTR [ebp-0x34],edi
  004150a1: 68 70 1a 50 00                                  push   0x501a70
  004150a6: 68 00 08 00 00                                  push   0x800
  004150ab: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004150af: e8 8c cc 05 00                                  call   0x471d40
  004150b4: 83 c4 08                                        add    esp,0x8
  004150b7: 8b ce                                           mov    ecx,esi
  004150b9: e8 42 66 07 00                                  call   0x48b700
  004150be: 50                                              push   eax
  004150bf: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  004150c2: 68 28 1a 50 00                                  push   0x501a28
  004150c7: 52                                              push   edx
  004150c8: e8 c7 c9 0b 00                                  call   0x4d1a94
  004150cd: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  004150d0: 83 c4 0c                                        add    esp,0xc
  004150d3: 57                                              push   edi
  004150d4: 50                                              push   eax
  004150d5: b9 78 16 51 00                                  mov    ecx,0x511678
  004150da: e8 a1 9c 03 00                                  call   0x44ed80
  004150df: 85 c0                                           test   eax,eax
  004150e1: 0f 84 c0 03 00 00                               je     0x4154a7
  004150e7: b9 78 16 51 00                                  mov    ecx,0x511678
  004150ec: e8 6f 9c 03 00                                  call   0x44ed60
  004150f1: 85 c0                                           test   eax,eax
  004150f3: 0f 84 f0 00 00 00                               je     0x4151e9
  004150f9: 6a 40                                           push   0x40
  004150fb: e8 f0 ce 02 00                                  call   0x441ff0
  00415100: 8b f8                                           mov    edi,eax
  00415102: 83 c4 04                                        add    esp,0x4
  00415105: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00415108: 51                                              push   ecx
  00415109: 6a 01                                           push   0x1
  0041510b: b9 78 16 51 00                                  mov    ecx,0x511678
  00415110: e8 fb 9d 03 00                                  call   0x44ef10
  00415115: 57                                              push   edi
  00415116: 6a 02                                           push   0x2
  00415118: b9 78 16 51 00                                  mov    ecx,0x511678
  0041511d: e8 2e 9f 03 00                                  call   0x44f050
  00415122: 6a 32                                           push   0x32
  00415124: 8d 57 0c                                        lea    edx,[edi+0xc]
  00415127: 52                                              push   edx
  00415128: 6a 03                                           push   0x3
  0041512a: b9 78 16 51 00                                  mov    ecx,0x511678
  0041512f: e8 ec 9f 03 00                                  call   0x44f120
  00415134: 8d 5f 08                                        lea    ebx,[edi+0x8]
  00415137: 53                                              push   ebx
  00415138: 6a 04                                           push   0x4
  0041513a: b9 78 16 51 00                                  mov    ecx,0x511678
  0041513f: e8 cc 9d 03 00                                  call   0x44ef10
  00415144: 83 3b 00                                        cmp    DWORD PTR [ebx],0x0
  00415147: 75 06                                           jne    0x41514f
  00415149: c7 03 01 00 00 00                               mov    DWORD PTR [ebx],0x1
  0041514f: 8b 45 bc                                        mov    eax,DWORD PTR [ebp-0x44]
  00415152: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  00415155: 42                                              inc    edx
  00415156: 85 c0                                           test   eax,eax
  00415158: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041515b: c7 45 d4 00 00 00 00                            mov    DWORD PTR [ebp-0x2c],0x0
  00415162: c6 45 c8 08                                     mov    BYTE PTR [ebp-0x38],0x8
  00415166: 89 45 c0                                        mov    DWORD PTR [ebp-0x40],eax
  00415169: 89 55 cc                                        mov    DWORD PTR [ebp-0x34],edx
  0041516c: 6a 0c                                           push   0xc
  0041516e: 75 2a                                           jne    0x41519a
  00415170: e8 7b ce 02 00                                  call   0x441ff0
  00415175: 33 c9                                           xor    ecx,ecx
  00415177: 83 c4 04                                        add    esp,0x4
  0041517a: 3b c1                                           cmp    eax,ecx
  0041517c: 74 07                                           je     0x415185
  0041517e: 89 08                                           mov    DWORD PTR [eax],ecx
  00415180: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00415183: eb 02                                           jmp    0x415187
  00415185: 33 c0                                           xor    eax,eax
  00415187: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041518a: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041518d: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  00415190: 89 08                                           mov    DWORD PTR [eax],ecx
  00415192: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  00415195: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00415198: eb 37                                           jmp    0x4151d1
  0041519a: e8 51 ce 02 00                                  call   0x441ff0
  0041519f: 83 c4 04                                        add    esp,0x4
  004151a2: 85 c0                                           test   eax,eax
  004151a4: 74 0f                                           je     0x4151b5
  004151a6: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  004151ac: c7 40 04 00 00 00 00                            mov    DWORD PTR [eax+0x4],0x0
  004151b3: eb 02                                           jmp    0x4151b7
  004151b5: 33 c0                                           xor    eax,eax
  004151b7: 8b 4d b4                                        mov    ecx,DWORD PTR [ebp-0x4c]
  004151ba: 89 01                                           mov    DWORD PTR [ecx],eax
  004151bc: 8b 55 c0                                        mov    edx,DWORD PTR [ebp-0x40]
  004151bf: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  004151c2: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  004151c5: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004151c8: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  004151cb: c7 00 00 00 00 00                               mov    DWORD PTR [eax],0x0
  004151d1: 8b 4d b4                                        mov    ecx,DWORD PTR [ebp-0x4c]
  004151d4: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  004151d7: b9 78 16 51 00                                  mov    ecx,0x511678
  004151dc: e8 7f 9b 03 00                                  call   0x44ed60
  004151e1: 85 c0                                           test   eax,eax
  004151e3: 0f 85 10 ff ff ff                               jne    0x4150f9
  004151e9: b9 78 16 51 00                                  mov    ecx,0x511678
  004151ee: e8 7d 9b 03 00                                  call   0x44ed70
  004151f3: 33 c0                                           xor    eax,eax
  004151f5: 8d be a0 01 00 00                               lea    edi,[esi+0x1a0]
  004151fb: b9 10 00 00 00                                  mov    ecx,0x10
  00415200: f3 ab                                           rep stos DWORD PTR es:[edi],eax
  00415202: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  00415205: 33 c9                                           xor    ecx,ecx
  00415207: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041520a: 89 4d d4                                        mov    DWORD PTR [ebp-0x2c],ecx
  0041520d: c6 45 c8 08                                     mov    BYTE PTR [ebp-0x38],0x8
  00415211: 85 c9                                           test   ecx,ecx
  00415213: 74 07                                           je     0x41521c
  00415215: 8b 00                                           mov    eax,DWORD PTR [eax]
  00415217: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041521a: eb 08                                           jmp    0x415224
  0041521c: b9 01 00 00 00                                  mov    ecx,0x1
  00415221: 89 4d d4                                        mov    DWORD PTR [ebp-0x2c],ecx
  00415224: 85 c0                                           test   eax,eax
  00415226: 0f 84 6a 02 00 00                               je     0x415496
  0041522c: 8b 58 08                                        mov    ebx,DWORD PTR [eax+0x8]
  0041522f: 68 20 01 00 00                                  push   0x120
  00415234: e8 b7 cd 02 00                                  call   0x441ff0
  00415239: 83 c4 04                                        add    esp,0x4
  0041523c: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0041523f: 85 c0                                           test   eax,eax
  00415241: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00415245: 74 0b                                           je     0x415252
  00415247: 8b c8                                           mov    ecx,eax
  00415249: e8 32 6b 03 00                                  call   0x44bd80
  0041524e: 8b f8                                           mov    edi,eax
  00415250: eb 02                                           jmp    0x415254
  00415252: 33 ff                                           xor    edi,edi
  00415254: 6a 01                                           push   0x1
  00415256: 6a 03                                           push   0x3
  00415258: 51                                              push   ecx
  00415259: 8d 53 0c                                        lea    edx,[ebx+0xc]
  0041525c: 8b cc                                           mov    ecx,esp
  0041525e: 89 65 e0                                        mov    DWORD PTR [ebp-0x20],esp
  00415261: 52                                              push   edx
  00415262: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00415266: e8 75 09 00 00                                  call   0x415be0
  0041526b: e8 60 50 07 00                                  call   0x48a2d0
  00415270: 8b 17                                           mov    edx,DWORD PTR [edi]
  00415272: 83 c4 0c                                        add    esp,0xc
  00415275: 8b cf                                           mov    ecx,edi
  00415277: 25 ff ff 00 00                                  and    eax,0xffff
  0041527c: 50                                              push   eax
  0041527d: 6a 03                                           push   0x3
  0041527f: ff 52 18                                        call   DWORD PTR [edx+0x18]
  00415282: 85 c0                                           test   eax,eax
  00415284: 0f 84 36 01 00 00                               je     0x4153c0
  0041528a: 8b cf                                           mov    ecx,edi
  0041528c: e8 6f 64 07 00                                  call   0x48b700
  00415291: 89 45 dc                                        mov    DWORD PTR [ebp-0x24],eax
  00415294: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00415297: 50                                              push   eax
  00415298: 8b cf                                           mov    ecx,edi
  0041529a: e8 71 64 07 00                                  call   0x48b710
  0041529f: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004152a2: 51                                              push   ecx
  004152a3: 8b cf                                           mov    ecx,edi
  004152a5: e8 56 71 03 00                                  call   0x44c400
  004152aa: 8b 17                                           mov    edx,DWORD PTR [edi]
  004152ac: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004152af: 50                                              push   eax
  004152b0: 6a 00                                           push   0x0
  004152b2: 6a 00                                           push   0x0
  004152b4: 6a 00                                           push   0x0
  004152b6: 6a 00                                           push   0x0
  004152b8: 6a 14                                           push   0x14
  004152ba: 8b cf                                           mov    ecx,edi
  004152bc: c7 45 e8 00 00 00 00                            mov    DWORD PTR [ebp-0x18],0x0
  004152c3: ff 52 24                                        call   DWORD PTR [edx+0x24]
  004152c6: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004152c9: 33 c0                                           xor    eax,eax
  004152cb: 85 c9                                           test   ecx,ecx
  004152cd: 74 0d                                           je     0x4152dc
  004152cf: 8b 91 38 01 00 00                               mov    edx,DWORD PTR [ecx+0x138]
  004152d5: 85 d2                                           test   edx,edx
  004152d7: 7d 03                                           jge    0x4152dc
  004152d9: 83 c8 ff                                        or     eax,0xffffffff
  004152dc: 8b 17                                           mov    edx,DWORD PTR [edi]
  004152de: 50                                              push   eax
  004152df: 6a 1b                                           push   0x1b
  004152e1: 8b cf                                           mov    ecx,edi
  004152e3: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004152e6: 8b ce                                           mov    ecx,esi
  004152e8: e8 13 64 07 00                                  call   0x48b700
  004152ed: 50                                              push   eax
  004152ee: 68 78 16 51 00                                  push   0x511678
  004152f3: 8b cf                                           mov    ecx,edi
  004152f5: e8 76 a0 07 00                                  call   0x48f370
  004152fa: b9 78 16 51 00                                  mov    ecx,0x511678
  004152ff: e8 6c 9a 03 00                                  call   0x44ed70
  00415304: 8b cf                                           mov    ecx,edi
  00415306: e8 f5 71 03 00                                  call   0x44c500
  0041530b: 84 c0                                           test   al,al
  0041530d: 75 0b                                           jne    0x41531a
  0041530f: 8b 07                                           mov    eax,DWORD PTR [edi]
  00415311: 6a 01                                           push   0x1
  00415313: 6a 1b                                           push   0x1b
  00415315: 8b cf                                           mov    ecx,edi
  00415317: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0041531a: 8b ce                                           mov    ecx,esi
  0041531c: e8 df 63 07 00                                  call   0x48b700
  00415321: 50                                              push   eax
  00415322: 68 78 16 51 00                                  push   0x511678
  00415327: 8b cf                                           mov    ecx,edi
  00415329: e8 42 9d 07 00                                  call   0x48f070
  0041532e: b9 78 16 51 00                                  mov    ecx,0x511678
  00415333: e8 38 9a 03 00                                  call   0x44ed70
  00415338: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0041533b: 51                                              push   ecx
  0041533c: 8b cf                                           mov    ecx,edi
  0041533e: e8 cd 63 07 00                                  call   0x48b710
  00415343: 8a 03                                           mov    al,BYTE PTR [ebx]
  00415345: 84 c0                                           test   al,al
  00415347: 75 0a                                           jne    0x415353
  00415349: 57                                              push   edi
  0041534a: 8b ce                                           mov    ecx,esi
  0041534c: e8 cf b9 00 00                                  call   0x420d20
  00415351: eb 77                                           jmp    0x4153ca
  00415353: 3c 10                                           cmp    al,0x10
  00415355: 77 73                                           ja     0x4153ca
  00415357: 25 ff 00 00 00                                  and    eax,0xff
  0041535c: 8d 50 ff                                        lea    edx,[eax-0x1]
  0041535f: 83 fa 0a                                        cmp    edx,0xa
  00415362: 75 3a                                           jne    0x41539e
  00415364: 8b 8e c0 01 00 00                               mov    ecx,DWORD PTR [esi+0x1c0]
  0041536a: 85 c9                                           test   ecx,ecx
  0041536c: 74 08                                           je     0x415376
  0041536e: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00415370: ff 90 c4 01 00 00                               call   DWORD PTR [eax+0x1c4]
  00415376: 8b 8e c4 01 00 00                               mov    ecx,DWORD PTR [esi+0x1c4]
  0041537c: 3b 8e c0 01 00 00                               cmp    ecx,DWORD PTR [esi+0x1c0]
  00415382: 74 0c                                           je     0x415390
  00415384: 85 c9                                           test   ecx,ecx
  00415386: 74 08                                           je     0x415390
  00415388: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041538a: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  00415390: 89 be c4 01 00 00                               mov    DWORD PTR [esi+0x1c4],edi
  00415396: 89 be c0 01 00 00                               mov    DWORD PTR [esi+0x1c0],edi
  0041539c: eb 2c                                           jmp    0x4153ca
  0041539e: 8b 84 86 9c 01 00 00                            mov    eax,DWORD PTR [esi+eax*4+0x19c]
  004153a5: 85 c0                                           test   eax,eax
  004153a7: 74 0a                                           je     0x4153b3
  004153a9: 8b 10                                           mov    edx,DWORD PTR [eax]
  004153ab: 8b c8                                           mov    ecx,eax
  004153ad: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  004153b3: 33 c0                                           xor    eax,eax
  004153b5: 8a 03                                           mov    al,BYTE PTR [ebx]
  004153b7: 89 bc 86 9c 01 00 00                            mov    DWORD PTR [esi+eax*4+0x19c],edi
  004153be: eb 0a                                           jmp    0x4153ca
  004153c0: 8b 17                                           mov    edx,DWORD PTR [edi]
  004153c2: 8b cf                                           mov    ecx,edi
  004153c4: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  004153ca: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  004153cd: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  004153d0: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  004153d3: 4a                                              dec    edx
  004153d4: 89 55 cc                                        mov    DWORD PTR [ebp-0x34],edx
  004153d7: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  004153da: 3b c2                                           cmp    eax,edx
  004153dc: 89 45 c0                                        mov    DWORD PTR [ebp-0x40],eax
  004153df: 74 38                                           je     0x415419
  004153e1: 3b c1                                           cmp    eax,ecx
  004153e3: 74 5f                                           je     0x415444
  004153e5: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004153e7: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004153ea: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004153ed: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  004153f0: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004153f3: 8b 10                                           mov    edx,DWORD PTR [eax]
  004153f5: 89 11                                           mov    DWORD PTR [ecx],edx
  004153f7: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004153fa: 83 f8 01                                        cmp    eax,0x1
  004153fd: 75 0b                                           jne    0x41540a
  004153ff: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  00415402: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00415405: 89 4d b4                                        mov    DWORD PTR [ebp-0x4c],ecx
  00415408: eb 69                                           jmp    0x415473
  0041540a: 83 f8 02                                        cmp    eax,0x2
  0041540d: 75 64                                           jne    0x415473
  0041540f: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  00415412: 8b 02                                           mov    eax,DWORD PTR [edx]
  00415414: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  00415417: eb 5a                                           jmp    0x415473
  00415419: 3b c1                                           cmp    eax,ecx
  0041541b: 74 27                                           je     0x415444
  0041541d: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00415420: c7 01 00 00 00 00                               mov    DWORD PTR [ecx],0x0
  00415426: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  00415429: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041542c: 89 55 bc                                        mov    DWORD PTR [ebp-0x44],edx
  0041542f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00415432: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  00415435: 83 7d d4 02                                     cmp    DWORD PTR [ebp-0x2c],0x2
  00415439: 75 38                                           jne    0x415473
  0041543b: c7 45 d4 00 00 00 00                            mov    DWORD PTR [ebp-0x2c],0x0
  00415442: eb 2f                                           jmp    0x415473
  00415444: 3b c2                                           cmp    eax,edx
  00415446: 74 1d                                           je     0x415465
  00415448: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041544a: 33 c9                                           xor    ecx,ecx
  0041544c: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041544f: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  00415452: 8b 00                                           mov    eax,DWORD PTR [eax]
  00415454: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  00415457: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041545a: 83 7d d4 01                                     cmp    DWORD PTR [ebp-0x2c],0x1
  0041545e: 75 13                                           jne    0x415473
  00415460: 89 4d d4                                        mov    DWORD PTR [ebp-0x2c],ecx
  00415463: eb 0e                                           jmp    0x415473
  00415465: 33 c0                                           xor    eax,eax
  00415467: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041546a: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041546d: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  00415470: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  00415473: 8b 4d c0                                        mov    ecx,DWORD PTR [ebp-0x40]
  00415476: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00415479: 52                                              push   edx
  0041547a: e8 e1 cb 02 00                                  call   0x442060
  0041547f: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  00415482: 50                                              push   eax
  00415483: e8 d8 cb 02 00                                  call   0x442060
  00415488: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  0041548b: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0041548e: 83 c4 08                                        add    esp,0x8
  00415491: e9 7b fd ff ff                                  jmp    0x415211
  00415496: 85 c9                                           test   ecx,ecx
  00415498: 74 04                                           je     0x41549e
  0041549a: c6 45 c8 07                                     mov    BYTE PTR [ebp-0x38],0x7
  0041549e: c7 45 d4 00 00 00 00                            mov    DWORD PTR [ebp-0x2c],0x0
  004154a5: 33 ff                                           xor    edi,edi
  004154a7: b9 78 16 51 00                                  mov    ecx,0x511678
  004154ac: e8 bf 98 03 00                                  call   0x44ed70
  004154b1: c7 45 94 98 e8 4d 00                            mov    DWORD PTR [ebp-0x6c],0x4de898
  004154b8: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  004154bb: 33 c0                                           xor    eax,eax
  004154bd: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004154c1: 89 4d b4                                        mov    DWORD PTR [ebp-0x4c],ecx
  004154c4: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  004154c7: c6 45 c8 08                                     mov    BYTE PTR [ebp-0x38],0x8
  004154cb: 3b c7                                           cmp    eax,edi
  004154cd: 74 07                                           je     0x4154d6
  004154cf: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004154d1: 89 4d b4                                        mov    DWORD PTR [ebp-0x4c],ecx
  004154d4: eb 08                                           jmp    0x4154de
  004154d6: b8 01 00 00 00                                  mov    eax,0x1
  004154db: 89 45 d4                                        mov    DWORD PTR [ebp-0x2c],eax
  004154de: 3b cf                                           cmp    ecx,edi
  004154e0: 74 10                                           je     0x4154f2
  004154e2: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  004154e5: e8 56 fe 00 00                                  call   0x425340
  004154ea: 8b 4d b4                                        mov    ecx,DWORD PTR [ebp-0x4c]
  004154ed: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  004154f0: eb d9                                           jmp    0x4154cb
  004154f2: 3b c7                                           cmp    eax,edi
  004154f4: 74 04                                           je     0x4154fa
  004154f6: c6 45 c8 07                                     mov    BYTE PTR [ebp-0x38],0x7
  004154fa: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  004154fd: 51                                              push   ecx
  004154fe: 89 7d d4                                        mov    DWORD PTR [ebp-0x2c],edi
  00415501: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00415505: c7 45 94 8c e5 4d 00                            mov    DWORD PTR [ebp-0x6c],0x4de58c
  0041550c: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00415512: 8d 8d 5c ff ff ff                               lea    ecx,[ebp-0xa4]
  00415518: e8 d3 08 07 00                                  call   0x485df0
  0041551d: 57                                              push   edi
  0041551e: 8d 95 5c ff ff ff                               lea    edx,[ebp-0xa4]
  00415524: 52                                              push   edx
  00415525: 8b ce                                           mov    ecx,esi
  00415527: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0041552b: e8 40 43 00 00                                  call   0x419870
  00415530: 8b 06                                           mov    eax,DWORD PTR [esi]
  00415532: 8d 8d 5c ff ff ff                               lea    ecx,[ebp-0xa4]
  00415538: 51                                              push   ecx
  00415539: 8b ce                                           mov    ecx,esi
  0041553b: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  00415541: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  00415544: 8b 16                                           mov    edx,DWORD PTR [esi]
  00415546: 57                                              push   edi
  00415547: 50                                              push   eax
  00415548: 8b ce                                           mov    ecx,esi
  0041554a: ff 92 08 01 00 00                               call   DWORD PTR [edx+0x108]
  00415550: 8b ce                                           mov    ecx,esi
  00415552: e8 a9 61 07 00                                  call   0x48b700
  00415557: 50                                              push   eax
  00415558: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041555b: 68 e8 19 50 00                                  push   0x5019e8
  00415560: 51                                              push   ecx
  00415561: e8 2e c5 0b 00                                  call   0x4d1a94
  00415566: 83 c4 0c                                        add    esp,0xc
  00415569: 68 d8 19 50 00                                  push   0x5019d8
  0041556e: 68 00 08 00 00                                  push   0x800
  00415573: e8 c8 c7 05 00                                  call   0x471d40
  00415578: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  0041557b: 83 c4 08                                        add    esp,0x8
  0041557e: 57                                              push   edi
  0041557f: 52                                              push   edx
  00415580: b9 78 16 51 00                                  mov    ecx,0x511678
  00415585: e8 f6 97 03 00                                  call   0x44ed80
  0041558a: 85 c0                                           test   eax,eax
  0041558c: 0f 84 4c 01 00 00                               je     0x4156de
  00415592: b9 78 16 51 00                                  mov    ecx,0x511678
  00415597: e8 c4 97 03 00                                  call   0x44ed60
  0041559c: 85 c0                                           test   eax,eax
  0041559e: 0f 84 3a 01 00 00                               je     0x4156de
  004155a4: 66 8b 86 e0 01 00 00                            mov    ax,WORD PTR [esi+0x1e0]
  004155ab: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004155ae: 51                                              push   ecx
  004155af: 6a 01                                           push   0x1
  004155b1: b9 78 16 51 00                                  mov    ecx,0x511678
  004155b6: 89 7d dc                                        mov    DWORD PTR [ebp-0x24],edi
  004155b9: 89 7d d8                                        mov    DWORD PTR [ebp-0x28],edi
  004155bc: 66 89 45 e0                                     mov    WORD PTR [ebp-0x20],ax
  004155c0: e8 2b 9a 03 00                                  call   0x44eff0
  004155c5: 8d 55 d8                                        lea    edx,[ebp-0x28]
  004155c8: 52                                              push   edx
  004155c9: 6a 02                                           push   0x2
  004155cb: b9 78 16 51 00                                  mov    ecx,0x511678
  004155d0: e8 1b 9a 03 00                                  call   0x44eff0
  004155d5: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004155d8: 66 c7 86 e0 01 00 00 ff ff                      mov    WORD PTR [esi+0x1e0],0xffff
  004155e1: e8 78 c4 0b 00                                  call   0x4d1a5e
  004155e6: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  004155e9: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  004155ec: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004155ef: 50                                              push   eax
  004155f0: 57                                              push   edi
  004155f1: 51                                              push   ecx
  004155f2: 81 e2 ff ff 00 00                               and    edx,0xffff
  004155f8: 52                                              push   edx
  004155f9: 8b ce                                           mov    ecx,esi
  004155fb: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004155ff: e8 bc 8a 00 00                                  call   0x41e0c0
  00415604: 3b c7                                           cmp    eax,edi
  00415606: 74 5b                                           je     0x415663
  00415608: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0041560b: 81 e1 ff ff 00 00                               and    ecx,0xffff
  00415611: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00415614: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00415616: e8 45 84 02 00                                  call   0x43da60
  0041561b: 8b ce                                           mov    ecx,esi
  0041561d: 50                                              push   eax
  0041561e: 8d 45 8c                                        lea    eax,[ebp-0x74]
  00415621: 50                                              push   eax
  00415622: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  00415625: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  00415628: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0041562b: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041562d: 81 e1 ff ff 00 00                               and    ecx,0xffff
  00415633: 51                                              push   ecx
  00415634: 81 e2 ff ff 00 00                               and    edx,0xffff
  0041563a: 52                                              push   edx
  0041563b: 8b ce                                           mov    ecx,esi
  0041563d: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  00415641: e8 ba 60 07 00                                  call   0x48b700
  00415646: 50                                              push   eax
  00415647: 53                                              push   ebx
  00415648: 68 98 19 50 00                                  push   0x501998
  0041564d: 68 00 04 00 00                                  push   0x400
  00415652: e8 e9 c6 05 00                                  call   0x471d40
  00415657: 83 c4 18                                        add    esp,0x18
  0041565a: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0041565e: 8d 4d 8c                                        lea    ecx,[ebp-0x74]
  00415661: eb 4d                                           jmp    0x4156b0
  00415663: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00415665: e8 f6 83 02 00                                  call   0x43da60
  0041566a: 8b ce                                           mov    ecx,esi
  0041566c: 50                                              push   eax
  0041566d: 8d 45 90                                        lea    eax,[ebp-0x70]
  00415670: 50                                              push   eax
  00415671: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  00415674: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00415677: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00415679: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0041567c: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  0041567f: 51                                              push   ecx
  00415680: 81 e2 ff ff 00 00                               and    edx,0xffff
  00415686: 52                                              push   edx
  00415687: 25 ff ff 00 00                                  and    eax,0xffff
  0041568c: 50                                              push   eax
  0041568d: 8b ce                                           mov    ecx,esi
  0041568f: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  00415693: e8 68 60 07 00                                  call   0x48b700
  00415698: 50                                              push   eax
  00415699: 53                                              push   ebx
  0041569a: 68 50 19 50 00                                  push   0x501950
  0041569f: 6a 04                                           push   0x4
  004156a1: e8 9a c6 05 00                                  call   0x471d40
  004156a6: 83 c4 1c                                        add    esp,0x1c
  004156a9: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004156ad: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  004156b0: e8 8b c3 0b 00                                  call   0x4d1a40
  004156b5: 66 8b 4d e0                                     mov    cx,WORD PTR [ebp-0x20]
  004156b9: 66 89 8e e0 01 00 00                            mov    WORD PTR [esi+0x1e0],cx
  004156c0: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004156c3: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004156c7: e8 74 c3 0b 00                                  call   0x4d1a40
  004156cc: b9 78 16 51 00                                  mov    ecx,0x511678
  004156d1: e8 8a 96 03 00                                  call   0x44ed60
  004156d6: 85 c0                                           test   eax,eax
  004156d8: 0f 85 c6 fe ff ff                               jne    0x4155a4
  004156de: 8b 16                                           mov    edx,DWORD PTR [esi]
  004156e0: 6a 23                                           push   0x23
  004156e2: 8b ce                                           mov    ecx,esi
  004156e4: ff 92 70 01 00 00                               call   DWORD PTR [edx+0x170]
  004156ea: 3b c7                                           cmp    eax,edi
  004156ec: 0f 85 d3 00 00 00                               jne    0x4157c5
  004156f2: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  004156f4: e8 67 83 02 00                                  call   0x43da60
  004156f9: 8b ce                                           mov    ecx,esi
  004156fb: 50                                              push   eax
  004156fc: 8d 45 e0                                        lea    eax,[ebp-0x20]
  004156ff: 50                                              push   eax
  00415700: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  00415703: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00415705: 8b ce                                           mov    ecx,esi
  00415707: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  0041570b: e8 f0 5f 07 00                                  call   0x48b700
  00415710: 50                                              push   eax
  00415711: 53                                              push   ebx
  00415712: 6a 23                                           push   0x23
  00415714: 68 f8 18 50 00                                  push   0x5018f8
  00415719: 68 00 02 00 00                                  push   0x200
  0041571e: e8 1d c6 05 00                                  call   0x471d40
  00415723: 83 c4 14                                        add    esp,0x14
  00415726: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00415729: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0041572d: e8 0e c3 0b 00                                  call   0x4d1a40
  00415732: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00415735: e8 24 c3 0b 00                                  call   0x4d1a5e
  0041573a: 66 8b 8e e0 01 00 00                            mov    cx,WORD PTR [esi+0x1e0]
  00415741: 8d 55 e8                                        lea    edx,[ebp-0x18]
  00415744: 52                                              push   edx
  00415745: 57                                              push   edi
  00415746: 6a 0f                                           push   0xf
  00415748: 66 89 4d 90                                     mov    WORD PTR [ebp-0x70],cx
  0041574c: 6a 23                                           push   0x23
  0041574e: 8b ce                                           mov    ecx,esi
  00415750: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  00415754: 66 c7 86 e0 01 00 00 ff ff                      mov    WORD PTR [esi+0x1e0],0xffff
  0041575d: e8 5e 89 00 00                                  call   0x41e0c0
  00415762: 3b c7                                           cmp    eax,edi
  00415764: 74 09                                           je     0x41576f
  00415766: c7 40 04 0f 00 00 00                            mov    DWORD PTR [eax+0x4],0xf
  0041576d: eb 3f                                           jmp    0x4157ae
  0041576f: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00415771: e8 ea 82 02 00                                  call   0x43da60
  00415776: 8b ce                                           mov    ecx,esi
  00415778: 50                                              push   eax
  00415779: 8d 45 e0                                        lea    eax,[ebp-0x20]
  0041577c: 50                                              push   eax
  0041577d: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  00415780: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00415783: 8b 18                                           mov    ebx,DWORD PTR [eax]
  00415785: 51                                              push   ecx
  00415786: 8b ce                                           mov    ecx,esi
  00415788: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  0041578c: e8 6f 5f 07 00                                  call   0x48b700
  00415791: 50                                              push   eax
  00415792: 53                                              push   ebx
  00415793: 68 b8 18 50 00                                  push   0x5018b8
  00415798: 6a 01                                           push   0x1
  0041579a: e8 a1 c5 05 00                                  call   0x471d40
  0041579f: 83 c4 14                                        add    esp,0x14
  004157a2: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  004157a5: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  004157a9: e8 92 c2 0b 00                                  call   0x4d1a40
  004157ae: 66 8b 55 90                                     mov    dx,WORD PTR [ebp-0x70]
  004157b2: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004157b5: 66 89 96 e0 01 00 00                            mov    WORD PTR [esi+0x1e0],dx
  004157bc: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004157c0: e8 7b c2 0b 00                                  call   0x4d1a40
  004157c5: b9 78 16 51 00                                  mov    ecx,0x511678
  004157ca: e8 a1 95 03 00                                  call   0x44ed70
  004157cf: 8b 86 e4 03 00 00                               mov    eax,DWORD PTR [esi+0x3e4]
  004157d5: 89 86 e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],eax
  004157db: 89 be 00 04 00 00                               mov    DWORD PTR [esi+0x400],edi
  004157e1: c6 86 f4 03 00 00 08                            mov    BYTE PTR [esi+0x3f4],0x8
  004157e8: bb 01 00 00 00                                  mov    ebx,0x1
  004157ed: 39 be 00 04 00 00                               cmp    DWORD PTR [esi+0x400],edi
  004157f3: 74 10                                           je     0x415805
  004157f5: 8b 8e e0 03 00 00                               mov    ecx,DWORD PTR [esi+0x3e0]
  004157fb: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004157fd: 89 96 e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],edx
  00415803: eb 06                                           jmp    0x41580b
  00415805: 89 9e 00 04 00 00                               mov    DWORD PTR [esi+0x400],ebx
  0041580b: 8b 86 e0 03 00 00                               mov    eax,DWORD PTR [esi+0x3e0]
  00415811: 3b c7                                           cmp    eax,edi
  00415813: 0f 84 10 01 00 00                               je     0x415929
  00415819: 8b 8e e8 03 00 00                               mov    ecx,DWORD PTR [esi+0x3e8]
  0041581f: 89 86 ec 03 00 00                               mov    DWORD PTR [esi+0x3ec],eax
  00415825: ff 8e f8 03 00 00                               dec    DWORD PTR [esi+0x3f8]
  0041582b: 8b 86 e0 03 00 00                               mov    eax,DWORD PTR [esi+0x3e0]
  00415831: 3b c1                                           cmp    eax,ecx
  00415833: 74 58                                           je     0x41588d
  00415835: 3b 86 e4 03 00 00                               cmp    eax,DWORD PTR [esi+0x3e4]
  0041583b: 74 4c                                           je     0x415889
  0041583d: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041583f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00415842: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00415845: 8b 86 e0 03 00 00                               mov    eax,DWORD PTR [esi+0x3e0]
  0041584b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041584e: 8b 10                                           mov    edx,DWORD PTR [eax]
  00415850: 89 11                                           mov    DWORD PTR [ecx],edx
  00415852: 8b 86 00 04 00 00                               mov    eax,DWORD PTR [esi+0x400]
  00415858: 3b c3                                           cmp    eax,ebx
  0041585a: 75 14                                           jne    0x415870
  0041585c: 8b 86 e0 03 00 00                               mov    eax,DWORD PTR [esi+0x3e0]
  00415862: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00415865: 89 8e e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],ecx
  0041586b: e9 96 00 00 00                                  jmp    0x415906
  00415870: 83 f8 02                                        cmp    eax,0x2
  00415873: 0f 85 8d 00 00 00                               jne    0x415906
  00415879: 8b 96 e0 03 00 00                               mov    edx,DWORD PTR [esi+0x3e0]
  0041587f: 8b 02                                           mov    eax,DWORD PTR [edx]
  00415881: 89 86 e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],eax
  00415887: eb 7d                                           jmp    0x415906
  00415889: 3b c1                                           cmp    eax,ecx
  0041588b: 75 32                                           jne    0x4158bf
  0041588d: 3b 86 e4 03 00 00                               cmp    eax,DWORD PTR [esi+0x3e4]
  00415893: 74 32                                           je     0x4158c7
  00415895: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00415898: 89 39                                           mov    DWORD PTR [ecx],edi
  0041589a: 8b 96 e0 03 00 00                               mov    edx,DWORD PTR [esi+0x3e0]
  004158a0: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004158a3: 89 86 e8 03 00 00                               mov    DWORD PTR [esi+0x3e8],eax
  004158a9: 83 be 00 04 00 00 02                            cmp    DWORD PTR [esi+0x400],0x2
  004158b0: 8b ca                                           mov    ecx,edx
  004158b2: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004158b5: 89 96 e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],edx
  004158bb: 75 49                                           jne    0x415906
  004158bd: eb 41                                           jmp    0x415900
  004158bf: 3b 86 e4 03 00 00                               cmp    eax,DWORD PTR [esi+0x3e4]
  004158c5: 75 27                                           jne    0x4158ee
  004158c7: 3b c1                                           cmp    eax,ecx
  004158c9: 74 23                                           je     0x4158ee
  004158cb: 8b 00                                           mov    eax,DWORD PTR [eax]
  004158cd: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004158d0: 8b 8e e0 03 00 00                               mov    ecx,DWORD PTR [esi+0x3e0]
  004158d6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004158d8: 89 86 e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],eax
  004158de: 89 86 e4 03 00 00                               mov    DWORD PTR [esi+0x3e4],eax
  004158e4: 39 9e 00 04 00 00                               cmp    DWORD PTR [esi+0x400],ebx
  004158ea: 75 1a                                           jne    0x415906
  004158ec: eb 12                                           jmp    0x415900
  004158ee: 89 be e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],edi
  004158f4: 89 be e4 03 00 00                               mov    DWORD PTR [esi+0x3e4],edi
  004158fa: 89 be e8 03 00 00                               mov    DWORD PTR [esi+0x3e8],edi
  00415900: 89 be 00 04 00 00                               mov    DWORD PTR [esi+0x400],edi
  00415906: 8b 96 ec 03 00 00                               mov    edx,DWORD PTR [esi+0x3ec]
  0041590c: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0041590f: 50                                              push   eax
  00415910: e8 4b c7 02 00                                  call   0x442060
  00415915: 8b 8e ec 03 00 00                               mov    ecx,DWORD PTR [esi+0x3ec]
  0041591b: 51                                              push   ecx
  0041591c: e8 3f c7 02 00                                  call   0x442060
  00415921: 83 c4 08                                        add    esp,0x8
  00415924: e9 c4 fe ff ff                                  jmp    0x4157ed
  00415929: 39 be 00 04 00 00                               cmp    DWORD PTR [esi+0x400],edi
  0041592f: 74 07                                           je     0x415938
  00415931: c6 86 f4 03 00 00 07                            mov    BYTE PTR [esi+0x3f4],0x7
  00415938: 8b ce                                           mov    ecx,esi
  0041593a: 89 be 00 04 00 00                               mov    DWORD PTR [esi+0x400],edi
  00415940: e8 bb 5d 07 00                                  call   0x48b700
  00415945: 50                                              push   eax
  00415946: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  00415949: 68 84 18 50 00                                  push   0x501884
  0041594e: 52                                              push   edx
  0041594f: e8 40 c1 0b 00                                  call   0x4d1a94
  00415954: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00415957: 83 c4 0c                                        add    esp,0xc
  0041595a: 57                                              push   edi
  0041595b: 50                                              push   eax
  0041595c: b9 78 16 51 00                                  mov    ecx,0x511678
  00415961: e8 1a 94 03 00                                  call   0x44ed80
  00415966: 85 c0                                           test   eax,eax
  00415968: 0f 84 fd 00 00 00                               je     0x415a6b
  0041596e: b9 78 16 51 00                                  mov    ecx,0x511678
  00415973: e8 e8 93 03 00                                  call   0x44ed60
  00415978: 85 c0                                           test   eax,eax
  0041597a: 0f 84 eb 00 00 00                               je     0x415a6b
  00415980: 6a 08                                           push   0x8
  00415982: e8 69 c6 02 00                                  call   0x441ff0
  00415987: 8b d8                                           mov    ebx,eax
  00415989: 33 c9                                           xor    ecx,ecx
  0041598b: 83 c4 04                                        add    esp,0x4
  0041598e: 8b d3                                           mov    edx,ebx
  00415990: 89 0a                                           mov    DWORD PTR [edx],ecx
  00415992: 8d 45 e8                                        lea    eax,[ebp-0x18]
  00415995: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00415998: 50                                              push   eax
  00415999: 6a 01                                           push   0x1
  0041599b: b9 78 16 51 00                                  mov    ecx,0x511678
  004159a0: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  004159a3: e8 68 95 03 00                                  call   0x44ef10
  004159a8: 89 7b 04                                        mov    DWORD PTR [ebx+0x4],edi
  004159ab: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  004159ae: 89 0b                                           mov    DWORD PTR [ebx],ecx
  004159b0: 8b 86 e8 03 00 00                               mov    eax,DWORD PTR [esi+0x3e8]
  004159b6: 8b 96 f8 03 00 00                               mov    edx,DWORD PTR [esi+0x3f8]
  004159bc: 42                                              inc    edx
  004159bd: 3b c7                                           cmp    eax,edi
  004159bf: 89 86 e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],eax
  004159c5: 89 be 00 04 00 00                               mov    DWORD PTR [esi+0x400],edi
  004159cb: c6 86 f4 03 00 00 08                            mov    BYTE PTR [esi+0x3f4],0x8
  004159d2: 89 86 ec 03 00 00                               mov    DWORD PTR [esi+0x3ec],eax
  004159d8: 89 96 f8 03 00 00                               mov    DWORD PTR [esi+0x3f8],edx
  004159de: 6a 0c                                           push   0xc
  004159e0: 75 34                                           jne    0x415a16
  004159e2: e8 09 c6 02 00                                  call   0x441ff0
  004159e7: 83 c4 04                                        add    esp,0x4
  004159ea: 3b c7                                           cmp    eax,edi
  004159ec: 74 07                                           je     0x4159f5
  004159ee: 89 38                                           mov    DWORD PTR [eax],edi
  004159f0: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004159f3: eb 02                                           jmp    0x4159f7
  004159f5: 33 c0                                           xor    eax,eax
  004159f7: 89 86 e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],eax
  004159fd: 89 86 e8 03 00 00                               mov    DWORD PTR [esi+0x3e8],eax
  00415a03: 89 86 e4 03 00 00                               mov    DWORD PTR [esi+0x3e4],eax
  00415a09: 89 38                                           mov    DWORD PTR [eax],edi
  00415a0b: 8b 96 e0 03 00 00                               mov    edx,DWORD PTR [esi+0x3e0]
  00415a11: 89 7a 04                                        mov    DWORD PTR [edx+0x4],edi
  00415a14: eb 3a                                           jmp    0x415a50
  00415a16: e8 d5 c5 02 00                                  call   0x441ff0
  00415a1b: 83 c4 04                                        add    esp,0x4
  00415a1e: 3b c7                                           cmp    eax,edi
  00415a20: 74 07                                           je     0x415a29
  00415a22: 89 38                                           mov    DWORD PTR [eax],edi
  00415a24: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00415a27: eb 02                                           jmp    0x415a2b
  00415a29: 33 c0                                           xor    eax,eax
  00415a2b: 8b 8e e0 03 00 00                               mov    ecx,DWORD PTR [esi+0x3e0]
  00415a31: 89 01                                           mov    DWORD PTR [ecx],eax
  00415a33: 8b 96 ec 03 00 00                               mov    edx,DWORD PTR [esi+0x3ec]
  00415a39: 89 86 e8 03 00 00                               mov    DWORD PTR [esi+0x3e8],eax
  00415a3f: 89 86 e0 03 00 00                               mov    DWORD PTR [esi+0x3e0],eax
  00415a45: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00415a48: 8b 86 e0 03 00 00                               mov    eax,DWORD PTR [esi+0x3e0]
  00415a4e: 89 38                                           mov    DWORD PTR [eax],edi
  00415a50: 8b 8e e0 03 00 00                               mov    ecx,DWORD PTR [esi+0x3e0]
  00415a56: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00415a59: b9 78 16 51 00                                  mov    ecx,0x511678
  00415a5e: e8 fd 92 03 00                                  call   0x44ed60
  00415a63: 85 c0                                           test   eax,eax
  00415a65: 0f 85 15 ff ff ff                               jne    0x415980
  00415a6b: b9 78 16 51 00                                  mov    ecx,0x511678
  00415a70: e8 fb 92 03 00                                  call   0x44ed70
  00415a75: 8b ce                                           mov    ecx,esi
  00415a77: e8 84 5c 07 00                                  call   0x48b700
  00415a7c: 50                                              push   eax
  00415a7d: 68 78 16 51 00                                  push   0x511678
  00415a82: 8b ce                                           mov    ecx,esi
  00415a84: e8 17 8e 07 00                                  call   0x48e8a0
  00415a89: b9 78 16 51 00                                  mov    ecx,0x511678
  00415a8e: e8 dd 92 03 00                                  call   0x44ed70
  00415a93: 8b ce                                           mov    ecx,esi
  00415a95: e8 66 5c 07 00                                  call   0x48b700
  00415a9a: 50                                              push   eax
  00415a9b: 68 78 16 51 00                                  push   0x511678
  00415aa0: 8b ce                                           mov    ecx,esi
  00415aa2: e8 c9 95 07 00                                  call   0x48f070
  00415aa7: 68 6c 18 50 00                                  push   0x50186c
  00415aac: 68 00 08 00 00                                  push   0x800
  00415ab1: e8 8a c2 05 00                                  call   0x471d40
  00415ab6: 83 c4 08                                        add    esp,0x8
  00415ab9: b9 78 16 51 00                                  mov    ecx,0x511678
  00415abe: e8 ad 92 03 00                                  call   0x44ed70
  00415ac3: b9 78 16 51 00                                  mov    ecx,0x511678
  00415ac8: e8 03 8f 03 00                                  call   0x44e9d0
  00415acd: 8d 8d 5c ff ff ff                               lea    ecx,[ebp-0xa4]
  00415ad3: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00415ad7: e8 a4 03 07 00                                  call   0x485e80
  00415adc: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00415adf: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00415ae3: e8 58 bf 0b 00                                  call   0x4d1a40
  00415ae8: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00415aeb: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00415af2: e8 49 bf 0b 00                                  call   0x4d1a40
  00415af7: 33 c0                                           xor    eax,eax
  00415af9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00415afc: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00415b03: 5f                                              pop    edi
  00415b04: 5e                                              pop    esi
  00415b05: 5b                                              pop    ebx
  00415b06: 8b e5                                           mov    esp,ebp
  00415b08: 5d                                              pop    ebp
  00415b09: c2 04 00                                        ret    0x4
  00415b0c: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00415b0f: 8d 55 e0                                        lea    edx,[ebp-0x20]
  00415b12: 52                                              push   edx
  00415b13: e8 f8 12 04 00                                  call   0x456e10
  00415b18: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00415b1b: e8 20 bf 0b 00                                  call   0x4d1a40
  00415b20: 68 54 18 50 00                                  push   0x501854
  00415b25: 68 00 08 00 00                                  push   0x800
  00415b2a: e8 11 c2 05 00                                  call   0x471d40
  00415b2f: 83 c4 08                                        add    esp,0x8
  00415b32: b9 78 16 51 00                                  mov    ecx,0x511678
  00415b37: e8 34 92 03 00                                  call   0x44ed70
  00415b3c: b9 78 16 51 00                                  mov    ecx,0x511678
  00415b41: e8 8a 8e 03 00                                  call   0x44e9d0
  00415b46: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00415b49: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00415b4d: e8 ee be 0b 00                                  call   0x4d1a40
  00415b52: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00415b55: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00415b5c: e8 df be 0b 00                                  call   0x4d1a40
  00415b61: b8 0a 00 00 00                                  mov    eax,0xa
  00415b66: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00415b69: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00415b70: 5f                                              pop    edi
  00415b71: 5e                                              pop    esi
  00415b72: 5b                                              pop    ebx
  00415b73: 8b e5                                           mov    esp,ebp
  00415b75: 5d                                              pop    ebp
  00415b76: c2 04 00                                        ret    0x4
  00415b79: b9 78 16 51 00                                  mov    ecx,0x511678
  00415b7e: e8 ed 91 03 00                                  call   0x44ed70
  00415b83: b9 78 16 51 00                                  mov    ecx,0x511678
  00415b88: e8 43 8e 03 00                                  call   0x44e9d0
  00415b8d: 68 3c 18 50 00                                  push   0x50183c
  00415b92: 68 00 08 00 00                                  push   0x800
  00415b97: e8 a4 c1 05 00                                  call   0x471d40
  00415b9c: 83 c4 08                                        add    esp,0x8
  00415b9f: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  00415ba2: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00415ba6: e8 95 be 0b 00                                  call   0x4d1a40
  00415bab: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00415bae: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00415bb5: e8 86 be 0b 00                                  call   0x4d1a40
  00415bba: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00415bbd: 5f                                              pop    edi
  00415bbe: 5e                                              pop    esi
  00415bbf: b8 06 00 00 00                                  mov    eax,0x6
  00415bc4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00415bcb: 5b                                              pop    ebx
  00415bcc: 8b e5                                           mov    esp,ebp
  00415bce: 5d                                              pop    ebp
  00415bcf: c2 04 00                                        ret    0x4
  0041b250: 55                                              push   ebp
  0041b251: 8b ec                                           mov    ebp,esp
  0041b253: 6a ff                                           push   0xffffffff
  0041b255: 68 97 40 4d 00                                  push   0x4d4097
  0041b25a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041b260: 50                                              push   eax
  0041b261: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041b268: 81 ec 88 01 00 00                               sub    esp,0x188
  0041b26e: 53                                              push   ebx
  0041b26f: 56                                              push   esi
  0041b270: 57                                              push   edi
  0041b271: 8b f1                                           mov    esi,ecx
  0041b273: e8 78 f8 ff ff                                  call   0x41aaf0
  0041b278: 8b f8                                           mov    edi,eax
  0041b27a: 8a 86 b0 00 00 00                               mov    al,BYTE PTR [esi+0xb0]
  0041b280: 33 db                                           xor    ebx,ebx
  0041b282: 84 c0                                           test   al,al
  0041b284: 0f 85 2b 19 00 00                               jne    0x41cbb5
  0041b28a: 8b cf                                           mov    ecx,edi
  0041b28c: e8 4f 98 03 00                                  call   0x454ae0
  0041b291: 81 e2 80 00 00 00                               and    edx,0x80
  0041b297: 33 c0                                           xor    eax,eax
  0041b299: 0b c2                                           or     eax,edx
  0041b29b: 0f 85 14 19 00 00                               jne    0x41cbb5
  0041b2a1: 39 5f 44                                        cmp    DWORD PTR [edi+0x44],ebx
  0041b2a4: 75 21                                           jne    0x41b2c7
  0041b2a6: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b2a8: 6a 01                                           push   0x1
  0041b2aa: 6a 01                                           push   0x1
  0041b2ac: 8b ce                                           mov    ecx,esi
  0041b2ae: ff 90 dc 00 00 00                               call   DWORD PTR [eax+0xdc]
  0041b2b4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041b2b7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041b2be: 5f                                              pop    edi
  0041b2bf: 5e                                              pop    esi
  0041b2c0: 5b                                              pop    ebx
  0041b2c1: 8b e5                                           mov    esp,ebp
  0041b2c3: 5d                                              pop    ebp
  0041b2c4: c2 08 00                                        ret    0x8
  0041b2c7: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  0041b2ca: 8d 4e 30                                        lea    ecx,[esi+0x30]
  0041b2cd: c6 86 b0 00 00 00 01                            mov    BYTE PTR [esi+0xb0],0x1
  0041b2d4: 89 8d d8 fe ff ff                               mov    DWORD PTR [ebp-0x128],ecx
  0041b2da: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041b2dd: 8b ce                                           mov    ecx,esi
  0041b2df: e8 5c 4b 00 00                                  call   0x41fe40
  0041b2e4: 8b ce                                           mov    ecx,esi
  0041b2e6: e8 05 f8 ff ff                                  call   0x41aaf0
  0041b2eb: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041b2ee: 3b fb                                           cmp    edi,ebx
  0041b2f0: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0041b2f3: 0f 84 84 03 00 00                               je     0x41b67d
  0041b2f9: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b2fb: 6a 03                                           push   0x3
  0041b2fd: 8b cf                                           mov    ecx,edi
  0041b2ff: ff 90 80 00 00 00                               call   DWORD PTR [eax+0x80]
  0041b305: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b307: 8b cf                                           mov    ecx,edi
  0041b309: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0041b30c: ff 90 14 01 00 00                               call   DWORD PTR [eax+0x114]
  0041b312: 8b 55 e0                                        mov    edx,DWORD PTR [ebp-0x20]
  0041b315: 50                                              push   eax
  0041b316: 8b cf                                           mov    ecx,edi
  0041b318: ff 92 ac 00 00 00                               call   DWORD PTR [edx+0xac]
  0041b31e: 8b cf                                           mov    ecx,edi
  0041b320: e8 4b 03 07 00                                  call   0x48b670
  0041b325: 3c 01                                           cmp    al,0x1
  0041b327: 0f 85 52 02 00 00                               jne    0x41b57f
  0041b32d: 8b cf                                           mov    ecx,edi
  0041b32f: e8 bc f7 ff ff                                  call   0x41aaf0
  0041b334: 3b fe                                           cmp    edi,esi
  0041b336: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0041b339: 53                                              push   ebx
  0041b33a: 0f 85 ca 00 00 00                               jne    0x41b40a
  0041b340: e8 cb 69 05 00                                  call   0x471d10
  0041b345: 83 c4 04                                        add    esp,0x4
  0041b348: 85 c0                                           test   eax,eax
  0041b34a: 0f 84 ff 03 00 00                               je     0x41b74f
  0041b350: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b353: 8d 85 6c ff ff ff                               lea    eax,[ebp-0x94]
  0041b359: 50                                              push   eax
  0041b35a: e8 01 d9 03 00                                  call   0x458c60
  0041b35f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b361: 8d 95 dc fe ff ff                               lea    edx,[ebp-0x124]
  0041b367: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  0041b36a: 52                                              push   edx
  0041b36b: 8b ce                                           mov    ecx,esi
  0041b36d: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0041b370: e8 db 26 00 00                                  call   0x41da50
  0041b375: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b377: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b379: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0041b37c: 8d 85 78 ff ff ff                               lea    eax,[ebp-0x88]
  0041b382: 50                                              push   eax
  0041b383: 8b ce                                           mov    ecx,esi
  0041b385: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041b389: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b38c: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0041b38f: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b391: 51                                              push   ecx
  0041b392: 8d 45 84                                        lea    eax,[ebp-0x7c]
  0041b395: 50                                              push   eax
  0041b396: 8b ce                                           mov    ecx,esi
  0041b398: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b39b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041b39e: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b3a0: 51                                              push   ecx
  0041b3a1: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  0041b3a7: 50                                              push   eax
  0041b3a8: 8b ce                                           mov    ecx,esi
  0041b3aa: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b3ad: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b3af: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b3b1: 51                                              push   ecx
  0041b3b2: 8b ce                                           mov    ecx,esi
  0041b3b4: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041b3ba: 8b ce                                           mov    ecx,esi
  0041b3bc: 25 ff ff 00 00                                  and    eax,0xffff
  0041b3c1: 50                                              push   eax
  0041b3c2: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  0041b3c5: 50                                              push   eax
  0041b3c6: e8 35 03 07 00                                  call   0x48b700
  0041b3cb: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b3ce: 50                                              push   eax
  0041b3cf: 51                                              push   ecx
  0041b3d0: 68 10 24 50 00                                  push   0x502410
  0041b3d5: 6a 40                                           push   0x40
  0041b3d7: 53                                              push   ebx
  0041b3d8: e8 33 69 05 00                                  call   0x471d10
  0041b3dd: 83 c4 04                                        add    esp,0x4
  0041b3e0: 50                                              push   eax
  0041b3e1: e8 0a 37 0b 00                                  call   0x4ceaf0
  0041b3e6: 83 c4 28                                        add    esp,0x28
  0041b3e9: 8d 8d dc fe ff ff                               lea    ecx,[ebp-0x124]
  0041b3ef: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0041b3f3: e8 48 66 0b 00                                  call   0x4d1a40
  0041b3f8: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041b3ff: 8d 8d 6c ff ff ff                               lea    ecx,[ebp-0x94]
  0041b405: e9 40 03 00 00                                  jmp    0x41b74a
  0041b40a: e8 01 69 05 00                                  call   0x471d10
  0041b40f: 83 c4 04                                        add    esp,0x4
  0041b412: 85 c0                                           test   eax,eax
  0041b414: 0f 84 35 03 00 00                               je     0x41b74f
  0041b41a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041b41d: 8d 55 8c                                        lea    edx,[ebp-0x74]
  0041b420: 52                                              push   edx
  0041b421: e8 3a d8 03 00                                  call   0x458c60
  0041b426: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b428: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0041b42a: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0041b431: 89 85 6c ff ff ff                               mov    DWORD PTR [ebp-0x94],eax
  0041b437: e8 24 26 02 00                                  call   0x43da60
  0041b43c: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041b43f: 50                                              push   eax
  0041b440: 51                                              push   ecx
  0041b441: 8b cf                                           mov    ecx,edi
  0041b443: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041b446: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b449: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041b44b: 8d 95 70 ff ff ff                               lea    edx,[ebp-0x90]
  0041b451: 52                                              push   edx
  0041b452: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0041b456: e8 05 d8 03 00                                  call   0x458c60
  0041b45b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b45d: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  0041b463: 51                                              push   ecx
  0041b464: 8b ce                                           mov    ecx,esi
  0041b466: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0041b46a: 89 85 dc fe ff ff                               mov    DWORD PTR [ebp-0x124],eax
  0041b470: e8 db 25 00 00                                  call   0x41da50
  0041b475: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041b477: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b479: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  0041b47f: 51                                              push   ecx
  0041b480: 8b cf                                           mov    ecx,edi
  0041b482: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0041b486: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  0041b489: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b48c: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0041b48f: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b491: 52                                              push   edx
  0041b492: 8d 8d 78 ff ff ff                               lea    ecx,[ebp-0x88]
  0041b498: 51                                              push   ecx
  0041b499: 8b cf                                           mov    ecx,edi
  0041b49b: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b49e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041b4a1: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b4a3: 52                                              push   edx
  0041b4a4: 8d 8d 6c fe ff ff                               lea    ecx,[ebp-0x194]
  0041b4aa: 51                                              push   ecx
  0041b4ab: 8b cf                                           mov    ecx,edi
  0041b4ad: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b4b0: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041b4b2: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b4b4: 52                                              push   edx
  0041b4b5: 8b cf                                           mov    ecx,edi
  0041b4b7: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041b4bd: 8b 8d 6c ff ff ff                               mov    ecx,DWORD PTR [ebp-0x94]
  0041b4c3: 25 ff ff 00 00                                  and    eax,0xffff
  0041b4c8: 50                                              push   eax
  0041b4c9: 51                                              push   ecx
  0041b4ca: 8b cf                                           mov    ecx,edi
  0041b4cc: e8 2f 02 07 00                                  call   0x48b700
  0041b4d1: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b4d3: 50                                              push   eax
  0041b4d4: 53                                              push   ebx
  0041b4d5: 8d 85 90 fe ff ff                               lea    eax,[ebp-0x170]
  0041b4db: 50                                              push   eax
  0041b4dc: 8b ce                                           mov    ecx,esi
  0041b4de: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b4e1: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0041b4e4: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b4e6: 51                                              push   ecx
  0041b4e7: 8d 85 84 fe ff ff                               lea    eax,[ebp-0x17c]
  0041b4ed: 50                                              push   eax
  0041b4ee: 8b ce                                           mov    ecx,esi
  0041b4f0: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b4f3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041b4f6: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b4f8: 51                                              push   ecx
  0041b4f9: 8d 85 cc fe ff ff                               lea    eax,[ebp-0x134]
  0041b4ff: 50                                              push   eax
  0041b500: 8b ce                                           mov    ecx,esi
  0041b502: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b505: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b507: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b509: 51                                              push   ecx
  0041b50a: 8b ce                                           mov    ecx,esi
  0041b50c: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041b512: 8b ce                                           mov    ecx,esi
  0041b514: 25 ff ff 00 00                                  and    eax,0xffff
  0041b519: 50                                              push   eax
  0041b51a: 8b 85 dc fe ff ff                               mov    eax,DWORD PTR [ebp-0x124]
  0041b520: 50                                              push   eax
  0041b521: e8 da 01 07 00                                  call   0x48b700
  0041b526: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0041b529: 50                                              push   eax
  0041b52a: 51                                              push   ecx
  0041b52b: 68 98 23 50 00                                  push   0x502398
  0041b530: 6a 40                                           push   0x40
  0041b532: 33 db                                           xor    ebx,ebx
  0041b534: 53                                              push   ebx
  0041b535: e8 d6 67 05 00                                  call   0x471d10
  0041b53a: 83 c4 04                                        add    esp,0x4
  0041b53d: 50                                              push   eax
  0041b53e: e8 ad 35 0b 00                                  call   0x4ceaf0
  0041b543: 83 c4 44                                        add    esp,0x44
  0041b546: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  0041b54c: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0041b550: e8 eb 64 0b 00                                  call   0x4d1a40
  0041b555: 8d 8d 70 ff ff ff                               lea    ecx,[ebp-0x90]
  0041b55b: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0041b55f: e8 dc 64 0b 00                                  call   0x4d1a40
  0041b564: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041b567: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0041b56b: e8 d0 64 0b 00                                  call   0x4d1a40
  0041b570: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041b577: 8d 4d 8c                                        lea    ecx,[ebp-0x74]
  0041b57a: e9 cb 01 00 00                                  jmp    0x41b74a
  0041b57f: 53                                              push   ebx
  0041b580: e8 8b 67 05 00                                  call   0x471d10
  0041b585: 83 c4 04                                        add    esp,0x4
  0041b588: 85 c0                                           test   eax,eax
  0041b58a: 0f 84 bf 01 00 00                               je     0x41b74f
  0041b590: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0041b592: e8 c9 24 02 00                                  call   0x43da60
  0041b597: 8d 95 6c ff ff ff                               lea    edx,[ebp-0x94]
  0041b59d: 8b cf                                           mov    ecx,edi
  0041b59f: 50                                              push   eax
  0041b5a0: 52                                              push   edx
  0041b5a1: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041b5a4: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041b5a6: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b5a9: 8d 85 74 ff ff ff                               lea    eax,[ebp-0x8c]
  0041b5af: 50                                              push   eax
  0041b5b0: c7 45 fc 06 00 00 00                            mov    DWORD PTR [ebp-0x4],0x6
  0041b5b7: e8 a4 d6 03 00                                  call   0x458c60
  0041b5bc: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b5be: 8d 95 70 ff ff ff                               lea    edx,[ebp-0x90]
  0041b5c4: 89 4d 8c                                        mov    DWORD PTR [ebp-0x74],ecx
  0041b5c7: 52                                              push   edx
  0041b5c8: 8b ce                                           mov    ecx,esi
  0041b5ca: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0041b5ce: e8 7d 24 00 00                                  call   0x41da50
  0041b5d3: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b5d5: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b5d7: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0041b5da: 53                                              push   ebx
  0041b5db: 8d 85 cc fe ff ff                               lea    eax,[ebp-0x134]
  0041b5e1: 50                                              push   eax
  0041b5e2: 8b ce                                           mov    ecx,esi
  0041b5e4: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0041b5e8: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b5eb: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0041b5ee: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b5f0: 51                                              push   ecx
  0041b5f1: 8d 85 84 fe ff ff                               lea    eax,[ebp-0x17c]
  0041b5f7: 50                                              push   eax
  0041b5f8: 8b ce                                           mov    ecx,esi
  0041b5fa: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b5fd: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041b600: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b602: 51                                              push   ecx
  0041b603: 8d 85 90 fe ff ff                               lea    eax,[ebp-0x170]
  0041b609: 50                                              push   eax
  0041b60a: 8b ce                                           mov    ecx,esi
  0041b60c: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b60f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b611: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b613: 51                                              push   ecx
  0041b614: 8b ce                                           mov    ecx,esi
  0041b616: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041b61c: 8b ce                                           mov    ecx,esi
  0041b61e: 25 ff ff 00 00                                  and    eax,0xffff
  0041b623: 50                                              push   eax
  0041b624: 8b 45 8c                                        mov    eax,DWORD PTR [ebp-0x74]
  0041b627: 50                                              push   eax
  0041b628: e8 d3 00 07 00                                  call   0x48b700
  0041b62d: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0041b630: 50                                              push   eax
  0041b631: 51                                              push   ecx
  0041b632: 68 48 23 50 00                                  push   0x502348
  0041b637: 6a 40                                           push   0x40
  0041b639: 33 db                                           xor    ebx,ebx
  0041b63b: 53                                              push   ebx
  0041b63c: e8 cf 66 05 00                                  call   0x471d10
  0041b641: 83 c4 04                                        add    esp,0x4
  0041b644: 50                                              push   eax
  0041b645: e8 a6 34 0b 00                                  call   0x4ceaf0
  0041b64a: 83 c4 2c                                        add    esp,0x2c
  0041b64d: 8d 8d 70 ff ff ff                               lea    ecx,[ebp-0x90]
  0041b653: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0041b657: e8 e4 63 0b 00                                  call   0x4d1a40
  0041b65c: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  0041b662: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0041b666: e8 d5 63 0b 00                                  call   0x4d1a40
  0041b66b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041b672: 8d 8d 6c ff ff ff                               lea    ecx,[ebp-0x94]
  0041b678: e9 cd 00 00 00                                  jmp    0x41b74a
  0041b67d: 53                                              push   ebx
  0041b67e: e8 8d 66 05 00                                  call   0x471d10
  0041b683: 83 c4 04                                        add    esp,0x4
  0041b686: 85 c0                                           test   eax,eax
  0041b688: 0f 84 c1 00 00 00                               je     0x41b74f
  0041b68e: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b691: 8d 95 74 ff ff ff                               lea    edx,[ebp-0x8c]
  0041b697: 52                                              push   edx
  0041b698: e8 c3 d5 03 00                                  call   0x458c60
  0041b69d: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b69f: 8d 8d 70 ff ff ff                               lea    ecx,[ebp-0x90]
  0041b6a5: 51                                              push   ecx
  0041b6a6: 8b ce                                           mov    ecx,esi
  0041b6a8: c7 45 fc 09 00 00 00                            mov    DWORD PTR [ebp-0x4],0x9
  0041b6af: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041b6b2: e8 99 23 00 00                                  call   0x41da50
  0041b6b7: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041b6b9: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b6bb: 8d 8d cc fe ff ff                               lea    ecx,[ebp-0x134]
  0041b6c1: 51                                              push   ecx
  0041b6c2: 8b ce                                           mov    ecx,esi
  0041b6c4: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  0041b6c8: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  0041b6cb: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b6ce: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0041b6d1: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b6d3: 52                                              push   edx
  0041b6d4: 8d 8d 84 fe ff ff                               lea    ecx,[ebp-0x17c]
  0041b6da: 51                                              push   ecx
  0041b6db: 8b ce                                           mov    ecx,esi
  0041b6dd: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b6e0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041b6e3: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b6e5: 52                                              push   edx
  0041b6e6: 8d 8d 90 fe ff ff                               lea    ecx,[ebp-0x170]
  0041b6ec: 51                                              push   ecx
  0041b6ed: 8b ce                                           mov    ecx,esi
  0041b6ef: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b6f2: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041b6f4: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b6f6: 52                                              push   edx
  0041b6f7: 8b ce                                           mov    ecx,esi
  0041b6f9: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041b6ff: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041b702: 25 ff ff 00 00                                  and    eax,0xffff
  0041b707: 50                                              push   eax
  0041b708: 51                                              push   ecx
  0041b709: 8b ce                                           mov    ecx,esi
  0041b70b: e8 f0 ff 06 00                                  call   0x48b700
  0041b710: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  0041b713: 50                                              push   eax
  0041b714: 52                                              push   edx
  0041b715: 68 f0 22 50 00                                  push   0x5022f0
  0041b71a: 6a 04                                           push   0x4
  0041b71c: 53                                              push   ebx
  0041b71d: e8 ee 65 05 00                                  call   0x471d10
  0041b722: 83 c4 04                                        add    esp,0x4
  0041b725: 50                                              push   eax
  0041b726: e8 c5 33 0b 00                                  call   0x4ceaf0
  0041b72b: 83 c4 28                                        add    esp,0x28
  0041b72e: 8d 8d 70 ff ff ff                               lea    ecx,[ebp-0x90]
  0041b734: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  0041b738: e8 03 63 0b 00                                  call   0x4d1a40
  0041b73d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041b744: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  0041b74a: e8 f1 62 0b 00                                  call   0x4d1a40
  0041b74f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b752: e8 07 63 0b 00                                  call   0x4d1a5e
  0041b757: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b75a: c7 45 fc 0b 00 00 00                            mov    DWORD PTR [ebp-0x4],0xb
  0041b761: e8 f8 62 0b 00                                  call   0x4d1a5e
  0041b766: 53                                              push   ebx
  0041b767: 53                                              push   ebx
  0041b768: 53                                              push   ebx
  0041b769: 6a 0d                                           push   0xd
  0041b76b: 8b ce                                           mov    ecx,esi
  0041b76d: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0041b771: e8 ca 17 07 00                                  call   0x48cf40
  0041b776: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b778: 8b ce                                           mov    ecx,esi
  0041b77a: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041b780: 66 3d 01 00                                     cmp    ax,0x1
  0041b784: 0f 86 e4 03 00 00                               jbe    0x41bb6e
  0041b78a: 68 dc 22 50 00                                  push   0x5022dc
  0041b78f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b792: e8 c1 62 0b 00                                  call   0x4d1a58
  0041b797: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b799: 8b ce                                           mov    ecx,esi
  0041b79b: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041b7a1: 25 ff ff 00 00                                  and    eax,0xffff
  0041b7a6: 50                                              push   eax
  0041b7a7: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b7aa: 68 cc 22 50 00                                  push   0x5022cc
  0041b7af: 50                                              push   eax
  0041b7b0: e8 df 62 0b 00                                  call   0x4d1a94
  0041b7b5: 83 c4 0c                                        add    esp,0xc
  0041b7b8: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b7bb: 51                                              push   ecx
  0041b7bc: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b7bf: e8 f4 62 0b 00                                  call   0x4d1ab8
  0041b7c4: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b7c6: 8b ce                                           mov    ecx,esi
  0041b7c8: ff 92 cc 00 00 00                               call   DWORD PTR [edx+0xcc]
  0041b7ce: 50                                              push   eax
  0041b7cf: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b7d2: 68 c0 22 50 00                                  push   0x5022c0
  0041b7d7: 50                                              push   eax
  0041b7d8: e8 b7 62 0b 00                                  call   0x4d1a94
  0041b7dd: 83 c4 0c                                        add    esp,0xc
  0041b7e0: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b7e3: 51                                              push   ecx
  0041b7e4: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b7e7: e8 cc 62 0b 00                                  call   0x4d1ab8
  0041b7ec: 8b ce                                           mov    ecx,esi
  0041b7ee: e8 bd 29 07 00                                  call   0x48e1b0
  0041b7f3: 8b ce                                           mov    ecx,esi
  0041b7f5: 25 ff ff 00 00                                  and    eax,0xffff
  0041b7fa: 50                                              push   eax
  0041b7fb: e8 60 2a 07 00                                  call   0x48e260
  0041b800: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041b803: 25 ff ff 00 00                                  and    eax,0xffff
  0041b808: 50                                              push   eax
  0041b809: 68 b0 22 50 00                                  push   0x5022b0
  0041b80e: 52                                              push   edx
  0041b80f: e8 80 62 0b 00                                  call   0x4d1a94
  0041b814: 83 c4 10                                        add    esp,0x10
  0041b817: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b81a: 50                                              push   eax
  0041b81b: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b81e: e8 95 62 0b 00                                  call   0x4d1ab8
  0041b823: 8b ce                                           mov    ecx,esi
  0041b825: e8 66 29 07 00                                  call   0x48e190
  0041b82a: 8b ce                                           mov    ecx,esi
  0041b82c: 25 ff ff 00 00                                  and    eax,0xffff
  0041b831: 50                                              push   eax
  0041b832: e8 09 2a 07 00                                  call   0x48e240
  0041b837: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b83a: 25 ff ff 00 00                                  and    eax,0xffff
  0041b83f: 50                                              push   eax
  0041b840: 68 a0 22 50 00                                  push   0x5022a0
  0041b845: 51                                              push   ecx
  0041b846: e8 49 62 0b 00                                  call   0x4d1a94
  0041b84b: 83 c4 10                                        add    esp,0x10
  0041b84e: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041b851: 52                                              push   edx
  0041b852: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b855: e8 5e 62 0b 00                                  call   0x4d1ab8
  0041b85a: 8b ce                                           mov    ecx,esi
  0041b85c: e8 0f 29 07 00                                  call   0x48e170
  0041b861: 8b ce                                           mov    ecx,esi
  0041b863: 25 ff ff 00 00                                  and    eax,0xffff
  0041b868: 50                                              push   eax
  0041b869: e8 c2 29 07 00                                  call   0x48e230
  0041b86e: 25 ff ff 00 00                                  and    eax,0xffff
  0041b873: 50                                              push   eax
  0041b874: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b877: 68 90 22 50 00                                  push   0x502290
  0041b87c: 50                                              push   eax
  0041b87d: e8 12 62 0b 00                                  call   0x4d1a94
  0041b882: 83 c4 10                                        add    esp,0x10
  0041b885: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b888: 51                                              push   ecx
  0041b889: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b88c: e8 27 62 0b 00                                  call   0x4d1ab8
  0041b891: 8b ce                                           mov    ecx,esi
  0041b893: e8 b8 28 07 00                                  call   0x48e150
  0041b898: 8b ce                                           mov    ecx,esi
  0041b89a: 25 ff ff 00 00                                  and    eax,0xffff
  0041b89f: 50                                              push   eax
  0041b8a0: e8 ab 29 07 00                                  call   0x48e250
  0041b8a5: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041b8a8: 25 ff ff 00 00                                  and    eax,0xffff
  0041b8ad: 50                                              push   eax
  0041b8ae: 68 80 22 50 00                                  push   0x502280
  0041b8b3: 52                                              push   edx
  0041b8b4: e8 db 61 0b 00                                  call   0x4d1a94
  0041b8b9: 83 c4 10                                        add    esp,0x10
  0041b8bc: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b8bf: 50                                              push   eax
  0041b8c0: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b8c3: e8 f0 61 0b 00                                  call   0x4d1ab8
  0041b8c8: 8b ce                                           mov    ecx,esi
  0041b8ca: e8 01 29 07 00                                  call   0x48e1d0
  0041b8cf: 8b ce                                           mov    ecx,esi
  0041b8d1: 25 ff ff 00 00                                  and    eax,0xffff
  0041b8d6: 50                                              push   eax
  0041b8d7: e8 94 29 07 00                                  call   0x48e270
  0041b8dc: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b8df: 25 ff ff 00 00                                  and    eax,0xffff
  0041b8e4: 50                                              push   eax
  0041b8e5: 68 70 22 50 00                                  push   0x502270
  0041b8ea: 51                                              push   ecx
  0041b8eb: e8 a4 61 0b 00                                  call   0x4d1a94
  0041b8f0: 83 c4 10                                        add    esp,0x10
  0041b8f3: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041b8f6: 52                                              push   edx
  0041b8f7: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b8fa: e8 b9 61 0b 00                                  call   0x4d1ab8
  0041b8ff: 8b 8e 9c 01 00 00                               mov    ecx,DWORD PTR [esi+0x19c]
  0041b905: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041b907: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0041b90a: 53                                              push   ebx
  0041b90b: e8 00 64 05 00                                  call   0x471d10
  0041b910: 83 c4 04                                        add    esp,0x4
  0041b913: 85 c0                                           test   eax,eax
  0041b915: 74 18                                           je     0x41b92f
  0041b917: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0041b91a: 51                                              push   ecx
  0041b91b: 6a 08                                           push   0x8
  0041b91d: 53                                              push   ebx
  0041b91e: e8 ed 63 05 00                                  call   0x471d10
  0041b923: 83 c4 04                                        add    esp,0x4
  0041b926: 50                                              push   eax
  0041b927: e8 c4 31 0b 00                                  call   0x4ceaf0
  0041b92c: 83 c4 0c                                        add    esp,0xc
  0041b92f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b932: e8 69 61 0b 00                                  call   0x4d1aa0
  0041b937: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b93a: e8 61 61 0b 00                                  call   0x4d1aa0
  0041b93f: 68 60 22 50 00                                  push   0x502260
  0041b944: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b947: e8 06 61 0b 00                                  call   0x4d1a52
  0041b94c: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041b952: 8b 48 38                                        mov    ecx,DWORD PTR [eax+0x38]
  0041b955: 3b cb                                           cmp    ecx,ebx
  0041b957: 75 12                                           jne    0x41b96b
  0041b959: 68 58 22 50 00                                  push   0x502258
  0041b95e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b961: e8 f2 60 0b 00                                  call   0x4d1a58
  0041b966: e9 db 00 00 00                                  jmp    0x41ba46
  0041b96b: 8b 50 24                                        mov    edx,DWORD PTR [eax+0x24]
  0041b96e: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  0041b971: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0041b974: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0041b977: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  0041b97b: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041b981: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0041b984: 74 0a                                           je     0x41b990
  0041b986: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041b989: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041b98b: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0041b98e: eb 07                                           jmp    0x41b997
  0041b990: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  0041b997: 39 58 20                                        cmp    DWORD PTR [eax+0x20],ebx
  0041b99a: 0f 84 9a 00 00 00                               je     0x41ba3a
  0041b9a0: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041b9a6: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041b9a9: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0041b9ac: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b9ae: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041b9b0: 8b ce                                           mov    ecx,esi
  0041b9b2: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041b9b5: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041b9bb: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041b9be: 50                                              push   eax
  0041b9bf: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0041b9c2: 50                                              push   eax
  0041b9c3: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041b9c6: 50                                              push   eax
  0041b9c7: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b9ca: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  0041b9ce: e8 e5 60 0b 00                                  call   0x4d1ab8
  0041b9d3: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041b9d6: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0041b9da: e8 61 60 0b 00                                  call   0x4d1a40
  0041b9df: 68 00 20 50 00                                  push   0x502000
  0041b9e4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b9e7: e8 66 60 0b 00                                  call   0x4d1a52
  0041b9ec: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0041b9ef: 8b c3                                           mov    eax,ebx
  0041b9f1: 99                                              cdq
  0041b9f2: b9 0a 00 00 00                                  mov    ecx,0xa
  0041b9f7: f7 f9                                           idiv   ecx
  0041b9f9: 85 d2                                           test   edx,edx
  0041b9fb: 75 32                                           jne    0x41ba2f
  0041b9fd: 85 db                                           test   ebx,ebx
  0041b9ff: 74 2e                                           je     0x41ba2f
  0041ba01: 52                                              push   edx
  0041ba02: e8 09 63 05 00                                  call   0x471d10
  0041ba07: 83 c4 04                                        add    esp,0x4
  0041ba0a: 85 c0                                           test   eax,eax
  0041ba0c: 74 19                                           je     0x41ba27
  0041ba0e: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0041ba11: 52                                              push   edx
  0041ba12: 6a 08                                           push   0x8
  0041ba14: 6a 00                                           push   0x0
  0041ba16: e8 f5 62 05 00                                  call   0x471d10
  0041ba1b: 83 c4 04                                        add    esp,0x4
  0041ba1e: 50                                              push   eax
  0041ba1f: e8 cc 30 0b 00                                  call   0x4ceaf0
  0041ba24: 83 c4 0c                                        add    esp,0xc
  0041ba27: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041ba2a: e8 71 60 0b 00                                  call   0x4d1aa0
  0041ba2f: 43                                              inc    ebx
  0041ba30: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  0041ba33: 33 db                                           xor    ebx,ebx
  0041ba35: e9 41 ff ff ff                                  jmp    0x41b97b
  0041ba3a: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0041ba3d: 74 04                                           je     0x41ba43
  0041ba3f: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  0041ba43: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0041ba46: 8b 8e 9c 01 00 00                               mov    ecx,DWORD PTR [esi+0x19c]
  0041ba4c: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041ba4e: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041ba51: 53                                              push   ebx
  0041ba52: e8 b9 62 05 00                                  call   0x471d10
  0041ba57: 83 c4 04                                        add    esp,0x4
  0041ba5a: 85 c0                                           test   eax,eax
  0041ba5c: 74 18                                           je     0x41ba76
  0041ba5e: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0041ba61: 51                                              push   ecx
  0041ba62: 6a 08                                           push   0x8
  0041ba64: 53                                              push   ebx
  0041ba65: e8 a6 62 05 00                                  call   0x471d10
  0041ba6a: 83 c4 04                                        add    esp,0x4
  0041ba6d: 50                                              push   eax
  0041ba6e: e8 7d 30 0b 00                                  call   0x4ceaf0
  0041ba73: 83 c4 0c                                        add    esp,0xc
  0041ba76: 68 48 22 50 00                                  push   0x502248
  0041ba7b: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041ba7e: e8 d5 5f 0b 00                                  call   0x4d1a58
  0041ba83: 8d 96 a0 01 00 00                               lea    edx,[esi+0x1a0]
  0041ba89: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  0041ba8c: 89 55 0c                                        mov    DWORD PTR [ebp+0xc],edx
  0041ba8f: c7 45 e8 10 00 00 00                            mov    DWORD PTR [ebp-0x18],0x10
  0041ba96: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041ba99: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041ba9b: 3b c3                                           cmp    eax,ebx
  0041ba9d: 0f 84 88 00 00 00                               je     0x41bb2b
  0041baa3: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041baa5: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041baa7: 8b ce                                           mov    ecx,esi
  0041baa9: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041baaf: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041bab2: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0041bab4: 50                                              push   eax
  0041bab5: 8d 45 8c                                        lea    eax,[ebp-0x74]
  0041bab8: 50                                              push   eax
  0041bab9: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041babc: 50                                              push   eax
  0041babd: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bac0: c6 45 fc 0e                                     mov    BYTE PTR [ebp-0x4],0xe
  0041bac4: e8 ef 5f 0b 00                                  call   0x4d1ab8
  0041bac9: 8d 4d 8c                                        lea    ecx,[ebp-0x74]
  0041bacc: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0041bad0: e8 6b 5f 0b 00                                  call   0x4d1a40
  0041bad5: 68 00 20 50 00                                  push   0x502000
  0041bada: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041badd: e8 70 5f 0b 00                                  call   0x4d1a52
  0041bae2: 8b 5d e0                                        mov    ebx,DWORD PTR [ebp-0x20]
  0041bae5: 8b c3                                           mov    eax,ebx
  0041bae7: 99                                              cdq
  0041bae8: b9 0a 00 00 00                                  mov    ecx,0xa
  0041baed: f7 f9                                           idiv   ecx
  0041baef: 85 d2                                           test   edx,edx
  0041baf1: 75 32                                           jne    0x41bb25
  0041baf3: 85 db                                           test   ebx,ebx
  0041baf5: 74 2e                                           je     0x41bb25
  0041baf7: 52                                              push   edx
  0041baf8: e8 13 62 05 00                                  call   0x471d10
  0041bafd: 83 c4 04                                        add    esp,0x4
  0041bb00: 85 c0                                           test   eax,eax
  0041bb02: 74 19                                           je     0x41bb1d
  0041bb04: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0041bb07: 52                                              push   edx
  0041bb08: 6a 08                                           push   0x8
  0041bb0a: 6a 00                                           push   0x0
  0041bb0c: e8 ff 61 05 00                                  call   0x471d10
  0041bb11: 83 c4 04                                        add    esp,0x4
  0041bb14: 50                                              push   eax
  0041bb15: e8 d6 2f 0b 00                                  call   0x4ceaf0
  0041bb1a: 83 c4 0c                                        add    esp,0xc
  0041bb1d: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bb20: e8 7b 5f 0b 00                                  call   0x4d1aa0
  0041bb25: 43                                              inc    ebx
  0041bb26: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  0041bb29: 33 db                                           xor    ebx,ebx
  0041bb2b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041bb2e: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0041bb31: 83 c1 04                                        add    ecx,0x4
  0041bb34: 48                                              dec    eax
  0041bb35: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0041bb38: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0041bb3b: 0f 85 55 ff ff ff                               jne    0x41ba96
  0041bb41: 53                                              push   ebx
  0041bb42: e8 c9 61 05 00                                  call   0x471d10
  0041bb47: 83 c4 04                                        add    esp,0x4
  0041bb4a: 85 c0                                           test   eax,eax
  0041bb4c: 74 18                                           je     0x41bb66
  0041bb4e: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0041bb51: 50                                              push   eax
  0041bb52: 6a 08                                           push   0x8
  0041bb54: 53                                              push   ebx
  0041bb55: e8 b6 61 05 00                                  call   0x471d10
  0041bb5a: 83 c4 04                                        add    esp,0x4
  0041bb5d: 50                                              push   eax
  0041bb5e: e8 8d 2f 0b 00                                  call   0x4ceaf0
  0041bb63: 83 c4 0c                                        add    esp,0xc
  0041bb66: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bb69: e8 32 5f 0b 00                                  call   0x4d1aa0
  0041bb6e: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041bb70: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  0041bb73: 50                                              push   eax
  0041bb74: 8b ce                                           mov    ecx,esi
  0041bb76: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041bb79: 8b 8e 50 01 00 00                               mov    ecx,DWORD PTR [esi+0x150]
  0041bb7f: 8b 96 54 01 00 00                               mov    edx,DWORD PTR [esi+0x154]
  0041bb85: 8d 85 30 ff ff ff                               lea    eax,[ebp-0xd0]
  0041bb8b: 50                                              push   eax
  0041bb8c: 89 4d 88                                        mov    DWORD PTR [ebp-0x78],ecx
  0041bb8f: 89 55 8c                                        mov    DWORD PTR [ebp-0x74],edx
  0041bb92: 89 9d e0 fe ff ff                               mov    DWORD PTR [ebp-0x120],ebx
  0041bb98: c7 85 28 ff ff ff 8c e5 4d 00                   mov    DWORD PTR [ebp-0xd8],0x4de58c
  0041bba2: c7 85 2c ff ff ff ff ff ff ff                   mov    DWORD PTR [ebp-0xd4],0xffffffff
  0041bbac: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0041bbb2: 89 9d 4c ff ff ff                               mov    DWORD PTR [ebp-0xb4],ebx
  0041bbb8: 89 9d 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],ebx
  0041bbbe: 89 9d 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],ebx
  0041bbc4: 89 9d 58 ff ff ff                               mov    DWORD PTR [ebp-0xa8],ebx
  0041bbca: c7 85 28 ff ff ff 6c e6 4d 00                   mov    DWORD PTR [ebp-0xd8],0x4de66c
  0041bbd4: 89 9d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ebx
  0041bbda: c6 85 5c ff ff ff 08                            mov    BYTE PTR [ebp-0xa4],0x8
  0041bbe1: 89 9d 60 ff ff ff                               mov    DWORD PTR [ebp-0xa0],ebx
  0041bbe7: 8d 8d ec fe ff ff                               lea    ecx,[ebp-0x114]
  0041bbed: 51                                              push   ecx
  0041bbee: c7 85 e4 fe ff ff 8c e5 4d 00                   mov    DWORD PTR [ebp-0x11c],0x4de58c
  0041bbf8: c7 85 e8 fe ff ff ff ff ff ff                   mov    DWORD PTR [ebp-0x118],0xffffffff
  0041bc02: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0041bc08: 89 9d 08 ff ff ff                               mov    DWORD PTR [ebp-0xf8],ebx
  0041bc0e: 89 9d 0c ff ff ff                               mov    DWORD PTR [ebp-0xf4],ebx
  0041bc14: 89 9d 10 ff ff ff                               mov    DWORD PTR [ebp-0xf0],ebx
  0041bc1a: 89 9d 14 ff ff ff                               mov    DWORD PTR [ebp-0xec],ebx
  0041bc20: c7 85 e4 fe ff ff 6c e6 4d 00                   mov    DWORD PTR [ebp-0x11c],0x4de66c
  0041bc2a: 89 9d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ebx
  0041bc30: c6 85 18 ff ff ff 08                            mov    BYTE PTR [ebp-0xe8],0x8
  0041bc37: 89 9d 1c ff ff ff                               mov    DWORD PTR [ebp-0xe4],ebx
  0041bc3d: 8d 95 e0 fe ff ff                               lea    edx,[ebp-0x120]
  0041bc43: 52                                              push   edx
  0041bc44: 8d 85 28 ff ff ff                               lea    eax,[ebp-0xd8]
  0041bc4a: 50                                              push   eax
  0041bc4b: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  0041bc51: 51                                              push   ecx
  0041bc52: 57                                              push   edi
  0041bc53: 56                                              push   esi
  0041bc54: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041bc58: e8 c3 cd 01 00                                  call   0x438a20
  0041bc5d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041bc5f: 83 c4 14                                        add    esp,0x14
  0041bc62: 8b ce                                           mov    ecx,esi
  0041bc64: ff 92 04 01 00 00                               call   DWORD PTR [edx+0x104]
  0041bc6a: 8b 8d e0 fe ff ff                               mov    ecx,DWORD PTR [ebp-0x120]
  0041bc70: 3b c8                                           cmp    ecx,eax
  0041bc72: 73 11                                           jae    0x41bc85
  0041bc74: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041bc76: 2b c1                                           sub    eax,ecx
  0041bc78: 6a 01                                           push   0x1
  0041bc7a: 50                                              push   eax
  0041bc7b: 8b ce                                           mov    ecx,esi
  0041bc7d: ff 92 08 01 00 00                               call   DWORD PTR [edx+0x108]
  0041bc83: eb 0d                                           jmp    0x41bc92
  0041bc85: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041bc87: 6a 01                                           push   0x1
  0041bc89: 53                                              push   ebx
  0041bc8a: 8b ce                                           mov    ecx,esi
  0041bc8c: ff 90 08 01 00 00                               call   DWORD PTR [eax+0x108]
  0041bc92: 8b 8d e0 fe ff ff                               mov    ecx,DWORD PTR [ebp-0x120]
  0041bc98: 51                                              push   ecx
  0041bc99: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041bc9c: 68 28 22 50 00                                  push   0x502228
  0041bca1: 52                                              push   edx
  0041bca2: e8 ed 5d 0b 00                                  call   0x4d1a94
  0041bca7: 83 c4 0c                                        add    esp,0xc
  0041bcaa: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bcad: e8 ee 5d 0b 00                                  call   0x4d1aa0
  0041bcb2: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bcb5: e8 e6 5d 0b 00                                  call   0x4d1aa0
  0041bcba: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041bcbc: 8b ce                                           mov    ecx,esi
  0041bcbe: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041bcc4: 66 3d 01 00                                     cmp    ax,0x1
  0041bcc8: 0f 86 7a 02 00 00                               jbe    0x41bf48
  0041bcce: 8b 96 50 01 00 00                               mov    edx,DWORD PTR [esi+0x150]
  0041bcd4: 8b 45 88                                        mov    eax,DWORD PTR [ebp-0x78]
  0041bcd7: 2b c2                                           sub    eax,edx
  0041bcd9: 50                                              push   eax
  0041bcda: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bcdd: 68 04 22 50 00                                  push   0x502204
  0041bce2: 51                                              push   ecx
  0041bce3: e8 ac 5d 0b 00                                  call   0x4d1a94
  0041bce8: 83 c4 0c                                        add    esp,0xc
  0041bceb: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041bcee: 52                                              push   edx
  0041bcef: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bcf2: e8 c1 5d 0b 00                                  call   0x4d1ab8
  0041bcf7: 68 e8 21 50 00                                  push   0x5021e8
  0041bcfc: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bcff: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  0041bd02: e8 4b 5d 0b 00                                  call   0x4d1a52
  0041bd07: 39 9d 1c ff ff ff                               cmp    DWORD PTR [ebp-0xe4],ebx
  0041bd0d: 75 12                                           jne    0x41bd21
  0041bd0f: 68 e0 21 50 00                                  push   0x5021e0
  0041bd14: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bd17: e8 36 5d 0b 00                                  call   0x4d1a52
  0041bd1c: e9 ec 00 00 00                                  jmp    0x41be0d
  0041bd21: 8b 85 08 ff ff ff                               mov    eax,DWORD PTR [ebp-0xf8]
  0041bd27: 33 c9                                           xor    ecx,ecx
  0041bd29: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041bd2f: 89 8d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ecx
  0041bd35: c6 85 18 ff ff ff 08                            mov    BYTE PTR [ebp-0xe8],0x8
  0041bd3c: 3b cb                                           cmp    ecx,ebx
  0041bd3e: 74 0a                                           je     0x41bd4a
  0041bd40: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041bd42: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041bd48: eb 0b                                           jmp    0x41bd55
  0041bd4a: b9 01 00 00 00                                  mov    ecx,0x1
  0041bd4f: 89 8d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ecx
  0041bd55: 3b c3                                           cmp    eax,ebx
  0041bd57: 0f 84 9f 00 00 00                               je     0x41bdfc
  0041bd5d: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041bd60: 8b 38                                           mov    edi,DWORD PTR [eax]
  0041bd62: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041bd65: e8 f6 1c 02 00                                  call   0x43da60
  0041bd6a: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041bd6d: 50                                              push   eax
  0041bd6e: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0041bd71: 50                                              push   eax
  0041bd72: ff 57 48                                        call   DWORD PTR [edi+0x48]
  0041bd75: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041bd77: 51                                              push   ecx
  0041bd78: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041bd7b: 68 d8 21 50 00                                  push   0x5021d8
  0041bd80: 52                                              push   edx
  0041bd81: c6 45 fc 11                                     mov    BYTE PTR [ebp-0x4],0x11
  0041bd85: e8 0a 5d 0b 00                                  call   0x4d1a94
  0041bd8a: 83 c4 0c                                        add    esp,0xc
  0041bd8d: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041bd90: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041bd94: e8 a7 5c 0b 00                                  call   0x4d1a40
  0041bd99: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041bd9c: 50                                              push   eax
  0041bd9d: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bda0: e8 13 5d 0b 00                                  call   0x4d1ab8
  0041bda5: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041bda8: 8b c7                                           mov    eax,edi
  0041bdaa: 99                                              cdq
  0041bdab: b9 0a 00 00 00                                  mov    ecx,0xa
  0041bdb0: f7 f9                                           idiv   ecx
  0041bdb2: 85 d2                                           test   edx,edx
  0041bdb4: 75 31                                           jne    0x41bde7
  0041bdb6: 3b fb                                           cmp    edi,ebx
  0041bdb8: 74 2d                                           je     0x41bde7
  0041bdba: 53                                              push   ebx
  0041bdbb: e8 50 5f 05 00                                  call   0x471d10
  0041bdc0: 83 c4 04                                        add    esp,0x4
  0041bdc3: 85 c0                                           test   eax,eax
  0041bdc5: 74 18                                           je     0x41bddf
  0041bdc7: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0041bdca: 52                                              push   edx
  0041bdcb: 6a 08                                           push   0x8
  0041bdcd: 53                                              push   ebx
  0041bdce: e8 3d 5f 05 00                                  call   0x471d10
  0041bdd3: 83 c4 04                                        add    esp,0x4
  0041bdd6: 50                                              push   eax
  0041bdd7: e8 14 2d 0b 00                                  call   0x4ceaf0
  0041bddc: 83 c4 0c                                        add    esp,0xc
  0041bddf: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bde2: e8 b9 5c 0b 00                                  call   0x4d1aa0
  0041bde7: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041bded: 8b 8d 24 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xdc]
  0041bdf3: 47                                              inc    edi
  0041bdf4: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0041bdf7: e9 40 ff ff ff                                  jmp    0x41bd3c
  0041bdfc: 3b cb                                           cmp    ecx,ebx
  0041bdfe: 74 07                                           je     0x41be07
  0041be00: c6 85 18 ff ff ff 07                            mov    BYTE PTR [ebp-0xe8],0x7
  0041be07: 89 9d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ebx
  0041be0d: 53                                              push   ebx
  0041be0e: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  0041be11: e8 fa 5e 05 00                                  call   0x471d10
  0041be16: 83 c4 04                                        add    esp,0x4
  0041be19: 85 c0                                           test   eax,eax
  0041be1b: 74 18                                           je     0x41be35
  0041be1d: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0041be20: 50                                              push   eax
  0041be21: 6a 08                                           push   0x8
  0041be23: 53                                              push   ebx
  0041be24: e8 e7 5e 05 00                                  call   0x471d10
  0041be29: 83 c4 04                                        add    esp,0x4
  0041be2c: 50                                              push   eax
  0041be2d: e8 be 2c 0b 00                                  call   0x4ceaf0
  0041be32: 83 c4 0c                                        add    esp,0xc
  0041be35: 68 c0 21 50 00                                  push   0x5021c0
  0041be3a: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041be3d: e8 16 5c 0b 00                                  call   0x4d1a58
  0041be42: 39 9d 60 ff ff ff                               cmp    DWORD PTR [ebp-0xa0],ebx
  0041be48: 75 12                                           jne    0x41be5c
  0041be4a: 68 e0 21 50 00                                  push   0x5021e0
  0041be4f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041be52: e8 fb 5b 0b 00                                  call   0x4d1a52
  0041be57: e9 ec 00 00 00                                  jmp    0x41bf48
  0041be5c: 8b 85 4c ff ff ff                               mov    eax,DWORD PTR [ebp-0xb4]
  0041be62: 33 c9                                           xor    ecx,ecx
  0041be64: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041be6a: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  0041be70: c6 85 5c ff ff ff 08                            mov    BYTE PTR [ebp-0xa4],0x8
  0041be77: 3b cb                                           cmp    ecx,ebx
  0041be79: 74 0a                                           je     0x41be85
  0041be7b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041be7d: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041be83: eb 0b                                           jmp    0x41be90
  0041be85: b9 01 00 00 00                                  mov    ecx,0x1
  0041be8a: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  0041be90: 3b c3                                           cmp    eax,ebx
  0041be92: 0f 84 9f 00 00 00                               je     0x41bf37
  0041be98: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041be9b: 8b 38                                           mov    edi,DWORD PTR [eax]
  0041be9d: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041bea0: e8 bb 1b 02 00                                  call   0x43da60
  0041bea5: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041bea8: 50                                              push   eax
  0041bea9: 51                                              push   ecx
  0041beaa: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041bead: ff 57 48                                        call   DWORD PTR [edi+0x48]
  0041beb0: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041beb2: 52                                              push   edx
  0041beb3: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041beb6: 68 d8 21 50 00                                  push   0x5021d8
  0041bebb: 50                                              push   eax
  0041bebc: c6 45 fc 12                                     mov    BYTE PTR [ebp-0x4],0x12
  0041bec0: e8 cf 5b 0b 00                                  call   0x4d1a94
  0041bec5: 83 c4 0c                                        add    esp,0xc
  0041bec8: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041becb: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041becf: e8 6c 5b 0b 00                                  call   0x4d1a40
  0041bed4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bed7: 51                                              push   ecx
  0041bed8: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bedb: e8 d8 5b 0b 00                                  call   0x4d1ab8
  0041bee0: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041bee3: 8b c7                                           mov    eax,edi
  0041bee5: 99                                              cdq
  0041bee6: b9 0a 00 00 00                                  mov    ecx,0xa
  0041beeb: f7 f9                                           idiv   ecx
  0041beed: 85 d2                                           test   edx,edx
  0041beef: 75 31                                           jne    0x41bf22
  0041bef1: 3b fb                                           cmp    edi,ebx
  0041bef3: 74 2d                                           je     0x41bf22
  0041bef5: 53                                              push   ebx
  0041bef6: e8 15 5e 05 00                                  call   0x471d10
  0041befb: 83 c4 04                                        add    esp,0x4
  0041befe: 85 c0                                           test   eax,eax
  0041bf00: 74 18                                           je     0x41bf1a
  0041bf02: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0041bf05: 52                                              push   edx
  0041bf06: 6a 08                                           push   0x8
  0041bf08: 53                                              push   ebx
  0041bf09: e8 02 5e 05 00                                  call   0x471d10
  0041bf0e: 83 c4 04                                        add    esp,0x4
  0041bf11: 50                                              push   eax
  0041bf12: e8 d9 2b 0b 00                                  call   0x4ceaf0
  0041bf17: 83 c4 0c                                        add    esp,0xc
  0041bf1a: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bf1d: e8 7e 5b 0b 00                                  call   0x4d1aa0
  0041bf22: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041bf28: 8b 8d 68 ff ff ff                               mov    ecx,DWORD PTR [ebp-0x98]
  0041bf2e: 47                                              inc    edi
  0041bf2f: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0041bf32: e9 40 ff ff ff                                  jmp    0x41be77
  0041bf37: 3b cb                                           cmp    ecx,ebx
  0041bf39: 74 07                                           je     0x41bf42
  0041bf3b: c6 85 5c ff ff ff 07                            mov    BYTE PTR [ebp-0xa4],0x7
  0041bf42: 89 9d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ebx
  0041bf48: 53                                              push   ebx
  0041bf49: e8 c2 5d 05 00                                  call   0x471d10
  0041bf4e: 83 c4 04                                        add    esp,0x4
  0041bf51: 85 c0                                           test   eax,eax
  0041bf53: 74 18                                           je     0x41bf6d
  0041bf55: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0041bf58: 50                                              push   eax
  0041bf59: 6a 08                                           push   0x8
  0041bf5b: 53                                              push   ebx
  0041bf5c: e8 af 5d 05 00                                  call   0x471d10
  0041bf61: 83 c4 04                                        add    esp,0x4
  0041bf64: 50                                              push   eax
  0041bf65: e8 86 2b 0b 00                                  call   0x4ceaf0
  0041bf6a: 83 c4 0c                                        add    esp,0xc
  0041bf6d: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bf70: e8 2b 5b 0b 00                                  call   0x4d1aa0
  0041bf75: 6a 07                                           push   0x7
  0041bf77: 53                                              push   ebx
  0041bf78: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041bf7d: e8 1e d1 03 00                                  call   0x4590a0
  0041bf82: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  0041bf85: 51                                              push   ecx
  0041bf86: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0041bf89: c7 45 90 8c e5 4d 00                            mov    DWORD PTR [ebp-0x70],0x4de58c
  0041bf90: c7 45 94 ff ff ff ff                            mov    DWORD PTR [ebp-0x6c],0xffffffff
  0041bf97: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0041bf9d: 33 c0                                           xor    eax,eax
  0041bf9f: 89 5d b4                                        mov    DWORD PTR [ebp-0x4c],ebx
  0041bfa2: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041bfa5: 89 5d bc                                        mov    DWORD PTR [ebp-0x44],ebx
  0041bfa8: 89 5d c0                                        mov    DWORD PTR [ebp-0x40],ebx
  0041bfab: c7 45 90 6c e6 4d 00                            mov    DWORD PTR [ebp-0x70],0x4de66c
  0041bfb2: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041bfb5: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041bfb9: 89 5d c8                                        mov    DWORD PTR [ebp-0x38],ebx
  0041bfbc: 8b 8d 08 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xf8]
  0041bfc2: 33 d2                                           xor    edx,edx
  0041bfc4: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  0041bfc8: 89 8d 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],ecx
  0041bfce: 89 95 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edx
  0041bfd4: c6 85 18 ff ff ff 08                            mov    BYTE PTR [ebp-0xe8],0x8
  0041bfdb: 3b d3                                           cmp    edx,ebx
  0041bfdd: 74 0a                                           je     0x41bfe9
  0041bfdf: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0041bfe1: 89 8d 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],ecx
  0041bfe7: eb 0b                                           jmp    0x41bff4
  0041bfe9: ba 01 00 00 00                                  mov    edx,0x1
  0041bfee: 89 95 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edx
  0041bff4: 3b cb                                           cmp    ecx,ebx
  0041bff6: 0f 84 9f 00 00 00                               je     0x41c09b
  0041bffc: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  0041bfff: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  0041c002: 42                                              inc    edx
  0041c003: 3b c3                                           cmp    eax,ebx
  0041c005: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c008: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c00b: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c00f: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c012: 89 55 c8                                        mov    DWORD PTR [ebp-0x38],edx
  0041c015: 6a 0c                                           push   0xc
  0041c017: 75 3d                                           jne    0x41c056
  0041c019: e8 d2 5f 02 00                                  call   0x441ff0
  0041c01e: 83 c4 04                                        add    esp,0x4
  0041c021: 3b c3                                           cmp    eax,ebx
  0041c023: 74 07                                           je     0x41c02c
  0041c025: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c027: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c02a: eb 02                                           jmp    0x41c02e
  0041c02c: 33 c0                                           xor    eax,eax
  0041c02e: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c031: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c034: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c037: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c039: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c03c: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  0041c03f: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c042: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0041c045: 8b 8d 04 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xfc]
  0041c04b: 8b 95 24 ff ff ff                               mov    edx,DWORD PTR [ebp-0xdc]
  0041c051: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  0041c054: eb 85                                           jmp    0x41bfdb
  0041c056: e8 95 5f 02 00                                  call   0x441ff0
  0041c05b: 83 c4 04                                        add    esp,0x4
  0041c05e: 3b c3                                           cmp    eax,ebx
  0041c060: 74 07                                           je     0x41c069
  0041c062: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c064: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c067: eb 02                                           jmp    0x41c06b
  0041c069: 33 c0                                           xor    eax,eax
  0041c06b: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c06e: 89 01                                           mov    DWORD PTR [ecx],eax
  0041c070: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  0041c073: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c076: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c079: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041c07c: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c07f: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c081: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c084: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0041c087: 8b 8d 04 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xfc]
  0041c08d: 8b 95 24 ff ff ff                               mov    edx,DWORD PTR [ebp-0xdc]
  0041c093: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  0041c096: e9 40 ff ff ff                                  jmp    0x41bfdb
  0041c09b: 3b d3                                           cmp    edx,ebx
  0041c09d: 74 07                                           je     0x41c0a6
  0041c09f: c6 85 18 ff ff ff 07                            mov    BYTE PTR [ebp-0xe8],0x7
  0041c0a6: 8b 8d 4c ff ff ff                               mov    ecx,DWORD PTR [ebp-0xb4]
  0041c0ac: 33 d2                                           xor    edx,edx
  0041c0ae: 89 9d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ebx
  0041c0b4: 89 8d 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],ecx
  0041c0ba: 89 95 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edx
  0041c0c0: c6 85 5c ff ff ff 08                            mov    BYTE PTR [ebp-0xa4],0x8
  0041c0c7: 3b d3                                           cmp    edx,ebx
  0041c0c9: 74 0a                                           je     0x41c0d5
  0041c0cb: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0041c0cd: 89 8d 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],ecx
  0041c0d3: eb 0b                                           jmp    0x41c0e0
  0041c0d5: ba 01 00 00 00                                  mov    edx,0x1
  0041c0da: 89 95 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edx
  0041c0e0: 3b cb                                           cmp    ecx,ebx
  0041c0e2: 0f 84 9f 00 00 00                               je     0x41c187
  0041c0e8: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  0041c0eb: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  0041c0ee: 42                                              inc    edx
  0041c0ef: 3b c3                                           cmp    eax,ebx
  0041c0f1: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c0f4: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c0f7: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c0fb: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c0fe: 89 55 c8                                        mov    DWORD PTR [ebp-0x38],edx
  0041c101: 6a 0c                                           push   0xc
  0041c103: 75 3d                                           jne    0x41c142
  0041c105: e8 e6 5e 02 00                                  call   0x441ff0
  0041c10a: 83 c4 04                                        add    esp,0x4
  0041c10d: 3b c3                                           cmp    eax,ebx
  0041c10f: 74 07                                           je     0x41c118
  0041c111: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c113: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c116: eb 02                                           jmp    0x41c11a
  0041c118: 33 c0                                           xor    eax,eax
  0041c11a: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c11d: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c120: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c123: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c125: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c128: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  0041c12b: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c12e: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0041c131: 8b 8d 48 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xb8]
  0041c137: 8b 95 68 ff ff ff                               mov    edx,DWORD PTR [ebp-0x98]
  0041c13d: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  0041c140: eb 85                                           jmp    0x41c0c7
  0041c142: e8 a9 5e 02 00                                  call   0x441ff0
  0041c147: 83 c4 04                                        add    esp,0x4
  0041c14a: 3b c3                                           cmp    eax,ebx
  0041c14c: 74 07                                           je     0x41c155
  0041c14e: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c150: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c153: eb 02                                           jmp    0x41c157
  0041c155: 33 c0                                           xor    eax,eax
  0041c157: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c15a: 89 01                                           mov    DWORD PTR [ecx],eax
  0041c15c: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  0041c15f: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c162: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c165: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041c168: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c16b: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c16d: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c170: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0041c173: 8b 8d 48 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xb8]
  0041c179: 8b 95 68 ff ff ff                               mov    edx,DWORD PTR [ebp-0x98]
  0041c17f: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  0041c182: e9 40 ff ff ff                                  jmp    0x41c0c7
  0041c187: 3b d3                                           cmp    edx,ebx
  0041c189: 74 07                                           je     0x41c192
  0041c18b: c6 85 5c ff ff ff 07                            mov    BYTE PTR [ebp-0xa4],0x7
  0041c192: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0041c195: 52                                              push   edx
  0041c196: 89 9d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ebx
  0041c19c: e8 1f 5d 05 00                                  call   0x471ec0
  0041c1a1: 83 c4 04                                        add    esp,0x4
  0041c1a4: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0041c1a7: 3b c3                                           cmp    eax,ebx
  0041c1a9: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  0041c1ac: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c1af: 0f 84 1f 03 00 00                               je     0x41c4d4
  0041c1b5: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c1b8: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c1bc: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0041c1bf: 3b cb                                           cmp    ecx,ebx
  0041c1c1: 74 07                                           je     0x41c1ca
  0041c1c3: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c1c5: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c1c8: eb 08                                           jmp    0x41c1d2
  0041c1ca: b9 01 00 00 00                                  mov    ecx,0x1
  0041c1cf: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c1d2: 3b c3                                           cmp    eax,ebx
  0041c1d4: 0f 84 ed 02 00 00                               je     0x41c4c7
  0041c1da: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0041c1dd: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041c1e0: 8b 5d d8                                        mov    ebx,DWORD PTR [ebp-0x28]
  0041c1e3: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  0041c1e6: 89 4d 80                                        mov    DWORD PTR [ebp-0x80],ecx
  0041c1e9: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041c1ec: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0041c1ef: 8b c1                                           mov    eax,ecx
  0041c1f1: 41                                              inc    ecx
  0041c1f2: 83 f8 07                                        cmp    eax,0x7
  0041c1f5: 89 9d 7c ff ff ff                               mov    DWORD PTR [ebp-0x84],ebx
  0041c1fb: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0041c1fe: 0f 87 b7 00 00 00                               ja     0x41c2bb
  0041c204: ff 24 85 d8 cb 41 00                            jmp    DWORD PTR [eax*4+0x41cbd8]
  0041c2bb: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041c2be: 8b 4d 80                                        mov    ecx,DWORD PTR [ebp-0x80]
  0041c2c1: 33 d2                                           xor    edx,edx
  0041c2c3: 83 f8 07                                        cmp    eax,0x7
  0041c2c6: 0f 9f c2                                        setg   dl
  0041c2c9: 6a 00                                           push   0x0
  0041c2cb: 6a 00                                           push   0x0
  0041c2cd: 6a 00                                           push   0x0
  0041c2cf: 83 ec 0c                                        sub    esp,0xc
  0041c2d2: 4a                                              dec    edx
  0041c2d3: 23 d0                                           and    edx,eax
  0041c2d5: 8b c4                                           mov    eax,esp
  0041c2d7: 89 38                                           mov    DWORD PTR [eax],edi
  0041c2d9: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c2dc: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0041c2df: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0041c2e2: 89 55 0c                                        mov    DWORD PTR [ebp+0xc],edx
  0041c2e5: e8 66 2f 09 00                                  call   0x4af250
  0041c2ea: 85 c0                                           test   eax,eax
  0041c2ec: 74 38                                           je     0x41c326
  0041c2ee: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0041c2f1: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0041c2f4: 6a 02                                           push   0x2
  0041c2f6: 83 ec 0c                                        sub    esp,0xc
  0041c2f9: 8b d4                                           mov    edx,esp
  0041c2fb: 89 02                                           mov    DWORD PTR [edx],eax
  0041c2fd: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  0041c300: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041c303: 8d 8d cc fe ff ff                               lea    ecx,[ebp-0x134]
  0041c309: 51                                              push   ecx
  0041c30a: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0041c30d: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0041c310: e8 8b 5e 09 00                                  call   0x4b21a0
  0041c315: 8b 38                                           mov    edi,DWORD PTR [eax]
  0041c317: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  0041c31a: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0041c31d: 89 9d 7c ff ff ff                               mov    DWORD PTR [ebp-0x84],ebx
  0041c323: 89 55 80                                        mov    DWORD PTR [ebp-0x80],edx
  0041c326: 85 ff                                           test   edi,edi
  0041c328: 0f 8e cc 00 00 00                               jle    0x41c3fa
  0041c32e: 85 db                                           test   ebx,ebx
  0041c330: 0f 8e c4 00 00 00                               jle    0x41c3fa
  0041c336: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0041c339: 8b 55 80                                        mov    edx,DWORD PTR [ebp-0x80]
  0041c33c: 50                                              push   eax
  0041c33d: 83 ec 0c                                        sub    esp,0xc
  0041c340: 8b cc                                           mov    ecx,esp
  0041c342: 89 39                                           mov    DWORD PTR [ecx],edi
  0041c344: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0041c347: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0041c34a: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0041c34d: e8 be 2d 09 00                                  call   0x4af110
  0041c352: 6a 03                                           push   0x3
  0041c354: e8 b7 59 05 00                                  call   0x471d10
  0041c359: 83 c4 04                                        add    esp,0x4
  0041c35c: 85 c0                                           test   eax,eax
  0041c35e: 74 6e                                           je     0x41c3ce
  0041c360: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0041c363: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041c365: e8 f6 16 02 00                                  call   0x43da60
  0041c36a: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041c36d: 8b d3                                           mov    edx,ebx
  0041c36f: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0041c372: 50                                              push   eax
  0041c373: 51                                              push   ecx
  0041c374: 8b cb                                           mov    ecx,ebx
  0041c376: ff 52 48                                        call   DWORD PTR [edx+0x48]
  0041c379: 8b 4d 80                                        mov    ecx,DWORD PTR [ebp-0x80]
  0041c37c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c37e: 8b 95 7c ff ff ff                               mov    edx,DWORD PTR [ebp-0x84]
  0041c384: 51                                              push   ecx
  0041c385: 52                                              push   edx
  0041c386: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041c389: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0041c38b: 57                                              push   edi
  0041c38c: 8b cb                                           mov    ecx,ebx
  0041c38e: c6 45 fc 14                                     mov    BYTE PTR [ebp-0x4],0x14
  0041c392: ff 50 28                                        call   DWORD PTR [eax+0x28]
  0041c395: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041c398: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0041c39b: 50                                              push   eax
  0041c39c: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  0041c39f: 51                                              push   ecx
  0041c3a0: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0041c3a3: 52                                              push   edx
  0041c3a4: 50                                              push   eax
  0041c3a5: 51                                              push   ecx
  0041c3a6: 68 70 21 50 00                                  push   0x502170
  0041c3ab: 6a 40                                           push   0x40
  0041c3ad: 6a 03                                           push   0x3
  0041c3af: e8 5c 59 05 00                                  call   0x471d10
  0041c3b4: 83 c4 04                                        add    esp,0x4
  0041c3b7: 50                                              push   eax
  0041c3b8: e8 33 27 0b 00                                  call   0x4ceaf0
  0041c3bd: 83 c4 2c                                        add    esp,0x2c
  0041c3c0: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041c3c3: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  0041c3c7: e8 74 56 0b 00                                  call   0x4d1a40
  0041c3cc: eb 03                                           jmp    0x41c3d1
  0041c3ce: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0041c3d1: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0041c3d4: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0041c3d7: 6a 01                                           push   0x1
  0041c3d9: 83 ec 0c                                        sub    esp,0xc
  0041c3dc: 8b d4                                           mov    edx,esp
  0041c3de: 89 02                                           mov    DWORD PTR [edx],eax
  0041c3e0: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  0041c3e3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041c3e6: 8b cb                                           mov    ecx,ebx
  0041c3e8: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0041c3eb: e8 f0 33 07 00                                  call   0x48f7e0
  0041c3f0: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c3f3: 33 db                                           xor    ebx,ebx
  0041c3f5: e9 c2 fd ff ff                                  jmp    0x41c1bc
  0041c3fa: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c3fd: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0041c400: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041c402: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0041c408: 8b 7d c8                                        mov    edi,DWORD PTR [ebp-0x38]
  0041c40b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c40e: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  0041c411: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  0041c414: 4f                                              dec    edi
  0041c415: 3b c1                                           cmp    eax,ecx
  0041c417: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c41a: 89 7d c8                                        mov    DWORD PTR [ebp-0x38],edi
  0041c41d: 74 38                                           je     0x41c457
  0041c41f: 3b c2                                           cmp    eax,edx
  0041c421: 74 5f                                           je     0x41c482
  0041c423: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c425: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c428: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0041c42b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c42e: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c431: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c433: 89 11                                           mov    DWORD PTR [ecx],edx
  0041c435: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0041c438: 83 f8 01                                        cmp    eax,0x1
  0041c43b: 75 0b                                           jne    0x41c448
  0041c43d: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c440: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c443: 89 4d b0                                        mov    DWORD PTR [ebp-0x50],ecx
  0041c446: eb 69                                           jmp    0x41c4b1
  0041c448: 83 f8 02                                        cmp    eax,0x2
  0041c44b: 75 64                                           jne    0x41c4b1
  0041c44d: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c450: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c452: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c455: eb 5a                                           jmp    0x41c4b1
  0041c457: 3b c2                                           cmp    eax,edx
  0041c459: 74 27                                           je     0x41c482
  0041c45b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c45e: c7 01 00 00 00 00                               mov    DWORD PTR [ecx],0x0
  0041c464: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c467: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c46a: 89 55 b8                                        mov    DWORD PTR [ebp-0x48],edx
  0041c46d: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c470: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c473: 83 7d d0 02                                     cmp    DWORD PTR [ebp-0x30],0x2
  0041c477: 75 38                                           jne    0x41c4b1
  0041c479: c7 45 d0 00 00 00 00                            mov    DWORD PTR [ebp-0x30],0x0
  0041c480: eb 2f                                           jmp    0x41c4b1
  0041c482: 3b c1                                           cmp    eax,ecx
  0041c484: 74 1d                                           je     0x41c4a3
  0041c486: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c488: 33 c9                                           xor    ecx,ecx
  0041c48a: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041c48d: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c490: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c492: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c495: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c498: 83 7d d0 01                                     cmp    DWORD PTR [ebp-0x30],0x1
  0041c49c: 75 13                                           jne    0x41c4b1
  0041c49e: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c4a1: eb 0e                                           jmp    0x41c4b1
  0041c4a3: 33 c0                                           xor    eax,eax
  0041c4a5: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c4a8: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c4ab: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c4ae: 89 45 d0                                        mov    DWORD PTR [ebp-0x30],eax
  0041c4b1: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  0041c4b4: 51                                              push   ecx
  0041c4b5: e8 a6 5b 02 00                                  call   0x442060
  0041c4ba: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c4bd: 83 c4 04                                        add    esp,0x4
  0041c4c0: 33 db                                           xor    ebx,ebx
  0041c4c2: e9 f5 fc ff ff                                  jmp    0x41c1bc
  0041c4c7: 3b cb                                           cmp    ecx,ebx
  0041c4c9: 0f 84 ed 00 00 00                               je     0x41c5bc
  0041c4cf: e9 e4 00 00 00                                  jmp    0x41c5b8
  0041c4d4: 33 c9                                           xor    ecx,ecx
  0041c4d6: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c4d9: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c4dd: bf 02 00 00 00                                  mov    edi,0x2
  0041c4e2: 3b cb                                           cmp    ecx,ebx
  0041c4e4: 74 07                                           je     0x41c4ed
  0041c4e6: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c4e8: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c4eb: eb 08                                           jmp    0x41c4f5
  0041c4ed: b9 01 00 00 00                                  mov    ecx,0x1
  0041c4f2: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c4f5: 3b c3                                           cmp    eax,ebx
  0041c4f7: 0f 84 b7 00 00 00                               je     0x41c5b4
  0041c4fd: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0041c500: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041c502: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0041c508: 8b 4d c8                                        mov    ecx,DWORD PTR [ebp-0x38]
  0041c50b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c50e: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  0041c511: 49                                              dec    ecx
  0041c512: 89 4d c8                                        mov    DWORD PTR [ebp-0x38],ecx
  0041c515: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  0041c518: 3b c1                                           cmp    eax,ecx
  0041c51a: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c51d: 74 37                                           je     0x41c556
  0041c51f: 3b c2                                           cmp    eax,edx
  0041c521: 74 52                                           je     0x41c575
  0041c523: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c525: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c528: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0041c52b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c52e: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c531: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c533: 89 11                                           mov    DWORD PTR [ecx],edx
  0041c535: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0041c538: 83 f8 01                                        cmp    eax,0x1
  0041c53b: 75 0b                                           jne    0x41c548
  0041c53d: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c540: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c543: 89 4d b0                                        mov    DWORD PTR [ebp-0x50],ecx
  0041c546: eb 55                                           jmp    0x41c59d
  0041c548: 3b c7                                           cmp    eax,edi
  0041c54a: 75 51                                           jne    0x41c59d
  0041c54c: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c54f: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c551: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c554: eb 47                                           jmp    0x41c59d
  0041c556: 3b c2                                           cmp    eax,edx
  0041c558: 74 1b                                           je     0x41c575
  0041c55a: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c55d: 89 19                                           mov    DWORD PTR [ecx],ebx
  0041c55f: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c562: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c565: 89 55 b8                                        mov    DWORD PTR [ebp-0x48],edx
  0041c568: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c56b: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c56e: 39 7d d0                                        cmp    DWORD PTR [ebp-0x30],edi
  0041c571: 75 2a                                           jne    0x41c59d
  0041c573: eb 25                                           jmp    0x41c59a
  0041c575: 3b c1                                           cmp    eax,ecx
  0041c577: 74 18                                           je     0x41c591
  0041c579: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c57b: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0041c57e: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c581: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c583: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c586: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c589: 83 7d d0 01                                     cmp    DWORD PTR [ebp-0x30],0x1
  0041c58d: 75 0e                                           jne    0x41c59d
  0041c58f: eb 09                                           jmp    0x41c59a
  0041c591: 89 5d b0                                        mov    DWORD PTR [ebp-0x50],ebx
  0041c594: 89 5d b4                                        mov    DWORD PTR [ebp-0x4c],ebx
  0041c597: 89 5d b8                                        mov    DWORD PTR [ebp-0x48],ebx
  0041c59a: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c59d: 8b 45 bc                                        mov    eax,DWORD PTR [ebp-0x44]
  0041c5a0: 50                                              push   eax
  0041c5a1: e8 ba 5a 02 00                                  call   0x442060
  0041c5a6: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c5a9: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0041c5ac: 83 c4 04                                        add    esp,0x4
  0041c5af: e9 2e ff ff ff                                  jmp    0x41c4e2
  0041c5b4: 3b cb                                           cmp    ecx,ebx
  0041c5b6: 74 04                                           je     0x41c5bc
  0041c5b8: c6 45 c4 07                                     mov    BYTE PTR [ebp-0x3c],0x7
  0041c5bc: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c5be: 53                                              push   ebx
  0041c5bf: 68 34 4e 00 00                                  push   0x4e34
  0041c5c4: 8b ce                                           mov    ecx,esi
  0041c5c6: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c5c9: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0041c5cc: 3b c3                                           cmp    eax,ebx
  0041c5ce: 74 47                                           je     0x41c617
  0041c5d0: 8b f8                                           mov    edi,eax
  0041c5d2: 8b d8                                           mov    ebx,eax
  0041c5d4: 25 ff 00 00 00                                  and    eax,0xff
  0041c5d9: c1 ef 14                                        shr    edi,0x14
  0041c5dc: c1 eb 08                                        shr    ebx,0x8
  0041c5df: 50                                              push   eax
  0041c5e0: 81 e7 ff 0f 00 00                               and    edi,0xfff
  0041c5e6: 81 e3 ff 0f 00 00                               and    ebx,0xfff
  0041c5ec: 89 45 80                                        mov    DWORD PTR [ebp-0x80],eax
  0041c5ef: e8 cc 58 05 00                                  call   0x471ec0
  0041c5f4: 83 c4 04                                        add    esp,0x4
  0041c5f7: 85 c0                                           test   eax,eax
  0041c5f9: 74 1c                                           je     0x41c617
  0041c5fb: 33 c9                                           xor    ecx,ecx
  0041c5fd: 66 8b 48 2c                                     mov    cx,WORD PTR [eax+0x2c]
  0041c601: 3b f9                                           cmp    edi,ecx
  0041c603: 7d 12                                           jge    0x41c617
  0041c605: 33 d2                                           xor    edx,edx
  0041c607: 66 8b 50 2e                                     mov    dx,WORD PTR [eax+0x2e]
  0041c60b: 3b da                                           cmp    ebx,edx
  0041c60d: 7d 08                                           jge    0x41c617
  0041c60f: 85 ff                                           test   edi,edi
  0041c611: 7c 04                                           jl     0x41c617
  0041c613: 85 db                                           test   ebx,ebx
  0041c615: 7d 14                                           jge    0x41c62b
  0041c617: a1 58 e6 4d 00                                  mov    eax,ds:0x4de658
  0041c61c: 8b 3d 50 e6 4d 00                               mov    edi,DWORD PTR ds:0x4de650
  0041c622: 8b 1d 54 e6 4d 00                               mov    ebx,DWORD PTR ds:0x4de654
  0041c628: 89 45 80                                        mov    DWORD PTR [ebp-0x80],eax
  0041c62b: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c631: e8 ba 97 06 00                                  call   0x485df0
  0041c636: 6a 2c                                           push   0x2c
  0041c638: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c63e: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  0041c642: e8 09 9b 06 00                                  call   0x486150
  0041c647: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c649: 8b ce                                           mov    ecx,esi
  0041c64b: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0041c64e: 8b c2                                           mov    eax,edx
  0041c650: 52                                              push   edx
  0041c651: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c657: c1 f8 1f                                        sar    eax,0x1f
  0041c65a: e8 91 9b 06 00                                  call   0x4861f0
  0041c65f: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c661: 8b ce                                           mov    ecx,esi
  0041c663: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0041c666: 50                                              push   eax
  0041c667: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c66d: e8 7e 9b 06 00                                  call   0x4861f0
  0041c672: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041c674: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c67a: 51                                              push   ecx
  0041c67b: 8b ce                                           mov    ecx,esi
  0041c67d: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  0041c683: 6a 00                                           push   0x0
  0041c685: 6a 00                                           push   0x0
  0041c687: e8 84 61 04 00                                  call   0x462810
  0041c68c: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0041c68f: 50                                              push   eax
  0041c690: 33 c0                                           xor    eax,eax
  0041c692: 83 ec 0c                                        sub    esp,0xc
  0041c695: 8b d4                                           mov    edx,esp
  0041c697: 89 02                                           mov    DWORD PTR [edx],eax
  0041c699: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0041c69c: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0041c69f: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0041c6a2: 83 ec 0c                                        sub    esp,0xc
  0041c6a5: 8b c4                                           mov    eax,esp
  0041c6a7: 89 08                                           mov    DWORD PTR [eax],ecx
  0041c6a9: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0041c6ac: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041c6af: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0041c6b2: 6a 00                                           push   0x0
  0041c6b4: 8b ce                                           mov    ecx,esi
  0041c6b6: e8 45 f0 06 00                                  call   0x48b700
  0041c6bb: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0041c6be: 50                                              push   eax
  0041c6bf: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0041c6c2: 68 3c 75 00 00                                  push   0x753c
  0041c6c7: 6a 14                                           push   0x14
  0041c6c9: 83 ec 0c                                        sub    esp,0xc
  0041c6cc: 8b d4                                           mov    edx,esp
  0041c6ce: 89 02                                           mov    DWORD PTR [edx],eax
  0041c6d0: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  0041c6d3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041c6d6: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0041c6d9: e8 22 38 ff ff                                  call   0x40ff00
  0041c6de: 8b 4d 80                                        mov    ecx,DWORD PTR [ebp-0x80]
  0041c6e1: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c6e3: 83 c4 40                                        add    esp,0x40
  0041c6e6: 6a 01                                           push   0x1
  0041c6e8: 83 ec 0c                                        sub    esp,0xc
  0041c6eb: 8b c4                                           mov    eax,esp
  0041c6ed: 89 38                                           mov    DWORD PTR [eax],edi
  0041c6ef: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c6f2: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0041c6f5: 8b ce                                           mov    ecx,esi
  0041c6f7: ff 92 0c 01 00 00                               call   DWORD PTR [edx+0x10c]
  0041c6fd: 6a 07                                           push   0x7
  0041c6ff: 8b ce                                           mov    ecx,esi
  0041c701: e8 7a 2d 07 00                                  call   0x48f480
  0041c706: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c70c: e8 df 96 06 00                                  call   0x485df0
  0041c711: b3 16                                           mov    bl,0x16
  0041c713: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041c716: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0041c719: e8 40 53 0b 00                                  call   0x4d1a5e
  0041c71e: 33 d2                                           xor    edx,edx
  0041c720: 66 8b 96 1c 01 00 00                            mov    dx,WORD PTR [esi+0x11c]
  0041c727: 68 58 13 51 00                                  push   0x511358
  0041c72c: c6 45 fc 17                                     mov    BYTE PTR [ebp-0x4],0x17
  0041c730: 52                                              push   edx
  0041c731: 6a 10                                           push   0x10
  0041c733: e8 b8 12 02 00                                  call   0x43d9f0
  0041c738: 83 c4 0c                                        add    esp,0xc
  0041c73b: 50                                              push   eax
  0041c73c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041c73f: e8 14 53 0b 00                                  call   0x4d1a58
  0041c744: 6a 3f                                           push   0x3f
  0041c746: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c74c: e8 ff 99 06 00                                  call   0x486150
  0041c751: 6a 1e                                           push   0x1e
  0041c753: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c759: e8 f2 99 06 00                                  call   0x486150
  0041c75e: 6a 03                                           push   0x3
  0041c760: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c766: e8 e5 99 06 00                                  call   0x486150
  0041c76b: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0041c76e: 50                                              push   eax
  0041c76f: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c775: e8 d6 9b 06 00                                  call   0x486350
  0041c77a: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c77c: 8d 85 b4 fe ff ff                               lea    eax,[ebp-0x14c]
  0041c782: 50                                              push   eax
  0041c783: 8b ce                                           mov    ecx,esi
  0041c785: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  0041c78b: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041c78e: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0041c791: e8 aa 52 0b 00                                  call   0x4d1a40
  0041c796: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c79c: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  0041c7a0: e8 db 96 06 00                                  call   0x485e80
  0041c7a5: 8b 8d d8 fe ff ff                               mov    ecx,DWORD PTR [ebp-0x128]
  0041c7ab: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041c7ad: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041c7b0: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c7b6: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  0041c7ba: e8 c1 96 06 00                                  call   0x485e80
  0041c7bf: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  0041c7c2: 33 c9                                           xor    ecx,ecx
  0041c7c4: 8b c2                                           mov    eax,edx
  0041c7c6: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041c7ca: c7 45 90 6c e6 4d 00                            mov    DWORD PTR [ebp-0x70],0x4de66c
  0041c7d1: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c7d4: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c7d7: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c7db: bb 02 00 00 00                                  mov    ebx,0x2
  0041c7e0: 33 ff                                           xor    edi,edi
  0041c7e2: be 01 00 00 00                                  mov    esi,0x1
  0041c7e7: 3b cf                                           cmp    ecx,edi
  0041c7e9: 74 07                                           je     0x41c7f2
  0041c7eb: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c7ed: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c7f0: eb 05                                           jmp    0x41c7f7
  0041c7f2: 8b ce                                           mov    ecx,esi
  0041c7f4: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c7f7: 3b c7                                           cmp    eax,edi
  0041c7f9: 0f 84 a3 00 00 00                               je     0x41c8a2
  0041c7ff: ff 4d c8                                        dec    DWORD PTR [ebp-0x38]
  0041c802: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  0041c805: 3b c1                                           cmp    eax,ecx
  0041c807: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c80a: 74 36                                           je     0x41c842
  0041c80c: 3b c2                                           cmp    eax,edx
  0041c80e: 74 51                                           je     0x41c861
  0041c810: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c812: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c815: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0041c818: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c81b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c81e: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c820: 89 11                                           mov    DWORD PTR [ecx],edx
  0041c822: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0041c825: 3b c6                                           cmp    eax,esi
  0041c827: 75 0b                                           jne    0x41c834
  0041c829: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c82c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c82f: 89 4d b0                                        mov    DWORD PTR [ebp-0x50],ecx
  0041c832: eb 54                                           jmp    0x41c888
  0041c834: 3b c3                                           cmp    eax,ebx
  0041c836: 75 50                                           jne    0x41c888
  0041c838: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c83b: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c83d: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c840: eb 46                                           jmp    0x41c888
  0041c842: 3b c2                                           cmp    eax,edx
  0041c844: 74 1b                                           je     0x41c861
  0041c846: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c849: 89 39                                           mov    DWORD PTR [ecx],edi
  0041c84b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c84e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c851: 89 55 b8                                        mov    DWORD PTR [ebp-0x48],edx
  0041c854: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c857: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c85a: 39 5d d0                                        cmp    DWORD PTR [ebp-0x30],ebx
  0041c85d: 75 29                                           jne    0x41c888
  0041c85f: eb 24                                           jmp    0x41c885
  0041c861: 3b c1                                           cmp    eax,ecx
  0041c863: 74 17                                           je     0x41c87c
  0041c865: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c867: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0041c86a: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c86d: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c86f: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c872: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c875: 39 75 d0                                        cmp    DWORD PTR [ebp-0x30],esi
  0041c878: 75 0e                                           jne    0x41c888
  0041c87a: eb 09                                           jmp    0x41c885
  0041c87c: 89 7d b0                                        mov    DWORD PTR [ebp-0x50],edi
  0041c87f: 89 7d b4                                        mov    DWORD PTR [ebp-0x4c],edi
  0041c882: 89 7d b8                                        mov    DWORD PTR [ebp-0x48],edi
  0041c885: 89 7d d0                                        mov    DWORD PTR [ebp-0x30],edi
  0041c888: 8b 45 bc                                        mov    eax,DWORD PTR [ebp-0x44]
  0041c88b: 50                                              push   eax
  0041c88c: e8 cf 57 02 00                                  call   0x442060
  0041c891: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c894: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  0041c897: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0041c89a: 83 c4 04                                        add    esp,0x4
  0041c89d: e9 45 ff ff ff                                  jmp    0x41c7e7
  0041c8a2: 3b cf                                           cmp    ecx,edi
  0041c8a4: 74 04                                           je     0x41c8aa
  0041c8a6: c6 45 c4 07                                     mov    BYTE PTR [ebp-0x3c],0x7
  0041c8aa: 8b 1d e0 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0e0
  0041c8b0: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  0041c8b3: 51                                              push   ecx
  0041c8b4: 89 7d d0                                        mov    DWORD PTR [ebp-0x30],edi
  0041c8b7: c7 45 90 8c e5 4d 00                            mov    DWORD PTR [ebp-0x70],0x4de58c
  0041c8be: ff d3                                           call   ebx
  0041c8c0: 8b 95 08 ff ff ff                               mov    edx,DWORD PTR [ebp-0xf8]
  0041c8c6: be 6c e6 4d 00                                  mov    esi,0x4de66c
  0041c8cb: 8b c2                                           mov    eax,edx
  0041c8cd: 33 c9                                           xor    ecx,ecx
  0041c8cf: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  0041c8d3: 89 b5 e4 fe ff ff                               mov    DWORD PTR [ebp-0x11c],esi
  0041c8d9: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c8df: 89 8d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ecx
  0041c8e5: c6 85 18 ff ff ff 08                            mov    BYTE PTR [ebp-0xe8],0x8
  0041c8ec: 3b cf                                           cmp    ecx,edi
  0041c8ee: 74 0a                                           je     0x41c8fa
  0041c8f0: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c8f2: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c8f8: eb 0b                                           jmp    0x41c905
  0041c8fa: b9 01 00 00 00                                  mov    ecx,0x1
  0041c8ff: 89 8d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ecx
  0041c905: 3b c7                                           cmp    eax,edi
  0041c907: 0f 84 f5 00 00 00                               je     0x41ca02
  0041c90d: ff 8d 1c ff ff ff                               dec    DWORD PTR [ebp-0xe4]
  0041c913: 8b 8d 0c ff ff ff                               mov    ecx,DWORD PTR [ebp-0xf4]
  0041c919: 3b c1                                           cmp    eax,ecx
  0041c91b: 89 85 10 ff ff ff                               mov    DWORD PTR [ebp-0xf0],eax
  0041c921: 74 4d                                           je     0x41c970
  0041c923: 3b c2                                           cmp    eax,edx
  0041c925: 74 75                                           je     0x41c99c
  0041c927: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c929: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c92c: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0041c92f: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041c935: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c938: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c93a: 89 11                                           mov    DWORD PTR [ecx],edx
  0041c93c: 8b 85 24 ff ff ff                               mov    eax,DWORD PTR [ebp-0xdc]
  0041c942: 83 f8 01                                        cmp    eax,0x1
  0041c945: 75 14                                           jne    0x41c95b
  0041c947: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041c94d: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c950: 89 8d 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],ecx
  0041c956: e9 81 00 00 00                                  jmp    0x41c9dc
  0041c95b: 83 f8 02                                        cmp    eax,0x2
  0041c95e: 75 7c                                           jne    0x41c9dc
  0041c960: 8b 95 04 ff ff ff                               mov    edx,DWORD PTR [ebp-0xfc]
  0041c966: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c968: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c96e: eb 6c                                           jmp    0x41c9dc
  0041c970: 3b c2                                           cmp    eax,edx
  0041c972: 74 28                                           je     0x41c99c
  0041c974: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c977: 89 39                                           mov    DWORD PTR [ecx],edi
  0041c979: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041c97f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c982: 89 95 0c ff ff ff                               mov    DWORD PTR [ebp-0xf4],edx
  0041c988: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c98b: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c991: 83 bd 24 ff ff ff 02                            cmp    DWORD PTR [ebp-0xdc],0x2
  0041c998: 75 42                                           jne    0x41c9dc
  0041c99a: eb 3a                                           jmp    0x41c9d6
  0041c99c: 3b c1                                           cmp    eax,ecx
  0041c99e: 74 24                                           je     0x41c9c4
  0041c9a0: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c9a2: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0041c9a5: 8b 95 04 ff ff ff                               mov    edx,DWORD PTR [ebp-0xfc]
  0041c9ab: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c9ad: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c9b3: 89 85 08 ff ff ff                               mov    DWORD PTR [ebp-0xf8],eax
  0041c9b9: 83 bd 24 ff ff ff 01                            cmp    DWORD PTR [ebp-0xdc],0x1
  0041c9c0: 75 1a                                           jne    0x41c9dc
  0041c9c2: eb 12                                           jmp    0x41c9d6
  0041c9c4: 89 bd 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],edi
  0041c9ca: 89 bd 08 ff ff ff                               mov    DWORD PTR [ebp-0xf8],edi
  0041c9d0: 89 bd 0c ff ff ff                               mov    DWORD PTR [ebp-0xf4],edi
  0041c9d6: 89 bd 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edi
  0041c9dc: 8b 85 10 ff ff ff                               mov    eax,DWORD PTR [ebp-0xf0]
  0041c9e2: 50                                              push   eax
  0041c9e3: e8 78 56 02 00                                  call   0x442060
  0041c9e8: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041c9ee: 8b 95 08 ff ff ff                               mov    edx,DWORD PTR [ebp-0xf8]
  0041c9f4: 8b 8d 24 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xdc]
  0041c9fa: 83 c4 04                                        add    esp,0x4
  0041c9fd: e9 ea fe ff ff                                  jmp    0x41c8ec
  0041ca02: 3b cf                                           cmp    ecx,edi
  0041ca04: 74 07                                           je     0x41ca0d
  0041ca06: c6 85 18 ff ff ff 07                            mov    BYTE PTR [ebp-0xe8],0x7
  0041ca0d: 8d 8d ec fe ff ff                               lea    ecx,[ebp-0x114]
  0041ca13: 51                                              push   ecx
  0041ca14: 89 bd 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edi
  0041ca1a: c7 85 e4 fe ff ff 8c e5 4d 00                   mov    DWORD PTR [ebp-0x11c],0x4de58c
  0041ca24: ff d3                                           call   ebx
  0041ca26: 8b 95 4c ff ff ff                               mov    edx,DWORD PTR [ebp-0xb4]
  0041ca2c: 8b c2                                           mov    eax,edx
  0041ca2e: 33 c9                                           xor    ecx,ecx
  0041ca30: 89 b5 28 ff ff ff                               mov    DWORD PTR [ebp-0xd8],esi
  0041ca36: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0041ca3a: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041ca40: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  0041ca46: c6 85 5c ff ff ff 08                            mov    BYTE PTR [ebp-0xa4],0x8
  0041ca4d: be 01 00 00 00                                  mov    esi,0x1
  0041ca52: 3b cf                                           cmp    ecx,edi
  0041ca54: 74 0a                                           je     0x41ca60
  0041ca56: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041ca58: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041ca5e: eb 08                                           jmp    0x41ca68
  0041ca60: 8b ce                                           mov    ecx,esi
  0041ca62: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  0041ca68: 3b c7                                           cmp    eax,edi
  0041ca6a: 0f 84 f3 00 00 00                               je     0x41cb63
  0041ca70: ff 8d 60 ff ff ff                               dec    DWORD PTR [ebp-0xa0]
  0041ca76: 8b 8d 50 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xb0]
  0041ca7c: 3b c1                                           cmp    eax,ecx
  0041ca7e: 89 85 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],eax
  0041ca84: 74 4c                                           je     0x41cad2
  0041ca86: 3b c2                                           cmp    eax,edx
  0041ca88: 74 74                                           je     0x41cafe
  0041ca8a: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041ca8c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041ca8f: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0041ca92: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041ca98: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041ca9b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041ca9d: 89 11                                           mov    DWORD PTR [ecx],edx
  0041ca9f: 8b 85 68 ff ff ff                               mov    eax,DWORD PTR [ebp-0x98]
  0041caa5: 3b c6                                           cmp    eax,esi
  0041caa7: 75 14                                           jne    0x41cabd
  0041caa9: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041caaf: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041cab2: 89 8d 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],ecx
  0041cab8: e9 80 00 00 00                                  jmp    0x41cb3d
  0041cabd: 83 f8 02                                        cmp    eax,0x2
  0041cac0: 75 7b                                           jne    0x41cb3d
  0041cac2: 8b 95 48 ff ff ff                               mov    edx,DWORD PTR [ebp-0xb8]
  0041cac8: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041caca: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041cad0: eb 6b                                           jmp    0x41cb3d
  0041cad2: 3b c2                                           cmp    eax,edx
  0041cad4: 74 28                                           je     0x41cafe
  0041cad6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041cad9: 89 39                                           mov    DWORD PTR [ecx],edi
  0041cadb: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041cae1: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041cae4: 89 95 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],edx
  0041caea: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041caed: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041caf3: 83 bd 68 ff ff ff 02                            cmp    DWORD PTR [ebp-0x98],0x2
  0041cafa: 75 41                                           jne    0x41cb3d
  0041cafc: eb 39                                           jmp    0x41cb37
  0041cafe: 3b c1                                           cmp    eax,ecx
  0041cb00: 74 23                                           je     0x41cb25
  0041cb02: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041cb04: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0041cb07: 8b 95 48 ff ff ff                               mov    edx,DWORD PTR [ebp-0xb8]
  0041cb0d: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041cb0f: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041cb15: 89 85 4c ff ff ff                               mov    DWORD PTR [ebp-0xb4],eax
  0041cb1b: 39 b5 68 ff ff ff                               cmp    DWORD PTR [ebp-0x98],esi
  0041cb21: 75 1a                                           jne    0x41cb3d
  0041cb23: eb 12                                           jmp    0x41cb37
  0041cb25: 89 bd 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],edi
  0041cb2b: 89 bd 4c ff ff ff                               mov    DWORD PTR [ebp-0xb4],edi
  0041cb31: 89 bd 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],edi
  0041cb37: 89 bd 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edi
  0041cb3d: 8b 85 54 ff ff ff                               mov    eax,DWORD PTR [ebp-0xac]
  0041cb43: 50                                              push   eax
  0041cb44: e8 17 55 02 00                                  call   0x442060
  0041cb49: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041cb4f: 8b 95 4c ff ff ff                               mov    edx,DWORD PTR [ebp-0xb4]
  0041cb55: 8b 8d 68 ff ff ff                               mov    ecx,DWORD PTR [ebp-0x98]
  0041cb5b: 83 c4 04                                        add    esp,0x4
  0041cb5e: e9 ef fe ff ff                                  jmp    0x41ca52
  0041cb63: 3b cf                                           cmp    ecx,edi
  0041cb65: 74 07                                           je     0x41cb6e
  0041cb67: c6 85 5c ff ff ff 07                            mov    BYTE PTR [ebp-0xa4],0x7
  0041cb6e: 8d 8d 30 ff ff ff                               lea    ecx,[ebp-0xd0]
  0041cb74: 51                                              push   ecx
  0041cb75: 89 bd 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edi
  0041cb7b: c7 85 28 ff ff ff 8c e5 4d 00                   mov    DWORD PTR [ebp-0xd8],0x4de58c
  0041cb85: ff d3                                           call   ebx
  0041cb87: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041cb8a: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  0041cb8e: e8 ad 4e 0b 00                                  call   0x4d1a40
  0041cb93: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041cb96: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041cb9d: e8 9e 4e 0b 00                                  call   0x4d1a40
  0041cba2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041cba5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041cbac: 5f                                              pop    edi
  0041cbad: 5e                                              pop    esi
  0041cbae: 5b                                              pop    ebx
  0041cbaf: 8b e5                                           mov    esp,ebp
  0041cbb1: 5d                                              pop    ebp
  0041cbb2: c2 08 00                                        ret    0x8
  0041cbb5: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041cbb7: 6a 01                                           push   0x1
  0041cbb9: 53                                              push   ebx
  0041cbba: 8b ce                                           mov    ecx,esi
  0041cbbc: ff 92 dc 00 00 00                               call   DWORD PTR [edx+0xdc]
  0041cbc2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041cbc5: 5f                                              pop    edi
  0041cbc6: 5e                                              pop    esi
  0041cbc7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041cbce: 5b                                              pop    ebx
  0041cbcf: 8b e5                                           mov    esp,ebp
  0041cbd1: 5d                                              pop    ebp
  0041cbd2: c2 08 00                                        ret    0x8
  00422840: 55                                              push   ebp
  00422841: 8b ec                                           mov    ebp,esp
  00422843: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00422846: 39 81 1c 04 00 00                               cmp    DWORD PTR [ecx+0x41c],eax
  0042284c: 75 0a                                           jne    0x422858
  0042284e: c7 81 1c 04 00 00 00 00 00 00                   mov    DWORD PTR [ecx+0x41c],0x0
  00422858: 50                                              push   eax
  00422859: e8 02 d4 06 00                                  call   0x48fc60
  0042285e: 5d                                              pop    ebp
  0042285f: c2 04 00                                        ret    0x4
  00422f60: 8d 41 50                                        lea    eax,[ecx+0x50]
  00422f63: c3                                              ret
  00433220: 33 c0                                           xor    eax,eax
  00433222: 33 d2                                           xor    edx,edx
  00433224: c3                                              ret
  0043b1b0: 55                                              push   ebp
  0043b1b1: 8b ec                                           mov    ebp,esp
  0043b1b3: 6a ff                                           push   0xffffffff
  0043b1b5: 68 a0 58 4d 00                                  push   0x4d58a0
  0043b1ba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043b1c0: 50                                              push   eax
  0043b1c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043b1c8: 83 ec 1c                                        sub    esp,0x1c
  0043b1cb: 56                                              push   esi
  0043b1cc: 57                                              push   edi
  0043b1cd: 8b f9                                           mov    edi,ecx
  0043b1cf: 8b 07                                           mov    eax,DWORD PTR [edi]
  0043b1d1: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0043b1d4: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0043b1d7: 8a 4d 08                                        mov    cl,BYTE PTR [ebp+0x8]
  0043b1da: 88 4f 3c                                        mov    BYTE PTR [edi+0x3c],cl
  0043b1dd: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  0043b1e0: 8b 30                                           mov    esi,DWORD PTR [eax]
  0043b1e2: 3b f0                                           cmp    esi,eax
  0043b1e4: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0043b1eb: 0f 84 80 00 00 00                               je     0x43b271
  0043b1f1: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0043b1f4: e8 f7 ab 04 00                                  call   0x485df0
  0043b1f9: 6a 58                                           push   0x58
  0043b1fb: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0043b1fe: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0043b202: e8 49 af 04 00                                  call   0x486150
  0043b207: 8a 57 3c                                        mov    dl,BYTE PTR [edi+0x3c]
  0043b20a: 84 d2                                           test   dl,dl
  0043b20c: 0f 95 c2                                        setne  dl
  0043b20f: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0043b212: 52                                              push   edx
  0043b213: e8 98 af 04 00                                  call   0x4861b0
  0043b218: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0043b21b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0043b21d: 8d 55 d8                                        lea    edx,[ebp-0x28]
  0043b220: 52                                              push   edx
  0043b221: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  0043b227: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0043b22a: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0043b22e: e8 4d ac 04 00                                  call   0x485e80
  0043b233: 8a 46 11                                        mov    al,BYTE PTR [esi+0x11]
  0043b236: 84 c0                                           test   al,al
  0043b238: 75 32                                           jne    0x43b26c
  0043b23a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043b23d: 8a 48 11                                        mov    cl,BYTE PTR [eax+0x11]
  0043b240: 84 c9                                           test   cl,cl
  0043b242: 75 0b                                           jne    0x43b24f
  0043b244: 50                                              push   eax
  0043b245: e8 b6 8f fc ff                                  call   0x404200
  0043b24a: 83 c4 04                                        add    esp,0x4
  0043b24d: eb 1b                                           jmp    0x43b26a
  0043b24f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043b252: 8a 48 11                                        mov    cl,BYTE PTR [eax+0x11]
  0043b255: 84 c9                                           test   cl,cl
  0043b257: 75 11                                           jne    0x43b26a
  0043b259: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  0043b25c: 75 0c                                           jne    0x43b26a
  0043b25e: 8b f0                                           mov    esi,eax
  0043b260: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043b263: 8a 48 11                                        mov    cl,BYTE PTR [eax+0x11]
  0043b266: 84 c9                                           test   cl,cl
  0043b268: 74 ef                                           je     0x43b259
  0043b26a: 8b f0                                           mov    esi,eax
  0043b26c: 3b 77 28                                        cmp    esi,DWORD PTR [edi+0x28]
  0043b26f: 75 80                                           jne    0x43b1f1
  0043b271: 8b 07                                           mov    eax,DWORD PTR [edi]
  0043b273: 8b cf                                           mov    ecx,edi
  0043b275: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043b27c: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0043b27f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043b282: 5f                                              pop    edi
  0043b283: 5e                                              pop    esi
  0043b284: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043b28b: 8b e5                                           mov    esp,ebp
  0043b28d: 5d                                              pop    ebp
  0043b28e: c2 04 00                                        ret    0x4
  0044ac00: c2 14 00                                        ret    0x14
  00454b00: 55                                              push   ebp
  00454b01: 8b ec                                           mov    ebp,esp
  00454b03: 6a ff                                           push   0xffffffff
  00454b05: 68 43 6f 4d 00                                  push   0x4d6f43
  00454b0a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00454b10: 50                                              push   eax
  00454b11: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00454b18: 81 ec 1c 04 00 00                               sub    esp,0x41c
  00454b1e: 53                                              push   ebx
  00454b1f: 56                                              push   esi
  00454b20: 8b d9                                           mov    ebx,ecx
  00454b22: 57                                              push   edi
  00454b23: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00454b26: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00454b29: e8 30 cf 07 00                                  call   0x4d1a5e
  00454b2e: 33 ff                                           xor    edi,edi
  00454b30: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00454b33: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00454b36: e8 23 cf 07 00                                  call   0x4d1a5e
  00454b3b: 6a 44                                           push   0x44
  00454b3d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454b41: e8 aa d4 fe ff                                  call   0x441ff0
  00454b46: 8b f0                                           mov    esi,eax
  00454b48: 83 c4 04                                        add    esp,0x4
  00454b4b: 3b f7                                           cmp    esi,edi
  00454b4d: 74 35                                           je     0x454b84
  00454b4f: 8d 46 08                                        lea    eax,[esi+0x8]
  00454b52: 50                                              push   eax
  00454b53: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00454b59: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00454b60: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00454b66: 89 7e 24                                        mov    DWORD PTR [esi+0x24],edi
  00454b69: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  00454b6c: 89 7e 2c                                        mov    DWORD PTR [esi+0x2c],edi
  00454b6f: 89 7e 30                                        mov    DWORD PTR [esi+0x30],edi
  00454b72: c7 06 88 e8 4d 00                               mov    DWORD PTR [esi],0x4de888
  00454b78: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00454b7b: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00454b7f: 89 7e 38                                        mov    DWORD PTR [esi+0x38],edi
  00454b82: eb 02                                           jmp    0x454b86
  00454b84: 33 f6                                           xor    esi,esi
  00454b86: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00454b89: 51                                              push   ecx
  00454b8a: 8b cb                                           mov    ecx,ebx
  00454b8c: e8 7f 22 00 00                                  call   0x456e10
  00454b91: 8b 10                                           mov    edx,DWORD PTR [eax]
  00454b93: 8b 5a f8                                        mov    ebx,DWORD PTR [edx-0x8]
  00454b96: 33 c9                                           xor    ecx,ecx
  00454b98: 85 db                                           test   ebx,ebx
  00454b9a: 7e 1f                                           jle    0x454bbb
  00454b9c: 8b 10                                           mov    edx,DWORD PTR [eax]
  00454b9e: 8a 14 3a                                        mov    dl,BYTE PTR [edx+edi*1]
  00454ba1: 80 fa 27                                        cmp    dl,0x27
  00454ba4: 88 94 0d d8 fb ff ff                            mov    BYTE PTR [ebp+ecx*1-0x428],dl
  00454bab: 75 08                                           jne    0x454bb5
  00454bad: 41                                              inc    ecx
  00454bae: 88 94 0d d8 fb ff ff                            mov    BYTE PTR [ebp+ecx*1-0x428],dl
  00454bb5: 41                                              inc    ecx
  00454bb6: 47                                              inc    edi
  00454bb7: 3b fb                                           cmp    edi,ebx
  00454bb9: 7c e1                                           jl     0x454b9c
  00454bbb: c6 84 0d d8 fb ff ff 00                         mov    BYTE PTR [ebp+ecx*1-0x428],0x0
  00454bc3: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00454bc6: e8 75 ce 07 00                                  call   0x4d1a40
  00454bcb: 8d 85 d8 fb ff ff                               lea    eax,[ebp-0x428]
  00454bd1: 50                                              push   eax
  00454bd2: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00454bd5: 68 80 64 50 00                                  push   0x506480
  00454bda: 51                                              push   ecx
  00454bdb: e8 b4 ce 07 00                                  call   0x4d1a94
  00454be0: 6a 08                                           push   0x8
  00454be2: e8 09 d4 fe ff                                  call   0x441ff0
  00454be7: 8b f8                                           mov    edi,eax
  00454be9: 83 c4 10                                        add    esp,0x10
  00454bec: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00454bef: 33 db                                           xor    ebx,ebx
  00454bf1: 3b fb                                           cmp    edi,ebx
  00454bf3: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00454bf7: 74 0a                                           je     0x454c03
  00454bf9: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454bfc: e8 5d ce 07 00                                  call   0x4d1a5e
  00454c01: eb 02                                           jmp    0x454c05
  00454c03: 33 ff                                           xor    edi,edi
  00454c05: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00454c08: 52                                              push   edx
  00454c09: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454c0c: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454c10: e8 31 ce 07 00                                  call   0x4d1a46
  00454c15: 57                                              push   edi
  00454c16: 8b ce                                           mov    ecx,esi
  00454c18: e8 83 06 fd ff                                  call   0x4252a0
  00454c1d: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00454c20: e8 6b fe ff ff                                  call   0x454a90
  00454c25: 85 c0                                           test   eax,eax
  00454c27: 0f 84 a2 00 00 00                               je     0x454ccf
  00454c2d: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  00454c30: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  00454c33: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00454c36: e8 a5 fe ff ff                                  call   0x454ae0
  00454c3b: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  00454c3e: 8b f8                                           mov    edi,eax
  00454c40: 8b da                                           mov    ebx,edx
  00454c42: b8 01 00 00 00                                  mov    eax,0x1
  00454c47: 33 d2                                           xor    edx,edx
  00454c49: e8 52 d3 07 00                                  call   0x4d1fa0
  00454c4e: 23 f8                                           and    edi,eax
  00454c50: 23 da                                           and    ebx,edx
  00454c52: 0b fb                                           or     edi,ebx
  00454c54: 74 58                                           je     0x454cae
  00454c56: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00454c59: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  00454c5c: 50                                              push   eax
  00454c5d: 51                                              push   ecx
  00454c5e: 8d 95 d8 fb ff ff                               lea    edx,[ebp-0x428]
  00454c64: 52                                              push   edx
  00454c65: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00454c68: 68 38 64 50 00                                  push   0x506438
  00454c6d: 50                                              push   eax
  00454c6e: e8 21 ce 07 00                                  call   0x4d1a94
  00454c73: 6a 08                                           push   0x8
  00454c75: e8 76 d3 fe ff                                  call   0x441ff0
  00454c7a: 8b f8                                           mov    edi,eax
  00454c7c: 83 c4 18                                        add    esp,0x18
  00454c7f: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00454c82: 85 ff                                           test   edi,edi
  00454c84: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00454c88: 74 0a                                           je     0x454c94
  00454c8a: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454c8d: e8 cc cd 07 00                                  call   0x4d1a5e
  00454c92: eb 02                                           jmp    0x454c96
  00454c94: 33 ff                                           xor    edi,edi
  00454c96: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00454c99: 51                                              push   ecx
  00454c9a: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454c9d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454ca1: e8 a0 cd 07 00                                  call   0x4d1a46
  00454ca6: 57                                              push   edi
  00454ca7: 8b ce                                           mov    ecx,esi
  00454ca9: e8 f2 05 fd ff                                  call   0x4252a0
  00454cae: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  00454cb1: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00454cb4: 83 c1 01                                        add    ecx,0x1
  00454cb7: 83 d0 00                                        adc    eax,0x0
  00454cba: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  00454cbd: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  00454cc0: 75 0b                                           jne    0x454ccd
  00454cc2: 8b c1                                           mov    eax,ecx
  00454cc4: 83 f8 40                                        cmp    eax,0x40
  00454cc7: 0f 82 66 ff ff ff                               jb     0x454c33
  00454ccd: 33 db                                           xor    ebx,ebx
  00454ccf: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00454cd2: 39 5a 54                                        cmp    DWORD PTR [edx+0x54],ebx
  00454cd5: 75 50                                           jne    0x454d27
  00454cd7: 8d 85 d8 fb ff ff                               lea    eax,[ebp-0x428]
  00454cdd: 50                                              push   eax
  00454cde: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00454ce1: 68 f0 63 50 00                                  push   0x5063f0
  00454ce6: 51                                              push   ecx
  00454ce7: e8 a8 cd 07 00                                  call   0x4d1a94
  00454cec: 6a 08                                           push   0x8
  00454cee: e8 fd d2 fe ff                                  call   0x441ff0
  00454cf3: 8b f8                                           mov    edi,eax
  00454cf5: 83 c4 10                                        add    esp,0x10
  00454cf8: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00454cfb: 3b fb                                           cmp    edi,ebx
  00454cfd: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  00454d01: 74 0a                                           je     0x454d0d
  00454d03: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454d06: e8 53 cd 07 00                                  call   0x4d1a5e
  00454d0b: eb 02                                           jmp    0x454d0f
  00454d0d: 33 ff                                           xor    edi,edi
  00454d0f: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00454d12: 52                                              push   edx
  00454d13: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454d16: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454d1a: e8 27 cd 07 00                                  call   0x4d1a46
  00454d1f: 57                                              push   edi
  00454d20: 8b ce                                           mov    ecx,esi
  00454d22: e8 79 05 fd ff                                  call   0x4252a0
  00454d27: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00454d2a: 39 58 58                                        cmp    DWORD PTR [eax+0x58],ebx
  00454d2d: 75 50                                           jne    0x454d7f
  00454d2f: 8d 8d d8 fb ff ff                               lea    ecx,[ebp-0x428]
  00454d35: 51                                              push   ecx
  00454d36: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00454d39: 68 a8 63 50 00                                  push   0x5063a8
  00454d3e: 52                                              push   edx
  00454d3f: e8 50 cd 07 00                                  call   0x4d1a94
  00454d44: 6a 08                                           push   0x8
  00454d46: e8 a5 d2 fe ff                                  call   0x441ff0
  00454d4b: 8b f8                                           mov    edi,eax
  00454d4d: 83 c4 10                                        add    esp,0x10
  00454d50: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00454d53: 3b fb                                           cmp    edi,ebx
  00454d55: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  00454d59: 74 0a                                           je     0x454d65
  00454d5b: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454d5e: e8 fb cc 07 00                                  call   0x4d1a5e
  00454d63: eb 02                                           jmp    0x454d67
  00454d65: 33 ff                                           xor    edi,edi
  00454d67: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00454d6a: 50                                              push   eax
  00454d6b: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454d6e: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454d72: e8 cf cc 07 00                                  call   0x4d1a46
  00454d77: 57                                              push   edi
  00454d78: 8b ce                                           mov    ecx,esi
  00454d7a: e8 21 05 fd ff                                  call   0x4252a0
  00454d7f: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00454d82: 39 59 5c                                        cmp    DWORD PTR [ecx+0x5c],ebx
  00454d85: 74 50                                           je     0x454dd7
  00454d87: 8d 95 d8 fb ff ff                               lea    edx,[ebp-0x428]
  00454d8d: 52                                              push   edx
  00454d8e: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00454d91: 68 60 63 50 00                                  push   0x506360
  00454d96: 50                                              push   eax
  00454d97: e8 f8 cc 07 00                                  call   0x4d1a94
  00454d9c: 6a 08                                           push   0x8
  00454d9e: e8 4d d2 fe ff                                  call   0x441ff0
  00454da3: 8b f8                                           mov    edi,eax
  00454da5: 83 c4 10                                        add    esp,0x10
  00454da8: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00454dab: 3b fb                                           cmp    edi,ebx
  00454dad: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  00454db1: 74 0a                                           je     0x454dbd
  00454db3: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454db6: e8 a3 cc 07 00                                  call   0x4d1a5e
  00454dbb: eb 02                                           jmp    0x454dbf
  00454dbd: 33 ff                                           xor    edi,edi
  00454dbf: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00454dc2: 51                                              push   ecx
  00454dc3: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454dc6: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454dca: e8 77 cc 07 00                                  call   0x4d1a46
  00454dcf: 57                                              push   edi
  00454dd0: 8b ce                                           mov    ecx,esi
  00454dd2: e8 c9 04 fd ff                                  call   0x4252a0
  00454dd7: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00454dda: 39 5a 68                                        cmp    DWORD PTR [edx+0x68],ebx
  00454ddd: 0f 84 bb 00 00 00                               je     0x454e9e
  00454de3: 8d 85 d8 fb ff ff                               lea    eax,[ebp-0x428]
  00454de9: 50                                              push   eax
  00454dea: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00454ded: 68 18 63 50 00                                  push   0x506318
  00454df2: 51                                              push   ecx
  00454df3: e8 9c cc 07 00                                  call   0x4d1a94
  00454df8: 6a 08                                           push   0x8
  00454dfa: e8 f1 d1 fe ff                                  call   0x441ff0
  00454dff: 8b f8                                           mov    edi,eax
  00454e01: 83 c4 10                                        add    esp,0x10
  00454e04: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00454e07: 3b fb                                           cmp    edi,ebx
  00454e09: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  00454e0d: 74 0a                                           je     0x454e19
  00454e0f: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454e12: e8 47 cc 07 00                                  call   0x4d1a5e
  00454e17: eb 02                                           jmp    0x454e1b
  00454e19: 33 ff                                           xor    edi,edi
  00454e1b: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00454e1e: 52                                              push   edx
  00454e1f: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454e22: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454e26: e8 1b cc 07 00                                  call   0x4d1a46
  00454e2b: 8b ce                                           mov    ecx,esi
  00454e2d: e8 6e 41 00 00                                  call   0x458fa0
  00454e32: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00454e35: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00454e38: 42                                              inc    edx
  00454e39: 3b c3                                           cmp    eax,ebx
  00454e3b: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00454e3e: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00454e41: 6a 0c                                           push   0xc
  00454e43: 75 28                                           jne    0x454e6d
  00454e45: e8 a6 d1 fe ff                                  call   0x441ff0
  00454e4a: 83 c4 04                                        add    esp,0x4
  00454e4d: 3b c3                                           cmp    eax,ebx
  00454e4f: 74 07                                           je     0x454e58
  00454e51: 89 18                                           mov    DWORD PTR [eax],ebx
  00454e53: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00454e56: eb 02                                           jmp    0x454e5a
  00454e58: 33 c0                                           xor    eax,eax
  00454e5a: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00454e5d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454e60: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00454e63: 89 18                                           mov    DWORD PTR [eax],ebx
  00454e65: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00454e68: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00454e6b: eb 2b                                           jmp    0x454e98
  00454e6d: e8 7e d1 fe ff                                  call   0x441ff0
  00454e72: 83 c4 04                                        add    esp,0x4
  00454e75: 3b c3                                           cmp    eax,ebx
  00454e77: 74 07                                           je     0x454e80
  00454e79: 89 18                                           mov    DWORD PTR [eax],ebx
  00454e7b: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00454e7e: eb 02                                           jmp    0x454e82
  00454e80: 33 c0                                           xor    eax,eax
  00454e82: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00454e85: 89 01                                           mov    DWORD PTR [ecx],eax
  00454e87: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00454e8a: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00454e8d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454e90: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00454e93: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00454e96: 89 18                                           mov    DWORD PTR [eax],ebx
  00454e98: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00454e9b: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00454e9e: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00454ea1: 8a 42 79                                        mov    al,BYTE PTR [edx+0x79]
  00454ea4: 84 c0                                           test   al,al
  00454ea6: 0f 85 be 00 00 00                               jne    0x454f6a
  00454eac: 8d 85 d8 fb ff ff                               lea    eax,[ebp-0x428]
  00454eb2: 50                                              push   eax
  00454eb3: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00454eb6: 68 d0 62 50 00                                  push   0x5062d0
  00454ebb: 51                                              push   ecx
  00454ebc: e8 d3 cb 07 00                                  call   0x4d1a94
  00454ec1: 6a 08                                           push   0x8
  00454ec3: e8 28 d1 fe ff                                  call   0x441ff0
  00454ec8: 8b f8                                           mov    edi,eax
  00454eca: 83 c4 10                                        add    esp,0x10
  00454ecd: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00454ed0: 3b fb                                           cmp    edi,ebx
  00454ed2: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  00454ed6: 74 0a                                           je     0x454ee2
  00454ed8: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454edb: e8 7e cb 07 00                                  call   0x4d1a5e
  00454ee0: eb 02                                           jmp    0x454ee4
  00454ee2: 33 ff                                           xor    edi,edi
  00454ee4: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00454ee7: 52                                              push   edx
  00454ee8: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454eeb: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454eef: e8 52 cb 07 00                                  call   0x4d1a46
  00454ef4: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00454ef7: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00454efa: 42                                              inc    edx
  00454efb: 3b c3                                           cmp    eax,ebx
  00454efd: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454f00: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00454f03: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00454f07: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00454f0a: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00454f0d: 6a 0c                                           push   0xc
  00454f0f: 75 28                                           jne    0x454f39
  00454f11: e8 da d0 fe ff                                  call   0x441ff0
  00454f16: 83 c4 04                                        add    esp,0x4
  00454f19: 3b c3                                           cmp    eax,ebx
  00454f1b: 74 07                                           je     0x454f24
  00454f1d: 89 18                                           mov    DWORD PTR [eax],ebx
  00454f1f: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00454f22: eb 02                                           jmp    0x454f26
  00454f24: 33 c0                                           xor    eax,eax
  00454f26: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00454f29: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454f2c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00454f2f: 89 18                                           mov    DWORD PTR [eax],ebx
  00454f31: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00454f34: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00454f37: eb 2b                                           jmp    0x454f64
  00454f39: e8 b2 d0 fe ff                                  call   0x441ff0
  00454f3e: 83 c4 04                                        add    esp,0x4
  00454f41: 3b c3                                           cmp    eax,ebx
  00454f43: 74 07                                           je     0x454f4c
  00454f45: 89 18                                           mov    DWORD PTR [eax],ebx
  00454f47: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00454f4a: eb 02                                           jmp    0x454f4e
  00454f4c: 33 c0                                           xor    eax,eax
  00454f4e: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00454f51: 89 01                                           mov    DWORD PTR [ecx],eax
  00454f53: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00454f56: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00454f59: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454f5c: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00454f5f: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00454f62: 89 18                                           mov    DWORD PTR [eax],ebx
  00454f64: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00454f67: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00454f6a: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00454f6d: 39 5a 60                                        cmp    DWORD PTR [edx+0x60],ebx
  00454f70: 0f 85 be 00 00 00                               jne    0x455034
  00454f76: 8d 85 d8 fb ff ff                               lea    eax,[ebp-0x428]
  00454f7c: 50                                              push   eax
  00454f7d: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00454f80: 68 88 62 50 00                                  push   0x506288
  00454f85: 51                                              push   ecx
  00454f86: e8 09 cb 07 00                                  call   0x4d1a94
  00454f8b: 6a 08                                           push   0x8
  00454f8d: e8 5e d0 fe ff                                  call   0x441ff0
  00454f92: 8b f8                                           mov    edi,eax
  00454f94: 83 c4 10                                        add    esp,0x10
  00454f97: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00454f9a: 3b fb                                           cmp    edi,ebx
  00454f9c: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  00454fa0: 74 0a                                           je     0x454fac
  00454fa2: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454fa5: e8 b4 ca 07 00                                  call   0x4d1a5e
  00454faa: eb 02                                           jmp    0x454fae
  00454fac: 33 ff                                           xor    edi,edi
  00454fae: 8d 55 f0                                        lea    edx,[ebp-0x10]
  00454fb1: 52                                              push   edx
  00454fb2: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00454fb5: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00454fb9: e8 88 ca 07 00                                  call   0x4d1a46
  00454fbe: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00454fc1: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00454fc4: 42                                              inc    edx
  00454fc5: 3b c3                                           cmp    eax,ebx
  00454fc7: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454fca: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00454fcd: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00454fd1: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00454fd4: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00454fd7: 6a 0c                                           push   0xc
  00454fd9: 75 28                                           jne    0x455003
  00454fdb: e8 10 d0 fe ff                                  call   0x441ff0
  00454fe0: 83 c4 04                                        add    esp,0x4
  00454fe3: 3b c3                                           cmp    eax,ebx
  00454fe5: 74 07                                           je     0x454fee
  00454fe7: 89 18                                           mov    DWORD PTR [eax],ebx
  00454fe9: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00454fec: eb 02                                           jmp    0x454ff0
  00454fee: 33 c0                                           xor    eax,eax
  00454ff0: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00454ff3: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454ff6: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00454ff9: 89 18                                           mov    DWORD PTR [eax],ebx
  00454ffb: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00454ffe: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00455001: eb 2b                                           jmp    0x45502e
  00455003: e8 e8 cf fe ff                                  call   0x441ff0
  00455008: 83 c4 04                                        add    esp,0x4
  0045500b: 3b c3                                           cmp    eax,ebx
  0045500d: 74 07                                           je     0x455016
  0045500f: 89 18                                           mov    DWORD PTR [eax],ebx
  00455011: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00455014: eb 02                                           jmp    0x455018
  00455016: 33 c0                                           xor    eax,eax
  00455018: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0045501b: 89 01                                           mov    DWORD PTR [ecx],eax
  0045501d: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00455020: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00455023: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00455026: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00455029: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0045502c: 89 18                                           mov    DWORD PTR [eax],ebx
  0045502e: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00455031: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00455034: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00455037: 8a 42 7a                                        mov    al,BYTE PTR [edx+0x7a]
  0045503a: 84 c0                                           test   al,al
  0045503c: 0f 84 be 00 00 00                               je     0x455100
  00455042: 8d 85 d8 fb ff ff                               lea    eax,[ebp-0x428]
  00455048: 50                                              push   eax
  00455049: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0045504c: 68 40 62 50 00                                  push   0x506240
  00455051: 51                                              push   ecx
  00455052: e8 3d ca 07 00                                  call   0x4d1a94
  00455057: 6a 08                                           push   0x8
  00455059: e8 92 cf fe ff                                  call   0x441ff0
  0045505e: 8b f8                                           mov    edi,eax
  00455060: 83 c4 10                                        add    esp,0x10
  00455063: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00455066: 3b fb                                           cmp    edi,ebx
  00455068: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  0045506c: 74 0a                                           je     0x455078
  0045506e: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00455071: e8 e8 c9 07 00                                  call   0x4d1a5e
  00455076: eb 02                                           jmp    0x45507a
  00455078: 33 ff                                           xor    edi,edi
  0045507a: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0045507d: 52                                              push   edx
  0045507e: 8d 4f 04                                        lea    ecx,[edi+0x4]
  00455081: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00455085: e8 bc c9 07 00                                  call   0x4d1a46
  0045508a: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  0045508d: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  00455090: 42                                              inc    edx
  00455091: 3b c3                                           cmp    eax,ebx
  00455093: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00455096: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00455099: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0045509d: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004550a0: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  004550a3: 6a 0c                                           push   0xc
  004550a5: 75 28                                           jne    0x4550cf
  004550a7: e8 44 cf fe ff                                  call   0x441ff0
  004550ac: 83 c4 04                                        add    esp,0x4
  004550af: 3b c3                                           cmp    eax,ebx
  004550b1: 74 07                                           je     0x4550ba
  004550b3: 89 18                                           mov    DWORD PTR [eax],ebx
  004550b5: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004550b8: eb 02                                           jmp    0x4550bc
  004550ba: 33 c0                                           xor    eax,eax
  004550bc: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004550bf: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004550c2: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004550c5: 89 18                                           mov    DWORD PTR [eax],ebx
  004550c7: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004550ca: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004550cd: eb 2b                                           jmp    0x4550fa
  004550cf: e8 1c cf fe ff                                  call   0x441ff0
  004550d4: 83 c4 04                                        add    esp,0x4
  004550d7: 3b c3                                           cmp    eax,ebx
  004550d9: 74 07                                           je     0x4550e2
  004550db: 89 18                                           mov    DWORD PTR [eax],ebx
  004550dd: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004550e0: eb 02                                           jmp    0x4550e4
  004550e2: 33 c0                                           xor    eax,eax
  004550e4: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004550e7: 89 01                                           mov    DWORD PTR [ecx],eax
  004550e9: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004550ec: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004550ef: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004550f2: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004550f5: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004550f8: 89 18                                           mov    DWORD PTR [eax],ebx
  004550fa: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004550fd: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00455100: 68 34 62 50 00                                  push   0x506234
  00455105: 53                                              push   ebx
  00455106: 53                                              push   ebx
  00455107: 56                                              push   esi
  00455108: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  0045510d: e8 de a0 ff ff                                  call   0x44f1f0
  00455112: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00455115: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00455119: e8 22 c9 07 00                                  call   0x4d1a40
  0045511e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00455121: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00455128: e8 13 c9 07 00                                  call   0x4d1a40
  0045512d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00455130: 5f                                              pop    edi
  00455131: 5e                                              pop    esi
  00455132: b8 01 00 00 00                                  mov    eax,0x1
  00455137: 5b                                              pop    ebx
  00455138: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045513f: 8b e5                                           mov    esp,ebp
  00455141: 5d                                              pop    ebp
  00455142: c2 04 00                                        ret    0x4
  00457130: 8b 81 9c 00 00 00                               mov    eax,DWORD PTR [ecx+0x9c]
  00457136: c3                                              ret
  004579a0: 55                                              push   ebp
  004579a1: 8b ec                                           mov    ebp,esp
  004579a3: 6a ff                                           push   0xffffffff
  004579a5: 68 48 73 4d 00                                  push   0x4d7348
  004579aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004579b0: 50                                              push   eax
  004579b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004579b8: 83 ec 20                                        sub    esp,0x20
  004579bb: 56                                              push   esi
  004579bc: 8b f1                                           mov    esi,ecx
  004579be: 8a 86 8c 00 00 00                               mov    al,BYTE PTR [esi+0x8c]
  004579c4: 84 c0                                           test   al,al
  004579c6: 0f 85 b8 00 00 00                               jne    0x457a84
  004579cc: e8 bf a8 01 00                                  call   0x472290
  004579d1: 39 46 70                                        cmp    DWORD PTR [esi+0x70],eax
  004579d4: 76 0e                                           jbe    0x4579e4
  004579d6: e8 b5 a8 01 00                                  call   0x472290
  004579db: 39 46 38                                        cmp    DWORD PTR [esi+0x38],eax
  004579de: 0f 83 eb 00 00 00                               jae    0x457acf
  004579e4: e8 a7 a8 01 00                                  call   0x472290
  004579e9: 8b 0d 38 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e38
  004579ef: 03 41 48                                        add    eax,DWORD PTR [ecx+0x48]
  004579f2: 8a 56 6c                                        mov    dl,BYTE PTR [esi+0x6c]
  004579f5: fe c2                                           inc    dl
  004579f7: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004579fa: 88 56 6c                                        mov    BYTE PTR [esi+0x6c],dl
  004579fd: 8a c2                                           mov    al,dl
  004579ff: 8b 15 38 5e 51 00                               mov    edx,DWORD PTR ds:0x515e38
  00457a05: 3a 42 4c                                        cmp    al,BYTE PTR [edx+0x4c]
  00457a08: 76 33                                           jbe    0x457a3d
  00457a0a: 8d 45 f0                                        lea    eax,[ebp-0x10]
  00457a0d: 50                                              push   eax
  00457a0e: 8b ce                                           mov    ecx,esi
  00457a10: e8 4b 12 00 00                                  call   0x458c60
  00457a15: 8b 00                                           mov    eax,DWORD PTR [eax]
  00457a17: 50                                              push   eax
  00457a18: 68 14 69 50 00                                  push   0x506914
  00457a1d: 68 00 08 00 00                                  push   0x800
  00457a22: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00457a29: e8 12 a3 01 00                                  call   0x471d40
  00457a2e: 83 c4 0c                                        add    esp,0xc
  00457a31: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00457a38: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00457a3b: eb 3b                                           jmp    0x457a78
  00457a3d: e8 4e a8 01 00                                  call   0x472290
  00457a42: 39 46 38                                        cmp    DWORD PTR [esi+0x38],eax
  00457a45: 73 51                                           jae    0x457a98
  00457a47: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00457a4a: 51                                              push   ecx
  00457a4b: 8b ce                                           mov    ecx,esi
  00457a4d: e8 0e 12 00 00                                  call   0x458c60
  00457a52: 8b 00                                           mov    eax,DWORD PTR [eax]
  00457a54: 50                                              push   eax
  00457a55: 68 e4 68 50 00                                  push   0x5068e4
  00457a5a: 68 00 08 00 00                                  push   0x800
  00457a5f: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00457a66: e8 d5 a2 01 00                                  call   0x471d40
  00457a6b: 83 c4 0c                                        add    esp,0xc
  00457a6e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00457a75: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00457a78: e8 c3 9f 07 00                                  call   0x4d1a40
  00457a7d: c6 86 8c 00 00 00 01                            mov    BYTE PTR [esi+0x8c],0x1
  00457a84: b8 01 00 00 00                                  mov    eax,0x1
  00457a89: 5e                                              pop    esi
  00457a8a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00457a8d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00457a94: 8b e5                                           mov    esp,ebp
  00457a96: 5d                                              pop    ebp
  00457a97: c3                                              ret
  00457a98: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00457a9b: e8 50 e3 02 00                                  call   0x485df0
  00457aa0: 6a 0a                                           push   0xa
  00457aa2: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00457aa5: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00457aac: e8 9f e6 02 00                                  call   0x486150
  00457ab1: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00457ab4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00457ab6: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  00457ab9: 50                                              push   eax
  00457aba: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  00457ac0: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00457ac3: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00457aca: e8 b1 e3 02 00                                  call   0x485e80
  00457acf: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00457ad2: 33 c0                                           xor    eax,eax
  00457ad4: 5e                                              pop    esi
  00457ad5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00457adc: 8b e5                                           mov    esp,ebp
  00457ade: 5d                                              pop    ebp
  00457adf: c3                                              ret
  0045a730: c2 18 00                                        ret    0x18
  004722a0: 55                                              push   ebp
  004722a1: 8b ec                                           mov    ebp,esp
  004722a3: 6a ff                                           push   0xffffffff
  004722a5: 68 b0 8c 4d 00                                  push   0x4d8cb0
  004722aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004722b0: 50                                              push   eax
  004722b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004722b8: 81 ec 98 08 00 00                               sub    esp,0x898
  004722be: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004722c1: 53                                              push   ebx
  004722c2: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004722c5: 56                                              push   esi
  004722c6: 57                                              push   edi
  004722c7: 33 ff                                           xor    edi,edi
  004722c9: 3b df                                           cmp    ebx,edi
  004722cb: 89 7d c4                                        mov    DWORD PTR [ebp-0x3c],edi
  004722ce: c6 00 00                                        mov    BYTE PTR [eax],0x0
  004722d1: 74 08                                           je     0x4722db
  004722d3: 8d 4b 30                                        lea    ecx,[ebx+0x30]
  004722d6: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004722d9: eb 03                                           jmp    0x4722de
  004722db: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  004722de: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004722e1: 3b f7                                           cmp    esi,edi
  004722e3: 74 03                                           je     0x4722e8
  004722e5: 8d 7e 30                                        lea    edi,[esi+0x30]
  004722e8: 8b 17                                           mov    edx,DWORD PTR [edi]
  004722ea: 8b cf                                           mov    ecx,edi
  004722ec: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004722ef: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004722f2: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004722f4: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  004722f7: 85 c0                                           test   eax,eax
  004722f9: 75 22                                           jne    0x47231d
  004722fb: 8b 17                                           mov    edx,DWORD PTR [edi]
  004722fd: 8b cf                                           mov    ecx,edi
  004722ff: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00472302: 6a 00                                           push   0x0
  00472304: ff 15 20 e1 4d 00                               call   DWORD PTR ds:0x4de120
  0047230a: 8b 07                                           mov    eax,DWORD PTR [edi]
  0047230c: 8b cf                                           mov    ecx,edi
  0047230e: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00472311: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00472314: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00472316: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00472319: 85 c0                                           test   eax,eax
  0047231b: 74 de                                           je     0x4722fb
  0047231d: 8b 06                                           mov    eax,DWORD PTR [esi]
  0047231f: 8d 4d b0                                        lea    ecx,[ebp-0x50]
  00472322: 51                                              push   ecx
  00472323: 8b ce                                           mov    ecx,esi
  00472325: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  00472328: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0047232a: 8d 45 c8                                        lea    eax,[ebp-0x38]
  0047232d: 50                                              push   eax
  0047232e: 8b cb                                           mov    ecx,ebx
  00472330: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00472333: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  00472336: 51                                              push   ecx
  00472337: e8 84 fb ff ff                                  call   0x471ec0
  0047233c: 83 c4 04                                        add    esp,0x4
  0047233f: 8b f8                                           mov    edi,eax
  00472341: 33 c0                                           xor    eax,eax
  00472343: 6a 01                                           push   0x1
  00472345: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00472348: 89 45 a8                                        mov    DWORD PTR [ebp-0x58],eax
  0047234b: 89 45 ac                                        mov    DWORD PTR [ebp-0x54],eax
  0047234e: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00472351: 6a 01                                           push   0x1
  00472353: 8d 55 08                                        lea    edx,[ebp+0x8]
  00472356: 52                                              push   edx
  00472357: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  0047235a: 8d 45 a4                                        lea    eax,[ebp-0x5c]
  0047235d: 50                                              push   eax
  0047235e: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  00472361: 83 ec 0c                                        sub    esp,0xc
  00472364: 8b cc                                           mov    ecx,esp
  00472366: 89 11                                           mov    DWORD PTR [ecx],edx
  00472368: 8b 55 d0                                        mov    edx,DWORD PTR [ebp-0x30]
  0047236b: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  0047236e: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00472371: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  00472374: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  00472377: 83 ec 0c                                        sub    esp,0xc
  0047237a: 8b c4                                           mov    eax,esp
  0047237c: 89 08                                           mov    DWORD PTR [eax],ecx
  0047237e: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  00472381: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00472384: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00472387: 8b cf                                           mov    ecx,edi
  00472389: c7 45 0c 01 00 00 00                            mov    DWORD PTR [ebp+0xc],0x1
  00472390: e8 6b 03 04 00                                  call   0x4b2700
  00472395: 85 c0                                           test   eax,eax
  00472397: 74 43                                           je     0x4723dc
  00472399: 39 5d 08                                        cmp    DWORD PTR [ebp+0x8],ebx
  0047239c: 74 3e                                           je     0x4723dc
  0047239e: 8b 55 a4                                        mov    edx,DWORD PTR [ebp-0x5c]
  004723a1: 3b 55 c8                                        cmp    edx,DWORD PTR [ebp-0x38]
  004723a4: 75 08                                           jne    0x4723ae
  004723a6: 8b 45 a8                                        mov    eax,DWORD PTR [ebp-0x58]
  004723a9: 3b 45 cc                                        cmp    eax,DWORD PTR [ebp-0x34]
  004723ac: 74 2e                                           je     0x4723dc
  004723ae: 8b ce                                           mov    ecx,esi
  004723b0: e8 bb 92 01 00                                  call   0x48b670
  004723b5: 3c 02                                           cmp    al,0x2
  004723b7: 75 18                                           jne    0x4723d1
  004723b9: 8b 16                                           mov    edx,DWORD PTR [esi]
  004723bb: 6a 00                                           push   0x0
  004723bd: 8b ce                                           mov    ecx,esi
  004723bf: ff 92 ac 00 00 00                               call   DWORD PTR [edx+0xac]
  004723c5: 8b 06                                           mov    eax,DWORD PTR [esi]
  004723c7: 6a 03                                           push   0x3
  004723c9: 8b ce                                           mov    ecx,esi
  004723cb: ff 90 80 00 00 00                               call   DWORD PTR [eax+0x80]
  004723d1: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004723d4: c6 01 01                                        mov    BYTE PTR [ecx],0x1
  004723d7: e9 49 07 00 00                                  jmp    0x472b25
  004723dc: 3b de                                           cmp    ebx,esi
  004723de: 0f 84 23 07 00 00                               je     0x472b07
  004723e4: 8b cb                                           mov    ecx,ebx
  004723e6: e8 85 92 01 00                                  call   0x48b670
  004723eb: 3c 03                                           cmp    al,0x3
  004723ed: 0f 84 14 07 00 00                               je     0x472b07
  004723f3: 8b cb                                           mov    ecx,ebx
  004723f5: e8 76 92 01 00                                  call   0x48b670
  004723fa: 3c 04                                           cmp    al,0x4
  004723fc: 0f 84 05 07 00 00                               je     0x472b07
  00472402: 85 ff                                           test   edi,edi
  00472404: 0f 84 e9 00 00 00                               je     0x4724f3
  0047240a: 8b ce                                           mov    ecx,esi
  0047240c: e8 7f d0 01 00                                  call   0x48f490
  00472411: 3c 06                                           cmp    al,0x6
  00472413: 74 25                                           je     0x47243a
  00472415: 8b ce                                           mov    ecx,esi
  00472417: e8 74 d0 01 00                                  call   0x48f490
  0047241c: 3c 07                                           cmp    al,0x7
  0047241e: 74 1a                                           je     0x47243a
  00472420: 8b cb                                           mov    ecx,ebx
  00472422: e8 69 d0 01 00                                  call   0x48f490
  00472427: 3c 06                                           cmp    al,0x6
  00472429: 74 0f                                           je     0x47243a
  0047242b: 8b cb                                           mov    ecx,ebx
  0047242d: e8 5e d0 01 00                                  call   0x48f490
  00472432: 3c 07                                           cmp    al,0x7
  00472434: 0f 85 b9 00 00 00                               jne    0x4724f3
  0047243a: 8b ce                                           mov    ecx,esi
  0047243c: e8 2f 92 01 00                                  call   0x48b670
  00472441: 3c 01                                           cmp    al,0x1
  00472443: 0f 85 aa 00 00 00                               jne    0x4724f3
  00472449: 8b cb                                           mov    ecx,ebx
  0047244b: e8 20 92 01 00                                  call   0x48b670
  00472450: 3c 01                                           cmp    al,0x1
  00472452: 0f 85 9b 00 00 00                               jne    0x4724f3
  00472458: 8b ce                                           mov    ecx,esi
  0047245a: e8 11 92 01 00                                  call   0x48b670
  0047245f: 3c 01                                           cmp    al,0x1
  00472461: 75 07                                           jne    0x47246a
  00472463: 8b ce                                           mov    ecx,esi
  00472465: e8 d6 d9 fa ff                                  call   0x41fe40
  0047246a: 8d 4d 80                                        lea    ecx,[ebp-0x80]
  0047246d: e8 7e 39 01 00                                  call   0x485df0
  00472472: 33 ff                                           xor    edi,edi
  00472474: 6a 3f                                           push   0x3f
  00472476: 8d 4d 80                                        lea    ecx,[ebp-0x80]
  00472479: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0047247c: e8 cf 3c 01 00                                  call   0x486150
  00472481: 6a 1e                                           push   0x1e
  00472483: 8d 4d 80                                        lea    ecx,[ebp-0x80]
  00472486: e8 c5 3c 01 00                                  call   0x486150
  0047248b: 6a 03                                           push   0x3
  0047248d: 8d 4d 80                                        lea    ecx,[ebp-0x80]
  00472490: e8 bb 3c 01 00                                  call   0x486150
  00472495: 8b 16                                           mov    edx,DWORD PTR [esi]
  00472497: 68 58 13 51 00                                  push   0x511358
  0047249c: 8b ce                                           mov    ecx,esi
  0047249e: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004724a4: 50                                              push   eax
  004724a5: 6a 16                                           push   0x16
  004724a7: e8 44 b5 fc ff                                  call   0x43d9f0
  004724ac: 83 c4 0c                                        add    esp,0xc
  004724af: 50                                              push   eax
  004724b0: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004724b3: e8 ac f5 05 00                                  call   0x4d1a64
  004724b8: 8d 45 10                                        lea    eax,[ebp+0x10]
  004724bb: 50                                              push   eax
  004724bc: 8d 4d 80                                        lea    ecx,[ebp-0x80]
  004724bf: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004724c3: e8 88 3e 01 00                                  call   0x486350
  004724c8: 8b 16                                           mov    edx,DWORD PTR [esi]
  004724ca: 8d 45 80                                        lea    eax,[ebp-0x80]
  004724cd: 50                                              push   eax
  004724ce: 8b ce                                           mov    ecx,esi
  004724d0: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  004724d6: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004724d9: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004724dd: e8 5e f5 05 00                                  call   0x4d1a40
  004724e2: 8d 4d 80                                        lea    ecx,[ebp-0x80]
  004724e5: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004724ec: e8 8f 39 01 00                                  call   0x485e80
  004724f1: eb 03                                           jmp    0x4724f6
  004724f3: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004724f6: 8b 16                                           mov    edx,DWORD PTR [esi]
  004724f8: 6a 00                                           push   0x0
  004724fa: 68 31 4e 00 00                                  push   0x4e31
  004724ff: 8b ce                                           mov    ecx,esi
  00472501: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00472504: 85 c0                                           test   eax,eax
  00472506: 0f 85 19 06 00 00                               jne    0x472b25
  0047250c: 85 ff                                           test   edi,edi
  0047250e: 0f 84 11 06 00 00                               je     0x472b25
  00472514: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  00472517: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0047251a: 2b c2                                           sub    eax,edx
  0047251c: 99                                              cdq
  0047251d: 33 c2                                           xor    eax,edx
  0047251f: 2b c2                                           sub    eax,edx
  00472521: 83 f8 03                                        cmp    eax,0x3
  00472524: 0f 8f fb 05 00 00                               jg     0x472b25
  0047252a: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  0047252d: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  00472530: 2b c2                                           sub    eax,edx
  00472532: 99                                              cdq
  00472533: 33 c2                                           xor    eax,edx
  00472535: 2b c2                                           sub    eax,edx
  00472537: 83 f8 03                                        cmp    eax,0x3
  0047253a: 0f 8f e5 05 00 00                               jg     0x472b25
  00472540: 33 c0                                           xor    eax,eax
  00472542: b9 08 00 00 00                                  mov    ecx,0x8
  00472547: 8d 7d d4                                        lea    edi,[ebp-0x2c]
  0047254a: f3 ab                                           rep stos DWORD PTR es:[edi],eax
  0047254c: 8b cb                                           mov    ecx,ebx
  0047254e: e8 bd bc 01 00                                  call   0x48e210
  00472553: 25 ff ff 00 00                                  and    eax,0xffff
  00472558: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0047255b: 7f 08                                           jg     0x472565
  0047255d: b8 01 00 00 00                                  mov    eax,0x1
  00472562: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00472565: 53                                              push   ebx
  00472566: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00472569: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0047256c: 8b 06                                           mov    eax,DWORD PTR [esi]
  0047256e: 51                                              push   ecx
  0047256f: 8b ce                                           mov    ecx,esi
  00472571: ff 50 34                                        call   DWORD PTR [eax+0x34]
  00472574: dd 45 d4                                        fld    QWORD PTR [ebp-0x2c]
  00472577: dd 55 dc                                        fst    QWORD PTR [ebp-0x24]
  0047257a: 8b ce                                           mov    ecx,esi
  0047257c: dd 5d c0                                        fstp   QWORD PTR [ebp-0x40]
  0047257f: e8 6c bc 01 00                                  call   0x48e1f0
  00472584: 33 ff                                           xor    edi,edi
  00472586: 66 8b f8                                        mov    di,ax
  00472589: 81 e7 ff ff 00 00                               and    edi,0xffff
  0047258f: 77 05                                           ja     0x472596
  00472591: bf 01 00 00 00                                  mov    edi,0x1
  00472596: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00472599: 85 c0                                           test   eax,eax
  0047259b: 75 03                                           jne    0x4725a0
  0047259d: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004725a0: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  004725a3: 85 c0                                           test   eax,eax
  004725a5: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004725ac: 75 2a                                           jne    0x4725d8
  004725ae: 8b cb                                           mov    ecx,ebx
  004725b0: e8 fb bb 01 00                                  call   0x48e1b0
  004725b5: 8b ce                                           mov    ecx,esi
  004725b7: 25 ff ff 00 00                                  and    eax,0xffff
  004725bc: 50                                              push   eax
  004725bd: e8 ee bb 01 00                                  call   0x48e1b0
  004725c2: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004725c5: 25 ff ff 00 00                                  and    eax,0xffff
  004725ca: 50                                              push   eax
  004725cb: 52                                              push   edx
  004725cc: 57                                              push   edi
  004725cd: e8 4e 60 fc ff                                  call   0x438620
  004725d2: 83 c4 10                                        add    esp,0x10
  004725d5: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004725d8: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004725da: 8b cb                                           mov    ecx,ebx
  004725dc: ff 90 84 01 00 00                               call   DWORD PTR [eax+0x184]
  004725e2: 85 c0                                           test   eax,eax
  004725e4: 74 22                                           je     0x472608
  004725e6: 8b cb                                           mov    ecx,ebx
  004725e8: e8 83 90 01 00                                  call   0x48b670
  004725ed: 3c 02                                           cmp    al,0x2
  004725ef: 75 17                                           jne    0x472608
  004725f1: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004725f3: 6a 01                                           push   0x1
  004725f5: 8b cb                                           mov    ecx,ebx
  004725f7: ff 92 80 00 00 00                               call   DWORD PTR [edx+0x80]
  004725fd: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004725ff: 56                                              push   esi
  00472600: 8b cb                                           mov    ecx,ebx
  00472602: ff 90 ac 00 00 00                               call   DWORD PTR [eax+0xac]
  00472608: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0047260b: 85 c0                                           test   eax,eax
  0047260d: 0f 8f a9 00 00 00                               jg     0x4726bc
  00472613: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00472615: 6a 00                                           push   0x0
  00472617: 68 31 4e 00 00                                  push   0x4e31
  0047261c: 8b cb                                           mov    ecx,ebx
  0047261e: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00472621: 85 c0                                           test   eax,eax
  00472623: 0f 85 93 00 00 00                               jne    0x4726bc
  00472629: 8b 06                                           mov    eax,DWORD PTR [esi]
  0047262b: 8b ce                                           mov    ecx,esi
  0047262d: ff 90 d0 01 00 00                               call   DWORD PTR [eax+0x1d0]
  00472633: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00472635: 50                                              push   eax
  00472636: 8d 85 74 ff ff ff                               lea    eax,[ebp-0x8c]
  0047263c: 50                                              push   eax
  0047263d: 8b cb                                           mov    ecx,ebx
  0047263f: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00472642: 8b 10                                           mov    edx,DWORD PTR [eax]
  00472644: 83 ec 0c                                        sub    esp,0xc
  00472647: 8b cc                                           mov    ecx,esp
  00472649: 89 11                                           mov    DWORD PTR [ecx],edx
  0047264b: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0047264e: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00472651: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00472654: 8b 16                                           mov    edx,DWORD PTR [esi]
  00472656: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00472659: 8d 85 5c ff ff ff                               lea    eax,[ebp-0xa4]
  0047265f: 50                                              push   eax
  00472660: 8b ce                                           mov    ecx,esi
  00472662: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00472665: 8b 10                                           mov    edx,DWORD PTR [eax]
  00472667: 83 ec 0c                                        sub    esp,0xc
  0047266a: 8b cc                                           mov    ecx,esp
  0047266c: 89 11                                           mov    DWORD PTR [ecx],edx
  0047266e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00472671: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00472674: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00472677: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0047267a: 8b cb                                           mov    ecx,ebx
  0047267c: e8 7f 90 01 00                                  call   0x48b700
  00472681: 50                                              push   eax
  00472682: 8b ce                                           mov    ecx,esi
  00472684: e8 77 90 01 00                                  call   0x48b700
  00472689: 8b 16                                           mov    edx,DWORD PTR [esi]
  0047268b: 50                                              push   eax
  0047268c: 6a 14                                           push   0x14
  0047268e: 8d 85 68 ff ff ff                               lea    eax,[ebp-0x98]
  00472694: 50                                              push   eax
  00472695: 8b ce                                           mov    ecx,esi
  00472697: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0047269a: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047269c: 83 ec 0c                                        sub    esp,0xc
  0047269f: 8b cc                                           mov    ecx,esp
  004726a1: 89 11                                           mov    DWORD PTR [ecx],edx
  004726a3: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004726a6: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004726a9: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004726ac: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004726af: e8 dc d6 f9 ff                                  call   0x40fd90
  004726b4: 83 c4 34                                        add    esp,0x34
  004726b7: e9 23 04 00 00                                  jmp    0x472adf
  004726bc: 8b 16                                           mov    edx,DWORD PTR [esi]
  004726be: 6a 00                                           push   0x0
  004726c0: 68 53 4e 00 00                                  push   0x4e53
  004726c5: 8b ce                                           mov    ecx,esi
  004726c7: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  004726ca: 85 c0                                           test   eax,eax
  004726cc: 74 3a                                           je     0x472708
  004726ce: 8d 45 98                                        lea    eax,[ebp-0x68]
  004726d1: 50                                              push   eax
  004726d2: b9 34 5e 51 00                                  mov    ecx,0x515e34
  004726d7: c7 45 98 01 00 00 00                            mov    DWORD PTR [ebp-0x68],0x1
  004726de: c7 45 9c 32 00 00 00                            mov    DWORD PTR [ebp-0x64],0x32
  004726e5: c7 45 a0 00 00 00 00                            mov    DWORD PTR [ebp-0x60],0x0
  004726ec: e8 2f 6a fe ff                                  call   0x459120
  004726f1: 05 95 00 00 00                                  add    eax,0x95
  004726f6: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004726f9: db 45 10                                        fild   DWORD PTR [ebp+0x10]
  004726fc: dc 4d d4                                        fmul   QWORD PTR [ebp-0x2c]
  004726ff: dc 0d d0 e8 4d 00                               fmul   QWORD PTR ds:0x4de8d0
  00472705: dd 5d d4                                        fstp   QWORD PTR [ebp-0x2c]
  00472708: 8b 16                                           mov    edx,DWORD PTR [esi]
  0047270a: 8b ce                                           mov    ecx,esi
  0047270c: ff 92 d8 01 00 00                               call   DWORD PTR [edx+0x1d8]
  00472712: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00472714: 6a 00                                           push   0x0
  00472716: 68 31 4e 00 00                                  push   0x4e31
  0047271b: 8b cb                                           mov    ecx,ebx
  0047271d: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  00472720: 85 c0                                           test   eax,eax
  00472722: 74 1e                                           je     0x472742
  00472724: dd 45 d4                                        fld    QWORD PTR [ebp-0x2c]
  00472727: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00472729: dc 0d 48 f5 4d 00                               fmul   QWORD PTR ds:0x4df548
  0047272f: 68 31 4e 00 00                                  push   0x4e31
  00472734: 8b cb                                           mov    ecx,ebx
  00472736: dc 0d 40 f5 4d 00                               fmul   QWORD PTR ds:0x4df540
  0047273c: dd 5d d4                                        fstp   QWORD PTR [ebp-0x2c]
  0047273f: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00472742: 8b 06                                           mov    eax,DWORD PTR [esi]
  00472744: 6a 00                                           push   0x0
  00472746: 68 38 4e 00 00                                  push   0x4e38
  0047274b: 8b ce                                           mov    ecx,esi
  0047274d: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  00472750: 8b c8                                           mov    ecx,eax
  00472752: 85 c9                                           test   ecx,ecx
  00472754: 7e 28                                           jle    0x47277e
  00472756: dd 45 d4                                        fld    QWORD PTR [ebp-0x2c]
  00472759: b8 1f 85 eb 51                                  mov    eax,0x51eb851f
  0047275e: f7 e9                                           imul   ecx
  00472760: dc c0                                           fadd   st(0),st
  00472762: c1 fa 03                                        sar    edx,0x3
  00472765: 8b ca                                           mov    ecx,edx
  00472767: c1 e9 1f                                        shr    ecx,0x1f
  0047276a: 8d 54 0a 01                                     lea    edx,[edx+ecx*1+0x1]
  0047276e: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  00472771: db 45 10                                        fild   DWORD PTR [ebp+0x10]
  00472774: dc 4d d4                                        fmul   QWORD PTR [ebp-0x2c]
  00472777: d8 c1                                           fadd   st,st(1)
  00472779: dd 5d d4                                        fstp   QWORD PTR [ebp-0x2c]
  0047277c: dd d8                                           fstp   st(0)
  0047277e: 8b 06                                           mov    eax,DWORD PTR [esi]
  00472780: 53                                              push   ebx
  00472781: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00472784: 51                                              push   ecx
  00472785: 8b ce                                           mov    ecx,esi
  00472787: ff 50 40                                        call   DWORD PTR [eax+0x40]
  0047278a: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0047278c: 68 f4 01 00 00                                  push   0x1f4
  00472791: 6a 00                                           push   0x0
  00472793: 6a 00                                           push   0x0
  00472795: 8b cb                                           mov    ecx,ebx
  00472797: ff 52 78                                        call   DWORD PTR [edx+0x78]
  0047279a: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0047279c: 56                                              push   esi
  0047279d: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  004727a0: 51                                              push   ecx
  004727a1: 8b cb                                           mov    ecx,ebx
  004727a3: ff 50 38                                        call   DWORD PTR [eax+0x38]
  004727a6: dd 45 d4                                        fld    QWORD PTR [ebp-0x2c]
  004727a9: dc 1d 30 e6 4d 00                               fcomp  QWORD PTR ds:0x4de630
  004727af: df e0                                           fnstsw ax
  004727b1: f6 c4 01                                        test   ah,0x1
  004727b4: 74 0e                                           je     0x4727c4
  004727b6: c7 45 d4 00 00 00 00                            mov    DWORD PTR [ebp-0x2c],0x0
  004727bd: c7 45 d8 00 00 00 00                            mov    DWORD PTR [ebp-0x28],0x0
  004727c4: 8b ce                                           mov    ecx,esi
  004727c6: e8 a5 8e 01 00                                  call   0x48b670
  004727cb: 3c 01                                           cmp    al,0x1
  004727cd: 0f 85 88 00 00 00                               jne    0x47285b
  004727d3: 8b ce                                           mov    ecx,esi
  004727d5: e8 16 83 fa ff                                  call   0x41aaf0
  004727da: 85 c0                                           test   eax,eax
  004727dc: 74 7d                                           je     0x47285b
  004727de: 8b c8                                           mov    ecx,eax
  004727e0: e8 fb 22 fe ff                                  call   0x454ae0
  004727e5: 25 00 00 00 80                                  and    eax,0x80000000
  004727ea: 33 c9                                           xor    ecx,ecx
  004727ec: 0b c1                                           or     eax,ecx
  004727ee: 74 6b                                           je     0x47285b
  004727f0: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004727f2: 88 8d 5c f7 ff ff                               mov    BYTE PTR [ebp-0x8a4],cl
  004727f8: e8 63 b2 fc ff                                  call   0x43da60
  004727fd: 8d 55 10                                        lea    edx,[ebp+0x10]
  00472800: 8b cb                                           mov    ecx,ebx
  00472802: 50                                              push   eax
  00472803: 52                                              push   edx
  00472804: ff 57 48                                        call   DWORD PTR [edi+0x48]
  00472807: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0047280a: 8b 55 d4                                        mov    edx,DWORD PTR [ebp-0x2c]
  0047280d: 51                                              push   ecx
  0047280e: 8b 4d c4                                        mov    ecx,DWORD PTR [ebp-0x3c]
  00472811: 52                                              push   edx
  00472812: 8b 55 c0                                        mov    edx,DWORD PTR [ebp-0x40]
  00472815: 51                                              push   ecx
  00472816: 52                                              push   edx
  00472817: 8b c8                                           mov    ecx,eax
  00472819: c7 45 fc 04 00 00 00                            mov    DWORD PTR [ebp-0x4],0x4
  00472820: e8 4b f5 fa ff                                  call   0x421d70
  00472825: 50                                              push   eax
  00472826: 8d 85 5c f7 ff ff                               lea    eax,[ebp-0x8a4]
  0047282c: 68 3c 26 50 00                                  push   0x50263c
  00472831: 50                                              push   eax
  00472832: e8 09 11 f9 ff                                  call   0x403940
  00472837: 83 c4 18                                        add    esp,0x18
  0047283a: 8b cc                                           mov    ecx,esp
  0047283c: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  0047283f: 50                                              push   eax
  00472840: e8 1f f2 05 00                                  call   0x4d1a64
  00472845: 8b ce                                           mov    ecx,esi
  00472847: e8 44 06 fb ff                                  call   0x422e90
  0047284c: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0047284f: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00472856: e8 e5 f1 05 00                                  call   0x4d1a40
  0047285b: 8b cb                                           mov    ecx,ebx
  0047285d: e8 0e 8e 01 00                                  call   0x48b670
  00472862: 3c 01                                           cmp    al,0x1
  00472864: 0f 85 88 00 00 00                               jne    0x4728f2
  0047286a: 8b cb                                           mov    ecx,ebx
  0047286c: e8 7f 82 fa ff                                  call   0x41aaf0
  00472871: 85 c0                                           test   eax,eax
  00472873: 74 7d                                           je     0x4728f2
  00472875: 8b c8                                           mov    ecx,eax
  00472877: e8 64 22 fe ff                                  call   0x454ae0
  0047287c: 25 00 00 00 80                                  and    eax,0x80000000
  00472881: 33 c9                                           xor    ecx,ecx
  00472883: 0b c1                                           or     eax,ecx
  00472885: 74 6b                                           je     0x4728f2
  00472887: 8b 3e                                           mov    edi,DWORD PTR [esi]
  00472889: 88 8d 5c f7 ff ff                               mov    BYTE PTR [ebp-0x8a4],cl
  0047288f: e8 cc b1 fc ff                                  call   0x43da60
  00472894: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00472897: 50                                              push   eax
  00472898: 51                                              push   ecx
  00472899: 8b ce                                           mov    ecx,esi
  0047289b: ff 57 48                                        call   DWORD PTR [edi+0x48]
  0047289e: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  004728a1: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  004728a4: 52                                              push   edx
  004728a5: 8b 55 c4                                        mov    edx,DWORD PTR [ebp-0x3c]
  004728a8: 51                                              push   ecx
  004728a9: 8b 4d c0                                        mov    ecx,DWORD PTR [ebp-0x40]
  004728ac: 52                                              push   edx
  004728ad: 51                                              push   ecx
  004728ae: 8b c8                                           mov    ecx,eax
  004728b0: c7 45 fc 05 00 00 00                            mov    DWORD PTR [ebp-0x4],0x5
  004728b7: e8 b4 f4 fa ff                                  call   0x421d70
  004728bc: 50                                              push   eax
  004728bd: 8d 95 5c f7 ff ff                               lea    edx,[ebp-0x8a4]
  004728c3: 68 00 26 50 00                                  push   0x502600
  004728c8: 52                                              push   edx
  004728c9: e8 72 10 f9 ff                                  call   0x403940
  004728ce: 83 c4 18                                        add    esp,0x18
  004728d1: 8b cc                                           mov    ecx,esp
  004728d3: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  004728d6: 50                                              push   eax
  004728d7: e8 88 f1 05 00                                  call   0x4d1a64
  004728dc: 8b cb                                           mov    ecx,ebx
  004728de: e8 ad 05 fb ff                                  call   0x422e90
  004728e3: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004728e6: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004728ed: e8 4e f1 05 00                                  call   0x4d1a40
  004728f2: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004728f4: 56                                              push   esi
  004728f5: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  004728f8: 51                                              push   ecx
  004728f9: 8b cb                                           mov    ecx,ebx
  004728fb: ff 50 3c                                        call   DWORD PTR [eax+0x3c]
  004728fe: 8b 16                                           mov    edx,DWORD PTR [esi]
  00472900: 8b ce                                           mov    ecx,esi
  00472902: 8b f8                                           mov    edi,eax
  00472904: ff 92 30 01 00 00                               call   DWORD PTR [edx+0x130]
  0047290a: 83 ff ff                                        cmp    edi,0xffffffff
  0047290d: 0f 84 b0 00 00 00                               je     0x4729c3
  00472913: 8b 06                                           mov    eax,DWORD PTR [esi]
  00472915: 8b ce                                           mov    ecx,esi
  00472917: ff 90 d0 01 00 00                               call   DWORD PTR [eax+0x1d0]
  0047291d: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0047291f: 50                                              push   eax
  00472920: 8d 45 98                                        lea    eax,[ebp-0x68]
  00472923: 50                                              push   eax
  00472924: 8b cb                                           mov    ecx,ebx
  00472926: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00472929: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047292b: 83 ec 0c                                        sub    esp,0xc
  0047292e: 8b cc                                           mov    ecx,esp
  00472930: 89 11                                           mov    DWORD PTR [ecx],edx
  00472932: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00472935: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00472938: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0047293b: 8b 16                                           mov    edx,DWORD PTR [esi]
  0047293d: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00472940: 8d 45 bc                                        lea    eax,[ebp-0x44]
  00472943: 50                                              push   eax
  00472944: 8b ce                                           mov    ecx,esi
  00472946: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00472949: 8b 10                                           mov    edx,DWORD PTR [eax]
  0047294b: 83 ec 0c                                        sub    esp,0xc
  0047294e: 8b cc                                           mov    ecx,esp
  00472950: 89 11                                           mov    DWORD PTR [ecx],edx
  00472952: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00472955: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00472958: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0047295b: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0047295d: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00472960: 8b cb                                           mov    ecx,ebx
  00472962: ff 92 d8 00 00 00                               call   DWORD PTR [edx+0xd8]
  00472968: 8d 04 80                                        lea    eax,[eax+eax*4]
  0047296b: 8d 3c 80                                        lea    edi,[eax+eax*4]
  0047296e: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00472970: 8b cb                                           mov    ecx,ebx
  00472972: c1 e7 02                                        shl    edi,0x2
  00472975: ff 90 cc 00 00 00                               call   DWORD PTR [eax+0xcc]
  0047297b: 8b c8                                           mov    ecx,eax
  0047297d: 33 d2                                           xor    edx,edx
  0047297f: 8b c7                                           mov    eax,edi
  00472981: f7 f1                                           div    ecx
  00472983: 8b cb                                           mov    ecx,ebx
  00472985: 50                                              push   eax
  00472986: e8 75 8d 01 00                                  call   0x48b700
  0047298b: 50                                              push   eax
  0047298c: 8b ce                                           mov    ecx,esi
  0047298e: e8 6d 8d 01 00                                  call   0x48b700
  00472993: 8b 16                                           mov    edx,DWORD PTR [esi]
  00472995: 50                                              push   eax
  00472996: 6a 14                                           push   0x14
  00472998: 8d 45 8c                                        lea    eax,[ebp-0x74]
  0047299b: 50                                              push   eax
  0047299c: 8b ce                                           mov    ecx,esi
  0047299e: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004729a1: 8b 10                                           mov    edx,DWORD PTR [eax]
  004729a3: 83 ec 0c                                        sub    esp,0xc
  004729a6: 8b cc                                           mov    ecx,esp
  004729a8: 89 11                                           mov    DWORD PTR [ecx],edx
  004729aa: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004729ad: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004729b0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004729b3: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004729b6: e8 e5 d2 f9 ff                                  call   0x40fca0
  004729bb: 83 c4 38                                        add    esp,0x38
  004729be: e9 1c 01 00 00                                  jmp    0x472adf
  004729c3: 8b 16                                           mov    edx,DWORD PTR [esi]
  004729c5: 8b ce                                           mov    ecx,esi
  004729c7: ff 92 d0 01 00 00                               call   DWORD PTR [edx+0x1d0]
  004729cd: 50                                              push   eax
  004729ce: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004729d0: 8d 4d 8c                                        lea    ecx,[ebp-0x74]
  004729d3: 51                                              push   ecx
  004729d4: 8b cb                                           mov    ecx,ebx
  004729d6: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  004729d9: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004729db: 83 ec 0c                                        sub    esp,0xc
  004729de: 8b d4                                           mov    edx,esp
  004729e0: 89 0a                                           mov    DWORD PTR [edx],ecx
  004729e2: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004729e5: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004729e8: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004729eb: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  004729ee: 8b 16                                           mov    edx,DWORD PTR [esi]
  004729f0: 8d 45 98                                        lea    eax,[ebp-0x68]
  004729f3: 50                                              push   eax
  004729f4: 8b ce                                           mov    ecx,esi
  004729f6: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  004729f9: 8b 10                                           mov    edx,DWORD PTR [eax]
  004729fb: 83 ec 0c                                        sub    esp,0xc
  004729fe: 8b cc                                           mov    ecx,esp
  00472a00: 89 11                                           mov    DWORD PTR [ecx],edx
  00472a02: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00472a05: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00472a08: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00472a0b: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00472a0d: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00472a10: 8b cb                                           mov    ecx,ebx
  00472a12: ff 92 d8 00 00 00                               call   DWORD PTR [edx+0xd8]
  00472a18: 8d 04 80                                        lea    eax,[eax+eax*4]
  00472a1b: 8d 3c 80                                        lea    edi,[eax+eax*4]
  00472a1e: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00472a20: 8b cb                                           mov    ecx,ebx
  00472a22: c1 e7 02                                        shl    edi,0x2
  00472a25: ff 90 cc 00 00 00                               call   DWORD PTR [eax+0xcc]
  00472a2b: 8b c8                                           mov    ecx,eax
  00472a2d: 33 d2                                           xor    edx,edx
  00472a2f: 8b c7                                           mov    eax,edi
  00472a31: f7 f1                                           div    ecx
  00472a33: 8b cb                                           mov    ecx,ebx
  00472a35: 50                                              push   eax
  00472a36: e8 c5 8c 01 00                                  call   0x48b700
  00472a3b: 50                                              push   eax
  00472a3c: 8b ce                                           mov    ecx,esi
  00472a3e: e8 bd 8c 01 00                                  call   0x48b700
  00472a43: 8b 16                                           mov    edx,DWORD PTR [esi]
  00472a45: 50                                              push   eax
  00472a46: 6a 14                                           push   0x14
  00472a48: 8d 45 bc                                        lea    eax,[ebp-0x44]
  00472a4b: 50                                              push   eax
  00472a4c: 8b ce                                           mov    ecx,esi
  00472a4e: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00472a51: 8b 10                                           mov    edx,DWORD PTR [eax]
  00472a53: 83 ec 0c                                        sub    esp,0xc
  00472a56: 8b cc                                           mov    ecx,esp
  00472a58: 89 11                                           mov    DWORD PTR [ecx],edx
  00472a5a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00472a5d: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00472a60: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00472a63: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00472a66: e8 35 d2 f9 ff                                  call   0x40fca0
  00472a6b: 83 c4 38                                        add    esp,0x38
  00472a6e: 8b cb                                           mov    ecx,ebx
  00472a70: e8 fb 8b 01 00                                  call   0x48b670
  00472a75: 3c 01                                           cmp    al,0x1
  00472a77: 75 1e                                           jne    0x472a97
  00472a79: 8b cb                                           mov    ecx,ebx
  00472a7b: e8 70 80 fa ff                                  call   0x41aaf0
  00472a80: 85 c0                                           test   eax,eax
  00472a82: 74 13                                           je     0x472a97
  00472a84: 8b c8                                           mov    ecx,eax
  00472a86: e8 55 20 fe ff                                  call   0x454ae0
  00472a8b: 81 e2 80 00 00 00                               and    edx,0x80
  00472a91: 33 c0                                           xor    eax,eax
  00472a93: 0b c2                                           or     eax,edx
  00472a95: 75 48                                           jne    0x472adf
  00472a97: 8b 16                                           mov    edx,DWORD PTR [esi]
  00472a99: 8b ce                                           mov    ecx,esi
  00472a9b: ff 92 d0 01 00 00                               call   DWORD PTR [edx+0x1d0]
  00472aa1: 50                                              push   eax
  00472aa2: 8b cb                                           mov    ecx,ebx
  00472aa4: e8 57 8c 01 00                                  call   0x48b700
  00472aa9: 50                                              push   eax
  00472aaa: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00472aac: 8b cb                                           mov    ecx,ebx
  00472aae: ff 90 b4 00 00 00                               call   DWORD PTR [eax+0xb4]
  00472ab4: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00472ab6: 8b cb                                           mov    ecx,ebx
  00472ab8: 50                                              push   eax
  00472ab9: 6a 19                                           push   0x19
  00472abb: 8d 45 8c                                        lea    eax,[ebp-0x74]
  00472abe: 50                                              push   eax
  00472abf: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00472ac2: 8b 10                                           mov    edx,DWORD PTR [eax]
  00472ac4: 83 ec 0c                                        sub    esp,0xc
  00472ac7: 8b cc                                           mov    ecx,esp
  00472ac9: 89 11                                           mov    DWORD PTR [ecx],edx
  00472acb: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00472ace: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00472ad1: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00472ad4: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00472ad7: e8 84 d0 f9 ff                                  call   0x40fb60
  00472adc: 83 c4 1c                                        add    esp,0x1c
  00472adf: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  00472ae2: 8d 4e 30                                        lea    ecx,[esi+0x30]
  00472ae5: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00472ae8: 8b 43 30                                        mov    eax,DWORD PTR [ebx+0x30]
  00472aeb: 8d 4b 30                                        lea    ecx,[ebx+0x30]
  00472aee: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00472af1: b8 14 00 00 00                                  mov    eax,0x14
  00472af6: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00472af9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00472b00: 5f                                              pop    edi
  00472b01: 5e                                              pop    esi
  00472b02: 5b                                              pop    ebx
  00472b03: 8b e5                                           mov    esp,ebp
  00472b05: 5d                                              pop    ebp
  00472b06: c3                                              ret
  00472b07: 8b cb                                           mov    ecx,ebx
  00472b09: e8 62 8b 01 00                                  call   0x48b670
  00472b0e: 3c 04                                           cmp    al,0x4
  00472b10: 75 13                                           jne    0x472b25
  00472b12: 8b 3e                                           mov    edi,DWORD PTR [esi]
  00472b14: 8b ce                                           mov    ecx,esi
  00472b16: ff 97 14 01 00 00                               call   DWORD PTR [edi+0x114]
  00472b1c: 50                                              push   eax
  00472b1d: 8b ce                                           mov    ecx,esi
  00472b1f: ff 97 ac 00 00 00                               call   DWORD PTR [edi+0xac]
  00472b25: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  00472b28: 8d 4e 30                                        lea    ecx,[esi+0x30]
  00472b2b: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00472b2e: 8b 43 30                                        mov    eax,DWORD PTR [ebx+0x30]
  00472b31: 8d 4b 30                                        lea    ecx,[ebx+0x30]
  00472b34: ff 50 08                                        call   DWORD PTR [eax+0x8]
  00472b37: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00472b3a: 5f                                              pop    edi
  00472b3b: 5e                                              pop    esi
  00472b3c: 33 c0                                           xor    eax,eax
  00472b3e: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00472b45: 5b                                              pop    ebx
  00472b46: 8b e5                                           mov    esp,ebp
  00472b48: 5d                                              pop    ebp
  00472b49: c3                                              ret
  0048fc60: 55                                              push   ebp
  0048fc61: 8b ec                                           mov    ebp,esp
  0048fc63: 56                                              push   esi
  0048fc64: 8b f1                                           mov    esi,ecx
  0048fc66: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048fc68: 57                                              push   edi
  0048fc69: ff 90 14 01 00 00                               call   DWORD PTR [eax+0x114]
  0048fc6f: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0048fc72: 3b c7                                           cmp    eax,edi
  0048fc74: 75 0c                                           jne    0x48fc82
  0048fc76: 8b 16                                           mov    edx,DWORD PTR [esi]
  0048fc78: 6a 00                                           push   0x0
  0048fc7a: 8b ce                                           mov    ecx,esi
  0048fc7c: ff 92 10 01 00 00                               call   DWORD PTR [edx+0x110]
  0048fc82: 8b 06                                           mov    eax,DWORD PTR [esi]
  0048fc84: 8b ce                                           mov    ecx,esi
  0048fc86: ff 90 a8 00 00 00                               call   DWORD PTR [eax+0xa8]
  0048fc8c: 3b c7                                           cmp    eax,edi
  0048fc8e: 75 13                                           jne    0x48fca3
  0048fc90: 8b 3e                                           mov    edi,DWORD PTR [esi]
  0048fc92: 8b ce                                           mov    ecx,esi
  0048fc94: ff 97 14 01 00 00                               call   DWORD PTR [edi+0x114]
  0048fc9a: 50                                              push   eax
  0048fc9b: 8b ce                                           mov    ecx,esi
  0048fc9d: ff 97 ac 00 00 00                               call   DWORD PTR [edi+0xac]
  0048fca3: 5f                                              pop    edi
  0048fca4: 5e                                              pop    esi
  0048fca5: 5d                                              pop    ebp
  0048fca6: c2 04 00                                        ret    0x4
  00490c20: 8b 15 24 64 55 00                               mov    edx,DWORD PTR ds:0x556424
  00490c26: 56                                              push   esi
  00490c27: 33 f6                                           xor    esi,esi
  00490c29: 8b c2                                           mov    eax,edx
  00490c2b: 33 c9                                           xor    ecx,ecx
  00490c2d: a3 20 64 55 00                                  mov    ds:0x556420,eax
  00490c32: 89 0d 40 64 55 00                               mov    DWORD PTR ds:0x556440,ecx
  00490c38: c6 05 34 64 55 00 08                            mov    BYTE PTR ds:0x556434,0x8
  00490c3f: 3b ce                                           cmp    ecx,esi
  00490c41: 74 09                                           je     0x490c4c
  00490c43: 8b 00                                           mov    eax,DWORD PTR [eax]
  00490c45: a3 20 64 55 00                                  mov    ds:0x556420,eax
  00490c4a: eb 0b                                           jmp    0x490c57
  00490c4c: b9 01 00 00 00                                  mov    ecx,0x1
  00490c51: 89 0d 40 64 55 00                               mov    DWORD PTR ds:0x556440,ecx
  00490c57: 3b c6                                           cmp    eax,esi
  00490c59: 0f 84 01 01 00 00                               je     0x490d60
  00490c5f: ff 0d 38 64 55 00                               dec    DWORD PTR ds:0x556438
  00490c65: 8b 0d 28 64 55 00                               mov    ecx,DWORD PTR ds:0x556428
  00490c6b: 3b c1                                           cmp    eax,ecx
  00490c6d: a3 2c 64 55 00                                  mov    ds:0x55642c,eax
  00490c72: 74 4d                                           je     0x490cc1
  00490c74: 3b c2                                           cmp    eax,edx
  00490c76: 74 45                                           je     0x490cbd
  00490c78: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00490c7a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00490c7d: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00490c80: a1 20 64 55 00                                  mov    eax,ds:0x556420
  00490c85: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00490c88: 8b 10                                           mov    edx,DWORD PTR [eax]
  00490c8a: 89 11                                           mov    DWORD PTR [ecx],edx
  00490c8c: a1 40 64 55 00                                  mov    eax,ds:0x556440
  00490c91: 83 f8 01                                        cmp    eax,0x1
  00490c94: 75 13                                           jne    0x490ca9
  00490c96: a1 20 64 55 00                                  mov    eax,ds:0x556420
  00490c9b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00490c9e: 89 0d 20 64 55 00                               mov    DWORD PTR ds:0x556420,ecx
  00490ca4: e9 84 00 00 00                                  jmp    0x490d2d
  00490ca9: 83 f8 02                                        cmp    eax,0x2
  00490cac: 75 7f                                           jne    0x490d2d
  00490cae: 8b 15 20 64 55 00                               mov    edx,DWORD PTR ds:0x556420
  00490cb4: 8b 02                                           mov    eax,DWORD PTR [edx]
  00490cb6: a3 20 64 55 00                                  mov    ds:0x556420,eax
  00490cbb: eb 70                                           jmp    0x490d2d
  00490cbd: 3b c1                                           cmp    eax,ecx
  00490cbf: 75 2a                                           jne    0x490ceb
  00490cc1: 3b c2                                           cmp    eax,edx
  00490cc3: 74 2a                                           je     0x490cef
  00490cc5: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00490cc8: 89 31                                           mov    DWORD PTR [ecx],esi
  00490cca: a1 20 64 55 00                                  mov    eax,ds:0x556420
  00490ccf: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00490cd2: 89 15 28 64 55 00                               mov    DWORD PTR ds:0x556428,edx
  00490cd8: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00490cdb: a3 20 64 55 00                                  mov    ds:0x556420,eax
  00490ce0: 83 3d 40 64 55 00 02                            cmp    DWORD PTR ds:0x556440,0x2
  00490ce7: 75 44                                           jne    0x490d2d
  00490ce9: eb 3c                                           jmp    0x490d27
  00490ceb: 3b c2                                           cmp    eax,edx
  00490ced: 75 26                                           jne    0x490d15
  00490cef: 3b c1                                           cmp    eax,ecx
  00490cf1: 74 22                                           je     0x490d15
  00490cf3: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00490cf5: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  00490cf8: 8b 15 20 64 55 00                               mov    edx,DWORD PTR ds:0x556420
  00490cfe: 8b 02                                           mov    eax,DWORD PTR [edx]
  00490d00: a3 20 64 55 00                                  mov    ds:0x556420,eax
  00490d05: a3 24 64 55 00                                  mov    ds:0x556424,eax
  00490d0a: 83 3d 40 64 55 00 01                            cmp    DWORD PTR ds:0x556440,0x1
  00490d11: 75 1a                                           jne    0x490d2d
  00490d13: eb 12                                           jmp    0x490d27
  00490d15: 89 35 20 64 55 00                               mov    DWORD PTR ds:0x556420,esi
  00490d1b: 89 35 24 64 55 00                               mov    DWORD PTR ds:0x556424,esi
  00490d21: 89 35 28 64 55 00                               mov    DWORD PTR ds:0x556428,esi
  00490d27: 89 35 40 64 55 00                               mov    DWORD PTR ds:0x556440,esi
  00490d2d: a1 2c 64 55 00                                  mov    eax,ds:0x55642c
  00490d32: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00490d35: 51                                              push   ecx
  00490d36: e8 25 13 fb ff                                  call   0x442060
  00490d3b: 8b 15 2c 64 55 00                               mov    edx,DWORD PTR ds:0x55642c
  00490d41: 52                                              push   edx
  00490d42: e8 19 13 fb ff                                  call   0x442060
  00490d47: a1 20 64 55 00                                  mov    eax,ds:0x556420
  00490d4c: 8b 15 24 64 55 00                               mov    edx,DWORD PTR ds:0x556424
  00490d52: 8b 0d 40 64 55 00                               mov    ecx,DWORD PTR ds:0x556440
  00490d58: 83 c4 08                                        add    esp,0x8
  00490d5b: e9 df fe ff ff                                  jmp    0x490c3f
  00490d60: 3b ce                                           cmp    ecx,esi
  00490d62: 74 07                                           je     0x490d6b
  00490d64: c6 05 34 64 55 00 07                            mov    BYTE PTR ds:0x556434,0x7
  00490d6b: 89 35 40 64 55 00                               mov    DWORD PTR ds:0x556440,esi
  00490d71: 5e                                              pop    esi
  00490d72: c3                                              ret
  004b2700: 55                                              push   ebp
  004b2701: 8b ec                                           mov    ebp,esp
  004b2703: 83 ec 28                                        sub    esp,0x28
  004b2706: 8b 55 20                                        mov    edx,DWORD PTR [ebp+0x20]
  004b2709: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004b270c: 53                                              push   ebx
  004b270d: 56                                              push   esi
  004b270e: 8b 75 1c                                        mov    esi,DWORD PTR [ebp+0x1c]
  004b2711: 89 02                                           mov    DWORD PTR [edx],eax
  004b2713: 57                                              push   edi
  004b2714: 8b f9                                           mov    edi,ecx
  004b2716: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  004b2719: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004b271c: 89 72 08                                        mov    DWORD PTR [edx+0x8],esi
  004b271f: 8b 55 24                                        mov    edx,DWORD PTR [ebp+0x24]
  004b2722: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b2725: c7 02 00 00 00 00                               mov    DWORD PTR [edx],0x0
  004b272b: 33 d2                                           xor    edx,edx
  004b272d: 66 8b 57 2c                                     mov    dx,WORD PTR [edi+0x2c]
  004b2731: 89 7d f8                                        mov    DWORD PTR [ebp-0x8],edi
  004b2734: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b273b: 3b f2                                           cmp    esi,edx
  004b273d: 0f 8d a9 02 00 00                               jge    0x4b29ec
  004b2743: 33 db                                           xor    ebx,ebx
  004b2745: 66 8b 5f 2e                                     mov    bx,WORD PTR [edi+0x2e]
  004b2749: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004b274c: 3b fb                                           cmp    edi,ebx
  004b274e: 0f 8d 98 02 00 00                               jge    0x4b29ec
  004b2754: 85 f6                                           test   esi,esi
  004b2756: 0f 8c 90 02 00 00                               jl     0x4b29ec
  004b275c: 85 ff                                           test   edi,edi
  004b275e: 0f 8c 88 02 00 00                               jl     0x4b29ec
  004b2764: 3b c2                                           cmp    eax,edx
  004b2766: 0f 8d 80 02 00 00                               jge    0x4b29ec
  004b276c: 3b cb                                           cmp    ecx,ebx
  004b276e: 0f 8d 78 02 00 00                               jge    0x4b29ec
  004b2774: 33 db                                           xor    ebx,ebx
  004b2776: 3b c3                                           cmp    eax,ebx
  004b2778: 0f 8c 6e 02 00 00                               jl     0x4b29ec
  004b277e: 3b cb                                           cmp    ecx,ebx
  004b2780: 0f 8c 66 02 00 00                               jl     0x4b29ec
  004b2786: 2b cf                                           sub    ecx,edi
  004b2788: 2b c6                                           sub    eax,esi
  004b278a: 3b cb                                           cmp    ecx,ebx
  004b278c: 89 4d 1c                                        mov    DWORD PTR [ebp+0x1c],ecx
  004b278f: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004b2792: 7d 0e                                           jge    0x4b27a2
  004b2794: f7 d9                                           neg    ecx
  004b2796: 89 4d 1c                                        mov    DWORD PTR [ebp+0x1c],ecx
  004b2799: c7 45 e8 ff ff ff ff                            mov    DWORD PTR [ebp-0x18],0xffffffff
  004b27a0: eb 07                                           jmp    0x4b27a9
  004b27a2: c7 45 e8 01 00 00 00                            mov    DWORD PTR [ebp-0x18],0x1
  004b27a9: 3b c3                                           cmp    eax,ebx
  004b27ab: 7d 0e                                           jge    0x4b27bb
  004b27ad: f7 d8                                           neg    eax
  004b27af: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004b27b2: c7 45 e4 ff ff ff ff                            mov    DWORD PTR [ebp-0x1c],0xffffffff
  004b27b9: eb 07                                           jmp    0x4b27c2
  004b27bb: c7 45 e4 01 00 00 00                            mov    DWORD PTR [ebp-0x1c],0x1
  004b27c2: 3b c1                                           cmp    eax,ecx
  004b27c4: 0f 8e 09 01 00 00                               jle    0x4b28d3
  004b27ca: 41                                              inc    ecx
  004b27cb: 3b c3                                           cmp    eax,ebx
  004b27cd: 89 4d 1c                                        mov    DWORD PTR [ebp+0x1c],ecx
  004b27d0: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004b27d3: 0f 8e 13 02 00 00                               jle    0x4b29ec
  004b27d9: eb 06                                           jmp    0x4b27e1
  004b27db: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004b27de: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004b27e1: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004b27e4: 85 d2                                           test   edx,edx
  004b27e6: 0f 85 ec 01 00 00                               jne    0x4b29d8
  004b27ec: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004b27ef: 03 d9                                           add    ebx,ecx
  004b27f1: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  004b27f4: 89 75 d8                                        mov    DWORD PTR [ebp-0x28],esi
  004b27f7: 03 f1                                           add    esi,ecx
  004b27f9: 3b d8                                           cmp    ebx,eax
  004b27fb: 89 7d dc                                        mov    DWORD PTR [ebp-0x24],edi
  004b27fe: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  004b2801: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004b2804: 7e 0a                                           jle    0x4b2810
  004b2806: 2b d8                                           sub    ebx,eax
  004b2808: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004b280b: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004b280e: 03 f8                                           add    edi,eax
  004b2810: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b2813: 83 ec 0c                                        sub    esp,0xc
  004b2816: 8b c4                                           mov    eax,esp
  004b2818: 89 30                                           mov    DWORD PTR [eax],esi
  004b281a: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004b281d: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004b2820: e8 3b f4 ff ff                                  call   0x4b1c60
  004b2825: 25 ff 00 00 00                                  and    eax,0xff
  004b282a: 48                                              dec    eax
  004b282b: 74 11                                           je     0x4b283e
  004b282d: 48                                              dec    eax
  004b282e: 74 0e                                           je     0x4b283e
  004b2830: 83 e8 07                                        sub    eax,0x7
  004b2833: 74 09                                           je     0x4b283e
  004b2835: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b283c: eb 7e                                           jmp    0x4b28bc
  004b283e: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b2841: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b2843: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004b284a: 33 db                                           xor    ebx,ebx
  004b284c: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004b284f: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b2852: 8b 51 24                                        mov    edx,DWORD PTR [ecx+0x24]
  004b2855: 8b c6                                           mov    eax,esi
  004b2857: c1 f8 02                                        sar    eax,0x2
  004b285a: 8b 14 82                                        mov    edx,DWORD PTR [edx+eax*4]
  004b285d: 8b cf                                           mov    ecx,edi
  004b285f: c1 f9 02                                        sar    ecx,0x2
  004b2862: 8b 0c 8a                                        mov    ecx,DWORD PTR [edx+ecx*4]
  004b2865: 85 c9                                           test   ecx,ecx
  004b2867: 74 43                                           je     0x4b28ac
  004b2869: 57                                              push   edi
  004b286a: 56                                              push   esi
  004b286b: e8 90 e0 f5 ff                                  call   0x410900
  004b2870: 8b d8                                           mov    ebx,eax
  004b2872: 85 db                                           test   ebx,ebx
  004b2874: 74 36                                           je     0x4b28ac
  004b2876: 8a 45 28                                        mov    al,BYTE PTR [ebp+0x28]
  004b2879: 84 c0                                           test   al,al
  004b287b: 75 14                                           jne    0x4b2891
  004b287d: 8b cb                                           mov    ecx,ebx
  004b287f: e8 ec 8d fd ff                                  call   0x48b670
  004b2884: 3c 01                                           cmp    al,0x1
  004b2886: 75 09                                           jne    0x4b2891
  004b2888: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b288f: eb 20                                           jmp    0x4b28b1
  004b2891: 8a 45 2c                                        mov    al,BYTE PTR [ebp+0x2c]
  004b2894: 84 c0                                           test   al,al
  004b2896: 75 14                                           jne    0x4b28ac
  004b2898: 8b cb                                           mov    ecx,ebx
  004b289a: e8 d1 8d fd ff                                  call   0x48b670
  004b289f: 3c 02                                           cmp    al,0x2
  004b28a1: 75 09                                           jne    0x4b28ac
  004b28a3: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b28aa: eb 05                                           jmp    0x4b28b1
  004b28ac: 8b 45 24                                        mov    eax,DWORD PTR [ebp+0x24]
  004b28af: 89 18                                           mov    DWORD PTR [eax],ebx
  004b28b1: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b28b4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b28b6: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b28b9: 8b 5d f0                                        mov    ebx,DWORD PTR [ebp-0x10]
  004b28bc: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004b28bf: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b28c2: 40                                              inc    eax
  004b28c3: 3b c1                                           cmp    eax,ecx
  004b28c5: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b28c8: 0f 8c 0d ff ff ff                               jl     0x4b27db
  004b28ce: e9 fe 00 00 00                                  jmp    0x4b29d1
  004b28d3: 3b cb                                           cmp    ecx,ebx
  004b28d5: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004b28d8: 0f 8e 0e 01 00 00                               jle    0x4b29ec
  004b28de: eb 06                                           jmp    0x4b28e6
  004b28e0: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004b28e3: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004b28e6: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004b28e9: 85 d2                                           test   edx,edx
  004b28eb: 0f 85 e7 00 00 00                               jne    0x4b29d8
  004b28f1: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004b28f4: 03 d8                                           add    ebx,eax
  004b28f6: 89 7d dc                                        mov    DWORD PTR [ebp-0x24],edi
  004b28f9: 03 7d e8                                        add    edi,DWORD PTR [ebp-0x18]
  004b28fc: 85 db                                           test   ebx,ebx
  004b28fe: 89 75 d8                                        mov    DWORD PTR [ebp-0x28],esi
  004b2901: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  004b2904: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004b2907: 7e 0a                                           jle    0x4b2913
  004b2909: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  004b290c: 2b d9                                           sub    ebx,ecx
  004b290e: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004b2911: 03 f0                                           add    esi,eax
  004b2913: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b2916: 83 ec 0c                                        sub    esp,0xc
  004b2919: 8b c4                                           mov    eax,esp
  004b291b: 89 30                                           mov    DWORD PTR [eax],esi
  004b291d: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004b2920: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004b2923: e8 38 f3 ff ff                                  call   0x4b1c60
  004b2928: 25 ff 00 00 00                                  and    eax,0xff
  004b292d: 48                                              dec    eax
  004b292e: 74 11                                           je     0x4b2941
  004b2930: 48                                              dec    eax
  004b2931: 74 0e                                           je     0x4b2941
  004b2933: 83 e8 07                                        sub    eax,0x7
  004b2936: 74 09                                           je     0x4b2941
  004b2938: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b293f: eb 7e                                           jmp    0x4b29bf
  004b2941: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b2944: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b2946: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004b294d: 33 db                                           xor    ebx,ebx
  004b294f: ff 52 04                                        call   DWORD PTR [edx+0x4]
  004b2952: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b2955: 8b 51 24                                        mov    edx,DWORD PTR [ecx+0x24]
  004b2958: 8b c6                                           mov    eax,esi
  004b295a: c1 f8 02                                        sar    eax,0x2
  004b295d: 8b 14 82                                        mov    edx,DWORD PTR [edx+eax*4]
  004b2960: 8b cf                                           mov    ecx,edi
  004b2962: c1 f9 02                                        sar    ecx,0x2
  004b2965: 8b 0c 8a                                        mov    ecx,DWORD PTR [edx+ecx*4]
  004b2968: 85 c9                                           test   ecx,ecx
  004b296a: 74 43                                           je     0x4b29af
  004b296c: 57                                              push   edi
  004b296d: 56                                              push   esi
  004b296e: e8 8d df f5 ff                                  call   0x410900
  004b2973: 8b d8                                           mov    ebx,eax
  004b2975: 85 db                                           test   ebx,ebx
  004b2977: 74 36                                           je     0x4b29af
  004b2979: 8a 45 28                                        mov    al,BYTE PTR [ebp+0x28]
  004b297c: 84 c0                                           test   al,al
  004b297e: 75 14                                           jne    0x4b2994
  004b2980: 8b cb                                           mov    ecx,ebx
  004b2982: e8 e9 8c fd ff                                  call   0x48b670
  004b2987: 3c 01                                           cmp    al,0x1
  004b2989: 75 09                                           jne    0x4b2994
  004b298b: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b2992: eb 20                                           jmp    0x4b29b4
  004b2994: 8a 45 2c                                        mov    al,BYTE PTR [ebp+0x2c]
  004b2997: 84 c0                                           test   al,al
  004b2999: 75 14                                           jne    0x4b29af
  004b299b: 8b cb                                           mov    ecx,ebx
  004b299d: e8 ce 8c fd ff                                  call   0x48b670
  004b29a2: 3c 02                                           cmp    al,0x2
  004b29a4: 75 09                                           jne    0x4b29af
  004b29a6: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004b29ad: eb 05                                           jmp    0x4b29b4
  004b29af: 8b 45 24                                        mov    eax,DWORD PTR [ebp+0x24]
  004b29b2: 89 18                                           mov    DWORD PTR [eax],ebx
  004b29b4: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004b29b7: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b29b9: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004b29bc: 8b 5d f0                                        mov    ebx,DWORD PTR [ebp-0x10]
  004b29bf: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004b29c2: 8b 4d 1c                                        mov    ecx,DWORD PTR [ebp+0x1c]
  004b29c5: 40                                              inc    eax
  004b29c6: 3b c1                                           cmp    eax,ecx
  004b29c8: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004b29cb: 0f 8c 0f ff ff ff                               jl     0x4b28e0
  004b29d1: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004b29d4: 85 c0                                           test   eax,eax
  004b29d6: 74 14                                           je     0x4b29ec
  004b29d8: 8b 45 20                                        mov    eax,DWORD PTR [ebp+0x20]
  004b29db: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  004b29de: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  004b29e1: 89 08                                           mov    DWORD PTR [eax],ecx
  004b29e3: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  004b29e6: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004b29e9: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  004b29ec: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004b29ef: 5f                                              pop    edi
  004b29f0: 5e                                              pop    esi
  004b29f1: 5b                                              pop    ebx
  004b29f2: 8b e5                                           mov    esp,ebp
  004b29f4: 5d                                              pop    ebp
  004b29f5: c2 28 00                                        ret    0x28
